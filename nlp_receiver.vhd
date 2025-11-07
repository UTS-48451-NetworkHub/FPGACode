library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity NLP_receiver is
  port (
    resetn        : in std_logic;
    clk_in        : in std_logic;
    manchester_in : in std_logic;
    bit_valid     : in std_logic;
    RX_timeout    : in std_logic;
    NLP_active    : out std_logic := '0'
  );
end NLP_receiver;

architecture Behavioral of NLP_receiver is
  signal edge_detected   : std_logic             := '0';
  signal pulse_detected  : std_logic             := '0';
  constant pulse_length  : integer               := 10; --100ns -> 10 clk cycles
  constant gap_length    : integer               := 1600000; --16ms -> 1600000 clk cycles
  signal NLP_count       : unsigned(20 downto 0) := (others => '0'); --! Counter
  signal manchester_prev : std_logic             := '0'; --! prev mancehster logic

  type NLP_state is(

  IDLE, --! No active connection
  NLP, --! NLP active
  RX --! RX receiving

  );

  signal current_state, next_state : NLP_state;

begin
  process (clk_in, resetn)
  begin
    if resetn = '0' then
      edge_detected   <= '0';
      NLP_count       <= to_unsigned(0, NLP_count'length);
      manchester_prev <= '0';

    elsif rising_edge(clk_in) then
      current_state <= next_state;
      manchester_prev <= manchester_in;
      if manchester_in /= manchester_prev or edge_detected <= '1' then
        NLP_count <= NLP_count + 1;
        if manchester_in /= manchester_prev then
        end if;
      end if;
    end if;
  end process;

  NLP_fsm : process (current_state, bit_valid, RX_timeout)
  begin

    --! Default Assignment
    next_state <= current_state;

    case current_state is
      when IDLE =>
        if bit_valid = '1' then
          next_state <= RX;
        elsif pulse_detected = '1' then
          next_state <= NLP;
        end if;
      when NLP =>
        if bit_valid = '1' then
          next_state <= RX;
        elsif pulse_detected = '0' then
          next_state = IDLE;
        end if;
      when RX =>
        if RX_timeout = '1' then
          next_state = NLP;
        end if;

    end case;
  end process;

end Behavioral;