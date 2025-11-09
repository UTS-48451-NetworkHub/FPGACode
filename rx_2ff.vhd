library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity rx_2ff is
  port (
    clk_in         : in std_logic; --! 100MHz clock
    manchester_in  : in std_logic; --! Manchester input
    resetn         : in std_logic; --! active low reset
    manchester_out : out std_logic := '0' --! inverted Synchronised manchester output
  );
end rx_2ff;

architecture Behavioral of rx_2ff is
  --! hold inital signal
  signal sync  : std_logic := '0'; 
  --! synchronsied signal
  signal sync2 : std_logic := '0'; 

begin
  FF2 : process (clk_in, resetn)
  begin
    if resetn = '0' then
      sync  <= '0';
      sync2 <= '0';
    elsif rising_edge(clk_in) then
      sync  <= manchester_in;
      sync2 <= sync;
    end if;
  end process;

  manchester_out <= (not sync2); --! invert synchronised signal

end Behavioral;
