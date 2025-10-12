-- tb_ringbuffer_basic.vhd  (VHDL-93)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ringbuffer_basic is
end;

architecture sim of tb_ringbuffer_basic is
  constant DATA_WIDTH  : positive := 8;
  constant DEPTH_BYTES : positive := 2048;

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
  signal m_tready : std_logic := '1';

  -- two packets (back-to-back)
  type byte_array is array (natural range <>) of std_logic_vector(7 downto 0);
  constant pkt0 : byte_array := (x"DA", x"7A", x"11", x"00", x"FF");
  constant pkt1 : byte_array := (x"AA", x"BB", x"CC");  -- 3 bytes

  -- done flag
  signal done_all : std_logic := '0';

  -- hex helper (8-bit)
  function to_hstring8(v : std_logic_vector(7 downto 0)) return string is
    variable n : integer := to_integer(unsigned(v));
    constant hexchars : string := "0123456789ABCDEF";
    variable s : string(1 to 2);
  begin
    s(1) := hexchars((n / 16) + 1);
    s(2) := hexchars((n mod 16) + 1);
    return s;
  end function;

begin
  -- 100 MHz
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
  -- STIMULUS: reset, then send two packets back-to-back
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

        -- wait until accepted (handshake)
        wait until rising_edge(clk);
        while s_tready = '0' loop
          wait until rising_edge(clk);
        end loop;
      end loop;

      -- deassert
      s_tvalid <= '0';
      s_tlast  <= '0';
      s_tdata  <= (others => '0');
    end procedure;
  begin
    -- reset
    rst_n <= '0'; wait for 80 ns;
    rst_n <= '1'; wait for 20 ns;

    -- back-to-back packets (no idle gap)
    send_packet(pkt0);
    send_packet(pkt1);

    -- wait for monitor to finish
    wait until done_all = '1';

    report "MULTI-PACKET TEST PASSED" severity note;
    wait;  -- end cleanly
  end process;

  ------------------------------------------------------------------
  -- MONITOR: checks both packets; accounts for 1-cycle RAM latency
  ------------------------------------------------------------------
  mon: process
    variable pkt_idx         : natural := 0;  -- 0 -> pkt0, 1 -> pkt1
    variable byte_idx        : natural := 0;
    variable pending_compare : boolean := false;  -- set on handshake, compare next cycle
    variable cur_len         : natural := pkt0'length;
    variable exp_byte        : std_logic_vector(7 downto 0);
  begin
    wait until rst_n = '1';
    wait until rising_edge(clk);

    while done_all = '0' loop
      wait until rising_edge(clk);

      -- Do the comparison scheduled last cycle
      if pending_compare = true then
        -- pick expected byte
        if pkt_idx = 0 then
          exp_byte := pkt0(byte_idx);
        else
          exp_byte := pkt1(byte_idx);
        end if;

        -- compare data
        assert m_tdata = exp_byte
          report "Data mismatch at pkt " & integer'image(pkt_idx) &
                 " byte " & integer'image(byte_idx) &
                 " exp=" & to_hstring8(exp_byte) &
                 " got=" & to_hstring8(m_tdata)
          severity failure;

        -- tlast check
        if byte_idx = cur_len - 1 then
          assert m_tlast = '1'
            report "tlast not asserted on final byte of pkt " & integer'image(pkt_idx)
            severity failure;
          -- move to next packet or finish
          if pkt_idx = 0 then
            pkt_idx  := 1;
            cur_len  := pkt1'length;
            byte_idx := 0;
          else
            done_all <= '1';
          end if;
        else
          assert m_tlast = '0'
            report "tlast early at pkt " & integer'image(pkt_idx) &
                   " byte " & integer'image(byte_idx)
            severity failure;
          byte_idx := byte_idx + 1;
        end if;

        pending_compare := false;
      end if;

      -- Detect transfer; schedule compare next cycle (1-cycle RAM latency)
      if (m_tvalid = '1') and (m_tready = '1') then
        pending_compare := true;
      end if;
    end loop;

    wait;
  end process;

end architecture;
