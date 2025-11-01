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
  generic(
    ADDR_WIDTH : natural := 11          -- effective address width (min 1)
  );
  port(
    clk    : in  std_logic;
    -- Port A (write)
    a_en   : in  std_logic;
    a_we   : in  std_logic;
    a_addr : in  unsigned(ADDR_WIDTH - 1 downto 0);
    a_din  : in  std_logic_vector(8 downto 0);
    -- Port B (read)
    b_en   : in  std_logic;
    b_addr : in  unsigned(ADDR_WIDTH - 1 downto 0);
    b_dout : out std_logic_vector(8 downto 0)
  );
end entity;

architecture rtl of ram_2048x9_cascade is
  -- Two banks of 1024 x 9
  type   ram_t      is array (0 to 1023) of std_logic_vector(8 downto 0);
  signal ram0, ram1 : ram_t := (others => (others => '0'));

  -- Address split
  signal sub_a, sub_b : unsigned(9 downto 0); -- lower 10 bits (0..1023)
  signal sel_a, sel_b : std_logic;      -- high bit (bank select)
  signal sel_b_r      : std_logic := '0'; -- registered for alignment

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
  generic (
    DATA_WIDTH  : positive := 8;
    DEPTH_BYTES : positive := 8
  );
  port (
    clk           : in  std_logic;
    rst_n         : in  std_logic;
    s_axis_tdata  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    s_axis_tvalid : in  std_logic;
    s_axis_tlast  : in  std_logic;
    s_axis_tready : out std_logic;
    m_axis_tdata  : out std_logic_vector(DATA_WIDTH-1 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tlast  : out std_logic;
    m_axis_tready : in  std_logic
  );
end entity;

architecture rtl of ringbuffer is

  constant RAM_WORD_WIDTH : positive := DATA_WIDTH + 1; -- include TLAST bit
  type ram_t is array (0 to DEPTH_BYTES - 1) of std_logic_vector(RAM_WORD_WIDTH-1 downto 0);
  signal ram : ram_t := (others => (others => '0'));

  signal wr_ptr  : integer range 0 to DEPTH_BYTES - 1 := 0;
  signal rd_ptr  : integer range 0 to DEPTH_BYTES - 1 := 0;
  signal level   : integer range 0 to DEPTH_BYTES     := 0;

  type wr_state_t is (IDLE, ACCEPT, DROP);
  signal wr_state : wr_state_t := IDLE;

  signal sop_ptr   : integer range 0 to DEPTH_BYTES - 1 := 0;
  signal sop_level : integer range 0 to DEPTH_BYTES     := 0;

  signal s_axis_tready_i : std_logic;
  signal ram_q        : std_logic_vector(RAM_WORD_WIDTH-1 downto 0) := (others => '0');
  signal m_tvalid_reg : std_logic := '0';
  signal m_tvalid_pre : std_logic;
  signal m_read       : std_logic;

begin
  --------------------------------------------------------------------------
  -- AXI Stream outputs
  --------------------------------------------------------------------------
  m_axis_tdata  <= ram_q(DATA_WIDTH-1 downto 0);
  m_axis_tlast  <= ram_q(RAM_WORD_WIDTH-1);
  m_axis_tvalid <= m_tvalid_reg;

  m_tvalid_pre  <= '1' when level > 0 else '0';
  m_read        <= m_tvalid_reg and m_axis_tready;

  s_axis_tready_i <= '1' when (wr_state = IDLE   and level < DEPTH_BYTES) or
                             (wr_state = ACCEPT and level < DEPTH_BYTES) or
                             (wr_state = DROP)
                     else '0';
  s_axis_tready <= s_axis_tready_i;

  --------------------------------------------------------------------------
  -- MAIN PROCESS
  --------------------------------------------------------------------------
  process(clk, rst_n)
    variable do_write : boolean;
    variable waddr    : integer range 0 to DEPTH_BYTES - 1;
    variable wdata    : std_logic_vector(RAM_WORD_WIDTH-1 downto 0);
    variable next_rd  : integer range 0 to DEPTH_BYTES - 1;
  begin
    if rst_n = '0' then
      wr_ptr       <= 0;
      rd_ptr       <= 0;
      level        <= 0;
      sop_ptr      <= 0;
      sop_level    <= 0;
      wr_state     <= IDLE;
      ram_q        <= (others => '0');
      m_tvalid_reg <= '0';

    elsif rising_edge(clk) then
      ----------------------------------------------------------------------
      -- defaults
      ----------------------------------------------------------------------
      do_write := false;
      waddr    := wr_ptr;
      wdata    := (others => '0');
      next_rd  := (rd_ptr + 1) mod DEPTH_BYTES;

      ----------------------------------------------------------------------
      -- WRITE SIDE FSM
      ----------------------------------------------------------------------
      case wr_state is
        when IDLE =>
          if s_axis_tvalid = '1' then
            if level = DEPTH_BYTES then
              wr_state <= DROP;
            else
              sop_ptr   <= wr_ptr;
              sop_level <= level;
              do_write := true;
              waddr := wr_ptr;
              wdata := s_axis_tlast & s_axis_tdata;
              wr_ptr <= (wr_ptr + 1) mod DEPTH_BYTES;
              if m_read = '0' then
                level <= level + 1;
              end if;
              if s_axis_tlast = '0' then
                wr_state <= ACCEPT;
              else
                wr_state <= IDLE;
              end if;
            end if;
          end if;

        when ACCEPT =>
          if s_axis_tvalid = '1' then
            if level = DEPTH_BYTES then
              wr_state <= DROP;
              wr_ptr   <= sop_ptr;
              if m_read = '1' then
                if sop_level > 0 then
                  level <= sop_level - 1;
                else
                  level <= 0;
                end if;
              else
                level <= sop_level;
              end if;
            else
              do_write := true;
              waddr := wr_ptr;
              wdata := s_axis_tlast & s_axis_tdata;
              wr_ptr <= (wr_ptr + 1) mod DEPTH_BYTES;
              if m_read = '0' then
                level <= level + 1;
              end if;
              if s_axis_tlast = '1' then
                wr_state <= IDLE;
              end if;
            end if;
          end if;

        when DROP =>
          if s_axis_tvalid = '1' and s_axis_tlast = '1' then
            wr_state <= IDLE;
          end if;
      end case;

      ----------------------------------------------------------------------
      -- WRITE-FIRST RAM model (simulation accurate, hardware identical)
      ----------------------------------------------------------------------
      if do_write then
        ram(waddr) <= wdata;
      end if;

      -- emulate synchronous BRAM read timing (write-first)
      if do_write and (waddr = rd_ptr) then
        ram_q <= wdata;                     -- immediate forward (write-first)
      else
        ram_q <= ram(rd_ptr);               -- normal registered read
      end if;

      ----------------------------------------------------------------------
      -- READ SIDE
      ----------------------------------------------------------------------
      if m_read = '1' then
        if level > 0 then
          level <= level - 1;
        else
          level <= 0;
        end if;
        rd_ptr <= next_rd;
      end if;

      m_tvalid_reg <= m_tvalid_pre;

      ----------------------------------------------------------------------
      -- Defensive clamps
      ----------------------------------------------------------------------
      if wr_ptr < 0 then wr_ptr <= 0;
      elsif wr_ptr > DEPTH_BYTES - 1 then wr_ptr <= DEPTH_BYTES - 1; end if;

      if rd_ptr < 0 then rd_ptr <= 0;
      elsif rd_ptr > DEPTH_BYTES - 1 then rd_ptr <= DEPTH_BYTES - 1; end if;

      if level < 0 then level <= 0;
      elsif level > DEPTH_BYTES then level <= DEPTH_BYTES; end if;
    end if;
  end process;

end architecture;
