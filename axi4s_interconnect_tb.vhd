library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity axi4s_interconnect_tb is
end axi4s_interconnect_tb;

architecture sim of axi4s_interconnect_tb is

  -- DUT signals
  signal clk    : std_logic := '0';
  signal resetn : std_logic := '0';

  -- Enable signals for drivers
  signal PA_enable : std_logic := '0';
  signal PB_enable : std_logic := '0';
  signal PC_enable : std_logic := '0';
  signal PD_enable : std_logic := '0';
  signal PE_enable : std_logic := '0';

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

  --------------------------------------------------------------------
  -- Traffic Drivers - One per port
  --------------------------------------------------------------------
  driver_A : entity work.eth_tx_tb_driver
    port map (
      clk    => clk,
      resetn => resetn,
      enable => PA_enable,
      tvalid => PA_RX_tvalid,
      tready => PA_RX_tready,
      tlast  => PA_RX_tlast,
      tdata  => PA_RX_tdata
    );

  driver_B : entity work.eth_tx_tb_driver
    port map (
      clk    => clk,
      resetn => resetn,
      enable => PB_enable,
      tvalid => PB_RX_tvalid,
      tready => PB_RX_tready,
      tlast  => PB_RX_tlast,
      tdata  => PB_RX_tdata
    );

  driver_C : entity work.eth_tx_tb_driver
    port map (
      clk    => clk,
      resetn => resetn,
      enable => PC_enable,
      tvalid => PC_RX_tvalid,
      tready => PC_RX_tready,
      tlast  => PC_RX_tlast,
      tdata  => PC_RX_tdata
    );

  driver_D : entity work.eth_tx_tb_driver
    port map (
      clk    => clk,
      resetn => resetn,
      enable => PD_enable,
      tvalid => PD_RX_tvalid,
      tready => PD_RX_tready,
      tlast  => PD_RX_tlast,
      tdata  => PD_RX_tdata
    );

  driver_E : entity work.eth_tx_tb_driver
    port map (
      clk    => clk,
      resetn => resetn,
      enable => PE_enable,
      tvalid => PE_RX_tvalid,
      tready => PE_RX_tready,
      tlast  => PE_RX_tlast,
      tdata  => PE_RX_tdata
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
    PB_enable <= '0';
    PC_enable <= '0';
    PD_enable <= '0';
    PE_enable <= '0';
    
    wait for 100 ns;
    resetn <= '1';
    wait for 50 ns;

    report "========================================";
    report "Test 1: Sequential - Each port gets a turn";
    report "========================================";

    -- Port A sends
    report "Enabling Port A";
    PA_enable <= '1';
    wait for 800 ns;
    PA_enable <= '0';
    wait for 100 ns;

    -- Port B sends
    report "Enabling Port B";
    PB_enable <= '1';
    wait for 800 ns;
    PB_enable <= '0';
    wait for 100 ns;

    -- Port C sends
    report "Enabling Port C";
    PC_enable <= '1';
    wait for 800 ns;
    PC_enable <= '0';
    wait for 100 ns;

    -- Port D sends
    report "Enabling Port D";
    PD_enable <= '1';
    wait for 800 ns;
    PD_enable <= '0';
    wait for 100 ns;

    -- Port E sends
    report "Enabling Port E";
    PE_enable <= '1';
    wait for 800 ns;
    PE_enable <= '0';
    wait for 200 ns;

    report "========================================";
    report "Test 2: Contention - Multiple ports active";
    report "========================================";

    -- All ports try to send simultaneously
    report "Enabling ALL ports simultaneously";
    PA_enable <= '1';
    PB_enable <= '1';
    PC_enable <= '1';
    PD_enable <= '1';
    PE_enable <= '1';
    wait for 4000 ns;
    
    PA_enable <= '0';
    PB_enable <= '0';
    PC_enable <= '0';
    PD_enable <= '0';
    PE_enable <= '0';
    wait for 200 ns;

    report "========================================";
    report "Test 3: Random contention";
    report "========================================";

    -- Random enable pattern
    for i in 1 to 20 loop
      wait for 100 ns;
      report "Random cycle " & integer'image(i);
      
      -- Randomly enable ports (simple pseudo-random based on loop counter)
      if (i mod 3) = 0 then
        PA_enable <= '1';
      else
        PA_enable <= '0';
      end if;
      
      if (i mod 5) = 0 then
        PB_enable <= '1';
      else
        PB_enable <= '0';
      end if;
      
      if (i mod 2) = 0 then
        PC_enable <= '1';
      else
        PC_enable <= '0';
      end if;
      
      if (i mod 7) = 0 then
        PD_enable <= '1';
      else
        PD_enable <= '0';
      end if;
      
      if (i mod 4) = 0 then
        PE_enable <= '1';
      else
        PE_enable <= '0';
      end if;
      
      wait for 3000 ns;
    end loop;

    -- Disable all
    PA_enable <= '0';
    PB_enable <= '0';
    PC_enable <= '0';
    PD_enable <= '0';
    PE_enable <= '0';
    
    wait for 500 ns;

    report "========================================";
    report "All tests completed successfully!";
    report "========================================";
    
    test_done <= true;
    wait for 100 ns;
    
    assert false report "Simulation Finished" severity failure;
  end process;

  --------------------------------------------------------------------
  -- Arbitration monitor - Track which port is active
  --------------------------------------------------------------------
  arb_monitor : process (clk)
    variable prev_pa_ready : std_logic := '0';
    variable prev_pb_ready : std_logic := '0';
    variable prev_pc_ready : std_logic := '0';
    variable prev_pd_ready : std_logic := '0';
    variable prev_pe_ready : std_logic := '0';
  begin
    if rising_edge(clk) then
      -- Detect arbitration changes
      if PA_RX_tready = '1' and prev_pa_ready = '0' then
        report ">>> ARBITRATION: PORT_A granted access";
      end if;
      if PB_RX_tready = '1' and prev_pb_ready = '0' then
        report ">>> ARBITRATION: PORT_B granted access";
      end if;
      if PC_RX_tready = '1' and prev_pc_ready = '0' then
        report ">>> ARBITRATION: PORT_C granted access";
      end if;
      if PD_RX_tready = '1' and prev_pd_ready = '0' then
        report ">>> ARBITRATION: PORT_D granted access";
      end if;
      if PE_RX_tready = '1' and prev_pe_ready = '0' then
        report ">>> ARBITRATION: PORT_E granted access";
      end if;

      -- Detect packet completion
      if PA_RX_tready = '1' and PA_RX_tvalid = '1' and PA_RX_tlast = '1' then
        report ">>> PORT_A packet complete";
      end if;
      if PB_RX_tready = '1' and PB_RX_tvalid = '1' and PB_RX_tlast = '1' then
        report ">>> PORT_B packet complete";
      end if;
      if PC_RX_tready = '1' and PC_RX_tvalid = '1' and PC_RX_tlast = '1' then
        report ">>> PORT_C packet complete";
      end if;
      if PD_RX_tready = '1' and PD_RX_tvalid = '1' and PD_RX_tlast = '1' then
        report ">>> PORT_D packet complete";
      end if;
      if PE_RX_tready = '1' and PE_RX_tvalid = '1' and PE_RX_tlast = '1' then
        report ">>> PORT_E packet complete";
      end if;

      prev_pa_ready := PA_RX_tready;
      prev_pb_ready := PB_RX_tready;
      prev_pc_ready := PC_RX_tready;
      prev_pd_ready := PD_RX_tready;
      prev_pe_ready := PE_RX_tready;
    end if;
  end process;

end sim;