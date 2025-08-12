library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Input Buffer for Differential Signaling
entity BUFF_INPUT_DIFF is
    port (
        O  : out std_logic;  -- Buffer output
        I  : in  std_logic;  -- Diff_p buffer input (connect to top-level port)
        IB : in  std_logic   -- Diff_n buffer input (connect to top-level port)
    );
end BUFF_INPUT_DIFF;

architecture CONCURRENT of BUFF_INPUT_DIFF is
begin
    O <= '1' when (I = '1' and IB = '0') else
         '0' when (I = '0' and IB = '1') else
         'X';
end CONCURRENT;
