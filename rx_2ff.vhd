library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity rx_2ff is
  port (
    clk_in         : in std_logic;
    manchester_in  : in std_logic;
    resetn         : in std_logic;
    manchester_out : out std_logic := '0'
  );
end rx_2ff;

architecture Behavioral of rx_2ff is
  signal sync : std_logic := '0';

begin
  process (clk_in, resetn)
  begin
    if resetn = '0' then
      manchester_out <= '0';
      sync           <= '0';
    elsif rising_edge(clk_in) then
      sync           <= manchester_in;
      manchester_out <= sync;
    end if;
  end process;
end Behavioral;

