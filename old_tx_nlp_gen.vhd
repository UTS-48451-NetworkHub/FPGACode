library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_nlp_gen is
  port (
    i_enable  : in std_logic;
    i_clk     : in std_logic; -- 100 MHz
    o_nlp_out : out std_logic
  );
end tx_nlp_gen;

--------------------------------------------------------------------------------
-- Network Link Pulse (NLP) Generator
-- We need to generate a pulse between 85 and 100ns long to indicate
-- to a connected computer that a device is present.
-- This pulse must be sent every ~16ms. At 10MHz, that is 160k counts.
-- Hence the usage of a 2^18 counter.

architecture arch of tx_nlp_gen is

  -- 18 Bit Counter
  signal r_delay_counter : unsigned(17 downto 0) := (others => '0');

  -- Network Link Pulse Needed
  signal r_nlp_int : std_logic := '0';

begin

  -- Reset, Counting & NLP Generation.
  p_nlp : process (i_clk) is
  begin
    -- Reset & Delay Handling
    if rising_edge(i_clk) then
      -- Handle disabled state
      if i_enable = '0' then
        r_delay_counter <= (others => '0');
        r_nlp_int       <= '0';

        -- Handle enabled state
      else
        -- Increase counter count
        r_delay_counter <= r_delay_counter + 1;

        -- Generate the network link pulse
        if r_delay_counter = to_unsigned(160000, r_delay_counter'length) then
          r_nlp_int <= '1';
        end if;
      end if;

      -- End NLP Pulse
      if r_nlp_int = '1' then
        r_nlp_int <= '0';
      end if;
    end if;
  end process p_nlp;

  -- Output nlp internal register to output
  o_nlp_out <= r_nlp_int;

end architecture arch;
