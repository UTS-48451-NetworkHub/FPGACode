library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MNC_ENCODER is
	port (
		i_reset     : in std_logic;
		i_eth_bs    : in std_logic;
		i_clk       : in std_logic; -- 20 MHz
		o_mnc_out   : out std_logic
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
	p_phase_gen : process (i_clk) is
	begin
		if i_reset = '1' then
			r_phase <= '0';
		elsif rising_edge(i_clk) then
			r_phase <= not r_phase;
		end if;
	end process p_phase_gen;

	-- Xor the data stream to get the manchester encoded output
	o_mnc_out <= (i_eth_bs xor r_phase);

end architecture arch;
