library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TEN_BASE_TX is
	port (
		i_CLK       : in std_logic; -- 20 MHz
		i_ETH_BIT_S : in std_logic;
		o_MNC_BIT_S : out std_logic
		);
end TEN_BASE_TX;

architecture arch of TEN_BASE_TX is

	-- Data Last Bit
	signal r_ETH_LAST_BIT : std_logic := '0';

begin

end architecture arch;
