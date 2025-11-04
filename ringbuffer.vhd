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
-- AXI-Stream Ring Buffer (Always-ready input, Drop-on-overflow)
--   * Drop recovery flushes stale RAM output after rollback
--   * Output latency = 1 cycle (sync read)
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
  constant BITS_TOTAL   : natural  := DEPTH_BYTES * 8;
  constant DEPTH_WORDS  : positive := BITS_TOTAL / DATA_WIDTH;
  constant AW           : natural  := ceil_log2(DEPTH_WORDS);
  constant AW_ADDR      : natural  := max_nat(AW, 1);
  constant OCCW         : natural  := max_nat(AW, 1);
  --------------------------------------------------------------------
  signal a_en, a_we, b_en : std_logic := '0';
  signal a_addr, b_addr   : unsigned(AW_ADDR - 1 downto 0) := (others => '0');
  signal a_din, b_dout    : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');
  --------------------------------------------------------------------
  signal wr_ptr, rd_ptr   : unsigned(AW_ADDR - 1 downto 0) := (others => '0');
  signal occ_words        : unsigned(OCCW downto 0) := (others => '0');
  signal pkt_count        : unsigned(15 downto 0)   := (others => '0');
  signal sop_ptr          : unsigned(AW_ADDR - 1 downto 0) := (others => '0');
  signal sop_occ          : unsigned(OCCW downto 0) := (others => '0');
  signal in_packet, dropping : std_logic := '0';
  signal s_handshake, empty_words, have_packet : std_logic;
  signal m_axis_tvalid_i : std_logic := '0';
  signal out_ready_phase : std_logic := '0';
  signal flush_read : std_logic := '0';  -- <---- NEW
  --------------------------------------------------------------------
  type rb_state_t is (RB_IDLE, RB_PREFETCH, RB_STREAM);
  signal rb_state : rb_state_t := RB_IDLE;
begin
  s_axis_tready <= '1';
  s_handshake   <= s_axis_tvalid and rst_n;

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

  a_en   <= '1';
  a_we   <= s_axis_tvalid and (not dropping)
            and to_sl(occ_words < to_unsigned(DEPTH_WORDS, occ_words'length));
  a_addr <= wr_ptr;
  a_din  <= s_axis_tlast & s_axis_tdata;
  b_en   <= '1';
  b_addr <= rd_ptr;

  empty_words <= to_sl(occ_words = 0);
  have_packet <= to_sl(pkt_count /= 0);

  m_axis_tdata <= b_dout(DATA_WIDTH-1 downto 0);
  m_axis_tlast <= b_dout(DATA_WIDTH);

  process(clk)
    variable occ_next       : unsigned(occ_words'range);
    variable pkt_count_next : unsigned(pkt_count'range);
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        wr_ptr <= (others => '0');
        rd_ptr <= (others => '0');
        occ_words <= (others => '0');
        pkt_count <= (others => '0');
        sop_ptr <= (others => '0');
        sop_occ <= (others => '0');
        in_packet <= '0';
        dropping <= '0';
        flush_read <= '0';
        out_ready_phase <= '0';
        m_axis_tvalid_i <= '0';
        rb_state <= RB_IDLE;
      else
        occ_next := occ_words;
        pkt_count_next := pkt_count;
        out_ready_phase <= '1';

        -- WRITE path
        if s_handshake = '1' then
          if (in_packet = '0') and (dropping = '0') then
            sop_ptr <= wr_ptr;
            sop_occ <= occ_words;
            in_packet <= '1';
          end if;

          if dropping = '0' then
            if occ_words < to_unsigned(DEPTH_WORDS, occ_words'length) then
              wr_ptr   <= wr_ptr + 1;
              occ_next := occ_next + 1;
              if s_axis_tlast = '1' then
                in_packet <= '0';
                pkt_count_next := pkt_count_next + 1;
              end if;
            else
              if s_axis_tlast = '1' then
                in_packet <= '0';
              else
                dropping <= '1';
              end if;
            end if;
          else
            if s_axis_tlast = '1' then
              wr_ptr    <= sop_ptr;
              occ_next  := sop_occ;
              in_packet <= '0';
              dropping  <= '0';
              flush_read <= '1';  -- FLUSH after rollback
            end if;
          end if;
        end if;

        -- READ FSM
        case rb_state is
          when RB_IDLE =>
            m_axis_tvalid_i <= '0';
            if (have_packet = '1') and (empty_words = '0') and (out_ready_phase = '1') then
              rb_state <= RB_PREFETCH;
            end if;

          when RB_PREFETCH =>
            m_axis_tvalid_i <= '0';
            rb_state <= RB_STREAM;

          when RB_STREAM =>
            if (have_packet = '1') and (empty_words = '0') and (out_ready_phase = '1') then
              m_axis_tvalid_i <= '1';
            else
              m_axis_tvalid_i <= '0';
            end if;
        end case;

        -- Consume on handshake
        if (m_axis_tvalid_i = '1') and (m_axis_tready = '1') then
          if occ_next > 0 then
            rd_ptr   <= rd_ptr + 1;
            occ_next := occ_next - 1;
          end if;

          if (b_dout(DATA_WIDTH) = '1') and (pkt_count_next > 0) then
            pkt_count_next := pkt_count_next - 1;
            rb_state <= RB_IDLE;
          end if;

          if (occ_next = 0) and (b_dout(DATA_WIDTH) = '0') then
            rb_state <= RB_IDLE;
          end if;
        end if;

        -- Handle flush
        if flush_read = '1' then
          m_axis_tvalid_i <= '0';
          rb_state <= RB_IDLE;
          flush_read <= '0';
        end if;

        occ_words <= occ_next;
        pkt_count <= pkt_count_next;
      end if;
    end if;
  end process;

  m_axis_tvalid <= m_axis_tvalid_i;
end architecture;
