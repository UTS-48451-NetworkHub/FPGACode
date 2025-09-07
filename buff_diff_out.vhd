library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buff_diff_out is
  port (
    I   : in std_logic;
    O_p : out std_logic;
    O_n : out std_logic
  );
end buff_diff_out;

architecture arch of buff_diff_out is
begin

  O_p <= I;
  O_n <= not I;

end architecture arch;
