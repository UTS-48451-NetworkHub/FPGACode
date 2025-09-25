library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_tx_tb is
end entity;

architecture sim of eth_tx_tb is

  -- DUT signals
  signal clk     : std_logic := '1';
  signal resetn  : std_logic := '0';

  signal tvalid  : std_logic := '0';
  signal tready  : std_logic;
  signal tlast   : std_logic := '0';
  signal tdata   : std_logic_vector(7 downto 0) := (others => '0');

  signal tx      : std_logic;
  signal tx_en   : std_logic;

  signal r_enable : std_logic := '0';

begin

  --------------------------------------------------------------------------
  -- DUT instantiation
  --------------------------------------------------------------------------
  uut : entity work.eth_tx
    port map (
      clk    => clk,
      resetn => resetn,
      tx     => tx,
      tx_en  => tx_en,
      tvalid => tvalid,
      tready => tready,
      tlast  => tlast,
      tdata  => tdata
    );

  --------------------------------------------------------------------------
  -- Clock generation (100 MHz -> 10 ns period)
  --------------------------------------------------------------------------
  clk_process : process
  begin
    while true loop
      clk <= '1'; wait for 5 ns;
      clk <= '0'; wait for 5 ns;
    end loop;
  end process;

  --------------------------------------------------------------------------
  -- Reset Generation
  --------------------------------------------------------------------------
  p_reset : process
  begin
    wait for 100 ns;
    resetn <= '1';

    -- Allow time for NLP to be sent first
    wait for 20 ms;
    r_enable <= '1';

    wait for 200 us;
    assert false report "Simulation finished" severity failure;
  end process;

  --------------------------------------------------------------------------
  -- Stimulus
  --------------------------------------------------------------------------
  stp : entity work.eth_tx_tb_driver
  port map (
    clk => clk,
    resetn => resetn,
    tvalid => tvalid,
    tready => tready,
    tlast => tlast,
    tdata => tdata,
    enable => r_enable
  );

end architecture;
