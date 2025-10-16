library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ethernet_switch is
  port(
    ---- Inputs (Other)
    MAIN_CLK     : in  std_logic;       -- Pin 23
    RESET        : in  std_logic;       -- Pin 25
    KEY1         : in  std_logic;       -- Pin 88
    KEY2         : in  std_logic;       -- Pin 89
    KEY3         : in  std_logic;       -- Pin 90
    KEY4         : in  std_logic;       -- Pin 91
    ---- Outputs (Other)
    LED1         : out std_logic;       -- Pin 84
    LED2         : out std_logic;       -- Pin 85
    LED3         : out std_logic;       -- Pin 86
    LED4         : out std_logic;       -- Pin 87
    ---- UART
    UART_RX      : in  std_logic;       -- Pin 115
    UART_TX      : out std_logic;       -- Pin 114
    ---- Ethernet 0
    ETH0_RX      : in  std_logic;       -- Pin 
    ETH0_TX      : out std_logic;       -- Pin 
    ETH0_TX_EN   : out std_logic;       -- Pin
    ETH0_LED_GRN : out std_logic;       -- Pin
    ETH0_LED_YEL : out std_logic;       -- Pin
    --- Ethernet 1
    ETH1_RX      : in  std_logic;       -- Pin 
    ETH1_TX      : out std_logic;       -- Pin 
    ETH1_TX_EN   : out std_logic;       -- Pin
    ETH1_LED_GRN : out std_logic;       -- Pin
    ETH1_LED_YEL : out std_logic;       -- Pin
    --- Ethernet 2
    ETH2_RX      : in  std_logic;       -- Pin 
    ETH2_TX      : out std_logic;       -- Pin 
    ETH2_TX_EN   : out std_logic;       -- Pin
    ETH2_LED_GRN : out std_logic;       -- Pin
    ETH2_LED_YEL : out std_logic;       -- Pin
    --- Ethernet 3
    ETH3_RX      : in  std_logic;       -- Pin 
    ETH3_TX      : out std_logic;       -- Pin 
    ETH3_TX_EN   : out std_logic;       -- Pin
    ETH3_LED_GRN : out std_logic;       -- Pin
    ETH3_LED_YEL : out std_logic;       -- Pin
    --- Ethernet 4
    ETH4_RX      : in  std_logic;       -- Pin 
    ETH4_TX      : out std_logic;       -- Pin 
    ETH4_TX_EN   : out std_logic;       -- Pin
    ETH4_LED_GRN : out std_logic;       -- Pin
    ETH4_LED_YEL : out std_logic        -- Pin
  );
end entity ethernet_switch;

architecture arch of ethernet_switch is

  -- Primary Clock(s)
  signal r_clk_lock : std_logic := '0';
  signal clk_100_ng : std_logic := '0';
  signal clk_100    : std_logic := '0';

  -- Reset
  signal resetn : std_logic := '0';

  -- Packet Send Enable
  signal r_enable : std_logic := '0';

  -- Temporary Tx EN signals
  signal r_eth0_tx_en : std_logic := '0';
  signal r_eth1_tx_en : std_logic := '0';
  signal r_eth2_tx_en : std_logic := '0';
  signal r_eth3_tx_en : std_logic := '0';
  signal r_eth4_tx_en : std_logic := '0';

  ---- Ethernet Port 0 ----
  -- TX AXI-S
  signal r_eth0_tx_valid : std_logic                    := '0';
  signal r_eth0_tx_ready : std_logic                    := '0';
  signal r_eth0_tx_last  : std_logic                    := '0';
  signal r_eth0_tx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- RX AXI-S
  signal r_eth0_rx_valid : std_logic                    := '0';
  signal r_eth0_rx_ready : std_logic                    := '0';
  signal r_eth0_rx_last  : std_logic                    := '0';
  signal r_eth0_rx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- Ring Buffer AXI-S
  signal r_eth0_rb_valid : std_logic                    := '0';
  signal r_eth0_rb_last  : std_logic                    := '0';
  signal r_eth0_rb_data  : std_logic_vector(7 downto 0) := (others => '0');

  ---- Ethernet Port 1 ----
  -- TX AXI-S
  signal r_eth1_tx_valid : std_logic                    := '0';
  signal r_eth1_tx_ready : std_logic                    := '0';
  signal r_eth1_tx_last  : std_logic                    := '0';
  signal r_eth1_tx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- RX AXI-S
  signal r_eth1_rx_valid : std_logic                    := '0';
  signal r_eth1_rx_ready : std_logic                    := '0';
  signal r_eth1_rx_last  : std_logic                    := '0';
  signal r_eth1_rx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- Ring Buffer AXI-S
  signal r_eth1_rb_valid : std_logic                    := '0';
  signal r_eth1_rb_last  : std_logic                    := '0';
  signal r_eth1_rb_data  : std_logic_vector(7 downto 0) := (others => '0');

  ---- Ethernet Port 2 ----
  -- TX AXI-S
  signal r_eth2_tx_valid : std_logic                    := '0';
  signal r_eth2_tx_ready : std_logic                    := '0';
  signal r_eth2_tx_last  : std_logic                    := '0';
  signal r_eth2_tx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- RX AXI-S
  signal r_eth2_rx_valid : std_logic                    := '0';
  signal r_eth2_rx_ready : std_logic                    := '0';
  signal r_eth2_rx_last  : std_logic                    := '0';
  signal r_eth2_rx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- Ring Buffer AXI-S
  signal r_eth2_rb_valid : std_logic                    := '0';
  signal r_eth2_rb_last  : std_logic                    := '0';
  signal r_eth2_rb_data  : std_logic_vector(7 downto 0) := (others => '0');

  ---- Ethernet Port 3 ----
  -- TX AXI-S
  signal r_eth3_tx_valid : std_logic                    := '0';
  signal r_eth3_tx_ready : std_logic                    := '0';
  signal r_eth3_tx_last  : std_logic                    := '0';
  signal r_eth3_tx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- RX AXI-S
  signal r_eth3_rx_valid : std_logic                    := '0';
  signal r_eth3_rx_ready : std_logic                    := '0';
  signal r_eth3_rx_last  : std_logic                    := '0';
  signal r_eth3_rx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- Ring Buffer AXI-S
  signal r_eth3_rb_valid : std_logic                    := '0';
  signal r_eth3_rb_last  : std_logic                    := '0';
  signal r_eth3_rb_data  : std_logic_vector(7 downto 0) := (others => '0');

  ---- Ethernet Port 4 ----
  -- TX AXI-S
  signal r_eth4_tx_valid : std_logic                    := '0';
  signal r_eth4_tx_ready : std_logic                    := '0';
  signal r_eth4_tx_last  : std_logic                    := '0';
  signal r_eth4_tx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- RX AXI-S
  signal r_eth4_rx_valid : std_logic                    := '0';
  signal r_eth4_rx_ready : std_logic                    := '0';
  signal r_eth4_rx_last  : std_logic                    := '0';
  signal r_eth4_rx_data  : std_logic_vector(7 downto 0) := (others => '0');
  -- Ring Buffer AXI-S
  signal r_eth4_rb_valid : std_logic                    := '0';
  signal r_eth4_rb_last  : std_logic                    := '0';
  signal r_eth4_rb_data  : std_logic_vector(7 downto 0) := (others => '0');

begin

  ------------------------------------------------------------------------
  -- Clock Generation
  ------------------------------------------------------------------------
  c_pll : entity work.pll_main(SYN)
    port map(
      areset => '0',
      inclk0 => MAIN_CLK,
      c0     => clk_100_ng,
      locked => r_clk_lock
    );

  c_alt_clk_ctrl : entity work.altclkctrl(rtl)
    port map(
      inclk  => clk_100_ng,
      outclk => clk_100
    );

  ------------------------------------------------------------------------
  -- Reset Generation
  ------------------------------------------------------------------------
  c_reset_ctrl : entity work.reset_ctrl(rtl)
    port map(
      clk    => clk_100,
      btn_n  => RESET,
      resetn => resetn
    );

  c_trigger_ctrl : entity work.reset_ctrl(rtl)
    port map(
      clk    => clk_100,
      btn_n  => KEY4,
      resetn => r_enable
    );

  ------------------------------------------------------------------------
  -- Ethernet Ports
  ------------------------------------------------------------------------
  -------- Port 0 --------
  c_eth0 : entity work.eth_port(arch)
    port map(
      clk      => clk_100,
      resetn   => resetn,
      -- Upstream Data Port - TX AXI-S
      tx_valid => r_eth0_tx_valid,
      tx_ready => r_eth0_tx_ready,
      tx_last  => r_eth0_tx_last,
      tx_data  => r_eth0_tx_data,
      -- Upstream Data Port - RX AXI-S
      rx_valid => r_eth0_rx_valid,
      rx_ready => r_eth0_rx_ready,
      rx_last  => r_eth0_rx_last,
      rx_data  => r_eth0_rx_data,
      -- Downstream Data Port
      rx       => not ETH0_RX,
      tx       => ETH0_TX,
      tx_en    => r_eth0_tx_en,
      -- LEDs
      link     => ETH0_LED_GRN,
      act      => ETH0_LED_YEL
    );

  c_eth1 : entity work.eth_port(arch)
    port map(
      clk      => clk_100,
      resetn   => resetn,
      -- Upstream Data Port - TX AXI-S
      tx_valid => r_eth1_tx_valid,
      tx_ready => r_eth1_tx_ready,
      tx_last  => r_eth1_tx_last,
      tx_data  => r_eth1_tx_data,
      -- Upstream Data Port - RX AXI-S
      rx_valid => r_eth1_rx_valid,
      rx_ready => r_eth1_rx_ready,
      rx_last  => r_eth1_rx_last,
      rx_data  => r_eth1_rx_data,
      -- Downstream Data Port
      rx       => not ETH1_RX,
      tx       => ETH1_TX,
      tx_en    => r_eth1_tx_en,
      -- LEDs
      link     => ETH1_LED_GRN,
      act      => ETH1_LED_YEL
    );

  ------------------------------------------------------------------------
  -- Ethernet Ringbuffers
  ------------------------------------------------------------------------
  c_eth0_rb : entity work.ringbuffer
    generic map(
      DATA_WIDTH  => 8,
      DEPTH_BYTES => 2048
    )
    port map(
      clk           => clk_100,
      rst_n         => resetn,
      s_axis_tdata  => r_eth0_rb_data,
      s_axis_tvalid => r_eth0_rb_valid,
      s_axis_tlast  => r_eth0_rb_last,
      m_axis_tdata  => r_eth0_tx_data,
      m_axis_tvalid => r_eth0_tx_valid,
      m_axis_tlast  => r_eth0_tx_last,
      m_axis_tready => r_eth0_tx_ready
    );

  c_eth1_rb : entity work.ringbuffer
    generic map(
      DATA_WIDTH  => 8,
      DEPTH_BYTES => 2048
    )
    port map(
      clk           => clk_100,
      rst_n         => resetn,
      s_axis_tdata  => r_eth1_rb_data,
      s_axis_tvalid => r_eth1_rb_valid,
      s_axis_tlast  => r_eth1_rb_last,
      m_axis_tdata  => r_eth1_tx_data,
      m_axis_tvalid => r_eth1_tx_valid,
      m_axis_tlast  => r_eth1_tx_last,
      m_axis_tready => r_eth1_tx_ready
    );

  ------------------------------------------------------------------------
  -- Interconnect
  ------------------------------------------------------------------------
  c_interconnect : entity work.axi4s_interconnect
    port map(
      clk          => clk_100,
      resetn       => resetn,
      PA_RX_tdata  => r_eth0_rx_data,
      PA_RX_tvalid => r_eth0_rx_valid,
      PA_RX_tlast  => r_eth0_rx_last,
      PA_RX_tready => r_eth0_rx_ready,
      PA_TX_tdata  => r_eth0_rb_data,
      PA_TX_tvalid => r_eth0_rb_valid,
      PA_TX_tlast  => r_eth0_rb_last,
      PB_RX_tdata  => r_eth1_rx_data,
      PB_RX_tvalid => r_eth1_rx_valid,
      PB_RX_tlast  => r_eth1_rx_last,
      PB_RX_tready => r_eth1_rx_ready,
      PB_TX_tdata  => r_eth1_rb_data,
      PB_TX_tvalid => r_eth1_rb_valid,
      PB_TX_tlast  => r_eth1_rb_last,
      PC_RX_tdata  => r_eth2_rx_data,
      PC_RX_tvalid => r_eth2_rx_valid,
      PC_RX_tlast  => r_eth2_rx_last,
      PC_RX_tready => r_eth2_rx_ready,
      PC_TX_tdata  => r_eth2_rb_data,
      PC_TX_tvalid => r_eth2_rb_valid,
      PC_TX_tlast  => r_eth2_rb_last,
      PD_RX_tdata  => r_eth3_rx_data,
      PD_RX_tvalid => r_eth3_rx_valid,
      PD_RX_tlast  => r_eth3_rx_last,
      PD_RX_tready => r_eth3_rx_ready,
      PD_TX_tdata  => r_eth3_rb_data,
      PD_TX_tvalid => r_eth3_rb_valid,
      PD_TX_tlast  => r_eth3_rb_last,
      PE_RX_tdata  => r_eth4_rx_data,
      PE_RX_tvalid => r_eth4_rx_valid,
      PE_RX_tlast  => r_eth4_rx_last,
      PE_RX_tready => r_eth4_rx_ready,
      PE_TX_tdata  => r_eth4_rb_data,
      PE_TX_tvalid => r_eth4_rb_valid,
      PE_TX_tlast  => r_eth4_rb_last
    );

  ------------------------------------------------------------------------
  -- Debug Generator & Other
  ------------------------------------------------------------------------
  ETH0_TX_EN <= '1';
  ETH1_TX_EN <= '1';
  ETH2_TX_EN <= '1';
  ETH3_TX_EN <= '1';
  ETH4_TX_EN <= '1';

  LED1 <= not r_eth0_tx_valid;
  LED2 <= not r_eth0_tx_ready;
  LED3 <= not r_eth0_tx_last;
  LED4 <= not r_enable;

end architecture arch;
