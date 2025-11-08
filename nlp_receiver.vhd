library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity NLP_receiver is
  port (
    resetn        : in std_logic;
    clk_in        : in std_logic;
    manchester_in : in std_logic;
    link_active   : out std_logic := '0'
  );
end NLP_receiver;

architecture Behavioral of NLP_receiver is
  constant gap_length    : integer               := 1600000; --16ms -> 1600000 clk cycles
  signal NLP_count       : unsigned(20 downto 0) := (others => '0'); --! Counter
  signal manchester_prev : std_logic             := '0'; --! prev mancehster logic

begin
  process (clk_in, resetn)
  begin
    if resetn = '0' then
      NLP_count       <= to_unsigned(0, NLP_count'length);
      manchester_prev <= '0';

    elsif rising_edge(clk_in) then
      manchester_prev <= manchester_in;
      if manchester_in /= manchester_prev then
        NLP_count <= (others => '0');
      else
        NLP_count <= NLP_count + 1;
      end if;
      if NLP_count > gap_length + 1000 then
        link_active <= '0';
      else
        link_active <= '1';
      end if;
    end if;
  end process;
end behavioral;
