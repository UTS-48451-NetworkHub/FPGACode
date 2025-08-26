library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity NLP_GEN is
  port (
	i_enable    : in std_logic;
	i_NLP_CLK   : in std_logic; -- 50 MHz (change to 10 MHz)
	o_NLP_OUT   : out std_logic
  ) ;
end entity ; -- NLP_GEN

--------------------------------------------------------------------------------
-- Network Link Pulse (NLP) Generator
-- We need to generate a pulse between 85 and 100ns long to indicate
-- to a connected computer that a device is present.
-- This pulse must be sent every ~16ms. At 50MHz, that is a 2^20 counter.

architecture arch of NLP_GEN is

	-- 20 Bit Counter
	signal r_delay_counter : unsigned(19 downto 0) := (others => '0');

	-- Network Link Pulse Needed
	signal r_nlp_req : std_logic := '0';

	-- 3 Bit Counter (0-5)
	signal r_nlp_counter : unsigned(5 downto 0) := (others => '0');

begin
	
	-- Count & reset handling.
	p_NLP_DELAY : process (i_NLP_CLK) is
	begin			
		if rising_edge(i_NLP_CLK) then
			-- Handle enable
			if i_enable = '0' then
				r_delay_counter <= (others => '0');
				r_nlp_req <= '0';
			else
				-- Increase counter count
				r_delay_counter <= r_delay_counter + 1;

				-- Request generation of the network link pulse.
				if r_delay_counter = 1048575 then
					r_nlp_req <= '1';
				end if;
			end if;
		end if;
	end process p_NLP_DELAY;

	-- NLP generation.
	p_NLP_GEN : process (i_NLP_CLK) is
	begin
		if rising_edge (i_NLP_CLK) and r_nlp_req = '1' then
			-- Increment clock
			r_nlp_counter <= r_nlp_counter + 1;

			-- On 0, turn on NLP. On 5, turn off NLP and reset.
			if r_nlp_counter = 0 then
				o_NLP_OUT <= '1';
			elsif r_nlp_counter = 5 then
				o_NLP_OUT <= '0';
				r_nlp_req <= '0';
				r_nlp_counter <= (others => '0');
			end if;
		end if;
	end process p_NLP_GEN;

end architecture arch;
