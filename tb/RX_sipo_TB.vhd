library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity tb_RX_sipo is
end tb_RX_sipo;

architecture sim of tb_RX_sipo is

  -- DUT ports
  signal clk_in     : std_logic := '0';
  signal resetn     : std_logic := '0';
  signal bit_in     : std_logic := '0';
  signal bit_valid  : std_logic := '0';
  signal byte_out   : std_logic_vector(7 downto 0);
  signal byte_valid : std_logic;

  -- constants
  constant CLK_PERIOD : time := 10 ns;   -- 100 MHz
  constant BIT_PERIOD : time := 100 ns;  -- 10 Mbps (100 ns per bit)

begin
  -- Clock generation
  clk_process : process
  begin
    while true loop
      clk_in <= '0';
      wait for CLK_PERIOD/2;
      clk_in <= '1';
      wait for CLK_PERIOD/2;
    end loop;
  end process;

  -- DUT instance
  DUT : entity work.RX_sipo
    port map (
      clk_in     => clk_in,
      resetn     => resetn,
      bit_in     => bit_in,
      bit_valid  => bit_valid,
      byte_out   => byte_out,
      byte_valid => byte_valid
    );

  -- Stimulus
  stim_proc : process
    constant test_byte : std_logic_vector(7 downto 0) := "10101010";
  begin
    -- Apply reset
    resetn <= '0';
    wait for 200 ns;
    resetn <= '1';
    wait for CLK_PERIOD * 2;

    -- Send bits serially (MSB first)
    for i in 7 downto 0 loop
      wait until rising_edge(clk_in);
      bit_in    <= test_byte(i);
      bit_valid <= '1';
      wait until rising_edge(clk_in);  -- valid for 1 clock cycle
      bit_valid <= '0';
      wait for (BIT_PERIOD - CLK_PERIOD); -- rest of bit period
    end loop;
    -- Wait to observe output
    wait for 500 ns;

     for i in 7 downto 0 loop
      wait until rising_edge(clk_in);
      bit_in    <= test_byte(i);
      bit_valid <= '1';
      wait until rising_edge(clk_in);  -- valid for 1 clock cycle
      bit_valid <= '0';
      wait for (BIT_PERIOD - CLK_PERIOD); -- rest of bit period
    end loop;
        wait for 500 ns;

    -- End sim
    assert false report "Simulation ended" severity failure;
  end process;

end sim;
