library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_pt_tb is
end tx_fsm_pt_tb;

architecture sim of tx_fsm_pt_tb is
  -- DUT signals
  signal clk          : std_logic := '1';
  signal resetn       : std_logic := '0';
  signal tx_active    : std_logic;
  signal byte_valid   : std_logic;
  signal byte_ready   : std_logic := '0';
  signal packet_ready : std_logic;
  signal packet_valid : std_logic := '0';
  signal addr         : std_logic_vector(10 downto 0);
  signal data         : std_logic_vector(7 downto 0);
  signal bit_out      : std_logic := '0';
  signal bit_valid    : std_logic := '0';

  -- RAM model
  type ram_t is array (0 to 79) of std_logic_vector(7 downto 0);
  signal ram          : ram_t := (others => (others => '0'));
  signal ram_addr_reg : integer range 0 to 79 := 79;

begin
  --------------------------------------------------------------------
  -- DUT instantiation
  --------------------------------------------------------------------
  uut : entity work.tx_fsm_pt
    port map (
      clk          => clk,
      resetn       => resetn,
      tx_active    => tx_active,
      byte_valid   => byte_valid,
      byte_ready   => byte_ready,
      packet_ready => packet_ready,
      packet_valid => packet_valid,
      addr         => addr,
      data         => data
    );

  --------------------------------------------------------------------
  -- Serializer instantiation
  --------------------------------------------------------------------
  sr_piso : entity work.sr_piso
    generic map (
      WIDTH     => 8,
      BIT_DELAY => 10
    )
    port map (
      clk        => clk,
      resetn     => resetn,
      byte_in    => data,
      byte_valid => byte_valid,
      byte_ready => byte_ready,
      bit_out    => bit_out,
      bit_valid  => bit_valid
    );

  --------------------------------------------------------------------
  -- Clock generation (100 MHz, period = 10 ns)
  --------------------------------------------------------------------
  clk <= not clk after 5 ns;

  --------------------------------------------------------------------
  -- RAM model (registered address, unregistered data)
  --------------------------------------------------------------------
  process (clk)
  begin
    if rising_edge(clk) then
      if to_integer(unsigned(addr)) <= 79 then
        ram_addr_reg <= to_integer(unsigned(addr));
      else
        ram_addr_reg <= 0;
      end if;
    end if;
  end process;

  data <= ram(ram_addr_reg);

  --------------------------------------------------------------------
  -- Stimulus: load a minimum Ethernet frame into RAM
  --------------------------------------------------------------------
  stim_proc : process
  begin
    -- Packet length (just set big enough; DUT may ignore exact value now)
    ram(0) <= "00000000"; -- upper
    ram(1) <= x"49";      -- lower

    -- Preamble + SFD
    for i in 2 to 8 loop
      ram(i) <= x"55";
    end loop;
    ram(9) <= x"D5";

    -- Destination MAC = DE:AD:BE:EF:BE:EF
    ram(10) <= x"DE"; ram(11) <= x"AD"; ram(12) <= x"BE";
    ram(13) <= x"EF"; ram(14) <= x"BE"; ram(15) <= x"EF";
    -- Source MAC = BE:EF:DE:AD:BE:EF
    ram(16) <= x"BE"; ram(17) <= x"EF"; ram(18) <= x"DE";
    ram(19) <= x"AD"; ram(20) <= x"BE"; ram(21) <= x"EF";
    -- Ethertype = IPv4
    ram(22) <= x"08"; ram(23) <= x"00";

    -- Payload: 46 bytes dummy
    for i in 24 to 69 loop
      ram(i) <= std_logic_vector(to_unsigned(i, 8));
    end loop;

    -- Dummy FCS
    ram(70) <= x"12"; ram(71) <= x"34";
    ram(72) <= x"56"; ram(73) <= x"78";

    -- Apply reset
    resetn <= '0';
    wait for 20 ns;
    resetn <= '1';
    wait for 20 ns;

    -- Request a packet
    packet_valid <= '1';
    wait for 10 ns;
    packet_valid <= '0';

    -- Allow time for transmission
    wait for 95 * 8 * 10 * 10 ns;

    assert false report "Simulation finished" severity failure;
  end process;

  --------------------------------------------------------------------
  -- Checker: full bitstream verification + tx_active boundaries
  --------------------------------------------------------------------
  checker_proc : process
    type byte_array is array (natural range <>) of std_logic_vector(7 downto 0);
    variable expected_bytes : byte_array(0 to 73);
    variable exp_bit_idx    : integer := 0;
    variable total_bits     : integer;
    variable got_first_bit  : boolean := false;
    variable exp_bit        : std_logic;
  begin
    wait until resetn = '1';

    -- Build expected frame
    expected_bytes(0) := x"55";
    expected_bytes(1) := x"55";
    expected_bytes(2) := x"55";
    expected_bytes(3) := x"55";
    expected_bytes(4) := x"55";
    expected_bytes(5) := x"55";
    expected_bytes(6) := x"55";
    expected_bytes(7) := x"D5";
    expected_bytes(8) := x"DE"; expected_bytes(9) := x"AD"; expected_bytes(10) := x"BE";
    expected_bytes(11) := x"EF"; expected_bytes(12) := x"BE"; expected_bytes(13) := x"EF";
    expected_bytes(14) := x"BE"; expected_bytes(15) := x"EF"; expected_bytes(16) := x"DE";
    expected_bytes(17) := x"AD"; expected_bytes(18) := x"BE"; expected_bytes(19) := x"EF";
    expected_bytes(20) := x"08"; expected_bytes(21) := x"00";
    for i in 22 to 67 loop
      expected_bytes(i) := std_logic_vector(to_unsigned(i+2, 8)); -- matches RAM load
    end loop;
    expected_bytes(68) := x"12";
    expected_bytes(69) := x"34";
    expected_bytes(70) := x"56";
    expected_bytes(71) := x"78";

    total_bits := (expected_bytes'length) * 8;

    while exp_bit_idx < total_bits loop
      wait until rising_edge(clk);
      if bit_valid = '1' then
        -- Expected bit LSB-first per byte
        exp_bit := expected_bytes(exp_bit_idx/8)(exp_bit_idx mod 8);

        if not got_first_bit then
          got_first_bit := true;
          assert tx_active = '1'
            report "tx_active not high at first bit" severity error;
        end if;

        assert bit_out = exp_bit
          report "Mismatch at bit " & integer'image(exp_bit_idx) &
                 ": expected " & std_logic'image(exp_bit) &
                 " got " & std_logic'image(bit_out)
          severity error;

        exp_bit_idx := exp_bit_idx + 1;
      end if;
    end loop;

    -- After last bit, tx_active should go low soon
    wait until rising_edge(clk);
    assert tx_active = '0'
      report "tx_active did not go low after last bit" severity error;

    report "Full Ethernet frame transmitted correctly" severity note;
    wait;
  end process;

end architecture sim;
