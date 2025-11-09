library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity RX_decodesipo_TB is
end entity;

architecture behavioral of RX_decodesipo_TB is

signal clk_in : std_logic := '0';
signal resetn : std_logic := '1';
signal manchester_in : std_logic := '0';
signal byte_out : std_logic_vector(7 downto 0) := (others => '0');
signal byte_valid : std_logic := '0';
signal RX_timeout : std_logic := '0';


begin

uut: entity work.rx_decodesipo
port map (
    clk_in => clk_in,
    resetn => resetn,
    manchester_in => manchester_in,
    byte_out => byte_out,
    byte_valid => byte_valid,
    RX_timeout => RX_timeout
   
);

-- Signals assumed declared: *clk : std_logic := '0'; manchester_out : std_logic;

-- 100 MHz clock generation
clk_gen : process
begin
    clk_in <= '0';
    wait for 5 ns; -- half period
    clk_in <= '1';
    wait for 5 ns;
end process;

-- Manchester-coded preamble generation at 10 Mbit/s
-- Assuming preamble is 0x55 repeated (10101010 pattern)
manchester_gen : process
    constant BIT_RATE : time := 100 ns; -- 10 Mbit/s
    constant PREAMBLE_LEN : integer := 7; -- number of bytes in preamble
    variable byte_count : integer := 0;
    variable byte_count_after : integer := 0;
    variable bit_idx : integer := 7;
    variable bit_idx_after : integer := 7;
    variable current_byte : std_logic_vector(7 downto 0) := x"55";
    variable after_byte : std_logic_vector(7 downto 0) := x"33";
begin
    wait for 5 us;
    for byte_count in 0 to PREAMBLE_LEN-1 loop
        current_byte := x"55"; -- preamble byte
        for bit_idx in 7 downto 0 loop
            -- Manchester encoding: 0 -> 01, 1 -> 10
            if current_byte(bit_idx) = '0' then
                manchester_in <= '0';
                wait for BIT_RATE/2;
                manchester_in <= '1';
                wait for BIT_RATE/2;
            else
                manchester_in <= '1';
                wait for BIT_RATE/2;
                manchester_in <= '0';
                wait for BIT_RATE/2;
            end if;
        end loop;
    end loop;
    for byte_count_after in 0 to PREAMBLE_LEN-1 loop
        after_byte := x"33"; 
        for bit_idx_after in 7 downto 0 loop
            -- Manchester encoding: 0 -> 01, 1 -> 10
            if after_byte(bit_idx_after) = '0' then
                manchester_in <= '0';
                wait for BIT_RATE/2;
                manchester_in <= '1';
                wait for BIT_RATE/2;
            else
                manchester_in <= '1';
                wait for BIT_RATE/2;
                manchester_in <= '0';
                wait for BIT_RATE/2;
            end if;
        end loop;
    end loop;
    wait for 5 us;
    for byte_count in 0 to PREAMBLE_LEN-1 loop
        current_byte := x"55"; -- preamble byte
        for bit_idx in 7 downto 0 loop
            -- Manchester encoding: 0 -> 01, 1 -> 10
            if current_byte(bit_idx) = '0' then
                manchester_in <= '0';
                wait for BIT_RATE/2;
                manchester_in <= '1';
                wait for BIT_RATE/2;
            else
                manchester_in <= '1';
                wait for BIT_RATE/2;
                manchester_in <= '0';
                wait for BIT_RATE/2;
            end if;
        end loop;
    end loop;
    for byte_count_after in 0 to PREAMBLE_LEN-1 loop
        after_byte := x"33"; 
        for bit_idx_after in 7 downto 0 loop
            -- Manchester encoding: 0 -> 01, 1 -> 10
            if after_byte(bit_idx_after) = '0' then
                manchester_in <= '0';
                wait for BIT_RATE/2;
                manchester_in <= '1';
                wait for BIT_RATE/2;
            else
                manchester_in <= '1';
                wait for BIT_RATE/2;
                manchester_in <= '0';
                wait for BIT_RATE/2;
            end if;
        end loop;
    end loop;
    wait for 5 us;
    for byte_count in 0 to PREAMBLE_LEN-1 loop
        current_byte := x"55"; -- preamble byte
        for bit_idx in 7 downto 0 loop
            -- Manchester encoding: 0 -> 01, 1 -> 10
            if current_byte(bit_idx) = '0' then
                manchester_in <= '0';
                wait for BIT_RATE/2;
                manchester_in <= '1';
                wait for BIT_RATE/2;
            else
                manchester_in <= '1';
                wait for BIT_RATE/2;
                manchester_in <= '0';
                wait for BIT_RATE/2;
            end if;
        end loop;
    end loop;
    for byte_count_after in 0 to PREAMBLE_LEN-1 loop
        after_byte := x"33"; 
        for bit_idx_after in 7 downto 0 loop
            -- Manchester encoding: 0 -> 01, 1 -> 10
            if after_byte(bit_idx_after) = '0' then
                manchester_in <= '0';
                wait for BIT_RATE/2;
                manchester_in <= '1';
                wait for BIT_RATE/2;
            else
                manchester_in <= '1';
                wait for BIT_RATE/2;
                manchester_in <= '0';
                wait for BIT_RATE/2;
            end if;
        end loop;
    end loop;
    wait for 5 us;
    assert false report "Simulation finished" severity failure;
end process;
END;
