library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity NLP_receiver is
    port(
        resetn : in std_logic;
        clk_in : in std_logic;
        NLP_in : in std_logic;
        NLP_active : out std_logic := '0'
    );
end NLP_receiver;

architecture Behavioral of NLP_receiver is
    signal pulse_detected : std_logic := '0';
    signal seq_pulse : std_logic_vector(1 downto 0) := (others => '0');
    constant pulse_length : integer := 10; --100ns -> 10 clk cycles
    constant gap_length : integer := 1600000; --16ms -> 1600000 clk cycles

begin
    process(clk_in, resetn)
        variable NLP_count : unsigned(20 downto 0) := (others => '0');
    begin
        if resetn = '0' then
            pulse_detected <= '0';
            seq_pulse <= (others => '0');
            NLP_count := to_unsigned(0, NLP_count'length);
        elsif rising_edge(clk_in) then
            --! initial pulse logic
            if pulse_detected = '0' then 
                if NLP_in = '1' then
                    NLP_count := NLP_count + 1;      
                else
                    seq_pulse <= (others => '0');
                    NLP_count := (others => '0');
                end if;
                if NLP_count = to_unsigned(pulse_length, NLP_count'length) then
                    pulse_detected <= '1';
                    NLP_count := (others => '0');
                    seq_pulse <= seq_pulse(0) & '1';
                end if;
            --! following gap logic
            else 
                if NLP_in /= '0' then
                    pulse_detected <= '0';
                    seq_pulse <= (others => '0');
                    NLP_count := (others => '0');
                else
                    NLP_count := NLP_count + 1;
                    if NLP_count = to_unsigned(gap_length - pulse_length, NLP_count'length) then
                        NLP_count := (others => '0');
                        pulse_detected <= '0';
                    end if;
                end if;
            end if;
            if seq_pulse = "11" then --! Two sequential pulses to detect NLP active
                NLP_active <= '1';
            else
                NLP_active <= '0';
            end if;
        end if;
    end process;
end Behavioral;

    