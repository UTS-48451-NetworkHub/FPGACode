-- VHDL-93
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ringbuffer_boundaries is
end;

architecture sim of tb_ringbuffer_boundaries is
  ------------------------------------------------------------------
  -- DUT generics: small depth to force interesting cases
  ------------------------------------------------------------------
  constant DATA_WIDTH  : positive := 8;
  constant DEPTH_BYTES : positive := 8;  -- 8 bytes total

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
  signal m_tready : std_logic := '0';  -- hold off while filling

  -- simple types
  type byte_array is array (natural range <>) of std_logic_vector(7 downto 0);

  -- Packets:
  -- P1: 1 byte
  constant P1 : byte_array := (x"11");

  -- P2: 3 bytes -> occupancy after P1+P2 = 4/8
  constant P2 : byte_array := (x"21", x"22", x"23");

  -- P3: exactly fits remaining (4 bytes) -> occupancy becomes 8/8
  constant P3 : byte_array := (x"31", x"32", x"33", x"34");

  -- P4: too large (3 bytes when space==0) -> must be DROPPED and rolled back
  constant P4 : byte_array := (x"41", x"42", x"43");

  -- Expected egress: P1, P2, P3 (P4 dropped)
  constant EXP0 : byte_array := P1;
  constant EXP1 : byte_array := P2;
  constant EXP2 : byte_array := P3;

  signal done_all : std_logic := '0';

  -- hex helper for messages (8-bit)
  function to_hstring8(v : std_logic_vector(7 downto 0)) return string is
    variable n : integer := to_integer(unsigned(v));
    constant hexchars : string := "0123456789ABCDEF";
    variable s : string(1 to 2);
  begin
    s(1) := hexchars((n/16)+1);
    s(2) := hexchars((n mod 16)+1);
    return s;
  end function;

begin
  ------------------------------------------------------------------
  -- Clock: 100 MHz
  ------------------------------------------------------------------
  clk <= not clk after 5 ns;

  ------------------------------------------------------------------
  -- DUT
  ------------------------------------------------------------------
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
      s_axis_tready => s_tready,
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

        -- Wait for handshake
        wait until rising_edge(clk);
        while s_tready = '0' loop
          wait until rising_edge(clk);
        end loop;
      end loop;

      -- idle between packets
      s_tvalid <= '0';
      s_tlast  <= '0';
      s_tdata  <= (others => '0');
    end procedure;
  begin
    -- Reset
    rst_n <= '0'; wait for 80 ns;
    rst_n <= '1'; wait for 20 ns;

    -- Keep output stalled so we fill the FIFO
    m_tready <= '0';

    -- 1) Send 1B packet
    send_packet(P1);
    -- 2) Send 3B packet -> occ=4/8
    send_packet(P2);
    -- 3) Send 4B packet -> exactly fits -> occ=8/8 (full)
    send_packet(P3);
    -- 4) Send 3B packet -> should be DROPPED/MID-PACKET, then rolled back
    send_packet(P4);

    -- Let the DUT settle for a few cycles
    wait for 40 ns;

    -- Now allow draining; expect P1,P2,P3 only
    m_tready <= '1';

    -- Wait until monitor confirms all data observed
    wait until done_all = '1';
    report "BOUNDARIES TEST PASSED" severity note;
    wait;
  end process;

  ------------------------------------------------------------------
  -- MONITOR (accounts for 1-cycle RAM read latency)
  ------------------------------------------------------------------
  mon: process
    -- which expected packet are we on? 0=P1, 1=P2, 2=P3
    variable which_pkt       : natural := 0;
    variable byte_idx        : natural := 0;
    variable cur_len         : natural := EXP0'length;
    variable pending_compare : boolean := false; -- compare next cycle
    variable exp_byte        : std_logic_vector(7 downto 0);
  begin
    wait until rst_n = '1';
    wait until rising_edge(clk);

    while done_all = '0' loop
      wait until rising_edge(clk);

      -- compare from previous cycle's transfer
      if pending_compare = true then
        if which_pkt = 0 then
          exp_byte := EXP0(byte_idx);
        elsif which_pkt = 1 then
          exp_byte := EXP1(byte_idx);
        else
          exp_byte := EXP2(byte_idx);
        end if;

        assert m_tdata = exp_byte
          report "Data mismatch at pkt " & integer'image(which_pkt) &
                 " byte " & integer'image(byte_idx) &
                 " exp=" & to_hstring8(exp_byte) &
                 " got=" & to_hstring8(m_tdata)
          severity failure;

        if byte_idx = cur_len - 1 then
          assert m_tlast = '1'
            report "tlast not asserted on final byte of pkt " & integer'image(which_pkt)
            severity failure;

          -- advance to next expected packet
          if which_pkt = 0 then
            which_pkt := 1; cur_len := EXP1'length; byte_idx := 0;
          elsif which_pkt = 1 then
            which_pkt := 2; cur_len := EXP2'length; byte_idx := 0;
          else
            done_all <= '1'; -- saw P1,P2,P3 in order (P4 dropped)
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

      -- schedule compare on any actual transfer
      if (m_tvalid = '1') and (m_tready = '1') then
        pending_compare := true;
      end if;
    end loop;

    wait;
  end process;

end architecture sim;
