library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_e2e_tb is
end entity;

architecture behav of eth_e2e_tb is
    -- Clock period
    constant CLK_PERIOD : time := 10 ns; -- 100 MHz
    
    -- Signals for clock and reset
    signal clk : std_logic := '0';
    signal resetn : std_logic := '0';
    signal enable : std_logic := '0';
    
    -- AXI-S signals between driver and eth_tx
    signal tx_tvalid : std_logic;
    signal tx_tready : std_logic;
    signal tx_tlast : std_logic;
    signal tx_tdata : std_logic_vector(7 downto 0);
    
    -- Ethernet physical layer signals
    signal eth_tx_out : std_logic;
    signal eth_tx_en : std_logic;
    
    -- AXI-S signals from eth_rx
    signal rx_tvalid : std_logic;
    signal rx_tlast : std_logic;
    signal rx_tdata : std_logic_vector(7 downto 0);
    signal rx_tready : std_logic := '1'; -- Always ready to receive
    
    -- Test control
    signal test_complete : boolean := false;
    
    -- Component declarations
    component eth_tx_tb_driver is
        port (
            clk : in std_logic;
            resetn : in std_logic;
            enable : in std_logic;
            tvalid : out std_logic;
            tready : in std_logic;
            tlast : out std_logic;
            tdata : out std_logic_vector(7 downto 0)
        );
    end component;
    
    component eth_tx is
        port(
            clk : in std_logic;
            resetn : in std_logic;
            tx : out std_logic;
            tx_en : out std_logic;
            tvalid : in std_logic;
            tready : out std_logic;
            tlast : in std_logic;
            tdata : in std_logic_vector(7 downto 0)
        );
    end component;
    
    component eth_rx is
        port(
            clk_in : in std_logic;
            resetn : in std_logic;
            manchester_in : in std_logic;
            tready : in std_logic;
            tvalid : out std_logic;
            tlast : out std_logic;
            tdata : out std_logic_vector(7 downto 0)
        );
    end component;
    
begin
    -- Clock generation
    clk_proc: process
    begin
        while not test_complete loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;
    
    -- Reset and enable control
    stim_proc: process
    begin
        -- Assert reset
        resetn <= '0';
        enable <= '0';
        wait for CLK_PERIOD * 5;
        
        -- Deassert reset
        resetn <= '1';
        wait for CLK_PERIOD * 10;
        
        -- Enable the driver
        enable <= '1';
        
        -- Run test
        wait for 1000 us;
        
        -- End simulation
        test_complete <= true;
        report "Simulation complete";
        wait;
    end process;
    
    -- Instantiate components
    driver_inst: eth_tx_tb_driver
        port map (
            clk => clk,
            resetn => resetn,
            enable => enable,
            tvalid => tx_tvalid,
            tready => tx_tready,
            tlast => tx_tlast,
            tdata => tx_tdata
        );
    
    eth_tx_inst: eth_tx
        port map (
            clk => clk,
            resetn => resetn,
            tx => eth_tx_out,
            tx_en => eth_tx_en,
            tvalid => tx_tvalid,
            tready => tx_tready,
            tlast => tx_tlast,
            tdata => tx_tdata
        );
    
    eth_rx_inst: eth_rx
        port map (
            clk_in => clk,
            resetn => resetn,
            manchester_in => eth_tx_out,
            tready => rx_tready,
            tvalid => rx_tvalid,
            tlast => rx_tlast,
            tdata => rx_tdata
        );

end architecture;