library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ringbuffer is
  generic(
    DATA_WIDTH  : positive := 8;        -- AXIS width (bits)
    DEPTH_BYTES : positive := 2048      -- total storage (bytes)
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
    if b then
      return '1';
    else
      return '0';
    end if;
  end function;

  --------------------------------------------------------------------
  -- Depth/width math
  --------------------------------------------------------------------
  constant DEPTH_WORDS : positive := (DEPTH_BYTES * 8) / DATA_WIDTH;
  constant AW          : natural  := ceil_log2(DEPTH_WORDS);

  --------------------------------------------------------------------
  -- Block RAM: store {tlast,data}
  --------------------------------------------------------------------
  type   ram_t is array (0 to DEPTH_WORDS - 1) of std_logic_vector(DATA_WIDTH downto 0);
  signal ram   : ram_t := (others => (others => '0'));

  -- Port A (write)
  signal a_en   : std_logic                             := '0';
  signal a_we   : std_logic                             := '0';
  signal a_addr : unsigned(AW - 1 downto 0)             := (others => '0');
  signal a_din  : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');

  -- Port B (read)
  signal b_en   : std_logic                             := '0';
  signal b_addr : unsigned(AW - 1 downto 0)             := (others => '0');
  signal b_dout : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');

  --------------------------------------------------------------------
  -- Pointers / counters / state  (single-driver!)
  --------------------------------------------------------------------
  signal wr_ptr    : unsigned(AW - 1 downto 0) := (others => '0');
  signal rd_ptr    : unsigned(AW - 1 downto 0) := (others => '0');
  signal occ_words : unsigned(AW downto 0)     := (others => '0'); -- 0..DEPTH_WORDS
  signal pkt_count : unsigned(15 downto 0)     := (others => '0');

  -- rollback snapshot
  signal sop_ptr : unsigned(AW - 1 downto 0) := (others => '0');
  signal sop_occ : unsigned(AW downto 0)     := (others => '0');

  signal in_packet : std_logic := '0';
  signal dropping  : std_logic := '0';

  -- handshakes
  signal s_handshake : std_logic;
  signal m_handshake : std_logic;

  -- derived flags
  signal empty_words : std_logic;
  signal have_packet : std_logic;

  -- OUT mirrors
  signal s_axis_tready_i : std_logic := '0';
  signal m_axis_tvalid_i : std_logic := '0';

begin
  --------------------------------------------------------------------
  -- OUT ports
  --------------------------------------------------------------------
  s_axis_tready <= s_axis_tready_i;

  --------------------------------------------------------------------
  -- RAM: sync write, 1-cycle read
  --------------------------------------------------------------------
  ram_proc : process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        b_dout <= (others => '0');      -- avoid red X on output bus after reset
      else
        if a_en = '1' and a_we = '1' then
          ram(to_integer(a_addr)) <= a_din;
        end if;
        if b_en = '1' then
          b_dout <= ram(to_integer(b_addr));
        end if;
      end if;
    end if;
  end process;

  --------------------------------------------------------------------
  -- Handshakes / flags (guard reset)
  --------------------------------------------------------------------
  s_handshake <= (s_axis_tvalid and s_axis_tready_i) and rst_n;
  m_handshake <= (m_axis_tvalid_i and m_axis_tready) and rst_n;

  empty_words <= '1' when rst_n = '0' else to_sl(occ_words = to_unsigned(0, occ_words'length));
  have_packet <= '0' when rst_n = '0' else to_sl(pkt_count /= to_unsigned(0, pkt_count'length));

  --------------------------------------------------------------------
  -- Write side wiring & ready policy
  --------------------------------------------------------------------
  a_en   <= '1';
  a_we   <= s_handshake when (dropping = '0' and occ_words < to_unsigned(DEPTH_WORDS, occ_words'length)) else '0';
  a_addr <= wr_ptr;
  a_din  <= s_axis_tlast & s_axis_tdata;

  -- Keep ready asserted while IN a packet (so we can flush to tlast),
  -- otherwise only ready if space is available.
  s_axis_tready_i <= '0' when rst_n = '0' else
                     '1' when in_packet = '1' else
                     '0' when occ_words = to_unsigned(DEPTH_WORDS, occ_words'length) else
                     '1';

  --------------------------------------------------------------------
  -- Read side wiring
  --------------------------------------------------------------------
  b_en   <= '1';
  b_addr <= rd_ptr;

  m_axis_tdata    <= b_dout(DATA_WIDTH - 1 downto 0);
  m_axis_tlast    <= b_dout(DATA_WIDTH);
  m_axis_tvalid_i <= have_packet and (not empty_words);

  --------------------------------------------------------------------
  -- SINGLE bookkeeping process (no multi-driver!)
  --------------------------------------------------------------------
  bookkeeper : process(clk)
    variable next_occ_inc : unsigned(occ_words'range);
    variable next_occ_dec : unsigned(occ_words'range);
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        wr_ptr    <= (others => '0');
        rd_ptr    <= (others => '0');
        occ_words <= (others => '0');
        pkt_count <= (others => '0');
        sop_ptr   <= (others => '0');
        sop_occ   <= (others => '0');
        in_packet <= '0';
        dropping  <= '0';

      else
        m_axis_tvalid <= m_axis_tvalid_i;
        ----------------------------------------------------------------
        -- WRITE PATH (accept or drop)
        ----------------------------------------------------------------
        if s_handshake = '1' then
          -- SOP snapshot
          if in_packet = '0' then
            sop_ptr   <= wr_ptr;
            sop_occ   <= occ_words;
            in_packet <= '1';
          end if;

          if dropping = '0' then
            -- compute occupancy if we accept this beat
            if occ_words < to_unsigned(DEPTH_WORDS, occ_words'length) then
              next_occ_inc := occ_words + 1;
            else
              next_occ_inc := occ_words;
            end if;

            -- write only if there is space
            if occ_words < to_unsigned(DEPTH_WORDS, occ_words'length) then
              wr_ptr    <= wr_ptr + 1;
              occ_words <= next_occ_inc;
            end if;

            if s_axis_tlast = '1' then
              -- commit complete packet
              in_packet <= '0';
              pkt_count <= pkt_count + 1;
            else
              -- Start dropping if after this accept we're full,
              -- OR if we were already full when this beat arrived.
              if (next_occ_inc = to_unsigned(DEPTH_WORDS, occ_words'length)) or (occ_words = to_unsigned(DEPTH_WORDS, occ_words'length)) then
                dropping <= '1';
              end if;
            end if;

          else
            -- dropping: eat beats to tlast then rollback
            if s_axis_tlast = '1' then
              wr_ptr    <= sop_ptr;
              occ_words <= sop_occ;
              in_packet <= '0';
              dropping  <= '0';
              -- pkt_count unchanged (dropped)
            end if;
          end if;
        end if;

        ----------------------------------------------------------------
        -- READ PATH (drain)
        ----------------------------------------------------------------
        if m_handshake = '1' then
          -- safe decrement (avoid underflow)
          if occ_words > to_unsigned(0, occ_words'length) then
            next_occ_dec := occ_words - 1;
          else
            next_occ_dec := occ_words;
          end if;

          rd_ptr    <= rd_ptr + 1;
          occ_words <= next_occ_dec;

          if b_dout(DATA_WIDTH) = '1' then
            if pkt_count /= to_unsigned(0, pkt_count'length) then
              pkt_count <= pkt_count - 1;
            end if;
          end if;
        end if;

      end if;                           -- rst
    end if;                             -- clk
  end process;

end architecture rtl;
