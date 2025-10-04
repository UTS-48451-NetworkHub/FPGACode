library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity altclkctrl is
    port (
        inclk : in std_logic;
        outclk : out std_logic
    );
end entity;

architecture rtl of altclkctrl is
begin

    outclk <= inclk;
    
end architecture rtl;
