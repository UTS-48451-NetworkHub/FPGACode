library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ethernet_switch is
  port (
    ---- Inputs (Other)
    MAIN_CLK : in std_logic; -- Pin 23
    RESET    : in std_logic; -- Pin 25
    KEY1     : in std_logic; -- Pin 88
    KEY2     : in std_logic; -- Pin 89
    KEY3     : in std_logic; -- Pin 90
    KEY4     : in std_logic; -- Pin 91
    ---- Outputs (Other)
    LED1 : out std_logic; -- Pin 84
    ---- UART
    UART_RX : in std_logic; -- Pin 115
    UART_TX : out std_logic; -- Pin 114
    ---- Ethernet 0
    ETH0_RX_N    : in std_logic; -- Pin 80
    ETH0_RX_P    : in std_logic; -- Pin 77
    ETH0_TX_N    : out std_logic; -- Pin 76
    ETH0_TX_P    : out std_logic; -- Pin 75
    ETH0_LED_GRN : out std_logic; -- Pin 74
    ETH0_LED_YEL : out std_logic; -- Pin 83
    --- Ethernet 1
    ETH1_RX_N    : in std_logic; -- Pin 72
    ETH1_RX_P    : in std_logic; -- Pin 71
    ETH1_TX_N    : out std_logic; -- Pin 70
    ETH1_TX_P    : out std_logic; -- Pin 69
    ETH1_LED_GRN : out std_logic; -- Pin 68
    ETH1_LED_YEL : out std_logic; -- Pin 73
    --- Ethernet 2
    ETH2_RX_N    : in std_logic; -- Pin 66
    ETH2_RX_P    : in std_logic; -- Pin 65
    ETH2_TX_N    : out std_logic; -- Pin 64
    ETH2_TX_P    : out std_logic; -- Pin 60
    ETH2_LED_GRN : out std_logic; -- Pin 59
    ETH2_LED_YEL : out std_logic; -- Pin 67
    --- Ethernet 3
    ETH3_RX_N    : in std_logic; -- Pin 55
    ETH3_RX_P    : in std_logic; -- Pin 54
    ETH3_TX_N    : out std_logic; -- Pin 53
    ETH3_TX_P    : out std_logic; -- Pin 52
    ETH3_LED_GRN : out std_logic; -- Pin 51
    ETH3_LED_YEL : out std_logic; -- Pin 58
    --- Ethernet 4
    ETH4_RX_N    : in std_logic; -- Pin 49
    ETH4_RX_P    : in std_logic; -- Pin 46
    ETH4_TX_N    : out std_logic; -- Pin 44
    ETH4_TX_P    : out std_logic; -- Pin 43
    ETH4_LED_GRN : out std_logic; -- Pin 42
    ETH4_LED_YEL : out std_logic -- Pin 50
  );
end entity ethernet_switch;

architecture arch of ethernet_switch is

  -- Primary Clock(s)
  signal r_clk_lock : std_logic := '0';
  signal clk_ng     : std_logic := '0';
  signal clk_100    : std_logic := '0';

  -- Ethernet Port 0 Signals
  signal r_eth0_upstream_data : std_logic_vector(7 downto 0) := (others => '0');
  signal r_eth0_upstream_data_valid : std_logic := '0';
  signal r_eth0_downstream_data : std_logic_vector(7 downto 0) := (others => '0');
  signal r_eth0_downstream_data_valid : std_logic := '0';

begin

  -- Clock Generation
  c_pll : entity work.pll_main(SYN)
    port map
    (
      areset => RESET,
      inclk0 => MAIN_CLK,
      c0     => clk_ng,
      locked => r_clk_lock
    );

  c_alt_clk_ctrl : entity work.altclkctrl(rtl)
    port map
      (
        inclk => clk_ng,
        outclk => clk_100
      );

  -- Ethernet Ports
  c_eth0 : entity work.eth_port(arch)
      port map
      (
        clk => clk_100,
        -- Upstream Data Port
        i_data => r_eth0_downstream_data,
        i_data_valid => r_eth0_downstream_data_valid,
        o_data => r_eth0_upstream_data,
        o_data_valid => r_eth0_upstream_data_valid,
        -- Downstream Data Port
        rx_p => ETH0_RX_P,
        rx_n => ETH0_RX_N,
        tx_p => ETH0_TX_P,
        tx_n => ETH0_TX_N
      );

end architecture arch;
