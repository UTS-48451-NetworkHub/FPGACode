library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reset_ctrl is
  port (
    clk     : in  std_logic;
    btn_n   : in  std_logic;   -- active-low pushbutton
    resetn  : out std_logic    -- clean, active-low reset
  );
end entity;

architecture rtl of reset_ctrl is

begin

  resetn <= btn_n;

end architecture;
