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
    ETH0_RX      : in std_logic; -- Pin 
    ETH0_TX      : out std_logic; -- Pin 
    ETH0_TX_EN   : out std_logic; -- Pin
    ETH0_LED_GRN : out std_logic; -- Pin
    ETH0_LED_YEL : out std_logic; -- Pin
    --- Ethernet 1
    ETH1_RX      : in std_logic; -- Pin 
    ETH1_TX      : out std_logic; -- Pin 
    ETH1_TX_EN   : out std_logic; -- Pin
    ETH1_LED_GRN : out std_logic; -- Pin
    ETH1_LED_YEL : out std_logic; -- Pin
    --- Ethernet 2
    ETH2_RX      : in std_logic; -- Pin 
    ETH2_TX      : out std_logic; -- Pin 
    ETH2_TX_EN   : out std_logic; -- Pin
    ETH2_LED_GRN : out std_logic; -- Pin
    ETH2_LED_YEL : out std_logic; -- Pin
    --- Ethernet 3
    ETH3_RX      : in std_logic; -- Pin 
    ETH3_TX      : out std_logic; -- Pin 
    ETH3_TX_EN   : out std_logic; -- Pin
    ETH3_LED_GRN : out std_logic; -- Pin
    ETH3_LED_YEL : out std_logic; -- Pin
    --- Ethernet 4
    ETH4_RX      : in std_logic; -- Pin 
    ETH4_TX      : out std_logic; -- Pin 
    ETH4_TX_EN   : out std_logic; -- Pin
    ETH4_LED_GRN : out std_logic; -- Pin
    ETH4_LED_YEL : out std_logic  -- Pin
  );
end entity ethernet_switch;

architecture arch of ethernet_switch is

  -- Primary Clock(s)
  signal r_clk_lock : std_logic := '0';
  signal clk_100_ng : std_logic := '0';
  signal clk_100    : std_logic := '0';

  -- Ethernet Port 0 TX AXI-S
  signal r_eth0_tx_valid : std_logic                    := '0';
  signal r_eth0_tx_ready : std_logic                    := '0';
  signal r_eth0_tx_keep  : std_logic                    := '0';
  signal r_eth0_tx_last  : std_logic                    := '0';
  signal r_eth0_tx_data  : std_logic_vector(7 downto 0) := (others => '0');

begin

  -- Clock Generation
  c_pll : entity work.pll_main(SYN)
    port map
    (
      areset => RESET,
      inclk0 => MAIN_CLK,
      c0     => clk_100_ng,
      locked => r_clk_lock
    );

  c_alt_clk_ctrl : entity work.altclkctrl(rtl)
    port map
    (
      inclk  => clk_100_ng,
      outclk => clk_100
    );

  -- Ethernet Ports
  c_eth0 : entity work.eth_port(arch)
    port map
    (
      clk    => clk_100,
      resetn => RESET,
      -- Upstream Data Port
      tx_valid => r_eth0_tx_valid,
      tx_ready => r_eth0_tx_ready,
      tx_keep  => r_eth0_tx_keep,
      tx_last  => r_eth0_tx_last,
      tx_data  => r_eth0_tx_data,
      -- Downstream Data Port
      rx    => ETH0_RX,
      tx    => ETH0_TX,
      tx_en => ETH0_TX_EN
    );

end architecture arch;
