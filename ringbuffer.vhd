-- ===============================================================
-- 9-bit Dual-Port RAM (up to 2048x9 using 2x M9Ks)
--   * Synchronous write
--   * Synchronous read (1-cycle latency)
-- ===============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_2048x9_cascade is
  generic (
    ADDR_WIDTH : natural := 11   -- effective address width (1..11)
  );
  port (
    clk     : in  std_logic;

    -- Port A (write)
    a_en    : in  std_logic;
    a_we    : in  std_logic;
    a_addr  : in  unsigned(ADDR_WIDTH-1 downto 0);
    a_din   : in  std_logic_vector(8 downto 0);

    -- Port B (read)
    b_en    : in  std_logic;
    b_addr  : in  unsigned(ADDR_WIDTH-1 downto 0);
    b_dout  : out std_logic_vector(8 downto 0)
  );
end entity;

architecture rtl of ram_2048x9_cascade is
  -- Two 1K x 9 banks
  type ram_t is array (0 to 1023) of std_logic_vector(8 downto 0);
  signal ram0, ram1 : ram_t := (others => (others => '0'));

  signal sel_a, sel_b : std_logic;
  signal b_dout_reg   : std_logic_vector(8 downto 0) := (others => '0');
begin
  gen_hi : if ADDR_WIDTH >= 11 generate
    sel_a <= std_logic(a_addr(10));
    sel_b <= std_logic(b_addr(10));
  end generate;

  gen_lo : if ADDR_WIDTH < 11 generate
    sel_a <= '0';
    sel_b <= '0';
  end generate;

  process(clk)
    variable idx_a, idx_b : integer;
  begin
    if rising_edge(clk) then
      -- WRITE
      if a_en = '1' and a_we = '1' then
        idx_a := to_integer(resize(a_addr, 10)) mod 1024;
        if sel_a = '0' then
          ram0(idx_a) <= a_din;
        else
          ram1(idx_a) <= a_din;
        end if;
      end if;

      -- READ
      if b_en = '1' then
        idx_b := to_integer(resize(b_addr, 10)) mod 1024;
        if sel_b = '0' then
          b_dout_reg <= ram0(idx_b);
        else
          b_dout_reg <= ram1(idx_b);
        end if;
      end if;
    end if;
  end process;

  b_dout <= b_dout_reg;
end architecture;

-- ===============================================================
-- Ring Buffer with Dual-Port Block RAM
-- ===============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ringbuffer is
  generic(
    DATA_WIDTH  : positive := 8;     -- must be 8
    DEPTH_BYTES : positive := 2048   -- max bytes per packet
  );
  port(
    clk           : in  std_logic;
    rst_n         : in  std_logic;

    -- AXI-Stream input (slave)
    s_axis_tdata  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
    s_axis_tvalid : in  std_logic;
    s_axis_tlast  : in  std_logic;
    s_axis_tready : out std_logic;

    -- AXI-Stream output (master)
    m_axis_tdata  : out std_logic_vector(DATA_WIDTH - 1 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tlast  : out std_logic;
    m_axis_tready : in  std_logic
  );
end entity;

architecture rtl of ringbuffer is
  ------------------------------------------------------------------
  -- constants
  ------------------------------------------------------------------
  constant DEPTH_WORDS : positive := DEPTH_BYTES;  -- 1 byte per word
  constant ADDR_WIDTH  : positive := 11;           -- for 2048 words

  ------------------------------------------------------------------
  -- Dual-port RAM signals
  ------------------------------------------------------------------
  signal ram_a_en   : std_logic := '0';
  signal ram_a_we   : std_logic := '0';
  signal ram_a_addr : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
  signal ram_a_din  : std_logic_vector(8 downto 0) := (others => '0');

  signal ram_b_en   : std_logic := '0';
  signal ram_b_addr : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
  signal ram_b_dout : std_logic_vector(8 downto 0);

  ------------------------------------------------------------------
  -- Capture state
  ------------------------------------------------------------------
  signal cap_len       : integer range 0 to DEPTH_WORDS := 0;
  signal cap_overflow  : std_logic := '0';
  signal capturing     : std_logic := '0';

  -- stored packet (fully captured and accepted)
  signal stored_len    : integer range 0 to DEPTH_WORDS := 0;
  signal buffer_valid  : std_logic := '0';

  ------------------------------------------------------------------
  -- output side
  ------------------------------------------------------------------
  type out_state_t is (OUT_IDLE, OUT_STREAM);
  signal out_state     : out_state_t := OUT_IDLE;

  signal rd_index      : integer range 0 to DEPTH_WORDS := 0;
  signal rd_index_next : integer range 0 to DEPTH_WORDS := 0;

  -- Pipeline registers to match RAM latency
  signal out_valid_pipe : std_logic := '0';
  signal out_last_pipe  : std_logic := '0';

  signal handshake     : std_logic := '0';

begin
  ------------------------------------------------------------------
  -- sanity check
  ------------------------------------------------------------------
  assert DATA_WIDTH = 8
    report "ringbuffer: DATA_WIDTH must be 8 for this implementation."
    severity failure;

  ------------------------------------------------------------------
  -- Instantiate dual-port RAM
  ------------------------------------------------------------------
  u_ram : entity work.ram_2048x9_cascade
    generic map (
      ADDR_WIDTH => ADDR_WIDTH
    )
    port map (
      clk    => clk,
      a_en   => ram_a_en,
      a_we   => ram_a_we,
      a_addr => ram_a_addr,
      a_din  => ram_a_din,
      b_en   => ram_b_en,
      b_addr => ram_b_addr,
      b_dout => ram_b_dout
    );

  ------------------------------------------------------------------
  -- AXIS wiring - data comes directly from RAM output (synchronized)
  ------------------------------------------------------------------
  s_axis_tready <= '1';  -- always-ready for this test

  m_axis_tdata  <= ram_b_dout(7 downto 0);
  m_axis_tlast  <= ram_b_dout(8);
  m_axis_tvalid <= out_valid_pipe;

  handshake <= out_valid_pipe and m_axis_tready;

  ------------------------------------------------------------------
  -- Main process: capture + output control
  ------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        -- capture state
        capturing    <= '0';
        cap_len      <= 0;
        cap_overflow <= '0';

        -- stored packet
        stored_len   <= 0;
        buffer_valid <= '0';

        -- output state
        out_state      <= OUT_IDLE;
        rd_index       <= 0;
        rd_index_next  <= 0;
        out_valid_pipe <= '0';
        out_last_pipe  <= '0';

        -- RAM signals
        ram_a_en     <= '0';
        ram_a_we     <= '0';
        ram_a_addr   <= (others => '0');
        ram_a_din    <= (others => '0');
        ram_b_en     <= '0';
        ram_b_addr   <= (others => '0');

      else
        -- Default: disable RAM operations unless explicitly enabled
        ram_a_en <= '0';
        ram_a_we <= '0';
        ram_b_en <= '0';

        --------------------------------------------------------------
        -- INPUT: packet capture into RAM (port A)
        --------------------------------------------------------------
        if s_axis_tvalid = '1' then

          -- Start-of-packet (SOP): capturing was previously 0
          if (capturing = '0') and (cap_overflow = '0') then
            capturing    <= '1';
            cap_overflow <= '0';

            if buffer_valid = '1' then
              -- already holding a packet -> drop this whole one
              cap_overflow <= '1';
              cap_len      <= 0;
            else
              -- normal SOP: store FIRST word at index 0
              ram_a_en   <= '1';
              ram_a_we   <= '1';
              ram_a_addr <= to_unsigned(0, ADDR_WIDTH);
              ram_a_din  <= s_axis_tlast & s_axis_tdata;
              cap_len    <= 1;

              if s_axis_tlast = '1' then
                -- single-beat packet completes immediately
                capturing    <= '0';
                buffer_valid <= '1';
                stored_len   <= 1;
              end if;
            end if;

          elsif capturing = '1' then
            -- Middle/end of packet
            if cap_overflow = '1' then
              -- Dropping this packet: just wait for TLAST to end it.
              if s_axis_tlast = '1' then
                capturing    <= '0';
                cap_overflow <= '0';
              end if;

            else
              -- Normal capture path (subsequent beats)
              if cap_len < DEPTH_WORDS then
                ram_a_en   <= '1';
                ram_a_we   <= '1';
                ram_a_addr <= to_unsigned(cap_len, ADDR_WIDTH);
                ram_a_din  <= s_axis_tlast & s_axis_tdata;

                if s_axis_tlast = '1' then
                  -- packet finished successfully
                  capturing    <= '0';
                  buffer_valid <= '1';
                  stored_len   <= cap_len + 1;  -- include this beat
                else
                  cap_len <= cap_len + 1;
                end if;
              else
                -- overflow capture buffer -> drop remainder of this packet
                cap_overflow <= '1';
                if s_axis_tlast = '1' then
                  capturing    <= '0';
                  cap_overflow <= '0';
                end if;
              end if;
            end if;  -- cap_overflow
          end if;    -- capturing / SOP

        end if;      -- s_axis_tvalid

        --------------------------------------------------------------
        -- OUTPUT: FSM with proper timing for RAM latency
        --------------------------------------------------------------
        case out_state is
          ------------------------------------------------------------
          when OUT_IDLE =>
            out_valid_pipe <= '0';
            rd_index       <= 0;

            if (buffer_valid = '1') and (stored_len > 0) then
              -- Start streaming: issue read for first word
              out_state  <= OUT_STREAM;
              rd_index   <= 0;
              ram_b_en   <= '1';
              ram_b_addr <= to_unsigned(0, ADDR_WIDTH);
              
              -- Valid will be asserted next cycle when data arrives
              out_valid_pipe <= '1';
              
              -- Prepare next address
              if stored_len > 1 then
                rd_index_next <= 1;
              else
                rd_index_next <= 0;
              end if;
            end if;

          ------------------------------------------------------------
          when OUT_STREAM =>
            -- Data from ram_b_dout is valid this cycle (from previous cycle's read)
            -- out_valid_pipe controls when data is valid on output
            
            if handshake = '1' then
              if rd_index = stored_len - 1 then
                -- Last word consumed
                buffer_valid   <= '0';
                out_valid_pipe <= '0';
                out_state      <= OUT_IDLE;
                rd_index       <= 0;
                rd_index_next  <= 0;
              else
                -- Move to next word: issue read for NEXT address
                rd_index  <= rd_index + 1;
                ram_b_en  <= '1';
                ram_b_addr <= to_unsigned(rd_index + 1, ADDR_WIDTH);
                
                -- Valid remains high (data will arrive next cycle)
                out_valid_pipe <= '1';
                
                -- Prepare following address
                if rd_index + 2 < stored_len then
                  rd_index_next <= rd_index + 2;
                else
                  rd_index_next <= rd_index + 1;
                end if;
              end if;
            elsif out_valid_pipe = '1' and m_axis_tready = '0' then
              -- Backpressure: keep current data valid, don't issue new reads
              out_valid_pipe <= '1';
            else
              -- No handshake yet, wait
              out_valid_pipe <= '1';
            end if;
        end case;

      end if; -- rst_n
    end if;   -- rising_edge
  end process;

end architecture;