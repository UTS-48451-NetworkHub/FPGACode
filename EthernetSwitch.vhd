library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EthernetSwitch is
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
end entity EthernetSwitch;

architecture arch of EthernetSwitch is

  -- Primary Clock(s)
  signal r_clk_lock : std_logic := '0';
  signal r_clk_100  : std_logic := '0';

begin

  c_PLL : entity work.PLL20(SYN)
    port map
    (
      areset => RESET,
      inclk0 => MAIN_CLK,
      c0     => r_clk_100,
      locked => r_clk_lock
    );

end architecture arch;