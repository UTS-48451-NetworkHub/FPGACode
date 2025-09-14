library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_port is
  port (
    -- Mandatory (AXI-S Bus)
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Upstream Data Port (TX/RX AXI-S)
    tx_valid : in std_logic;
    tx_ready : out std_logic;
    tx_last  : in std_logic;
    tx_data  : in std_logic_vector(7 downto 0);
    -- Downstream Data Port (PLS)
    rx    : in std_logic;
    tx    : out std_logic;
    tx_en : out std_logic;
    -- LEDs
    link : out std_logic;
    act : out std_logic
  );
end eth_port;

architecture arch of eth_port is

begin

  c_tx : entity work.eth_tx(arch)
    port map
    (
      clk    => clk,
      resetn => resetn,
      tx     => tx,
      tx_en  => tx_en,
      tvalid => tx_valid,
      tready => tx_ready,
      tlast  => tx_last,
      tdata  => tx_data
    );

  -- Debug temporary
  link <= '1';
  act <= '0';

end architecture arch;
