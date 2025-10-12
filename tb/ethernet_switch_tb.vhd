library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ethernet_switch_tb is
end entity ethernet_switch_tb;

architecture sim of ethernet_switch_tb is

    -- Signals to connect to DUT
    signal MAIN_CLK               : std_logic := '0';
    signal RESET                  : std_logic := '1';
    signal KEY1, KEY2, KEY3, KEY4 : std_logic := '1';
    signal LED1, LED2, LED3, LED4 : std_logic;
    signal UART_RX                : std_logic := '1';
    signal UART_TX                : std_logic;

    signal ETH_RX      : std_logic_vector(4 downto 0) := (others => '1');
    signal ETH_TX      : std_logic_vector(4 downto 0);
    signal ETH_TX_EN   : std_logic_vector(4 downto 0);
    signal ETH_LED_GRN : std_logic_vector(4 downto 0);
    signal ETH_LED_YEL : std_logic_vector(4 downto 0);

    -- Clock period (adjust as needed)
    constant CLK_PERIOD : time := 20 ns; -- 50 MHz clock

begin

    -------------------------------------------------------------------
    -- Instantiate the DUT
    -------------------------------------------------------------------
    DUT : entity work.ethernet_switch
        port map(
            MAIN_CLK     => MAIN_CLK,
            RESET        => RESET,
            KEY1         => KEY1,
            KEY2         => KEY2,
            KEY3         => KEY3,
            KEY4         => KEY4,
            LED1         => LED1,
            LED2         => LED2,
            LED3         => LED3,
            LED4         => LED4,
            UART_RX      => UART_RX,
            UART_TX      => UART_TX,
            ETH0_RX      => ETH_RX(0),
            ETH0_TX      => ETH_TX(0),
            ETH0_TX_EN   => ETH_TX_EN(0),
            ETH0_LED_GRN => ETH_LED_GRN(0),
            ETH0_LED_YEL => ETH_LED_YEL(0),
            ETH1_RX      => ETH_RX(1),
            ETH1_TX      => ETH_TX(1),
            ETH1_TX_EN   => ETH_TX_EN(1),
            ETH1_LED_GRN => ETH_LED_GRN(1),
            ETH1_LED_YEL => ETH_LED_YEL(1),
            ETH2_RX      => ETH_RX(2),
            ETH2_TX      => ETH_TX(2),
            ETH2_TX_EN   => ETH_TX_EN(2),
            ETH2_LED_GRN => ETH_LED_GRN(2),
            ETH2_LED_YEL => ETH_LED_YEL(2),
            ETH3_RX      => ETH_RX(3),
            ETH3_TX      => ETH_TX(3),
            ETH3_TX_EN   => ETH_TX_EN(3),
            ETH3_LED_GRN => ETH_LED_GRN(3),
            ETH3_LED_YEL => ETH_LED_YEL(3),
            ETH4_RX      => ETH_RX(4),
            ETH4_TX      => ETH_TX(4),
            ETH4_TX_EN   => ETH_TX_EN(4),
            ETH4_LED_GRN => ETH_LED_GRN(4),
            ETH4_LED_YEL => ETH_LED_YEL(4)
        );

    -------------------------------------------------------------------
    -- Clock generation process
    -------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            MAIN_CLK <= '0';
            wait for CLK_PERIOD / 2;
            MAIN_CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -------------------------------------------------------------------
    -- Stimulus process
    -------------------------------------------------------------------
    stim_proc : process
    begin
        RESET <= '0';
        KEY4 <= '0';
        wait for 200 ns;

        RESET <= '1';
        wait for 200 ns;

        KEY4 <= '1';
        wait for 10 us;
        KEY4 <= '0';
        wait for 10 us;
        KEY4 <= '1';

        -- Let the system run for a while
        wait for 100 us;

        -- End simulation
        assert false report "Simulation Finished" severity failure;
        wait;
    end process;

end architecture sim;
