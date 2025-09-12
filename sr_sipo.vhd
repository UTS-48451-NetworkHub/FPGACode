library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

--! Serial-In, Parallel-Out Shift Register with configurable delay for bit output.
--! Byte valid to first bit latency is 2 CLKs. Bit to Bit latency is BIT_DELAY CLKs.
entity sr_sipo is
  generic (
    WIDTH     : positive := 8; --! Width of input byte
    MSB_FIRST : boolean  := true; --! Whether to output the most significiant or least significiant bit first
    BIT_DELAY : integer := 1 --! Number of clocks between each bit output
  );
  port (
    clk        : in std_logic; --! Input clock
    resetn      : in std_logic; --! 
    bit_in     : in std_logic;
    bit_valid  : in std_logic;
    realign    : in std_logic;
    byte_out   : out std_logic_vector(WIDTH - 1 downto 0);
    byte_valid : out std_logic
  );
end entity sr_sipo;

architecture rtl of sr_sipo is
  signal reg_q : std_logic_vector(WIDTH - 1 downto 0)                    := (others => '0');
  signal cnt_q : unsigned(natural(ceil(log2(real(WIDTH)))) - 1 downto 0) := (others => '0');

  function is_full(c : unsigned) return boolean is
  begin
    return (to_integer(c) = WIDTH - 1);
  end function;
begin
  byte_out <= reg_q;

  process (clk)
  begin
    if rising_edge(clk) then

      byte_valid <= '0';

      if resetn = '0' then
        reg_q <= (others => '0');
        cnt_q <= (others => '0');

      elsif realign = '1' then
        cnt_q <= (others => '0');

      elsif bit_valid = '1' then
        if MSB_FIRST then
          reg_q <= reg_q(WIDTH - 2 downto 0) & bit_in;
        else
          reg_q <= bit_in & reg_q(WIDTH - 1 downto 1);
        end if;

        if is_full(cnt_q) then
          cnt_q      <= (others => '0');
          byte_valid <= '1';
        else
          cnt_q <= cnt_q + 1;
        end if;
      end if;
    end if;
  end process;
end architecture rtl;
