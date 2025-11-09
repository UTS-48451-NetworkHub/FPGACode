library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity address_reader_tb is
end entity;

architecture sim of address_reader_tb is
  signal clock : std_logic := '0';
  signal reset : std_logic := '1';

  signal valid     : std_logic                     := '0';
  signal fcs_valid : std_logic                     := '0';
  signal size      : std_logic_vector(15 downto 0) := (others => '0');

  signal tready : std_logic := '0';
  signal tlast  : std_logic := '0';

  signal axi_en : std_logic;
  signal crc_en : std_logic;
  signal addr   : std_logic_vector(10 downto 0);

  constant clk_period : time := 10 ns;

begin
  -- DUT
  dut : entity work.address_reader(Behavioral)
    port map
    (
      clock     => clock,
      reset     => reset,
      valid     => valid,
      tready    => tready,
      tlast     => tlast,
      fcs_valid => fcs_valid,
      size      => size,
      axi_en    => axi_en,
      crc_en    => crc_en,
      addr      => addr
    );

  -- clock
  clk_proc : process
  begin
    while true loop
      clock <= '0';
      wait for clk_period/2;
      clock <= '1';
      wait for clk_period/2;
    end loop;
  end process;

  -- Stimulus
  stim : process
    constant SZ : natural := 20; -- payload length
  begin
    -- reset
    reset <= '0';
    wait for 3 * clk_period;
    reset <= '1';
    wait for 2 * clk_period;

    -- Frame #1: size = 20, 21 valid cycles (10..30 inclusive)
    size  <= std_logic_vector(to_unsigned(SZ, 16));
    valid <= '1';
    wait for clk_period; -- addr = 10
    assert unsigned(addr) = to_unsigned(10, addr'length) report "addr should start at 10" severity error;

    for i in 1 to SZ loop
      wait for clk_period;
      assert unsigned(addr) = to_unsigned(10 + i, addr'length)
      report "addr expected " & integer'image(10 + i) severity error;
    end loop;

    -- hold address after final
    wait for 3 * clk_period;
    assert unsigned(addr) = to_unsigned(10 + SZ, addr'length)
    report "addr should hold final address" severity error;

    tready <= '1';
    wait for 3 * clk_period;

    fcs_valid <= '1';
    tlast     <= '1';
    wait for 4 * clk_period;

    -- end frame
    valid <= '0';
    wait for 2 * clk_period;
    tready <= '0';
    tlast  <= '0';

    -- reset
    reset <= '0';
    wait for 3 * clk_period;
    reset <= '1';
    wait for 2 * clk_period;

    -- reset
    reset <= '0';
    wait for 3 * clk_period;
    reset <= '1';
    wait for 2 * clk_period;

    -- Frame #2: size = 10, 11 valid cycles (10..20 inclusive)
    size  <= std_logic_vector(to_unsigned(10, 16));
    valid <= '1';
    wait for clk_period; -- addr = 10
    assert unsigned(addr) = to_unsigned(10, addr'length) report "addr should start at 10" severity error;

    for i in 1 to 10 loop
      wait for clk_period;
      assert unsigned(addr) = to_unsigned(10 + i, addr'length)
      report "addr expected " & integer'image(10 + i) severity error;
    end loop;

    -- hold address after final
    wait for 3 * clk_period;
    assert unsigned(addr) = to_unsigned(20, addr'length)
    report "addr should hold final address" severity error;

    tready <= '1';
    wait for 3 * clk_period;

    fcs_valid <= '1';
    tlast     <= '1';
    wait for 4 * clk_period;

    -- end frame
    valid <= '0';
    wait for 2 * clk_period;
    tready <= '0';
    tlast  <= '0';

    -- reset
    reset <= '0';
    wait for 3 * clk_period;
    reset <= '1';
    wait for 2 * clk_period;

    report "TEST COMPLETE" severity note;
    wait;
  end process;

end architecture;
