library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity sr_sipo is
  port(
    clk_in     : in  std_logic;                    --! 100MHz clock
    resetn     : in  std_logic;                    --! active low reset signal
    bit_in     : in  std_logic;                    --! Decoded bitstream
    bit_valid  : in  std_logic;                    --! Bit is valid and can be taken
    RX_timeout : in  std_logic;                    --! Packet receiving end
    byte_out   : out std_logic_vector(7 downto 0); --! Byte output
    byte_valid : out std_logic                     --! Byte is valid and can be taken by PR
  );
end sr_sipo;

architecture Behavioral of sr_sipo is

  type SIPO_STATE is (
    SIPO_DATA,   --! Data being put into register
    SIPO_END,    --! Register full ready to output
    SIPO_TIMEOUT --! Packet end
  );

  signal current_state, next_state : SIPO_STATE;

  signal byte_buf : std_logic_vector(7 downto 0) := (others => '0'); --! buffer for output byte
  signal cnt      : unsigned(3 downto 0)         := (others => '0'); --! counter for number of valid bits in byte

begin
  sipo : process(clk_in, resetn)
  begin
    if resetn = '0' then
      byte_buf      <= (others => '0');
      cnt           <= to_unsigned(0, cnt'length);
      current_state <= SIPO_DATA;

    elsif rising_edge(clk_in) then

      --! Change states
      current_state <= next_state;

      --! bit is valid -> grab bit and shift buffer
      if bit_valid = '1' then
        byte_buf <= bit_in & byte_buf(7 downto 1);
        cnt      <= cnt + 1;
      end if;

      --! reset coutner and buffer
      if next_state = SIPO_END or next_state = SIPO_TIMEOUT then
        byte_buf <= (others => '0');
        cnt      <= to_unsigned(0, cnt'length);
      end if;
    end if;
  end process;
  SIPO_FSM : process(current_state, RX_timeout, cnt)
  begin
    -- ! Default Assignment
    next_state <= current_state;

    case current_state is

      when SIPO_DATA =>
        if cnt = to_unsigned(8, cnt'length) then
          next_state <= SIPO_END;
        elsif RX_timeout = '1' then
          next_state <= SIPO_TIMEOUT;
        end if;

      when SIPO_END =>
        next_state <= SIPO_DATA;

      when SIPO_TIMEOUT =>
        next_state <= SIPO_DATA;

    end case;
  end process;

  byte_out <= byte_buf;

  --! direct state outputs
  with next_state select byte_valid <=
    '1' when SIPO_END,
    '0' when others;

end Behavioral;
