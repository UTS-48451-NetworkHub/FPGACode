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

-- DATE "09/14/2025 23:46:18"

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
-- MAIN_CLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \c_reset_ctrl|btn_sync[0]~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[0]~20_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[15]~54_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[0]~21\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[1]~22_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[1]~23\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[2]~24_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[2]~25\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[3]~26_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[3]~27\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[4]~28_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[4]~29\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[5]~30_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[5]~31\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[6]~32_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[6]~33\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[7]~34_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[7]~35\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[8]~36_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[8]~37\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[9]~38_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[9]~39\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[10]~40_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[10]~41\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[11]~42_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[11]~43\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[12]~44_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[12]~45\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[13]~46_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[13]~47\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[14]~48_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[14]~49\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[15]~50_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[15]~51\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[16]~52_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[16]~53\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[17]~55_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[17]~56\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[18]~57_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[18]~58\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[19]~59_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~5_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~6_combout\ : std_logic;
SIGNAL \c_reset_ctrl|stable~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|stable~q\ : std_logic;
SIGNAL \c_reset_ctrl|reset_ff[0]~1_combout\ : std_logic;
SIGNAL \c_reset_ctrl|reset_ff~0_combout\ : std_logic;
SIGNAL \MAIN_CLK~input_o\ : std_logic;
SIGNAL \c_pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.LAST~q\ : std_logic;
SIGNAL \debug_tx|Add1~0_combout\ : std_logic;
SIGNAL \debug_tx|idx~6_combout\ : std_logic;
SIGNAL \debug_tx|delay_cnt[0]~5_combout\ : std_logic;
SIGNAL \debug_tx|delay_cnt[1]~4_combout\ : std_logic;
SIGNAL \debug_tx|delay_cnt[3]~1_combout\ : std_logic;
SIGNAL \debug_tx|delay_cnt[3]~2_combout\ : std_logic;
SIGNAL \debug_tx|delay_cnt[3]~0_combout\ : std_logic;
SIGNAL \debug_tx|delay_cnt[2]~3_combout\ : std_logic;
SIGNAL \debug_tx|tlast_r~0_combout\ : std_logic;
SIGNAL \debug_tx|Add1~11\ : std_logic;
SIGNAL \debug_tx|Add1~12_combout\ : std_logic;
SIGNAL \debug_tx|idx~5_combout\ : std_logic;
SIGNAL \debug_tx|Equal0~0_combout\ : std_logic;
SIGNAL \debug_tx|Equal0~1_combout\ : std_logic;
SIGNAL \debug_tx|idx~0_combout\ : std_logic;
SIGNAL \debug_tx|Add1~1\ : std_logic;
SIGNAL \debug_tx|Add1~2_combout\ : std_logic;
SIGNAL \debug_tx|idx~2_combout\ : std_logic;
SIGNAL \debug_tx|Add1~3\ : std_logic;
SIGNAL \debug_tx|Add1~4_combout\ : std_logic;
SIGNAL \debug_tx|idx~1_combout\ : std_logic;
SIGNAL \debug_tx|Add1~5\ : std_logic;
SIGNAL \debug_tx|Add1~6_combout\ : std_logic;
SIGNAL \debug_tx|idx~4_combout\ : std_logic;
SIGNAL \debug_tx|Add1~7\ : std_logic;
SIGNAL \debug_tx|Add1~8_combout\ : std_logic;
SIGNAL \debug_tx|idx~3_combout\ : std_logic;
SIGNAL \debug_tx|Add1~9\ : std_logic;
SIGNAL \debug_tx|Add1~10_combout\ : std_logic;
SIGNAL \debug_tx|idx~7_combout\ : std_logic;
SIGNAL \debug_tx|Equal1~0_combout\ : std_logic;
SIGNAL \debug_tx|tlast_r~1_combout\ : std_logic;
SIGNAL \debug_tx|tlast_r~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|packet_valid~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|packet_valid~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\ : std_logic;
SIGNAL \debug_tx|active~0_combout\ : std_logic;
SIGNAL \debug_tx|active~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.READY~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|p_seq~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~30_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~23_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~29_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~33_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~34_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~1\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~3\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~5\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~7\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~9\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~11\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~12_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Equal1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~13\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~14_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~15\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~17\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~19\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Equal1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~17_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|mem_state~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~31\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~28_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~33\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~24_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~31_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~25_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~26_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~27_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~28_combout\ : std_logic;
SIGNAL \debug_tx|Mux4~2_combout\ : std_logic;
SIGNAL \debug_tx|Mux4~0_combout\ : std_logic;
SIGNAL \debug_tx|Mux4~3_combout\ : std_logic;
SIGNAL \debug_tx|Mux4~4_combout\ : std_logic;
SIGNAL \debug_tx|Mux4~1_combout\ : std_logic;
SIGNAL \debug_tx|Mux4~5_combout\ : std_logic;
SIGNAL \debug_tx|Mux3~2_combout\ : std_logic;
SIGNAL \debug_tx|Mux3~0_combout\ : std_logic;
SIGNAL \debug_tx|Mux3~1_combout\ : std_logic;
SIGNAL \debug_tx|Mux3~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\ : std_logic;
SIGNAL \debug_tx|Mux7~4_combout\ : std_logic;
SIGNAL \debug_tx|Mux7~1_combout\ : std_logic;
SIGNAL \debug_tx|Mux7~2_combout\ : std_logic;
SIGNAL \debug_tx|Mux7~3_combout\ : std_logic;
SIGNAL \debug_tx|Mux7~0_combout\ : std_logic;
SIGNAL \debug_tx|Mux7~5_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~16_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~14_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~15_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~17_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~18_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~19_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~20_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~21_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~22_combout\ : std_logic;
SIGNAL \debug_tx|Mux1~4_combout\ : std_logic;
SIGNAL \debug_tx|Mux1~2_combout\ : std_logic;
SIGNAL \debug_tx|Mux1~1_combout\ : std_logic;
SIGNAL \debug_tx|Mux1~3_combout\ : std_logic;
SIGNAL \debug_tx|Mux1~0_combout\ : std_logic;
SIGNAL \debug_tx|Mux1~5_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~11_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~12_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~8_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~7_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~32_combout\ : std_logic;
SIGNAL \debug_tx|tdata_r~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~1\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~3\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~5\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~7\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~9\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~11\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~15_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.IFG~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11_combout\ : std_logic;
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
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~24_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~25\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~26_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~18_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ : std_logic;
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
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~13\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~15\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~17\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~18_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Add0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector0~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Add0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_valid~q\ : std_logic;
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
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~19_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~20\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~21_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~22\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~23_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~24\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~25_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~26\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~27_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~28\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~29_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~30\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~31_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~32\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~33_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~34\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~35_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~36\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~37_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~38\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~39_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~40\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~41_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~42\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~43_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~44\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~45_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~46\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~47_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~48\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~49_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~50\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~51_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~52\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~53_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|tx_active~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.NLP~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Add0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector0~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.IDLE~q\ : std_logic;
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
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_packet_length\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debug_tx|tdata_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \debug_tx|idx\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \c_reset_ctrl|cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_reset_ctrl|reset_ff\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_reset_ctrl|btn_sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \debug_tx|delay_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debug_tx|ALT_INV_active~q\ : std_logic;

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

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\debug_tx|tdata_r\(7) & \debug_tx|tdata_r\(6) & \debug_tx|tdata_r\(5) & \debug_tx|tdata_r\(0));

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(10) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0));

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ & 
\c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\
& \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\debug_tx|tdata_r\(4) & \debug_tx|tdata_r\(3) & \debug_tx|tdata_r\(2) & \debug_tx|tdata_r\(1));

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(10) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0));

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ & 
\c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\
& \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(1);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(2);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(3);
\debug_tx|ALT_INV_active~q\ <= NOT \debug_tx|active~q\;

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
	i => VCC,
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

-- Location: LCCOMB_X18_Y13_N8
\c_reset_ctrl|btn_sync[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|btn_sync[0]~0_combout\ = !\RESET~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	combout => \c_reset_ctrl|btn_sync[0]~0_combout\);

-- Location: FF_X18_Y13_N9
\c_reset_ctrl|btn_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|btn_sync[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|btn_sync\(0));

-- Location: FF_X18_Y13_N7
\c_reset_ctrl|btn_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_reset_ctrl|btn_sync\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|btn_sync\(1));

-- Location: LCCOMB_X21_Y14_N12
\c_reset_ctrl|cnt[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[0]~20_combout\ = \c_reset_ctrl|cnt\(0) $ (VCC)
-- \c_reset_ctrl|cnt[0]~21\ = CARRY(\c_reset_ctrl|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(0),
	datad => VCC,
	combout => \c_reset_ctrl|cnt[0]~20_combout\,
	cout => \c_reset_ctrl|cnt[0]~21\);

-- Location: LCCOMB_X18_Y13_N6
\c_reset_ctrl|cnt[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[15]~54_combout\ = (\c_reset_ctrl|stable~q\ $ (!\c_reset_ctrl|btn_sync\(1))) # (!\c_reset_ctrl|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|stable~q\,
	datac => \c_reset_ctrl|btn_sync\(1),
	datad => \c_reset_ctrl|Equal0~6_combout\,
	combout => \c_reset_ctrl|cnt[15]~54_combout\);

-- Location: FF_X21_Y14_N13
\c_reset_ctrl|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[0]~20_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(0));

-- Location: LCCOMB_X21_Y14_N14
\c_reset_ctrl|cnt[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[1]~22_combout\ = (\c_reset_ctrl|cnt\(1) & (!\c_reset_ctrl|cnt[0]~21\)) # (!\c_reset_ctrl|cnt\(1) & ((\c_reset_ctrl|cnt[0]~21\) # (GND)))
-- \c_reset_ctrl|cnt[1]~23\ = CARRY((!\c_reset_ctrl|cnt[0]~21\) # (!\c_reset_ctrl|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(1),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[0]~21\,
	combout => \c_reset_ctrl|cnt[1]~22_combout\,
	cout => \c_reset_ctrl|cnt[1]~23\);

-- Location: FF_X21_Y14_N15
\c_reset_ctrl|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[1]~22_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(1));

-- Location: LCCOMB_X21_Y14_N16
\c_reset_ctrl|cnt[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[2]~24_combout\ = (\c_reset_ctrl|cnt\(2) & (\c_reset_ctrl|cnt[1]~23\ $ (GND))) # (!\c_reset_ctrl|cnt\(2) & (!\c_reset_ctrl|cnt[1]~23\ & VCC))
-- \c_reset_ctrl|cnt[2]~25\ = CARRY((\c_reset_ctrl|cnt\(2) & !\c_reset_ctrl|cnt[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(2),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[1]~23\,
	combout => \c_reset_ctrl|cnt[2]~24_combout\,
	cout => \c_reset_ctrl|cnt[2]~25\);

-- Location: FF_X21_Y14_N17
\c_reset_ctrl|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[2]~24_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(2));

-- Location: LCCOMB_X21_Y14_N18
\c_reset_ctrl|cnt[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[3]~26_combout\ = (\c_reset_ctrl|cnt\(3) & (!\c_reset_ctrl|cnt[2]~25\)) # (!\c_reset_ctrl|cnt\(3) & ((\c_reset_ctrl|cnt[2]~25\) # (GND)))
-- \c_reset_ctrl|cnt[3]~27\ = CARRY((!\c_reset_ctrl|cnt[2]~25\) # (!\c_reset_ctrl|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(3),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[2]~25\,
	combout => \c_reset_ctrl|cnt[3]~26_combout\,
	cout => \c_reset_ctrl|cnt[3]~27\);

-- Location: FF_X21_Y14_N19
\c_reset_ctrl|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[3]~26_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(3));

-- Location: LCCOMB_X21_Y14_N8
\c_reset_ctrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~1_combout\ = (\c_reset_ctrl|cnt\(0)) # ((\c_reset_ctrl|cnt\(2)) # ((\c_reset_ctrl|cnt\(1)) # (\c_reset_ctrl|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(0),
	datab => \c_reset_ctrl|cnt\(2),
	datac => \c_reset_ctrl|cnt\(1),
	datad => \c_reset_ctrl|cnt\(3),
	combout => \c_reset_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y14_N20
\c_reset_ctrl|cnt[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[4]~28_combout\ = (\c_reset_ctrl|cnt\(4) & (\c_reset_ctrl|cnt[3]~27\ $ (GND))) # (!\c_reset_ctrl|cnt\(4) & (!\c_reset_ctrl|cnt[3]~27\ & VCC))
-- \c_reset_ctrl|cnt[4]~29\ = CARRY((\c_reset_ctrl|cnt\(4) & !\c_reset_ctrl|cnt[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(4),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[3]~27\,
	combout => \c_reset_ctrl|cnt[4]~28_combout\,
	cout => \c_reset_ctrl|cnt[4]~29\);

-- Location: FF_X21_Y14_N21
\c_reset_ctrl|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[4]~28_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(4));

-- Location: LCCOMB_X21_Y14_N22
\c_reset_ctrl|cnt[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[5]~30_combout\ = (\c_reset_ctrl|cnt\(5) & (!\c_reset_ctrl|cnt[4]~29\)) # (!\c_reset_ctrl|cnt\(5) & ((\c_reset_ctrl|cnt[4]~29\) # (GND)))
-- \c_reset_ctrl|cnt[5]~31\ = CARRY((!\c_reset_ctrl|cnt[4]~29\) # (!\c_reset_ctrl|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(5),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[4]~29\,
	combout => \c_reset_ctrl|cnt[5]~30_combout\,
	cout => \c_reset_ctrl|cnt[5]~31\);

-- Location: FF_X21_Y14_N23
\c_reset_ctrl|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[5]~30_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(5));

-- Location: LCCOMB_X21_Y14_N24
\c_reset_ctrl|cnt[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[6]~32_combout\ = (\c_reset_ctrl|cnt\(6) & (\c_reset_ctrl|cnt[5]~31\ $ (GND))) # (!\c_reset_ctrl|cnt\(6) & (!\c_reset_ctrl|cnt[5]~31\ & VCC))
-- \c_reset_ctrl|cnt[6]~33\ = CARRY((\c_reset_ctrl|cnt\(6) & !\c_reset_ctrl|cnt[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(6),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[5]~31\,
	combout => \c_reset_ctrl|cnt[6]~32_combout\,
	cout => \c_reset_ctrl|cnt[6]~33\);

-- Location: FF_X21_Y14_N25
\c_reset_ctrl|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[6]~32_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(6));

-- Location: LCCOMB_X21_Y14_N26
\c_reset_ctrl|cnt[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[7]~34_combout\ = (\c_reset_ctrl|cnt\(7) & (!\c_reset_ctrl|cnt[6]~33\)) # (!\c_reset_ctrl|cnt\(7) & ((\c_reset_ctrl|cnt[6]~33\) # (GND)))
-- \c_reset_ctrl|cnt[7]~35\ = CARRY((!\c_reset_ctrl|cnt[6]~33\) # (!\c_reset_ctrl|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(7),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[6]~33\,
	combout => \c_reset_ctrl|cnt[7]~34_combout\,
	cout => \c_reset_ctrl|cnt[7]~35\);

-- Location: FF_X21_Y14_N27
\c_reset_ctrl|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[7]~34_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(7));

-- Location: LCCOMB_X21_Y14_N10
\c_reset_ctrl|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~2_combout\ = (\c_reset_ctrl|cnt\(7)) # ((\c_reset_ctrl|cnt\(4)) # ((\c_reset_ctrl|cnt\(5)) # (!\c_reset_ctrl|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(7),
	datab => \c_reset_ctrl|cnt\(4),
	datac => \c_reset_ctrl|cnt\(5),
	datad => \c_reset_ctrl|cnt\(6),
	combout => \c_reset_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y14_N4
\c_reset_ctrl|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~3_combout\ = (\c_reset_ctrl|Equal0~1_combout\) # (\c_reset_ctrl|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|Equal0~1_combout\,
	datad => \c_reset_ctrl|Equal0~2_combout\,
	combout => \c_reset_ctrl|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y14_N28
\c_reset_ctrl|cnt[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[8]~36_combout\ = (\c_reset_ctrl|cnt\(8) & (\c_reset_ctrl|cnt[7]~35\ $ (GND))) # (!\c_reset_ctrl|cnt\(8) & (!\c_reset_ctrl|cnt[7]~35\ & VCC))
-- \c_reset_ctrl|cnt[8]~37\ = CARRY((\c_reset_ctrl|cnt\(8) & !\c_reset_ctrl|cnt[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(8),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[7]~35\,
	combout => \c_reset_ctrl|cnt[8]~36_combout\,
	cout => \c_reset_ctrl|cnt[8]~37\);

-- Location: FF_X21_Y14_N29
\c_reset_ctrl|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[8]~36_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(8));

-- Location: LCCOMB_X21_Y14_N30
\c_reset_ctrl|cnt[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[9]~38_combout\ = (\c_reset_ctrl|cnt\(9) & (!\c_reset_ctrl|cnt[8]~37\)) # (!\c_reset_ctrl|cnt\(9) & ((\c_reset_ctrl|cnt[8]~37\) # (GND)))
-- \c_reset_ctrl|cnt[9]~39\ = CARRY((!\c_reset_ctrl|cnt[8]~37\) # (!\c_reset_ctrl|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(9),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[8]~37\,
	combout => \c_reset_ctrl|cnt[9]~38_combout\,
	cout => \c_reset_ctrl|cnt[9]~39\);

-- Location: FF_X21_Y14_N31
\c_reset_ctrl|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[9]~38_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(9));

-- Location: LCCOMB_X21_Y13_N0
\c_reset_ctrl|cnt[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[10]~40_combout\ = (\c_reset_ctrl|cnt\(10) & (\c_reset_ctrl|cnt[9]~39\ $ (GND))) # (!\c_reset_ctrl|cnt\(10) & (!\c_reset_ctrl|cnt[9]~39\ & VCC))
-- \c_reset_ctrl|cnt[10]~41\ = CARRY((\c_reset_ctrl|cnt\(10) & !\c_reset_ctrl|cnt[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(10),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[9]~39\,
	combout => \c_reset_ctrl|cnt[10]~40_combout\,
	cout => \c_reset_ctrl|cnt[10]~41\);

-- Location: FF_X21_Y13_N1
\c_reset_ctrl|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[10]~40_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(10));

-- Location: LCCOMB_X21_Y13_N2
\c_reset_ctrl|cnt[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[11]~42_combout\ = (\c_reset_ctrl|cnt\(11) & (!\c_reset_ctrl|cnt[10]~41\)) # (!\c_reset_ctrl|cnt\(11) & ((\c_reset_ctrl|cnt[10]~41\) # (GND)))
-- \c_reset_ctrl|cnt[11]~43\ = CARRY((!\c_reset_ctrl|cnt[10]~41\) # (!\c_reset_ctrl|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(11),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[10]~41\,
	combout => \c_reset_ctrl|cnt[11]~42_combout\,
	cout => \c_reset_ctrl|cnt[11]~43\);

-- Location: FF_X21_Y13_N3
\c_reset_ctrl|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[11]~42_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(11));

-- Location: LCCOMB_X21_Y13_N4
\c_reset_ctrl|cnt[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[12]~44_combout\ = (\c_reset_ctrl|cnt\(12) & (\c_reset_ctrl|cnt[11]~43\ $ (GND))) # (!\c_reset_ctrl|cnt\(12) & (!\c_reset_ctrl|cnt[11]~43\ & VCC))
-- \c_reset_ctrl|cnt[12]~45\ = CARRY((\c_reset_ctrl|cnt\(12) & !\c_reset_ctrl|cnt[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(12),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[11]~43\,
	combout => \c_reset_ctrl|cnt[12]~44_combout\,
	cout => \c_reset_ctrl|cnt[12]~45\);

-- Location: FF_X21_Y13_N5
\c_reset_ctrl|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[12]~44_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(12));

-- Location: LCCOMB_X21_Y13_N6
\c_reset_ctrl|cnt[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[13]~46_combout\ = (\c_reset_ctrl|cnt\(13) & (!\c_reset_ctrl|cnt[12]~45\)) # (!\c_reset_ctrl|cnt\(13) & ((\c_reset_ctrl|cnt[12]~45\) # (GND)))
-- \c_reset_ctrl|cnt[13]~47\ = CARRY((!\c_reset_ctrl|cnt[12]~45\) # (!\c_reset_ctrl|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(13),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[12]~45\,
	combout => \c_reset_ctrl|cnt[13]~46_combout\,
	cout => \c_reset_ctrl|cnt[13]~47\);

-- Location: FF_X21_Y13_N7
\c_reset_ctrl|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[13]~46_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(13));

-- Location: LCCOMB_X21_Y13_N8
\c_reset_ctrl|cnt[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[14]~48_combout\ = (\c_reset_ctrl|cnt\(14) & (\c_reset_ctrl|cnt[13]~47\ $ (GND))) # (!\c_reset_ctrl|cnt\(14) & (!\c_reset_ctrl|cnt[13]~47\ & VCC))
-- \c_reset_ctrl|cnt[14]~49\ = CARRY((\c_reset_ctrl|cnt\(14) & !\c_reset_ctrl|cnt[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(14),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[13]~47\,
	combout => \c_reset_ctrl|cnt[14]~48_combout\,
	cout => \c_reset_ctrl|cnt[14]~49\);

-- Location: FF_X21_Y13_N9
\c_reset_ctrl|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[14]~48_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(14));

-- Location: LCCOMB_X21_Y13_N10
\c_reset_ctrl|cnt[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[15]~50_combout\ = (\c_reset_ctrl|cnt\(15) & (!\c_reset_ctrl|cnt[14]~49\)) # (!\c_reset_ctrl|cnt\(15) & ((\c_reset_ctrl|cnt[14]~49\) # (GND)))
-- \c_reset_ctrl|cnt[15]~51\ = CARRY((!\c_reset_ctrl|cnt[14]~49\) # (!\c_reset_ctrl|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(15),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[14]~49\,
	combout => \c_reset_ctrl|cnt[15]~50_combout\,
	cout => \c_reset_ctrl|cnt[15]~51\);

-- Location: FF_X21_Y13_N11
\c_reset_ctrl|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[15]~50_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(15));

-- Location: LCCOMB_X21_Y13_N12
\c_reset_ctrl|cnt[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[16]~52_combout\ = (\c_reset_ctrl|cnt\(16) & (\c_reset_ctrl|cnt[15]~51\ $ (GND))) # (!\c_reset_ctrl|cnt\(16) & (!\c_reset_ctrl|cnt[15]~51\ & VCC))
-- \c_reset_ctrl|cnt[16]~53\ = CARRY((\c_reset_ctrl|cnt\(16) & !\c_reset_ctrl|cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(16),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[15]~51\,
	combout => \c_reset_ctrl|cnt[16]~52_combout\,
	cout => \c_reset_ctrl|cnt[16]~53\);

-- Location: FF_X21_Y13_N13
\c_reset_ctrl|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[16]~52_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(16));

-- Location: LCCOMB_X21_Y13_N14
\c_reset_ctrl|cnt[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[17]~55_combout\ = (\c_reset_ctrl|cnt\(17) & (!\c_reset_ctrl|cnt[16]~53\)) # (!\c_reset_ctrl|cnt\(17) & ((\c_reset_ctrl|cnt[16]~53\) # (GND)))
-- \c_reset_ctrl|cnt[17]~56\ = CARRY((!\c_reset_ctrl|cnt[16]~53\) # (!\c_reset_ctrl|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(17),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[16]~53\,
	combout => \c_reset_ctrl|cnt[17]~55_combout\,
	cout => \c_reset_ctrl|cnt[17]~56\);

-- Location: FF_X21_Y13_N15
\c_reset_ctrl|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[17]~55_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(17));

-- Location: LCCOMB_X21_Y13_N16
\c_reset_ctrl|cnt[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[18]~57_combout\ = (\c_reset_ctrl|cnt\(18) & (\c_reset_ctrl|cnt[17]~56\ $ (GND))) # (!\c_reset_ctrl|cnt\(18) & (!\c_reset_ctrl|cnt[17]~56\ & VCC))
-- \c_reset_ctrl|cnt[18]~58\ = CARRY((\c_reset_ctrl|cnt\(18) & !\c_reset_ctrl|cnt[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(18),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[17]~56\,
	combout => \c_reset_ctrl|cnt[18]~57_combout\,
	cout => \c_reset_ctrl|cnt[18]~58\);

-- Location: FF_X21_Y13_N17
\c_reset_ctrl|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[18]~57_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(18));

-- Location: LCCOMB_X21_Y13_N18
\c_reset_ctrl|cnt[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[19]~59_combout\ = \c_reset_ctrl|cnt\(19) $ (\c_reset_ctrl|cnt[18]~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(19),
	cin => \c_reset_ctrl|cnt[18]~58\,
	combout => \c_reset_ctrl|cnt[19]~59_combout\);

-- Location: FF_X21_Y13_N19
\c_reset_ctrl|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[19]~59_combout\,
	sclr => \c_reset_ctrl|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(19));

-- Location: LCCOMB_X21_Y13_N28
\c_reset_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~0_combout\ = (((!\c_reset_ctrl|cnt\(18)) # (!\c_reset_ctrl|cnt\(17))) # (!\c_reset_ctrl|cnt\(19))) # (!\c_reset_ctrl|cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(16),
	datab => \c_reset_ctrl|cnt\(19),
	datac => \c_reset_ctrl|cnt\(17),
	datad => \c_reset_ctrl|cnt\(18),
	combout => \c_reset_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y13_N22
\c_reset_ctrl|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~4_combout\ = ((\c_reset_ctrl|cnt\(11)) # ((\c_reset_ctrl|cnt\(8)) # (\c_reset_ctrl|cnt\(10)))) # (!\c_reset_ctrl|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(9),
	datab => \c_reset_ctrl|cnt\(11),
	datac => \c_reset_ctrl|cnt\(8),
	datad => \c_reset_ctrl|cnt\(10),
	combout => \c_reset_ctrl|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y13_N24
\c_reset_ctrl|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~5_combout\ = (\c_reset_ctrl|cnt\(15)) # ((\c_reset_ctrl|cnt\(12)) # ((\c_reset_ctrl|cnt\(13)) # (!\c_reset_ctrl|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(15),
	datab => \c_reset_ctrl|cnt\(12),
	datac => \c_reset_ctrl|cnt\(14),
	datad => \c_reset_ctrl|cnt\(13),
	combout => \c_reset_ctrl|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y13_N26
\c_reset_ctrl|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~6_combout\ = (\c_reset_ctrl|Equal0~3_combout\) # ((\c_reset_ctrl|Equal0~0_combout\) # ((\c_reset_ctrl|Equal0~4_combout\) # (\c_reset_ctrl|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|Equal0~3_combout\,
	datab => \c_reset_ctrl|Equal0~0_combout\,
	datac => \c_reset_ctrl|Equal0~4_combout\,
	datad => \c_reset_ctrl|Equal0~5_combout\,
	combout => \c_reset_ctrl|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y13_N12
\c_reset_ctrl|stable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|stable~0_combout\ = (\c_reset_ctrl|Equal0~6_combout\ & ((\c_reset_ctrl|stable~q\))) # (!\c_reset_ctrl|Equal0~6_combout\ & (\c_reset_ctrl|btn_sync\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|btn_sync\(1),
	datac => \c_reset_ctrl|stable~q\,
	datad => \c_reset_ctrl|Equal0~6_combout\,
	combout => \c_reset_ctrl|stable~0_combout\);

-- Location: FF_X18_Y13_N13
\c_reset_ctrl|stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|stable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|stable~q\);

-- Location: LCCOMB_X18_Y13_N10
\c_reset_ctrl|reset_ff[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|reset_ff[0]~1_combout\ = !\c_reset_ctrl|stable~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|stable~q\,
	combout => \c_reset_ctrl|reset_ff[0]~1_combout\);

-- Location: FF_X18_Y13_N11
\c_reset_ctrl|reset_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|reset_ff[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|reset_ff\(0));

-- Location: LCCOMB_X18_Y13_N0
\c_reset_ctrl|reset_ff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|reset_ff~0_combout\ = (\c_reset_ctrl|reset_ff\(0) & !\c_reset_ctrl|stable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|reset_ff\(0),
	datad => \c_reset_ctrl|stable~q\,
	combout => \c_reset_ctrl|reset_ff~0_combout\);

-- Location: FF_X18_Y13_N1
\c_reset_ctrl|reset_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|reset_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|reset_ff\(1));

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
	areset => \c_reset_ctrl|reset_ff\(1),
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

-- Location: LCCOMB_X24_Y15_N20
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\) # ((!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\) # (!\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\);

-- Location: LCCOMB_X25_Y19_N2
\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0) $ (VCC)
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\ = CARRY(\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\);

-- Location: LCCOMB_X24_Y19_N16
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

-- Location: FF_X21_Y15_N31
\c_eth0|c_tx|c_fsm_axi|state.LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\);

-- Location: LCCOMB_X23_Y11_N0
\debug_tx|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Add1~0_combout\ = \debug_tx|idx\(0) $ (VCC)
-- \debug_tx|Add1~1\ = CARRY(\debug_tx|idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(0),
	datad => VCC,
	combout => \debug_tx|Add1~0_combout\,
	cout => \debug_tx|Add1~1\);

-- Location: LCCOMB_X23_Y15_N6
\debug_tx|idx~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~6_combout\ = (\debug_tx|Add1~0_combout\ & \debug_tx|active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~0_combout\,
	datad => \debug_tx|active~q\,
	combout => \debug_tx|idx~6_combout\);

-- Location: LCCOMB_X24_Y14_N16
\debug_tx|delay_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|delay_cnt[0]~5_combout\ = \debug_tx|delay_cnt[3]~0_combout\ $ (!\debug_tx|delay_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|delay_cnt[3]~0_combout\,
	datac => \debug_tx|delay_cnt\(0),
	combout => \debug_tx|delay_cnt[0]~5_combout\);

-- Location: FF_X24_Y14_N17
\debug_tx|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|delay_cnt[0]~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|delay_cnt\(0));

-- Location: LCCOMB_X24_Y14_N24
\debug_tx|delay_cnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|delay_cnt[1]~4_combout\ = \debug_tx|delay_cnt\(1) $ (((!\debug_tx|delay_cnt[3]~0_combout\ & \debug_tx|delay_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|delay_cnt[3]~0_combout\,
	datac => \debug_tx|delay_cnt\(1),
	datad => \debug_tx|delay_cnt\(0),
	combout => \debug_tx|delay_cnt[1]~4_combout\);

-- Location: FF_X24_Y14_N25
\debug_tx|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|delay_cnt[1]~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|delay_cnt\(1));

-- Location: LCCOMB_X24_Y14_N20
\debug_tx|delay_cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|delay_cnt[3]~1_combout\ = (\debug_tx|delay_cnt\(2) & (\debug_tx|delay_cnt\(0) & (!\debug_tx|delay_cnt[3]~0_combout\ & \debug_tx|delay_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|delay_cnt\(2),
	datab => \debug_tx|delay_cnt\(0),
	datac => \debug_tx|delay_cnt[3]~0_combout\,
	datad => \debug_tx|delay_cnt\(1),
	combout => \debug_tx|delay_cnt[3]~1_combout\);

-- Location: LCCOMB_X24_Y14_N12
\debug_tx|delay_cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|delay_cnt[3]~2_combout\ = \debug_tx|delay_cnt\(3) $ (\debug_tx|delay_cnt[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debug_tx|delay_cnt\(3),
	datad => \debug_tx|delay_cnt[3]~1_combout\,
	combout => \debug_tx|delay_cnt[3]~2_combout\);

-- Location: FF_X24_Y14_N13
\debug_tx|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|delay_cnt[3]~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|delay_cnt\(3));

-- Location: LCCOMB_X24_Y14_N26
\debug_tx|delay_cnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|delay_cnt[3]~0_combout\ = (\debug_tx|active~q\) # ((\debug_tx|delay_cnt\(3) & ((\debug_tx|delay_cnt\(2)) # (\debug_tx|delay_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|delay_cnt\(2),
	datab => \debug_tx|delay_cnt\(1),
	datac => \debug_tx|active~q\,
	datad => \debug_tx|delay_cnt\(3),
	combout => \debug_tx|delay_cnt[3]~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\debug_tx|delay_cnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|delay_cnt[2]~3_combout\ = \debug_tx|delay_cnt\(2) $ (((!\debug_tx|delay_cnt[3]~0_combout\ & (\debug_tx|delay_cnt\(0) & \debug_tx|delay_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|delay_cnt[3]~0_combout\,
	datab => \debug_tx|delay_cnt\(0),
	datac => \debug_tx|delay_cnt\(2),
	datad => \debug_tx|delay_cnt\(1),
	combout => \debug_tx|delay_cnt[2]~3_combout\);

-- Location: FF_X24_Y14_N23
\debug_tx|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|delay_cnt[2]~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|delay_cnt\(2));

-- Location: LCCOMB_X24_Y14_N18
\debug_tx|tlast_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tlast_r~0_combout\ = (!\debug_tx|active~q\ & (\debug_tx|delay_cnt\(3) & ((\debug_tx|delay_cnt\(2)) # (\debug_tx|delay_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|delay_cnt\(2),
	datab => \debug_tx|delay_cnt\(1),
	datac => \debug_tx|active~q\,
	datad => \debug_tx|delay_cnt\(3),
	combout => \debug_tx|tlast_r~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\debug_tx|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Add1~10_combout\ = (\debug_tx|idx\(5) & (!\debug_tx|Add1~9\)) # (!\debug_tx|idx\(5) & ((\debug_tx|Add1~9\) # (GND)))
-- \debug_tx|Add1~11\ = CARRY((!\debug_tx|Add1~9\) # (!\debug_tx|idx\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(5),
	datad => VCC,
	cin => \debug_tx|Add1~9\,
	combout => \debug_tx|Add1~10_combout\,
	cout => \debug_tx|Add1~11\);

-- Location: LCCOMB_X23_Y11_N12
\debug_tx|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Add1~12_combout\ = \debug_tx|idx\(6) $ (!\debug_tx|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|idx\(6),
	cin => \debug_tx|Add1~11\,
	combout => \debug_tx|Add1~12_combout\);

-- Location: LCCOMB_X24_Y14_N10
\debug_tx|idx~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~5_combout\ = (\debug_tx|Add1~12_combout\ & \debug_tx|active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~12_combout\,
	datab => \debug_tx|active~q\,
	combout => \debug_tx|idx~5_combout\);

-- Location: FF_X24_Y14_N11
\debug_tx|idx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|idx~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|idx\(6));

-- Location: LCCOMB_X23_Y14_N24
\debug_tx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Equal0~0_combout\ = (!\debug_tx|idx\(3) & (!\debug_tx|idx\(1) & (!\debug_tx|idx\(4) & !\debug_tx|idx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(3),
	datab => \debug_tx|idx\(1),
	datac => \debug_tx|idx\(4),
	datad => \debug_tx|idx\(2),
	combout => \debug_tx|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\debug_tx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Equal0~1_combout\ = (!\debug_tx|idx\(5) & (\debug_tx|idx\(0) & (\debug_tx|idx\(6) & \debug_tx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(5),
	datab => \debug_tx|idx\(0),
	datac => \debug_tx|idx\(6),
	datad => \debug_tx|Equal0~0_combout\,
	combout => \debug_tx|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y14_N30
\debug_tx|idx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~0_combout\ = (\debug_tx|tlast_r~0_combout\) # ((\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\ & (\debug_tx|active~q\ & !\debug_tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datab => \debug_tx|tlast_r~0_combout\,
	datac => \debug_tx|active~q\,
	datad => \debug_tx|Equal0~1_combout\,
	combout => \debug_tx|idx~0_combout\);

-- Location: FF_X23_Y15_N7
\debug_tx|idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|idx~6_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|idx\(0));

-- Location: LCCOMB_X23_Y11_N2
\debug_tx|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Add1~2_combout\ = (\debug_tx|idx\(1) & (!\debug_tx|Add1~1\)) # (!\debug_tx|idx\(1) & ((\debug_tx|Add1~1\) # (GND)))
-- \debug_tx|Add1~3\ = CARRY((!\debug_tx|Add1~1\) # (!\debug_tx|idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|idx\(1),
	datad => VCC,
	cin => \debug_tx|Add1~1\,
	combout => \debug_tx|Add1~2_combout\,
	cout => \debug_tx|Add1~3\);

-- Location: LCCOMB_X23_Y11_N16
\debug_tx|idx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~2_combout\ = (\debug_tx|Add1~2_combout\ & \debug_tx|active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|Add1~2_combout\,
	datac => \debug_tx|active~q\,
	combout => \debug_tx|idx~2_combout\);

-- Location: FF_X23_Y11_N17
\debug_tx|idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|idx~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|idx\(1));

-- Location: LCCOMB_X23_Y11_N4
\debug_tx|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Add1~4_combout\ = (\debug_tx|idx\(2) & (\debug_tx|Add1~3\ $ (GND))) # (!\debug_tx|idx\(2) & (!\debug_tx|Add1~3\ & VCC))
-- \debug_tx|Add1~5\ = CARRY((\debug_tx|idx\(2) & !\debug_tx|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|idx\(2),
	datad => VCC,
	cin => \debug_tx|Add1~3\,
	combout => \debug_tx|Add1~4_combout\,
	cout => \debug_tx|Add1~5\);

-- Location: LCCOMB_X23_Y14_N28
\debug_tx|idx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~1_combout\ = (\debug_tx|Add1~4_combout\ & \debug_tx|active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~4_combout\,
	datac => \debug_tx|active~q\,
	combout => \debug_tx|idx~1_combout\);

-- Location: FF_X23_Y14_N29
\debug_tx|idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|idx~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|idx\(2));

-- Location: LCCOMB_X23_Y11_N6
\debug_tx|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Add1~6_combout\ = (\debug_tx|idx\(3) & (!\debug_tx|Add1~5\)) # (!\debug_tx|idx\(3) & ((\debug_tx|Add1~5\) # (GND)))
-- \debug_tx|Add1~7\ = CARRY((!\debug_tx|Add1~5\) # (!\debug_tx|idx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(3),
	datad => VCC,
	cin => \debug_tx|Add1~5\,
	combout => \debug_tx|Add1~6_combout\,
	cout => \debug_tx|Add1~7\);

-- Location: LCCOMB_X23_Y11_N26
\debug_tx|idx~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~4_combout\ = (\debug_tx|Add1~6_combout\ & \debug_tx|active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~6_combout\,
	datac => \debug_tx|active~q\,
	combout => \debug_tx|idx~4_combout\);

-- Location: FF_X23_Y11_N27
\debug_tx|idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|idx~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|idx\(3));

-- Location: LCCOMB_X23_Y11_N8
\debug_tx|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Add1~8_combout\ = (\debug_tx|idx\(4) & (\debug_tx|Add1~7\ $ (GND))) # (!\debug_tx|idx\(4) & (!\debug_tx|Add1~7\ & VCC))
-- \debug_tx|Add1~9\ = CARRY((\debug_tx|idx\(4) & !\debug_tx|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|idx\(4),
	datad => VCC,
	cin => \debug_tx|Add1~7\,
	combout => \debug_tx|Add1~8_combout\,
	cout => \debug_tx|Add1~9\);

-- Location: LCCOMB_X23_Y14_N22
\debug_tx|idx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~3_combout\ = (\debug_tx|active~q\ & \debug_tx|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|active~q\,
	datac => \debug_tx|Add1~8_combout\,
	combout => \debug_tx|idx~3_combout\);

-- Location: FF_X23_Y14_N23
\debug_tx|idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|idx~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|idx\(4));

-- Location: LCCOMB_X19_Y16_N22
\debug_tx|idx~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|idx~7_combout\ = (\debug_tx|active~q\ & \debug_tx|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|active~q\,
	datac => \debug_tx|Add1~10_combout\,
	combout => \debug_tx|idx~7_combout\);

-- Location: FF_X19_Y16_N23
\debug_tx|idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|idx~7_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|idx\(5));

-- Location: LCCOMB_X23_Y14_N0
\debug_tx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Equal1~0_combout\ = (!\debug_tx|idx\(5) & (!\debug_tx|idx\(0) & (\debug_tx|idx\(6) & \debug_tx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(5),
	datab => \debug_tx|idx\(0),
	datac => \debug_tx|idx\(6),
	datad => \debug_tx|Equal0~0_combout\,
	combout => \debug_tx|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\debug_tx|tlast_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tlast_r~1_combout\ = (\debug_tx|tlast_r~0_combout\) # ((\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\ & \debug_tx|active~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datab => \debug_tx|active~q\,
	datad => \debug_tx|tlast_r~0_combout\,
	combout => \debug_tx|tlast_r~1_combout\);

-- Location: FF_X23_Y14_N1
\debug_tx|tlast_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|Equal1~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|tlast_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tlast_r~q\);

-- Location: LCCOMB_X21_Y15_N16
\c_eth0|c_tx|c_fsm_axi|packet_valid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|packet_valid~4_combout\ = (\c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\ & (\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & ((\debug_tx|tlast_r~q\)))) # (!\c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\ & ((\c_eth0|c_tx|c_fsm_axi|packet_valid~q\) # 
-- ((\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & \debug_tx|tlast_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \debug_tx|tlast_r~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|packet_valid~4_combout\);

-- Location: FF_X21_Y15_N17
\c_eth0|c_tx|c_fsm_axi|packet_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|packet_valid~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\);

-- Location: LCCOMB_X25_Y17_N12
\c_eth0|c_tx|c_fsm_pt|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ & ((\c_eth0|c_tx|c_fsm_axi|packet_valid~q\) # (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\);

-- Location: FF_X25_Y17_N13
\c_eth0|c_tx|c_fsm_pt|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\);

-- Location: LCCOMB_X21_Y15_N24
\c_eth0|c_tx|c_fsm_axi|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & (\debug_tx|active~q\ & ((\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & 
-- (((\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \debug_tx|active~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\);

-- Location: FF_X21_Y15_N25
\c_eth0|c_tx|c_fsm_axi|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\);

-- Location: LCCOMB_X24_Y14_N0
\debug_tx|active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|active~0_combout\ = (\debug_tx|tlast_r~0_combout\) # ((\debug_tx|active~q\ & ((!\debug_tx|Equal0~1_combout\) # (!\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datab => \debug_tx|tlast_r~0_combout\,
	datac => \debug_tx|active~q\,
	datad => \debug_tx|Equal0~1_combout\,
	combout => \debug_tx|active~0_combout\);

-- Location: FF_X24_Y14_N1
\debug_tx|active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|active~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|active~q\);

-- Location: LCCOMB_X21_Y15_N0
\c_eth0|c_tx|c_fsm_axi|p_seq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & !\debug_tx|active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datad => \debug_tx|active~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\);

-- Location: LCCOMB_X21_Y15_N14
\c_eth0|c_tx|c_fsm_axi|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & (!\debug_tx|tlast_r~q\ & ((!\debug_tx|active~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.READY~q\)))) # (!\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & 
-- (((!\debug_tx|active~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.READY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datab => \debug_tx|tlast_r~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.READY~q\,
	datad => \debug_tx|active~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\c_eth0|c_tx|c_fsm_axi|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\ = (\c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\ & ((\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\) # (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\);

-- Location: LCCOMB_X21_Y15_N26
\c_eth0|c_tx|c_fsm_axi|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\ = (!\c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\ & ((\c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\ & ((\c_eth0|c_tx|c_fsm_axi|state.READY~q\))) # (!\c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\ & 
-- (\c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.READY~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\);

-- Location: FF_X21_Y15_N27
\c_eth0|c_tx|c_fsm_axi|state.READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.READY~q\);

-- Location: LCCOMB_X21_Y15_N4
\c_eth0|c_tx|c_fsm_axi|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.READY~q\ & \debug_tx|active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|state.READY~q\,
	datad => \debug_tx|active~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y15_N10
\c_eth0|c_tx|c_fsm_axi|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\ = (\c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\) # ((!\c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\ & (\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & \c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|p_seq~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\);

-- Location: FF_X21_Y15_N11
\c_eth0|c_tx|c_fsm_axi|state.RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\);

-- Location: LCCOMB_X21_Y15_N12
\c_eth0|c_tx|c_fsm_axi|p_seq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|p_seq~2_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & \debug_tx|tlast_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datad => \debug_tx|tlast_r~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|p_seq~2_combout\);

-- Location: LCCOMB_X21_Y15_N30
\c_eth0|c_tx|c_fsm_axi|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\ = (\c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\ & (((\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & \debug_tx|active~q\)))) # (!\c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\ & (\c_eth0|c_tx|c_fsm_axi|p_seq~2_combout\ & 
-- ((\debug_tx|active~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|p_seq~2_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Selector2~1_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datad => \debug_tx|active~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\);

-- Location: LCCOMB_X21_Y15_N28
\c_eth0|c_tx|c_fsm_axi|WideNor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\ = (\c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\) # (\c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\);

-- Location: LCCOMB_X19_Y16_N28
\debug_tx|tdata_r~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~30_combout\ = (!\debug_tx|idx\(4) & (\debug_tx|idx\(0) & (\debug_tx|idx\(1) & \debug_tx|idx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(4),
	datab => \debug_tx|idx\(0),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(2),
	combout => \debug_tx|tdata_r~30_combout\);

-- Location: LCCOMB_X19_Y16_N16
\debug_tx|tdata_r~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~23_combout\ = (\debug_tx|idx\(2) & (\debug_tx|idx\(3) & ((\debug_tx|idx\(1)) # (!\debug_tx|idx\(0))))) # (!\debug_tx|idx\(2) & (!\debug_tx|idx\(3) & ((\debug_tx|idx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(2),
	datab => \debug_tx|idx\(3),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~23_combout\);

-- Location: LCCOMB_X19_Y16_N18
\debug_tx|tdata_r~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~29_combout\ = (\debug_tx|idx\(1) & ((\debug_tx|idx\(0) & ((!\debug_tx|idx\(3)))) # (!\debug_tx|idx\(0) & (!\debug_tx|idx\(2))))) # (!\debug_tx|idx\(1) & (!\debug_tx|idx\(2) & ((\debug_tx|idx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(2),
	datab => \debug_tx|idx\(3),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~29_combout\);

-- Location: LCCOMB_X19_Y16_N6
\debug_tx|tdata_r~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~33_combout\ = (!\debug_tx|idx\(6) & ((\debug_tx|idx\(4) & (\debug_tx|tdata_r~23_combout\)) # (!\debug_tx|idx\(4) & ((\debug_tx|tdata_r~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(4),
	datab => \debug_tx|tdata_r~23_combout\,
	datac => \debug_tx|idx\(6),
	datad => \debug_tx|tdata_r~29_combout\,
	combout => \debug_tx|tdata_r~33_combout\);

-- Location: LCCOMB_X19_Y16_N4
\debug_tx|tdata_r~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~34_combout\ = (\debug_tx|idx\(5) & ((\debug_tx|tdata_r~30_combout\) # ((\debug_tx|tdata_r~33_combout\ & \debug_tx|idx\(4))))) # (!\debug_tx|idx\(5) & (((\debug_tx|tdata_r~33_combout\ & !\debug_tx|idx\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(5),
	datab => \debug_tx|tdata_r~30_combout\,
	datac => \debug_tx|tdata_r~33_combout\,
	datad => \debug_tx|idx\(4),
	combout => \debug_tx|tdata_r~34_combout\);

-- Location: FF_X19_Y16_N5
\debug_tx|tdata_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|tdata_r~34_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(1));

-- Location: LCCOMB_X22_Y16_N2
\c_eth0|c_tx|c_fsm_axi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~0_combout\ = \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0) $ (VCC)
-- \c_eth0|c_tx|c_fsm_axi|Add0~1\ = CARRY(\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~0_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~1\);

-- Location: LCCOMB_X22_Y16_N4
\c_eth0|c_tx|c_fsm_axi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~2_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & (!\c_eth0|c_tx|c_fsm_axi|Add0~1\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & ((\c_eth0|c_tx|c_fsm_axi|Add0~1\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~3\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~1\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~1\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~2_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~3\);

-- Location: LCCOMB_X21_Y16_N24
\c_eth0|c_tx|c_fsm_axi|cnt_addr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\ = (\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & ((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0)))) # (!\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Add0~2_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\);

-- Location: LCCOMB_X22_Y16_N30
\c_eth0|c_tx|c_fsm_axi|p_seq~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.LAST~q\) # (\c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector2~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\);

-- Location: FF_X22_Y16_N5
\c_eth0|c_tx|c_fsm_axi|cnt_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1));

-- Location: LCCOMB_X22_Y16_N6
\c_eth0|c_tx|c_fsm_axi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~4_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & (\c_eth0|c_tx|c_fsm_axi|Add0~3\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & (!\c_eth0|c_tx|c_fsm_axi|Add0~3\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~5\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & !\c_eth0|c_tx|c_fsm_axi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~3\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~4_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~5\);

-- Location: LCCOMB_X21_Y16_N10
\c_eth0|c_tx|c_fsm_axi|cnt_addr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & \c_eth0|c_tx|c_fsm_axi|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~4_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\);

-- Location: FF_X22_Y16_N7
\c_eth0|c_tx|c_fsm_axi|cnt_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2));

-- Location: LCCOMB_X22_Y16_N8
\c_eth0|c_tx|c_fsm_axi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~6_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & (!\c_eth0|c_tx|c_fsm_axi|Add0~5\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & ((\c_eth0|c_tx|c_fsm_axi|Add0~5\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~7\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~5\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~5\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~6_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~7\);

-- Location: LCCOMB_X21_Y16_N4
\c_eth0|c_tx|c_fsm_axi|cnt_addr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~3_combout\ = (\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & ((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0)))) # (!\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|Add0~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~3_combout\);

-- Location: FF_X22_Y16_N9
\c_eth0|c_tx|c_fsm_axi|cnt_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3));

-- Location: LCCOMB_X22_Y16_N10
\c_eth0|c_tx|c_fsm_axi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~8_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & (\c_eth0|c_tx|c_fsm_axi|Add0~7\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & (!\c_eth0|c_tx|c_fsm_axi|Add0~7\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~9\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & !\c_eth0|c_tx|c_fsm_axi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~7\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~8_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~9\);

-- Location: LCCOMB_X21_Y16_N6
\c_eth0|c_tx|c_fsm_axi|cnt_addr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~4_combout\ = (\c_eth0|c_tx|c_fsm_axi|Add0~8_combout\ & !\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|Add0~8_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~4_combout\);

-- Location: FF_X22_Y16_N11
\c_eth0|c_tx|c_fsm_axi|cnt_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4));

-- Location: LCCOMB_X22_Y16_N12
\c_eth0|c_tx|c_fsm_axi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~10_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & (!\c_eth0|c_tx|c_fsm_axi|Add0~9\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & ((\c_eth0|c_tx|c_fsm_axi|Add0~9\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~11\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~9\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~9\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~10_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~11\);

-- Location: LCCOMB_X21_Y16_N0
\c_eth0|c_tx|c_fsm_axi|cnt_addr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~5_combout\ = (\c_eth0|c_tx|c_fsm_axi|Add0~10_combout\ & !\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|Add0~10_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~5_combout\);

-- Location: FF_X22_Y16_N13
\c_eth0|c_tx|c_fsm_axi|cnt_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5));

-- Location: LCCOMB_X22_Y16_N14
\c_eth0|c_tx|c_fsm_axi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~12_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & (\c_eth0|c_tx|c_fsm_axi|Add0~11\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & (!\c_eth0|c_tx|c_fsm_axi|Add0~11\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~13\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & !\c_eth0|c_tx|c_fsm_axi|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~11\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~12_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~13\);

-- Location: LCCOMB_X21_Y16_N26
\c_eth0|c_tx|c_fsm_axi|cnt_addr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~6_combout\ = (\c_eth0|c_tx|c_fsm_axi|Add0~12_combout\ & !\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|Add0~12_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~6_combout\);

-- Location: FF_X22_Y16_N15
\c_eth0|c_tx|c_fsm_axi|cnt_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~6_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(6));

-- Location: LCCOMB_X22_Y16_N26
\c_eth0|c_tx|c_fsm_axi|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Equal1~1_combout\ = (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & !\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4),
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(6),
	datac => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3),
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5),
	combout => \c_eth0|c_tx|c_fsm_axi|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y16_N16
\c_eth0|c_tx|c_fsm_axi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~14_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & (!\c_eth0|c_tx|c_fsm_axi|Add0~13\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & ((\c_eth0|c_tx|c_fsm_axi|Add0~13\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~15\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~13\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~13\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~14_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~15\);

-- Location: LCCOMB_X21_Y16_N12
\c_eth0|c_tx|c_fsm_axi|cnt_addr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~7_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & \c_eth0|c_tx|c_fsm_axi|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~14_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~7_combout\);

-- Location: FF_X22_Y16_N17
\c_eth0|c_tx|c_fsm_axi|cnt_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~7_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7));

-- Location: LCCOMB_X22_Y16_N18
\c_eth0|c_tx|c_fsm_axi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & (\c_eth0|c_tx|c_fsm_axi|Add0~15\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & (!\c_eth0|c_tx|c_fsm_axi|Add0~15\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~17\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & !\c_eth0|c_tx|c_fsm_axi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~15\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~17\);

-- Location: LCCOMB_X21_Y16_N22
\c_eth0|c_tx|c_fsm_axi|cnt_addr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~8_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~8_combout\);

-- Location: FF_X22_Y16_N19
\c_eth0|c_tx|c_fsm_axi|cnt_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~8_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8));

-- Location: LCCOMB_X22_Y16_N20
\c_eth0|c_tx|c_fsm_axi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & (!\c_eth0|c_tx|c_fsm_axi|Add0~17\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & ((\c_eth0|c_tx|c_fsm_axi|Add0~17\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~19\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~17\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~17\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~19\);

-- Location: LCCOMB_X21_Y16_N16
\c_eth0|c_tx|c_fsm_axi|cnt_addr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~9_combout\ = (\c_eth0|c_tx|c_fsm_axi|Add0~18_combout\ & !\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~9_combout\);

-- Location: FF_X22_Y16_N21
\c_eth0|c_tx|c_fsm_axi|cnt_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~9_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9));

-- Location: LCCOMB_X22_Y16_N22
\c_eth0|c_tx|c_fsm_axi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\ = \c_eth0|c_tx|c_fsm_axi|cnt_addr\(10) $ (!\c_eth0|c_tx|c_fsm_axi|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(10),
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~19\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\);

-- Location: LCCOMB_X21_Y16_N18
\c_eth0|c_tx|c_fsm_axi|cnt_addr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~10_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~10_combout\);

-- Location: FF_X22_Y16_N23
\c_eth0|c_tx|c_fsm_axi|cnt_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_fsm_axi|cnt_addr~10_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(10));

-- Location: LCCOMB_X22_Y16_N0
\c_eth0|c_tx|c_fsm_axi|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Equal1~0_combout\ = (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(10) & !\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8),
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7),
	datac => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(10),
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9),
	combout => \c_eth0|c_tx|c_fsm_axi|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\c_eth0|c_tx|c_fsm_axi|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ = (\c_eth0|c_tx|c_fsm_axi|Equal1~1_combout\ & (\c_eth0|c_tx|c_fsm_axi|Equal1~0_combout\ & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & !\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Equal1~1_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Equal1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1),
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2),
	combout => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y16_N24
\c_eth0|c_tx|c_fsm_axi|cnt_addr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\ = (\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & ((!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0)))) # (!\c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|Add0~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	datad => \c_eth0|c_tx|c_fsm_axi|Equal1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\);

-- Location: FF_X22_Y16_N25
\c_eth0|c_tx|c_fsm_axi|cnt_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_fsm_axi|p_seq~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0));

-- Location: LCCOMB_X25_Y17_N14
\c_eth0|c_tx|c_fsm_pt|Selector7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~17_combout\ = (\c_eth0|c_tx|c_fsm_axi|packet_valid~q\ & !\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~17_combout\);

-- Location: LCCOMB_X28_Y15_N16
\c_eth0|c_tx|c_fsm_pt|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\ = (!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & ((!\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\);

-- Location: LCCOMB_X28_Y15_N6
\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\) # ((!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & ((\c_eth0|c_tx|c_fsm_pt|Selector7~17_combout\) # (\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~17_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\);

-- Location: FF_X28_Y15_N7
\c_eth0|c_tx|c_fsm_pt|r_mem_read_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~1_combout\,
	ena => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\);

-- Location: LCCOMB_X28_Y15_N24
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

-- Location: FF_X28_Y15_N25
\c_eth0|c_tx|c_fsm_pt|mem_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|mem_state~q\);

-- Location: LCCOMB_X25_Y19_N24
\c_eth0|c_tx|c_fsm_pt|Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ = ((!\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\);

-- Location: LCCOMB_X28_Y15_N0
\c_eth0|c_tx|c_fsm_pt|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & !\c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\);

-- Location: FF_X28_Y15_N1
\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\);

-- Location: LCCOMB_X28_Y15_N22
\c_eth0|c_tx|c_fsm_pt|f_first_byte~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & ((\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ & \c_eth0|c_tx|c_fsm_pt|mem_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\);

-- Location: FF_X28_Y15_N23
\c_eth0|c_tx|c_fsm_pt|f_first_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\,
	ena => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\);

-- Location: LCCOMB_X28_Y15_N14
\c_eth0|c_tx|c_fsm_pt|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\) # ((\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & !\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\);

-- Location: LCCOMB_X25_Y17_N2
\c_eth0|c_tx|c_fsm_pt|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # ((!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & !\c_eth0|c_tx|c_fsm_axi|packet_valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\);

-- Location: LCCOMB_X25_Y17_N30
\c_eth0|c_tx|c_fsm_pt|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & !\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\);

-- Location: LCCOMB_X25_Y17_N0
\c_eth0|c_tx|c_fsm_pt|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_piso_sr|state.TX~q\ & ((\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\);

-- Location: LCCOMB_X25_Y17_N28
\c_eth0|c_tx|c_fsm_pt|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & ((\c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\) # (\c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\);

-- Location: LCCOMB_X28_Y15_N12
\c_eth0|c_tx|c_fsm_pt|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\) # (\c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\);

-- Location: FF_X28_Y15_N13
\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\);

-- Location: LCCOMB_X28_Y15_N18
\c_eth0|c_tx|c_fsm_pt|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\);

-- Location: LCCOMB_X28_Y15_N4
\c_eth0|c_tx|c_fsm_pt|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\) # ((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0) & \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0),
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\);

-- Location: LCCOMB_X21_Y18_N26
\c_eth0|c_tx|c_fsm_pt|addr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\c_eth0|c_tx|c_fsm_pt|addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) & \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\);

-- Location: LCCOMB_X21_Y18_N6
\c_eth0|c_tx|c_fsm_pt|addr[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\);

-- Location: LCCOMB_X21_Y18_N0
\c_eth0|c_tx|c_fsm_pt|addr[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\);

-- Location: LCCOMB_X21_Y18_N10
\c_eth0|c_tx|c_fsm_pt|addr[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\);

-- Location: LCCOMB_X21_Y18_N28
\c_eth0|c_tx|c_fsm_pt|addr[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\);

-- Location: LCCOMB_X21_Y18_N22
\c_eth0|c_tx|c_fsm_pt|addr[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\);

-- Location: LCCOMB_X21_Y18_N24
\c_eth0|c_tx|c_fsm_pt|addr[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\);

-- Location: LCCOMB_X25_Y19_N18
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~31\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~26\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~31\);

-- Location: LCCOMB_X25_Y19_N20
\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~31\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~31\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~33\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~31\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~31\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~33\);

-- Location: LCCOMB_X25_Y17_N16
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27_combout\);

-- Location: LCCOMB_X25_Y17_N18
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~28_combout\ = (\c_reset_ctrl|reset_ff\(1) & ((\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\) # (\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|reset_ff\(1),
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~28_combout\);

-- Location: LCCOMB_X25_Y19_N28
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~28_combout\ & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27_combout\) # ((\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ & \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~27_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~28_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\);

-- Location: FF_X25_Y19_N21
\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9));

-- Location: LCCOMB_X21_Y18_N2
\c_eth0|c_tx|c_fsm_pt|addr[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\);

-- Location: LCCOMB_X25_Y19_N22
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~33\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\);

-- Location: FF_X25_Y19_N23
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~34_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10));

-- Location: LCCOMB_X21_Y18_N12
\c_eth0|c_tx|c_fsm_pt|addr[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) & \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\);

-- Location: LCCOMB_X19_Y16_N2
\debug_tx|tdata_r~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~24_combout\ = (\debug_tx|idx\(2) & (\debug_tx|idx\(3))) # (!\debug_tx|idx\(2) & (!\debug_tx|idx\(0) & (\debug_tx|idx\(3) $ (\debug_tx|idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(2),
	datab => \debug_tx|idx\(3),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~24_combout\);

-- Location: LCCOMB_X19_Y16_N30
\debug_tx|tdata_r~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~31_combout\ = (\debug_tx|idx\(4) & (\debug_tx|tdata_r~23_combout\ & (!\debug_tx|idx\(6)))) # (!\debug_tx|idx\(4) & (((\debug_tx|tdata_r~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(4),
	datab => \debug_tx|tdata_r~23_combout\,
	datac => \debug_tx|idx\(6),
	datad => \debug_tx|tdata_r~24_combout\,
	combout => \debug_tx|tdata_r~31_combout\);

-- Location: LCCOMB_X19_Y16_N12
\debug_tx|tdata_r~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~25_combout\ = (\debug_tx|idx\(1) & (!\debug_tx|idx\(0) & (\debug_tx|idx\(2) $ (!\debug_tx|idx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(2),
	datab => \debug_tx|idx\(3),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~25_combout\);

-- Location: LCCOMB_X19_Y16_N14
\debug_tx|tdata_r~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~26_combout\ = (\debug_tx|idx\(1) & ((\debug_tx|idx\(2) & ((\debug_tx|idx\(0)))) # (!\debug_tx|idx\(2) & ((!\debug_tx|idx\(0)) # (!\debug_tx|idx\(3)))))) # (!\debug_tx|idx\(1) & (\debug_tx|idx\(2) $ (((\debug_tx|idx\(3)) # 
-- (\debug_tx|idx\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(2),
	datab => \debug_tx|idx\(3),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~26_combout\);

-- Location: LCCOMB_X19_Y16_N24
\debug_tx|tdata_r~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~27_combout\ = (\debug_tx|idx\(4) & (\debug_tx|tdata_r~25_combout\)) # (!\debug_tx|idx\(4) & ((\debug_tx|tdata_r~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|tdata_r~25_combout\,
	datac => \debug_tx|tdata_r~26_combout\,
	datad => \debug_tx|idx\(4),
	combout => \debug_tx|tdata_r~27_combout\);

-- Location: LCCOMB_X19_Y16_N10
\debug_tx|tdata_r~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~28_combout\ = (\debug_tx|idx\(5) & (\debug_tx|tdata_r~31_combout\)) # (!\debug_tx|idx\(5) & (((!\debug_tx|idx\(6) & \debug_tx|tdata_r~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|tdata_r~31_combout\,
	datab => \debug_tx|idx\(6),
	datac => \debug_tx|idx\(5),
	datad => \debug_tx|tdata_r~27_combout\,
	combout => \debug_tx|tdata_r~28_combout\);

-- Location: FF_X19_Y16_N11
\debug_tx|tdata_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|tdata_r~28_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(2));

-- Location: LCCOMB_X23_Y11_N20
\debug_tx|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux4~2_combout\ = (\debug_tx|Add1~6_combout\ & (((\debug_tx|Add1~2_combout\ & !\debug_tx|Add1~0_combout\)) # (!\debug_tx|Add1~4_combout\))) # (!\debug_tx|Add1~6_combout\ & (\debug_tx|Add1~2_combout\ $ ((\debug_tx|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~6_combout\,
	datab => \debug_tx|Add1~2_combout\,
	datac => \debug_tx|Add1~4_combout\,
	datad => \debug_tx|Add1~0_combout\,
	combout => \debug_tx|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y11_N28
\debug_tx|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux4~0_combout\ = (\debug_tx|Add1~0_combout\ & ((\debug_tx|Add1~6_combout\ & (!\debug_tx|Add1~2_combout\ & \debug_tx|Add1~4_combout\)) # (!\debug_tx|Add1~6_combout\ & (\debug_tx|Add1~2_combout\ & !\debug_tx|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~6_combout\,
	datab => \debug_tx|Add1~2_combout\,
	datac => \debug_tx|Add1~4_combout\,
	datad => \debug_tx|Add1~0_combout\,
	combout => \debug_tx|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y11_N22
\debug_tx|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux4~3_combout\ = (\debug_tx|Add1~10_combout\ & (((\debug_tx|Add1~8_combout\)))) # (!\debug_tx|Add1~10_combout\ & ((\debug_tx|Add1~8_combout\ & ((\debug_tx|Mux4~0_combout\))) # (!\debug_tx|Add1~8_combout\ & (\debug_tx|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~10_combout\,
	datab => \debug_tx|Mux4~2_combout\,
	datac => \debug_tx|Add1~8_combout\,
	datad => \debug_tx|Mux4~0_combout\,
	combout => \debug_tx|Mux4~3_combout\);

-- Location: LCCOMB_X23_Y15_N22
\debug_tx|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux4~4_combout\ = (\debug_tx|Add1~6_combout\ & ((\debug_tx|Add1~0_combout\ $ (!\debug_tx|Add1~2_combout\)) # (!\debug_tx|Add1~4_combout\))) # (!\debug_tx|Add1~6_combout\ & ((\debug_tx|Add1~0_combout\) # ((\debug_tx|Add1~2_combout\) # 
-- (\debug_tx|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~0_combout\,
	datab => \debug_tx|Add1~6_combout\,
	datac => \debug_tx|Add1~2_combout\,
	datad => \debug_tx|Add1~4_combout\,
	combout => \debug_tx|Mux4~4_combout\);

-- Location: LCCOMB_X23_Y15_N12
\debug_tx|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux4~1_combout\ = (\debug_tx|Add1~6_combout\ & (\debug_tx|Add1~4_combout\ & ((\debug_tx|Add1~2_combout\) # (!\debug_tx|Add1~0_combout\)))) # (!\debug_tx|Add1~6_combout\ & (!\debug_tx|Add1~2_combout\ & (\debug_tx|Add1~0_combout\ $ 
-- (\debug_tx|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~0_combout\,
	datab => \debug_tx|Add1~6_combout\,
	datac => \debug_tx|Add1~2_combout\,
	datad => \debug_tx|Add1~4_combout\,
	combout => \debug_tx|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y15_N20
\debug_tx|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux4~5_combout\ = (\debug_tx|Add1~10_combout\ & ((\debug_tx|Mux4~3_combout\ & (!\debug_tx|Mux4~4_combout\)) # (!\debug_tx|Mux4~3_combout\ & ((\debug_tx|Mux4~1_combout\))))) # (!\debug_tx|Add1~10_combout\ & (\debug_tx|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~10_combout\,
	datab => \debug_tx|Mux4~3_combout\,
	datac => \debug_tx|Mux4~4_combout\,
	datad => \debug_tx|Mux4~1_combout\,
	combout => \debug_tx|Mux4~5_combout\);

-- Location: FF_X23_Y15_N21
\debug_tx|tdata_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|Mux4~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(3));

-- Location: LCCOMB_X23_Y11_N18
\debug_tx|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux3~2_combout\ = (\debug_tx|Add1~6_combout\ & (!\debug_tx|Add1~2_combout\ & (!\debug_tx|Add1~4_combout\ & \debug_tx|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~6_combout\,
	datab => \debug_tx|Add1~2_combout\,
	datac => \debug_tx|Add1~4_combout\,
	datad => \debug_tx|Add1~10_combout\,
	combout => \debug_tx|Mux3~2_combout\);

-- Location: LCCOMB_X23_Y11_N30
\debug_tx|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux3~0_combout\ = (\debug_tx|Add1~2_combout\ & ((\debug_tx|Add1~4_combout\ & (!\debug_tx|Add1~6_combout\)) # (!\debug_tx|Add1~4_combout\ & ((!\debug_tx|Add1~0_combout\))))) # (!\debug_tx|Add1~2_combout\ & (!\debug_tx|Add1~0_combout\ & 
-- (\debug_tx|Add1~6_combout\ $ (\debug_tx|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~6_combout\,
	datab => \debug_tx|Add1~2_combout\,
	datac => \debug_tx|Add1~4_combout\,
	datad => \debug_tx|Add1~0_combout\,
	combout => \debug_tx|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\debug_tx|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux3~1_combout\ = (\debug_tx|Add1~8_combout\ & (((\debug_tx|Mux4~0_combout\ & \debug_tx|Add1~10_combout\)))) # (!\debug_tx|Add1~8_combout\ & (\debug_tx|Mux3~0_combout\ & ((!\debug_tx|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Mux3~0_combout\,
	datab => \debug_tx|Mux4~0_combout\,
	datac => \debug_tx|Add1~8_combout\,
	datad => \debug_tx|Add1~10_combout\,
	combout => \debug_tx|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y11_N14
\debug_tx|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux3~3_combout\ = (\debug_tx|Mux3~1_combout\) # ((\debug_tx|Mux3~2_combout\ & !\debug_tx|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|Mux3~2_combout\,
	datac => \debug_tx|Add1~8_combout\,
	datad => \debug_tx|Mux3~1_combout\,
	combout => \debug_tx|Mux3~3_combout\);

-- Location: FF_X23_Y11_N15
\debug_tx|tdata_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|Mux3~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(4));

-- Location: M9K_X27_Y16_N0
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAA00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram_preamble.hex",
	init_file_layout => "port_a",
	logical_ram_name => "eth_port:c_eth0|eth_tx:c_tx|ram_eth_packet:c_ram|altsyncram:altsyncram_component|altsyncram_49r3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
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
	port_b_first_bit_number => 1,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	portbre => VCC,
	clk0 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	clk1 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	ena0 => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	portadatain => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X25_Y17_N6
\c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ & (\c_reset_ctrl|reset_ff\(1) & \c_eth0|c_tx|c_fsm_pt|mem_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datac => \c_reset_ctrl|reset_ff\(1),
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\);

-- Location: FF_X21_Y19_N3
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(1));

-- Location: LCCOMB_X23_Y15_N0
\debug_tx|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux7~4_combout\ = (\debug_tx|Add1~6_combout\ & (\debug_tx|Add1~4_combout\ & ((\debug_tx|Add1~0_combout\) # (!\debug_tx|Add1~2_combout\)))) # (!\debug_tx|Add1~6_combout\ & (!\debug_tx|Add1~4_combout\ & ((\debug_tx|Add1~0_combout\) # 
-- (\debug_tx|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~0_combout\,
	datab => \debug_tx|Add1~6_combout\,
	datac => \debug_tx|Add1~2_combout\,
	datad => \debug_tx|Add1~4_combout\,
	combout => \debug_tx|Mux7~4_combout\);

-- Location: LCCOMB_X23_Y15_N18
\debug_tx|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux7~1_combout\ = (\debug_tx|Add1~0_combout\ & ((\debug_tx|Add1~2_combout\) # (\debug_tx|Add1~6_combout\ $ (!\debug_tx|Add1~4_combout\)))) # (!\debug_tx|Add1~0_combout\ & ((\debug_tx|Add1~6_combout\ & ((!\debug_tx|Add1~4_combout\) # 
-- (!\debug_tx|Add1~2_combout\))) # (!\debug_tx|Add1~6_combout\ & ((\debug_tx|Add1~2_combout\) # (\debug_tx|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~0_combout\,
	datab => \debug_tx|Add1~6_combout\,
	datac => \debug_tx|Add1~2_combout\,
	datad => \debug_tx|Add1~4_combout\,
	combout => \debug_tx|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y15_N4
\debug_tx|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux7~2_combout\ = (\debug_tx|Add1~2_combout\ & ((\debug_tx|Add1~4_combout\ & ((!\debug_tx|Add1~6_combout\))) # (!\debug_tx|Add1~4_combout\ & (\debug_tx|Add1~0_combout\)))) # (!\debug_tx|Add1~2_combout\ & (\debug_tx|Add1~0_combout\ & 
-- (\debug_tx|Add1~6_combout\ $ (\debug_tx|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~0_combout\,
	datab => \debug_tx|Add1~6_combout\,
	datac => \debug_tx|Add1~2_combout\,
	datad => \debug_tx|Add1~4_combout\,
	combout => \debug_tx|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y15_N30
\debug_tx|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux7~3_combout\ = (\debug_tx|Add1~8_combout\ & (((\debug_tx|Add1~10_combout\)) # (!\debug_tx|Mux7~1_combout\))) # (!\debug_tx|Add1~8_combout\ & (((\debug_tx|Mux7~2_combout\ & !\debug_tx|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~8_combout\,
	datab => \debug_tx|Mux7~1_combout\,
	datac => \debug_tx|Mux7~2_combout\,
	datad => \debug_tx|Add1~10_combout\,
	combout => \debug_tx|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y15_N24
\debug_tx|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux7~0_combout\ = (\debug_tx|Add1~6_combout\ & (\debug_tx|Add1~0_combout\ & (\debug_tx|Add1~2_combout\ $ (\debug_tx|Add1~4_combout\)))) # (!\debug_tx|Add1~6_combout\ & (((\debug_tx|Add1~2_combout\ & !\debug_tx|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~0_combout\,
	datab => \debug_tx|Add1~6_combout\,
	datac => \debug_tx|Add1~2_combout\,
	datad => \debug_tx|Add1~4_combout\,
	combout => \debug_tx|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\debug_tx|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux7~5_combout\ = (\debug_tx|Add1~10_combout\ & ((\debug_tx|Mux7~3_combout\ & (!\debug_tx|Mux7~4_combout\)) # (!\debug_tx|Mux7~3_combout\ & ((\debug_tx|Mux7~0_combout\))))) # (!\debug_tx|Add1~10_combout\ & (((\debug_tx|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~10_combout\,
	datab => \debug_tx|Mux7~4_combout\,
	datac => \debug_tx|Mux7~3_combout\,
	datad => \debug_tx|Mux7~0_combout\,
	combout => \debug_tx|Mux7~5_combout\);

-- Location: FF_X23_Y15_N17
\debug_tx|tdata_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|Mux7~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(0));

-- Location: LCCOMB_X23_Y14_N20
\debug_tx|tdata_r~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~16_combout\ = (\debug_tx|idx\(5) & ((!\debug_tx|idx\(4)) # (!\debug_tx|idx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(5),
	datab => \debug_tx|idx\(6),
	datac => \debug_tx|idx\(4),
	combout => \debug_tx|tdata_r~16_combout\);

-- Location: LCCOMB_X23_Y14_N8
\debug_tx|tdata_r~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~14_combout\ = (\debug_tx|idx\(4)) # ((!\debug_tx|idx\(5) & \debug_tx|idx\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(5),
	datab => \debug_tx|idx\(6),
	datac => \debug_tx|idx\(4),
	combout => \debug_tx|tdata_r~14_combout\);

-- Location: LCCOMB_X23_Y14_N10
\debug_tx|tdata_r~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~15_combout\ = (\debug_tx|idx\(0)) # ((\debug_tx|idx\(6) & ((\debug_tx|idx\(4)) # (!\debug_tx|idx\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(4),
	datab => \debug_tx|idx\(0),
	datac => \debug_tx|idx\(6),
	datad => \debug_tx|idx\(5),
	combout => \debug_tx|tdata_r~15_combout\);

-- Location: LCCOMB_X23_Y14_N30
\debug_tx|tdata_r~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~17_combout\ = (\debug_tx|idx\(1) & (\debug_tx|tdata_r~15_combout\ $ (((!\debug_tx|tdata_r~14_combout\) # (!\debug_tx|tdata_r~16_combout\))))) # (!\debug_tx|idx\(1) & ((\debug_tx|tdata_r~16_combout\ & ((!\debug_tx|tdata_r~15_combout\))) # 
-- (!\debug_tx|tdata_r~16_combout\ & (!\debug_tx|tdata_r~14_combout\ & \debug_tx|tdata_r~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(1),
	datab => \debug_tx|tdata_r~16_combout\,
	datac => \debug_tx|tdata_r~14_combout\,
	datad => \debug_tx|tdata_r~15_combout\,
	combout => \debug_tx|tdata_r~17_combout\);

-- Location: LCCOMB_X23_Y14_N16
\debug_tx|tdata_r~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~18_combout\ = (\debug_tx|tdata_r~16_combout\ & ((\debug_tx|idx\(1)) # ((!\debug_tx|tdata_r~14_combout\ & \debug_tx|tdata_r~15_combout\)))) # (!\debug_tx|tdata_r~16_combout\ & (((\debug_tx|tdata_r~14_combout\ & 
-- !\debug_tx|tdata_r~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(1),
	datab => \debug_tx|tdata_r~16_combout\,
	datac => \debug_tx|tdata_r~14_combout\,
	datad => \debug_tx|tdata_r~15_combout\,
	combout => \debug_tx|tdata_r~18_combout\);

-- Location: LCCOMB_X23_Y14_N26
\debug_tx|tdata_r~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~19_combout\ = (\debug_tx|tdata_r~16_combout\ & ((\debug_tx|idx\(1) & (\debug_tx|tdata_r~14_combout\)) # (!\debug_tx|idx\(1) & ((!\debug_tx|tdata_r~15_combout\))))) # (!\debug_tx|tdata_r~16_combout\ & (\debug_tx|tdata_r~15_combout\ & 
-- ((\debug_tx|idx\(1)) # (\debug_tx|tdata_r~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(1),
	datab => \debug_tx|tdata_r~16_combout\,
	datac => \debug_tx|tdata_r~14_combout\,
	datad => \debug_tx|tdata_r~15_combout\,
	combout => \debug_tx|tdata_r~19_combout\);

-- Location: LCCOMB_X23_Y14_N12
\debug_tx|tdata_r~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~20_combout\ = (\debug_tx|tdata_r~18_combout\ & (!\debug_tx|idx\(2) & ((\debug_tx|tdata_r~17_combout\) # (!\debug_tx|tdata_r~19_combout\)))) # (!\debug_tx|tdata_r~18_combout\ & ((\debug_tx|tdata_r~19_combout\ & 
-- (!\debug_tx|tdata_r~17_combout\)) # (!\debug_tx|tdata_r~19_combout\ & ((\debug_tx|idx\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|tdata_r~17_combout\,
	datab => \debug_tx|tdata_r~18_combout\,
	datac => \debug_tx|tdata_r~19_combout\,
	datad => \debug_tx|idx\(2),
	combout => \debug_tx|tdata_r~20_combout\);

-- Location: LCCOMB_X23_Y14_N14
\debug_tx|tdata_r~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~21_combout\ = (\debug_tx|tdata_r~17_combout\ & ((\debug_tx|tdata_r~18_combout\ & (\debug_tx|tdata_r~19_combout\)) # (!\debug_tx|tdata_r~18_combout\ & ((!\debug_tx|idx\(2)) # (!\debug_tx|tdata_r~19_combout\))))) # 
-- (!\debug_tx|tdata_r~17_combout\ & (\debug_tx|tdata_r~19_combout\ $ (((\debug_tx|tdata_r~18_combout\ & !\debug_tx|idx\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|tdata_r~17_combout\,
	datab => \debug_tx|tdata_r~18_combout\,
	datac => \debug_tx|tdata_r~19_combout\,
	datad => \debug_tx|idx\(2),
	combout => \debug_tx|tdata_r~21_combout\);

-- Location: LCCOMB_X23_Y14_N18
\debug_tx|tdata_r~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~22_combout\ = \debug_tx|tdata_r~20_combout\ $ (((\debug_tx|tdata_r~21_combout\) # (\debug_tx|idx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|tdata_r~20_combout\,
	datab => \debug_tx|tdata_r~21_combout\,
	datac => \debug_tx|idx\(3),
	combout => \debug_tx|tdata_r~22_combout\);

-- Location: FF_X23_Y14_N19
\debug_tx|tdata_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|tdata_r~22_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(5));

-- Location: LCCOMB_X23_Y15_N2
\debug_tx|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux1~4_combout\ = (\debug_tx|Add1~4_combout\ & (((\debug_tx|Add1~6_combout\)))) # (!\debug_tx|Add1~4_combout\ & (!\debug_tx|Add1~6_combout\ & ((\debug_tx|Add1~0_combout\) # (\debug_tx|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~4_combout\,
	datab => \debug_tx|Add1~0_combout\,
	datac => \debug_tx|Add1~6_combout\,
	datad => \debug_tx|Add1~8_combout\,
	combout => \debug_tx|Mux1~4_combout\);

-- Location: LCCOMB_X23_Y15_N14
\debug_tx|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux1~2_combout\ = (\debug_tx|Add1~4_combout\ & (!\debug_tx|Add1~0_combout\ & (\debug_tx|Add1~6_combout\ $ (!\debug_tx|Add1~8_combout\)))) # (!\debug_tx|Add1~4_combout\ & (\debug_tx|Add1~0_combout\ $ (((\debug_tx|Add1~6_combout\) # 
-- (\debug_tx|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~4_combout\,
	datab => \debug_tx|Add1~0_combout\,
	datac => \debug_tx|Add1~6_combout\,
	datad => \debug_tx|Add1~8_combout\,
	combout => \debug_tx|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y15_N28
\debug_tx|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux1~1_combout\ = (\debug_tx|Add1~0_combout\ & ((\debug_tx|Add1~4_combout\ & (\debug_tx|Add1~6_combout\ & \debug_tx|Add1~8_combout\)) # (!\debug_tx|Add1~4_combout\ & ((!\debug_tx|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~4_combout\,
	datab => \debug_tx|Add1~0_combout\,
	datac => \debug_tx|Add1~6_combout\,
	datad => \debug_tx|Add1~8_combout\,
	combout => \debug_tx|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y15_N8
\debug_tx|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux1~3_combout\ = (\debug_tx|Add1~10_combout\ & (((\debug_tx|Add1~2_combout\)))) # (!\debug_tx|Add1~10_combout\ & ((\debug_tx|Add1~2_combout\ & ((\debug_tx|Mux1~1_combout\))) # (!\debug_tx|Add1~2_combout\ & (\debug_tx|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~10_combout\,
	datab => \debug_tx|Mux1~2_combout\,
	datac => \debug_tx|Add1~2_combout\,
	datad => \debug_tx|Mux1~1_combout\,
	combout => \debug_tx|Mux1~3_combout\);

-- Location: LCCOMB_X23_Y15_N10
\debug_tx|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux1~0_combout\ = (\debug_tx|Add1~4_combout\ & ((\debug_tx|Add1~6_combout\ & (!\debug_tx|Add1~0_combout\ & \debug_tx|Add1~8_combout\)) # (!\debug_tx|Add1~6_combout\ & ((!\debug_tx|Add1~8_combout\))))) # (!\debug_tx|Add1~4_combout\ & 
-- ((\debug_tx|Add1~0_combout\) # ((\debug_tx|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~4_combout\,
	datab => \debug_tx|Add1~0_combout\,
	datac => \debug_tx|Add1~6_combout\,
	datad => \debug_tx|Add1~8_combout\,
	combout => \debug_tx|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y15_N26
\debug_tx|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|Mux1~5_combout\ = (\debug_tx|Add1~10_combout\ & ((\debug_tx|Mux1~3_combout\ & (\debug_tx|Mux1~4_combout\)) # (!\debug_tx|Mux1~3_combout\ & ((!\debug_tx|Mux1~0_combout\))))) # (!\debug_tx|Add1~10_combout\ & (((\debug_tx|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|Add1~10_combout\,
	datab => \debug_tx|Mux1~4_combout\,
	datac => \debug_tx|Mux1~3_combout\,
	datad => \debug_tx|Mux1~0_combout\,
	combout => \debug_tx|Mux1~5_combout\);

-- Location: FF_X23_Y15_N27
\debug_tx|tdata_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|Mux1~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(6));

-- Location: LCCOMB_X23_Y14_N4
\debug_tx|tdata_r~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~11_combout\ = (!\debug_tx|idx\(6) & \debug_tx|idx\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debug_tx|idx\(6),
	datac => \debug_tx|idx\(4),
	combout => \debug_tx|tdata_r~11_combout\);

-- Location: LCCOMB_X23_Y14_N6
\debug_tx|tdata_r~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~12_combout\ = (\debug_tx|Equal0~0_combout\) # ((\debug_tx|idx\(3) & (\debug_tx|tdata_r~11_combout\ & \debug_tx|idx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(3),
	datab => \debug_tx|Equal0~0_combout\,
	datac => \debug_tx|tdata_r~11_combout\,
	datad => \debug_tx|idx\(2),
	combout => \debug_tx|tdata_r~12_combout\);

-- Location: LCCOMB_X19_Y16_N26
\debug_tx|tdata_r~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~8_combout\ = (\debug_tx|idx\(4) & (\debug_tx|idx\(3) & (\debug_tx|idx\(1) $ (!\debug_tx|idx\(0))))) # (!\debug_tx|idx\(4) & (!\debug_tx|idx\(3) & (\debug_tx|idx\(1) $ (!\debug_tx|idx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(4),
	datab => \debug_tx|idx\(3),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~8_combout\);

-- Location: LCCOMB_X19_Y16_N8
\debug_tx|tdata_r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~7_combout\ = (\debug_tx|idx\(3) & (\debug_tx|idx\(4) $ (((!\debug_tx|idx\(0)) # (!\debug_tx|idx\(1)))))) # (!\debug_tx|idx\(3) & (!\debug_tx|idx\(4) & ((\debug_tx|idx\(1)) # (\debug_tx|idx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|idx\(4),
	datab => \debug_tx|idx\(3),
	datac => \debug_tx|idx\(1),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~7_combout\);

-- Location: LCCOMB_X19_Y16_N20
\debug_tx|tdata_r~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~32_combout\ = (\debug_tx|idx\(6)) # ((\debug_tx|idx\(2) & (\debug_tx|tdata_r~8_combout\)) # (!\debug_tx|idx\(2) & ((\debug_tx|tdata_r~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|tdata_r~8_combout\,
	datab => \debug_tx|tdata_r~7_combout\,
	datac => \debug_tx|idx\(6),
	datad => \debug_tx|idx\(2),
	combout => \debug_tx|tdata_r~32_combout\);

-- Location: LCCOMB_X19_Y16_N0
\debug_tx|tdata_r~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debug_tx|tdata_r~13_combout\ = (\debug_tx|idx\(5) & (\debug_tx|tdata_r~12_combout\ & ((!\debug_tx|idx\(0))))) # (!\debug_tx|idx\(5) & (((\debug_tx|tdata_r~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug_tx|tdata_r~12_combout\,
	datab => \debug_tx|tdata_r~32_combout\,
	datac => \debug_tx|idx\(5),
	datad => \debug_tx|idx\(0),
	combout => \debug_tx|tdata_r~13_combout\);

-- Location: FF_X19_Y16_N1
\debug_tx|tdata_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \debug_tx|tdata_r~13_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \debug_tx|ALT_INV_active~q\,
	ena => \debug_tx|idx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_tx|tdata_r\(7));

-- Location: M9K_X27_Y15_N0
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D555555500",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram_preamble.hex",
	init_file_layout => "port_a",
	logical_ram_name => "eth_port:c_eth0|eth_tx:c_tx|ram_eth_packet:c_ram|altsyncram:altsyncram_component|altsyncram_49r3:auto_generated|ALTSYNCRAM",
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
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	portbre => VCC,
	clk0 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	clk1 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	ena0 => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	portadatain => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X21_Y19_N1
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(0));

-- Location: LCCOMB_X21_Y19_N2
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

-- Location: LCCOMB_X21_Y19_N0
\c_eth0|c_tx|c_fsm_pt|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & (\c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(0) $ (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0))))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & 
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
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\);

-- Location: FF_X21_Y19_N9
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(4));

-- Location: FF_X21_Y19_N7
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(3));

-- Location: FF_X21_Y19_N5
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(2));

-- Location: LCCOMB_X21_Y19_N4
\c_eth0|c_tx|c_fsm_pt|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2) & (!\c_eth0|c_tx|c_fsm_pt|Add2~1\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2) & ((\c_eth0|c_tx|c_fsm_pt|Add2~1\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~3\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~1\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~1\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~3\);

-- Location: LCCOMB_X21_Y19_N6
\c_eth0|c_tx|c_fsm_pt|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & (\c_eth0|c_tx|c_fsm_pt|Add2~3\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & (!\c_eth0|c_tx|c_fsm_pt|Add2~3\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~5\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & !\c_eth0|c_tx|c_fsm_pt|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~3\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~5\);

-- Location: LCCOMB_X21_Y19_N8
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

-- Location: LCCOMB_X21_Y19_N24
\c_eth0|c_tx|c_fsm_pt|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & (\c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2))))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	datab => \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y19_N26
\c_eth0|c_tx|c_fsm_pt|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\);

-- Location: FF_X21_Y19_N15
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(7));

-- Location: FF_X21_Y19_N13
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(6));

-- Location: FF_X21_Y19_N11
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(5));

-- Location: LCCOMB_X21_Y19_N10
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

-- Location: LCCOMB_X21_Y19_N12
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

-- Location: LCCOMB_X21_Y19_N14
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

-- Location: LCCOMB_X21_Y19_N30
\c_eth0|c_tx|c_fsm_pt|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & (\c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~8_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y19_N28
\c_eth0|c_tx|c_fsm_pt|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y17_N8
\c_eth0|c_tx|c_fsm_pt|Selector7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & !\c_eth0|c_tx|c_piso_sr|state.TX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\);

-- Location: LCCOMB_X25_Y19_N26
\c_eth0|c_tx|c_fsm_pt|Selector7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\ = (\c_eth0|c_tx|c_fsm_pt|process_0~4_combout\) # ((\c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\ & ((!\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\);

-- Location: LCCOMB_X25_Y17_N26
\c_eth0|c_tx|c_fsm_pt|Selector7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (!\c_eth0|c_tx|c_piso_sr|state.TX~q\)) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & ((\c_eth0|c_tx|c_fsm_pt|mem_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\);

-- Location: LCCOMB_X25_Y17_N22
\c_eth0|c_tx|c_fsm_pt|Selector7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ & ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # ((!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & \c_eth0|c_tx|c_fsm_axi|packet_valid~q\)))) # 
-- (!\c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_fsm_axi|packet_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\);

-- Location: LCCOMB_X25_Y17_N4
\c_eth0|c_tx|c_fsm_pt|Selector7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\) # ((\c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\) # (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\);

-- Location: LCCOMB_X25_Y14_N12
\c_eth0|c_tx|c_fsm_pt|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ & !\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\);

-- Location: LCCOMB_X25_Y14_N22
\c_eth0|c_tx|c_fsm_pt|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ & (((!\c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\);

-- Location: FF_X25_Y14_N23
\c_eth0|c_tx|c_fsm_pt|state.TX_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\);

-- Location: LCCOMB_X22_Y18_N24
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

-- Location: LCCOMB_X22_Y18_N26
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~27\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~28_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\);

-- Location: LCCOMB_X21_Y18_N16
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\ = (\c_reset_ctrl|reset_ff\(1) & ((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datac => \c_reset_ctrl|reset_ff\(1),
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~13_combout\);

-- Location: FF_X22_Y18_N27
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

-- Location: LCCOMB_X22_Y18_N28
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\ $ (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~29\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~30_combout\);

-- Location: FF_X22_Y18_N29
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

-- Location: LCCOMB_X22_Y18_N0
\c_eth0|c_tx|c_fsm_pt|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (\c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\ & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datac => \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	combout => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\);

-- Location: LCCOMB_X25_Y14_N16
\c_eth0|c_tx|c_fsm_pt|Selector7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~15_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\ & (!\c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\ & (\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ & !\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~15_combout\);

-- Location: LCCOMB_X25_Y14_N26
\c_eth0|c_tx|c_fsm_pt|Selector7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~16_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ & ((\c_eth0|c_tx|c_fsm_pt|process_0~4_combout\) # ((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & \c_eth0|c_tx|c_fsm_pt|Selector7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~15_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~16_combout\);

-- Location: FF_X25_Y14_N27
\c_eth0|c_tx|c_fsm_pt|state.IFG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector7~16_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\);

-- Location: LCCOMB_X22_Y18_N8
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) $ (((\c_reset_ctrl|reset_ff\(1) & ((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_reset_ctrl|reset_ff\(1),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~10_combout\);

-- Location: FF_X22_Y18_N9
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

-- Location: LCCOMB_X22_Y18_N10
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) $ (VCC))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~11_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\);

-- Location: FF_X22_Y18_N11
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

-- Location: LCCOMB_X22_Y18_N12
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~12\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~14_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~15\);

-- Location: FF_X22_Y18_N13
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

-- Location: LCCOMB_X22_Y18_N14
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

-- Location: FF_X22_Y18_N15
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

-- Location: LCCOMB_X22_Y18_N16
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~17\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~18_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~19\);

-- Location: FF_X22_Y18_N17
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

-- Location: LCCOMB_X22_Y18_N18
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

-- Location: FF_X22_Y18_N19
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

-- Location: LCCOMB_X22_Y18_N20
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~21\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~22_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~23\);

-- Location: FF_X22_Y18_N21
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

-- Location: LCCOMB_X22_Y18_N22
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

-- Location: FF_X22_Y18_N23
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

-- Location: FF_X22_Y18_N25
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

-- Location: LCCOMB_X22_Y18_N4
\c_eth0|c_tx|c_fsm_pt|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ = (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7) & \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7),
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\);

-- Location: LCCOMB_X22_Y18_N2
\c_eth0|c_tx|c_fsm_pt|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ = (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3),
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\);

-- Location: LCCOMB_X22_Y18_N30
\c_eth0|c_tx|c_fsm_pt|Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9),
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\);

-- Location: LCCOMB_X22_Y18_N6
\c_eth0|c_tx|c_fsm_pt|Selector7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10) & (\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\);

-- Location: LCCOMB_X25_Y19_N30
\c_eth0|c_tx|c_fsm_pt|Selector7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~18_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\) # (((\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\) # (\c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~14_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~18_combout\);

-- Location: LCCOMB_X25_Y17_N24
\c_eth0|c_tx|c_fsm_pt|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector7~18_combout\ & (\c_eth0|c_tx|c_fsm_pt|Selector7~17_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|Selector7~18_combout\ & 
-- ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~17_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~18_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\);

-- Location: FF_X25_Y17_N25
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\);

-- Location: LCCOMB_X25_Y17_N10
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\);

-- Location: FF_X25_Y17_N11
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\);

-- Location: LCCOMB_X28_Y15_N2
\c_eth0|c_tx|c_fsm_pt|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\) # ((\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & 
-- ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector3~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\);

-- Location: FF_X28_Y15_N3
\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector3~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\);

-- Location: LCCOMB_X28_Y15_N20
\c_eth0|c_tx|c_fsm_pt|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ = (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\);

-- Location: FF_X25_Y19_N3
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
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0));

-- Location: LCCOMB_X25_Y19_N4
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

-- Location: FF_X25_Y19_N5
\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~13_combout\,
	asdata => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1));

-- Location: LCCOMB_X25_Y19_N6
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

-- Location: FF_X25_Y19_N7
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
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2));

-- Location: LCCOMB_X25_Y19_N8
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

-- Location: FF_X25_Y19_N9
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
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3));

-- Location: LCCOMB_X25_Y19_N10
\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~18\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~19_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\);

-- Location: FF_X25_Y19_N11
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
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4));

-- Location: LCCOMB_X25_Y19_N12
\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~20\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~21_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~22\);

-- Location: FF_X25_Y19_N13
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
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5));

-- Location: LCCOMB_X25_Y19_N14
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

-- Location: FF_X25_Y19_N15
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
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6));

-- Location: LCCOMB_X25_Y19_N16
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

-- Location: FF_X25_Y19_N17
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
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7));

-- Location: FF_X25_Y19_N19
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30_combout\,
	asdata => \~GND~combout\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8));

-- Location: LCCOMB_X25_Y17_N20
\c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ & (\c_reset_ctrl|reset_ff\(1) & \c_eth0|c_tx|c_fsm_pt|mem_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datac => \c_reset_ctrl|reset_ff\(1),
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~3_combout\);

-- Location: FF_X21_Y19_N19
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(9));

-- Location: FF_X21_Y19_N17
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(8));

-- Location: LCCOMB_X21_Y19_N16
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

-- Location: LCCOMB_X21_Y19_N18
\c_eth0|c_tx|c_fsm_pt|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & (\c_eth0|c_tx|c_fsm_pt|Add2~15\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & (!\c_eth0|c_tx|c_fsm_pt|Add2~15\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~17\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & !\c_eth0|c_tx|c_fsm_pt|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~15\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~17\);

-- Location: LCCOMB_X21_Y19_N22
\c_eth0|c_tx|c_fsm_pt|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (\c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ & (\c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9))))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ & (\c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	datab => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\);

-- Location: FF_X21_Y19_N21
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
	ena => \c_eth0|c_tx|c_fsm_pt|r_packet_length[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(10));

-- Location: LCCOMB_X21_Y19_N20
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

-- Location: LCCOMB_X25_Y19_N0
\c_eth0|c_tx|c_fsm_pt|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~18_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y15_N26
\c_eth0|c_tx|c_fsm_pt|byte_valid~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & (((!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~3_combout\);

-- Location: LCCOMB_X28_Y15_N28
\c_eth0|c_tx|c_fsm_pt|byte_valid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~4_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & \c_eth0|c_tx|c_fsm_pt|byte_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~4_combout\);

-- Location: LCCOMB_X28_Y15_N30
\c_eth0|c_tx|c_fsm_pt|byte_valid~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & (((\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\)))) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & 
-- (\c_eth0|c_tx|c_fsm_pt|byte_valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~6_combout\);

-- Location: LCCOMB_X28_Y15_N8
\c_eth0|c_tx|c_fsm_pt|byte_valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ & (!\c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\ & ((\c_eth0|c_tx|c_fsm_pt|byte_valid~6_combout\) # (!\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~6_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\);

-- Location: LCCOMB_X28_Y15_N10
\c_eth0|c_tx|c_fsm_pt|byte_valid~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ & ((\c_eth0|c_tx|c_fsm_pt|byte_valid~4_combout\) # ((\c_eth0|c_tx|c_fsm_pt|byte_valid~3_combout\ & \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\)))) # 
-- (!\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ & (\c_eth0|c_tx|c_fsm_pt|byte_valid~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~3_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|byte_valid~4_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~5_combout\);

-- Location: FF_X28_Y15_N11
\c_eth0|c_tx|c_fsm_pt|byte_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|byte_valid~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\);

-- Location: LCCOMB_X25_Y15_N2
\c_eth0|c_tx|c_piso_sr|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ = (!\c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\) # (!\c_eth0|c_tx|c_fsm_pt|byte_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\);

-- Location: LCCOMB_X25_Y15_N4
\c_eth0|c_tx|c_piso_sr|Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~6_combout\ = (!\c_eth0|c_tx|c_piso_sr|Selector2~5_combout\ & ((\c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\))) # (!\c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~6_combout\);

-- Location: FF_X25_Y15_N5
\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|Selector2~6_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\);

-- Location: LCCOMB_X25_Y15_N14
\c_eth0|c_tx|c_piso_sr|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\ = (\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\ & ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # ((\c_eth0|c_tx|c_piso_sr|Selector2~7_combout\ & !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~7_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\);

-- Location: LCCOMB_X25_Y15_N16
\c_eth0|c_tx|c_piso_sr|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector2~5_combout\ & (((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\)))) # (!\c_eth0|c_tx|c_piso_sr|Selector2~5_combout\ & (\c_eth0|c_tx|c_piso_sr|state.TX~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|Selector2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\);

-- Location: LCCOMB_X25_Y15_N22
\c_eth0|c_tx|c_piso_sr|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector1~2_combout\) # ((!\c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ & (!\c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ & !\c_eth0|c_tx|c_piso_sr|Selector2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\);

-- Location: LCCOMB_X25_Y15_N6
\c_eth0|c_tx|c_piso_sr|state.TX~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\ = \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\);

-- Location: FF_X25_Y15_N7
\c_eth0|c_tx|c_piso_sr|state.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|state.TX~feeder_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.TX~q\);

-- Location: LCCOMB_X25_Y15_N30
\c_eth0|c_tx|c_piso_sr|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\ = (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (!\c_eth0|c_tx|c_piso_sr|Selector2~5_combout\ & (!\c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ & \c_eth0|c_tx|c_fsm_pt|byte_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\);

-- Location: LCCOMB_X25_Y15_N18
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\ = ((!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & ((\c_eth0|c_tx|c_piso_sr|Selector1~2_combout\) # (\c_eth0|c_tx|c_piso_sr|Selector1~4_combout\)))) # (!\c_eth0|c_tx|c_piso_sr|r_byte~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector1~4_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\);

-- Location: LCCOMB_X24_Y15_N12
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~4_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & (((\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ & !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\)))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & 
-- (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\) # (!\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~4_combout\);

-- Location: FF_X24_Y15_N13
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0));

-- Location: LCCOMB_X24_Y15_N0
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\ & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\ & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ 
-- & (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1) $ (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\);

-- Location: FF_X24_Y15_N1
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1));

-- Location: LCCOMB_X24_Y15_N16
\c_eth0|c_tx|c_piso_sr|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Add0~1_combout\ = \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3) $ (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	combout => \c_eth0|c_tx|c_piso_sr|Add0~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ & ((\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ & (!\c_eth0|c_tx|c_piso_sr|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Add0~1_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\);

-- Location: FF_X24_Y15_N9
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
	clrn => \c_reset_ctrl|reset_ff\(1),
	sload => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3));

-- Location: LCCOMB_X24_Y15_N10
\c_eth0|c_tx|c_piso_sr|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ = (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3) & !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\);

-- Location: LCCOMB_X25_Y15_N8
\c_eth0|c_tx|c_piso_sr|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ & (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & \c_eth0|c_tx|c_piso_sr|state.TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\);

-- Location: LCCOMB_X25_Y15_N26
\c_eth0|c_tx|c_piso_sr|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector0~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # ((!\c_eth0|c_tx|c_piso_sr|Selector2~5_combout\ & ((\c_eth0|c_tx|c_piso_sr|Selector2~3_combout\) # (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~5_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector0~3_combout\);

-- Location: FF_X25_Y15_N27
\c_eth0|c_tx|c_piso_sr|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|Selector0~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\);

-- Location: LCCOMB_X25_Y15_N28
\c_eth0|c_tx|c_piso_sr|r_byte~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\);

-- Location: LCCOMB_X25_Y15_N24
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\ = (\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ & (\c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.TX~q\) # (!\c_eth0|c_tx|c_piso_sr|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\);

-- Location: LCCOMB_X24_Y15_N14
\c_eth0|c_tx|c_piso_sr|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Add0~0_combout\ = \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2) $ (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	combout => \c_eth0|c_tx|c_piso_sr|Add0~0_combout\);

-- Location: LCCOMB_X24_Y15_N6
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\ & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\ & (!\c_eth0|c_tx|c_piso_sr|Add0~0_combout\ & 
-- ((!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~5_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Add0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\);

-- Location: FF_X24_Y15_N7
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2));

-- Location: LCCOMB_X24_Y15_N26
\c_eth0|c_tx|c_piso_sr|Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~7_combout\ = (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3) & !\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~7_combout\);

-- Location: LCCOMB_X25_Y15_N12
\c_eth0|c_tx|c_piso_sr|p_seq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ = ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)) # ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # (!\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\))) # (!\c_eth0|c_tx|c_piso_sr|Selector2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~7_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	combout => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\);

-- Location: LCCOMB_X24_Y15_N24
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\);

-- Location: FF_X24_Y15_N25
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0));

-- Location: LCCOMB_X24_Y15_N28
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3) & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\);

-- Location: LCCOMB_X24_Y15_N2
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\) # ((\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ & !\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\);

-- Location: FF_X24_Y15_N3
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3));

-- Location: LCCOMB_X24_Y15_N4
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1) & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1) & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & 
-- (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2) & \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\);

-- Location: FF_X24_Y15_N5
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2));

-- Location: LCCOMB_X24_Y15_N22
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1) & 
-- ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\);

-- Location: FF_X24_Y15_N23
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1));

-- Location: LCCOMB_X24_Y15_N18
\c_eth0|c_tx|c_piso_sr|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	combout => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\c_eth0|c_tx|c_piso_sr|bit_valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\ = (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & \c_eth0|c_tx|c_piso_sr|Selector0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector0~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\);

-- Location: FF_X25_Y15_N1
\c_eth0|c_tx|c_piso_sr|bit_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|bit_valid~q\);

-- Location: LCCOMB_X25_Y15_N20
\c_eth0|c_tx|c_piso_sr|r_byte~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\ = (!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & (\c_eth0|c_tx|c_piso_sr|r_byte~0_combout\ & (\c_eth0|c_tx|c_piso_sr|Selector1~3_combout\ & \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\);

-- Location: LCCOMB_X25_Y15_N10
\c_eth0|c_tx|c_piso_sr|r_byte~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\ = (\c_eth0|c_tx|c_piso_sr|r_byte~8_combout\) # ((!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\ & \c_eth0|c_tx|c_piso_sr|r_byte\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|r_byte\(7),
	datad => \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\);

-- Location: FF_X25_Y15_N11
\c_eth0|c_tx|c_piso_sr|r_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(7));

-- Location: LCCOMB_X25_Y14_N2
\c_eth0|c_tx|c_piso_sr|r_byte~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- ((\c_eth0|c_tx|c_piso_sr|r_byte\(7)))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6),
	datac => \c_eth0|c_tx|c_piso_sr|r_byte\(7),
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\);

-- Location: FF_X25_Y14_N3
\c_eth0|c_tx|c_piso_sr|r_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(6));

-- Location: LCCOMB_X25_Y14_N0
\c_eth0|c_tx|c_piso_sr|r_byte~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(6))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(6),
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\);

-- Location: FF_X25_Y14_N1
\c_eth0|c_tx|c_piso_sr|r_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(5));

-- Location: LCCOMB_X25_Y14_N14
\c_eth0|c_tx|c_piso_sr|r_byte~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(5))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(5),
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\);

-- Location: FF_X25_Y14_N15
\c_eth0|c_tx|c_piso_sr|r_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(4));

-- Location: LCCOMB_X25_Y14_N28
\c_eth0|c_tx|c_piso_sr|r_byte~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(4))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(4),
	datac => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3),
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\);

-- Location: FF_X25_Y14_N29
\c_eth0|c_tx|c_piso_sr|r_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(3));

-- Location: LCCOMB_X25_Y14_N18
\c_eth0|c_tx|c_piso_sr|r_byte~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(3))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(3),
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\);

-- Location: FF_X25_Y14_N19
\c_eth0|c_tx|c_piso_sr|r_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(2));

-- Location: LCCOMB_X25_Y14_N30
\c_eth0|c_tx|c_piso_sr|r_byte~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(2))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(2),
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\);

-- Location: FF_X25_Y14_N31
\c_eth0|c_tx|c_piso_sr|r_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(1));

-- Location: LCCOMB_X25_Y14_N24
\c_eth0|c_tx|c_piso_sr|r_byte~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~1_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(1))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte\(1),
	datab => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0),
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~1_combout\);

-- Location: FF_X25_Y14_N25
\c_eth0|c_tx|c_piso_sr|r_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(0));

-- Location: LCCOMB_X25_Y14_N4
\c_eth0|c_tx|c_piso_sr|bit_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|bit_out~q\))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (\c_eth0|c_tx|c_piso_sr|r_byte\(0))))) # 
-- (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_piso_sr|bit_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(0),
	datac => \c_eth0|c_tx|c_piso_sr|bit_out~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\);

-- Location: FF_X25_Y14_N5
\c_eth0|c_tx|c_piso_sr|bit_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|bit_out~q\);

-- Location: LCCOMB_X25_Y14_N8
\c_eth0|c_tx|c_phy|r_mcn_bit_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\ = (\c_eth0|c_tx|c_piso_sr|bit_valid~q\ & (\c_eth0|c_tx|c_piso_sr|bit_out~q\)) # (!\c_eth0|c_tx|c_piso_sr|bit_valid~q\ & ((\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|bit_valid~q\,
	datab => \c_eth0|c_tx|c_piso_sr|bit_out~q\,
	datac => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	combout => \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\);

-- Location: FF_X25_Y14_N9
\c_eth0|c_tx|c_phy|r_mcn_bit_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\);

-- Location: LCCOMB_X28_Y10_N14
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

-- Location: FF_X28_Y10_N15
\c_eth0|c_tx|c_phy|r_inactivity_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~19_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0));

-- Location: LCCOMB_X28_Y10_N16
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

-- Location: FF_X28_Y10_N17
\c_eth0|c_tx|c_phy|r_inactivity_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~21_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1));

-- Location: LCCOMB_X28_Y10_N18
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

-- Location: FF_X28_Y10_N19
\c_eth0|c_tx|c_phy|r_inactivity_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~23_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2));

-- Location: LCCOMB_X28_Y10_N20
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

-- Location: FF_X28_Y10_N21
\c_eth0|c_tx|c_phy|r_inactivity_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~25_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3));

-- Location: LCCOMB_X28_Y10_N22
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

-- Location: FF_X28_Y10_N23
\c_eth0|c_tx|c_phy|r_inactivity_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~27_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4));

-- Location: LCCOMB_X28_Y10_N24
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

-- Location: FF_X28_Y10_N25
\c_eth0|c_tx|c_phy|r_inactivity_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~29_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5));

-- Location: LCCOMB_X28_Y10_N26
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

-- Location: FF_X28_Y10_N27
\c_eth0|c_tx|c_phy|r_inactivity_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~31_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6));

-- Location: LCCOMB_X28_Y10_N28
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

-- Location: FF_X28_Y10_N29
\c_eth0|c_tx|c_phy|r_inactivity_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~33_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7));

-- Location: LCCOMB_X28_Y10_N10
\c_eth0|c_tx|c_phy|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~1_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(7) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5),
	combout => \c_eth0|c_tx|c_phy|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y10_N30
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

-- Location: FF_X28_Y10_N31
\c_eth0|c_tx|c_phy|r_inactivity_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~35_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(8));

-- Location: LCCOMB_X28_Y9_N0
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

-- Location: FF_X28_Y9_N1
\c_eth0|c_tx|c_phy|r_inactivity_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~37_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(9));

-- Location: LCCOMB_X28_Y9_N2
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

-- Location: FF_X28_Y9_N3
\c_eth0|c_tx|c_phy|r_inactivity_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~39_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(10));

-- Location: LCCOMB_X28_Y9_N4
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

-- Location: FF_X28_Y9_N5
\c_eth0|c_tx|c_phy|r_inactivity_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~41_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(11));

-- Location: LCCOMB_X28_Y9_N6
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

-- Location: FF_X28_Y9_N7
\c_eth0|c_tx|c_phy|r_inactivity_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~43_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12));

-- Location: LCCOMB_X28_Y9_N8
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

-- Location: FF_X28_Y9_N9
\c_eth0|c_tx|c_phy|r_inactivity_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~45_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13));

-- Location: LCCOMB_X28_Y9_N10
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

-- Location: FF_X28_Y9_N11
\c_eth0|c_tx|c_phy|r_inactivity_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~47_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14));

-- Location: LCCOMB_X28_Y9_N12
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

-- Location: FF_X28_Y9_N13
\c_eth0|c_tx|c_phy|r_inactivity_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~49_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15));

-- Location: LCCOMB_X28_Y9_N28
\c_eth0|c_tx|c_phy|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~3_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(15) & (\c_eth0|c_tx|c_phy|r_inactivity_counter\(13) & \c_eth0|c_tx|c_phy|r_inactivity_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12),
	combout => \c_eth0|c_tx|c_phy|Equal1~3_combout\);

-- Location: LCCOMB_X28_Y9_N26
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

-- Location: LCCOMB_X28_Y10_N8
\c_eth0|c_tx|c_phy|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~0_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(3) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(0) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1),
	combout => \c_eth0|c_tx|c_phy|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y9_N30
\c_eth0|c_tx|c_phy|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~4_combout\ = (\c_eth0|c_tx|c_phy|Equal1~1_combout\ & (\c_eth0|c_tx|c_phy|Equal1~3_combout\ & (\c_eth0|c_tx|c_phy|Equal1~2_combout\ & \c_eth0|c_tx|c_phy|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~1_combout\,
	datab => \c_eth0|c_tx|c_phy|Equal1~3_combout\,
	datac => \c_eth0|c_tx|c_phy|Equal1~2_combout\,
	datad => \c_eth0|c_tx|c_phy|Equal1~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Equal1~4_combout\);

-- Location: LCCOMB_X28_Y9_N14
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

-- Location: FF_X28_Y9_N15
\c_eth0|c_tx|c_phy|r_inactivity_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~51_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16));

-- Location: LCCOMB_X28_Y9_N16
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

-- Location: FF_X28_Y9_N17
\c_eth0|c_tx|c_phy|r_inactivity_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~53_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17));

-- Location: LCCOMB_X28_Y9_N24
\c_eth0|c_tx|c_phy|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~5_combout\ = (\c_eth0|c_tx|c_phy|Equal1~4_combout\ & (\c_eth0|c_tx|c_phy|r_inactivity_counter\(17) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~4_combout\,
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16),
	combout => \c_eth0|c_tx|c_phy|Equal1~5_combout\);

-- Location: LCCOMB_X25_Y14_N10
\c_eth0|c_tx|c_fsm_pt|tx_active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|process_0~4_combout\ & ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|process_0~4_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\);

-- Location: FF_X25_Y14_N11
\c_eth0|c_tx|c_fsm_pt|tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|tx_active~q\);

-- Location: LCCOMB_X28_Y11_N30
\c_eth0|c_tx|c_phy|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector0~1_combout\ = (!\c_eth0|c_tx|c_phy|state.IDLE~q\ & ((\c_eth0|c_tx|c_phy|Equal1~5_combout\) # (\c_eth0|c_tx|c_fsm_pt|tx_active~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_phy|Selector0~1_combout\);

-- Location: LCCOMB_X28_Y11_N28
\c_eth0|c_tx|c_phy|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~2_combout\ = (\c_eth0|c_tx|c_phy|Selector0~0_combout\) # ((!\c_eth0|c_tx|c_phy|Equal1~5_combout\ & (!\c_eth0|c_tx|c_phy|state.IDLE~q\ & !\c_eth0|c_tx|c_fsm_pt|tx_active~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datab => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~2_combout\);

-- Location: LCCOMB_X28_Y11_N18
\c_eth0|c_tx|c_phy|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~3_combout\ = (\c_eth0|c_tx|c_phy|Selector0~1_combout\ & (((\c_eth0|c_tx|c_phy|state.NLP~q\ & \c_eth0|c_tx|c_phy|Selector2~2_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\))) # (!\c_eth0|c_tx|c_phy|Selector0~1_combout\ & 
-- (((\c_eth0|c_tx|c_phy|state.NLP~q\ & \c_eth0|c_tx|c_phy|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector0~1_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datac => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datad => \c_eth0|c_tx|c_phy|Selector2~2_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~3_combout\);

-- Location: FF_X28_Y11_N19
\c_eth0|c_tx|c_phy|state.NLP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector2~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.NLP~q\);

-- Location: LCCOMB_X28_Y11_N4
\c_eth0|c_tx|c_phy|r_clk_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\ = (!\c_eth0|c_tx|c_phy|Equal2~0_combout\ & (!\c_eth0|c_tx|c_phy|Selector0~1_combout\ & ((!\c_eth0|c_tx|c_phy|p_seq~3_combout\) # (!\c_eth0|c_tx|c_phy|state.TX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.TX~q\,
	datab => \c_eth0|c_tx|c_phy|Equal2~0_combout\,
	datac => \c_eth0|c_tx|c_phy|Selector0~1_combout\,
	datad => \c_eth0|c_tx|c_phy|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\);

-- Location: LCCOMB_X28_Y9_N18
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

-- Location: FF_X28_Y9_N19
\c_eth0|c_tx|c_phy|r_clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~4_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(1));

-- Location: LCCOMB_X28_Y10_N12
\c_eth0|c_tx|c_phy|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Add0~0_combout\ = \c_eth0|c_tx|c_phy|r_clk_counter\(3) $ (((\c_eth0|c_tx|c_phy|r_clk_counter\(2) & (\c_eth0|c_tx|c_phy|r_clk_counter\(0) & \c_eth0|c_tx|c_phy|r_clk_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	combout => \c_eth0|c_tx|c_phy|Add0~0_combout\);

-- Location: LCCOMB_X28_Y10_N4
\c_eth0|c_tx|c_phy|r_clk_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\ = (\c_eth0|c_tx|c_phy|Add0~0_combout\ & \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Add0~0_combout\,
	datad => \c_eth0|c_tx|c_phy|r_clk_counter~0_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\);

-- Location: FF_X28_Y10_N5
\c_eth0|c_tx|c_phy|r_clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(3));

-- Location: LCCOMB_X28_Y10_N2
\c_eth0|c_tx|c_phy|p_seq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~3_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter\(2) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(3) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(0) & !\c_eth0|c_tx|c_phy|r_clk_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	combout => \c_eth0|c_tx|c_phy|p_seq~3_combout\);

-- Location: LCCOMB_X28_Y11_N8
\c_eth0|c_tx|c_phy|r_clk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\ = (!\c_eth0|c_tx|c_phy|Selector0~1_combout\ & (!\c_eth0|c_tx|c_phy|r_clk_counter\(0) & ((!\c_eth0|c_tx|c_phy|p_seq~3_combout\) # (!\c_eth0|c_tx|c_phy|state.TX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector0~1_combout\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datad => \c_eth0|c_tx|c_phy|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\);

-- Location: FF_X28_Y11_N9
\c_eth0|c_tx|c_phy|r_clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(0));

-- Location: LCCOMB_X28_Y10_N6
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

-- Location: FF_X28_Y10_N7
\c_eth0|c_tx|c_phy|r_clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter~3_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(2));

-- Location: LCCOMB_X28_Y10_N0
\c_eth0|c_tx|c_phy|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal2~0_combout\ = (!\c_eth0|c_tx|c_phy|r_clk_counter\(2) & (\c_eth0|c_tx|c_phy|r_clk_counter\(3) & (\c_eth0|c_tx|c_phy|r_clk_counter\(0) & !\c_eth0|c_tx|c_phy|r_clk_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	combout => \c_eth0|c_tx|c_phy|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y11_N10
\c_eth0|c_tx|c_phy|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector0~0_combout\ = (\c_eth0|c_tx|c_phy|state.IDLE~q\ & ((\c_eth0|c_tx|c_phy|state.NLP~q\ & ((!\c_eth0|c_tx|c_phy|Equal2~0_combout\))) # (!\c_eth0|c_tx|c_phy|state.NLP~q\ & (\c_eth0|c_tx|c_fsm_pt|tx_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|Equal2~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\c_eth0|c_tx|c_phy|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector0~2_combout\ = (\c_eth0|c_tx|c_phy|Selector0~0_combout\) # ((!\c_eth0|c_tx|c_phy|state.IDLE~q\ & ((\c_eth0|c_tx|c_phy|Equal1~5_combout\) # (\c_eth0|c_tx|c_fsm_pt|tx_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datac => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector0~2_combout\);

-- Location: FF_X28_Y11_N21
\c_eth0|c_tx|c_phy|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector0~2_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.IDLE~q\);

-- Location: LCCOMB_X28_Y11_N26
\c_eth0|c_tx|c_phy|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector1~4_combout\ = (\c_eth0|c_tx|c_phy|state.TX~q\ & ((\c_eth0|c_tx|c_phy|Selector0~0_combout\) # ((!\c_eth0|c_tx|c_phy|state.IDLE~q\ & !\c_eth0|c_tx|c_phy|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.TX~q\,
	datab => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datad => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector1~4_combout\);

-- Location: LCCOMB_X28_Y11_N22
\c_eth0|c_tx|c_phy|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector1~5_combout\ = (\c_eth0|c_tx|c_phy|Selector1~4_combout\) # ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & !\c_eth0|c_tx|c_phy|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector1~4_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_phy|Selector1~5_combout\);

-- Location: FF_X28_Y11_N23
\c_eth0|c_tx|c_phy|state.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector1~5_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.TX~q\);

-- Location: LCCOMB_X28_Y11_N0
\c_eth0|c_tx|c_phy|p_seq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & !\c_eth0|c_tx|c_phy|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_phy|p_seq~2_combout\);

-- Location: LCCOMB_X28_Y11_N16
\c_eth0|c_tx|c_phy|r_mcn_phase~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\ = (!\c_eth0|c_tx|c_phy|p_seq~2_combout\ & (\c_eth0|c_tx|c_phy|r_mcn_phase~q\ $ (((\c_eth0|c_tx|c_phy|state.TX~q\ & \c_eth0|c_tx|c_phy|p_seq~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.TX~q\,
	datab => \c_eth0|c_tx|c_phy|p_seq~2_combout\,
	datac => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	datad => \c_eth0|c_tx|c_phy|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\);

-- Location: FF_X28_Y11_N17
\c_eth0|c_tx|c_phy|r_mcn_phase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_mcn_phase~q\);

-- Location: LCCOMB_X28_Y11_N6
\c_eth0|c_tx|c_phy|r_nlp_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\ = (\c_eth0|c_tx|c_phy|r_nlp_out~q\) # ((\c_eth0|c_tx|c_phy|Equal1~5_combout\ & (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & !\c_eth0|c_tx|c_phy|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datab => \c_eth0|c_tx|c_phy|r_nlp_out~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\);

-- Location: LCCOMB_X28_Y11_N24
\c_eth0|c_tx|c_phy|r_nlp_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_nlp_out~1_combout\ = (\c_eth0|c_tx|c_phy|r_nlp_out~0_combout\ & ((!\c_eth0|c_tx|c_phy|state.NLP~q\) # (!\c_eth0|c_tx|c_phy|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\,
	datab => \c_eth0|c_tx|c_phy|Equal2~0_combout\,
	datad => \c_eth0|c_tx|c_phy|state.NLP~q\,
	combout => \c_eth0|c_tx|c_phy|r_nlp_out~1_combout\);

-- Location: FF_X28_Y11_N25
\c_eth0|c_tx|c_phy|r_nlp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_nlp_out~1_combout\,
	clrn => \c_reset_ctrl|reset_ff\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_nlp_out~q\);

-- Location: LCCOMB_X28_Y11_N12
\c_eth0|c_tx|c_phy|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector3~0_combout\ = (\c_eth0|c_tx|c_phy|state.NLP~q\ & \c_eth0|c_tx|c_phy|r_nlp_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datad => \c_eth0|c_tx|c_phy|r_nlp_out~q\,
	combout => \c_eth0|c_tx|c_phy|Selector3~0_combout\);

-- Location: LCCOMB_X28_Y11_N2
\c_eth0|c_tx|c_phy|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector3~1_combout\ = (\c_eth0|c_tx|c_phy|Selector3~0_combout\) # ((\c_eth0|c_tx|c_phy|state.TX~q\ & (\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\ $ (!\c_eth0|c_tx|c_phy|r_mcn_phase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	datab => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	datac => \c_eth0|c_tx|c_phy|state.TX~q\,
	datad => \c_eth0|c_tx|c_phy|Selector3~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector3~1_combout\);

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


