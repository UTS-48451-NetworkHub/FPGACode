library ieee;
use ieee.std_logic_1164.all;

-- Output buffer for differential signaling
entity BUFF_OUTPUT_DIFF is
	port (
  		I  : in std_logic;
  		O_p  : out std_logic;
  		O_n : out std_logic
	);
end entity BUFF_OUTPUT_DIFF;

architecture arch of BUFF_OUTPUT_DIFF is
begin

	--p_DIFF_N_GEN : process (I)
	--begin
	--	if rising_edge(I) then
	--		O_p <= '1';
	--		O_n <= '0';
	--	elsif falling_edge(I) then
	--		O_p <= '0';
	--		O_n <= '1';
	--	end if;
	--end process;

	O_p <= I;
	O_n <= not I;

end architecture arch;