-- tb_ringbuffer_wrap.vhd  (VHDL-93)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ringbuffer_wrap is
end;

architecture sim of tb_ringbuffer_wrap is
  constant DATA_WIDTH  : positive := 8;
  -- Small depth to force wrap: 8 bytes total
  constant DEPTH_BYTES : positive := 8;

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
  signal m_tready : std_logic := '1';   -- consumer always ready

  -- three 4-byte packets (12 bytes total -> wrap occurs)
  type byte_array is array (natural range <>) of std_logic_vector(7 downto 0);
  constant pkt0 : byte_array := (x"01", x"02", x"03", x"04");
  constant pkt1 : byte_array := (x"05", x"06", x"07", x"08");
  constant pkt2 : byte_array := (x"09", x"0A", x"0B", x"0C");

  signal done_all : std_logic := '0';

  -- tiny hex helper for messages
  function to_hstring8(v : std_logic_vector(7 downto 0)) return string is
    variable n : integer := to_integer(unsigned(v));
    constant hexchars : string := "0123456789ABCDEF";
    variable s : string(1 to 2);
  begin
    s(1) := hexchars((n / 16) + 1);
    s(2) := hexchars((n mod 16) + 1);
    return s;
  end function;

  -- helpers to fetch current packet info for the monitor
  function pkt_len(idx : natural) return natural is
  begin
    if idx = 0 then
      return pkt0'length;
    elsif idx = 1 then
      return pkt1'length;
    else
      return pkt2'length;
    end if;
  end function;

  function pkt_byte(idx, bytei : natural) return std_logic_vector is
  begin
    if idx = 0 then
      return pkt0(bytei);
    elsif idx = 1 then
      return pkt1(bytei);
    else
      return pkt2(bytei);
    end if;
  end function;

begin
  -- 100 MHz clock
  clk <= not clk after 5 ns;

  -- DUT
  dut: entity work.ringbuffer
    generic map (DATA_WIDTH => DATA_WIDTH, DEPTH_BYTES => DEPTH_BYTES)
    port map (
      clk => clk, rst_n => rst_n,
      s_axis_tdata => s_tdata, s_axis_tvalid => s_tvalid, s_axis_tlast => s_tlast, s_axis_tready => s_tready,
      m_axis_tdata => m_tdata, m_axis_tvalid => m_tvalid, m_axis_tlast => m_tlast, m_axis_tready => m_tready
    );

  ------------------------------------------------------------------
  -- STIMULUS: reset, then send three 4B packets back-to-back
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

        -- wait for acceptance
        wait until rising_edge(clk);
        while s_tready = '0' loop
          wait until rising_edge(clk);
        end loop;
      end loop;

      -- deassert after packet
      s_tvalid <= '0';
      s_tlast  <= '0';
      s_tdata  <= (others => '0');
    end procedure;
  begin
    -- reset
    rst_n <= '0'; wait for 80 ns;
    rst_n <= '1'; wait for 20 ns;

    -- back-to-back (12 bytes total; with depth 8 we must wrap)
    send_packet(pkt0);
    send_packet(pkt1);
    send_packet(pkt2);

    -- wait for monitor
    wait until done_all = '1';

    report "RING WRAP TEST PASSED" severity note;
    wait;  -- end cleanly
  end process;

  ------------------------------------------------------------------
  -- MONITOR: packet-by-packet checker (1-cycle RAM latency aware)
  ------------------------------------------------------------------
  mon: process
    variable pkt_idx         : natural := 0;          -- which packet (0..2)
    variable byte_idx        : natural := 0;          -- byte within packet
    variable cur_len         : natural := pkt_len(0);
    variable pending_compare : boolean := false;      -- schedule compare next cycle
    variable exp             : std_logic_vector(7 downto 0);
  begin
    wait until rst_n = '1';
    wait until rising_edge(clk);  -- prime

    while done_all = '0' loop
      wait until rising_edge(clk);

      -- perform the comparison from last cycle's handshake
      if pending_compare = true then
        exp := pkt_byte(pkt_idx, byte_idx);

        assert m_tdata = exp
          report "Data mismatch at pkt " & integer'image(pkt_idx) &
                 ", byte " & integer'image(byte_idx) &
                 " exp=" & to_hstring8(exp) &
                 " got=" & to_hstring8(m_tdata)
          severity failure;

        if byte_idx = cur_len - 1 then
          assert m_tlast = '1'
            report "tlast not asserted on final byte of pkt " & integer'image(pkt_idx)
            severity failure;

          -- advance to next packet or finish
          if pkt_idx = 2 then
            done_all <= '1';
          else
            pkt_idx  := pkt_idx + 1;
            cur_len  := pkt_len(pkt_idx);
            byte_idx := 0;
          end if;
        else
          assert m_tlast = '0'
            report "tlast asserted early at pkt " & integer'image(pkt_idx) &
                   ", byte " & integer'image(byte_idx)
            severity failure;

          byte_idx := byte_idx + 1;
        end if;

        pending_compare := false;
      end if;

      -- detect a transfer; schedule compare next cycle (due to 1-cycle RAM latency)
      if (m_tvalid = '1') and (m_tready = '1') then
        pending_compare := true;
      end if;
    end loop;

    wait;
  end process;

end architecture;
