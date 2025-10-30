library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ringbuffer_drop is
end;

architecture sim of tb_ringbuffer_drop is
  constant CLKPER : time := 10 ns;

  -- DUT generics (match ringbuffer entity!):
  constant DATA_WIDTH  : positive := 8;
  constant DEPTH_BYTES : positive := 8;  -- small to force overflow

  -- clock/reset
  signal clk   : std_logic := '0';
  signal rst_n : std_logic := '0';

  -- AXIS in -> DUT
  signal s_tdata  : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal s_tvalid : std_logic := '0';
  signal s_tlast  : std_logic := '0';
  signal s_tready : std_logic;

  -- AXIS out <- DUT
  signal m_tdata  : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal m_tvalid : std_logic;
  signal m_tlast  : std_logic;
  signal m_tready : std_logic := '0';  -- hold off while we inject

  -- Packets: A fits, B too big, C fits
  type byte_array is array (natural range <>) of std_logic_vector(7 downto 0);
  constant pktA : byte_array := (x"01", x"02", x"03", x"04");                                -- 4B
  constant pktB : byte_array := (x"10", x"11", x"12", x"13", x"14", x"15", x"16", x"17");    -- 8B (too big when A occupies 4/8)
  constant pktC : byte_array := (x"21", x"22", x"23");                                        -- 3B

  -- expected egress: A then C (B must be dropped)
  constant exp0 : byte_array := pktA;
  constant exp1 : byte_array := pktC;

  signal done_all : std_logic := '0';

  -- hex helper
  function to_hstring8(v : std_logic_vector(7 downto 0)) return string is
    variable n : integer := to_integer(unsigned(v));
    constant hx : string := "0123456789ABCDEF";
    variable s : string(1 to 2);
  begin
    s(1) := hx((n / 16) + 1);
    s(2) := hx((n mod 16) + 1);
    return s;
  end function;

begin
  -- 100 MHz clock
  clk <= not clk after CLKPER/2;

  -- DUT (direct entity instantiation -> no binding issues)
  dut: entity work.ringbuffer
    generic map (
      DATA_WIDTH  => DATA_WIDTH,
      DEPTH_BYTES => DEPTH_BYTES
    )
    port map (
      clk           => clk,
      rst_n         => rst_n,
      s_axis_tdata  => s_tdata,
      s_axis_tvalid => s_tvalid,
      s_axis_tlast  => s_tlast,
      m_axis_tdata  => m_tdata,
      m_axis_tvalid => m_tvalid,
      m_axis_tlast  => m_tlast,
      m_axis_tready => m_tready
    );

  ------------------------------------------------------------------
  -- STIMULUS
  ------------------------------------------------------------------
  stim: process
    procedure send_packet(constant p : in byte_array) is
    begin
      for i in p'range loop
        s_tdata  <= p(i);
        s_tvalid <= '1';
        if i = p'right then
          s_tlast <= '1';
        else
          s_tlast <= '0';
        end if;

        -- handshake
        wait until rising_edge(clk);
        while s_tready = '0' loop
          wait until rising_edge(clk);
        end loop;
      end loop;

      -- idle
      s_tvalid <= '0';
      s_tlast  <= '0';
      s_tdata  <= (others => '0');
    end procedure;
  begin
    -- Reset
    rst_n <= '0'; wait for 80 ns;
    rst_n <= '1'; wait for 20 ns;

    -- Hold output off so FIFO fills
    m_tready <= '0';

    -- Send A (fits) then B (too big -> should drop & rollback)
    send_packet(pktA);
    send_packet(pktB);

    -- Give a few cycles for rollback to complete cleanly
    wait for 40 ns;

    -- Allow draining; expect only A to come out now
    m_tready <= '1';

    -- After some drain time, send C (fits) and let it out too
    wait for 40 ns;
    send_packet(pktC);

    -- Wait for monitor to finish
    wait until done_all = '1';

    report "DROP/ROLLBACK TEST PASSED" severity note;
    wait; -- end cleanly
  end process;

  ------------------------------------------------------------------
  -- MONITOR (1-cycle RAM latency aware)
  ------------------------------------------------------------------
  mon: process
    variable which_pkt       : natural := 0;            -- 0=exp0 (A), 1=exp1 (C)
    variable byte_idx        : natural := 0;
    variable cur_len         : natural := exp0'length;
    variable pending_compare : boolean := false;        -- schedule compare next cycle
    variable exp             : std_logic_vector(7 downto 0);
  begin
    wait until rst_n = '1';
    wait until rising_edge(clk);

    while done_all = '0' loop
      wait until rising_edge(clk);

      -- perform comparison from prior cycle's transfer (due to 1-cycle RAM latency)
      if pending_compare = true then
        if which_pkt = 0 then
          exp := exp0(byte_idx);
        else
          exp := exp1(byte_idx);
        end if;

        assert m_tdata = exp
          report "Data mismatch at pkt " & integer'image(which_pkt) &
                 " byte " & integer'image(byte_idx) &
                 " exp=" & to_hstring8(exp) &
                 " got=" & to_hstring8(m_tdata)
          severity failure;

        if byte_idx = cur_len - 1 then
          assert m_tlast = '1'
            report "tlast not asserted on final byte of pkt " & integer'image(which_pkt)
            severity failure;

          if which_pkt = 0 then
            -- next expected: C
            which_pkt := 1;
            cur_len   := exp1'length;
            byte_idx  := 0;
          else
            done_all <= '1'; -- A then C seen, B was dropped
          end if;
        else
          assert m_tlast = '0'
            report "tlast asserted early at pkt " & integer'image(which_pkt) &
                   " byte " & integer'image(byte_idx)
            severity failure;
          byte_idx := byte_idx + 1;
        end if;

        pending_compare := false;
      end if;

      -- detect transfer; schedule compare next cycle
      if (m_tvalid = '1') and (m_tready = '1') then
        pending_compare := true;
      end if;
    end loop;

    wait;
  end process;

end architecture;
