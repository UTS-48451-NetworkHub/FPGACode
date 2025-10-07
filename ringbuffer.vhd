library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ===============================================================
-- 9-bit Dual-Port RAM (up to 2048x9 using 2x M9Ks)
-- ===============================================================
entity ram_2048x9_cascade is
  generic (
    ADDR_WIDTH : natural := 11
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
  signal sub_a, sub_b : unsigned(9 downto 0);
  signal sel_a, sel_b : std_logic;
  type ram_t is array (0 to 1023) of std_logic_vector(8 downto 0);
  signal ram0, ram1   : ram_t := (others => (others => '0'));
  signal dout_reg0, dout_reg1 : std_logic_vector(8 downto 0) := (others => '0');
begin
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
-- AXI-Stream Ring Buffer (Always-ready input, Drop-on-overflow)
--   * 1-cycle output latency (RAM?AXI)
--   * No skid buffer (low-latency mode)
-- ===============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ringbuffer is
  generic(
    DATA_WIDTH  : positive := 8;
    DEPTH_BYTES : positive := 2048
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
  -- Derived constants
  --------------------------------------------------------------------
  constant DEPTH_WORDS : positive := (DEPTH_BYTES * 8) / DATA_WIDTH;
  constant AW          : natural  := ceil_log2(DEPTH_WORDS);

  --------------------------------------------------------------------
  -- RAM interface
  --------------------------------------------------------------------
  signal a_en, a_we, b_en : std_logic := '0';
  signal a_addr, b_addr   : unsigned(AW - 1 downto 0) := (others => '0');
  signal a_din, b_dout    : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');

  --------------------------------------------------------------------
  -- Control/status
  --------------------------------------------------------------------
  signal wr_ptr, rd_ptr   : unsigned(AW - 1 downto 0) := (others => '0');
  signal occ_words        : unsigned(AW downto 0) := (others => '0');
  signal pkt_count        : unsigned(15 downto 0) := (others => '0');

  signal sop_ptr, sop_occ : unsigned(AW - 1 downto 0);
  signal in_packet, dropping : std_logic := '0';

  signal s_handshake : std_logic;
  signal empty_words, have_packet : std_logic;

begin
  --------------------------------------------------------------------
  -- Always-ready input
  --------------------------------------------------------------------
  s_axis_tready <= '1';
  s_handshake   <= s_axis_tvalid and rst_n;

  --------------------------------------------------------------------
  -- RAM instantiation
  --------------------------------------------------------------------
  ram_inst : entity work.ram_2048x9_cascade
    generic map (ADDR_WIDTH => AW)
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
  empty_words <= to_sl(occ_words = 0);
  have_packet <= to_sl(pkt_count /= 0);

  --------------------------------------------------------------------
  -- Main process (1-cycle output path)
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        wr_ptr      <= (others => '0');
        rd_ptr      <= (others => '0');
        occ_words   <= (others => '0');
        pkt_count   <= (others => '0');
        sop_ptr     <= (others => '0');
        sop_occ     <= (others => '0');
        in_packet   <= '0';
        dropping    <= '0';
        m_axis_tdata  <= (others => '0');
        m_axis_tlast  <= '0';
        m_axis_tvalid <= '0';
      else
        --------------------------------------------------------------
        -- WRITE PATH (always-ready, drop-on-overflow)
        --------------------------------------------------------------
        if s_handshake = '1' then
          if in_packet = '0' then
            sop_ptr   <= wr_ptr;
            sop_occ   <= occ_words;
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
            if s_axis_tlast = '1' then
              wr_ptr    <= sop_ptr;
              occ_words <= sop_occ;
              in_packet <= '0';
              dropping  <= '0';
            end if;
          end if;
        end if;

        --------------------------------------------------------------
        -- READ PATH (1-cycle latency)
        --------------------------------------------------------------
        if (have_packet = '1') and (empty_words = '0') then
          m_axis_tdata  <= b_dout(DATA_WIDTH-1 downto 0);
          m_axis_tlast  <= b_dout(DATA_WIDTH);
          m_axis_tvalid <= '1';
        else
          m_axis_tvalid <= '0';
        end if;

        if (m_axis_tvalid = '1') and (m_axis_tready = '1') then
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
