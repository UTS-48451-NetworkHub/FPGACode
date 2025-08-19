library ieee;
use ieee.std_logic_1164.all;

entity BUFF_OUTPUT_DIFF is
    port (
        I   : in std_logic;
        O_p : out std_logic;
        O_n : out std_logic;
        -- Debug output to see what's happening
        debug_I : out std_logic
    );
end entity BUFF_OUTPUT_DIFF;

architecture arch of BUFF_OUTPUT_DIFF is
begin
    -- Pass through for debugging
    debug_I <= I;
    
    -- Simple assignments
    process(I)
    begin
        if I = '1' then
            O_p <= '1';
            O_n <= '0';
        elsif I = '0' then
            O_p <= '0';
            O_n <= '1';
        else
            O_p <= 'X';
            O_n <= 'X';
        end if;
    end process;
end architecture arch;