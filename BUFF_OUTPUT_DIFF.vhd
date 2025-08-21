library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity BUFF_OUTPUT_DIFF is
  port (
	I  : in std_logic; 
	O  : out std_logic;
	OB : out std_logic
  ) ;
end entity ; -- BUFF_OUTPUT_DIFF

architecture arch of BUFF_OUTPUT_DIFF is
begin

	O <= I;
	OB <= not I;

end architecture arch;