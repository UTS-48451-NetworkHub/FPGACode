-- ===============================================================
-- 9-bit Dual-Port RAM (up to 2048x9 using 2x M9Ks)
--   * Synchronous write
--   * Synchronous read with 1-cycle latency
--   * Registered bank select to align mux with returned data
-- ===============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_2048x9_cascade is
  generic (
    ADDR_WIDTH : natural := 11   -- effective address width (min 1)
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
  -- Two banks of 1024 x 9
  type ram_t is array (0 to 1023) of std_logic_vector(8 downto 0);
  signal ram0, ram1   : ram_t := (others => (others => '0'));

  -- Address split
  signal sub_a, sub_b : unsigned(9 downto 0); -- lower 10 bits (0..1023)
  signal sel_a, sel_b : std_logic;            -- high bit (bank select)
  signal sel_b_r      : std_logic := '0';     -- registered for alignment

  signal dout_reg0, dout_reg1 : std_logic_vector(8 downto 0) := (others => '0');
begin
  -- derive bank select and lower address safely for small ADDR_WIDTH
  sub_a <= resize(a_addr, 10);
  sub_b <= resize(b_addr, 10);

  gen_hi : if ADDR_WIDTH >= 11 generate
    sel_a <= std_logic(a_addr(10));
    sel_b <= std_logic(b_addr(10));
  end generate;

  gen_lo : if ADDR_WIDTH < 11 generate
    sel_a <= '0';
    sel_b <= '0';
  end generate;

  process(clk)
  begin
    if rising_edge(clk) then
      -- WRITE
      if a_en = '1' and a_we = '1' then
        if sel_a = '0' then
          ram0(to_integer(sub_a)) <= a_din;
        else
          ram1(to_integer(sub_a)) <= a_din;
        end if;
      end if;

      -- READ (1-cycle)
      if b_en = '1' then
        dout_reg0 <= ram0(to_integer(sub_b));
        dout_reg1 <= ram1(to_integer(sub_b));
      end if;

      -- align mux select with registered data
      sel_b_r <= sel_b;
    end if;
  end process;

  -- use registered bank select to choose the registered data
  b_dout <= dout_reg0 when sel_b_r = '0' else dout_reg1;
end architecture;


-- ===============================================================
-- AXI-Stream Ring Buffer (Always-ready input, Drop-on-overflow)
--   * Total output latency = 1 cycle
--   * Data/last are combinational from RAM output
--   * Only tvalid is registered; rd_ptr advances on handshake
--   * Hardened against bounds issues (safe widths & comparisons)
-- ===============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ringbuffer is
  generic(
    DATA_WIDTH  : positive := 8;     -- payload width in bits
    DEPTH_BYTES : positive := 2048   -- storage size in bytes (<= 2048 for this RAM)
  );
  port(
    clk           : in  std_logic;
    rst_n         : in  std_logic;

    -- AXI-Stream input (slave)
    s_axis_tdata  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
    s_axis_tvalid : in  std_logic;
    s_axis_tlast  : in  std_logic;

    -- AXI-Stream output (master)
    m_axis_tdata  : out std_logic_vector(DATA_WIDTH - 1 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tlast  : out std_logic;
    m_axis_tready : in  std_logic
  );
end entity;

architecture rtl of ringbuffer is
  --------------------------------------------------------------------
  -- Helpers (VHDL-93 friendly)
  --------------------------------------------------------------------
  function ceil_log2(n : natural) return natural is
    variable v : natural := 1;
    variable r : natural := 0;
  begin
    while v < n loop
      v := v * 2;
      r := r + 1;
    end loop;
    return r;
  end function;

  function max_nat(a, b : natural) return natural is
  begin
    if a >= b then return a; else return b; end if;
  end function;

  function to_sl(b : boolean) return std_logic is
  begin
    if b then return '1'; else return '0'; end if;
  end function;

  --------------------------------------------------------------------
  -- Derived constants (safe)
  --------------------------------------------------------------------
  constant BITS_TOTAL   : natural  := DEPTH_BYTES * 8;
  constant DEPTH_WORDS  : positive := BITS_TOTAL / DATA_WIDTH; -- integer division
  constant AW           : natural  := ceil_log2(DEPTH_WORDS);  -- may be 0 if DEPTH_WORDS=1
  constant AW_ADDR      : natural  := max_nat(AW, 1);          -- addresses/pointers >= 1 bit
  constant OCCW         : natural  := max_nat(AW, 1);          -- occupancy base width >= 1
  -- occ_words uses OCCW+1 bits (room to count full depth)

  --------------------------------------------------------------------
  -- RAM interface
  --------------------------------------------------------------------
  signal a_en, a_we, b_en : std_logic := '0';
  signal a_addr, b_addr   : unsigned(AW_ADDR - 1 downto 0) := (others => '0');
  signal a_din, b_dout    : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');

  --------------------------------------------------------------------
  -- Control/status
  --------------------------------------------------------------------
  signal wr_ptr, rd_ptr   : unsigned(AW_ADDR - 1 downto 0) := (others => '0');

  -- NOTE: width is (OCCW downto 0) -> at least 1 bit (when AW=0) or more
  signal occ_words        : unsigned(OCCW downto 0) := (others => '0');
  signal pkt_count        : unsigned(15 downto 0) := (others => '0');

  signal sop_ptr          : unsigned(AW_ADDR - 1 downto 0);
  signal sop_occ          : unsigned(OCCW downto 0);

  signal in_packet, dropping : std_logic := '0';

  signal s_handshake : std_logic;
  signal empty_words, have_packet : std_logic;

  signal m_axis_tvalid_i : std_logic := '0';
  signal out_ready_phase : std_logic := '0';
begin
  --------------------------------------------------------------------
  -- Sanity/compatibility checks (concurrent asserts)
  --------------------------------------------------------------------
  assert (BITS_TOTAL mod DATA_WIDTH) = 0
    report "CONFIG ERROR: DEPTH_BYTES*8 must be divisible by DATA_WIDTH"
    severity failure;

  assert (DEPTH_WORDS >= 1)
    report "CONFIG ERROR: DEPTH_WORDS computed as 0; increase DEPTH_BYTES or reduce DATA_WIDTH"
    severity failure;

  assert (DEPTH_WORDS <= 2048)
    report "CONFIG ERROR: DEPTH_WORDS exceeds 2048; ram_2048x9_cascade max is 2048 words"
    severity failure;

  --------------------------------------------------------------------
  -- Always-ready input
  --------------------------------------------------------------------
  s_handshake   <= s_axis_tvalid and rst_n;

  --------------------------------------------------------------------
  -- RAM instantiation (ADDR_WIDTH forced >= 1 via AW_ADDR)
  --------------------------------------------------------------------
  ram_inst : entity work.ram_2048x9_cascade
    generic map (ADDR_WIDTH => AW_ADDR)
    port map (
      clk    => clk,
      a_en   => a_en,
      a_we   => a_we,
      a_addr => a_addr,
      a_din  => a_din,
      b_en   => b_en,
      b_addr => b_addr,
      b_dout => b_dout
    );

  --------------------------------------------------------------------
  -- RAM port mapping
  --------------------------------------------------------------------
  a_en   <= '1';
  a_we   <= s_axis_tvalid and (not dropping)
            and to_sl(occ_words < to_unsigned(DEPTH_WORDS, occ_words'length));
  a_addr <= wr_ptr;
  a_din  <= s_axis_tlast & s_axis_tdata;

  b_en   <= '1';
  b_addr <= rd_ptr;

  --------------------------------------------------------------------
  -- Derived flags
  --------------------------------------------------------------------
  empty_words <= to_sl(occ_words = to_unsigned(0, occ_words'length));
  have_packet <= to_sl(pkt_count /= 0);

  --------------------------------------------------------------------
  -- Output (combinational from RAM)
  --------------------------------------------------------------------
  m_axis_tdata <= b_dout(DATA_WIDTH-1 downto 0);
  m_axis_tlast <= b_dout(DATA_WIDTH);

  --------------------------------------------------------------------
  -- Main process (control & bookkeeping)
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        wr_ptr          <= (others => '0');
        rd_ptr          <= (others => '0');
        occ_words       <= (others => '0');
        pkt_count       <= (others => '0');
        sop_ptr         <= (others => '0');
        sop_occ         <= (others => '0');
        in_packet       <= '0';
        dropping        <= '0';
        m_axis_tvalid_i <= '0';
        out_ready_phase <= '0';
      else
        -- allow read side after one clean cycle post-reset
        out_ready_phase <= '1';

        --------------------------------------------------------------
        -- WRITE PATH (always-ready, drop-on-overflow)
        --------------------------------------------------------------
        if s_handshake = '1' then
          if in_packet = '0' then
            sop_ptr   <= wr_ptr;
            sop_occ   <= occ_words;  -- widths match
            in_packet <= '1';
          end if;

          if dropping = '0' then
            if occ_words < to_unsigned(DEPTH_WORDS, occ_words'length) then
              wr_ptr    <= wr_ptr + 1;
              occ_words <= occ_words + 1;
            end if;

            if s_axis_tlast = '1' then
              in_packet <= '0';
              pkt_count <= pkt_count + 1;
            elsif occ_words = to_unsigned(DEPTH_WORDS, occ_words'length) then
              dropping <= '1';
            end if;

          else
            -- dropping current packet: on TLAST, roll back to SOP
            if s_axis_tlast = '1' then
              wr_ptr    <= sop_ptr;
              occ_words <= sop_occ;
              in_packet <= '0';
              dropping  <= '0';
            end if;
          end if;
        end if;

        --------------------------------------------------------------
        -- READ PATH control (1-cycle total latency)
        --------------------------------------------------------------
        if (have_packet = '1') and (empty_words = '0') and (out_ready_phase = '1') then
          m_axis_tvalid_i <= '1';
        else
          m_axis_tvalid_i <= '0';
        end if;

        -- Advance on handshake; keeps b_addr stable while stalled
        if (m_axis_tvalid_i = '1') and (m_axis_tready = '1') then
          if occ_words > 0 then
            rd_ptr    <= rd_ptr + 1;
            occ_words <= occ_words - 1;
          end if;

          if b_dout(DATA_WIDTH) = '1' and pkt_count > 0 then
            pkt_count <= pkt_count - 1;
          end if;
        end if;
      end if;
    end if;
  end process;

  m_axis_tvalid <= m_axis_tvalid_i;

end architecture;
