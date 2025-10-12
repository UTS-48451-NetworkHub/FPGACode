library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity ringbuffer_interconnect_tb is
end ringbuffer_interconnect_tb;

architecture sim of ringbuffer_interconnect_tb is

  -- DUT signals
  signal clk    : std_logic := '0';
  signal resetn : std_logic := '0';

  -- Enable signals for drivers
  signal PA_enable : std_logic := '0';

  -- Port A
  signal PA_RX_tdata  : std_logic_vector(7 downto 0);
  signal PA_RX_tvalid : std_logic;
  signal PA_RX_tlast  : std_logic;
  signal PA_RX_tready : std_logic;

  signal PA_TX_tdata  : std_logic_vector(7 downto 0);
  signal PA_TX_tvalid : std_logic;
  signal PA_TX_tlast  : std_logic;

  -- Port B
  signal PB_RX_tdata  : std_logic_vector(7 downto 0);
  signal PB_RX_tvalid : std_logic;
  signal PB_RX_tlast  : std_logic;
  signal PB_RX_tready : std_logic;

  signal PB_TX_tdata  : std_logic_vector(7 downto 0);
  signal PB_TX_tvalid : std_logic;
  signal PB_TX_tlast  : std_logic;

  -- Port C
  signal PC_RX_tdata  : std_logic_vector(7 downto 0);
  signal PC_RX_tvalid : std_logic;
  signal PC_RX_tlast  : std_logic;
  signal PC_RX_tready : std_logic;

  signal PC_TX_tdata  : std_logic_vector(7 downto 0);
  signal PC_TX_tvalid : std_logic;
  signal PC_TX_tlast  : std_logic;

  -- Port D
  signal PD_RX_tdata  : std_logic_vector(7 downto 0);
  signal PD_RX_tvalid : std_logic;
  signal PD_RX_tlast  : std_logic;
  signal PD_RX_tready : std_logic;

  signal PD_TX_tdata  : std_logic_vector(7 downto 0);
  signal PD_TX_tvalid : std_logic;
  signal PD_TX_tlast  : std_logic;

  -- Port E
  signal PE_RX_tdata  : std_logic_vector(7 downto 0);
  signal PE_RX_tvalid : std_logic;
  signal PE_RX_tlast  : std_logic;
  signal PE_RX_tready : std_logic;

  signal PE_TX_tdata  : std_logic_vector(7 downto 0);
  signal PE_TX_tvalid : std_logic;
  signal PE_TX_tlast  : std_logic;

  -- Test control
  signal test_done : boolean := false;
  signal ringbuffer_ready : std_logic := '0';

begin

  --------------------------------------------------------------------
  -- DUT: AXI4-Stream Interconnect
  --------------------------------------------------------------------
  uut : entity work.axi4s_interconnect
    port map (
      clk    => clk,
      resetn => resetn,

      -- Port A
      PA_RX_tdata  => PA_RX_tdata,
      PA_RX_tvalid => PA_RX_tvalid,
      PA_RX_tlast  => PA_RX_tlast,
      PA_RX_tready => PA_RX_tready,
      PA_TX_tdata  => PA_TX_tdata,
      PA_TX_tvalid => PA_TX_tvalid,
      PA_TX_tlast  => PA_TX_tlast,

      -- Port B
      PB_RX_tdata  => PB_RX_tdata,
      PB_RX_tvalid => PB_RX_tvalid,
      PB_RX_tlast  => PB_RX_tlast,
      PB_RX_tready => PB_RX_tready,
      PB_TX_tdata  => PB_TX_tdata,
      PB_TX_tvalid => PB_TX_tvalid,
      PB_TX_tlast  => PB_TX_tlast,

      -- Port C
      PC_RX_tdata  => PC_RX_tdata,
      PC_RX_tvalid => PC_RX_tvalid,
      PC_RX_tlast  => PC_RX_tlast,
      PC_RX_tready => PC_RX_tready,
      PC_TX_tdata  => PC_TX_tdata,
      PC_TX_tvalid => PC_TX_tvalid,
      PC_TX_tlast  => PC_TX_tlast,

      -- Port D
      PD_RX_tdata  => PD_RX_tdata,
      PD_RX_tvalid => PD_RX_tvalid,
      PD_RX_tlast  => PD_RX_tlast,
      PD_RX_tready => PD_RX_tready,
      PD_TX_tdata  => PD_TX_tdata,
      PD_TX_tvalid => PD_TX_tvalid,
      PD_TX_tlast  => PD_TX_tlast,

      -- Port E
      PE_RX_tdata  => PE_RX_tdata,
      PE_RX_tvalid => PE_RX_tvalid,
      PE_RX_tlast  => PE_RX_tlast,
      PE_RX_tready => PE_RX_tready,
      PE_TX_tdata  => PE_TX_tdata,
      PE_TX_tvalid => PE_TX_tvalid,
      PE_TX_tlast  => PE_TX_tlast
    );

  c_out : entity work.ringbuffer
    generic map(
      DATA_WIDTH  => 8,
      DEPTH_BYTES => 1024
    )
    port map(
      clk           => clk,
      rst_n         => resetn,
      s_axis_tdata  => PA_TX_tdata,
      s_axis_tvalid => PA_TX_tvalid,
      s_axis_tlast  => PA_TX_tlast,
      s_axis_tready => ringbuffer_ready,
      m_axis_tdata  => PD_RX_tdata,
      m_axis_tvalid => PD_RX_tvalid,
      m_axis_tlast  => PD_RX_tlast,
      m_axis_tready => PD_RX_tready
    );
  
  --------------------------------------------------------------------
  -- Traffic Drivers - One per port
  --------------------------------------------------------------------
  driver_A : entity work.eth_tx_tb_driver
    port map (
      clk    => clk,
      resetn => resetn,
      enable => PA_enable,
      tvalid => PB_RX_tvalid,
      tready => PB_RX_tready,
      tlast  => PB_RX_tlast,
      tdata  => PB_RX_tdata
    );

  --------------------------------------------------------------------
  -- Clock generation (100 MHz)
  --------------------------------------------------------------------
  clk <= not clk after 5 ns when not test_done else '0';

  --------------------------------------------------------------------
  -- Stimulus process
  --------------------------------------------------------------------
  stimulus : process
  begin
    -- Reset
    resetn <= '0';
    PA_enable <= '0';
    
    wait for 100 ns;
    resetn <= '1';
    wait for 50 ns;

    -- Port A sends
    report "Enabling Port A";
    PA_enable <= '1';
    wait for 800 ns;
    PA_enable <= '0';
    wait for 10 us;
    
    test_done <= true;

    assert false report "Simulation Finished" severity failure;
  end process;

end sim;
