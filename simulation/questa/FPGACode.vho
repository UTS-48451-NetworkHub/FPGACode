-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "09/13/2025 05:27:55"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ethernet_switch IS
    PORT (
	MAIN_CLK : IN std_logic;
	RESET : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	KEY3 : IN std_logic;
	KEY4 : IN std_logic;
	LED1 : BUFFER std_logic;
	UART_RX : IN std_logic;
	UART_TX : BUFFER std_logic;
	ETH0_RX : IN std_logic;
	ETH0_TX : BUFFER std_logic;
	ETH0_TX_EN : BUFFER std_logic;
	ETH0_LED_GRN : BUFFER std_logic;
	ETH0_LED_YEL : BUFFER std_logic;
	ETH1_RX : IN std_logic;
	ETH1_TX : BUFFER std_logic;
	ETH1_TX_EN : BUFFER std_logic;
	ETH1_LED_GRN : BUFFER std_logic;
	ETH1_LED_YEL : BUFFER std_logic;
	ETH2_RX : IN std_logic;
	ETH2_TX : BUFFER std_logic;
	ETH2_TX_EN : BUFFER std_logic;
	ETH2_LED_GRN : BUFFER std_logic;
	ETH2_LED_YEL : BUFFER std_logic;
	ETH3_RX : IN std_logic;
	ETH3_TX : BUFFER std_logic;
	ETH3_TX_EN : BUFFER std_logic;
	ETH3_LED_GRN : BUFFER std_logic;
	ETH3_LED_YEL : BUFFER std_logic;
	ETH4_RX : IN std_logic;
	ETH4_TX : BUFFER std_logic;
	ETH4_TX_EN : BUFFER std_logic;
	ETH4_LED_GRN : BUFFER std_logic;
	ETH4_LED_YEL : BUFFER std_logic
	);
END ethernet_switch;

-- Design Ports Information
-- KEY1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY3	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY4	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED1	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UART_RX	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_TX	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_RX	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH0_TX	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_TX_EN	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_LED_GRN	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_LED_YEL	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_RX	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH1_TX	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_TX_EN	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_LED_GRN	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_LED_YEL	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_RX	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH2_TX	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_TX_EN	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_LED_GRN	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_LED_YEL	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_RX	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH3_TX	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_TX_EN	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_LED_GRN	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_LED_YEL	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_RX	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH4_TX	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_TX_EN	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_LED_GRN	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_LED_YEL	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RESET	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MAIN_CLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ethernet_switch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAIN_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_KEY4 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_UART_RX : std_logic;
SIGNAL ww_UART_TX : std_logic;
SIGNAL ww_ETH0_RX : std_logic;
SIGNAL ww_ETH0_TX : std_logic;
SIGNAL ww_ETH0_TX_EN : std_logic;
SIGNAL ww_ETH0_LED_GRN : std_logic;
SIGNAL ww_ETH0_LED_YEL : std_logic;
SIGNAL ww_ETH1_RX : std_logic;
SIGNAL ww_ETH1_TX : std_logic;
SIGNAL ww_ETH1_TX_EN : std_logic;
SIGNAL ww_ETH1_LED_GRN : std_logic;
SIGNAL ww_ETH1_LED_YEL : std_logic;
SIGNAL ww_ETH2_RX : std_logic;
SIGNAL ww_ETH2_TX : std_logic;
SIGNAL ww_ETH2_TX_EN : std_logic;
SIGNAL ww_ETH2_LED_GRN : std_logic;
SIGNAL ww_ETH2_LED_YEL : std_logic;
SIGNAL ww_ETH3_RX : std_logic;
SIGNAL ww_ETH3_TX : std_logic;
SIGNAL ww_ETH3_TX_EN : std_logic;
SIGNAL ww_ETH3_LED_GRN : std_logic;
SIGNAL ww_ETH3_LED_YEL : std_logic;
SIGNAL ww_ETH4_RX : std_logic;
SIGNAL ww_ETH4_TX : std_logic;
SIGNAL ww_ETH4_TX_EN : std_logic;
SIGNAL ww_ETH4_LED_GRN : std_logic;
SIGNAL ww_ETH4_LED_YEL : std_logic;
SIGNAL \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|clkctrl1_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|clkctrl1_CLKSELECT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \c_pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \c_pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \KEY4~input_o\ : std_logic;
SIGNAL \UART_RX~input_o\ : std_logic;
SIGNAL \ETH0_RX~input_o\ : std_logic;
SIGNAL \ETH1_RX~input_o\ : std_logic;
SIGNAL \ETH2_RX~input_o\ : std_logic;
SIGNAL \ETH3_RX~input_o\ : std_logic;
SIGNAL \ETH4_RX~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \MAIN_CLK~input_o\ : std_logic;
SIGNAL \c_pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Add0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Add0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector1~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~24_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.IFG~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~26_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector0~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector0~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector0~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~14\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~15_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~16\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~17_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~23_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~24\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~25_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~27_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~28\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~29_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~30\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~31_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector11~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector10~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector9~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[4]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[5]~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector8~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[7]~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[8]~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[9]~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[10]~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~1\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~3\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~5\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~7\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~9\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~11\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~13\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~15\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~17\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~18_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector12~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~20_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.IDLE~feeder_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|mem_state~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_valid~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_out~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|tx_active~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~19_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~21_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~23_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~25_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~27_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~29_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~31_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~33_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~35_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~37_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~39_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~41_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~43_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~45_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~47_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~49_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~51_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~52\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~53_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.NLP~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Add0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector1~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector1~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.TX~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_phase~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_nlp_out~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_nlp_out~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector3~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector3~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_packet_length\ : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_MAIN_CLK <= MAIN_CLK;
ww_RESET <= RESET;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_KEY4 <= KEY4;
LED1 <= ww_LED1;
ww_UART_RX <= UART_RX;
UART_TX <= ww_UART_TX;
ww_ETH0_RX <= ETH0_RX;
ETH0_TX <= ww_ETH0_TX;
ETH0_TX_EN <= ww_ETH0_TX_EN;
ETH0_LED_GRN <= ww_ETH0_LED_GRN;
ETH0_LED_YEL <= ww_ETH0_LED_YEL;
ww_ETH1_RX <= ETH1_RX;
ETH1_TX <= ww_ETH1_TX;
ETH1_TX_EN <= ww_ETH1_TX_EN;
ETH1_LED_GRN <= ww_ETH1_LED_GRN;
ETH1_LED_YEL <= ww_ETH1_LED_YEL;
ww_ETH2_RX <= ETH2_RX;
ETH2_TX <= ww_ETH2_TX;
ETH2_TX_EN <= ww_ETH2_TX_EN;
ETH2_LED_GRN <= ww_ETH2_LED_GRN;
ETH2_LED_YEL <= ww_ETH2_LED_YEL;
ww_ETH3_RX <= ETH3_RX;
ETH3_TX <= ww_ETH3_TX;
ETH3_TX_EN <= ww_ETH3_TX_EN;
ETH3_LED_GRN <= ww_ETH3_LED_GRN;
ETH3_LED_YEL <= ww_ETH3_LED_YEL;
ww_ETH4_RX <= ETH4_RX;
ETH4_TX <= ww_ETH4_TX;
ETH4_TX_EN <= ww_ETH4_TX_EN;
ETH4_LED_GRN <= ww_ETH4_LED_GRN;
ETH4_LED_YEL <= ww_ETH4_LED_YEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|clkctrl1_INCLK_bus\ <= (vcc & vcc & vcc & \c_pll|altpll_component|auto_generated|wire_pll1_clk\(0));

\c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|clkctrl1_CLKSELECT_bus\ <= (gnd & gnd);

\c_pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \MAIN_CLK~input_o\);

\c_pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \c_pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\c_pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \c_pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\c_pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \c_pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\c_pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \c_pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\c_pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \c_pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\c_eth0|c_tx|c_fsm_pt|addr[10]~5_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[9]~4_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[8]~3_combout\ & 
\c_eth0|c_tx|c_fsm_pt|addr[7]~2_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector8~2_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[5]~1_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[4]~0_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector9~2_combout\ & 
\c_eth0|c_tx|c_fsm_pt|Selector10~2_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector11~2_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector12~0_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\c_eth0|c_tx|c_fsm_pt|addr[10]~5_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[9]~4_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[8]~3_combout\ & 
\c_eth0|c_tx|c_fsm_pt|addr[7]~2_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector8~2_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[5]~1_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[4]~0_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector9~2_combout\ & 
\c_eth0|c_tx|c_fsm_pt|Selector10~2_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector11~2_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector12~0_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(1);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(2);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(3);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

-- Location: IOOBUF_X34_Y9_N16
\LED1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED1);

-- Location: IOOBUF_X28_Y24_N16
\UART_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UART_TX);

-- Location: IOOBUF_X34_Y2_N16
\ETH0_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_eth0|c_tx|c_phy|Selector3~1_combout\,
	devoe => ww_devoe,
	o => ww_ETH0_TX);

-- Location: IOOBUF_X34_Y7_N9
\ETH0_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devoe => ww_devoe,
	o => ww_ETH0_TX_EN);

-- Location: IOOBUF_X34_Y3_N23
\ETH0_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH0_LED_GRN);

-- Location: IOOBUF_X34_Y9_N23
\ETH0_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH0_LED_YEL);

-- Location: IOOBUF_X32_Y0_N23
\ETH1_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH1_TX);

-- Location: IOOBUF_X30_Y0_N2
\ETH1_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH1_TX_EN);

-- Location: IOOBUF_X30_Y0_N23
\ETH1_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH1_LED_GRN);

-- Location: IOOBUF_X32_Y0_N16
\ETH1_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH1_LED_YEL);

-- Location: IOOBUF_X16_Y0_N2
\ETH2_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH2_TX);

-- Location: IOOBUF_X21_Y0_N9
\ETH2_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH2_TX_EN);

-- Location: IOOBUF_X18_Y0_N23
\ETH2_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH2_LED_GRN);

-- Location: IOOBUF_X23_Y0_N9
\ETH2_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH2_LED_YEL);

-- Location: IOOBUF_X7_Y0_N2
\ETH3_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH3_TX);

-- Location: IOOBUF_X3_Y0_N2
\ETH3_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH3_TX_EN);

-- Location: IOOBUF_X5_Y0_N23
\ETH3_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH3_LED_GRN);

-- Location: IOOBUF_X13_Y0_N2
\ETH3_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH3_LED_YEL);

-- Location: IOOBUF_X0_Y6_N16
\ETH4_TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH4_TX);

-- Location: IOOBUF_X0_Y9_N9
\ETH4_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH4_TX_EN);

-- Location: IOOBUF_X0_Y8_N16
\ETH4_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH4_LED_GRN);

-- Location: IOOBUF_X0_Y5_N16
\ETH4_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ETH4_LED_YEL);

-- Location: IOIBUF_X0_Y11_N22
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G0
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\MAIN_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAIN_CLK,
	o => \MAIN_CLK~input_o\);

-- Location: PLL_1
\c_pll|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \RESET~inputclkctrl_outclk\,
	fbin => \c_pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \c_pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \c_pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \c_pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|clkctrl1\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	ena => VCC,
	inclk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|clkctrl1_INCLK_bus\,
	clkselect => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|clkctrl1_CLKSELECT_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\);

-- Location: LCCOMB_X12_Y7_N22
\c_eth0|c_tx|c_fsm_pt|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\);

-- Location: FF_X18_Y5_N31
\c_eth0|c_tx|c_piso_sr|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\);

-- Location: LCCOMB_X18_Y5_N12
\c_eth0|c_tx|c_piso_sr|r_byte~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\);

-- Location: LCCOMB_X18_Y5_N16
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\ = (\c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ & (\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.TX~q\) # (!\c_eth0|c_tx|c_piso_sr|Selector1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\);

-- Location: LCCOMB_X17_Y5_N6
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\ & 
-- !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\);

-- Location: FF_X17_Y5_N7
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0));

-- Location: LCCOMB_X18_Y5_N2
\c_eth0|c_tx|c_piso_sr|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ = (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & \c_eth0|c_tx|c_fsm_pt|byte_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\);

-- Location: LCCOMB_X18_Y5_N24
\c_eth0|c_tx|c_piso_sr|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & (\c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ & \c_eth0|c_tx|c_piso_sr|state.TX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\);

-- Location: LCCOMB_X18_Y5_N22
\c_eth0|c_tx|c_piso_sr|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ = (!\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & ((\c_eth0|c_tx|c_piso_sr|Selector2~2_combout\) # ((!\c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ & \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\);

-- Location: FF_X18_Y5_N23
\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\);

-- Location: LCCOMB_X18_Y5_N18
\c_eth0|c_tx|c_piso_sr|p_seq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ = ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)) # ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # (!\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\))) # (!\c_eth0|c_tx|c_piso_sr|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\);

-- Location: LCCOMB_X17_Y5_N12
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\);

-- Location: FF_X17_Y5_N13
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0));

-- Location: LCCOMB_X17_Y5_N24
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3) & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\);

-- Location: LCCOMB_X17_Y5_N18
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\) # ((!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\);

-- Location: FF_X17_Y5_N19
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3));

-- Location: LCCOMB_X17_Y5_N8
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1) & 
-- (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2) & \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\);

-- Location: FF_X17_Y5_N9
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2));

-- Location: LCCOMB_X17_Y5_N14
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1) & 
-- ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\);

-- Location: FF_X17_Y5_N15
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1));

-- Location: LCCOMB_X17_Y5_N2
\c_eth0|c_tx|c_piso_sr|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y5_N22
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\) # ((!\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\);

-- Location: LCCOMB_X17_Y5_N26
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\ & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\ & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\ 
-- & (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1) $ (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\);

-- Location: FF_X17_Y5_N27
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1));

-- Location: LCCOMB_X17_Y5_N10
\c_eth0|c_tx|c_piso_sr|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Add0~0_combout\ = \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2) $ (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	combout => \c_eth0|c_tx|c_piso_sr|Add0~0_combout\);

-- Location: LCCOMB_X17_Y5_N20
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\ & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\ & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\ 
-- & ((!\c_eth0|c_tx|c_piso_sr|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datad => \c_eth0|c_tx|c_piso_sr|Add0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\);

-- Location: FF_X17_Y5_N21
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2));

-- Location: LCCOMB_X17_Y5_N28
\c_eth0|c_tx|c_piso_sr|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Add0~1_combout\ = \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3) $ (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	combout => \c_eth0|c_tx|c_piso_sr|Add0~1_combout\);

-- Location: LCCOMB_X17_Y5_N4
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\ & ((\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\ & (!\c_eth0|c_tx|c_piso_sr|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~10_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Add0~1_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\);

-- Location: FF_X17_Y5_N5
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\,
	asdata => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3));

-- Location: LCCOMB_X17_Y5_N16
\c_eth0|c_tx|c_piso_sr|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ = (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3) & !\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\);

-- Location: LCCOMB_X18_Y5_N8
\c_eth0|c_tx|c_piso_sr|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ = (\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\ & ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # ((\c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ & !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\);

-- Location: LCCOMB_X18_Y5_N20
\c_eth0|c_tx|c_piso_sr|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector1~5_combout\ = (!\c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.TX~q\) # ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\ & !\c_eth0|c_tx|c_piso_sr|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector1~5_combout\);

-- Location: LCCOMB_X18_Y5_N4
\c_eth0|c_tx|c_piso_sr|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & (\c_eth0|c_tx|c_fsm_pt|byte_valid~q\)) # (!\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & ((\c_eth0|c_tx|c_piso_sr|Selector1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector1~5_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\);

-- Location: LCCOMB_X18_Y5_N26
\c_eth0|c_tx|c_piso_sr|state.TX~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\ = \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\);

-- Location: FF_X18_Y5_N27
\c_eth0|c_tx|c_piso_sr|state.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.TX~q\);

-- Location: LCCOMB_X11_Y7_N30
\c_eth0|c_tx|c_fsm_pt|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & ((!\c_eth0|c_tx|c_piso_sr|state.TX~q\))) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (\c_eth0|c_tx|c_fsm_pt|mem_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~4_combout\);

-- Location: LCCOMB_X14_Y7_N2
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\);

-- Location: FF_X14_Y7_N3
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\);

-- Location: LCCOMB_X12_Y7_N6
\c_eth0|c_tx|c_fsm_pt|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~3_combout\);

-- Location: LCCOMB_X11_Y7_N12
\c_eth0|c_tx|c_fsm_pt|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\ & (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & ((!\c_eth0|c_tx|c_fsm_pt|Selector6~3_combout\) # (!\c_eth0|c_tx|c_fsm_pt|Selector6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector6~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector6~3_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~5_combout\);

-- Location: LCCOMB_X11_Y7_N22
\c_eth0|c_tx|c_fsm_pt|f_first_byte~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & ((\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\) # ((\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\);

-- Location: FF_X11_Y7_N23
\c_eth0|c_tx|c_fsm_pt|f_first_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\);

-- Location: LCCOMB_X12_Y7_N16
\c_eth0|c_tx|c_fsm_pt|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ = (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\);

-- Location: LCCOMB_X11_Y7_N24
\c_eth0|c_tx|c_fsm_pt|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & !\c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\);

-- Location: FF_X11_Y7_N25
\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\);

-- Location: LCCOMB_X10_Y7_N10
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\);

-- Location: LCCOMB_X10_Y7_N12
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~24_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~24_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\);

-- Location: LCCOMB_X11_Y7_N16
\c_eth0|c_tx|c_fsm_pt|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\) # ((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\)))) # 
-- (!\c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ & (((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~1_combout\);

-- Location: FF_X11_Y7_N17
\c_eth0|c_tx|c_fsm_pt|state.IFG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector7~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\);

-- Location: LCCOMB_X10_Y7_N20
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\ = (\RESET~input_o\ & ((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datac => \RESET~input_o\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\);

-- Location: FF_X10_Y7_N13
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~24_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7));

-- Location: LCCOMB_X10_Y7_N14
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~26_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~26_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\);

-- Location: FF_X10_Y7_N15
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~26_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8));

-- Location: LCCOMB_X10_Y7_N16
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\);

-- Location: FF_X10_Y7_N17
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9));

-- Location: LCCOMB_X10_Y7_N18
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10) $ (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30_combout\);

-- Location: FF_X10_Y7_N19
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10));

-- Location: LCCOMB_X10_Y7_N0
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) $ (VCC))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) & \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\);

-- Location: FF_X10_Y7_N1
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1));

-- Location: LCCOMB_X10_Y7_N24
\c_eth0|c_tx|c_fsm_pt|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector0~3_combout\ = (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3),
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector0~3_combout\);

-- Location: LCCOMB_X10_Y7_N22
\c_eth0|c_tx|c_fsm_pt|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector0~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8),
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector0~4_combout\);

-- Location: LCCOMB_X10_Y7_N28
\c_eth0|c_tx|c_fsm_pt|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector0~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector0~3_combout\ & (\c_eth0|c_tx|c_fsm_pt|Selector0~4_combout\ & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|Selector0~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector0~5_combout\);

-- Location: LCCOMB_X10_Y7_N26
\c_eth0|c_tx|c_fsm_pt|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10) & (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ & \c_eth0|c_tx|c_fsm_pt|Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector0~5_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\);

-- Location: LCCOMB_X14_Y6_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X13_Y7_N6
\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0) $ (VCC)
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\ = CARRY(\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\);

-- Location: LCCOMB_X14_Y7_N4
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\);

-- Location: LCCOMB_X13_Y7_N8
\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~13_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~14\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~13_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~14\);

-- Location: FF_X13_Y7_N9
\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~13_combout\,
	asdata => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1));

-- Location: LCCOMB_X13_Y7_N10
\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~15_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~14\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~14\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~16\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~14\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~15_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~16\);

-- Location: FF_X13_Y7_N11
\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~15_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2));

-- Location: LCCOMB_X13_Y7_N12
\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~17_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~16\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~16\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~16\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~16\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~17_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\);

-- Location: FF_X13_Y7_N13
\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3));

-- Location: LCCOMB_X13_Y7_N14
\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\);

-- Location: FF_X13_Y7_N15
\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4));

-- Location: LCCOMB_X13_Y7_N16
\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\);

-- Location: FF_X13_Y7_N17
\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5));

-- Location: LCCOMB_X13_Y7_N18
\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~23_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~24\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~23_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~24\);

-- Location: FF_X13_Y7_N19
\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~23_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6));

-- Location: LCCOMB_X13_Y7_N20
\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~25_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~24\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~24\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~24\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~24\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~25_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\);

-- Location: FF_X13_Y7_N21
\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~25_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7));

-- Location: LCCOMB_X13_Y7_N22
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~27_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~28\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~27_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~28\);

-- Location: FF_X13_Y7_N23
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~27_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8));

-- Location: LCCOMB_X13_Y7_N24
\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~29_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~28\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~28\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~30\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~28\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~28\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~29_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~30\);

-- Location: FF_X13_Y7_N25
\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9));

-- Location: LCCOMB_X13_Y7_N26
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~31_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~30\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~31_combout\);

-- Location: FF_X13_Y7_N27
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~31_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10));

-- Location: LCCOMB_X11_Y7_N28
\c_eth0|c_tx|c_fsm_pt|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\);

-- Location: LCCOMB_X12_Y7_N30
\c_eth0|c_tx|c_fsm_pt|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector11~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # (((\c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1))) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1),
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector11~2_combout\);

-- Location: LCCOMB_X12_Y7_N0
\c_eth0|c_tx|c_fsm_pt|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector10~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # (((\c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2))) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector10~2_combout\);

-- Location: LCCOMB_X12_Y7_N10
\c_eth0|c_tx|c_fsm_pt|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector9~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # (((\c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3))) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector9~2_combout\);

-- Location: LCCOMB_X12_Y7_N18
\c_eth0|c_tx|c_fsm_pt|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y7_N30
\c_eth0|c_tx|c_fsm_pt|addr[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[4]~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & !\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[4]~0_combout\);

-- Location: LCCOMB_X14_Y7_N28
\c_eth0|c_tx|c_fsm_pt|addr[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[5]~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[5]~1_combout\);

-- Location: LCCOMB_X12_Y7_N24
\c_eth0|c_tx|c_fsm_pt|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector8~2_combout\ = ((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # ((\c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6)))) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector8~2_combout\);

-- Location: LCCOMB_X14_Y7_N18
\c_eth0|c_tx|c_fsm_pt|addr[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[7]~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[7]~2_combout\);

-- Location: LCCOMB_X14_Y7_N0
\c_eth0|c_tx|c_fsm_pt|addr[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[8]~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & !\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[8]~3_combout\);

-- Location: LCCOMB_X14_Y7_N22
\c_eth0|c_tx|c_fsm_pt|addr[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[9]~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & !\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[9]~4_combout\);

-- Location: LCCOMB_X14_Y7_N16
\c_eth0|c_tx|c_fsm_pt|addr[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[10]~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ & (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[10]~5_combout\);

-- Location: M9K_X15_Y7_N0
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "eth_port:c_eth0|eth_tx:c_tx|ram_eth_packet:c_ram|altsyncram:altsyncram_component|altsyncram_bho3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	power_up_uninitialized => "true",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	clk1 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	ena0 => GND,
	portadatain => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y7_N12
\c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~2_combout\ = (\RESET~input_o\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & \c_eth0|c_tx|c_fsm_pt|mem_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~2_combout\);

-- Location: FF_X16_Y7_N21
\c_eth0|c_tx|c_fsm_pt|r_packet_length[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(10));

-- Location: FF_X16_Y7_N17
\c_eth0|c_tx|c_fsm_pt|r_packet_length[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(8));

-- Location: LCCOMB_X14_Y7_N6
\c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\ = (\RESET~input_o\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ & \c_eth0|c_tx|c_fsm_pt|mem_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\);

-- Location: FF_X16_Y7_N15
\c_eth0|c_tx|c_fsm_pt|r_packet_length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(7));

-- Location: M9K_X15_Y6_N0
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "eth_port:c_eth0|eth_tx:c_tx|ram_eth_packet:c_ram|altsyncram:altsyncram_component|altsyncram_bho3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	power_up_uninitialized => "true",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	clk1 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	ena0 => GND,
	portadatain => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: FF_X16_Y7_N13
\c_eth0|c_tx|c_fsm_pt|r_packet_length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(6));

-- Location: FF_X16_Y7_N11
\c_eth0|c_tx|c_fsm_pt|r_packet_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(5));

-- Location: FF_X16_Y7_N9
\c_eth0|c_tx|c_fsm_pt|r_packet_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(4));

-- Location: FF_X16_Y7_N7
\c_eth0|c_tx|c_fsm_pt|r_packet_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(3));

-- Location: FF_X16_Y7_N5
\c_eth0|c_tx|c_fsm_pt|r_packet_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(2));

-- Location: FF_X16_Y7_N3
\c_eth0|c_tx|c_fsm_pt|r_packet_length[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(1));

-- Location: FF_X16_Y7_N25
\c_eth0|c_tx|c_fsm_pt|r_packet_length[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(0));

-- Location: LCCOMB_X16_Y7_N2
\c_eth0|c_tx|c_fsm_pt|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(1) & (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(0) $ (VCC))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(1) & (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(0) & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~1\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(1) & \c_eth0|c_tx|c_fsm_pt|r_packet_length\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(1),
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~1\);

-- Location: LCCOMB_X16_Y7_N4
\c_eth0|c_tx|c_fsm_pt|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2) & (!\c_eth0|c_tx|c_fsm_pt|Add2~1\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2) & ((\c_eth0|c_tx|c_fsm_pt|Add2~1\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~3\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~1\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~1\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~3\);

-- Location: LCCOMB_X16_Y7_N6
\c_eth0|c_tx|c_fsm_pt|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & (\c_eth0|c_tx|c_fsm_pt|Add2~3\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & (!\c_eth0|c_tx|c_fsm_pt|Add2~3\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~5\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & !\c_eth0|c_tx|c_fsm_pt|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~3\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~5\);

-- Location: LCCOMB_X16_Y7_N8
\c_eth0|c_tx|c_fsm_pt|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(4) & (!\c_eth0|c_tx|c_fsm_pt|Add2~5\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(4) & ((\c_eth0|c_tx|c_fsm_pt|Add2~5\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~7\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~5\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~5\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~7\);

-- Location: LCCOMB_X16_Y7_N10
\c_eth0|c_tx|c_fsm_pt|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(5) & (\c_eth0|c_tx|c_fsm_pt|Add2~7\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(5) & (!\c_eth0|c_tx|c_fsm_pt|Add2~7\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~9\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(5) & !\c_eth0|c_tx|c_fsm_pt|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~7\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~9\);

-- Location: LCCOMB_X16_Y7_N12
\c_eth0|c_tx|c_fsm_pt|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(6) & (!\c_eth0|c_tx|c_fsm_pt|Add2~9\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(6) & ((\c_eth0|c_tx|c_fsm_pt|Add2~9\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~11\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~9\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~9\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~11\);

-- Location: LCCOMB_X16_Y7_N14
\c_eth0|c_tx|c_fsm_pt|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(7) & (\c_eth0|c_tx|c_fsm_pt|Add2~11\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(7) & (!\c_eth0|c_tx|c_fsm_pt|Add2~11\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~13\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(7) & !\c_eth0|c_tx|c_fsm_pt|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~11\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~13\);

-- Location: LCCOMB_X16_Y7_N16
\c_eth0|c_tx|c_fsm_pt|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(8) & (!\c_eth0|c_tx|c_fsm_pt|Add2~13\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(8) & ((\c_eth0|c_tx|c_fsm_pt|Add2~13\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~15\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~13\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~13\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~15\);

-- Location: LCCOMB_X16_Y7_N18
\c_eth0|c_tx|c_fsm_pt|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & (\c_eth0|c_tx|c_fsm_pt|Add2~15\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & (!\c_eth0|c_tx|c_fsm_pt|Add2~15\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~17\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & !\c_eth0|c_tx|c_fsm_pt|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~15\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~17\);

-- Location: LCCOMB_X16_Y7_N20
\c_eth0|c_tx|c_fsm_pt|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~18_combout\ = \c_eth0|c_tx|c_fsm_pt|Add2~17\ $ (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~17\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~18_combout\);

-- Location: LCCOMB_X13_Y7_N0
\c_eth0|c_tx|c_fsm_pt|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) $ (\c_eth0|c_tx|c_fsm_pt|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~18_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y7_N22
\c_eth0|c_tx|c_fsm_pt|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & (\c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~10_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y7_N0
\c_eth0|c_tx|c_fsm_pt|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (\c_eth0|c_tx|c_fsm_pt|Add2~6_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~8_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~6_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y7_N26
\c_eth0|c_tx|c_fsm_pt|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & (\c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~2_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y7_N24
\c_eth0|c_tx|c_fsm_pt|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & (\c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(0) $ (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0))))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(0) $ (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1),
	datab => \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(0),
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0),
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y7_N28
\c_eth0|c_tx|c_fsm_pt|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ & \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y7_N28
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\ = (\RESET~input_o\ & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\,
	datab => \RESET~input_o\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\);

-- Location: LCCOMB_X13_Y7_N4
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\ & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\) # ((!\c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ & \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\);

-- Location: FF_X13_Y7_N7
\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0));

-- Location: LCCOMB_X12_Y7_N12
\c_eth0|c_tx|c_fsm_pt|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector12~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\) # (((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0) & \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0),
	datab => \c_eth0|c_tx|c_fsm_pt|WideOr1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector12~0_combout\);

-- Location: FF_X16_Y7_N19
\c_eth0|c_tx|c_fsm_pt|r_packet_length[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(9));

-- Location: LCCOMB_X14_Y7_N24
\c_eth0|c_tx|c_fsm_pt|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~14_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ & 
-- (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y7_N30
\c_eth0|c_tx|c_fsm_pt|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~8_combout\ = ((\c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\ & !\c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\))) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~8_combout\);

-- Location: LCCOMB_X11_Y7_N18
\c_eth0|c_tx|c_fsm_pt|Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~9_combout\ = (!\c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.TX~q\) # (\c_eth0|c_tx|c_fsm_pt|Selector6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector6~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~9_combout\);

-- Location: LCCOMB_X11_Y7_N2
\c_eth0|c_tx|c_fsm_pt|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector6~5_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector6~5_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector6~9_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\);

-- Location: LCCOMB_X11_Y7_N8
\c_eth0|c_tx|c_fsm_pt|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector1~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\ & (((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\))) # 
-- (!\c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\ & (((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector1~0_combout\);

-- Location: FF_X11_Y7_N9
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector1~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\);

-- Location: LCCOMB_X12_Y7_N28
\c_eth0|c_tx|c_fsm_pt|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ = (\c_eth0|c_tx|c_piso_sr|state.TX~q\ & (((!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & !\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\);

-- Location: LCCOMB_X12_Y7_N20
\c_eth0|c_tx|c_fsm_pt|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\) # (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\);

-- Location: LCCOMB_X11_Y7_N4
\c_eth0|c_tx|c_fsm_pt|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\) # ((!\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & \c_eth0|c_tx|c_fsm_pt|mem_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\);

-- Location: LCCOMB_X11_Y7_N20
\c_eth0|c_tx|c_fsm_pt|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\) # (\c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\);

-- Location: FF_X11_Y7_N21
\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\);

-- Location: LCCOMB_X13_Y7_N2
\c_eth0|c_tx|c_fsm_pt|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\ = (((\c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\);

-- Location: LCCOMB_X11_Y7_N0
\c_eth0|c_tx|c_fsm_pt|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\ & (((\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ & \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\))) # 
-- (!\c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\ & (((\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ & \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector6~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~7_combout\);

-- Location: FF_X11_Y7_N1
\c_eth0|c_tx|c_fsm_pt|state.TX_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector6~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\);

-- Location: LCCOMB_X11_Y7_N6
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) $ (((\RESET~input_o\ & ((\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\) # (\c_eth0|c_tx|c_fsm_pt|state.IFG~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	datad => \RESET~input_o\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10_combout\);

-- Location: FF_X11_Y7_N7
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0));

-- Location: LCCOMB_X10_Y7_N2
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\);

-- Location: FF_X10_Y7_N3
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2));

-- Location: LCCOMB_X10_Y7_N4
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~16_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~16_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\);

-- Location: FF_X10_Y7_N5
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~16_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3));

-- Location: LCCOMB_X10_Y7_N6
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\);

-- Location: FF_X10_Y7_N7
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4));

-- Location: LCCOMB_X10_Y7_N8
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~20_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~20_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\);

-- Location: FF_X10_Y7_N9
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~20_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5));

-- Location: FF_X10_Y7_N11
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6));

-- Location: LCCOMB_X10_Y7_N30
\c_eth0|c_tx|c_fsm_pt|Selector0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6)) # (((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10)) # (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\)) # (!\c_eth0|c_tx|c_fsm_pt|Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datab => \c_eth0|c_tx|c_fsm_pt|Selector0~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\);

-- Location: LCCOMB_X11_Y7_N14
\c_eth0|c_tx|c_fsm_pt|state.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|state.IDLE~feeder_combout\ = \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0|c_tx|c_fsm_pt|Selector0~7_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|state.IDLE~feeder_combout\);

-- Location: FF_X11_Y7_N15
\c_eth0|c_tx|c_fsm_pt|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|state.IDLE~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\);

-- Location: LCCOMB_X14_Y7_N26
\c_eth0|c_tx|c_fsm_pt|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~9_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~8_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~18_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y7_N20
\c_eth0|c_tx|c_fsm_pt|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\ = (!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & (!\c_eth0|c_tx|c_fsm_pt|Equal0~9_combout\ & \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~9_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\);

-- Location: LCCOMB_X14_Y7_N14
\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\) # ((!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & ((\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\);

-- Location: FF_X14_Y7_N15
\c_eth0|c_tx|c_fsm_pt|r_mem_read_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\);

-- Location: LCCOMB_X14_Y7_N10
\c_eth0|c_tx|c_fsm_pt|mem_next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\);

-- Location: FF_X14_Y7_N11
\c_eth0|c_tx|c_fsm_pt|mem_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|mem_state~q\);

-- Location: LCCOMB_X14_Y7_N8
\c_eth0|c_tx|c_fsm_pt|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\) # ((\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & 
-- ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\);

-- Location: FF_X14_Y7_N9
\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\);

-- Location: LCCOMB_X11_Y7_N10
\c_eth0|c_tx|c_fsm_pt|byte_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & (!\c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ & (\c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\ & !\c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\);

-- Location: LCCOMB_X11_Y7_N26
\c_eth0|c_tx|c_fsm_pt|byte_valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\) # ((!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\ & \c_eth0|c_tx|c_fsm_pt|byte_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector0~6_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\);

-- Location: FF_X11_Y7_N27
\c_eth0|c_tx|c_fsm_pt|byte_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\);

-- Location: LCCOMB_X18_Y5_N30
\c_eth0|c_tx|c_piso_sr|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # ((!\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\) # (\c_eth0|c_tx|c_piso_sr|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\);

-- Location: LCCOMB_X18_Y5_N28
\c_eth0|c_tx|c_piso_sr|bit_valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector0~1_combout\ & (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & !\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\);

-- Location: FF_X18_Y5_N29
\c_eth0|c_tx|c_piso_sr|bit_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|bit_valid~q\);

-- Location: LCCOMB_X18_Y5_N6
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\)) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\))) # 
-- (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & (\c_eth0|c_tx|c_piso_sr|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\);

-- Location: LCCOMB_X18_Y5_N10
\c_eth0|c_tx|c_piso_sr|r_byte~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\ = (\c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ & (\c_eth0|c_tx|c_piso_sr|Selector1~4_combout\ & (\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7) & !\c_eth0|c_tx|c_piso_sr|state.TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\,
	datac => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7),
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\);

-- Location: LCCOMB_X18_Y5_N0
\c_eth0|c_tx|c_piso_sr|r_byte~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\ = (\c_eth0|c_tx|c_piso_sr|r_byte~8_combout\) # ((!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\ & \c_eth0|c_tx|c_piso_sr|r_byte\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|r_byte\(7),
	datad => \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\);

-- Location: FF_X18_Y5_N1
\c_eth0|c_tx|c_piso_sr|r_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(7));

-- Location: LCCOMB_X18_Y5_N14
\c_eth0|c_tx|c_piso_sr|r_byte~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(7))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(7),
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\);

-- Location: FF_X18_Y5_N15
\c_eth0|c_tx|c_piso_sr|r_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(6));

-- Location: LCCOMB_X19_Y5_N12
\c_eth0|c_tx|c_piso_sr|r_byte~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(6))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte\(6),
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\);

-- Location: FF_X19_Y5_N13
\c_eth0|c_tx|c_piso_sr|r_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(5));

-- Location: LCCOMB_X19_Y5_N10
\c_eth0|c_tx|c_piso_sr|r_byte~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- ((\c_eth0|c_tx|c_piso_sr|r_byte\(5)))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4),
	datad => \c_eth0|c_tx|c_piso_sr|r_byte\(5),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\);

-- Location: FF_X19_Y5_N11
\c_eth0|c_tx|c_piso_sr|r_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(4));

-- Location: LCCOMB_X19_Y5_N20
\c_eth0|c_tx|c_piso_sr|r_byte~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- ((\c_eth0|c_tx|c_piso_sr|r_byte\(4)))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3),
	datad => \c_eth0|c_tx|c_piso_sr|r_byte\(4),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\);

-- Location: FF_X19_Y5_N21
\c_eth0|c_tx|c_piso_sr|r_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(3));

-- Location: LCCOMB_X19_Y5_N6
\c_eth0|c_tx|c_piso_sr|r_byte~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- ((\c_eth0|c_tx|c_piso_sr|r_byte\(3)))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2),
	datad => \c_eth0|c_tx|c_piso_sr|r_byte\(3),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\);

-- Location: FF_X19_Y5_N7
\c_eth0|c_tx|c_piso_sr|r_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(2));

-- Location: LCCOMB_X19_Y5_N4
\c_eth0|c_tx|c_piso_sr|r_byte~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- ((\c_eth0|c_tx|c_piso_sr|r_byte\(2)))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1),
	datad => \c_eth0|c_tx|c_piso_sr|r_byte\(2),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\);

-- Location: FF_X19_Y5_N5
\c_eth0|c_tx|c_piso_sr|r_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(1));

-- Location: LCCOMB_X19_Y5_N26
\c_eth0|c_tx|c_piso_sr|r_byte~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~1_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(1))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|r_byte\(1),
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~1_combout\);

-- Location: FF_X19_Y5_N27
\c_eth0|c_tx|c_piso_sr|r_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(0));

-- Location: LCCOMB_X19_Y5_N8
\c_eth0|c_tx|c_piso_sr|bit_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_piso_sr|bit_out~q\)) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|r_byte\(0)))))) # 
-- (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_piso_sr|bit_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|bit_out~q\,
	datad => \c_eth0|c_tx|c_piso_sr|r_byte\(0),
	combout => \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\);

-- Location: FF_X19_Y5_N9
\c_eth0|c_tx|c_piso_sr|bit_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|bit_out~q\);

-- Location: LCCOMB_X33_Y2_N26
\c_eth0|c_tx|c_phy|r_mcn_bit_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\ = (\c_eth0|c_tx|c_piso_sr|bit_valid~q\ & ((\c_eth0|c_tx|c_piso_sr|bit_out~q\))) # (!\c_eth0|c_tx|c_piso_sr|bit_valid~q\ & (\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|bit_valid~q\,
	datac => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	datad => \c_eth0|c_tx|c_piso_sr|bit_out~q\,
	combout => \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\);

-- Location: FF_X33_Y2_N27
\c_eth0|c_tx|c_phy|r_mcn_bit_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\);

-- Location: LCCOMB_X11_Y6_N12
\c_eth0|c_tx|c_fsm_pt|tx_active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ & ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\);

-- Location: FF_X11_Y6_N13
\c_eth0|c_tx|c_fsm_pt|tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|tx_active~q\);

-- Location: LCCOMB_X32_Y2_N14
\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~19_combout\ = \c_eth0|c_tx|c_phy|r_inactivity_counter\(0) $ (VCC)
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\ = CARRY(\c_eth0|c_tx|c_phy|r_inactivity_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~19_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\);

-- Location: FF_X32_Y2_N15
\c_eth0|c_tx|c_phy|r_inactivity_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0));

-- Location: LCCOMB_X32_Y2_N16
\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~21_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(1) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(1) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~21_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\);

-- Location: FF_X32_Y2_N17
\c_eth0|c_tx|c_phy|r_inactivity_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1));

-- Location: LCCOMB_X32_Y2_N18
\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~23_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~23_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\);

-- Location: FF_X32_Y2_N19
\c_eth0|c_tx|c_phy|r_inactivity_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2));

-- Location: LCCOMB_X32_Y2_N20
\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~25_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(3) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(3) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~25_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\);

-- Location: FF_X32_Y2_N21
\c_eth0|c_tx|c_phy|r_inactivity_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3));

-- Location: LCCOMB_X32_Y2_N12
\c_eth0|c_tx|c_phy|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~0_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(3) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(0) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1),
	combout => \c_eth0|c_tx|c_phy|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y2_N22
\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~27_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~27_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\);

-- Location: FF_X32_Y2_N23
\c_eth0|c_tx|c_phy|r_inactivity_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4));

-- Location: LCCOMB_X32_Y2_N24
\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~29_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(5) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(5) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~29_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\);

-- Location: FF_X32_Y2_N25
\c_eth0|c_tx|c_phy|r_inactivity_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5));

-- Location: LCCOMB_X32_Y2_N26
\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~31_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~31_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\);

-- Location: FF_X32_Y2_N27
\c_eth0|c_tx|c_phy|r_inactivity_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6));

-- Location: LCCOMB_X32_Y2_N28
\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~33_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(7) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(7) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~33_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\);

-- Location: FF_X32_Y2_N29
\c_eth0|c_tx|c_phy|r_inactivity_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7));

-- Location: LCCOMB_X32_Y2_N30
\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~35_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(8) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(8) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(8) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~35_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\);

-- Location: FF_X32_Y2_N31
\c_eth0|c_tx|c_phy|r_inactivity_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~35_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(8));

-- Location: LCCOMB_X32_Y1_N0
\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~37_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(9) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(9) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~37_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\);

-- Location: FF_X32_Y1_N1
\c_eth0|c_tx|c_phy|r_inactivity_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~37_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(9));

-- Location: LCCOMB_X32_Y1_N2
\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~39_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(10) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(10) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(10) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(10),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~39_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\);

-- Location: FF_X32_Y1_N3
\c_eth0|c_tx|c_phy|r_inactivity_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~39_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(10));

-- Location: LCCOMB_X32_Y1_N4
\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~41_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(11) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(11) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(11),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~41_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\);

-- Location: FF_X32_Y1_N5
\c_eth0|c_tx|c_phy|r_inactivity_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(11));

-- Location: LCCOMB_X32_Y1_N24
\c_eth0|c_tx|c_phy|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~2_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(8) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(9) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(11) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(8),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(9),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(11),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(10),
	combout => \c_eth0|c_tx|c_phy|Equal1~2_combout\);

-- Location: LCCOMB_X32_Y1_N6
\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~43_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~43_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\);

-- Location: FF_X32_Y1_N7
\c_eth0|c_tx|c_phy|r_inactivity_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~43_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12));

-- Location: LCCOMB_X32_Y1_N8
\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~45_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(13) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(13) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~45_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\);

-- Location: FF_X32_Y1_N9
\c_eth0|c_tx|c_phy|r_inactivity_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~45_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13));

-- Location: LCCOMB_X32_Y1_N10
\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~47_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~47_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\);

-- Location: FF_X32_Y1_N11
\c_eth0|c_tx|c_phy|r_inactivity_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~47_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14));

-- Location: LCCOMB_X32_Y1_N12
\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~49_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(15) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(15) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~49_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\);

-- Location: FF_X32_Y1_N13
\c_eth0|c_tx|c_phy|r_inactivity_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~49_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15));

-- Location: LCCOMB_X32_Y1_N22
\c_eth0|c_tx|c_phy|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~3_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & (\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & (\c_eth0|c_tx|c_phy|r_inactivity_counter\(13) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15),
	combout => \c_eth0|c_tx|c_phy|Equal1~3_combout\);

-- Location: LCCOMB_X32_Y1_N18
\c_eth0|c_tx|c_phy|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~1_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(7) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(5) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4),
	combout => \c_eth0|c_tx|c_phy|Equal1~1_combout\);

-- Location: LCCOMB_X32_Y1_N28
\c_eth0|c_tx|c_phy|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~4_combout\ = (\c_eth0|c_tx|c_phy|Equal1~0_combout\ & (\c_eth0|c_tx|c_phy|Equal1~2_combout\ & (\c_eth0|c_tx|c_phy|Equal1~3_combout\ & \c_eth0|c_tx|c_phy|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~0_combout\,
	datab => \c_eth0|c_tx|c_phy|Equal1~2_combout\,
	datac => \c_eth0|c_tx|c_phy|Equal1~3_combout\,
	datad => \c_eth0|c_tx|c_phy|Equal1~1_combout\,
	combout => \c_eth0|c_tx|c_phy|Equal1~4_combout\);

-- Location: LCCOMB_X32_Y1_N14
\c_eth0|c_tx|c_phy|r_inactivity_counter[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~51_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~52\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~51_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~52\);

-- Location: FF_X32_Y1_N15
\c_eth0|c_tx|c_phy|r_inactivity_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~51_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16));

-- Location: LCCOMB_X32_Y1_N16
\c_eth0|c_tx|c_phy|r_inactivity_counter[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~53_combout\ = \c_eth0|c_tx|c_phy|r_inactivity_counter\(17) $ (\c_eth0|c_tx|c_phy|r_inactivity_counter[16]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17),
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~52\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~53_combout\);

-- Location: FF_X32_Y1_N17
\c_eth0|c_tx|c_phy|r_inactivity_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~53_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17));

-- Location: LCCOMB_X32_Y1_N26
\c_eth0|c_tx|c_phy|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~5_combout\ = (\c_eth0|c_tx|c_phy|Equal1~4_combout\ & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & \c_eth0|c_tx|c_phy|r_inactivity_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|Equal1~4_combout\,
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17),
	combout => \c_eth0|c_tx|c_phy|Equal1~5_combout\);

-- Location: LCCOMB_X33_Y2_N4
\c_eth0|c_tx|c_phy|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~3_combout\ = (\c_eth0|c_tx|c_phy|Selector2~2_combout\) # ((!\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\ & (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & !\c_eth0|c_tx|c_phy|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	datab => \c_eth0|c_tx|c_phy|Selector2~2_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~3_combout\);

-- Location: LCCOMB_X33_Y2_N2
\c_eth0|c_tx|c_phy|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~4_combout\ = (!\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\ & ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\) # (\c_eth0|c_tx|c_phy|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~4_combout\);

-- Location: LCCOMB_X33_Y2_N22
\c_eth0|c_tx|c_phy|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & (\c_eth0|c_tx|c_phy|Selector2~3_combout\ & (\c_eth0|c_tx|c_phy|state.NLP~q\))) # (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & ((\c_eth0|c_tx|c_phy|Selector2~4_combout\) # 
-- ((\c_eth0|c_tx|c_phy|Selector2~3_combout\ & \c_eth0|c_tx|c_phy|state.NLP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datab => \c_eth0|c_tx|c_phy|Selector2~3_combout\,
	datac => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datad => \c_eth0|c_tx|c_phy|Selector2~4_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~5_combout\);

-- Location: FF_X33_Y2_N23
\c_eth0|c_tx|c_phy|state.NLP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector2~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.NLP~q\);

-- Location: LCCOMB_X33_Y2_N6
\c_eth0|c_tx|c_phy|r_clk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\ = (!\c_eth0|c_tx|c_phy|r_clk_counter\(0) & (!\c_eth0|c_tx|c_phy|Selector2~4_combout\ & ((!\c_eth0|c_tx|c_phy|state.TX~q\) # (!\c_eth0|c_tx|c_phy|p_seq~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|p_seq~3_combout\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datad => \c_eth0|c_tx|c_phy|Selector2~4_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\);

-- Location: FF_X33_Y2_N7
\c_eth0|c_tx|c_phy|r_clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(0));

-- Location: LCCOMB_X33_Y2_N24
\c_eth0|c_tx|c_phy|r_clk_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~4_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter~0_combout\ & (\c_eth0|c_tx|c_phy|r_clk_counter\(0) $ (\c_eth0|c_tx|c_phy|r_clk_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~4_combout\);

-- Location: FF_X33_Y2_N25
\c_eth0|c_tx|c_phy|r_clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(1));

-- Location: LCCOMB_X32_Y2_N4
\c_eth0|c_tx|c_phy|r_clk_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~3_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter~0_combout\ & (\c_eth0|c_tx|c_phy|r_clk_counter\(2) $ (((\c_eth0|c_tx|c_phy|r_clk_counter\(0) & \c_eth0|c_tx|c_phy|r_clk_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\,
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~3_combout\);

-- Location: FF_X32_Y2_N5
\c_eth0|c_tx|c_phy|r_clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(2));

-- Location: LCCOMB_X32_Y2_N0
\c_eth0|c_tx|c_phy|p_seq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~3_combout\ = (!\c_eth0|c_tx|c_phy|r_clk_counter\(3) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(1) & (\c_eth0|c_tx|c_phy|r_clk_counter\(2) & !\c_eth0|c_tx|c_phy|r_clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	combout => \c_eth0|c_tx|c_phy|p_seq~3_combout\);

-- Location: LCCOMB_X33_Y2_N10
\c_eth0|c_tx|c_phy|r_clk_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\ = (!\c_eth0|c_tx|c_phy|Equal2~0_combout\ & (!\c_eth0|c_tx|c_phy|Selector2~4_combout\ & ((!\c_eth0|c_tx|c_phy|p_seq~3_combout\) # (!\c_eth0|c_tx|c_phy|state.TX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal2~0_combout\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|p_seq~3_combout\,
	datad => \c_eth0|c_tx|c_phy|Selector2~4_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\);

-- Location: LCCOMB_X32_Y2_N8
\c_eth0|c_tx|c_phy|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Add0~0_combout\ = \c_eth0|c_tx|c_phy|r_clk_counter\(3) $ (((\c_eth0|c_tx|c_phy|r_clk_counter\(1) & (\c_eth0|c_tx|c_phy|r_clk_counter\(2) & \c_eth0|c_tx|c_phy|r_clk_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	combout => \c_eth0|c_tx|c_phy|Add0~0_combout\);

-- Location: LCCOMB_X32_Y2_N10
\c_eth0|c_tx|c_phy|r_clk_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter~0_combout\ & \c_eth0|c_tx|c_phy|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\,
	datac => \c_eth0|c_tx|c_phy|Add0~0_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\);

-- Location: FF_X32_Y2_N11
\c_eth0|c_tx|c_phy|r_clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(3));

-- Location: LCCOMB_X32_Y2_N2
\c_eth0|c_tx|c_phy|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal2~0_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter\(3) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(1) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(2) & \c_eth0|c_tx|c_phy|r_clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	combout => \c_eth0|c_tx|c_phy|Equal2~0_combout\);

-- Location: LCCOMB_X33_Y2_N14
\c_eth0|c_tx|c_phy|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~2_combout\ = (\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\ & ((\c_eth0|c_tx|c_phy|state.NLP~q\ & ((!\c_eth0|c_tx|c_phy|Equal2~0_combout\))) # (!\c_eth0|c_tx|c_phy|state.NLP~q\ & (\c_eth0|c_tx|c_fsm_pt|tx_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datab => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datac => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	datad => \c_eth0|c_tx|c_phy|Equal2~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~2_combout\);

-- Location: LCCOMB_X33_Y2_N30
\c_eth0|c_tx|c_phy|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector0~0_combout\ = (\c_eth0|c_tx|c_phy|Selector2~2_combout\) # ((!\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\ & ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\) # (\c_eth0|c_tx|c_phy|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datab => \c_eth0|c_tx|c_phy|Selector2~2_combout\,
	datac => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	datad => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector0~0_combout\);

-- Location: FF_X33_Y2_N31
\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y2_N16
\c_eth0|c_tx|c_phy|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector1~4_combout\ = (\c_eth0|c_tx|c_phy|state.TX~q\ & ((\c_eth0|c_tx|c_phy|Selector2~2_combout\) # ((!\c_eth0|c_tx|c_phy|Equal1~5_combout\ & !\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datab => \c_eth0|c_tx|c_phy|Selector2~2_combout\,
	datac => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	datad => \c_eth0|c_tx|c_phy|state.TX~q\,
	combout => \c_eth0|c_tx|c_phy|Selector1~4_combout\);

-- Location: LCCOMB_X33_Y2_N18
\c_eth0|c_tx|c_phy|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector1~5_combout\ = (\c_eth0|c_tx|c_phy|Selector1~4_combout\) # ((!\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\ & \c_eth0|c_tx|c_fsm_pt|tx_active~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|Selector1~4_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector1~5_combout\);

-- Location: FF_X33_Y2_N19
\c_eth0|c_tx|c_phy|state.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector1~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.TX~q\);

-- Location: LCCOMB_X33_Y2_N8
\c_eth0|c_tx|c_phy|p_seq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & !\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	combout => \c_eth0|c_tx|c_phy|p_seq~2_combout\);

-- Location: LCCOMB_X32_Y2_N6
\c_eth0|c_tx|c_phy|r_mcn_phase~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\ = (!\c_eth0|c_tx|c_phy|p_seq~2_combout\ & (\c_eth0|c_tx|c_phy|r_mcn_phase~q\ $ (((\c_eth0|c_tx|c_phy|p_seq~3_combout\ & \c_eth0|c_tx|c_phy|state.TX~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	datab => \c_eth0|c_tx|c_phy|p_seq~3_combout\,
	datac => \c_eth0|c_tx|c_phy|p_seq~2_combout\,
	datad => \c_eth0|c_tx|c_phy|state.TX~q\,
	combout => \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\);

-- Location: FF_X33_Y2_N9
\c_eth0|c_tx|c_phy|r_mcn_phase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_mcn_phase~q\);

-- Location: LCCOMB_X33_Y2_N20
\c_eth0|c_tx|c_phy|r_nlp_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\ = (\c_eth0|c_tx|c_phy|r_nlp_out~q\) # ((!\c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\ & (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & \c_eth0|c_tx|c_phy|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_nlp_out~q\,
	datab => \c_eth0|c_tx|c_phy|state.IDLE~_Duplicate_1_q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	combout => \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\);

-- Location: LCCOMB_X33_Y2_N28
\c_eth0|c_tx|c_phy|r_nlp_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_nlp_out~1_combout\ = (\c_eth0|c_tx|c_phy|r_nlp_out~0_combout\ & ((!\c_eth0|c_tx|c_phy|state.NLP~q\) # (!\c_eth0|c_tx|c_phy|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal2~0_combout\,
	datab => \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\,
	datad => \c_eth0|c_tx|c_phy|state.NLP~q\,
	combout => \c_eth0|c_tx|c_phy|r_nlp_out~1_combout\);

-- Location: FF_X33_Y2_N29
\c_eth0|c_tx|c_phy|r_nlp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_nlp_out~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_nlp_out~q\);

-- Location: LCCOMB_X33_Y2_N0
\c_eth0|c_tx|c_phy|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector3~0_combout\ = (\c_eth0|c_tx|c_phy|state.NLP~q\ & \c_eth0|c_tx|c_phy|r_nlp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datad => \c_eth0|c_tx|c_phy|r_nlp_out~q\,
	combout => \c_eth0|c_tx|c_phy|Selector3~0_combout\);

-- Location: LCCOMB_X33_Y2_N12
\c_eth0|c_tx|c_phy|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector3~1_combout\ = (\c_eth0|c_tx|c_phy|Selector3~0_combout\) # ((\c_eth0|c_tx|c_phy|state.TX~q\ & (\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\ $ (!\c_eth0|c_tx|c_phy|r_mcn_phase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	datad => \c_eth0|c_tx|c_phy|Selector3~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector3~1_combout\);

-- Location: DDIOOUTCELL_X34_Y7_N11
\c_eth0|c_tx|c_phy|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.IDLE~q\);

-- Location: IOIBUF_X34_Y12_N22
\KEY1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\KEY2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\KEY3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\KEY4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY4,
	o => \KEY4~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\UART_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RX,
	o => \UART_RX~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\ETH0_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH0_RX,
	o => \ETH0_RX~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\ETH1_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH1_RX,
	o => \ETH1_RX~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\ETH2_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH2_RX,
	o => \ETH2_RX~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\ETH3_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH3_RX,
	o => \ETH3_RX~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\ETH4_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH4_RX,
	o => \ETH4_RX~input_o\);
END structure;


