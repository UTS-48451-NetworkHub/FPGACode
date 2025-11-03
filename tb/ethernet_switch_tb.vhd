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

    signal ETH_RX_RAW  : std_logic_vector(4 downto 0) := (others => '1');
    signal ETH_RX      : std_logic_vector(4 downto 0) := (others => '1');
    signal ETH_TX      : std_logic_vector(4 downto 0);
    signal ETH_TX_EN   : std_logic_vector(4 downto 0);
    signal ETH_LED_GRN : std_logic_vector(4 downto 0);
    signal ETH_LED_YEL : std_logic_vector(4 downto 0);

    -- Clock periods
    constant CLK_PERIOD_50MHZ  : time := 20 ns; -- 50 MHz
    constant CLK_PERIOD_100MHZ : time := 10 ns; -- 100 MHz

    signal clk    : std_logic := '0';   -- 100 MHz clock
    signal resetn : std_logic := '0';
    signal enable : std_logic := '0';

    signal test_tvalid : std_logic                    := '0';
    signal test_tready : std_logic                    := '0';
    signal test_tlast  : std_logic                    := '0';
    signal test_tdata  : std_logic_vector(7 downto 0) := (others => '0');
    signal test_tx_en  : std_logic                    := '0';

begin

    ETH_RX <= not ETH_RX_RAW;

    -------------------------------------------------------------------
    -- Test Units
    -------------------------------------------------------------------
    driver_inst : entity work.eth_tx_tb_driver
        port map(
            clk    => clk,
            resetn => resetn,
            enable => enable,
            tvalid => test_tvalid,
            tready => test_tready,
            tlast  => test_tlast,
            tdata  => test_tdata
        );

    eth_tx_inst : entity work.eth_tx
        port map(
            clk    => clk,
            resetn => resetn,
            tx     => ETH_RX_RAW(0),
            tx_en  => test_tx_en,
            tvalid => test_tvalid,
            tready => test_tready,
            tlast  => test_tlast,
            tdata  => test_tdata
        );

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
    -- 50 MHz Main Clock generation
    -------------------------------------------------------------------
    main_clk_process : process
    begin
        while true loop
            MAIN_CLK <= '0';
            wait for CLK_PERIOD_50MHZ / 2;
            MAIN_CLK <= '1';
            wait for CLK_PERIOD_50MHZ / 2;
        end loop;
    end process;

    -------------------------------------------------------------------
    -- 100 MHz Clock generation
    -------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD_100MHZ / 2;
            clk <= '1';
            wait for CLK_PERIOD_100MHZ / 2;
        end loop;
    end process;

    -------------------------------------------------------------------
    -- Stimulus process
    -------------------------------------------------------------------
    stim_proc : process
    begin
        RESET  <= '0';
        resetn <= '0';
        KEY4   <= '0';
        wait for 200 ns;

        RESET  <= '1';
        resetn <= '1';
        wait for 10 us;

        for i in 0 to 5 loop            -- 10,000 times
            enable <= '1';
            wait for 75 us;
            enable <= '0';
            wait for 10 us;
        end loop;

        -- Let the system run for a while
        wait for 100 us;

        -- End simulation
        assert false report "Simulation Finished" severity failure;
        wait;
    end process;

end architecture sim;
