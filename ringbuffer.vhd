library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ===============================================================
-- 9-bit RAM with generic address width, implemented as:
--   - Two 1024x9 banks when ADDR_WIDTH >= 11
--   - Only the lower bank when ADDR_WIDTH < 11 (for small TBs)
-- Single clock, dual-port (1 write port A, 1 read port B), 1-cycle read.
-- ===============================================================
entity ram_2048x9_cascade is
  generic (
    ADDR_WIDTH : natural := 11   -- total logical address width from caller
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
  -- Index inside each 1024-depth bank (10 bits)
  signal sub_a, sub_b : unsigned(9 downto 0);

  -- Bank selects; only meaningful when ADDR_WIDTH >= 11
  signal sel_a, sel_b : std_logic;

  type ram_t is array (0 to 1023) of std_logic_vector(8 downto 0);
  signal ram0, ram1 : ram_t := (others => (others => '0'));

  signal dout_reg0, dout_reg1 : std_logic_vector(8 downto 0) := (others => '0');
begin
  -- Always form a 10-bit sub-address from the caller address.
  -- resize() is from numeric_std.
  sub_a <= resize(a_addr, sub_a'length);
  sub_b <= resize(b_addr, sub_b'length);

  -- Use generate to avoid out-of-range indexing with small ADDR_WIDTH.
  gen_sel_hi : if ADDR_WIDTH >= 11 generate
  begin
    sel_a <= std_logic(a_addr(10));
    sel_b <= std_logic(b_addr(10));
  end generate;

  gen_sel_lo : if ADDR_WIDTH < 11 generate
  begin
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

      -- READ (1-cycle latency)
      if b_en = '1' then
        dout_reg0 <= ram0(to_integer(sub_b));
        dout_reg1 <= ram1(to_integer(sub_b));
      end if;
    end if;
  end process;

  b_dout <= dout_reg0 when sel_b = '0' else dout_reg1;
end architecture;

-- ===============================================================
-- AXI-Stream Ring Buffer (always-ready input, drop-on-overflow)
-- Uses ram_2048x9_cascade → with ADDR_WIDTH=11 maps to exactly 2 M9Ks
-- ===============================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ringbuffer is
  generic(
    DATA_WIDTH  : positive := 8;        -- Must be 8 with this RAM (8 data + 1 last)
    DEPTH_BYTES : positive := 2048      -- Total storage (bytes)
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
  --------------------------------------------------------------------
  -- Helpers
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

  function to_sl(b : boolean) return std_logic is
  begin
    if b then return '1'; else return '0'; end if;
  end function;

  --------------------------------------------------------------------
  -- Derived constants (DATA_WIDTH=8 expected)
  --------------------------------------------------------------------
  constant DEPTH_WORDS : positive := (DEPTH_BYTES * 8) / DATA_WIDTH; -- bytes→words
  constant AW          : natural  := ceil_log2(DEPTH_WORDS);         -- address width

  --------------------------------------------------------------------
  -- RAM interface signals
  --------------------------------------------------------------------
  signal a_en, a_we, b_en : std_logic := '0';
  signal a_addr, b_addr   : unsigned(AW - 1 downto 0) := (others => '0');
  signal a_din,  b_dout   : std_logic_vector(DATA_WIDTH downto 0) := (others => '0'); -- {last,data}

  --------------------------------------------------------------------
  -- Control / status
  --------------------------------------------------------------------
  signal wr_ptr, rd_ptr   : unsigned(AW - 1 downto 0) := (others => '0');
  signal occ_words        : unsigned(AW downto 0) := (others => '0'); -- 0..DEPTH_WORDS
  signal pkt_count        : unsigned(15 downto 0) := (others => '0');

  signal sop_ptr          : unsigned(AW - 1 downto 0) := (others => '0');
  signal sop_occ          : unsigned(AW downto 0)     := (others => '0');

  signal in_packet        : std_logic := '0';
  signal dropping         : std_logic := '0';

  signal s_handshake, m_handshake : std_logic;
  signal empty_words, have_packet : std_logic;

  signal m_axis_tvalid_i  : std_logic := '0';

begin
  --------------------------------------------------------------------
  -- Sanity check
  --------------------------------------------------------------------
  assert DATA_WIDTH = 8
    report "ringbuffer: DATA_WIDTH must be 8 (RAM stores 8 data + 1 last bit)"
    severity failure;

  --------------------------------------------------------------------
  -- AXI input: Ethernet RX cannot be backpressured → always ready
  --------------------------------------------------------------------
  s_axis_tready <= '1';

  --------------------------------------------------------------------
  -- RAM instantiation (ADDR_WIDTH follows AW → works for small TBs too)
  --------------------------------------------------------------------
  ram_inst : entity work.ram_2048x9_cascade
    generic map (
      ADDR_WIDTH => AW
    )
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
  -- Handshakes / flags
  --------------------------------------------------------------------
  s_handshake <= s_axis_tvalid and rst_n;                    -- tready is always '1'
  m_handshake <= m_axis_tvalid_i and m_axis_tready and rst_n;

  empty_words <= '1' when rst_n = '0' else to_sl(occ_words = 0);
  have_packet <= '0' when rst_n = '0' else to_sl(pkt_count /= 0);

  --------------------------------------------------------------------
  -- RAM port wiring
  --------------------------------------------------------------------
  a_en   <= '1';
  a_we   <= s_axis_tvalid and (not dropping) and
            to_sl(occ_words < to_unsigned(DEPTH_WORDS, occ_words'length));
  a_addr <= wr_ptr;
  a_din  <= s_axis_tlast & s_axis_tdata;

  b_en   <= '1';
  b_addr <= rd_ptr;

  --------------------------------------------------------------------
  -- Output side (align VALID with 1-cycle RAM read latency)
  --------------------------------------------------------------------
  m_axis_tdata    <= b_dout(DATA_WIDTH - 1 downto 0);
  m_axis_tlast    <= b_dout(DATA_WIDTH);
  m_axis_tvalid_i <= have_packet and (not empty_words);

  --------------------------------------------------------------------
  -- Bookkeeping (single clocked process)
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        wr_ptr        <= (others => '0');
        rd_ptr        <= (others => '0');
        occ_words     <= (others => '0');
        pkt_count     <= (others => '0');
        sop_ptr       <= (others => '0');
        sop_occ       <= (others => '0');
        in_packet     <= '0';
        dropping      <= '0';
        m_axis_tvalid <= '0';
      else
        -- Register VALID to match RAM read latency (no skew)
        m_axis_tvalid <= m_axis_tvalid_i;

        --------------------------------------------------------------
        -- WRITE PATH (ingress: always-ready, drop-on-overflow)
        --------------------------------------------------------------
        if s_handshake = '1' then
          if in_packet = '0' then
            sop_ptr   <= wr_ptr;
            sop_occ   <= occ_words;
            in_packet <= '1';
          end if;

          if dropping = '0' then
            -- accept if space left
            if occ_words < to_unsigned(DEPTH_WORDS, occ_words'length) then
              wr_ptr    <= wr_ptr + 1;
              occ_words <= occ_words + 1;
            end if;

            -- end of packet
            if s_axis_tlast = '1' then
              in_packet <= '0';
              pkt_count <= pkt_count + 1;
            -- still mid-packet & reached full → start dropping
            elsif occ_words = to_unsigned(DEPTH_WORDS, occ_words'length) then
              dropping <= '1';
            end if;

          else
            -- DROPPING: consume until tlast, then rollback
            if s_axis_tlast = '1' then
              wr_ptr    <= sop_ptr;
              occ_words <= sop_occ;
              in_packet <= '0';
              dropping  <= '0';
            end if;
          end if;
        end if;

        --------------------------------------------------------------
        -- READ PATH (egress)
        --------------------------------------------------------------
        if m_handshake = '1' then
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

end architecture;
