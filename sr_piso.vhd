-- piso.vhd : Parallel-In Serial-Out shift register (8-bit by default)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sr_piso is
  generic (
    WIDTH      : positive := 8;      -- bits per word
    MSB_FIRST  : boolean  := true    -- true: send MSB first; false: send LSB first
  );
  port (
    clk         : in  std_logic;     -- system clock
    resetn       : in  std_logic;     -- active-low synchronous reset

    -- Byte/word input side (handshake)
    byte_in     : in  std_logic_vector(WIDTH-1 downto 0);
    byte_valid  : in  std_logic;     -- pulse high when byte_in is valid
    byte_ready  : out std_logic;     -- high when this PISO can accept a new byte
    
    -- Serial output side
    bit_out     : out std_logic;     -- serial bit to Manchester encoder
    bit_valid   : out std_logic      -- 1-clk strobe: bit_out is valid this cycle
  );
end entity sr_piso;

architecture rtl of sr_piso is
  signal reg_q   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
  signal cnt_q   : unsigned(2 downto 0) := (others => '0');  -- 3 bits for WIDTH=8
  signal active  : std_logic := '0';   -- '1' while we are shifting out a word
begin
  -- Ready when not active
  byte_ready <= not active;

  process(clk)
    variable next_bit : std_logic;
  begin
    if rising_edge(clk) then
      -- defaults each cycle
      bit_valid <= '0';

      if resetn = '0' then
        reg_q   <= (others => '0');
        cnt_q   <= (others => '0');
        active  <= '0';
        bit_out <= '0';

      elsif active = '0' then
        -- Idle: accept a new word when producer asserts valid
        if byte_valid = '1' then
          reg_q  <= byte_in;
          cnt_q  <= to_unsigned(WIDTH-1, cnt_q'length);
          active <= '1';
          -- We start emitting bits next cycle (simpler timing).
        end if;

      else
        -- Active: emit one bit this cycle and shift
        if MSB_FIRST then
          next_bit := reg_q(WIDTH-1);
          reg_q    <= reg_q(WIDTH-2 downto 0) & '0';
        else
          next_bit := reg_q(0);
          reg_q    <= '0' & reg_q(WIDTH-1 downto 1);
        end if;

        bit_out   <= next_bit;
        bit_valid <= '1';

        -- Finish after WIDTH bits
        if cnt_q = 0 then
          active <= '0';
        else
          cnt_q <= cnt_q - 1;
        end if;
      end if;
    end if;
  end process;
end architecture rtl;
