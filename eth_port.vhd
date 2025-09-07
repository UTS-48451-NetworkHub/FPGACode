library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_port is
  port (
    clk : in std_logic; -- 100 MHz
    -- Upstream Data Port
    i_data       : in std_logic_vector(7 downto 0);
    i_data_valid : in std_logic;
    o_data       : out std_logic_vector(7 downto 0);
    o_data_valid : out std_logic;
    -- Downstream Data Port
    rx_p : in std_logic;
    rx_n : in std_logic;
    tx_p : out std_logic;
    tx_n : out std_logic
  );
end eth_port;

architecture arch of eth_port is

begin

  c_tx : entity work.eth_tx(arch)
    port map
    (
      clk    => clk,
      i_data => i_data,
      o_dp   => tx_p,
      o_dn   => tx_n
    );

end architecture arch;
