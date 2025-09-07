library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_port is
  port (
    clk          : in std_logic; -- 100 MHz
    i_data       : in std_logic_vector(7 downto 0);
    i_data_valid : in std_logic;
    o_data       : out std_logic_vector(7 downto 0);
    o_data_valid : out std_logic
  );
end eth_port;

architecture arch of eth_port is

begin

end architecture arch;
