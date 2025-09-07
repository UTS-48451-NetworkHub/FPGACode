library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Input Buffer for Differential Signaling
entity buff_diff_in is
  port (
    O   : out std_logic; -- Buffer output
    I_p : in std_logic; -- Diff_p buffer input (connect to top-level port)
    I_n : in std_logic -- Diff_n buffer input (connect to top-level port)
  );
end buff_diff_in;

architecture arch of buff_diff_in is
begin
  O <= '1' when (I_p = '1' and I_n = '0') else
    '0' when (I_p = '0' and I_n = '1') else
    'X';
end arch;
