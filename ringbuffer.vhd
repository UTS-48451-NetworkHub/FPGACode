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

  ------------------------------------------------------------------
  -- packet capture buffer (scratch)
  -- each entry: bit 8 = TLAST, bits 7..0 = data
  --  -> Ask Quartus to implement this in block RAM (M9K), not flip-flops
  ------------------------------------------------------------------
  type pkt_buf_t is array (0 to DEPTH_WORDS-1) of std_logic_vector(8 downto 0);
  signal pkt_buf : pkt_buf_t := (others => (others => '0'));

  -- synthesis hint for Intel/Quartus
  attribute ramstyle : string;
  attribute ramstyle of pkt_buf : signal is "M9K";

  signal cap_len       : integer range 0 to DEPTH_WORDS := 0;  -- words currently stored
  signal cap_overflow  : std_logic := '0';                     -- true if packet too long or dropped
  signal capturing     : std_logic := '0';                     -- currently capturing packet

  -- stored packet (fully captured and accepted)
  signal stored_len    : integer range 0 to DEPTH_WORDS := 0;
  signal buffer_valid  : std_logic := '0';                     -- we have a packet to send

  ------------------------------------------------------------------
  -- output side
  ------------------------------------------------------------------
  type out_state_t is (OUT_IDLE, OUT_STREAM);
  signal out_state     : out_state_t := OUT_IDLE;

  signal rd_index      : integer range 0 to DEPTH_WORDS := 0;

  signal out_data      : std_logic_vector(7 downto 0) := (others => '0');
  signal out_last_bit  : std_logic := '0';
  signal out_valid     : std_logic := '0';

  signal handshake     : std_logic := '0';
begin
  ------------------------------------------------------------------
  -- sanity check
  ------------------------------------------------------------------
  assert DATA_WIDTH = 8
    report "ringbuffer: DATA_WIDTH must be 8 for this implementation."
    severity failure;

  ------------------------------------------------------------------
  -- AXIS wiring
  ------------------------------------------------------------------
  s_axis_tready <= '1';               -- always-ready for this test

  m_axis_tdata  <= out_data;
  m_axis_tlast  <= out_last_bit;
  m_axis_tvalid <= out_valid;

  handshake <= out_valid and m_axis_tready;

  ------------------------------------------------------------------
  -- Main process: capture + output
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
        out_state    <= OUT_IDLE;
        rd_index     <= 0;
        out_data     <= (others => '0');
        out_last_bit <= '0';
        out_valid    <= '0';

      else
        --------------------------------------------------------------
        -- INPUT: packet capture into pkt_buf
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
              pkt_buf(0) <= s_axis_tlast & s_axis_tdata;
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
                pkt_buf(cap_len) <= s_axis_tlast & s_axis_tdata;

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
        -- OUTPUT: simple FSM; data advances on each handshake
        --------------------------------------------------------------
        case out_state is
          ------------------------------------------------------------
          when OUT_IDLE =>
            out_valid <= '0';

            if (buffer_valid = '1') and (stored_len > 0) then
              -- start streaming this stored packet
              out_state    <= OUT_STREAM;
              rd_index     <= 0;
              out_data     <= pkt_buf(0)(7 downto 0);
              out_last_bit <= pkt_buf(0)(8);
              out_valid    <= '1';
            end if;

          ------------------------------------------------------------
          when OUT_STREAM =>
            -- remain valid while packet present
            if (buffer_valid = '1') and (stored_len > 0) then
              out_valid <= '1';
            else
              out_valid <= '0';
            end if;

            if handshake = '1' then
              if rd_index = stored_len - 1 then
                -- last word just consumed
                buffer_valid <= '0';
                out_valid    <= '0';
                out_state    <= OUT_IDLE;
                rd_index     <= 0;
                out_last_bit <= '0';
              else
                -- advance to next word
                rd_index     <= rd_index + 1;
                out_data     <= pkt_buf(rd_index + 1)(7 downto 0);
                out_last_bit <= pkt_buf(rd_index + 1)(8);
              end if;
            end if;
        end case;

      end if; -- rst_n
    end if;   -- rising_edge
  end process;

end architecture;
