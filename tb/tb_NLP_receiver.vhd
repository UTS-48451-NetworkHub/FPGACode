library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity tb_NLP_receiver is
end entity;

architecture sim of tb_NLP_receiver is
  -- Component under test
  component NLP_receiver
    port (
      resetn        : in std_logic;
      clk_in        : in std_logic;
      manchester_in : in std_logic;
      link_active   : out std_logic
    );
  end component;

  -- Testbench signals
  signal resetn        : std_logic := '0';
  signal clk_in        : std_logic := '0';
  signal manchester_in : std_logic := '0';
  signal link_active   : std_logic :=;

  constant CLK_PERIOD : time := 10 ns;  -- 100 MHz clock
begin
  -- DUT instance
  DUT: NLP_receiver
    port map (
      resetn        => resetn,
      clk_in        => clk_in,
      manchester_in => manchester_in,
      link_active   => link_active
    );

  -- Clock generation
  clk_process: process
  begin
    clk_in <= '0';
    wait for CLK_PERIOD / 2;
    clk_in <= '1';
    wait for CLK_PERIOD / 2;
  end process;

  -- Stimulus
  stim_proc: process
  begin
    -- Apply reset
    resetn <= '0';
    wait for 100 ns;
    resetn <= '1';
    wait for 100 ns;

    -- Simulate Manchester signal toggling (active)
    report "Starting active Manchester toggling";
    for i in 0 to 200 loop
      manchester_in <= not manchester_in;
      wait for 1 us;  -- toggle every microsecond (simulate transitions)
    end loop;

    -- Hold signal constant (simulate inactivity)
    report "Holding constant to simulate no link activity";
    wait for 20 ms;  -- longer than gap_length (16 ms equivalent)

    -- Resume toggling
    report "Resuming toggling to simulate reactivation";
    for i in 0 to 200 loop
      manchester_in <= not manchester_in;
      wait for 1 us;
    end loop;

    -- End simulation
    report "Simulation complete";
    wait;
  end process;
end architecture;
