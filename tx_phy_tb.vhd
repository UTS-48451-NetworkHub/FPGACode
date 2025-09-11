library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_phy_tb is
end entity tx_phy_tb;

architecture sim of tx_phy_tb is
  -- DUT signals
  signal clk       : std_logic := '1';
  signal resetn    : std_logic := '0';
  signal tx_active : std_logic := '0';
  signal bit_valid : std_logic := '0';
  signal driver_en : std_logic;
  signal bit_in    : std_logic := '0';
  signal tx_out    : std_logic;

  -- Constants
  constant CLK_PERIOD        : time := 10 ns; -- 100 MHz
  constant PERIOD_TX_1ST_REM : time := 80 ns;
  constant PERIOD_TX_OTH_REM : time := 90 ns;

begin
  --------------------------------------------------------------------
  -- DUT instance
  --------------------------------------------------------------------
  uut : entity work.tx_phy
    port map
    (
      clk       => clk,
      resetn    => resetn,
      tx_active => tx_active,
      bit_valid => bit_valid,
      driver_en => driver_en,
      bit_in    => bit_in,
      tx_out    => tx_out
    );

  --------------------------------------------------------------------
  -- Clock generation
  --------------------------------------------------------------------
  clk <= not clk after CLK_PERIOD/2;

  --------------------------------------------------------------------
  -- Stimulus process
  --------------------------------------------------------------------
  stim_proc : process
  begin
    -- Reset
    resetn <= '0';
    wait for 200 ns;
    resetn <= '1';
    wait for 90 ns;

    ----------------------------------------------------------------
    -- Test 1: Transmit a sequence of bits
    ----------------------------------------------------------------
    report "Starting Manchester encoding test";
    tx_active <= '1';

    -- Send bit '1'
    bit_in    <= '1';
    bit_valid <= '1';
    wait for CLK_PERIOD;
    bit_valid <= '0';
    wait for PERIOD_TX_OTH_REM;

    -- Inactive 1 bit
    tx_active <= '0';
    wait for 100 ns;
    tx_active <= '1';

    -- Send bit '0'
    bit_in    <= '0';
    bit_valid <= '1';
    wait for CLK_PERIOD;
    bit_valid <= '0';
    wait for PERIOD_TX_OTH_REM;

    -- Inactive 1 bit
    tx_active <= '0';
    wait for 100 ns;
    tx_active <= '1';

    -- Send bits '00'
    bit_in    <= '0';
    bit_valid <= '1';
    wait for CLK_PERIOD;
    bit_valid <= '0';
    wait for PERIOD_TX_OTH_REM;
    bit_in    <= '0';
    bit_valid <= '1';
    wait for CLK_PERIOD;
    bit_valid <= '0';
    wait for PERIOD_TX_OTH_REM;

    -- Send bits '11'
    bit_in    <= '1';
    bit_valid <= '1';
    wait for CLK_PERIOD;
    bit_valid <= '0';
    wait for PERIOD_TX_OTH_REM;
    bit_in    <= '1';
    bit_valid <= '1';
    wait for CLK_PERIOD;
    bit_valid <= '0';
    wait for PERIOD_TX_OTH_REM;

    -- End transmission
    tx_active <= '0';
    wait for 500 ns;

    ----------------------------------------------------------------
    -- Test 2: NLP after inactivity
    ----------------------------------------------------------------
    report "Testing NLP generation";
    -- Just wait long enough to exceed inactivity counter
    wait for 2 ms;

    ----------------------------------------------------------------
    -- End simulation
    ----------------------------------------------------------------
    assert false report "Simulation finished." severity failure;
    wait;
  end process;

end architecture sim;
