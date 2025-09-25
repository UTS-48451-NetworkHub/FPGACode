library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tx_mnc_encoder is
  port (
    -- Mandatory
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Inputs
    eth_bs : in std_logic;
    -- Outputs
    mnc_out : out std_logic
  );
end tx_mnc_encoder;

--------------------------------------------------------------------------------
-- Manchester Encoding Generator
-- We need to calculate and store a 'phase' e.g. the two cases we defined above.
-- Remember phase is one clock behind!

architecture arch of tx_mnc_encoder is

  -- Bit Phase Register
  signal r_phase : std_logic := '0';

  -- Clock division counter (for 10 MHz clk_en)
  signal r_clk_counter : unsigned(2 downto 0) := (others => '0');

begin

  -- Generate the 'phase' of the bit stream
  p_phase_gen : process (clk, resetn) is
  begin
    if resetn = '0' then
      r_phase <= '0';
      r_clk_counter <= (others => '0');
    elsif rising_edge(clk) then
      if r_clk_counter = to_unsigned(4, r_clk_counter'length) then
        r_phase <= not r_phase;
        r_clk_counter <= (others => '0');
      else
        r_clk_counter <= r_clk_counter + 1;
      end if;
    end if;
  end process p_phase_gen;

  -- Xor the data stream to get the manchester encoded output
  mnc_out <= (eth_bs xor r_phase);
  
end architecture arch;
