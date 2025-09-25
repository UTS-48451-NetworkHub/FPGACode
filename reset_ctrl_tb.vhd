library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reset_ctrl_tb is
end entity;

architecture sim of reset_ctrl_tb is
  -- DUT ports
  signal clk     : std_logic := '0';
  signal btn_n   : std_logic := '1'; -- inactive, active-low button
  signal resetn  : std_logic;

  -- Clock period (100 MHz)
  constant CLK_PERIOD : time := 10 ns;

begin

  --------------------------------------------------------------------
  -- Instantiate DUT
  --------------------------------------------------------------------
  uut: entity work.reset_ctrl
    port map (
      clk    => clk,
      btn_n  => btn_n,
      resetn => resetn
    );

  --------------------------------------------------------------------
  -- Clock generator
  --------------------------------------------------------------------
  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for CLK_PERIOD/2;
      clk <= '1';
      wait for CLK_PERIOD/2;
    end loop;
  end process;

  --------------------------------------------------------------------
  -- Stimulus: emulate button with bounce
  --------------------------------------------------------------------
  stim_proc : process
  begin
    -- Wait some cycles before first press
    wait for 5 ms;

    -- Clean Press (no bounce)
    btn_n <= '0';
    wait for 30 ms;
    btn_n <= '1';
    wait for 30 ms;

    -- Button press with bounce (active-low)
    -- A "real" button might chatter rapidly between 0/1 for a few hundred ns
    btn_n <= '0';  wait for 100 ns;
    btn_n <= '1';  wait for 50 ns;
    btn_n <= '0';  wait for 200 ns;
    btn_n <= '1';  wait for 50 ns;
    btn_n <= '0';  -- finally settled pressed
    wait for 30 ms;

    -- Button release with bounce
    btn_n <= '1';  wait for 80 ns;
    btn_n <= '0';  wait for 50 ns;
    btn_n <= '1';  wait for 100 ns;
    btn_n <= '0';  wait for 50 ns;
    btn_n <= '1';  -- finally settled released
    wait for 30 ms;

    assert false report "Simulation finished." severity failure;
  end process;
end architecture;
