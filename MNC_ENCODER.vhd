library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MNC_ENCODER is
	port (
		i_enable    : in std_logic;
		i_reset     : in std_logic;
		i_ETH_BS    : in std_logic;
		i_MNC_CLK   : in std_logic; -- 20 MHz
		o_MNC_OUT   : out std_logic
		);
end MNC_ENCODER;

--------------------------------------------------------------------------------
-- Manchester Encoding Generator
-- We need to calculate and store a 'phase' e.g. the two cases we defined above.
-- Remember phase is one clock behind!

architecture arch of MNC_ENCODER is

	-- Bit Phase Register
	signal r_phase : std_logic := '0';

begin

	-- Generate the 'phase' of the bit stream
	p_PHASE_GEN : process (i_MNC_CLK) is
	begin
		if i_reset = '1' then
			r_phase <= '0';
		elsif rising_edge(i_MNC_CLK) then
			r_phase <= not r_phase;
		end if;
	end process p_PHASE_GEN;

	-- Xor the data stream to get the manchester encoded output (when enabled)
	o_MNC_OUT <= (i_ETH_BS xor r_phase) when i_enable = '1' else '0';

end architecture arch;
