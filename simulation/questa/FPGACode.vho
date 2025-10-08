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

-- DATE "10/08/2025 22:30:09"

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
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	UART_RX : IN std_logic;
	UART_TX : OUT std_logic;
	ETH0_RX : IN std_logic;
	ETH0_TX : OUT std_logic;
	ETH0_TX_EN : OUT std_logic;
	ETH0_LED_GRN : OUT std_logic;
	ETH0_LED_YEL : OUT std_logic;
	ETH1_RX : IN std_logic;
	ETH1_TX : OUT std_logic;
	ETH1_TX_EN : OUT std_logic;
	ETH1_LED_GRN : OUT std_logic;
	ETH1_LED_YEL : OUT std_logic;
	ETH2_RX : IN std_logic;
	ETH2_TX : OUT std_logic;
	ETH2_TX_EN : OUT std_logic;
	ETH2_LED_GRN : OUT std_logic;
	ETH2_LED_YEL : OUT std_logic;
	ETH3_RX : IN std_logic;
	ETH3_TX : OUT std_logic;
	ETH3_TX_EN : OUT std_logic;
	ETH3_LED_GRN : OUT std_logic;
	ETH3_LED_YEL : OUT std_logic;
	ETH4_RX : IN std_logic;
	ETH4_TX : OUT std_logic;
	ETH4_TX_EN : OUT std_logic;
	ETH4_LED_GRN : OUT std_logic;
	ETH4_LED_YEL : OUT std_logic
	);
END ethernet_switch;

-- Design Ports Information
-- KEY1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY3	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED1	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED2	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED3	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED4	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- KEY4	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
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
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
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
SIGNAL \MAIN_CLK~input_o\ : std_logic;
SIGNAL \c_pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[0]~16_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \c_reset_ctrl|btn_sync1~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|btn_sync1~q\ : std_logic;
SIGNAL \c_reset_ctrl|btn_sync2~feeder_combout\ : std_logic;
SIGNAL \c_reset_ctrl|btn_sync2~q\ : std_logic;
SIGNAL \c_reset_ctrl|process_0~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[3]~18_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[0]~17\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[1]~19_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[1]~20\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[2]~21_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[2]~22\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[3]~23_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[3]~24\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[4]~25_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[4]~26\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[5]~27_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[5]~28\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[6]~29_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[6]~30\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[7]~31_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[7]~32\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[8]~33_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[8]~34\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[9]~35_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[9]~36\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[10]~37_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[10]~38\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[11]~39_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[11]~40\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[12]~41_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[12]~42\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[13]~43_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[13]~44\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[14]~45_combout\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[14]~46\ : std_logic;
SIGNAL \c_reset_ctrl|cnt[15]~47_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \c_reset_ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \c_reset_ctrl|btn~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|btn~q\ : std_logic;
SIGNAL \c_reset_ctrl|last_btn~feeder_combout\ : std_logic;
SIGNAL \c_reset_ctrl|last_btn~q\ : std_logic;
SIGNAL \c_reset_ctrl|r_resetn~0_combout\ : std_logic;
SIGNAL \c_reset_ctrl|r_resetn~q\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[0]~29_combout\ : std_logic;
SIGNAL \KEY4~input_o\ : std_logic;
SIGNAL \c_trigger_ctrl|btn_sync1~0_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|btn_sync1~q\ : std_logic;
SIGNAL \c_trigger_ctrl|btn_sync2~feeder_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|btn_sync2~q\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[0]~16_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|process_0~0_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[3]~18_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[0]~17\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[1]~19_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[1]~20\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[2]~21_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[2]~22\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[3]~23_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[3]~24\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[4]~25_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[4]~26\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[5]~27_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[5]~28\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[6]~29_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[6]~30\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[7]~31_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[7]~32\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[8]~33_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[8]~34\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[9]~35_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[9]~36\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[10]~37_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[10]~38\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[11]~39_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[11]~40\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[12]~41_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[12]~42\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[13]~43_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[13]~44\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[14]~45_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[14]~46\ : std_logic;
SIGNAL \c_trigger_ctrl|cnt[15]~47_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|btn~0_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|btn~q\ : std_logic;
SIGNAL \c_trigger_ctrl|last_btn~feeder_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|last_btn~q\ : std_logic;
SIGNAL \c_trigger_ctrl|r_resetn~0_combout\ : std_logic;
SIGNAL \c_trigger_ctrl|r_resetn~q\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[18]~83_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[0]~30\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[1]~31_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[1]~32\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[2]~33_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[2]~34\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[3]~35_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[3]~36\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[4]~37_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[4]~38\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[5]~39_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[5]~40\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[6]~41_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[6]~42\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[7]~43_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[7]~44\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[8]~45_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[8]~46\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[9]~47_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[9]~48\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[10]~49_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[10]~50\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[11]~51_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[11]~52\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[12]~53_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[12]~54\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[13]~55_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[13]~56\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[14]~57_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[14]~58\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[15]~59_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[15]~60\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[16]~61_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[16]~62\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[17]~63_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[17]~64\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[18]~65_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[18]~66\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[19]~67_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[19]~68\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[20]~69_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[20]~70\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[21]~71_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[21]~72\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[22]~73_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[22]~74\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[23]~75_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~6_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~5_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~0_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[23]~76\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[24]~77_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[24]~78\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[25]~79_combout\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[25]~80\ : std_logic;
SIGNAL \c_debug_tx1|timer_count[26]~81_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~7_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal0~8_combout\ : std_logic;
SIGNAL \c_debug_tx1|tx_trigger~0_combout\ : std_logic;
SIGNAL \c_debug_tx1|tx_trigger~q\ : std_logic;
SIGNAL \c_debug_tx1|tx_active~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|enable_prev~feeder_combout\ : std_logic;
SIGNAL \c_debug_tx1|enable_prev~q\ : std_logic;
SIGNAL \c_debug_tx1|enable_rising~0_combout\ : std_logic;
SIGNAL \c_debug_tx1|enable_rising~q\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[6]~14_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[0]~15_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[6]~29_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[6]~30_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[0]~16\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[1]~17_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[1]~18\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[2]~19_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[2]~20\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[3]~21_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[3]~22\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[4]~23_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[4]~24\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[5]~25_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[5]~26\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[6]~27_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~0_combout\ : std_logic;
SIGNAL \c_debug_tx3|Equal1~0_combout\ : std_logic;
SIGNAL \c_debug_tx3|tx_active~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|tx_active~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|tx_active~q\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[0]~13_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[0]~14_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[5]~28_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[5]~29_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[0]~15\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[1]~16_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[1]~17\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[2]~18_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[2]~19\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[3]~20_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[3]~21\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[4]~22_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[4]~23\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[5]~24_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[5]~25\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[6]~26_combout\ : std_logic;
SIGNAL \c_debug_tx2|Equal1~0_combout\ : std_logic;
SIGNAL \c_debug_tx2|Equal1~1_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~19_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~20_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~21_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~22_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~26_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~27_combout\ : std_logic;
SIGNAL \c_interconnect|active_port.PORT_C~q\ : std_logic;
SIGNAL \c_debug_tx2|tx_active~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|tx_active~3_combout\ : std_logic;
SIGNAL \c_debug_tx2|tx_active~q\ : std_logic;
SIGNAL \c_interconnect|last_port~16_combout\ : std_logic;
SIGNAL \c_interconnect|last_port~17_combout\ : std_logic;
SIGNAL \c_interconnect|last_port~18_combout\ : std_logic;
SIGNAL \c_interconnect|last_port.PORT_C~q\ : std_logic;
SIGNAL \c_interconnect|last_port~15_combout\ : std_logic;
SIGNAL \c_interconnect|last_port~19_combout\ : std_logic;
SIGNAL \c_interconnect|last_port~20_combout\ : std_logic;
SIGNAL \c_interconnect|last_port.PORT_B~q\ : std_logic;
SIGNAL \c_interconnect|last_port~14_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~24_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~25_combout\ : std_logic;
SIGNAL \c_interconnect|active_port.PORT_B~q\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[4]~28_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[4]~29_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[0]~14\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[1]~15_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[1]~16\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[2]~17_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[2]~18\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[3]~19_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[3]~20\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[4]~21_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[4]~22\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[5]~23_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[5]~24\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[6]~26_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal1~0_combout\ : std_logic;
SIGNAL \c_debug_tx1|Equal1~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|tx_active~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|tx_active~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|tx_active~q\ : std_logic;
SIGNAL \c_interconnect|active_port~18_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~28_combout\ : std_logic;
SIGNAL \c_interconnect|active_port.NO_PORT~q\ : std_logic;
SIGNAL \c_interconnect|active_port~16_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~17_combout\ : std_logic;
SIGNAL \c_interconnect|active_port~23_combout\ : std_logic;
SIGNAL \c_interconnect|active_port.PORT_D~q\ : std_logic;
SIGNAL \c_interconnect|PA_TX_tvalid_reg~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|rom_addr[5]~13_combout\ : std_logic;
SIGNAL \c_interconnect|PA_TX_tvalid_reg~3_combout\ : std_logic;
SIGNAL \c_interconnect|PA_TX_tvalid_reg~q\ : std_logic;
SIGNAL \c_eth0_rb|Add4~1_combout\ : std_logic;
SIGNAL \c_interconnect|PA_TX_tlast_reg~2_combout\ : std_logic;
SIGNAL \c_interconnect|PA_TX_tlast_reg~3_combout\ : std_logic;
SIGNAL \c_interconnect|PA_TX_tlast_reg~q\ : std_logic;
SIGNAL \c_eth0_rb|s_handshake~combout\ : std_logic;
SIGNAL \c_eth0_rb|dropping~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|dropping~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|dropping~q\ : std_logic;
SIGNAL \c_eth0_rb|Add1~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|in_packet~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|in_packet~q\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr[0]~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|occ_words[7]~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~9\ : std_logic;
SIGNAL \c_eth0_rb|Add1~10_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~5_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~20_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~14\ : std_logic;
SIGNAL \c_eth0_rb|Add4~18\ : std_logic;
SIGNAL \c_eth0_rb|Add4~21_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~23_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~22\ : std_logic;
SIGNAL \c_eth0_rb|Add4~25_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~6_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~11\ : std_logic;
SIGNAL \c_eth0_rb|Add1~12_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~24_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~27_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~26\ : std_logic;
SIGNAL \c_eth0_rb|Add4~29_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~7_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~13\ : std_logic;
SIGNAL \c_eth0_rb|Add1~14_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~28_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~31_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~30\ : std_logic;
SIGNAL \c_eth0_rb|Add4~33_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~8_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~15\ : std_logic;
SIGNAL \c_eth0_rb|Add1~16_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~32_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~35_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~34\ : std_logic;
SIGNAL \c_eth0_rb|Add4~37_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~9_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~17\ : std_logic;
SIGNAL \c_eth0_rb|Add1~18_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~36_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~39_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal0~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal0~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|occ_words[7]~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|occ_words[7]~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~2\ : std_logic;
SIGNAL \c_eth0_rb|Add4~5_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~1\ : std_logic;
SIGNAL \c_eth0_rb|Add1~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~7_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~6\ : std_logic;
SIGNAL \c_eth0_rb|Add4~9_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~3\ : std_logic;
SIGNAL \c_eth0_rb|Add1~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~8_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~11_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~10\ : std_logic;
SIGNAL \c_eth0_rb|Add4~13_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~5\ : std_logic;
SIGNAL \c_eth0_rb|Add1~6_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~12_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~15_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~7\ : std_logic;
SIGNAL \c_eth0_rb|Add1~8_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~16_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~17_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~19_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal0~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal0~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr~11_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~38\ : std_logic;
SIGNAL \c_eth0_rb|Add4~41_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~10_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~19\ : std_logic;
SIGNAL \c_eth0_rb|Add1~20_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~40_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~43_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add4~42\ : std_logic;
SIGNAL \c_eth0_rb|Add4~44_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_occ~11_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add1~21\ : std_logic;
SIGNAL \c_eth0_rb|Add1~22_combout\ : std_logic;
SIGNAL \c_eth0_rb|occ_words[11]~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|occ_words[11]~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|occ_words[11]~5_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[0]~11_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[5]~33_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[0]~12\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[1]~13_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[1]~14\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[2]~15_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[2]~16\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[3]~17_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~5_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[3]~18\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[4]~19_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~6_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[4]~20\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[5]~21_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~7_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[5]~22\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[6]~23_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~8_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[6]~24\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[7]~25_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~9_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[7]~26\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[8]~27_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~10_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[8]~28\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[9]~29_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~11_combout\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[9]~30\ : std_logic;
SIGNAL \c_eth0_rb|wr_ptr[10]~31_combout\ : std_logic;
SIGNAL \c_eth0_rb|sop_ptr~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0~20_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~9_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux7~4_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux7~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux7~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux7~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux7~0_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux7~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~10_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~3_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~2_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux7~4_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux7~0_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux7~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux7~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux7~3_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux7~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~4_combout\ : std_logic;
SIGNAL \c_debug_tx3|rom_addr[6]~13_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~6_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~7_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux7~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux7~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux7~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux7~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux7~0_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux7~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~1_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~8_combout\ : std_logic;
SIGNAL \c_interconnect|Selector25~11_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[0]~12_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[0]~13\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[1]~14_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[1]~15\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[2]~16_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[2]~17\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[3]~18_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[3]~19\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[4]~20_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[4]~21\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[5]~22_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[5]~23\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[6]~24_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[6]~25\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[7]~26_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[7]~27\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[8]~28_combout\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[8]~29\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[9]~30_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux6~0_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux6~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux6~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux6~1_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~12_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~13_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~4_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~14_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~2_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~3_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|rom_addr[4]~25_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux6~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux6~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~6_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux6~0_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux6~1_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~10_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~7_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~8_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~9_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~11_combout\ : std_logic;
SIGNAL \c_interconnect|Selector24~15_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux5~5_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux5~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux5~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux5~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux5~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux5~6_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux5~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector23~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux5~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux5~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux5~4_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux5~5_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux5~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux5~6_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux5~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector23~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux5~0_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux5~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux5~3_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux5~4_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux5~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux5~5_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux5~6_combout\ : std_logic;
SIGNAL \c_interconnect|Selector23~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector23~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux4~0_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux4~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux4~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux4~4_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux4~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux4~5_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux4~6_combout\ : std_logic;
SIGNAL \c_interconnect|Selector22~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux4~0_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux4~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux4~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux4~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux4~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux4~5_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux4~6_combout\ : std_logic;
SIGNAL \c_interconnect|Selector22~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux4~5_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux4~3_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux4~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux4~4_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux4~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux4~6_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux4~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector22~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector22~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux3~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux3~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux3~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux3~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux3~5_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux3~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector21~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux3~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux3~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux3~4_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux3~3_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux3~5_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux3~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector21~0_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux3~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux3~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux3~4_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux3~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux3~5_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux3~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector21~2_combout\ : std_logic;
SIGNAL \c_interconnect|Selector21~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux2~0_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux2~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux2~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux2~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux2~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux2~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector20~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux2~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux2~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux2~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux2~4_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux2~5_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux2~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector20~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux2~0_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux2~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux2~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux2~4_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux2~3_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux2~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector20~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector20~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux1~2_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux1~3_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux1~4_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux1~1_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux1~5_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux1~6_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux1~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector19~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux1~5_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux1~2_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux1~3_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux1~4_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux1~1_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux1~6_combout\ : std_logic;
SIGNAL \c_debug_tx3|Mux1~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector19~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux1~0_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux1~1_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux1~5_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux1~2_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux1~3_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux1~4_combout\ : std_logic;
SIGNAL \c_debug_tx2|Mux1~6_combout\ : std_logic;
SIGNAL \c_interconnect|Selector19~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector19~3_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~16_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~17_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~18_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~15_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~19_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~20_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~5_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~6_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~7_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~8_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~9_combout\ : std_logic;
SIGNAL \c_debug_tx1|Mux0~0_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~10_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~12_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~13_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~11_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~14_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~22_combout\ : std_logic;
SIGNAL \c_interconnect|Selector18~21_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[9]~31\ : std_logic;
SIGNAL \c_eth0_rb|rd_ptr[10]~32_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|sel_b_r~feeder_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|sel_b_r~q\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1~20_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[8]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|packet_valid~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|packet_valid~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~11_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|process_0~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~28\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~29_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.IFG~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[0]~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~17\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~19\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~38_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~21\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~22_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~23\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~24_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~39_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~25\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~26_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~40_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~27\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~28_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~41_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~29\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~30_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~42_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~31\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~32_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~43_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~33\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~34_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~44_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~35\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~36_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~45_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Equal0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~22\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~23_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~24\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~25_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~26\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~27_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~28\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~29_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~31_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[1]~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[2]~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[3]~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[4]~5_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[5]~6_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[6]~7_combout\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|b_dout[7]~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~1\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~3\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~5\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~7\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~9\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~11\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~13\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~15\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~38_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~30\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~31_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|process_0~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~32\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~33_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|process_0~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~34\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~36_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|process_0~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~15_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~16\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~17_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~18\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~19_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~20\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~21_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|byte_valid~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Add0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Add0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|state.TX~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|mem_state~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector3~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector3~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~14\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~17_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~18\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~19_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~20\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~21_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~22\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~23_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~24\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~25_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~26\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~27_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.READY~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.LAST~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0_rb|Add2~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add2~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add2~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[0]~18_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[10]~50_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add2~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|Add2~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[0]~19\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[1]~20_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[1]~21\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[2]~22_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[2]~23\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[3]~24_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[3]~25\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[4]~26_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[4]~27\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[5]~28_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[5]~29\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[6]~30_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[6]~31\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[7]~32_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[7]~33\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[8]~34_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[8]~35\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[9]~36_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[9]~37\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[10]~38_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[10]~39\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[11]~40_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[11]~41\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[12]~42_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[12]~43\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[13]~44_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[13]~45\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[14]~46_combout\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[14]~47\ : std_logic;
SIGNAL \c_eth0_rb|pkt_count[15]~48_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal1~3_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal1~2_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal1~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal1~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|Equal1~4_combout\ : std_logic;
SIGNAL \c_eth0_rb|out_ready_phase~feeder_combout\ : std_logic;
SIGNAL \c_eth0_rb|out_ready_phase~q\ : std_logic;
SIGNAL \c_eth0_rb|process_0~0_combout\ : std_logic;
SIGNAL \c_eth0_rb|m_axis_tvalid_i~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~10_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~11_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_out~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_piso_sr|bit_valid~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_pt|tx_active~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[0]~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~22_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~23\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~24_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~25\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~26_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~27\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~28_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~29\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~30_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~31\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~32_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~33\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~34_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~35\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~36_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~37\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~38_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~39\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~40_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~41\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~42_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~43\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~44_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~45\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~46_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~47\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~48_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~49\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~50_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~51\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~52_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~53\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~54_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~55\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~56_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~57\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~58_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~59\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~60_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~61\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter[20]~62_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector0~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_mcn_phase~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector4~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector4~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector4~2_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector4~3_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector4~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.TP_IDL~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Equal1~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~6_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.NLP~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|p_seq~8_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector0~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.IDLE~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[4]~11_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector4~5_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector3~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector3~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[0]~6\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[1]~7_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[1]~8\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[2]~9_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[2]~10\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[3]~13_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[3]~14\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter[4]~15_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector2~4_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector1~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|state.TX~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_tp_idl_out~1_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_tp_idl_out~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|r_nlp_out~q\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector5~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_phy|Selector5~1_combout\ : std_logic;
SIGNAL \c_eth0_rb|occ_words\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \c_eth0_rb|pkt_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \c_eth0_rb|wr_ptr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0_rb|rd_ptr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|r_packet_length\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_trigger_ctrl|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_phy|r_clk_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|r_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_phy|r_inactivity_counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_IFG\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_debug_tx1|rom_addr\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_reset_ctrl|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \c_debug_tx2|rom_addr\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_debug_tx3|rom_addr\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_pt|cnt_addr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_debug_tx1|timer_count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \c_interconnect|PA_TX_tdata_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_eth0_rb|sop_occ\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \c_eth0_rb|sop_ptr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_eth0|c_tx|c_fsm_axi|cnt_addr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \c_reset_ctrl|ALT_INV_r_resetn~q\ : std_logic;
SIGNAL \c_trigger_ctrl|ALT_INV_r_resetn~q\ : std_logic;
SIGNAL \c_eth0_rb|ram_inst|ALT_INV_b_dout[8]~0_combout\ : std_logic;
SIGNAL \c_eth0|c_tx|c_fsm_axi|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \c_eth0_rb|ALT_INV_m_axis_tvalid_i~q\ : std_logic;

BEGIN

ww_MAIN_CLK <= MAIN_CLK;
ww_RESET <= RESET;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_KEY4 <= KEY4;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
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

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\c_eth0_rb|ram_inst|b_dout[3]~4_combout\ & \c_eth0_rb|ram_inst|b_dout[2]~3_combout\ & \c_eth0_rb|ram_inst|b_dout[1]~2_combout\ & 
\c_eth0_rb|ram_inst|b_dout[0]~1_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(10) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0));

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ & 
\c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\
& \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\c_eth0_rb|ram_inst|b_dout[7]~8_combout\ & \c_eth0_rb|ram_inst|b_dout[6]~7_combout\ & \c_eth0_rb|ram_inst|b_dout[5]~6_combout\ & 
\c_eth0_rb|ram_inst|b_dout[4]~5_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(10) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & 
\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0));

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ & 
\c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ & \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\
& \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ & \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\);

\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7) <= \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);

\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\c_interconnect|PA_TX_tlast_reg~q\ & \c_interconnect|PA_TX_tdata_reg\(7) & \c_interconnect|PA_TX_tdata_reg\(6) & \c_interconnect|PA_TX_tdata_reg\(5) & 
\c_interconnect|PA_TX_tdata_reg\(4) & \c_interconnect|PA_TX_tdata_reg\(3) & \c_interconnect|PA_TX_tdata_reg\(2) & \c_interconnect|PA_TX_tdata_reg\(1) & \c_interconnect|PA_TX_tdata_reg\(0));

\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\c_eth0_rb|wr_ptr\(9) & \c_eth0_rb|wr_ptr\(8) & \c_eth0_rb|wr_ptr\(7) & \c_eth0_rb|wr_ptr\(6) & \c_eth0_rb|wr_ptr\(5) & \c_eth0_rb|wr_ptr\(4) & 
\c_eth0_rb|wr_ptr\(3) & \c_eth0_rb|wr_ptr\(2) & \c_eth0_rb|wr_ptr\(1) & \c_eth0_rb|wr_ptr\(0));

\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\c_eth0_rb|rd_ptr\(9) & \c_eth0_rb|rd_ptr\(8) & \c_eth0_rb|rd_ptr\(7) & \c_eth0_rb|rd_ptr\(6) & \c_eth0_rb|rd_ptr\(5) & \c_eth0_rb|rd_ptr\(4) & 
\c_eth0_rb|rd_ptr\(3) & \c_eth0_rb|rd_ptr\(2) & \c_eth0_rb|rd_ptr\(1) & \c_eth0_rb|rd_ptr\(0));

\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a1\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a2\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a3\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a4\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a5\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a6\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a7\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a8\ <= \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\c_interconnect|PA_TX_tlast_reg~q\ & \c_interconnect|PA_TX_tdata_reg\(7) & \c_interconnect|PA_TX_tdata_reg\(6) & \c_interconnect|PA_TX_tdata_reg\(5) & 
\c_interconnect|PA_TX_tdata_reg\(4) & \c_interconnect|PA_TX_tdata_reg\(3) & \c_interconnect|PA_TX_tdata_reg\(2) & \c_interconnect|PA_TX_tdata_reg\(1) & \c_interconnect|PA_TX_tdata_reg\(0));

\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\c_eth0_rb|wr_ptr\(9) & \c_eth0_rb|wr_ptr\(8) & \c_eth0_rb|wr_ptr\(7) & \c_eth0_rb|wr_ptr\(6) & \c_eth0_rb|wr_ptr\(5) & \c_eth0_rb|wr_ptr\(4) & 
\c_eth0_rb|wr_ptr\(3) & \c_eth0_rb|wr_ptr\(2) & \c_eth0_rb|wr_ptr\(1) & \c_eth0_rb|wr_ptr\(0));

\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\c_eth0_rb|rd_ptr\(9) & \c_eth0_rb|rd_ptr\(8) & \c_eth0_rb|rd_ptr\(7) & \c_eth0_rb|rd_ptr\(6) & \c_eth0_rb|rd_ptr\(5) & \c_eth0_rb|rd_ptr\(4) & 
\c_eth0_rb|rd_ptr\(3) & \c_eth0_rb|rd_ptr\(2) & \c_eth0_rb|rd_ptr\(1) & \c_eth0_rb|rd_ptr\(0));

\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a1\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a2\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a3\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a4\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a5\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a6\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a7\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a8\ <= \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\c_reset_ctrl|ALT_INV_r_resetn~q\ <= NOT \c_reset_ctrl|r_resetn~q\;
\c_trigger_ctrl|ALT_INV_r_resetn~q\ <= NOT \c_trigger_ctrl|r_resetn~q\;
\c_eth0_rb|ram_inst|ALT_INV_b_dout[8]~0_combout\ <= NOT \c_eth0_rb|ram_inst|b_dout[8]~0_combout\;
\c_eth0|c_tx|c_fsm_axi|ALT_INV_state.IDLE~q\ <= NOT \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\;
\c_eth0_rb|ALT_INV_m_axis_tvalid_i~q\ <= NOT \c_eth0_rb|m_axis_tvalid_i~q\;

-- Location: IOOBUF_X34_Y9_N16
\LED1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_eth0_rb|ALT_INV_m_axis_tvalid_i~q\,
	devoe => ww_devoe,
	o => ww_LED1);

-- Location: IOOBUF_X34_Y9_N9
\LED2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_eth0|c_tx|c_fsm_axi|ALT_INV_state.IDLE~q\,
	devoe => ww_devoe,
	o => ww_LED2);

-- Location: IOOBUF_X34_Y9_N2
\LED3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_eth0_rb|ram_inst|ALT_INV_b_dout[8]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED3);

-- Location: IOOBUF_X34_Y10_N9
\LED4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_trigger_ctrl|ALT_INV_r_resetn~q\,
	devoe => ww_devoe,
	o => ww_LED4);

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
	i => \c_eth0|c_tx|c_phy|Selector5~1_combout\,
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
	i => VCC,
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
	areset => GND,
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

-- Location: LCCOMB_X17_Y12_N0
\c_reset_ctrl|cnt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[0]~16_combout\ = \c_reset_ctrl|cnt\(0) $ (VCC)
-- \c_reset_ctrl|cnt[0]~17\ = CARRY(\c_reset_ctrl|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(0),
	datad => VCC,
	combout => \c_reset_ctrl|cnt[0]~16_combout\,
	cout => \c_reset_ctrl|cnt[0]~17\);

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

-- Location: LCCOMB_X16_Y12_N2
\c_reset_ctrl|btn_sync1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|btn_sync1~0_combout\ = !\RESET~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RESET~input_o\,
	combout => \c_reset_ctrl|btn_sync1~0_combout\);

-- Location: FF_X16_Y12_N3
\c_reset_ctrl|btn_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|btn_sync1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|btn_sync1~q\);

-- Location: LCCOMB_X16_Y12_N24
\c_reset_ctrl|btn_sync2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|btn_sync2~feeder_combout\ = \c_reset_ctrl|btn_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_reset_ctrl|btn_sync1~q\,
	combout => \c_reset_ctrl|btn_sync2~feeder_combout\);

-- Location: FF_X16_Y12_N25
\c_reset_ctrl|btn_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|btn_sync2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|btn_sync2~q\);

-- Location: LCCOMB_X16_Y12_N6
\c_reset_ctrl|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|process_0~0_combout\ = \c_reset_ctrl|btn~q\ $ (\c_reset_ctrl|btn_sync2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|btn~q\,
	datad => \c_reset_ctrl|btn_sync2~q\,
	combout => \c_reset_ctrl|process_0~0_combout\);

-- Location: LCCOMB_X16_Y12_N4
\c_reset_ctrl|cnt[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[3]~18_combout\ = (\c_reset_ctrl|btn~q\ $ (\c_reset_ctrl|btn_sync2~q\)) # (!\c_reset_ctrl|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|btn~q\,
	datab => \c_reset_ctrl|Equal0~4_combout\,
	datad => \c_reset_ctrl|btn_sync2~q\,
	combout => \c_reset_ctrl|cnt[3]~18_combout\);

-- Location: FF_X17_Y12_N1
\c_reset_ctrl|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[0]~16_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(0));

-- Location: LCCOMB_X17_Y12_N2
\c_reset_ctrl|cnt[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[1]~19_combout\ = (\c_reset_ctrl|cnt\(1) & (!\c_reset_ctrl|cnt[0]~17\)) # (!\c_reset_ctrl|cnt\(1) & ((\c_reset_ctrl|cnt[0]~17\) # (GND)))
-- \c_reset_ctrl|cnt[1]~20\ = CARRY((!\c_reset_ctrl|cnt[0]~17\) # (!\c_reset_ctrl|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(1),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[0]~17\,
	combout => \c_reset_ctrl|cnt[1]~19_combout\,
	cout => \c_reset_ctrl|cnt[1]~20\);

-- Location: FF_X17_Y12_N3
\c_reset_ctrl|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[1]~19_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(1));

-- Location: LCCOMB_X17_Y12_N4
\c_reset_ctrl|cnt[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[2]~21_combout\ = (\c_reset_ctrl|cnt\(2) & (\c_reset_ctrl|cnt[1]~20\ $ (GND))) # (!\c_reset_ctrl|cnt\(2) & (!\c_reset_ctrl|cnt[1]~20\ & VCC))
-- \c_reset_ctrl|cnt[2]~22\ = CARRY((\c_reset_ctrl|cnt\(2) & !\c_reset_ctrl|cnt[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(2),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[1]~20\,
	combout => \c_reset_ctrl|cnt[2]~21_combout\,
	cout => \c_reset_ctrl|cnt[2]~22\);

-- Location: FF_X17_Y12_N5
\c_reset_ctrl|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[2]~21_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(2));

-- Location: LCCOMB_X17_Y12_N6
\c_reset_ctrl|cnt[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[3]~23_combout\ = (\c_reset_ctrl|cnt\(3) & (!\c_reset_ctrl|cnt[2]~22\)) # (!\c_reset_ctrl|cnt\(3) & ((\c_reset_ctrl|cnt[2]~22\) # (GND)))
-- \c_reset_ctrl|cnt[3]~24\ = CARRY((!\c_reset_ctrl|cnt[2]~22\) # (!\c_reset_ctrl|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(3),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[2]~22\,
	combout => \c_reset_ctrl|cnt[3]~23_combout\,
	cout => \c_reset_ctrl|cnt[3]~24\);

-- Location: FF_X17_Y12_N7
\c_reset_ctrl|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[3]~23_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(3));

-- Location: LCCOMB_X16_Y12_N10
\c_reset_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~0_combout\ = (\c_reset_ctrl|cnt\(3) & (\c_reset_ctrl|cnt\(2) & (\c_reset_ctrl|cnt\(0) & \c_reset_ctrl|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(3),
	datab => \c_reset_ctrl|cnt\(2),
	datac => \c_reset_ctrl|cnt\(0),
	datad => \c_reset_ctrl|cnt\(1),
	combout => \c_reset_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y12_N8
\c_reset_ctrl|cnt[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[4]~25_combout\ = (\c_reset_ctrl|cnt\(4) & (\c_reset_ctrl|cnt[3]~24\ $ (GND))) # (!\c_reset_ctrl|cnt\(4) & (!\c_reset_ctrl|cnt[3]~24\ & VCC))
-- \c_reset_ctrl|cnt[4]~26\ = CARRY((\c_reset_ctrl|cnt\(4) & !\c_reset_ctrl|cnt[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(4),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[3]~24\,
	combout => \c_reset_ctrl|cnt[4]~25_combout\,
	cout => \c_reset_ctrl|cnt[4]~26\);

-- Location: FF_X17_Y12_N9
\c_reset_ctrl|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[4]~25_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(4));

-- Location: LCCOMB_X17_Y12_N10
\c_reset_ctrl|cnt[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[5]~27_combout\ = (\c_reset_ctrl|cnt\(5) & (!\c_reset_ctrl|cnt[4]~26\)) # (!\c_reset_ctrl|cnt\(5) & ((\c_reset_ctrl|cnt[4]~26\) # (GND)))
-- \c_reset_ctrl|cnt[5]~28\ = CARRY((!\c_reset_ctrl|cnt[4]~26\) # (!\c_reset_ctrl|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(5),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[4]~26\,
	combout => \c_reset_ctrl|cnt[5]~27_combout\,
	cout => \c_reset_ctrl|cnt[5]~28\);

-- Location: FF_X17_Y12_N11
\c_reset_ctrl|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[5]~27_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(5));

-- Location: LCCOMB_X17_Y12_N12
\c_reset_ctrl|cnt[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[6]~29_combout\ = (\c_reset_ctrl|cnt\(6) & (\c_reset_ctrl|cnt[5]~28\ $ (GND))) # (!\c_reset_ctrl|cnt\(6) & (!\c_reset_ctrl|cnt[5]~28\ & VCC))
-- \c_reset_ctrl|cnt[6]~30\ = CARRY((\c_reset_ctrl|cnt\(6) & !\c_reset_ctrl|cnt[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(6),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[5]~28\,
	combout => \c_reset_ctrl|cnt[6]~29_combout\,
	cout => \c_reset_ctrl|cnt[6]~30\);

-- Location: FF_X17_Y12_N13
\c_reset_ctrl|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[6]~29_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(6));

-- Location: LCCOMB_X17_Y12_N14
\c_reset_ctrl|cnt[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[7]~31_combout\ = (\c_reset_ctrl|cnt\(7) & (!\c_reset_ctrl|cnt[6]~30\)) # (!\c_reset_ctrl|cnt\(7) & ((\c_reset_ctrl|cnt[6]~30\) # (GND)))
-- \c_reset_ctrl|cnt[7]~32\ = CARRY((!\c_reset_ctrl|cnt[6]~30\) # (!\c_reset_ctrl|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(7),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[6]~30\,
	combout => \c_reset_ctrl|cnt[7]~31_combout\,
	cout => \c_reset_ctrl|cnt[7]~32\);

-- Location: FF_X17_Y12_N15
\c_reset_ctrl|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[7]~31_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(7));

-- Location: LCCOMB_X17_Y12_N16
\c_reset_ctrl|cnt[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[8]~33_combout\ = (\c_reset_ctrl|cnt\(8) & (\c_reset_ctrl|cnt[7]~32\ $ (GND))) # (!\c_reset_ctrl|cnt\(8) & (!\c_reset_ctrl|cnt[7]~32\ & VCC))
-- \c_reset_ctrl|cnt[8]~34\ = CARRY((\c_reset_ctrl|cnt\(8) & !\c_reset_ctrl|cnt[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(8),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[7]~32\,
	combout => \c_reset_ctrl|cnt[8]~33_combout\,
	cout => \c_reset_ctrl|cnt[8]~34\);

-- Location: FF_X17_Y12_N17
\c_reset_ctrl|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[8]~33_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(8));

-- Location: LCCOMB_X17_Y12_N18
\c_reset_ctrl|cnt[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[9]~35_combout\ = (\c_reset_ctrl|cnt\(9) & (!\c_reset_ctrl|cnt[8]~34\)) # (!\c_reset_ctrl|cnt\(9) & ((\c_reset_ctrl|cnt[8]~34\) # (GND)))
-- \c_reset_ctrl|cnt[9]~36\ = CARRY((!\c_reset_ctrl|cnt[8]~34\) # (!\c_reset_ctrl|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(9),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[8]~34\,
	combout => \c_reset_ctrl|cnt[9]~35_combout\,
	cout => \c_reset_ctrl|cnt[9]~36\);

-- Location: FF_X17_Y12_N19
\c_reset_ctrl|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[9]~35_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(9));

-- Location: LCCOMB_X17_Y12_N20
\c_reset_ctrl|cnt[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[10]~37_combout\ = (\c_reset_ctrl|cnt\(10) & (\c_reset_ctrl|cnt[9]~36\ $ (GND))) # (!\c_reset_ctrl|cnt\(10) & (!\c_reset_ctrl|cnt[9]~36\ & VCC))
-- \c_reset_ctrl|cnt[10]~38\ = CARRY((\c_reset_ctrl|cnt\(10) & !\c_reset_ctrl|cnt[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(10),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[9]~36\,
	combout => \c_reset_ctrl|cnt[10]~37_combout\,
	cout => \c_reset_ctrl|cnt[10]~38\);

-- Location: FF_X17_Y12_N21
\c_reset_ctrl|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[10]~37_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(10));

-- Location: LCCOMB_X17_Y12_N22
\c_reset_ctrl|cnt[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[11]~39_combout\ = (\c_reset_ctrl|cnt\(11) & (!\c_reset_ctrl|cnt[10]~38\)) # (!\c_reset_ctrl|cnt\(11) & ((\c_reset_ctrl|cnt[10]~38\) # (GND)))
-- \c_reset_ctrl|cnt[11]~40\ = CARRY((!\c_reset_ctrl|cnt[10]~38\) # (!\c_reset_ctrl|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(11),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[10]~38\,
	combout => \c_reset_ctrl|cnt[11]~39_combout\,
	cout => \c_reset_ctrl|cnt[11]~40\);

-- Location: FF_X17_Y12_N23
\c_reset_ctrl|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[11]~39_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(11));

-- Location: LCCOMB_X17_Y12_N24
\c_reset_ctrl|cnt[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[12]~41_combout\ = (\c_reset_ctrl|cnt\(12) & (\c_reset_ctrl|cnt[11]~40\ $ (GND))) # (!\c_reset_ctrl|cnt\(12) & (!\c_reset_ctrl|cnt[11]~40\ & VCC))
-- \c_reset_ctrl|cnt[12]~42\ = CARRY((\c_reset_ctrl|cnt\(12) & !\c_reset_ctrl|cnt[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(12),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[11]~40\,
	combout => \c_reset_ctrl|cnt[12]~41_combout\,
	cout => \c_reset_ctrl|cnt[12]~42\);

-- Location: FF_X17_Y12_N25
\c_reset_ctrl|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[12]~41_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(12));

-- Location: LCCOMB_X17_Y12_N26
\c_reset_ctrl|cnt[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[13]~43_combout\ = (\c_reset_ctrl|cnt\(13) & (!\c_reset_ctrl|cnt[12]~42\)) # (!\c_reset_ctrl|cnt\(13) & ((\c_reset_ctrl|cnt[12]~42\) # (GND)))
-- \c_reset_ctrl|cnt[13]~44\ = CARRY((!\c_reset_ctrl|cnt[12]~42\) # (!\c_reset_ctrl|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(13),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[12]~42\,
	combout => \c_reset_ctrl|cnt[13]~43_combout\,
	cout => \c_reset_ctrl|cnt[13]~44\);

-- Location: FF_X17_Y12_N27
\c_reset_ctrl|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[13]~43_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(13));

-- Location: LCCOMB_X17_Y12_N28
\c_reset_ctrl|cnt[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[14]~45_combout\ = (\c_reset_ctrl|cnt\(14) & (\c_reset_ctrl|cnt[13]~44\ $ (GND))) # (!\c_reset_ctrl|cnt\(14) & (!\c_reset_ctrl|cnt[13]~44\ & VCC))
-- \c_reset_ctrl|cnt[14]~46\ = CARRY((\c_reset_ctrl|cnt\(14) & !\c_reset_ctrl|cnt[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|cnt\(14),
	datad => VCC,
	cin => \c_reset_ctrl|cnt[13]~44\,
	combout => \c_reset_ctrl|cnt[14]~45_combout\,
	cout => \c_reset_ctrl|cnt[14]~46\);

-- Location: FF_X17_Y12_N29
\c_reset_ctrl|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[14]~45_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(14));

-- Location: LCCOMB_X17_Y12_N30
\c_reset_ctrl|cnt[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|cnt[15]~47_combout\ = \c_reset_ctrl|cnt\(15) $ (\c_reset_ctrl|cnt[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(15),
	cin => \c_reset_ctrl|cnt[14]~46\,
	combout => \c_reset_ctrl|cnt[15]~47_combout\);

-- Location: FF_X17_Y12_N31
\c_reset_ctrl|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|cnt[15]~47_combout\,
	sclr => \c_reset_ctrl|process_0~0_combout\,
	ena => \c_reset_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|cnt\(15));

-- Location: LCCOMB_X16_Y12_N8
\c_reset_ctrl|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~3_combout\ = (\c_reset_ctrl|cnt\(12) & (\c_reset_ctrl|cnt\(14) & (\c_reset_ctrl|cnt\(15) & \c_reset_ctrl|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(12),
	datab => \c_reset_ctrl|cnt\(14),
	datac => \c_reset_ctrl|cnt\(15),
	datad => \c_reset_ctrl|cnt\(13),
	combout => \c_reset_ctrl|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y12_N26
\c_reset_ctrl|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~2_combout\ = (\c_reset_ctrl|cnt\(8) & (\c_reset_ctrl|cnt\(9) & (\c_reset_ctrl|cnt\(10) & \c_reset_ctrl|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(8),
	datab => \c_reset_ctrl|cnt\(9),
	datac => \c_reset_ctrl|cnt\(10),
	datad => \c_reset_ctrl|cnt\(11),
	combout => \c_reset_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y12_N0
\c_reset_ctrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~1_combout\ = (\c_reset_ctrl|cnt\(4) & (\c_reset_ctrl|cnt\(6) & (\c_reset_ctrl|cnt\(5) & \c_reset_ctrl|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|cnt\(4),
	datab => \c_reset_ctrl|cnt\(6),
	datac => \c_reset_ctrl|cnt\(5),
	datad => \c_reset_ctrl|cnt\(7),
	combout => \c_reset_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y12_N18
\c_reset_ctrl|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|Equal0~4_combout\ = (\c_reset_ctrl|Equal0~0_combout\ & (\c_reset_ctrl|Equal0~3_combout\ & (\c_reset_ctrl|Equal0~2_combout\ & \c_reset_ctrl|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|Equal0~0_combout\,
	datab => \c_reset_ctrl|Equal0~3_combout\,
	datac => \c_reset_ctrl|Equal0~2_combout\,
	datad => \c_reset_ctrl|Equal0~1_combout\,
	combout => \c_reset_ctrl|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y12_N12
\c_reset_ctrl|btn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|btn~0_combout\ = (\c_reset_ctrl|Equal0~4_combout\ & ((\c_reset_ctrl|btn_sync2~q\))) # (!\c_reset_ctrl|Equal0~4_combout\ & (\c_reset_ctrl|btn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_reset_ctrl|Equal0~4_combout\,
	datac => \c_reset_ctrl|btn~q\,
	datad => \c_reset_ctrl|btn_sync2~q\,
	combout => \c_reset_ctrl|btn~0_combout\);

-- Location: FF_X16_Y12_N13
\c_reset_ctrl|btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|btn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|btn~q\);

-- Location: LCCOMB_X16_Y12_N22
\c_reset_ctrl|last_btn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|last_btn~feeder_combout\ = \c_reset_ctrl|btn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_reset_ctrl|btn~q\,
	combout => \c_reset_ctrl|last_btn~feeder_combout\);

-- Location: FF_X16_Y12_N23
\c_reset_ctrl|last_btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|last_btn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|last_btn~q\);

-- Location: LCCOMB_X16_Y12_N16
\c_reset_ctrl|r_resetn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_reset_ctrl|r_resetn~0_combout\ = \c_reset_ctrl|r_resetn~q\ $ (((!\c_reset_ctrl|last_btn~q\ & \c_reset_ctrl|btn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|last_btn~q\,
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_reset_ctrl|btn~q\,
	combout => \c_reset_ctrl|r_resetn~0_combout\);

-- Location: FF_X16_Y12_N17
\c_reset_ctrl|r_resetn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_reset_ctrl|r_resetn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_reset_ctrl|r_resetn~q\);

-- Location: LCCOMB_X19_Y13_N6
\c_debug_tx1|timer_count[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[0]~29_combout\ = \c_debug_tx1|timer_count\(0) $ (VCC)
-- \c_debug_tx1|timer_count[0]~30\ = CARRY(\c_debug_tx1|timer_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(0),
	datad => VCC,
	combout => \c_debug_tx1|timer_count[0]~29_combout\,
	cout => \c_debug_tx1|timer_count[0]~30\);

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

-- Location: LCCOMB_X26_Y13_N10
\c_trigger_ctrl|btn_sync1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|btn_sync1~0_combout\ = !\KEY4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY4~input_o\,
	combout => \c_trigger_ctrl|btn_sync1~0_combout\);

-- Location: FF_X26_Y13_N11
\c_trigger_ctrl|btn_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|btn_sync1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|btn_sync1~q\);

-- Location: LCCOMB_X26_Y13_N8
\c_trigger_ctrl|btn_sync2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|btn_sync2~feeder_combout\ = \c_trigger_ctrl|btn_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_trigger_ctrl|btn_sync1~q\,
	combout => \c_trigger_ctrl|btn_sync2~feeder_combout\);

-- Location: FF_X26_Y13_N9
\c_trigger_ctrl|btn_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|btn_sync2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|btn_sync2~q\);

-- Location: LCCOMB_X25_Y13_N0
\c_trigger_ctrl|cnt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[0]~16_combout\ = \c_trigger_ctrl|cnt\(0) $ (VCC)
-- \c_trigger_ctrl|cnt[0]~17\ = CARRY(\c_trigger_ctrl|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(0),
	datad => VCC,
	combout => \c_trigger_ctrl|cnt[0]~16_combout\,
	cout => \c_trigger_ctrl|cnt[0]~17\);

-- Location: LCCOMB_X26_Y13_N22
\c_trigger_ctrl|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|process_0~0_combout\ = \c_trigger_ctrl|btn_sync2~q\ $ (\c_trigger_ctrl|btn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_trigger_ctrl|btn_sync2~q\,
	datad => \c_trigger_ctrl|btn~q\,
	combout => \c_trigger_ctrl|process_0~0_combout\);

-- Location: LCCOMB_X26_Y13_N24
\c_trigger_ctrl|cnt[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[3]~18_combout\ = (\c_trigger_ctrl|btn~q\ $ (\c_trigger_ctrl|btn_sync2~q\)) # (!\c_trigger_ctrl|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|btn~q\,
	datac => \c_trigger_ctrl|btn_sync2~q\,
	datad => \c_trigger_ctrl|Equal0~4_combout\,
	combout => \c_trigger_ctrl|cnt[3]~18_combout\);

-- Location: FF_X25_Y13_N1
\c_trigger_ctrl|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[0]~16_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(0));

-- Location: LCCOMB_X25_Y13_N2
\c_trigger_ctrl|cnt[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[1]~19_combout\ = (\c_trigger_ctrl|cnt\(1) & (!\c_trigger_ctrl|cnt[0]~17\)) # (!\c_trigger_ctrl|cnt\(1) & ((\c_trigger_ctrl|cnt[0]~17\) # (GND)))
-- \c_trigger_ctrl|cnt[1]~20\ = CARRY((!\c_trigger_ctrl|cnt[0]~17\) # (!\c_trigger_ctrl|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(1),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[0]~17\,
	combout => \c_trigger_ctrl|cnt[1]~19_combout\,
	cout => \c_trigger_ctrl|cnt[1]~20\);

-- Location: FF_X25_Y13_N3
\c_trigger_ctrl|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[1]~19_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(1));

-- Location: LCCOMB_X25_Y13_N4
\c_trigger_ctrl|cnt[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[2]~21_combout\ = (\c_trigger_ctrl|cnt\(2) & (\c_trigger_ctrl|cnt[1]~20\ $ (GND))) # (!\c_trigger_ctrl|cnt\(2) & (!\c_trigger_ctrl|cnt[1]~20\ & VCC))
-- \c_trigger_ctrl|cnt[2]~22\ = CARRY((\c_trigger_ctrl|cnt\(2) & !\c_trigger_ctrl|cnt[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(2),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[1]~20\,
	combout => \c_trigger_ctrl|cnt[2]~21_combout\,
	cout => \c_trigger_ctrl|cnt[2]~22\);

-- Location: FF_X25_Y13_N5
\c_trigger_ctrl|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[2]~21_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(2));

-- Location: LCCOMB_X25_Y13_N6
\c_trigger_ctrl|cnt[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[3]~23_combout\ = (\c_trigger_ctrl|cnt\(3) & (!\c_trigger_ctrl|cnt[2]~22\)) # (!\c_trigger_ctrl|cnt\(3) & ((\c_trigger_ctrl|cnt[2]~22\) # (GND)))
-- \c_trigger_ctrl|cnt[3]~24\ = CARRY((!\c_trigger_ctrl|cnt[2]~22\) # (!\c_trigger_ctrl|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(3),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[2]~22\,
	combout => \c_trigger_ctrl|cnt[3]~23_combout\,
	cout => \c_trigger_ctrl|cnt[3]~24\);

-- Location: FF_X25_Y13_N7
\c_trigger_ctrl|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[3]~23_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(3));

-- Location: LCCOMB_X25_Y13_N8
\c_trigger_ctrl|cnt[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[4]~25_combout\ = (\c_trigger_ctrl|cnt\(4) & (\c_trigger_ctrl|cnt[3]~24\ $ (GND))) # (!\c_trigger_ctrl|cnt\(4) & (!\c_trigger_ctrl|cnt[3]~24\ & VCC))
-- \c_trigger_ctrl|cnt[4]~26\ = CARRY((\c_trigger_ctrl|cnt\(4) & !\c_trigger_ctrl|cnt[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(4),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[3]~24\,
	combout => \c_trigger_ctrl|cnt[4]~25_combout\,
	cout => \c_trigger_ctrl|cnt[4]~26\);

-- Location: FF_X25_Y13_N9
\c_trigger_ctrl|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[4]~25_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(4));

-- Location: LCCOMB_X25_Y13_N10
\c_trigger_ctrl|cnt[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[5]~27_combout\ = (\c_trigger_ctrl|cnt\(5) & (!\c_trigger_ctrl|cnt[4]~26\)) # (!\c_trigger_ctrl|cnt\(5) & ((\c_trigger_ctrl|cnt[4]~26\) # (GND)))
-- \c_trigger_ctrl|cnt[5]~28\ = CARRY((!\c_trigger_ctrl|cnt[4]~26\) # (!\c_trigger_ctrl|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(5),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[4]~26\,
	combout => \c_trigger_ctrl|cnt[5]~27_combout\,
	cout => \c_trigger_ctrl|cnt[5]~28\);

-- Location: FF_X25_Y13_N11
\c_trigger_ctrl|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[5]~27_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(5));

-- Location: LCCOMB_X25_Y13_N12
\c_trigger_ctrl|cnt[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[6]~29_combout\ = (\c_trigger_ctrl|cnt\(6) & (\c_trigger_ctrl|cnt[5]~28\ $ (GND))) # (!\c_trigger_ctrl|cnt\(6) & (!\c_trigger_ctrl|cnt[5]~28\ & VCC))
-- \c_trigger_ctrl|cnt[6]~30\ = CARRY((\c_trigger_ctrl|cnt\(6) & !\c_trigger_ctrl|cnt[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(6),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[5]~28\,
	combout => \c_trigger_ctrl|cnt[6]~29_combout\,
	cout => \c_trigger_ctrl|cnt[6]~30\);

-- Location: FF_X25_Y13_N13
\c_trigger_ctrl|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[6]~29_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(6));

-- Location: LCCOMB_X25_Y13_N14
\c_trigger_ctrl|cnt[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[7]~31_combout\ = (\c_trigger_ctrl|cnt\(7) & (!\c_trigger_ctrl|cnt[6]~30\)) # (!\c_trigger_ctrl|cnt\(7) & ((\c_trigger_ctrl|cnt[6]~30\) # (GND)))
-- \c_trigger_ctrl|cnt[7]~32\ = CARRY((!\c_trigger_ctrl|cnt[6]~30\) # (!\c_trigger_ctrl|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(7),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[6]~30\,
	combout => \c_trigger_ctrl|cnt[7]~31_combout\,
	cout => \c_trigger_ctrl|cnt[7]~32\);

-- Location: FF_X25_Y13_N15
\c_trigger_ctrl|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[7]~31_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(7));

-- Location: LCCOMB_X25_Y13_N16
\c_trigger_ctrl|cnt[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[8]~33_combout\ = (\c_trigger_ctrl|cnt\(8) & (\c_trigger_ctrl|cnt[7]~32\ $ (GND))) # (!\c_trigger_ctrl|cnt\(8) & (!\c_trigger_ctrl|cnt[7]~32\ & VCC))
-- \c_trigger_ctrl|cnt[8]~34\ = CARRY((\c_trigger_ctrl|cnt\(8) & !\c_trigger_ctrl|cnt[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(8),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[7]~32\,
	combout => \c_trigger_ctrl|cnt[8]~33_combout\,
	cout => \c_trigger_ctrl|cnt[8]~34\);

-- Location: FF_X25_Y13_N17
\c_trigger_ctrl|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[8]~33_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(8));

-- Location: LCCOMB_X25_Y13_N18
\c_trigger_ctrl|cnt[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[9]~35_combout\ = (\c_trigger_ctrl|cnt\(9) & (!\c_trigger_ctrl|cnt[8]~34\)) # (!\c_trigger_ctrl|cnt\(9) & ((\c_trigger_ctrl|cnt[8]~34\) # (GND)))
-- \c_trigger_ctrl|cnt[9]~36\ = CARRY((!\c_trigger_ctrl|cnt[8]~34\) # (!\c_trigger_ctrl|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(9),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[8]~34\,
	combout => \c_trigger_ctrl|cnt[9]~35_combout\,
	cout => \c_trigger_ctrl|cnt[9]~36\);

-- Location: FF_X25_Y13_N19
\c_trigger_ctrl|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[9]~35_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(9));

-- Location: LCCOMB_X25_Y13_N20
\c_trigger_ctrl|cnt[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[10]~37_combout\ = (\c_trigger_ctrl|cnt\(10) & (\c_trigger_ctrl|cnt[9]~36\ $ (GND))) # (!\c_trigger_ctrl|cnt\(10) & (!\c_trigger_ctrl|cnt[9]~36\ & VCC))
-- \c_trigger_ctrl|cnt[10]~38\ = CARRY((\c_trigger_ctrl|cnt\(10) & !\c_trigger_ctrl|cnt[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(10),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[9]~36\,
	combout => \c_trigger_ctrl|cnt[10]~37_combout\,
	cout => \c_trigger_ctrl|cnt[10]~38\);

-- Location: FF_X25_Y13_N21
\c_trigger_ctrl|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[10]~37_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(10));

-- Location: LCCOMB_X25_Y13_N22
\c_trigger_ctrl|cnt[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[11]~39_combout\ = (\c_trigger_ctrl|cnt\(11) & (!\c_trigger_ctrl|cnt[10]~38\)) # (!\c_trigger_ctrl|cnt\(11) & ((\c_trigger_ctrl|cnt[10]~38\) # (GND)))
-- \c_trigger_ctrl|cnt[11]~40\ = CARRY((!\c_trigger_ctrl|cnt[10]~38\) # (!\c_trigger_ctrl|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(11),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[10]~38\,
	combout => \c_trigger_ctrl|cnt[11]~39_combout\,
	cout => \c_trigger_ctrl|cnt[11]~40\);

-- Location: FF_X25_Y13_N23
\c_trigger_ctrl|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[11]~39_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(11));

-- Location: LCCOMB_X26_Y13_N6
\c_trigger_ctrl|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|Equal0~2_combout\ = (\c_trigger_ctrl|cnt\(10) & (\c_trigger_ctrl|cnt\(11) & (\c_trigger_ctrl|cnt\(8) & \c_trigger_ctrl|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(10),
	datab => \c_trigger_ctrl|cnt\(11),
	datac => \c_trigger_ctrl|cnt\(8),
	datad => \c_trigger_ctrl|cnt\(9),
	combout => \c_trigger_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y13_N28
\c_trigger_ctrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|Equal0~1_combout\ = (\c_trigger_ctrl|cnt\(5) & (\c_trigger_ctrl|cnt\(6) & (\c_trigger_ctrl|cnt\(7) & \c_trigger_ctrl|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(5),
	datab => \c_trigger_ctrl|cnt\(6),
	datac => \c_trigger_ctrl|cnt\(7),
	datad => \c_trigger_ctrl|cnt\(4),
	combout => \c_trigger_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y13_N24
\c_trigger_ctrl|cnt[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[12]~41_combout\ = (\c_trigger_ctrl|cnt\(12) & (\c_trigger_ctrl|cnt[11]~40\ $ (GND))) # (!\c_trigger_ctrl|cnt\(12) & (!\c_trigger_ctrl|cnt[11]~40\ & VCC))
-- \c_trigger_ctrl|cnt[12]~42\ = CARRY((\c_trigger_ctrl|cnt\(12) & !\c_trigger_ctrl|cnt[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(12),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[11]~40\,
	combout => \c_trigger_ctrl|cnt[12]~41_combout\,
	cout => \c_trigger_ctrl|cnt[12]~42\);

-- Location: FF_X25_Y13_N25
\c_trigger_ctrl|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[12]~41_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(12));

-- Location: LCCOMB_X25_Y13_N26
\c_trigger_ctrl|cnt[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[13]~43_combout\ = (\c_trigger_ctrl|cnt\(13) & (!\c_trigger_ctrl|cnt[12]~42\)) # (!\c_trigger_ctrl|cnt\(13) & ((\c_trigger_ctrl|cnt[12]~42\) # (GND)))
-- \c_trigger_ctrl|cnt[13]~44\ = CARRY((!\c_trigger_ctrl|cnt[12]~42\) # (!\c_trigger_ctrl|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(13),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[12]~42\,
	combout => \c_trigger_ctrl|cnt[13]~43_combout\,
	cout => \c_trigger_ctrl|cnt[13]~44\);

-- Location: FF_X25_Y13_N27
\c_trigger_ctrl|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[13]~43_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(13));

-- Location: LCCOMB_X25_Y13_N28
\c_trigger_ctrl|cnt[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[14]~45_combout\ = (\c_trigger_ctrl|cnt\(14) & (\c_trigger_ctrl|cnt[13]~44\ $ (GND))) # (!\c_trigger_ctrl|cnt\(14) & (!\c_trigger_ctrl|cnt[13]~44\ & VCC))
-- \c_trigger_ctrl|cnt[14]~46\ = CARRY((\c_trigger_ctrl|cnt\(14) & !\c_trigger_ctrl|cnt[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|cnt\(14),
	datad => VCC,
	cin => \c_trigger_ctrl|cnt[13]~44\,
	combout => \c_trigger_ctrl|cnt[14]~45_combout\,
	cout => \c_trigger_ctrl|cnt[14]~46\);

-- Location: FF_X25_Y13_N29
\c_trigger_ctrl|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[14]~45_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(14));

-- Location: LCCOMB_X25_Y13_N30
\c_trigger_ctrl|cnt[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|cnt[15]~47_combout\ = \c_trigger_ctrl|cnt\(15) $ (\c_trigger_ctrl|cnt[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(15),
	cin => \c_trigger_ctrl|cnt[14]~46\,
	combout => \c_trigger_ctrl|cnt[15]~47_combout\);

-- Location: FF_X25_Y13_N31
\c_trigger_ctrl|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|cnt[15]~47_combout\,
	sclr => \c_trigger_ctrl|process_0~0_combout\,
	ena => \c_trigger_ctrl|cnt[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|cnt\(15));

-- Location: LCCOMB_X26_Y13_N4
\c_trigger_ctrl|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|Equal0~3_combout\ = (\c_trigger_ctrl|cnt\(15) & (\c_trigger_ctrl|cnt\(14) & (\c_trigger_ctrl|cnt\(13) & \c_trigger_ctrl|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(15),
	datab => \c_trigger_ctrl|cnt\(14),
	datac => \c_trigger_ctrl|cnt\(13),
	datad => \c_trigger_ctrl|cnt\(12),
	combout => \c_trigger_ctrl|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y13_N18
\c_trigger_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|Equal0~0_combout\ = (\c_trigger_ctrl|cnt\(0) & (\c_trigger_ctrl|cnt\(3) & (\c_trigger_ctrl|cnt\(2) & \c_trigger_ctrl|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|cnt\(0),
	datab => \c_trigger_ctrl|cnt\(3),
	datac => \c_trigger_ctrl|cnt\(2),
	datad => \c_trigger_ctrl|cnt\(1),
	combout => \c_trigger_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y13_N2
\c_trigger_ctrl|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|Equal0~4_combout\ = (\c_trigger_ctrl|Equal0~2_combout\ & (\c_trigger_ctrl|Equal0~1_combout\ & (\c_trigger_ctrl|Equal0~3_combout\ & \c_trigger_ctrl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_trigger_ctrl|Equal0~2_combout\,
	datab => \c_trigger_ctrl|Equal0~1_combout\,
	datac => \c_trigger_ctrl|Equal0~3_combout\,
	datad => \c_trigger_ctrl|Equal0~0_combout\,
	combout => \c_trigger_ctrl|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y13_N16
\c_trigger_ctrl|btn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|btn~0_combout\ = (\c_trigger_ctrl|Equal0~4_combout\ & (\c_trigger_ctrl|btn_sync2~q\)) # (!\c_trigger_ctrl|Equal0~4_combout\ & ((\c_trigger_ctrl|btn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|btn_sync2~q\,
	datac => \c_trigger_ctrl|btn~q\,
	datad => \c_trigger_ctrl|Equal0~4_combout\,
	combout => \c_trigger_ctrl|btn~0_combout\);

-- Location: FF_X26_Y13_N17
\c_trigger_ctrl|btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|btn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|btn~q\);

-- Location: LCCOMB_X26_Y13_N26
\c_trigger_ctrl|last_btn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|last_btn~feeder_combout\ = \c_trigger_ctrl|btn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_trigger_ctrl|btn~q\,
	combout => \c_trigger_ctrl|last_btn~feeder_combout\);

-- Location: FF_X26_Y13_N27
\c_trigger_ctrl|last_btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|last_btn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|last_btn~q\);

-- Location: LCCOMB_X26_Y13_N12
\c_trigger_ctrl|r_resetn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_trigger_ctrl|r_resetn~0_combout\ = \c_trigger_ctrl|r_resetn~q\ $ (((\c_trigger_ctrl|btn~q\ & !\c_trigger_ctrl|last_btn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_trigger_ctrl|btn~q\,
	datac => \c_trigger_ctrl|r_resetn~q\,
	datad => \c_trigger_ctrl|last_btn~q\,
	combout => \c_trigger_ctrl|r_resetn~0_combout\);

-- Location: FF_X26_Y13_N13
\c_trigger_ctrl|r_resetn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_trigger_ctrl|r_resetn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_trigger_ctrl|r_resetn~q\);

-- Location: LCCOMB_X21_Y11_N16
\c_debug_tx1|timer_count[18]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[18]~83_combout\ = ((!\c_debug_tx1|Equal0~8_combout\) # (!\c_trigger_ctrl|r_resetn~q\)) # (!\c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datab => \c_trigger_ctrl|r_resetn~q\,
	datad => \c_debug_tx1|Equal0~8_combout\,
	combout => \c_debug_tx1|timer_count[18]~83_combout\);

-- Location: FF_X19_Y13_N7
\c_debug_tx1|timer_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[0]~29_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(0));

-- Location: LCCOMB_X19_Y13_N8
\c_debug_tx1|timer_count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[1]~31_combout\ = (\c_debug_tx1|timer_count\(1) & (!\c_debug_tx1|timer_count[0]~30\)) # (!\c_debug_tx1|timer_count\(1) & ((\c_debug_tx1|timer_count[0]~30\) # (GND)))
-- \c_debug_tx1|timer_count[1]~32\ = CARRY((!\c_debug_tx1|timer_count[0]~30\) # (!\c_debug_tx1|timer_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(1),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[0]~30\,
	combout => \c_debug_tx1|timer_count[1]~31_combout\,
	cout => \c_debug_tx1|timer_count[1]~32\);

-- Location: FF_X19_Y13_N9
\c_debug_tx1|timer_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[1]~31_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(1));

-- Location: LCCOMB_X19_Y13_N10
\c_debug_tx1|timer_count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[2]~33_combout\ = (\c_debug_tx1|timer_count\(2) & (\c_debug_tx1|timer_count[1]~32\ $ (GND))) # (!\c_debug_tx1|timer_count\(2) & (!\c_debug_tx1|timer_count[1]~32\ & VCC))
-- \c_debug_tx1|timer_count[2]~34\ = CARRY((\c_debug_tx1|timer_count\(2) & !\c_debug_tx1|timer_count[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(2),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[1]~32\,
	combout => \c_debug_tx1|timer_count[2]~33_combout\,
	cout => \c_debug_tx1|timer_count[2]~34\);

-- Location: FF_X19_Y13_N11
\c_debug_tx1|timer_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[2]~33_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(2));

-- Location: LCCOMB_X19_Y13_N12
\c_debug_tx1|timer_count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[3]~35_combout\ = (\c_debug_tx1|timer_count\(3) & (!\c_debug_tx1|timer_count[2]~34\)) # (!\c_debug_tx1|timer_count\(3) & ((\c_debug_tx1|timer_count[2]~34\) # (GND)))
-- \c_debug_tx1|timer_count[3]~36\ = CARRY((!\c_debug_tx1|timer_count[2]~34\) # (!\c_debug_tx1|timer_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(3),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[2]~34\,
	combout => \c_debug_tx1|timer_count[3]~35_combout\,
	cout => \c_debug_tx1|timer_count[3]~36\);

-- Location: FF_X19_Y13_N13
\c_debug_tx1|timer_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[3]~35_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(3));

-- Location: LCCOMB_X19_Y13_N14
\c_debug_tx1|timer_count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[4]~37_combout\ = (\c_debug_tx1|timer_count\(4) & (\c_debug_tx1|timer_count[3]~36\ $ (GND))) # (!\c_debug_tx1|timer_count\(4) & (!\c_debug_tx1|timer_count[3]~36\ & VCC))
-- \c_debug_tx1|timer_count[4]~38\ = CARRY((\c_debug_tx1|timer_count\(4) & !\c_debug_tx1|timer_count[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(4),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[3]~36\,
	combout => \c_debug_tx1|timer_count[4]~37_combout\,
	cout => \c_debug_tx1|timer_count[4]~38\);

-- Location: FF_X19_Y13_N15
\c_debug_tx1|timer_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[4]~37_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(4));

-- Location: LCCOMB_X19_Y13_N16
\c_debug_tx1|timer_count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[5]~39_combout\ = (\c_debug_tx1|timer_count\(5) & (!\c_debug_tx1|timer_count[4]~38\)) # (!\c_debug_tx1|timer_count\(5) & ((\c_debug_tx1|timer_count[4]~38\) # (GND)))
-- \c_debug_tx1|timer_count[5]~40\ = CARRY((!\c_debug_tx1|timer_count[4]~38\) # (!\c_debug_tx1|timer_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(5),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[4]~38\,
	combout => \c_debug_tx1|timer_count[5]~39_combout\,
	cout => \c_debug_tx1|timer_count[5]~40\);

-- Location: FF_X19_Y13_N17
\c_debug_tx1|timer_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[5]~39_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(5));

-- Location: LCCOMB_X19_Y13_N18
\c_debug_tx1|timer_count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[6]~41_combout\ = (\c_debug_tx1|timer_count\(6) & (\c_debug_tx1|timer_count[5]~40\ $ (GND))) # (!\c_debug_tx1|timer_count\(6) & (!\c_debug_tx1|timer_count[5]~40\ & VCC))
-- \c_debug_tx1|timer_count[6]~42\ = CARRY((\c_debug_tx1|timer_count\(6) & !\c_debug_tx1|timer_count[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(6),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[5]~40\,
	combout => \c_debug_tx1|timer_count[6]~41_combout\,
	cout => \c_debug_tx1|timer_count[6]~42\);

-- Location: FF_X19_Y13_N19
\c_debug_tx1|timer_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[6]~41_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(6));

-- Location: LCCOMB_X19_Y13_N20
\c_debug_tx1|timer_count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[7]~43_combout\ = (\c_debug_tx1|timer_count\(7) & (!\c_debug_tx1|timer_count[6]~42\)) # (!\c_debug_tx1|timer_count\(7) & ((\c_debug_tx1|timer_count[6]~42\) # (GND)))
-- \c_debug_tx1|timer_count[7]~44\ = CARRY((!\c_debug_tx1|timer_count[6]~42\) # (!\c_debug_tx1|timer_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(7),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[6]~42\,
	combout => \c_debug_tx1|timer_count[7]~43_combout\,
	cout => \c_debug_tx1|timer_count[7]~44\);

-- Location: FF_X19_Y13_N21
\c_debug_tx1|timer_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[7]~43_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(7));

-- Location: LCCOMB_X19_Y13_N22
\c_debug_tx1|timer_count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[8]~45_combout\ = (\c_debug_tx1|timer_count\(8) & (\c_debug_tx1|timer_count[7]~44\ $ (GND))) # (!\c_debug_tx1|timer_count\(8) & (!\c_debug_tx1|timer_count[7]~44\ & VCC))
-- \c_debug_tx1|timer_count[8]~46\ = CARRY((\c_debug_tx1|timer_count\(8) & !\c_debug_tx1|timer_count[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(8),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[7]~44\,
	combout => \c_debug_tx1|timer_count[8]~45_combout\,
	cout => \c_debug_tx1|timer_count[8]~46\);

-- Location: FF_X19_Y13_N23
\c_debug_tx1|timer_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[8]~45_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(8));

-- Location: LCCOMB_X19_Y13_N24
\c_debug_tx1|timer_count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[9]~47_combout\ = (\c_debug_tx1|timer_count\(9) & (!\c_debug_tx1|timer_count[8]~46\)) # (!\c_debug_tx1|timer_count\(9) & ((\c_debug_tx1|timer_count[8]~46\) # (GND)))
-- \c_debug_tx1|timer_count[9]~48\ = CARRY((!\c_debug_tx1|timer_count[8]~46\) # (!\c_debug_tx1|timer_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(9),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[8]~46\,
	combout => \c_debug_tx1|timer_count[9]~47_combout\,
	cout => \c_debug_tx1|timer_count[9]~48\);

-- Location: FF_X19_Y13_N25
\c_debug_tx1|timer_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[9]~47_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(9));

-- Location: LCCOMB_X19_Y13_N26
\c_debug_tx1|timer_count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[10]~49_combout\ = (\c_debug_tx1|timer_count\(10) & (\c_debug_tx1|timer_count[9]~48\ $ (GND))) # (!\c_debug_tx1|timer_count\(10) & (!\c_debug_tx1|timer_count[9]~48\ & VCC))
-- \c_debug_tx1|timer_count[10]~50\ = CARRY((\c_debug_tx1|timer_count\(10) & !\c_debug_tx1|timer_count[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(10),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[9]~48\,
	combout => \c_debug_tx1|timer_count[10]~49_combout\,
	cout => \c_debug_tx1|timer_count[10]~50\);

-- Location: FF_X19_Y13_N27
\c_debug_tx1|timer_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[10]~49_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(10));

-- Location: LCCOMB_X19_Y13_N28
\c_debug_tx1|timer_count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[11]~51_combout\ = (\c_debug_tx1|timer_count\(11) & (!\c_debug_tx1|timer_count[10]~50\)) # (!\c_debug_tx1|timer_count\(11) & ((\c_debug_tx1|timer_count[10]~50\) # (GND)))
-- \c_debug_tx1|timer_count[11]~52\ = CARRY((!\c_debug_tx1|timer_count[10]~50\) # (!\c_debug_tx1|timer_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(11),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[10]~50\,
	combout => \c_debug_tx1|timer_count[11]~51_combout\,
	cout => \c_debug_tx1|timer_count[11]~52\);

-- Location: FF_X19_Y13_N29
\c_debug_tx1|timer_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[11]~51_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(11));

-- Location: LCCOMB_X19_Y13_N30
\c_debug_tx1|timer_count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[12]~53_combout\ = (\c_debug_tx1|timer_count\(12) & (\c_debug_tx1|timer_count[11]~52\ $ (GND))) # (!\c_debug_tx1|timer_count\(12) & (!\c_debug_tx1|timer_count[11]~52\ & VCC))
-- \c_debug_tx1|timer_count[12]~54\ = CARRY((\c_debug_tx1|timer_count\(12) & !\c_debug_tx1|timer_count[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(12),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[11]~52\,
	combout => \c_debug_tx1|timer_count[12]~53_combout\,
	cout => \c_debug_tx1|timer_count[12]~54\);

-- Location: FF_X19_Y13_N31
\c_debug_tx1|timer_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[12]~53_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(12));

-- Location: LCCOMB_X19_Y12_N0
\c_debug_tx1|timer_count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[13]~55_combout\ = (\c_debug_tx1|timer_count\(13) & (!\c_debug_tx1|timer_count[12]~54\)) # (!\c_debug_tx1|timer_count\(13) & ((\c_debug_tx1|timer_count[12]~54\) # (GND)))
-- \c_debug_tx1|timer_count[13]~56\ = CARRY((!\c_debug_tx1|timer_count[12]~54\) # (!\c_debug_tx1|timer_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(13),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[12]~54\,
	combout => \c_debug_tx1|timer_count[13]~55_combout\,
	cout => \c_debug_tx1|timer_count[13]~56\);

-- Location: FF_X19_Y12_N1
\c_debug_tx1|timer_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[13]~55_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(13));

-- Location: LCCOMB_X19_Y12_N2
\c_debug_tx1|timer_count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[14]~57_combout\ = (\c_debug_tx1|timer_count\(14) & (\c_debug_tx1|timer_count[13]~56\ $ (GND))) # (!\c_debug_tx1|timer_count\(14) & (!\c_debug_tx1|timer_count[13]~56\ & VCC))
-- \c_debug_tx1|timer_count[14]~58\ = CARRY((\c_debug_tx1|timer_count\(14) & !\c_debug_tx1|timer_count[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(14),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[13]~56\,
	combout => \c_debug_tx1|timer_count[14]~57_combout\,
	cout => \c_debug_tx1|timer_count[14]~58\);

-- Location: FF_X19_Y12_N3
\c_debug_tx1|timer_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[14]~57_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(14));

-- Location: LCCOMB_X19_Y12_N4
\c_debug_tx1|timer_count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[15]~59_combout\ = (\c_debug_tx1|timer_count\(15) & (!\c_debug_tx1|timer_count[14]~58\)) # (!\c_debug_tx1|timer_count\(15) & ((\c_debug_tx1|timer_count[14]~58\) # (GND)))
-- \c_debug_tx1|timer_count[15]~60\ = CARRY((!\c_debug_tx1|timer_count[14]~58\) # (!\c_debug_tx1|timer_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(15),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[14]~58\,
	combout => \c_debug_tx1|timer_count[15]~59_combout\,
	cout => \c_debug_tx1|timer_count[15]~60\);

-- Location: FF_X19_Y12_N5
\c_debug_tx1|timer_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[15]~59_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(15));

-- Location: LCCOMB_X19_Y12_N6
\c_debug_tx1|timer_count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[16]~61_combout\ = (\c_debug_tx1|timer_count\(16) & (\c_debug_tx1|timer_count[15]~60\ $ (GND))) # (!\c_debug_tx1|timer_count\(16) & (!\c_debug_tx1|timer_count[15]~60\ & VCC))
-- \c_debug_tx1|timer_count[16]~62\ = CARRY((\c_debug_tx1|timer_count\(16) & !\c_debug_tx1|timer_count[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(16),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[15]~60\,
	combout => \c_debug_tx1|timer_count[16]~61_combout\,
	cout => \c_debug_tx1|timer_count[16]~62\);

-- Location: FF_X19_Y12_N7
\c_debug_tx1|timer_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[16]~61_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(16));

-- Location: LCCOMB_X19_Y12_N8
\c_debug_tx1|timer_count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[17]~63_combout\ = (\c_debug_tx1|timer_count\(17) & (!\c_debug_tx1|timer_count[16]~62\)) # (!\c_debug_tx1|timer_count\(17) & ((\c_debug_tx1|timer_count[16]~62\) # (GND)))
-- \c_debug_tx1|timer_count[17]~64\ = CARRY((!\c_debug_tx1|timer_count[16]~62\) # (!\c_debug_tx1|timer_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(17),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[16]~62\,
	combout => \c_debug_tx1|timer_count[17]~63_combout\,
	cout => \c_debug_tx1|timer_count[17]~64\);

-- Location: FF_X19_Y12_N9
\c_debug_tx1|timer_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[17]~63_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(17));

-- Location: LCCOMB_X19_Y12_N10
\c_debug_tx1|timer_count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[18]~65_combout\ = (\c_debug_tx1|timer_count\(18) & (\c_debug_tx1|timer_count[17]~64\ $ (GND))) # (!\c_debug_tx1|timer_count\(18) & (!\c_debug_tx1|timer_count[17]~64\ & VCC))
-- \c_debug_tx1|timer_count[18]~66\ = CARRY((\c_debug_tx1|timer_count\(18) & !\c_debug_tx1|timer_count[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(18),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[17]~64\,
	combout => \c_debug_tx1|timer_count[18]~65_combout\,
	cout => \c_debug_tx1|timer_count[18]~66\);

-- Location: FF_X19_Y12_N11
\c_debug_tx1|timer_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[18]~65_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(18));

-- Location: LCCOMB_X19_Y12_N12
\c_debug_tx1|timer_count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[19]~67_combout\ = (\c_debug_tx1|timer_count\(19) & (!\c_debug_tx1|timer_count[18]~66\)) # (!\c_debug_tx1|timer_count\(19) & ((\c_debug_tx1|timer_count[18]~66\) # (GND)))
-- \c_debug_tx1|timer_count[19]~68\ = CARRY((!\c_debug_tx1|timer_count[18]~66\) # (!\c_debug_tx1|timer_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(19),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[18]~66\,
	combout => \c_debug_tx1|timer_count[19]~67_combout\,
	cout => \c_debug_tx1|timer_count[19]~68\);

-- Location: FF_X19_Y12_N13
\c_debug_tx1|timer_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[19]~67_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(19));

-- Location: LCCOMB_X19_Y12_N14
\c_debug_tx1|timer_count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[20]~69_combout\ = (\c_debug_tx1|timer_count\(20) & (\c_debug_tx1|timer_count[19]~68\ $ (GND))) # (!\c_debug_tx1|timer_count\(20) & (!\c_debug_tx1|timer_count[19]~68\ & VCC))
-- \c_debug_tx1|timer_count[20]~70\ = CARRY((\c_debug_tx1|timer_count\(20) & !\c_debug_tx1|timer_count[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(20),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[19]~68\,
	combout => \c_debug_tx1|timer_count[20]~69_combout\,
	cout => \c_debug_tx1|timer_count[20]~70\);

-- Location: FF_X19_Y12_N15
\c_debug_tx1|timer_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[20]~69_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(20));

-- Location: LCCOMB_X19_Y12_N16
\c_debug_tx1|timer_count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[21]~71_combout\ = (\c_debug_tx1|timer_count\(21) & (!\c_debug_tx1|timer_count[20]~70\)) # (!\c_debug_tx1|timer_count\(21) & ((\c_debug_tx1|timer_count[20]~70\) # (GND)))
-- \c_debug_tx1|timer_count[21]~72\ = CARRY((!\c_debug_tx1|timer_count[20]~70\) # (!\c_debug_tx1|timer_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(21),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[20]~70\,
	combout => \c_debug_tx1|timer_count[21]~71_combout\,
	cout => \c_debug_tx1|timer_count[21]~72\);

-- Location: FF_X19_Y12_N17
\c_debug_tx1|timer_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[21]~71_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(21));

-- Location: LCCOMB_X19_Y12_N18
\c_debug_tx1|timer_count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[22]~73_combout\ = (\c_debug_tx1|timer_count\(22) & (\c_debug_tx1|timer_count[21]~72\ $ (GND))) # (!\c_debug_tx1|timer_count\(22) & (!\c_debug_tx1|timer_count[21]~72\ & VCC))
-- \c_debug_tx1|timer_count[22]~74\ = CARRY((\c_debug_tx1|timer_count\(22) & !\c_debug_tx1|timer_count[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(22),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[21]~72\,
	combout => \c_debug_tx1|timer_count[22]~73_combout\,
	cout => \c_debug_tx1|timer_count[22]~74\);

-- Location: FF_X19_Y12_N19
\c_debug_tx1|timer_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[22]~73_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(22));

-- Location: LCCOMB_X19_Y12_N20
\c_debug_tx1|timer_count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[23]~75_combout\ = (\c_debug_tx1|timer_count\(23) & (!\c_debug_tx1|timer_count[22]~74\)) # (!\c_debug_tx1|timer_count\(23) & ((\c_debug_tx1|timer_count[22]~74\) # (GND)))
-- \c_debug_tx1|timer_count[23]~76\ = CARRY((!\c_debug_tx1|timer_count[22]~74\) # (!\c_debug_tx1|timer_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(23),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[22]~74\,
	combout => \c_debug_tx1|timer_count[23]~75_combout\,
	cout => \c_debug_tx1|timer_count[23]~76\);

-- Location: FF_X19_Y12_N21
\c_debug_tx1|timer_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[23]~75_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(23));

-- Location: LCCOMB_X19_Y12_N30
\c_debug_tx1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~6_combout\ = (((!\c_debug_tx1|timer_count\(21)) # (!\c_debug_tx1|timer_count\(20))) # (!\c_debug_tx1|timer_count\(23))) # (!\c_debug_tx1|timer_count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(22),
	datab => \c_debug_tx1|timer_count\(23),
	datac => \c_debug_tx1|timer_count\(20),
	datad => \c_debug_tx1|timer_count\(21),
	combout => \c_debug_tx1|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y12_N28
\c_debug_tx1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~5_combout\ = ((\c_debug_tx1|timer_count\(19)) # ((\c_debug_tx1|timer_count\(17)) # (!\c_debug_tx1|timer_count\(18)))) # (!\c_debug_tx1|timer_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(16),
	datab => \c_debug_tx1|timer_count\(19),
	datac => \c_debug_tx1|timer_count\(17),
	datad => \c_debug_tx1|timer_count\(18),
	combout => \c_debug_tx1|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y13_N0
\c_debug_tx1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~2_combout\ = (\c_debug_tx1|timer_count\(10)) # ((\c_debug_tx1|timer_count\(11)) # ((\c_debug_tx1|timer_count\(8)) # (\c_debug_tx1|timer_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(10),
	datab => \c_debug_tx1|timer_count\(11),
	datac => \c_debug_tx1|timer_count\(8),
	datad => \c_debug_tx1|timer_count\(9),
	combout => \c_debug_tx1|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y13_N2
\c_debug_tx1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~1_combout\ = (((!\c_debug_tx1|timer_count\(6)) # (!\c_debug_tx1|timer_count\(4))) # (!\c_debug_tx1|timer_count\(5))) # (!\c_debug_tx1|timer_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(7),
	datab => \c_debug_tx1|timer_count\(5),
	datac => \c_debug_tx1|timer_count\(4),
	datad => \c_debug_tx1|timer_count\(6),
	combout => \c_debug_tx1|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y11_N26
\c_debug_tx1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~3_combout\ = (((\c_debug_tx1|timer_count\(12)) # (!\c_debug_tx1|timer_count\(15))) # (!\c_debug_tx1|timer_count\(14))) # (!\c_debug_tx1|timer_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(13),
	datab => \c_debug_tx1|timer_count\(14),
	datac => \c_debug_tx1|timer_count\(15),
	datad => \c_debug_tx1|timer_count\(12),
	combout => \c_debug_tx1|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y13_N4
\c_debug_tx1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~0_combout\ = (((!\c_debug_tx1|timer_count\(0)) # (!\c_debug_tx1|timer_count\(1))) # (!\c_debug_tx1|timer_count\(3))) # (!\c_debug_tx1|timer_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(2),
	datab => \c_debug_tx1|timer_count\(3),
	datac => \c_debug_tx1|timer_count\(1),
	datad => \c_debug_tx1|timer_count\(0),
	combout => \c_debug_tx1|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y11_N8
\c_debug_tx1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~4_combout\ = (\c_debug_tx1|Equal0~2_combout\) # ((\c_debug_tx1|Equal0~1_combout\) # ((\c_debug_tx1|Equal0~3_combout\) # (\c_debug_tx1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Equal0~2_combout\,
	datab => \c_debug_tx1|Equal0~1_combout\,
	datac => \c_debug_tx1|Equal0~3_combout\,
	datad => \c_debug_tx1|Equal0~0_combout\,
	combout => \c_debug_tx1|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y12_N22
\c_debug_tx1|timer_count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[24]~77_combout\ = (\c_debug_tx1|timer_count\(24) & (\c_debug_tx1|timer_count[23]~76\ $ (GND))) # (!\c_debug_tx1|timer_count\(24) & (!\c_debug_tx1|timer_count[23]~76\ & VCC))
-- \c_debug_tx1|timer_count[24]~78\ = CARRY((\c_debug_tx1|timer_count\(24) & !\c_debug_tx1|timer_count[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(24),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[23]~76\,
	combout => \c_debug_tx1|timer_count[24]~77_combout\,
	cout => \c_debug_tx1|timer_count[24]~78\);

-- Location: FF_X19_Y12_N23
\c_debug_tx1|timer_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[24]~77_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(24));

-- Location: LCCOMB_X19_Y12_N24
\c_debug_tx1|timer_count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[25]~79_combout\ = (\c_debug_tx1|timer_count\(25) & (!\c_debug_tx1|timer_count[24]~78\)) # (!\c_debug_tx1|timer_count\(25) & ((\c_debug_tx1|timer_count[24]~78\) # (GND)))
-- \c_debug_tx1|timer_count[25]~80\ = CARRY((!\c_debug_tx1|timer_count[24]~78\) # (!\c_debug_tx1|timer_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|timer_count\(25),
	datad => VCC,
	cin => \c_debug_tx1|timer_count[24]~78\,
	combout => \c_debug_tx1|timer_count[25]~79_combout\,
	cout => \c_debug_tx1|timer_count[25]~80\);

-- Location: FF_X19_Y12_N25
\c_debug_tx1|timer_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[25]~79_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(25));

-- Location: LCCOMB_X19_Y12_N26
\c_debug_tx1|timer_count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|timer_count[26]~81_combout\ = \c_debug_tx1|timer_count\(26) $ (!\c_debug_tx1|timer_count[25]~80\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(26),
	cin => \c_debug_tx1|timer_count[25]~80\,
	combout => \c_debug_tx1|timer_count[26]~81_combout\);

-- Location: FF_X19_Y12_N27
\c_debug_tx1|timer_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|timer_count[26]~81_combout\,
	sclr => \c_debug_tx1|timer_count[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|timer_count\(26));

-- Location: LCCOMB_X21_Y12_N28
\c_debug_tx1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~7_combout\ = ((\c_debug_tx1|timer_count\(25)) # (!\c_debug_tx1|timer_count\(26))) # (!\c_debug_tx1|timer_count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|timer_count\(24),
	datac => \c_debug_tx1|timer_count\(25),
	datad => \c_debug_tx1|timer_count\(26),
	combout => \c_debug_tx1|Equal0~7_combout\);

-- Location: LCCOMB_X21_Y11_N18
\c_debug_tx1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal0~8_combout\ = (\c_debug_tx1|Equal0~6_combout\) # ((\c_debug_tx1|Equal0~5_combout\) # ((\c_debug_tx1|Equal0~4_combout\) # (\c_debug_tx1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Equal0~6_combout\,
	datab => \c_debug_tx1|Equal0~5_combout\,
	datac => \c_debug_tx1|Equal0~4_combout\,
	datad => \c_debug_tx1|Equal0~7_combout\,
	combout => \c_debug_tx1|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y11_N2
\c_debug_tx1|tx_trigger~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|tx_trigger~0_combout\ = (!\c_debug_tx1|Equal0~8_combout\ & \c_trigger_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|Equal0~8_combout\,
	datad => \c_trigger_ctrl|r_resetn~q\,
	combout => \c_debug_tx1|tx_trigger~0_combout\);

-- Location: FF_X21_Y11_N3
\c_debug_tx1|tx_trigger\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|tx_trigger~0_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|tx_trigger~q\);

-- Location: LCCOMB_X21_Y11_N24
\c_debug_tx1|tx_active~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|tx_active~2_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_trigger_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_trigger_ctrl|r_resetn~q\,
	combout => \c_debug_tx1|tx_active~2_combout\);

-- Location: LCCOMB_X21_Y11_N26
\c_debug_tx1|enable_prev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|enable_prev~feeder_combout\ = \c_debug_tx1|tx_active~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_debug_tx1|tx_active~2_combout\,
	combout => \c_debug_tx1|enable_prev~feeder_combout\);

-- Location: FF_X21_Y11_N27
\c_debug_tx1|enable_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|enable_prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|enable_prev~q\);

-- Location: LCCOMB_X21_Y11_N0
\c_debug_tx1|enable_rising~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|enable_rising~0_combout\ = (!\c_debug_tx1|enable_prev~q\ & \c_trigger_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_debug_tx1|enable_prev~q\,
	datad => \c_trigger_ctrl|r_resetn~q\,
	combout => \c_debug_tx1|enable_rising~0_combout\);

-- Location: FF_X21_Y11_N1
\c_debug_tx1|enable_rising\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|enable_rising~0_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|enable_rising~q\);

-- Location: LCCOMB_X21_Y11_N14
\c_debug_tx3|rom_addr[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[6]~14_combout\ = (\c_debug_tx1|tx_trigger~q\) # (\c_debug_tx1|enable_rising~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|tx_trigger~q\,
	datad => \c_debug_tx1|enable_rising~q\,
	combout => \c_debug_tx3|rom_addr[6]~14_combout\);

-- Location: LCCOMB_X22_Y10_N14
\c_debug_tx3|rom_addr[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[0]~15_combout\ = \c_debug_tx3|rom_addr\(0) $ (VCC)
-- \c_debug_tx3|rom_addr[0]~16\ = CARRY(\c_debug_tx3|rom_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx3|rom_addr\(0),
	datad => VCC,
	combout => \c_debug_tx3|rom_addr[0]~15_combout\,
	cout => \c_debug_tx3|rom_addr[0]~16\);

-- Location: LCCOMB_X22_Y11_N0
\c_debug_tx3|rom_addr[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[6]~29_combout\ = (((!\c_debug_tx3|Equal1~0_combout\) # (!\c_debug_tx3|tx_active~q\)) # (!\c_debug_tx1|tx_active~2_combout\)) # (!\c_interconnect|active_port.PORT_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_D~q\,
	datab => \c_debug_tx1|tx_active~2_combout\,
	datac => \c_debug_tx3|tx_active~q\,
	datad => \c_debug_tx3|Equal1~0_combout\,
	combout => \c_debug_tx3|rom_addr[6]~29_combout\);

-- Location: LCCOMB_X22_Y11_N26
\c_debug_tx3|rom_addr[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[6]~30_combout\ = ((\c_debug_tx3|tx_active~q\ & ((\c_interconnect|active_port.PORT_D~q\))) # (!\c_debug_tx3|tx_active~q\ & (\c_debug_tx3|rom_addr[6]~14_combout\))) # (!\c_debug_tx1|tx_active~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr[6]~14_combout\,
	datab => \c_debug_tx3|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_D~q\,
	datad => \c_debug_tx1|tx_active~2_combout\,
	combout => \c_debug_tx3|rom_addr[6]~30_combout\);

-- Location: FF_X22_Y10_N15
\c_debug_tx3|rom_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|rom_addr[0]~15_combout\,
	sclr => \c_debug_tx3|rom_addr[6]~29_combout\,
	ena => \c_debug_tx3|rom_addr[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|rom_addr\(0));

-- Location: LCCOMB_X22_Y10_N16
\c_debug_tx3|rom_addr[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[1]~17_combout\ = (\c_debug_tx3|rom_addr\(1) & (!\c_debug_tx3|rom_addr[0]~16\)) # (!\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr[0]~16\) # (GND)))
-- \c_debug_tx3|rom_addr[1]~18\ = CARRY((!\c_debug_tx3|rom_addr[0]~16\) # (!\c_debug_tx3|rom_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx3|rom_addr\(1),
	datad => VCC,
	cin => \c_debug_tx3|rom_addr[0]~16\,
	combout => \c_debug_tx3|rom_addr[1]~17_combout\,
	cout => \c_debug_tx3|rom_addr[1]~18\);

-- Location: FF_X22_Y10_N17
\c_debug_tx3|rom_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|rom_addr[1]~17_combout\,
	sclr => \c_debug_tx3|rom_addr[6]~29_combout\,
	ena => \c_debug_tx3|rom_addr[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|rom_addr\(1));

-- Location: LCCOMB_X22_Y10_N18
\c_debug_tx3|rom_addr[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[2]~19_combout\ = (\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|rom_addr[1]~18\ $ (GND))) # (!\c_debug_tx3|rom_addr\(2) & (!\c_debug_tx3|rom_addr[1]~18\ & VCC))
-- \c_debug_tx3|rom_addr[2]~20\ = CARRY((\c_debug_tx3|rom_addr\(2) & !\c_debug_tx3|rom_addr[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(2),
	datad => VCC,
	cin => \c_debug_tx3|rom_addr[1]~18\,
	combout => \c_debug_tx3|rom_addr[2]~19_combout\,
	cout => \c_debug_tx3|rom_addr[2]~20\);

-- Location: FF_X22_Y10_N19
\c_debug_tx3|rom_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|rom_addr[2]~19_combout\,
	sclr => \c_debug_tx3|rom_addr[6]~29_combout\,
	ena => \c_debug_tx3|rom_addr[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|rom_addr\(2));

-- Location: LCCOMB_X22_Y10_N20
\c_debug_tx3|rom_addr[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[3]~21_combout\ = (\c_debug_tx3|rom_addr\(3) & (!\c_debug_tx3|rom_addr[2]~20\)) # (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr[2]~20\) # (GND)))
-- \c_debug_tx3|rom_addr[3]~22\ = CARRY((!\c_debug_tx3|rom_addr[2]~20\) # (!\c_debug_tx3|rom_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx3|rom_addr\(3),
	datad => VCC,
	cin => \c_debug_tx3|rom_addr[2]~20\,
	combout => \c_debug_tx3|rom_addr[3]~21_combout\,
	cout => \c_debug_tx3|rom_addr[3]~22\);

-- Location: FF_X22_Y10_N21
\c_debug_tx3|rom_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|rom_addr[3]~21_combout\,
	sclr => \c_debug_tx3|rom_addr[6]~29_combout\,
	ena => \c_debug_tx3|rom_addr[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|rom_addr\(3));

-- Location: LCCOMB_X22_Y10_N22
\c_debug_tx3|rom_addr[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[4]~23_combout\ = (\c_debug_tx3|rom_addr\(4) & (\c_debug_tx3|rom_addr[3]~22\ $ (GND))) # (!\c_debug_tx3|rom_addr\(4) & (!\c_debug_tx3|rom_addr[3]~22\ & VCC))
-- \c_debug_tx3|rom_addr[4]~24\ = CARRY((\c_debug_tx3|rom_addr\(4) & !\c_debug_tx3|rom_addr[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(4),
	datad => VCC,
	cin => \c_debug_tx3|rom_addr[3]~22\,
	combout => \c_debug_tx3|rom_addr[4]~23_combout\,
	cout => \c_debug_tx3|rom_addr[4]~24\);

-- Location: FF_X22_Y10_N23
\c_debug_tx3|rom_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|rom_addr[4]~23_combout\,
	sclr => \c_debug_tx3|rom_addr[6]~29_combout\,
	ena => \c_debug_tx3|rom_addr[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|rom_addr\(4));

-- Location: LCCOMB_X22_Y10_N24
\c_debug_tx3|rom_addr[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[5]~25_combout\ = (\c_debug_tx3|rom_addr\(5) & (!\c_debug_tx3|rom_addr[4]~24\)) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr[4]~24\) # (GND)))
-- \c_debug_tx3|rom_addr[5]~26\ = CARRY((!\c_debug_tx3|rom_addr[4]~24\) # (!\c_debug_tx3|rom_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx3|rom_addr\(5),
	datad => VCC,
	cin => \c_debug_tx3|rom_addr[4]~24\,
	combout => \c_debug_tx3|rom_addr[5]~25_combout\,
	cout => \c_debug_tx3|rom_addr[5]~26\);

-- Location: FF_X22_Y10_N25
\c_debug_tx3|rom_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|rom_addr[5]~25_combout\,
	sclr => \c_debug_tx3|rom_addr[6]~29_combout\,
	ena => \c_debug_tx3|rom_addr[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|rom_addr\(5));

-- Location: LCCOMB_X22_Y10_N26
\c_debug_tx3|rom_addr[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[6]~27_combout\ = \c_debug_tx3|rom_addr\(6) $ (!\c_debug_tx3|rom_addr[5]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(6),
	cin => \c_debug_tx3|rom_addr[5]~26\,
	combout => \c_debug_tx3|rom_addr[6]~27_combout\);

-- Location: FF_X22_Y10_N27
\c_debug_tx3|rom_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|rom_addr[6]~27_combout\,
	sclr => \c_debug_tx3|rom_addr[6]~29_combout\,
	ena => \c_debug_tx3|rom_addr[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|rom_addr\(6));

-- Location: LCCOMB_X23_Y11_N0
\c_interconnect|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~0_combout\ = (\c_debug_tx3|rom_addr\(6) & (!\c_debug_tx3|rom_addr\(3) & (!\c_debug_tx3|rom_addr\(4) & !\c_debug_tx3|rom_addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(6),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|rom_addr\(5),
	combout => \c_interconnect|Selector25~0_combout\);

-- Location: LCCOMB_X23_Y11_N22
\c_debug_tx3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Equal1~0_combout\ = (\c_debug_tx3|rom_addr\(1)) # (((!\c_debug_tx3|rom_addr\(0)) # (!\c_debug_tx3|rom_addr\(2))) # (!\c_interconnect|Selector25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_interconnect|Selector25~0_combout\,
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y11_N4
\c_debug_tx3|tx_active~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|tx_active~2_combout\ = (\c_debug_tx3|tx_active~q\ & (((\c_debug_tx3|Equal1~0_combout\) # (!\c_interconnect|active_port.PORT_D~q\)))) # (!\c_debug_tx3|tx_active~q\ & (\c_debug_tx3|rom_addr[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr[6]~14_combout\,
	datab => \c_debug_tx3|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_D~q\,
	datad => \c_debug_tx3|Equal1~0_combout\,
	combout => \c_debug_tx3|tx_active~2_combout\);

-- Location: LCCOMB_X22_Y11_N8
\c_debug_tx3|tx_active~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|tx_active~3_combout\ = (\c_reset_ctrl|r_resetn~q\ & (\c_debug_tx3|tx_active~2_combout\ & \c_trigger_ctrl|r_resetn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datac => \c_debug_tx3|tx_active~2_combout\,
	datad => \c_trigger_ctrl|r_resetn~q\,
	combout => \c_debug_tx3|tx_active~3_combout\);

-- Location: FF_X22_Y11_N9
\c_debug_tx3|tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx3|tx_active~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx3|tx_active~q\);

-- Location: LCCOMB_X18_Y9_N10
\c_debug_tx1|rom_addr[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[0]~13_combout\ = \c_debug_tx1|rom_addr\(0) $ (VCC)
-- \c_debug_tx1|rom_addr[0]~14\ = CARRY(\c_debug_tx1|rom_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(0),
	datad => VCC,
	combout => \c_debug_tx1|rom_addr[0]~13_combout\,
	cout => \c_debug_tx1|rom_addr[0]~14\);

-- Location: LCCOMB_X18_Y10_N16
\c_debug_tx2|rom_addr[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[0]~14_combout\ = \c_debug_tx2|rom_addr\(0) $ (VCC)
-- \c_debug_tx2|rom_addr[0]~15\ = CARRY(\c_debug_tx2|rom_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(0),
	datad => VCC,
	combout => \c_debug_tx2|rom_addr[0]~14_combout\,
	cout => \c_debug_tx2|rom_addr[0]~15\);

-- Location: LCCOMB_X22_Y11_N16
\c_debug_tx2|rom_addr[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[5]~28_combout\ = (((!\c_debug_tx1|tx_active~2_combout\) # (!\c_debug_tx2|tx_active~q\)) # (!\c_debug_tx2|Equal1~1_combout\)) # (!\c_interconnect|active_port.PORT_C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_C~q\,
	datab => \c_debug_tx2|Equal1~1_combout\,
	datac => \c_debug_tx2|tx_active~q\,
	datad => \c_debug_tx1|tx_active~2_combout\,
	combout => \c_debug_tx2|rom_addr[5]~28_combout\);

-- Location: LCCOMB_X22_Y11_N30
\c_debug_tx2|rom_addr[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[5]~29_combout\ = ((\c_debug_tx2|tx_active~q\ & ((\c_interconnect|active_port.PORT_C~q\))) # (!\c_debug_tx2|tx_active~q\ & (\c_debug_tx3|rom_addr[6]~14_combout\))) # (!\c_debug_tx1|tx_active~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr[6]~14_combout\,
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_C~q\,
	datad => \c_debug_tx1|tx_active~2_combout\,
	combout => \c_debug_tx2|rom_addr[5]~29_combout\);

-- Location: FF_X18_Y10_N17
\c_debug_tx2|rom_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|rom_addr[0]~14_combout\,
	sclr => \c_debug_tx2|rom_addr[5]~28_combout\,
	ena => \c_debug_tx2|rom_addr[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|rom_addr\(0));

-- Location: LCCOMB_X18_Y10_N18
\c_debug_tx2|rom_addr[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[1]~16_combout\ = (\c_debug_tx2|rom_addr\(1) & (!\c_debug_tx2|rom_addr[0]~15\)) # (!\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|rom_addr[0]~15\) # (GND)))
-- \c_debug_tx2|rom_addr[1]~17\ = CARRY((!\c_debug_tx2|rom_addr[0]~15\) # (!\c_debug_tx2|rom_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(1),
	datad => VCC,
	cin => \c_debug_tx2|rom_addr[0]~15\,
	combout => \c_debug_tx2|rom_addr[1]~16_combout\,
	cout => \c_debug_tx2|rom_addr[1]~17\);

-- Location: FF_X18_Y10_N19
\c_debug_tx2|rom_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|rom_addr[1]~16_combout\,
	sclr => \c_debug_tx2|rom_addr[5]~28_combout\,
	ena => \c_debug_tx2|rom_addr[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|rom_addr\(1));

-- Location: LCCOMB_X18_Y10_N20
\c_debug_tx2|rom_addr[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[2]~18_combout\ = (\c_debug_tx2|rom_addr\(2) & (\c_debug_tx2|rom_addr[1]~17\ $ (GND))) # (!\c_debug_tx2|rom_addr\(2) & (!\c_debug_tx2|rom_addr[1]~17\ & VCC))
-- \c_debug_tx2|rom_addr[2]~19\ = CARRY((\c_debug_tx2|rom_addr\(2) & !\c_debug_tx2|rom_addr[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(2),
	datad => VCC,
	cin => \c_debug_tx2|rom_addr[1]~17\,
	combout => \c_debug_tx2|rom_addr[2]~18_combout\,
	cout => \c_debug_tx2|rom_addr[2]~19\);

-- Location: FF_X18_Y10_N21
\c_debug_tx2|rom_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|rom_addr[2]~18_combout\,
	sclr => \c_debug_tx2|rom_addr[5]~28_combout\,
	ena => \c_debug_tx2|rom_addr[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|rom_addr\(2));

-- Location: LCCOMB_X18_Y10_N22
\c_debug_tx2|rom_addr[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[3]~20_combout\ = (\c_debug_tx2|rom_addr\(3) & (!\c_debug_tx2|rom_addr[2]~19\)) # (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr[2]~19\) # (GND)))
-- \c_debug_tx2|rom_addr[3]~21\ = CARRY((!\c_debug_tx2|rom_addr[2]~19\) # (!\c_debug_tx2|rom_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datad => VCC,
	cin => \c_debug_tx2|rom_addr[2]~19\,
	combout => \c_debug_tx2|rom_addr[3]~20_combout\,
	cout => \c_debug_tx2|rom_addr[3]~21\);

-- Location: FF_X18_Y10_N23
\c_debug_tx2|rom_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|rom_addr[3]~20_combout\,
	sclr => \c_debug_tx2|rom_addr[5]~28_combout\,
	ena => \c_debug_tx2|rom_addr[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|rom_addr\(3));

-- Location: LCCOMB_X18_Y10_N24
\c_debug_tx2|rom_addr[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[4]~22_combout\ = (\c_debug_tx2|rom_addr\(4) & (\c_debug_tx2|rom_addr[3]~21\ $ (GND))) # (!\c_debug_tx2|rom_addr\(4) & (!\c_debug_tx2|rom_addr[3]~21\ & VCC))
-- \c_debug_tx2|rom_addr[4]~23\ = CARRY((\c_debug_tx2|rom_addr\(4) & !\c_debug_tx2|rom_addr[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(4),
	datad => VCC,
	cin => \c_debug_tx2|rom_addr[3]~21\,
	combout => \c_debug_tx2|rom_addr[4]~22_combout\,
	cout => \c_debug_tx2|rom_addr[4]~23\);

-- Location: FF_X18_Y10_N25
\c_debug_tx2|rom_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|rom_addr[4]~22_combout\,
	sclr => \c_debug_tx2|rom_addr[5]~28_combout\,
	ena => \c_debug_tx2|rom_addr[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|rom_addr\(4));

-- Location: LCCOMB_X18_Y10_N26
\c_debug_tx2|rom_addr[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[5]~24_combout\ = (\c_debug_tx2|rom_addr\(5) & (!\c_debug_tx2|rom_addr[4]~23\)) # (!\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr[4]~23\) # (GND)))
-- \c_debug_tx2|rom_addr[5]~25\ = CARRY((!\c_debug_tx2|rom_addr[4]~23\) # (!\c_debug_tx2|rom_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datad => VCC,
	cin => \c_debug_tx2|rom_addr[4]~23\,
	combout => \c_debug_tx2|rom_addr[5]~24_combout\,
	cout => \c_debug_tx2|rom_addr[5]~25\);

-- Location: FF_X18_Y10_N27
\c_debug_tx2|rom_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|rom_addr[5]~24_combout\,
	sclr => \c_debug_tx2|rom_addr[5]~28_combout\,
	ena => \c_debug_tx2|rom_addr[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|rom_addr\(5));

-- Location: LCCOMB_X18_Y10_N28
\c_debug_tx2|rom_addr[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[6]~26_combout\ = \c_debug_tx2|rom_addr\(6) $ (!\c_debug_tx2|rom_addr[5]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(6),
	cin => \c_debug_tx2|rom_addr[5]~25\,
	combout => \c_debug_tx2|rom_addr[6]~26_combout\);

-- Location: FF_X18_Y10_N29
\c_debug_tx2|rom_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|rom_addr[6]~26_combout\,
	sclr => \c_debug_tx2|rom_addr[5]~28_combout\,
	ena => \c_debug_tx2|rom_addr[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|rom_addr\(6));

-- Location: LCCOMB_X18_Y10_N0
\c_debug_tx2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Equal1~0_combout\ = ((\c_debug_tx2|rom_addr\(4)) # ((\c_debug_tx2|rom_addr\(5)) # (!\c_debug_tx2|rom_addr\(6)))) # (!\c_debug_tx2|rom_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(0),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(5),
	datad => \c_debug_tx2|rom_addr\(6),
	combout => \c_debug_tx2|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y10_N2
\c_debug_tx2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Equal1~1_combout\ = ((\c_debug_tx2|rom_addr\(1)) # ((\c_debug_tx2|rom_addr\(3)) # (\c_debug_tx2|Equal1~0_combout\))) # (!\c_debug_tx2|rom_addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(1),
	datac => \c_debug_tx2|rom_addr\(3),
	datad => \c_debug_tx2|Equal1~0_combout\,
	combout => \c_debug_tx2|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y11_N20
\c_interconnect|active_port~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~19_combout\ = (\c_interconnect|active_port.PORT_D~q\ & (((\c_debug_tx3|tx_active~q\ & \c_debug_tx3|Equal1~0_combout\)))) # (!\c_interconnect|active_port.PORT_D~q\ & (\c_debug_tx2|tx_active~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_D~q\,
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_debug_tx3|tx_active~q\,
	datad => \c_debug_tx3|Equal1~0_combout\,
	combout => \c_interconnect|active_port~19_combout\);

-- Location: LCCOMB_X22_Y11_N18
\c_interconnect|active_port~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~20_combout\ = (\c_interconnect|active_port~19_combout\ & ((\c_interconnect|active_port.PORT_D~q\) # (\c_debug_tx2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_D~q\,
	datac => \c_debug_tx2|Equal1~1_combout\,
	datad => \c_interconnect|active_port~19_combout\,
	combout => \c_interconnect|active_port~20_combout\);

-- Location: LCCOMB_X21_Y11_N10
\c_interconnect|active_port~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~21_combout\ = (\c_interconnect|active_port.PORT_B~q\ & (\c_debug_tx1|tx_active~q\ & (\c_debug_tx1|Equal1~1_combout\))) # (!\c_interconnect|active_port.PORT_B~q\ & (((\c_interconnect|active_port~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|tx_active~q\,
	datab => \c_interconnect|active_port.PORT_B~q\,
	datac => \c_debug_tx1|Equal1~1_combout\,
	datad => \c_interconnect|active_port~20_combout\,
	combout => \c_interconnect|active_port~21_combout\);

-- Location: LCCOMB_X19_Y11_N18
\c_interconnect|active_port~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~22_combout\ = (\c_interconnect|active_port~18_combout\) # ((\c_interconnect|active_port.NO_PORT~q\ & !\c_interconnect|active_port~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port~18_combout\,
	datac => \c_interconnect|active_port.NO_PORT~q\,
	datad => \c_interconnect|active_port~21_combout\,
	combout => \c_interconnect|active_port~22_combout\);

-- Location: LCCOMB_X19_Y11_N10
\c_interconnect|active_port~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~26_combout\ = (\c_interconnect|active_port~22_combout\ & (((\c_interconnect|last_port~17_combout\ & !\c_interconnect|active_port.NO_PORT~q\)))) # (!\c_interconnect|active_port~22_combout\ & 
-- (\c_interconnect|active_port.PORT_C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_C~q\,
	datab => \c_interconnect|last_port~17_combout\,
	datac => \c_interconnect|active_port.NO_PORT~q\,
	datad => \c_interconnect|active_port~22_combout\,
	combout => \c_interconnect|active_port~26_combout\);

-- Location: LCCOMB_X19_Y11_N0
\c_interconnect|active_port~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~27_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_interconnect|active_port~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_interconnect|active_port~26_combout\,
	combout => \c_interconnect|active_port~27_combout\);

-- Location: FF_X19_Y11_N1
\c_interconnect|active_port.PORT_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|active_port~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|active_port.PORT_C~q\);

-- Location: LCCOMB_X22_Y11_N2
\c_debug_tx2|tx_active~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|tx_active~2_combout\ = (\c_debug_tx2|tx_active~q\ & (((\c_debug_tx2|Equal1~1_combout\)) # (!\c_interconnect|active_port.PORT_C~q\))) # (!\c_debug_tx2|tx_active~q\ & (((\c_debug_tx3|rom_addr[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_C~q\,
	datab => \c_debug_tx2|Equal1~1_combout\,
	datac => \c_debug_tx2|tx_active~q\,
	datad => \c_debug_tx3|rom_addr[6]~14_combout\,
	combout => \c_debug_tx2|tx_active~2_combout\);

-- Location: LCCOMB_X22_Y11_N14
\c_debug_tx2|tx_active~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|tx_active~3_combout\ = (\c_reset_ctrl|r_resetn~q\ & (\c_debug_tx2|tx_active~2_combout\ & \c_trigger_ctrl|r_resetn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datab => \c_debug_tx2|tx_active~2_combout\,
	datad => \c_trigger_ctrl|r_resetn~q\,
	combout => \c_debug_tx2|tx_active~3_combout\);

-- Location: FF_X22_Y11_N15
\c_debug_tx2|tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx2|tx_active~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx2|tx_active~q\);

-- Location: LCCOMB_X19_Y11_N30
\c_interconnect|last_port~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|last_port~16_combout\ = (\c_interconnect|last_port.PORT_C~q\ & (((!\c_debug_tx1|tx_active~q\)))) # (!\c_interconnect|last_port.PORT_C~q\ & (\c_debug_tx2|tx_active~q\ & ((\c_interconnect|last_port.PORT_B~q\) # 
-- (!\c_debug_tx1|tx_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|last_port.PORT_C~q\,
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_interconnect|last_port.PORT_B~q\,
	datad => \c_debug_tx1|tx_active~q\,
	combout => \c_interconnect|last_port~16_combout\);

-- Location: LCCOMB_X19_Y11_N16
\c_interconnect|last_port~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|last_port~17_combout\ = (\c_interconnect|last_port~16_combout\ & ((!\c_debug_tx3|tx_active~q\) # (!\c_interconnect|last_port.PORT_C~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|last_port.PORT_C~q\,
	datac => \c_interconnect|last_port~16_combout\,
	datad => \c_debug_tx3|tx_active~q\,
	combout => \c_interconnect|last_port~17_combout\);

-- Location: LCCOMB_X19_Y11_N22
\c_interconnect|last_port~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|last_port~18_combout\ = (\c_reset_ctrl|r_resetn~q\ & ((\c_interconnect|active_port~18_combout\ & ((\c_interconnect|last_port~17_combout\))) # (!\c_interconnect|active_port~18_combout\ & (\c_interconnect|last_port.PORT_C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port~18_combout\,
	datab => \c_reset_ctrl|r_resetn~q\,
	datac => \c_interconnect|last_port.PORT_C~q\,
	datad => \c_interconnect|last_port~17_combout\,
	combout => \c_interconnect|last_port~18_combout\);

-- Location: FF_X19_Y11_N23
\c_interconnect|last_port.PORT_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|last_port~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|last_port.PORT_C~q\);

-- Location: LCCOMB_X19_Y11_N2
\c_interconnect|last_port~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|last_port~15_combout\ = (!\c_interconnect|last_port.PORT_C~q\ & (!\c_debug_tx2|tx_active~q\ & (\c_interconnect|last_port.PORT_B~q\ & !\c_debug_tx3|tx_active~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|last_port.PORT_C~q\,
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_interconnect|last_port.PORT_B~q\,
	datad => \c_debug_tx3|tx_active~q\,
	combout => \c_interconnect|last_port~15_combout\);

-- Location: LCCOMB_X19_Y11_N24
\c_interconnect|last_port~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|last_port~19_combout\ = (\c_interconnect|last_port~14_combout\) # (\c_interconnect|last_port~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|last_port~14_combout\,
	datad => \c_interconnect|last_port~15_combout\,
	combout => \c_interconnect|last_port~19_combout\);

-- Location: LCCOMB_X19_Y11_N4
\c_interconnect|last_port~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|last_port~20_combout\ = (\c_reset_ctrl|r_resetn~q\ & ((\c_interconnect|active_port~18_combout\ & ((\c_interconnect|last_port~19_combout\))) # (!\c_interconnect|active_port~18_combout\ & (\c_interconnect|last_port.PORT_B~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port~18_combout\,
	datab => \c_reset_ctrl|r_resetn~q\,
	datac => \c_interconnect|last_port.PORT_B~q\,
	datad => \c_interconnect|last_port~19_combout\,
	combout => \c_interconnect|last_port~20_combout\);

-- Location: FF_X19_Y11_N5
\c_interconnect|last_port.PORT_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|last_port~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|last_port.PORT_B~q\);

-- Location: LCCOMB_X19_Y11_N12
\c_interconnect|last_port~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|last_port~14_combout\ = (\c_debug_tx1|tx_active~q\ & ((\c_interconnect|last_port.PORT_C~q\ & (!\c_debug_tx3|tx_active~q\)) # (!\c_interconnect|last_port.PORT_C~q\ & ((!\c_interconnect|last_port.PORT_B~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|tx_active~q\,
	datab => \c_interconnect|last_port.PORT_B~q\,
	datac => \c_interconnect|last_port.PORT_C~q\,
	datad => \c_debug_tx1|tx_active~q\,
	combout => \c_interconnect|last_port~14_combout\);

-- Location: LCCOMB_X19_Y11_N28
\c_interconnect|active_port~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~24_combout\ = (!\c_interconnect|active_port.NO_PORT~q\ & (\c_interconnect|active_port~22_combout\ & ((\c_interconnect|last_port~14_combout\) # (\c_interconnect|last_port~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|last_port~14_combout\,
	datab => \c_interconnect|last_port~15_combout\,
	datac => \c_interconnect|active_port.NO_PORT~q\,
	datad => \c_interconnect|active_port~22_combout\,
	combout => \c_interconnect|active_port~24_combout\);

-- Location: LCCOMB_X19_Y11_N14
\c_interconnect|active_port~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~25_combout\ = (\c_reset_ctrl|r_resetn~q\ & ((\c_interconnect|active_port~24_combout\) # ((\c_interconnect|active_port.PORT_B~q\ & !\c_interconnect|active_port~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datab => \c_interconnect|active_port~24_combout\,
	datac => \c_interconnect|active_port.PORT_B~q\,
	datad => \c_interconnect|active_port~22_combout\,
	combout => \c_interconnect|active_port~25_combout\);

-- Location: FF_X19_Y11_N15
\c_interconnect|active_port.PORT_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|active_port~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|active_port.PORT_B~q\);

-- Location: LCCOMB_X21_Y11_N4
\c_debug_tx1|rom_addr[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[4]~28_combout\ = (((!\c_debug_tx1|tx_active~2_combout\) # (!\c_debug_tx1|Equal1~1_combout\)) # (!\c_interconnect|active_port.PORT_B~q\)) # (!\c_debug_tx1|tx_active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|tx_active~q\,
	datab => \c_interconnect|active_port.PORT_B~q\,
	datac => \c_debug_tx1|Equal1~1_combout\,
	datad => \c_debug_tx1|tx_active~2_combout\,
	combout => \c_debug_tx1|rom_addr[4]~28_combout\);

-- Location: LCCOMB_X21_Y11_N22
\c_debug_tx1|rom_addr[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[4]~29_combout\ = ((\c_debug_tx1|tx_active~q\ & ((\c_interconnect|active_port.PORT_B~q\))) # (!\c_debug_tx1|tx_active~q\ & (\c_debug_tx3|rom_addr[6]~14_combout\))) # (!\c_debug_tx1|tx_active~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|tx_active~q\,
	datab => \c_debug_tx3|rom_addr[6]~14_combout\,
	datac => \c_interconnect|active_port.PORT_B~q\,
	datad => \c_debug_tx1|tx_active~2_combout\,
	combout => \c_debug_tx1|rom_addr[4]~29_combout\);

-- Location: FF_X18_Y9_N11
\c_debug_tx1|rom_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|rom_addr[0]~13_combout\,
	sclr => \c_debug_tx1|rom_addr[4]~28_combout\,
	ena => \c_debug_tx1|rom_addr[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|rom_addr\(0));

-- Location: LCCOMB_X18_Y9_N12
\c_debug_tx1|rom_addr[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[1]~15_combout\ = (\c_debug_tx1|rom_addr\(1) & (!\c_debug_tx1|rom_addr[0]~14\)) # (!\c_debug_tx1|rom_addr\(1) & ((\c_debug_tx1|rom_addr[0]~14\) # (GND)))
-- \c_debug_tx1|rom_addr[1]~16\ = CARRY((!\c_debug_tx1|rom_addr[0]~14\) # (!\c_debug_tx1|rom_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datad => VCC,
	cin => \c_debug_tx1|rom_addr[0]~14\,
	combout => \c_debug_tx1|rom_addr[1]~15_combout\,
	cout => \c_debug_tx1|rom_addr[1]~16\);

-- Location: FF_X18_Y9_N13
\c_debug_tx1|rom_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|rom_addr[1]~15_combout\,
	sclr => \c_debug_tx1|rom_addr[4]~28_combout\,
	ena => \c_debug_tx1|rom_addr[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|rom_addr\(1));

-- Location: LCCOMB_X18_Y9_N14
\c_debug_tx1|rom_addr[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[2]~17_combout\ = (\c_debug_tx1|rom_addr\(2) & (\c_debug_tx1|rom_addr[1]~16\ $ (GND))) # (!\c_debug_tx1|rom_addr\(2) & (!\c_debug_tx1|rom_addr[1]~16\ & VCC))
-- \c_debug_tx1|rom_addr[2]~18\ = CARRY((\c_debug_tx1|rom_addr\(2) & !\c_debug_tx1|rom_addr[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|rom_addr\(2),
	datad => VCC,
	cin => \c_debug_tx1|rom_addr[1]~16\,
	combout => \c_debug_tx1|rom_addr[2]~17_combout\,
	cout => \c_debug_tx1|rom_addr[2]~18\);

-- Location: FF_X18_Y9_N15
\c_debug_tx1|rom_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|rom_addr[2]~17_combout\,
	sclr => \c_debug_tx1|rom_addr[4]~28_combout\,
	ena => \c_debug_tx1|rom_addr[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|rom_addr\(2));

-- Location: LCCOMB_X18_Y9_N16
\c_debug_tx1|rom_addr[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[3]~19_combout\ = (\c_debug_tx1|rom_addr\(3) & (!\c_debug_tx1|rom_addr[2]~18\)) # (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr[2]~18\) # (GND)))
-- \c_debug_tx1|rom_addr[3]~20\ = CARRY((!\c_debug_tx1|rom_addr[2]~18\) # (!\c_debug_tx1|rom_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|rom_addr\(3),
	datad => VCC,
	cin => \c_debug_tx1|rom_addr[2]~18\,
	combout => \c_debug_tx1|rom_addr[3]~19_combout\,
	cout => \c_debug_tx1|rom_addr[3]~20\);

-- Location: FF_X18_Y9_N17
\c_debug_tx1|rom_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|rom_addr[3]~19_combout\,
	sclr => \c_debug_tx1|rom_addr[4]~28_combout\,
	ena => \c_debug_tx1|rom_addr[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|rom_addr\(3));

-- Location: LCCOMB_X18_Y9_N18
\c_debug_tx1|rom_addr[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[4]~21_combout\ = (\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|rom_addr[3]~20\ $ (GND))) # (!\c_debug_tx1|rom_addr\(4) & (!\c_debug_tx1|rom_addr[3]~20\ & VCC))
-- \c_debug_tx1|rom_addr[4]~22\ = CARRY((\c_debug_tx1|rom_addr\(4) & !\c_debug_tx1|rom_addr[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|rom_addr\(4),
	datad => VCC,
	cin => \c_debug_tx1|rom_addr[3]~20\,
	combout => \c_debug_tx1|rom_addr[4]~21_combout\,
	cout => \c_debug_tx1|rom_addr[4]~22\);

-- Location: FF_X18_Y9_N19
\c_debug_tx1|rom_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|rom_addr[4]~21_combout\,
	sclr => \c_debug_tx1|rom_addr[4]~28_combout\,
	ena => \c_debug_tx1|rom_addr[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|rom_addr\(4));

-- Location: LCCOMB_X18_Y9_N20
\c_debug_tx1|rom_addr[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[5]~23_combout\ = (\c_debug_tx1|rom_addr\(5) & (!\c_debug_tx1|rom_addr[4]~22\)) # (!\c_debug_tx1|rom_addr\(5) & ((\c_debug_tx1|rom_addr[4]~22\) # (GND)))
-- \c_debug_tx1|rom_addr[5]~24\ = CARRY((!\c_debug_tx1|rom_addr[4]~22\) # (!\c_debug_tx1|rom_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|rom_addr\(5),
	datad => VCC,
	cin => \c_debug_tx1|rom_addr[4]~22\,
	combout => \c_debug_tx1|rom_addr[5]~23_combout\,
	cout => \c_debug_tx1|rom_addr[5]~24\);

-- Location: FF_X18_Y9_N21
\c_debug_tx1|rom_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|rom_addr[5]~23_combout\,
	sclr => \c_debug_tx1|rom_addr[4]~28_combout\,
	ena => \c_debug_tx1|rom_addr[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|rom_addr\(5));

-- Location: LCCOMB_X18_Y9_N22
\c_debug_tx1|rom_addr[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[6]~26_combout\ = \c_debug_tx1|rom_addr\(6) $ (!\c_debug_tx1|rom_addr[5]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(6),
	cin => \c_debug_tx1|rom_addr[5]~24\,
	combout => \c_debug_tx1|rom_addr[6]~26_combout\);

-- Location: FF_X18_Y9_N23
\c_debug_tx1|rom_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|rom_addr[6]~26_combout\,
	sclr => \c_debug_tx1|rom_addr[4]~28_combout\,
	ena => \c_debug_tx1|rom_addr[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|rom_addr\(6));

-- Location: LCCOMB_X18_Y9_N24
\c_debug_tx1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal1~0_combout\ = ((\c_debug_tx1|rom_addr\(5)) # ((\c_debug_tx1|rom_addr\(4)) # (!\c_debug_tx1|rom_addr\(6)))) # (!\c_debug_tx1|rom_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(0),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(6),
	datad => \c_debug_tx1|rom_addr\(4),
	combout => \c_debug_tx1|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y9_N2
\c_debug_tx1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Equal1~1_combout\ = (\c_debug_tx1|rom_addr\(1)) # ((\c_debug_tx1|Equal1~0_combout\) # ((\c_debug_tx1|rom_addr\(3)) # (!\c_debug_tx1|rom_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datab => \c_debug_tx1|Equal1~0_combout\,
	datac => \c_debug_tx1|rom_addr\(2),
	datad => \c_debug_tx1|rom_addr\(3),
	combout => \c_debug_tx1|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y11_N20
\c_debug_tx1|tx_active~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|tx_active~3_combout\ = (\c_debug_tx1|tx_active~q\ & ((\c_debug_tx1|Equal1~1_combout\) # ((!\c_interconnect|active_port.PORT_B~q\)))) # (!\c_debug_tx1|tx_active~q\ & (((\c_debug_tx3|rom_addr[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|tx_active~q\,
	datab => \c_debug_tx1|Equal1~1_combout\,
	datac => \c_debug_tx3|rom_addr[6]~14_combout\,
	datad => \c_interconnect|active_port.PORT_B~q\,
	combout => \c_debug_tx1|tx_active~3_combout\);

-- Location: LCCOMB_X21_Y11_N12
\c_debug_tx1|tx_active~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|tx_active~4_combout\ = (\c_reset_ctrl|r_resetn~q\ & (\c_debug_tx1|tx_active~3_combout\ & \c_trigger_ctrl|r_resetn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datab => \c_debug_tx1|tx_active~3_combout\,
	datad => \c_trigger_ctrl|r_resetn~q\,
	combout => \c_debug_tx1|tx_active~4_combout\);

-- Location: FF_X21_Y11_N13
\c_debug_tx1|tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_debug_tx1|tx_active~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_debug_tx1|tx_active~q\);

-- Location: LCCOMB_X21_Y11_N28
\c_interconnect|active_port~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~18_combout\ = (!\c_interconnect|active_port.NO_PORT~q\ & ((\c_debug_tx1|tx_active~q\) # ((\c_debug_tx2|tx_active~q\) # (\c_debug_tx3|tx_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|tx_active~q\,
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_debug_tx3|tx_active~q\,
	datad => \c_interconnect|active_port.NO_PORT~q\,
	combout => \c_interconnect|active_port~18_combout\);

-- Location: LCCOMB_X21_Y11_N30
\c_interconnect|active_port~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~28_combout\ = (\c_reset_ctrl|r_resetn~q\ & ((\c_interconnect|active_port~18_combout\ & (!\c_interconnect|active_port.NO_PORT~q\)) # (!\c_interconnect|active_port~18_combout\ & (\c_interconnect|active_port.NO_PORT~q\ & 
-- \c_interconnect|active_port~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datab => \c_interconnect|active_port~18_combout\,
	datac => \c_interconnect|active_port.NO_PORT~q\,
	datad => \c_interconnect|active_port~21_combout\,
	combout => \c_interconnect|active_port~28_combout\);

-- Location: FF_X21_Y11_N31
\c_interconnect|active_port.NO_PORT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|active_port~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|active_port.NO_PORT~q\);

-- Location: LCCOMB_X19_Y11_N6
\c_interconnect|active_port~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~16_combout\ = (\c_interconnect|last_port.PORT_C~q\) # ((!\c_debug_tx2|tx_active~q\ & ((\c_interconnect|last_port.PORT_B~q\) # (!\c_debug_tx1|tx_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|last_port.PORT_C~q\,
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_interconnect|last_port.PORT_B~q\,
	datad => \c_debug_tx1|tx_active~q\,
	combout => \c_interconnect|active_port~16_combout\);

-- Location: LCCOMB_X19_Y11_N8
\c_interconnect|active_port~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~17_combout\ = (\c_debug_tx3|tx_active~q\ & (!\c_interconnect|active_port.NO_PORT~q\ & \c_interconnect|active_port~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|tx_active~q\,
	datac => \c_interconnect|active_port.NO_PORT~q\,
	datad => \c_interconnect|active_port~16_combout\,
	combout => \c_interconnect|active_port~17_combout\);

-- Location: LCCOMB_X19_Y11_N20
\c_interconnect|active_port~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|active_port~23_combout\ = (\c_reset_ctrl|r_resetn~q\ & ((\c_interconnect|active_port~17_combout\) # ((\c_interconnect|active_port.PORT_D~q\ & !\c_interconnect|active_port~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datab => \c_interconnect|active_port~17_combout\,
	datac => \c_interconnect|active_port.PORT_D~q\,
	datad => \c_interconnect|active_port~22_combout\,
	combout => \c_interconnect|active_port~23_combout\);

-- Location: FF_X19_Y11_N21
\c_interconnect|active_port.PORT_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|active_port~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|active_port.PORT_D~q\);

-- Location: LCCOMB_X22_Y11_N28
\c_interconnect|PA_TX_tvalid_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|PA_TX_tvalid_reg~2_combout\ = (\c_interconnect|active_port.PORT_B~q\ & (!\c_interconnect|active_port.PORT_C~q\ & \c_debug_tx1|tx_active~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_B~q\,
	datac => \c_interconnect|active_port.PORT_C~q\,
	datad => \c_debug_tx1|tx_active~q\,
	combout => \c_interconnect|PA_TX_tvalid_reg~2_combout\);

-- Location: LCCOMB_X22_Y11_N12
\c_debug_tx2|rom_addr[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|rom_addr[5]~13_combout\ = (\c_debug_tx2|tx_active~q\ & \c_interconnect|active_port.PORT_C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_C~q\,
	combout => \c_debug_tx2|rom_addr[5]~13_combout\);

-- Location: LCCOMB_X22_Y11_N24
\c_interconnect|PA_TX_tvalid_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|PA_TX_tvalid_reg~3_combout\ = (\c_interconnect|active_port.PORT_D~q\ & (((\c_debug_tx3|tx_active~q\)))) # (!\c_interconnect|active_port.PORT_D~q\ & ((\c_interconnect|PA_TX_tvalid_reg~2_combout\) # ((\c_debug_tx2|rom_addr[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|active_port.PORT_D~q\,
	datab => \c_interconnect|PA_TX_tvalid_reg~2_combout\,
	datac => \c_debug_tx3|tx_active~q\,
	datad => \c_debug_tx2|rom_addr[5]~13_combout\,
	combout => \c_interconnect|PA_TX_tvalid_reg~3_combout\);

-- Location: FF_X22_Y11_N25
\c_interconnect|PA_TX_tvalid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|PA_TX_tvalid_reg~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tvalid_reg~q\);

-- Location: LCCOMB_X23_Y10_N6
\c_eth0_rb|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~1_combout\ = \c_eth0_rb|occ_words\(0) $ (VCC)
-- \c_eth0_rb|Add4~2\ = CARRY(\c_eth0_rb|occ_words\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(0),
	datad => VCC,
	combout => \c_eth0_rb|Add4~1_combout\,
	cout => \c_eth0_rb|Add4~2\);

-- Location: LCCOMB_X22_Y11_N10
\c_interconnect|PA_TX_tlast_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|PA_TX_tlast_reg~2_combout\ = (\c_debug_tx2|rom_addr[5]~13_combout\ & (((!\c_debug_tx1|Equal1~1_combout\ & \c_interconnect|PA_TX_tvalid_reg~2_combout\)) # (!\c_debug_tx2|Equal1~1_combout\))) # (!\c_debug_tx2|rom_addr[5]~13_combout\ & 
-- (((!\c_debug_tx1|Equal1~1_combout\ & \c_interconnect|PA_TX_tvalid_reg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr[5]~13_combout\,
	datab => \c_debug_tx2|Equal1~1_combout\,
	datac => \c_debug_tx1|Equal1~1_combout\,
	datad => \c_interconnect|PA_TX_tvalid_reg~2_combout\,
	combout => \c_interconnect|PA_TX_tlast_reg~2_combout\);

-- Location: LCCOMB_X22_Y11_N6
\c_interconnect|PA_TX_tlast_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|PA_TX_tlast_reg~3_combout\ = (\c_interconnect|active_port.PORT_D~q\ & (((\c_debug_tx3|tx_active~q\ & !\c_debug_tx3|Equal1~0_combout\)))) # (!\c_interconnect|active_port.PORT_D~q\ & (\c_interconnect|PA_TX_tlast_reg~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|PA_TX_tlast_reg~2_combout\,
	datab => \c_debug_tx3|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_D~q\,
	datad => \c_debug_tx3|Equal1~0_combout\,
	combout => \c_interconnect|PA_TX_tlast_reg~3_combout\);

-- Location: FF_X22_Y11_N7
\c_interconnect|PA_TX_tlast_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|PA_TX_tlast_reg~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tlast_reg~q\);

-- Location: LCCOMB_X17_Y7_N18
\c_eth0_rb|s_handshake\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|s_handshake~combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_interconnect|PA_TX_tvalid_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_interconnect|PA_TX_tvalid_reg~q\,
	combout => \c_eth0_rb|s_handshake~combout\);

-- Location: LCCOMB_X17_Y7_N28
\c_eth0_rb|dropping~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|dropping~0_combout\ = (!\c_interconnect|PA_TX_tlast_reg~q\ & (\c_eth0_rb|s_handshake~combout\ & (\c_eth0_rb|Equal0~4_combout\ & \c_eth0_rb|occ_words\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|PA_TX_tlast_reg~q\,
	datab => \c_eth0_rb|s_handshake~combout\,
	datac => \c_eth0_rb|Equal0~4_combout\,
	datad => \c_eth0_rb|occ_words\(11),
	combout => \c_eth0_rb|dropping~0_combout\);

-- Location: LCCOMB_X17_Y7_N10
\c_eth0_rb|dropping~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|dropping~1_combout\ = (\c_eth0_rb|dropping~0_combout\) # ((\c_eth0_rb|dropping~q\ & ((!\c_eth0_rb|s_handshake~combout\) # (!\c_interconnect|PA_TX_tlast_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|PA_TX_tlast_reg~q\,
	datab => \c_eth0_rb|s_handshake~combout\,
	datac => \c_eth0_rb|dropping~q\,
	datad => \c_eth0_rb|dropping~0_combout\,
	combout => \c_eth0_rb|dropping~1_combout\);

-- Location: FF_X17_Y7_N11
\c_eth0_rb|dropping\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|dropping~1_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|dropping~q\);

-- Location: LCCOMB_X25_Y10_N0
\c_eth0_rb|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~0_combout\ = \c_eth0_rb|occ_words\(0) $ (VCC)
-- \c_eth0_rb|Add1~1\ = CARRY(\c_eth0_rb|occ_words\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(0),
	datad => VCC,
	combout => \c_eth0_rb|Add1~0_combout\,
	cout => \c_eth0_rb|Add1~1\);

-- Location: LCCOMB_X24_Y10_N20
\c_eth0_rb|sop_occ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~0_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|occ_words\(0),
	combout => \c_eth0_rb|sop_occ~0_combout\);

-- Location: LCCOMB_X14_Y7_N12
\c_eth0_rb|in_packet~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|in_packet~0_combout\ = (\c_reset_ctrl|r_resetn~q\ & ((\c_interconnect|PA_TX_tvalid_reg~q\ & (!\c_interconnect|PA_TX_tlast_reg~q\)) # (!\c_interconnect|PA_TX_tvalid_reg~q\ & ((\c_eth0_rb|in_packet~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|PA_TX_tlast_reg~q\,
	datab => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|in_packet~q\,
	datad => \c_interconnect|PA_TX_tvalid_reg~q\,
	combout => \c_eth0_rb|in_packet~0_combout\);

-- Location: FF_X14_Y7_N13
\c_eth0_rb|in_packet\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|in_packet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|in_packet~q\);

-- Location: LCCOMB_X14_Y7_N26
\c_eth0_rb|sop_ptr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr[0]~0_combout\ = ((!\c_eth0_rb|in_packet~q\ & \c_interconnect|PA_TX_tvalid_reg~q\)) # (!\c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|in_packet~q\,
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_interconnect|PA_TX_tvalid_reg~q\,
	combout => \c_eth0_rb|sop_ptr[0]~0_combout\);

-- Location: FF_X24_Y10_N21
\c_eth0_rb|sop_occ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~0_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(0));

-- Location: LCCOMB_X24_Y10_N10
\c_eth0_rb|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~0_combout\ = (\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|sop_occ\(0)))) # (!\c_eth0_rb|dropping~q\ & (\c_eth0_rb|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|dropping~q\,
	datac => \c_eth0_rb|Add1~0_combout\,
	datad => \c_eth0_rb|sop_occ\(0),
	combout => \c_eth0_rb|Add4~0_combout\);

-- Location: LCCOMB_X23_Y10_N0
\c_eth0_rb|Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~3_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~0_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~1_combout\,
	datab => \c_eth0_rb|Add4~0_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	combout => \c_eth0_rb|Add4~3_combout\);

-- Location: LCCOMB_X17_Y7_N12
\c_eth0_rb|occ_words[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|occ_words[7]~0_combout\ = ((\c_eth0_rb|dropping~q\ & ((!\c_interconnect|PA_TX_tlast_reg~q\))) # (!\c_eth0_rb|dropping~q\ & (\c_eth0_rb|occ_words\(11)))) # (!\c_eth0_rb|s_handshake~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(11),
	datab => \c_eth0_rb|s_handshake~combout\,
	datac => \c_interconnect|PA_TX_tlast_reg~q\,
	datad => \c_eth0_rb|dropping~q\,
	combout => \c_eth0_rb|occ_words[7]~0_combout\);

-- Location: LCCOMB_X25_Y10_N8
\c_eth0_rb|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~8_combout\ = (\c_eth0_rb|occ_words\(4) & (\c_eth0_rb|Add1~7\ $ (GND))) # (!\c_eth0_rb|occ_words\(4) & (!\c_eth0_rb|Add1~7\ & VCC))
-- \c_eth0_rb|Add1~9\ = CARRY((\c_eth0_rb|occ_words\(4) & !\c_eth0_rb|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(4),
	datad => VCC,
	cin => \c_eth0_rb|Add1~7\,
	combout => \c_eth0_rb|Add1~8_combout\,
	cout => \c_eth0_rb|Add1~9\);

-- Location: LCCOMB_X25_Y10_N10
\c_eth0_rb|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~10_combout\ = (\c_eth0_rb|occ_words\(5) & (!\c_eth0_rb|Add1~9\)) # (!\c_eth0_rb|occ_words\(5) & ((\c_eth0_rb|Add1~9\) # (GND)))
-- \c_eth0_rb|Add1~11\ = CARRY((!\c_eth0_rb|Add1~9\) # (!\c_eth0_rb|occ_words\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(5),
	datad => VCC,
	cin => \c_eth0_rb|Add1~9\,
	combout => \c_eth0_rb|Add1~10_combout\,
	cout => \c_eth0_rb|Add1~11\);

-- Location: LCCOMB_X26_Y10_N12
\c_eth0_rb|sop_occ~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~5_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|occ_words\(5),
	combout => \c_eth0_rb|sop_occ~5_combout\);

-- Location: FF_X26_Y10_N13
\c_eth0_rb|sop_occ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~5_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(5));

-- Location: LCCOMB_X26_Y10_N14
\c_eth0_rb|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~20_combout\ = (\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|sop_occ\(5)))) # (!\c_eth0_rb|dropping~q\ & (\c_eth0_rb|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add1~10_combout\,
	datac => \c_eth0_rb|sop_occ\(5),
	datad => \c_eth0_rb|dropping~q\,
	combout => \c_eth0_rb|Add4~20_combout\);

-- Location: LCCOMB_X23_Y10_N12
\c_eth0_rb|Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~13_combout\ = (\c_eth0_rb|occ_words\(3) & (\c_eth0_rb|Add4~10\ & VCC)) # (!\c_eth0_rb|occ_words\(3) & (!\c_eth0_rb|Add4~10\))
-- \c_eth0_rb|Add4~14\ = CARRY((!\c_eth0_rb|occ_words\(3) & !\c_eth0_rb|Add4~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(3),
	datad => VCC,
	cin => \c_eth0_rb|Add4~10\,
	combout => \c_eth0_rb|Add4~13_combout\,
	cout => \c_eth0_rb|Add4~14\);

-- Location: LCCOMB_X23_Y10_N14
\c_eth0_rb|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~17_combout\ = (\c_eth0_rb|occ_words\(4) & ((GND) # (!\c_eth0_rb|Add4~14\))) # (!\c_eth0_rb|occ_words\(4) & (\c_eth0_rb|Add4~14\ $ (GND)))
-- \c_eth0_rb|Add4~18\ = CARRY((\c_eth0_rb|occ_words\(4)) # (!\c_eth0_rb|Add4~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(4),
	datad => VCC,
	cin => \c_eth0_rb|Add4~14\,
	combout => \c_eth0_rb|Add4~17_combout\,
	cout => \c_eth0_rb|Add4~18\);

-- Location: LCCOMB_X23_Y10_N16
\c_eth0_rb|Add4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~21_combout\ = (\c_eth0_rb|occ_words\(5) & (\c_eth0_rb|Add4~18\ & VCC)) # (!\c_eth0_rb|occ_words\(5) & (!\c_eth0_rb|Add4~18\))
-- \c_eth0_rb|Add4~22\ = CARRY((!\c_eth0_rb|occ_words\(5) & !\c_eth0_rb|Add4~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(5),
	datad => VCC,
	cin => \c_eth0_rb|Add4~18\,
	combout => \c_eth0_rb|Add4~21_combout\,
	cout => \c_eth0_rb|Add4~22\);

-- Location: LCCOMB_X26_Y10_N28
\c_eth0_rb|Add4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~23_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~20_combout\)) # (!\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|Add4~20_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~21_combout\,
	combout => \c_eth0_rb|Add4~23_combout\);

-- Location: FF_X26_Y10_N29
\c_eth0_rb|occ_words[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~23_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(5));

-- Location: LCCOMB_X23_Y10_N18
\c_eth0_rb|Add4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~25_combout\ = (\c_eth0_rb|occ_words\(6) & ((GND) # (!\c_eth0_rb|Add4~22\))) # (!\c_eth0_rb|occ_words\(6) & (\c_eth0_rb|Add4~22\ $ (GND)))
-- \c_eth0_rb|Add4~26\ = CARRY((\c_eth0_rb|occ_words\(6)) # (!\c_eth0_rb|Add4~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(6),
	datad => VCC,
	cin => \c_eth0_rb|Add4~22\,
	combout => \c_eth0_rb|Add4~25_combout\,
	cout => \c_eth0_rb|Add4~26\);

-- Location: LCCOMB_X26_Y10_N16
\c_eth0_rb|sop_occ~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~6_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|occ_words\(6),
	combout => \c_eth0_rb|sop_occ~6_combout\);

-- Location: FF_X26_Y10_N17
\c_eth0_rb|sop_occ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~6_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(6));

-- Location: LCCOMB_X25_Y10_N12
\c_eth0_rb|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~12_combout\ = (\c_eth0_rb|occ_words\(6) & (\c_eth0_rb|Add1~11\ $ (GND))) # (!\c_eth0_rb|occ_words\(6) & (!\c_eth0_rb|Add1~11\ & VCC))
-- \c_eth0_rb|Add1~13\ = CARRY((\c_eth0_rb|occ_words\(6) & !\c_eth0_rb|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(6),
	datad => VCC,
	cin => \c_eth0_rb|Add1~11\,
	combout => \c_eth0_rb|Add1~12_combout\,
	cout => \c_eth0_rb|Add1~13\);

-- Location: LCCOMB_X26_Y10_N10
\c_eth0_rb|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~24_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(6))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|dropping~q\,
	datab => \c_eth0_rb|sop_occ\(6),
	datad => \c_eth0_rb|Add1~12_combout\,
	combout => \c_eth0_rb|Add4~24_combout\);

-- Location: LCCOMB_X26_Y10_N26
\c_eth0_rb|Add4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~27_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~24_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~25_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~24_combout\,
	combout => \c_eth0_rb|Add4~27_combout\);

-- Location: FF_X26_Y10_N27
\c_eth0_rb|occ_words[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~27_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(6));

-- Location: LCCOMB_X23_Y10_N20
\c_eth0_rb|Add4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~29_combout\ = (\c_eth0_rb|occ_words\(7) & (\c_eth0_rb|Add4~26\ & VCC)) # (!\c_eth0_rb|occ_words\(7) & (!\c_eth0_rb|Add4~26\))
-- \c_eth0_rb|Add4~30\ = CARRY((!\c_eth0_rb|occ_words\(7) & !\c_eth0_rb|Add4~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(7),
	datad => VCC,
	cin => \c_eth0_rb|Add4~26\,
	combout => \c_eth0_rb|Add4~29_combout\,
	cout => \c_eth0_rb|Add4~30\);

-- Location: LCCOMB_X26_Y10_N24
\c_eth0_rb|sop_occ~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~7_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|occ_words\(7),
	combout => \c_eth0_rb|sop_occ~7_combout\);

-- Location: FF_X26_Y10_N25
\c_eth0_rb|sop_occ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~7_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(7));

-- Location: LCCOMB_X25_Y10_N14
\c_eth0_rb|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~14_combout\ = (\c_eth0_rb|occ_words\(7) & (!\c_eth0_rb|Add1~13\)) # (!\c_eth0_rb|occ_words\(7) & ((\c_eth0_rb|Add1~13\) # (GND)))
-- \c_eth0_rb|Add1~15\ = CARRY((!\c_eth0_rb|Add1~13\) # (!\c_eth0_rb|occ_words\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(7),
	datad => VCC,
	cin => \c_eth0_rb|Add1~13\,
	combout => \c_eth0_rb|Add1~14_combout\,
	cout => \c_eth0_rb|Add1~15\);

-- Location: LCCOMB_X26_Y10_N6
\c_eth0_rb|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~28_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(7))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|dropping~q\,
	datab => \c_eth0_rb|sop_occ\(7),
	datad => \c_eth0_rb|Add1~14_combout\,
	combout => \c_eth0_rb|Add4~28_combout\);

-- Location: LCCOMB_X24_Y10_N6
\c_eth0_rb|Add4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~31_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~28_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~29_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~28_combout\,
	combout => \c_eth0_rb|Add4~31_combout\);

-- Location: FF_X24_Y10_N7
\c_eth0_rb|occ_words[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~31_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(7));

-- Location: LCCOMB_X23_Y10_N22
\c_eth0_rb|Add4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~33_combout\ = (\c_eth0_rb|occ_words\(8) & ((GND) # (!\c_eth0_rb|Add4~30\))) # (!\c_eth0_rb|occ_words\(8) & (\c_eth0_rb|Add4~30\ $ (GND)))
-- \c_eth0_rb|Add4~34\ = CARRY((\c_eth0_rb|occ_words\(8)) # (!\c_eth0_rb|Add4~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(8),
	datad => VCC,
	cin => \c_eth0_rb|Add4~30\,
	combout => \c_eth0_rb|Add4~33_combout\,
	cout => \c_eth0_rb|Add4~34\);

-- Location: LCCOMB_X24_Y10_N2
\c_eth0_rb|sop_occ~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~8_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|occ_words\(8),
	combout => \c_eth0_rb|sop_occ~8_combout\);

-- Location: FF_X24_Y10_N3
\c_eth0_rb|sop_occ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~8_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(8));

-- Location: LCCOMB_X25_Y10_N16
\c_eth0_rb|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~16_combout\ = (\c_eth0_rb|occ_words\(8) & (\c_eth0_rb|Add1~15\ $ (GND))) # (!\c_eth0_rb|occ_words\(8) & (!\c_eth0_rb|Add1~15\ & VCC))
-- \c_eth0_rb|Add1~17\ = CARRY((\c_eth0_rb|occ_words\(8) & !\c_eth0_rb|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(8),
	datad => VCC,
	cin => \c_eth0_rb|Add1~15\,
	combout => \c_eth0_rb|Add1~16_combout\,
	cout => \c_eth0_rb|Add1~17\);

-- Location: LCCOMB_X24_Y10_N12
\c_eth0_rb|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~32_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(8))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|sop_occ\(8),
	datac => \c_eth0_rb|dropping~q\,
	datad => \c_eth0_rb|Add1~16_combout\,
	combout => \c_eth0_rb|Add4~32_combout\);

-- Location: LCCOMB_X24_Y10_N4
\c_eth0_rb|Add4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~35_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~32_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~33_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~32_combout\,
	combout => \c_eth0_rb|Add4~35_combout\);

-- Location: FF_X24_Y10_N5
\c_eth0_rb|occ_words[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~35_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(8));

-- Location: LCCOMB_X23_Y10_N24
\c_eth0_rb|Add4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~37_combout\ = (\c_eth0_rb|occ_words\(9) & (\c_eth0_rb|Add4~34\ & VCC)) # (!\c_eth0_rb|occ_words\(9) & (!\c_eth0_rb|Add4~34\))
-- \c_eth0_rb|Add4~38\ = CARRY((!\c_eth0_rb|occ_words\(9) & !\c_eth0_rb|Add4~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(9),
	datad => VCC,
	cin => \c_eth0_rb|Add4~34\,
	combout => \c_eth0_rb|Add4~37_combout\,
	cout => \c_eth0_rb|Add4~38\);

-- Location: LCCOMB_X24_Y10_N18
\c_eth0_rb|sop_occ~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~9_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|occ_words\(9),
	combout => \c_eth0_rb|sop_occ~9_combout\);

-- Location: FF_X24_Y10_N19
\c_eth0_rb|sop_occ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~9_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(9));

-- Location: LCCOMB_X25_Y10_N18
\c_eth0_rb|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~18_combout\ = (\c_eth0_rb|occ_words\(9) & (!\c_eth0_rb|Add1~17\)) # (!\c_eth0_rb|occ_words\(9) & ((\c_eth0_rb|Add1~17\) # (GND)))
-- \c_eth0_rb|Add1~19\ = CARRY((!\c_eth0_rb|Add1~17\) # (!\c_eth0_rb|occ_words\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(9),
	datad => VCC,
	cin => \c_eth0_rb|Add1~17\,
	combout => \c_eth0_rb|Add1~18_combout\,
	cout => \c_eth0_rb|Add1~19\);

-- Location: LCCOMB_X24_Y10_N0
\c_eth0_rb|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~36_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(9))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|sop_occ\(9),
	datac => \c_eth0_rb|dropping~q\,
	datad => \c_eth0_rb|Add1~18_combout\,
	combout => \c_eth0_rb|Add4~36_combout\);

-- Location: LCCOMB_X24_Y10_N22
\c_eth0_rb|Add4~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~39_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~36_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|Add4~37_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~36_combout\,
	combout => \c_eth0_rb|Add4~39_combout\);

-- Location: FF_X24_Y10_N23
\c_eth0_rb|occ_words[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~39_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(9));

-- Location: LCCOMB_X24_Y10_N26
\c_eth0_rb|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal0~2_combout\ = (!\c_eth0_rb|occ_words\(9) & (!\c_eth0_rb|occ_words\(8) & !\c_eth0_rb|occ_words\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(9),
	datab => \c_eth0_rb|occ_words\(8),
	datac => \c_eth0_rb|occ_words\(10),
	combout => \c_eth0_rb|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y10_N4
\c_eth0_rb|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal0~0_combout\ = (!\c_eth0_rb|occ_words\(3) & (!\c_eth0_rb|occ_words\(0) & (!\c_eth0_rb|occ_words\(2) & !\c_eth0_rb|occ_words\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(3),
	datab => \c_eth0_rb|occ_words\(0),
	datac => \c_eth0_rb|occ_words\(2),
	datad => \c_eth0_rb|occ_words\(1),
	combout => \c_eth0_rb|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y7_N4
\c_eth0_rb|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal0~3_combout\ = (!\c_eth0_rb|occ_words\(11) & (\c_eth0_rb|Equal0~1_combout\ & (\c_eth0_rb|Equal0~2_combout\ & \c_eth0_rb|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(11),
	datab => \c_eth0_rb|Equal0~1_combout\,
	datac => \c_eth0_rb|Equal0~2_combout\,
	datad => \c_eth0_rb|Equal0~0_combout\,
	combout => \c_eth0_rb|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y7_N2
\c_eth0_rb|occ_words[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|occ_words[7]~1_combout\ = ((\c_eth0_rb|m_axis_tvalid_i~q\ & (!\c_eth0_rb|Equal0~3_combout\ & \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\))) # (!\c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|m_axis_tvalid_i~q\,
	datab => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|Equal0~3_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	combout => \c_eth0_rb|occ_words[7]~1_combout\);

-- Location: LCCOMB_X17_Y7_N8
\c_eth0_rb|occ_words[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|occ_words[7]~2_combout\ = (\c_eth0_rb|occ_words[7]~1_combout\) # (!\c_eth0_rb|occ_words[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words[7]~0_combout\,
	datad => \c_eth0_rb|occ_words[7]~1_combout\,
	combout => \c_eth0_rb|occ_words[7]~2_combout\);

-- Location: FF_X23_Y10_N1
\c_eth0_rb|occ_words[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(0));

-- Location: LCCOMB_X23_Y10_N8
\c_eth0_rb|Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~5_combout\ = (\c_eth0_rb|occ_words\(1) & (\c_eth0_rb|Add4~2\ & VCC)) # (!\c_eth0_rb|occ_words\(1) & (!\c_eth0_rb|Add4~2\))
-- \c_eth0_rb|Add4~6\ = CARRY((!\c_eth0_rb|occ_words\(1) & !\c_eth0_rb|Add4~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(1),
	datad => VCC,
	cin => \c_eth0_rb|Add4~2\,
	combout => \c_eth0_rb|Add4~5_combout\,
	cout => \c_eth0_rb|Add4~6\);

-- Location: LCCOMB_X24_Y10_N16
\c_eth0_rb|sop_occ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~1_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|occ_words\(1),
	combout => \c_eth0_rb|sop_occ~1_combout\);

-- Location: FF_X24_Y10_N17
\c_eth0_rb|sop_occ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~1_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(1));

-- Location: LCCOMB_X25_Y10_N2
\c_eth0_rb|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~2_combout\ = (\c_eth0_rb|occ_words\(1) & (!\c_eth0_rb|Add1~1\)) # (!\c_eth0_rb|occ_words\(1) & ((\c_eth0_rb|Add1~1\) # (GND)))
-- \c_eth0_rb|Add1~3\ = CARRY((!\c_eth0_rb|Add1~1\) # (!\c_eth0_rb|occ_words\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(1),
	datad => VCC,
	cin => \c_eth0_rb|Add1~1\,
	combout => \c_eth0_rb|Add1~2_combout\,
	cout => \c_eth0_rb|Add1~3\);

-- Location: LCCOMB_X25_Y10_N26
\c_eth0_rb|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~4_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(1))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|sop_occ\(1),
	datac => \c_eth0_rb|dropping~q\,
	datad => \c_eth0_rb|Add1~2_combout\,
	combout => \c_eth0_rb|Add4~4_combout\);

-- Location: LCCOMB_X24_Y10_N28
\c_eth0_rb|Add4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~7_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~4_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~5_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~4_combout\,
	combout => \c_eth0_rb|Add4~7_combout\);

-- Location: FF_X24_Y10_N29
\c_eth0_rb|occ_words[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~7_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(1));

-- Location: LCCOMB_X23_Y10_N10
\c_eth0_rb|Add4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~9_combout\ = (\c_eth0_rb|occ_words\(2) & ((GND) # (!\c_eth0_rb|Add4~6\))) # (!\c_eth0_rb|occ_words\(2) & (\c_eth0_rb|Add4~6\ $ (GND)))
-- \c_eth0_rb|Add4~10\ = CARRY((\c_eth0_rb|occ_words\(2)) # (!\c_eth0_rb|Add4~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(2),
	datad => VCC,
	cin => \c_eth0_rb|Add4~6\,
	combout => \c_eth0_rb|Add4~9_combout\,
	cout => \c_eth0_rb|Add4~10\);

-- Location: LCCOMB_X25_Y10_N4
\c_eth0_rb|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~4_combout\ = (\c_eth0_rb|occ_words\(2) & (\c_eth0_rb|Add1~3\ $ (GND))) # (!\c_eth0_rb|occ_words\(2) & (!\c_eth0_rb|Add1~3\ & VCC))
-- \c_eth0_rb|Add1~5\ = CARRY((\c_eth0_rb|occ_words\(2) & !\c_eth0_rb|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(2),
	datad => VCC,
	cin => \c_eth0_rb|Add1~3\,
	combout => \c_eth0_rb|Add1~4_combout\,
	cout => \c_eth0_rb|Add1~5\);

-- Location: LCCOMB_X26_Y10_N20
\c_eth0_rb|sop_occ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~2_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|occ_words\(2),
	combout => \c_eth0_rb|sop_occ~2_combout\);

-- Location: FF_X26_Y10_N21
\c_eth0_rb|sop_occ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~2_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(2));

-- Location: LCCOMB_X26_Y10_N18
\c_eth0_rb|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~8_combout\ = (\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|sop_occ\(2)))) # (!\c_eth0_rb|dropping~q\ & (\c_eth0_rb|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|dropping~q\,
	datac => \c_eth0_rb|Add1~4_combout\,
	datad => \c_eth0_rb|sop_occ\(2),
	combout => \c_eth0_rb|Add4~8_combout\);

-- Location: LCCOMB_X26_Y10_N8
\c_eth0_rb|Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~11_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~8_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|Add4~9_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~8_combout\,
	combout => \c_eth0_rb|Add4~11_combout\);

-- Location: FF_X26_Y10_N9
\c_eth0_rb|occ_words[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~11_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(2));

-- Location: LCCOMB_X24_Y10_N30
\c_eth0_rb|sop_occ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~3_combout\ = (\c_eth0_rb|occ_words\(3) & \c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(3),
	datac => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|sop_occ~3_combout\);

-- Location: FF_X24_Y10_N31
\c_eth0_rb|sop_occ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~3_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(3));

-- Location: LCCOMB_X25_Y10_N6
\c_eth0_rb|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~6_combout\ = (\c_eth0_rb|occ_words\(3) & (!\c_eth0_rb|Add1~5\)) # (!\c_eth0_rb|occ_words\(3) & ((\c_eth0_rb|Add1~5\) # (GND)))
-- \c_eth0_rb|Add1~7\ = CARRY((!\c_eth0_rb|Add1~5\) # (!\c_eth0_rb|occ_words\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(3),
	datad => VCC,
	cin => \c_eth0_rb|Add1~5\,
	combout => \c_eth0_rb|Add1~6_combout\,
	cout => \c_eth0_rb|Add1~7\);

-- Location: LCCOMB_X24_Y10_N24
\c_eth0_rb|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~12_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(3))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|sop_occ\(3),
	datac => \c_eth0_rb|dropping~q\,
	datad => \c_eth0_rb|Add1~6_combout\,
	combout => \c_eth0_rb|Add4~12_combout\);

-- Location: LCCOMB_X23_Y10_N30
\c_eth0_rb|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~15_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~12_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~13_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	datad => \c_eth0_rb|Add4~12_combout\,
	combout => \c_eth0_rb|Add4~15_combout\);

-- Location: FF_X23_Y10_N31
\c_eth0_rb|occ_words[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~15_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(3));

-- Location: LCCOMB_X26_Y10_N4
\c_eth0_rb|sop_occ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~4_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|occ_words\(4),
	combout => \c_eth0_rb|sop_occ~4_combout\);

-- Location: FF_X26_Y10_N5
\c_eth0_rb|sop_occ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~4_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(4));

-- Location: LCCOMB_X26_Y10_N22
\c_eth0_rb|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~16_combout\ = (\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|sop_occ\(4)))) # (!\c_eth0_rb|dropping~q\ & (\c_eth0_rb|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add1~8_combout\,
	datac => \c_eth0_rb|sop_occ\(4),
	datad => \c_eth0_rb|dropping~q\,
	combout => \c_eth0_rb|Add4~16_combout\);

-- Location: LCCOMB_X26_Y10_N30
\c_eth0_rb|Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~19_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~16_combout\)) # (!\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~16_combout\,
	datab => \c_eth0_rb|Add4~17_combout\,
	datac => \c_eth0_rb|rd_ptr~11_combout\,
	combout => \c_eth0_rb|Add4~19_combout\);

-- Location: FF_X26_Y10_N31
\c_eth0_rb|occ_words[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~19_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(4));

-- Location: LCCOMB_X25_Y10_N24
\c_eth0_rb|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal0~1_combout\ = (!\c_eth0_rb|occ_words\(4) & (!\c_eth0_rb|occ_words\(5) & (!\c_eth0_rb|occ_words\(7) & !\c_eth0_rb|occ_words\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(4),
	datab => \c_eth0_rb|occ_words\(5),
	datac => \c_eth0_rb|occ_words\(7),
	datad => \c_eth0_rb|occ_words\(6),
	combout => \c_eth0_rb|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y7_N26
\c_eth0_rb|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal0~4_combout\ = (\c_eth0_rb|Equal0~1_combout\ & (\c_eth0_rb|Equal0~2_combout\ & \c_eth0_rb|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|Equal0~1_combout\,
	datac => \c_eth0_rb|Equal0~2_combout\,
	datad => \c_eth0_rb|Equal0~0_combout\,
	combout => \c_eth0_rb|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y7_N16
\c_eth0_rb|rd_ptr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr~11_combout\ = (((!\c_eth0_rb|occ_words\(11) & \c_eth0_rb|Equal0~4_combout\)) # (!\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\)) # (!\c_eth0_rb|m_axis_tvalid_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(11),
	datab => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0_rb|Equal0~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	combout => \c_eth0_rb|rd_ptr~11_combout\);

-- Location: LCCOMB_X23_Y10_N26
\c_eth0_rb|Add4~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~41_combout\ = (\c_eth0_rb|occ_words\(10) & ((GND) # (!\c_eth0_rb|Add4~38\))) # (!\c_eth0_rb|occ_words\(10) & (\c_eth0_rb|Add4~38\ $ (GND)))
-- \c_eth0_rb|Add4~42\ = CARRY((\c_eth0_rb|occ_words\(10)) # (!\c_eth0_rb|Add4~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|occ_words\(10),
	datad => VCC,
	cin => \c_eth0_rb|Add4~38\,
	combout => \c_eth0_rb|Add4~41_combout\,
	cout => \c_eth0_rb|Add4~42\);

-- Location: LCCOMB_X24_Y10_N14
\c_eth0_rb|sop_occ~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~10_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|occ_words\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|occ_words\(10),
	combout => \c_eth0_rb|sop_occ~10_combout\);

-- Location: FF_X24_Y10_N15
\c_eth0_rb|sop_occ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~10_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(10));

-- Location: LCCOMB_X25_Y10_N20
\c_eth0_rb|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~20_combout\ = (\c_eth0_rb|occ_words\(10) & (\c_eth0_rb|Add1~19\ $ (GND))) # (!\c_eth0_rb|occ_words\(10) & (!\c_eth0_rb|Add1~19\ & VCC))
-- \c_eth0_rb|Add1~21\ = CARRY((\c_eth0_rb|occ_words\(10) & !\c_eth0_rb|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(10),
	datad => VCC,
	cin => \c_eth0_rb|Add1~19\,
	combout => \c_eth0_rb|Add1~20_combout\,
	cout => \c_eth0_rb|Add1~21\);

-- Location: LCCOMB_X25_Y10_N28
\c_eth0_rb|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~40_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(10))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|sop_occ\(10),
	datac => \c_eth0_rb|dropping~q\,
	datad => \c_eth0_rb|Add1~20_combout\,
	combout => \c_eth0_rb|Add4~40_combout\);

-- Location: LCCOMB_X24_Y10_N8
\c_eth0_rb|Add4~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~43_combout\ = (\c_eth0_rb|rd_ptr~11_combout\ & ((\c_eth0_rb|Add4~40_combout\))) # (!\c_eth0_rb|rd_ptr~11_combout\ & (\c_eth0_rb|Add4~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|rd_ptr~11_combout\,
	datac => \c_eth0_rb|Add4~41_combout\,
	datad => \c_eth0_rb|Add4~40_combout\,
	combout => \c_eth0_rb|Add4~43_combout\);

-- Location: FF_X24_Y10_N9
\c_eth0_rb|occ_words[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|Add4~43_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(10));

-- Location: LCCOMB_X23_Y10_N28
\c_eth0_rb|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add4~44_combout\ = \c_eth0_rb|Add4~42\ $ (!\c_eth0_rb|occ_words\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0_rb|occ_words\(11),
	cin => \c_eth0_rb|Add4~42\,
	combout => \c_eth0_rb|Add4~44_combout\);

-- Location: LCCOMB_X17_Y7_N14
\c_eth0_rb|sop_occ~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_occ~11_combout\ = (\c_eth0_rb|occ_words\(11) & \c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words\(11),
	datac => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|sop_occ~11_combout\);

-- Location: FF_X17_Y7_N15
\c_eth0_rb|sop_occ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_occ~11_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_occ\(11));

-- Location: LCCOMB_X25_Y10_N22
\c_eth0_rb|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add1~22_combout\ = \c_eth0_rb|Add1~21\ $ (\c_eth0_rb|occ_words\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0_rb|occ_words\(11),
	cin => \c_eth0_rb|Add1~21\,
	combout => \c_eth0_rb|Add1~22_combout\);

-- Location: LCCOMB_X17_Y7_N0
\c_eth0_rb|occ_words[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|occ_words[11]~3_combout\ = (\c_eth0_rb|dropping~q\ & (\c_eth0_rb|sop_occ\(11))) # (!\c_eth0_rb|dropping~q\ & ((\c_eth0_rb|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|dropping~q\,
	datac => \c_eth0_rb|sop_occ\(11),
	datad => \c_eth0_rb|Add1~22_combout\,
	combout => \c_eth0_rb|occ_words[11]~3_combout\);

-- Location: LCCOMB_X17_Y7_N22
\c_eth0_rb|occ_words[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|occ_words[11]~4_combout\ = (!\c_eth0_rb|occ_words[7]~1_combout\ & ((\c_eth0_rb|occ_words[7]~0_combout\ & (\c_eth0_rb|occ_words\(11))) # (!\c_eth0_rb|occ_words[7]~0_combout\ & ((\c_eth0_rb|occ_words[11]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|occ_words[7]~0_combout\,
	datab => \c_eth0_rb|occ_words[7]~1_combout\,
	datac => \c_eth0_rb|occ_words\(11),
	datad => \c_eth0_rb|occ_words[11]~3_combout\,
	combout => \c_eth0_rb|occ_words[11]~4_combout\);

-- Location: LCCOMB_X17_Y7_N30
\c_eth0_rb|occ_words[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|occ_words[11]~5_combout\ = (\c_eth0_rb|occ_words[11]~4_combout\) # ((\c_eth0_rb|Add4~44_combout\ & (\c_reset_ctrl|r_resetn~q\ & !\c_eth0_rb|rd_ptr~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add4~44_combout\,
	datab => \c_reset_ctrl|r_resetn~q\,
	datac => \c_eth0_rb|occ_words[11]~4_combout\,
	datad => \c_eth0_rb|rd_ptr~11_combout\,
	combout => \c_eth0_rb|occ_words[11]~5_combout\);

-- Location: FF_X17_Y7_N31
\c_eth0_rb|occ_words[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|occ_words[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|occ_words\(11));

-- Location: LCCOMB_X18_Y7_N2
\c_eth0_rb|wr_ptr[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[0]~11_combout\ = \c_eth0_rb|wr_ptr\(0) $ (VCC)
-- \c_eth0_rb|wr_ptr[0]~12\ = CARRY(\c_eth0_rb|wr_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|wr_ptr\(0),
	datad => VCC,
	combout => \c_eth0_rb|wr_ptr[0]~11_combout\,
	cout => \c_eth0_rb|wr_ptr[0]~12\);

-- Location: LCCOMB_X19_Y7_N30
\c_eth0_rb|sop_ptr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~2_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|wr_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|wr_ptr\(0),
	combout => \c_eth0_rb|sop_ptr~2_combout\);

-- Location: FF_X19_Y7_N31
\c_eth0_rb|sop_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~2_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(0));

-- Location: LCCOMB_X18_Y7_N0
\c_eth0_rb|wr_ptr[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[5]~33_combout\ = (!\c_eth0_rb|occ_words[7]~0_combout\) # (!\c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|occ_words[7]~0_combout\,
	combout => \c_eth0_rb|wr_ptr[5]~33_combout\);

-- Location: FF_X18_Y7_N3
\c_eth0_rb|wr_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[0]~11_combout\,
	asdata => \c_eth0_rb|sop_ptr\(0),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(0));

-- Location: LCCOMB_X18_Y7_N4
\c_eth0_rb|wr_ptr[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[1]~13_combout\ = (\c_eth0_rb|wr_ptr\(1) & (!\c_eth0_rb|wr_ptr[0]~12\)) # (!\c_eth0_rb|wr_ptr\(1) & ((\c_eth0_rb|wr_ptr[0]~12\) # (GND)))
-- \c_eth0_rb|wr_ptr[1]~14\ = CARRY((!\c_eth0_rb|wr_ptr[0]~12\) # (!\c_eth0_rb|wr_ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|wr_ptr\(1),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[0]~12\,
	combout => \c_eth0_rb|wr_ptr[1]~13_combout\,
	cout => \c_eth0_rb|wr_ptr[1]~14\);

-- Location: LCCOMB_X19_Y7_N0
\c_eth0_rb|sop_ptr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~3_combout\ = (\c_eth0_rb|wr_ptr\(1) & \c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0_rb|wr_ptr\(1),
	datad => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|sop_ptr~3_combout\);

-- Location: FF_X19_Y7_N1
\c_eth0_rb|sop_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~3_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(1));

-- Location: FF_X18_Y7_N5
\c_eth0_rb|wr_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[1]~13_combout\,
	asdata => \c_eth0_rb|sop_ptr\(1),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(1));

-- Location: LCCOMB_X18_Y7_N6
\c_eth0_rb|wr_ptr[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[2]~15_combout\ = (\c_eth0_rb|wr_ptr\(2) & (\c_eth0_rb|wr_ptr[1]~14\ $ (GND))) # (!\c_eth0_rb|wr_ptr\(2) & (!\c_eth0_rb|wr_ptr[1]~14\ & VCC))
-- \c_eth0_rb|wr_ptr[2]~16\ = CARRY((\c_eth0_rb|wr_ptr\(2) & !\c_eth0_rb|wr_ptr[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|wr_ptr\(2),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[1]~14\,
	combout => \c_eth0_rb|wr_ptr[2]~15_combout\,
	cout => \c_eth0_rb|wr_ptr[2]~16\);

-- Location: LCCOMB_X19_Y7_N18
\c_eth0_rb|sop_ptr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~4_combout\ = (\c_eth0_rb|wr_ptr\(2) & \c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0_rb|wr_ptr\(2),
	datad => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|sop_ptr~4_combout\);

-- Location: FF_X19_Y7_N19
\c_eth0_rb|sop_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~4_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(2));

-- Location: FF_X18_Y7_N7
\c_eth0_rb|wr_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[2]~15_combout\,
	asdata => \c_eth0_rb|sop_ptr\(2),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(2));

-- Location: LCCOMB_X18_Y7_N8
\c_eth0_rb|wr_ptr[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[3]~17_combout\ = (\c_eth0_rb|wr_ptr\(3) & (!\c_eth0_rb|wr_ptr[2]~16\)) # (!\c_eth0_rb|wr_ptr\(3) & ((\c_eth0_rb|wr_ptr[2]~16\) # (GND)))
-- \c_eth0_rb|wr_ptr[3]~18\ = CARRY((!\c_eth0_rb|wr_ptr[2]~16\) # (!\c_eth0_rb|wr_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|wr_ptr\(3),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[2]~16\,
	combout => \c_eth0_rb|wr_ptr[3]~17_combout\,
	cout => \c_eth0_rb|wr_ptr[3]~18\);

-- Location: LCCOMB_X18_Y7_N26
\c_eth0_rb|sop_ptr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~5_combout\ = (\c_eth0_rb|wr_ptr\(3) & \c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0_rb|wr_ptr\(3),
	datad => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|sop_ptr~5_combout\);

-- Location: FF_X18_Y7_N27
\c_eth0_rb|sop_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~5_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(3));

-- Location: FF_X18_Y7_N9
\c_eth0_rb|wr_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[3]~17_combout\,
	asdata => \c_eth0_rb|sop_ptr\(3),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(3));

-- Location: LCCOMB_X18_Y7_N10
\c_eth0_rb|wr_ptr[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[4]~19_combout\ = (\c_eth0_rb|wr_ptr\(4) & (\c_eth0_rb|wr_ptr[3]~18\ $ (GND))) # (!\c_eth0_rb|wr_ptr\(4) & (!\c_eth0_rb|wr_ptr[3]~18\ & VCC))
-- \c_eth0_rb|wr_ptr[4]~20\ = CARRY((\c_eth0_rb|wr_ptr\(4) & !\c_eth0_rb|wr_ptr[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|wr_ptr\(4),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[3]~18\,
	combout => \c_eth0_rb|wr_ptr[4]~19_combout\,
	cout => \c_eth0_rb|wr_ptr[4]~20\);

-- Location: LCCOMB_X19_Y7_N8
\c_eth0_rb|sop_ptr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~6_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|wr_ptr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|wr_ptr\(4),
	combout => \c_eth0_rb|sop_ptr~6_combout\);

-- Location: FF_X19_Y7_N9
\c_eth0_rb|sop_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~6_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(4));

-- Location: FF_X18_Y7_N11
\c_eth0_rb|wr_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[4]~19_combout\,
	asdata => \c_eth0_rb|sop_ptr\(4),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(4));

-- Location: LCCOMB_X18_Y7_N12
\c_eth0_rb|wr_ptr[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[5]~21_combout\ = (\c_eth0_rb|wr_ptr\(5) & (!\c_eth0_rb|wr_ptr[4]~20\)) # (!\c_eth0_rb|wr_ptr\(5) & ((\c_eth0_rb|wr_ptr[4]~20\) # (GND)))
-- \c_eth0_rb|wr_ptr[5]~22\ = CARRY((!\c_eth0_rb|wr_ptr[4]~20\) # (!\c_eth0_rb|wr_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|wr_ptr\(5),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[4]~20\,
	combout => \c_eth0_rb|wr_ptr[5]~21_combout\,
	cout => \c_eth0_rb|wr_ptr[5]~22\);

-- Location: LCCOMB_X18_Y7_N30
\c_eth0_rb|sop_ptr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~7_combout\ = (\c_eth0_rb|wr_ptr\(5) & \c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|wr_ptr\(5),
	datad => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|sop_ptr~7_combout\);

-- Location: FF_X18_Y7_N31
\c_eth0_rb|sop_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~7_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(5));

-- Location: FF_X18_Y7_N13
\c_eth0_rb|wr_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[5]~21_combout\,
	asdata => \c_eth0_rb|sop_ptr\(5),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(5));

-- Location: LCCOMB_X18_Y7_N14
\c_eth0_rb|wr_ptr[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[6]~23_combout\ = (\c_eth0_rb|wr_ptr\(6) & (\c_eth0_rb|wr_ptr[5]~22\ $ (GND))) # (!\c_eth0_rb|wr_ptr\(6) & (!\c_eth0_rb|wr_ptr[5]~22\ & VCC))
-- \c_eth0_rb|wr_ptr[6]~24\ = CARRY((\c_eth0_rb|wr_ptr\(6) & !\c_eth0_rb|wr_ptr[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|wr_ptr\(6),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[5]~22\,
	combout => \c_eth0_rb|wr_ptr[6]~23_combout\,
	cout => \c_eth0_rb|wr_ptr[6]~24\);

-- Location: LCCOMB_X19_Y7_N14
\c_eth0_rb|sop_ptr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~8_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|wr_ptr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|wr_ptr\(6),
	combout => \c_eth0_rb|sop_ptr~8_combout\);

-- Location: FF_X19_Y7_N15
\c_eth0_rb|sop_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~8_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(6));

-- Location: FF_X18_Y7_N15
\c_eth0_rb|wr_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[6]~23_combout\,
	asdata => \c_eth0_rb|sop_ptr\(6),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(6));

-- Location: LCCOMB_X18_Y7_N16
\c_eth0_rb|wr_ptr[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[7]~25_combout\ = (\c_eth0_rb|wr_ptr\(7) & (!\c_eth0_rb|wr_ptr[6]~24\)) # (!\c_eth0_rb|wr_ptr\(7) & ((\c_eth0_rb|wr_ptr[6]~24\) # (GND)))
-- \c_eth0_rb|wr_ptr[7]~26\ = CARRY((!\c_eth0_rb|wr_ptr[6]~24\) # (!\c_eth0_rb|wr_ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|wr_ptr\(7),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[6]~24\,
	combout => \c_eth0_rb|wr_ptr[7]~25_combout\,
	cout => \c_eth0_rb|wr_ptr[7]~26\);

-- Location: LCCOMB_X19_Y7_N20
\c_eth0_rb|sop_ptr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~9_combout\ = (\c_eth0_rb|wr_ptr\(7) & \c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0_rb|wr_ptr\(7),
	datad => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|sop_ptr~9_combout\);

-- Location: FF_X19_Y7_N21
\c_eth0_rb|sop_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~9_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(7));

-- Location: FF_X18_Y7_N17
\c_eth0_rb|wr_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[7]~25_combout\,
	asdata => \c_eth0_rb|sop_ptr\(7),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(7));

-- Location: LCCOMB_X18_Y7_N18
\c_eth0_rb|wr_ptr[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[8]~27_combout\ = (\c_eth0_rb|wr_ptr\(8) & (\c_eth0_rb|wr_ptr[7]~26\ $ (GND))) # (!\c_eth0_rb|wr_ptr\(8) & (!\c_eth0_rb|wr_ptr[7]~26\ & VCC))
-- \c_eth0_rb|wr_ptr[8]~28\ = CARRY((\c_eth0_rb|wr_ptr\(8) & !\c_eth0_rb|wr_ptr[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|wr_ptr\(8),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[7]~26\,
	combout => \c_eth0_rb|wr_ptr[8]~27_combout\,
	cout => \c_eth0_rb|wr_ptr[8]~28\);

-- Location: LCCOMB_X17_Y7_N6
\c_eth0_rb|sop_ptr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~10_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|wr_ptr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|wr_ptr\(8),
	combout => \c_eth0_rb|sop_ptr~10_combout\);

-- Location: FF_X17_Y7_N7
\c_eth0_rb|sop_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~10_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(8));

-- Location: FF_X18_Y7_N19
\c_eth0_rb|wr_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[8]~27_combout\,
	asdata => \c_eth0_rb|sop_ptr\(8),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(8));

-- Location: LCCOMB_X18_Y7_N20
\c_eth0_rb|wr_ptr[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[9]~29_combout\ = (\c_eth0_rb|wr_ptr\(9) & (!\c_eth0_rb|wr_ptr[8]~28\)) # (!\c_eth0_rb|wr_ptr\(9) & ((\c_eth0_rb|wr_ptr[8]~28\) # (GND)))
-- \c_eth0_rb|wr_ptr[9]~30\ = CARRY((!\c_eth0_rb|wr_ptr[8]~28\) # (!\c_eth0_rb|wr_ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|wr_ptr\(9),
	datad => VCC,
	cin => \c_eth0_rb|wr_ptr[8]~28\,
	combout => \c_eth0_rb|wr_ptr[9]~29_combout\,
	cout => \c_eth0_rb|wr_ptr[9]~30\);

-- Location: LCCOMB_X19_Y7_N10
\c_eth0_rb|sop_ptr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~11_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|wr_ptr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|wr_ptr\(9),
	combout => \c_eth0_rb|sop_ptr~11_combout\);

-- Location: FF_X19_Y7_N11
\c_eth0_rb|sop_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~11_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(9));

-- Location: FF_X18_Y7_N21
\c_eth0_rb|wr_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[9]~29_combout\,
	asdata => \c_eth0_rb|sop_ptr\(9),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(9));

-- Location: LCCOMB_X18_Y7_N22
\c_eth0_rb|wr_ptr[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|wr_ptr[10]~31_combout\ = \c_eth0_rb|wr_ptr\(10) $ (!\c_eth0_rb|wr_ptr[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|wr_ptr\(10),
	cin => \c_eth0_rb|wr_ptr[9]~30\,
	combout => \c_eth0_rb|wr_ptr[10]~31_combout\);

-- Location: LCCOMB_X19_Y7_N12
\c_eth0_rb|sop_ptr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|sop_ptr~1_combout\ = (\c_reset_ctrl|r_resetn~q\ & \c_eth0_rb|wr_ptr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|wr_ptr\(10),
	combout => \c_eth0_rb|sop_ptr~1_combout\);

-- Location: FF_X19_Y7_N13
\c_eth0_rb|sop_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|sop_ptr~1_combout\,
	ena => \c_eth0_rb|sop_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|sop_ptr\(10));

-- Location: FF_X18_Y7_N23
\c_eth0_rb|wr_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|wr_ptr[10]~31_combout\,
	asdata => \c_eth0_rb|sop_ptr\(10),
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	sload => \c_eth0_rb|dropping~q\,
	ena => \c_eth0_rb|wr_ptr[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|wr_ptr\(10));

-- Location: LCCOMB_X18_Y7_N28
\c_eth0_rb|ram_inst|ram0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|ram0~20_combout\ = (\c_interconnect|PA_TX_tvalid_reg~q\ & (!\c_eth0_rb|occ_words\(11) & (!\c_eth0_rb|wr_ptr\(10) & !\c_eth0_rb|dropping~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|PA_TX_tvalid_reg~q\,
	datab => \c_eth0_rb|occ_words\(11),
	datac => \c_eth0_rb|wr_ptr\(10),
	datad => \c_eth0_rb|dropping~q\,
	combout => \c_eth0_rb|ram_inst|ram0~20_combout\);

-- Location: LCCOMB_X23_Y11_N12
\c_interconnect|Selector25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~9_combout\ = (\c_debug_tx3|rom_addr\(1) & (!\c_debug_tx3|rom_addr\(2) & !\c_debug_tx3|rom_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_interconnect|Selector25~9_combout\);

-- Location: LCCOMB_X23_Y11_N6
\c_debug_tx3|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux7~4_combout\ = (\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(3)) # ((\c_debug_tx3|rom_addr\(2) & !\c_debug_tx3|rom_addr\(0))))) # (!\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|rom_addr\(3) & ((!\c_debug_tx3|rom_addr\(0)) # 
-- (!\c_debug_tx3|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux7~4_combout\);

-- Location: LCCOMB_X23_Y11_N4
\c_debug_tx3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux7~1_combout\ = (\c_debug_tx3|rom_addr\(2) & (!\c_debug_tx3|rom_addr\(3) & ((!\c_debug_tx3|rom_addr\(0)) # (!\c_debug_tx3|rom_addr\(5))))) # (!\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|rom_addr\(0) $ (((\c_debug_tx3|rom_addr\(5) & 
-- !\c_debug_tx3|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y11_N2
\c_debug_tx3|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux7~2_combout\ = (\c_debug_tx3|rom_addr\(0) & ((\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|rom_addr\(2) & \c_debug_tx3|rom_addr\(3))) # (!\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|rom_addr\(2) $ (\c_debug_tx3|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y11_N8
\c_debug_tx3|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux7~3_combout\ = (\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|Mux7~1_combout\) # ((\c_debug_tx3|rom_addr\(4))))) # (!\c_debug_tx3|rom_addr\(1) & (((!\c_debug_tx3|rom_addr\(4) & \c_debug_tx3|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|Mux7~1_combout\,
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|Mux7~2_combout\,
	combout => \c_debug_tx3|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y11_N18
\c_debug_tx3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux7~0_combout\ = (\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(5) & (!\c_debug_tx3|rom_addr\(2))) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(2)) # (!\c_debug_tx3|rom_addr\(0)))))) # (!\c_debug_tx3|rom_addr\(3) & 
-- ((\c_debug_tx3|rom_addr\(2) $ (\c_debug_tx3|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\c_debug_tx3|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux7~5_combout\ = (\c_debug_tx3|Mux7~3_combout\ & ((\c_debug_tx3|Mux7~4_combout\) # ((!\c_debug_tx3|rom_addr\(4))))) # (!\c_debug_tx3|Mux7~3_combout\ & (((\c_debug_tx3|rom_addr\(4) & !\c_debug_tx3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux7~4_combout\,
	datab => \c_debug_tx3|Mux7~3_combout\,
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|Mux7~0_combout\,
	combout => \c_debug_tx3|Mux7~5_combout\);

-- Location: LCCOMB_X23_Y11_N30
\c_interconnect|Selector25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~10_combout\ = (\c_interconnect|Selector25~9_combout\ & ((\c_interconnect|Selector25~0_combout\) # ((\c_debug_tx3|Mux7~5_combout\ & !\c_debug_tx3|rom_addr\(6))))) # (!\c_interconnect|Selector25~9_combout\ & 
-- (\c_debug_tx3|Mux7~5_combout\ & (!\c_debug_tx3|rom_addr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector25~9_combout\,
	datab => \c_debug_tx3|Mux7~5_combout\,
	datac => \c_debug_tx3|rom_addr\(6),
	datad => \c_interconnect|Selector25~0_combout\,
	combout => \c_interconnect|Selector25~10_combout\);

-- Location: LCCOMB_X19_Y8_N6
\c_interconnect|Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~3_combout\ = (\c_debug_tx2|tx_active~q\ & (\c_interconnect|active_port.PORT_C~q\ & !\c_debug_tx2|rom_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_C~q\,
	datad => \c_debug_tx2|rom_addr\(6),
	combout => \c_interconnect|Selector25~3_combout\);

-- Location: LCCOMB_X19_Y9_N24
\c_interconnect|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~2_combout\ = (\c_debug_tx2|rom_addr\(1) & (!\c_debug_tx2|rom_addr\(2) & (!\c_debug_tx2|rom_addr\(0) & !\c_debug_tx2|rom_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_interconnect|Selector25~2_combout\);

-- Location: LCCOMB_X19_Y8_N10
\c_interconnect|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~0_combout\ = (!\c_debug_tx2|rom_addr\(5) & (!\c_debug_tx2|rom_addr\(4) & \c_debug_tx2|rom_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(5),
	datac => \c_debug_tx2|rom_addr\(4),
	datad => \c_debug_tx2|rom_addr\(6),
	combout => \c_interconnect|Selector24~0_combout\);

-- Location: LCCOMB_X19_Y8_N4
\c_interconnect|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~1_combout\ = (\c_debug_tx2|tx_active~q\ & (\c_interconnect|active_port.PORT_C~q\ & \c_interconnect|Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_C~q\,
	datad => \c_interconnect|Selector24~0_combout\,
	combout => \c_interconnect|Selector25~1_combout\);

-- Location: LCCOMB_X17_Y9_N12
\c_debug_tx2|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux7~4_combout\ = (\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(5)) # ((!\c_debug_tx2|rom_addr\(2)) # (!\c_debug_tx2|rom_addr\(0))))) # (!\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(5) & (!\c_debug_tx2|rom_addr\(0) & 
-- \c_debug_tx2|rom_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(5),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(2),
	combout => \c_debug_tx2|Mux7~4_combout\);

-- Location: LCCOMB_X17_Y9_N24
\c_debug_tx2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux7~0_combout\ = (\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(5) & ((!\c_debug_tx2|rom_addr\(2)))) # (!\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr\(2)) # (!\c_debug_tx2|rom_addr\(0)))))) # (!\c_debug_tx2|rom_addr\(3) & 
-- ((\c_debug_tx2|rom_addr\(0) $ (\c_debug_tx2|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(5),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(2),
	combout => \c_debug_tx2|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y9_N10
\c_debug_tx2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux7~1_combout\ = (\c_debug_tx2|rom_addr\(3) & (((\c_debug_tx2|rom_addr\(0) & !\c_debug_tx2|rom_addr\(2))))) # (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(5) & (!\c_debug_tx2|rom_addr\(0))) # (!\c_debug_tx2|rom_addr\(5) & 
-- ((\c_debug_tx2|rom_addr\(0)) # (\c_debug_tx2|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(5),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(2),
	combout => \c_debug_tx2|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y9_N8
\c_debug_tx2|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux7~2_combout\ = (\c_debug_tx2|rom_addr\(0) & ((\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(5) $ (!\c_debug_tx2|rom_addr\(2)))) # (!\c_debug_tx2|rom_addr\(3) & (!\c_debug_tx2|rom_addr\(5) & \c_debug_tx2|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(5),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(2),
	combout => \c_debug_tx2|Mux7~2_combout\);

-- Location: LCCOMB_X17_Y9_N2
\c_debug_tx2|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux7~3_combout\ = (\c_debug_tx2|rom_addr\(4) & (((\c_debug_tx2|rom_addr\(1))))) # (!\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|Mux7~1_combout\)) # (!\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(4),
	datab => \c_debug_tx2|Mux7~1_combout\,
	datac => \c_debug_tx2|Mux7~2_combout\,
	datad => \c_debug_tx2|rom_addr\(1),
	combout => \c_debug_tx2|Mux7~3_combout\);

-- Location: LCCOMB_X17_Y9_N22
\c_debug_tx2|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux7~5_combout\ = (\c_debug_tx2|Mux7~3_combout\ & ((\c_debug_tx2|Mux7~4_combout\) # ((!\c_debug_tx2|rom_addr\(4))))) # (!\c_debug_tx2|Mux7~3_combout\ & (((!\c_debug_tx2|Mux7~0_combout\ & \c_debug_tx2|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|Mux7~4_combout\,
	datab => \c_debug_tx2|Mux7~0_combout\,
	datac => \c_debug_tx2|Mux7~3_combout\,
	datad => \c_debug_tx2|rom_addr\(4),
	combout => \c_debug_tx2|Mux7~5_combout\);

-- Location: LCCOMB_X21_Y9_N14
\c_interconnect|Selector25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~4_combout\ = (\c_interconnect|Selector25~3_combout\ & ((\c_debug_tx2|Mux7~5_combout\) # ((\c_interconnect|Selector25~2_combout\ & \c_interconnect|Selector25~1_combout\)))) # (!\c_interconnect|Selector25~3_combout\ & 
-- (\c_interconnect|Selector25~2_combout\ & (\c_interconnect|Selector25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector25~3_combout\,
	datab => \c_interconnect|Selector25~2_combout\,
	datac => \c_interconnect|Selector25~1_combout\,
	datad => \c_debug_tx2|Mux7~5_combout\,
	combout => \c_interconnect|Selector25~4_combout\);

-- Location: LCCOMB_X22_Y11_N22
\c_debug_tx3|rom_addr[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|rom_addr[6]~13_combout\ = (\c_debug_tx3|tx_active~q\ & \c_interconnect|active_port.PORT_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx3|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_D~q\,
	combout => \c_debug_tx3|rom_addr[6]~13_combout\);

-- Location: LCCOMB_X24_Y9_N24
\c_interconnect|Selector25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~6_combout\ = (!\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(1) & (!\c_debug_tx1|rom_addr\(0) & !\c_debug_tx1|rom_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_interconnect|Selector25~6_combout\);

-- Location: LCCOMB_X19_Y9_N6
\c_interconnect|Selector25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~7_combout\ = (!\c_debug_tx1|rom_addr\(6) & (\c_debug_tx1|tx_active~q\ & \c_interconnect|active_port.PORT_B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|rom_addr\(6),
	datac => \c_debug_tx1|tx_active~q\,
	datad => \c_interconnect|active_port.PORT_B~q\,
	combout => \c_interconnect|Selector25~7_combout\);

-- Location: LCCOMB_X18_Y9_N26
\c_debug_tx1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux7~4_combout\ = (\c_debug_tx1|rom_addr\(0) & (\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(5)) # (!\c_debug_tx1|rom_addr\(2))))) # (!\c_debug_tx1|rom_addr\(0) & ((\c_debug_tx1|rom_addr\(3)) # ((\c_debug_tx1|rom_addr\(5) & 
-- \c_debug_tx1|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(0),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(2),
	datad => \c_debug_tx1|rom_addr\(3),
	combout => \c_debug_tx1|Mux7~4_combout\);

-- Location: LCCOMB_X18_Y9_N30
\c_debug_tx1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux7~1_combout\ = (\c_debug_tx1|rom_addr\(0) & ((\c_debug_tx1|rom_addr\(3) & ((!\c_debug_tx1|rom_addr\(2)))) # (!\c_debug_tx1|rom_addr\(3) & (!\c_debug_tx1|rom_addr\(5))))) # (!\c_debug_tx1|rom_addr\(0) & (!\c_debug_tx1|rom_addr\(3) & 
-- ((\c_debug_tx1|rom_addr\(5)) # (\c_debug_tx1|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(0),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(2),
	datad => \c_debug_tx1|rom_addr\(3),
	combout => \c_debug_tx1|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y9_N0
\c_debug_tx1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux7~2_combout\ = (\c_debug_tx1|rom_addr\(0) & ((\c_debug_tx1|rom_addr\(5) & (\c_debug_tx1|rom_addr\(2) & \c_debug_tx1|rom_addr\(3))) # (!\c_debug_tx1|rom_addr\(5) & (\c_debug_tx1|rom_addr\(2) $ (\c_debug_tx1|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(0),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(2),
	datad => \c_debug_tx1|rom_addr\(3),
	combout => \c_debug_tx1|Mux7~2_combout\);

-- Location: LCCOMB_X18_Y9_N8
\c_debug_tx1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux7~3_combout\ = (\c_debug_tx1|rom_addr\(1) & ((\c_debug_tx1|rom_addr\(4)) # ((\c_debug_tx1|Mux7~1_combout\)))) # (!\c_debug_tx1|rom_addr\(1) & (!\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|Mux7~1_combout\,
	datad => \c_debug_tx1|Mux7~2_combout\,
	combout => \c_debug_tx1|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y9_N28
\c_debug_tx1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux7~0_combout\ = (\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(5) & ((!\c_debug_tx1|rom_addr\(2)))) # (!\c_debug_tx1|rom_addr\(5) & ((\c_debug_tx1|rom_addr\(2)) # (!\c_debug_tx1|rom_addr\(0)))))) # (!\c_debug_tx1|rom_addr\(3) & 
-- (\c_debug_tx1|rom_addr\(0) $ (((\c_debug_tx1|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(0),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(2),
	datad => \c_debug_tx1|rom_addr\(3),
	combout => \c_debug_tx1|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y9_N4
\c_debug_tx1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux7~5_combout\ = (\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|Mux7~3_combout\ & (\c_debug_tx1|Mux7~4_combout\)) # (!\c_debug_tx1|Mux7~3_combout\ & ((!\c_debug_tx1|Mux7~0_combout\))))) # (!\c_debug_tx1|rom_addr\(4) & 
-- (((\c_debug_tx1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux7~4_combout\,
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|Mux7~3_combout\,
	datad => \c_debug_tx1|Mux7~0_combout\,
	combout => \c_debug_tx1|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y9_N12
\c_interconnect|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~1_combout\ = (!\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|rom_addr\(6) & !\c_debug_tx1|rom_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|rom_addr\(6),
	datad => \c_debug_tx1|rom_addr\(5),
	combout => \c_interconnect|Selector24~1_combout\);

-- Location: LCCOMB_X22_Y9_N22
\c_interconnect|Selector25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~5_combout\ = (\c_debug_tx1|tx_active~q\ & (\c_interconnect|active_port.PORT_B~q\ & \c_interconnect|Selector24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_B~q\,
	datad => \c_interconnect|Selector24~1_combout\,
	combout => \c_interconnect|Selector25~5_combout\);

-- Location: LCCOMB_X21_Y9_N24
\c_interconnect|Selector25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~8_combout\ = (\c_interconnect|Selector25~6_combout\ & ((\c_interconnect|Selector25~5_combout\) # ((\c_interconnect|Selector25~7_combout\ & \c_debug_tx1|Mux7~5_combout\)))) # (!\c_interconnect|Selector25~6_combout\ & 
-- (\c_interconnect|Selector25~7_combout\ & (\c_debug_tx1|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector25~6_combout\,
	datab => \c_interconnect|Selector25~7_combout\,
	datac => \c_debug_tx1|Mux7~5_combout\,
	datad => \c_interconnect|Selector25~5_combout\,
	combout => \c_interconnect|Selector25~8_combout\);

-- Location: LCCOMB_X21_Y9_N16
\c_interconnect|Selector25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector25~11_combout\ = (\c_interconnect|Selector25~4_combout\) # ((\c_interconnect|Selector25~8_combout\) # ((\c_interconnect|Selector25~10_combout\ & \c_debug_tx3|rom_addr[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector25~10_combout\,
	datab => \c_interconnect|Selector25~4_combout\,
	datac => \c_debug_tx3|rom_addr[6]~13_combout\,
	datad => \c_interconnect|Selector25~8_combout\,
	combout => \c_interconnect|Selector25~11_combout\);

-- Location: FF_X21_Y9_N17
\c_interconnect|PA_TX_tdata_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector25~11_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(0));

-- Location: LCCOMB_X16_Y7_N6
\c_eth0_rb|rd_ptr[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[0]~12_combout\ = \c_eth0_rb|rd_ptr\(0) $ (VCC)
-- \c_eth0_rb|rd_ptr[0]~13\ = CARRY(\c_eth0_rb|rd_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|rd_ptr\(0),
	datad => VCC,
	combout => \c_eth0_rb|rd_ptr[0]~12_combout\,
	cout => \c_eth0_rb|rd_ptr[0]~13\);

-- Location: FF_X16_Y7_N7
\c_eth0_rb|rd_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[0]~12_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(0));

-- Location: LCCOMB_X16_Y7_N8
\c_eth0_rb|rd_ptr[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[1]~14_combout\ = (\c_eth0_rb|rd_ptr\(1) & (!\c_eth0_rb|rd_ptr[0]~13\)) # (!\c_eth0_rb|rd_ptr\(1) & ((\c_eth0_rb|rd_ptr[0]~13\) # (GND)))
-- \c_eth0_rb|rd_ptr[1]~15\ = CARRY((!\c_eth0_rb|rd_ptr[0]~13\) # (!\c_eth0_rb|rd_ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|rd_ptr\(1),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[0]~13\,
	combout => \c_eth0_rb|rd_ptr[1]~14_combout\,
	cout => \c_eth0_rb|rd_ptr[1]~15\);

-- Location: FF_X16_Y7_N9
\c_eth0_rb|rd_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[1]~14_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(1));

-- Location: LCCOMB_X16_Y7_N10
\c_eth0_rb|rd_ptr[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[2]~16_combout\ = (\c_eth0_rb|rd_ptr\(2) & (\c_eth0_rb|rd_ptr[1]~15\ $ (GND))) # (!\c_eth0_rb|rd_ptr\(2) & (!\c_eth0_rb|rd_ptr[1]~15\ & VCC))
-- \c_eth0_rb|rd_ptr[2]~17\ = CARRY((\c_eth0_rb|rd_ptr\(2) & !\c_eth0_rb|rd_ptr[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|rd_ptr\(2),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[1]~15\,
	combout => \c_eth0_rb|rd_ptr[2]~16_combout\,
	cout => \c_eth0_rb|rd_ptr[2]~17\);

-- Location: FF_X16_Y7_N11
\c_eth0_rb|rd_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[2]~16_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(2));

-- Location: LCCOMB_X16_Y7_N12
\c_eth0_rb|rd_ptr[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[3]~18_combout\ = (\c_eth0_rb|rd_ptr\(3) & (!\c_eth0_rb|rd_ptr[2]~17\)) # (!\c_eth0_rb|rd_ptr\(3) & ((\c_eth0_rb|rd_ptr[2]~17\) # (GND)))
-- \c_eth0_rb|rd_ptr[3]~19\ = CARRY((!\c_eth0_rb|rd_ptr[2]~17\) # (!\c_eth0_rb|rd_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|rd_ptr\(3),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[2]~17\,
	combout => \c_eth0_rb|rd_ptr[3]~18_combout\,
	cout => \c_eth0_rb|rd_ptr[3]~19\);

-- Location: FF_X16_Y7_N13
\c_eth0_rb|rd_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[3]~18_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(3));

-- Location: LCCOMB_X16_Y7_N14
\c_eth0_rb|rd_ptr[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[4]~20_combout\ = (\c_eth0_rb|rd_ptr\(4) & (\c_eth0_rb|rd_ptr[3]~19\ $ (GND))) # (!\c_eth0_rb|rd_ptr\(4) & (!\c_eth0_rb|rd_ptr[3]~19\ & VCC))
-- \c_eth0_rb|rd_ptr[4]~21\ = CARRY((\c_eth0_rb|rd_ptr\(4) & !\c_eth0_rb|rd_ptr[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|rd_ptr\(4),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[3]~19\,
	combout => \c_eth0_rb|rd_ptr[4]~20_combout\,
	cout => \c_eth0_rb|rd_ptr[4]~21\);

-- Location: FF_X16_Y7_N15
\c_eth0_rb|rd_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[4]~20_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(4));

-- Location: LCCOMB_X16_Y7_N16
\c_eth0_rb|rd_ptr[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[5]~22_combout\ = (\c_eth0_rb|rd_ptr\(5) & (!\c_eth0_rb|rd_ptr[4]~21\)) # (!\c_eth0_rb|rd_ptr\(5) & ((\c_eth0_rb|rd_ptr[4]~21\) # (GND)))
-- \c_eth0_rb|rd_ptr[5]~23\ = CARRY((!\c_eth0_rb|rd_ptr[4]~21\) # (!\c_eth0_rb|rd_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|rd_ptr\(5),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[4]~21\,
	combout => \c_eth0_rb|rd_ptr[5]~22_combout\,
	cout => \c_eth0_rb|rd_ptr[5]~23\);

-- Location: FF_X16_Y7_N17
\c_eth0_rb|rd_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[5]~22_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(5));

-- Location: LCCOMB_X16_Y7_N18
\c_eth0_rb|rd_ptr[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[6]~24_combout\ = (\c_eth0_rb|rd_ptr\(6) & (\c_eth0_rb|rd_ptr[5]~23\ $ (GND))) # (!\c_eth0_rb|rd_ptr\(6) & (!\c_eth0_rb|rd_ptr[5]~23\ & VCC))
-- \c_eth0_rb|rd_ptr[6]~25\ = CARRY((\c_eth0_rb|rd_ptr\(6) & !\c_eth0_rb|rd_ptr[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|rd_ptr\(6),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[5]~23\,
	combout => \c_eth0_rb|rd_ptr[6]~24_combout\,
	cout => \c_eth0_rb|rd_ptr[6]~25\);

-- Location: FF_X16_Y7_N19
\c_eth0_rb|rd_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[6]~24_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(6));

-- Location: LCCOMB_X16_Y7_N20
\c_eth0_rb|rd_ptr[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[7]~26_combout\ = (\c_eth0_rb|rd_ptr\(7) & (!\c_eth0_rb|rd_ptr[6]~25\)) # (!\c_eth0_rb|rd_ptr\(7) & ((\c_eth0_rb|rd_ptr[6]~25\) # (GND)))
-- \c_eth0_rb|rd_ptr[7]~27\ = CARRY((!\c_eth0_rb|rd_ptr[6]~25\) # (!\c_eth0_rb|rd_ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|rd_ptr\(7),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[6]~25\,
	combout => \c_eth0_rb|rd_ptr[7]~26_combout\,
	cout => \c_eth0_rb|rd_ptr[7]~27\);

-- Location: FF_X16_Y7_N21
\c_eth0_rb|rd_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[7]~26_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(7));

-- Location: LCCOMB_X16_Y7_N22
\c_eth0_rb|rd_ptr[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[8]~28_combout\ = (\c_eth0_rb|rd_ptr\(8) & (\c_eth0_rb|rd_ptr[7]~27\ $ (GND))) # (!\c_eth0_rb|rd_ptr\(8) & (!\c_eth0_rb|rd_ptr[7]~27\ & VCC))
-- \c_eth0_rb|rd_ptr[8]~29\ = CARRY((\c_eth0_rb|rd_ptr\(8) & !\c_eth0_rb|rd_ptr[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|rd_ptr\(8),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[7]~27\,
	combout => \c_eth0_rb|rd_ptr[8]~28_combout\,
	cout => \c_eth0_rb|rd_ptr[8]~29\);

-- Location: FF_X16_Y7_N23
\c_eth0_rb|rd_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[8]~28_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(8));

-- Location: LCCOMB_X16_Y7_N24
\c_eth0_rb|rd_ptr[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[9]~30_combout\ = (\c_eth0_rb|rd_ptr\(9) & (!\c_eth0_rb|rd_ptr[8]~29\)) # (!\c_eth0_rb|rd_ptr\(9) & ((\c_eth0_rb|rd_ptr[8]~29\) # (GND)))
-- \c_eth0_rb|rd_ptr[9]~31\ = CARRY((!\c_eth0_rb|rd_ptr[8]~29\) # (!\c_eth0_rb|rd_ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|rd_ptr\(9),
	datad => VCC,
	cin => \c_eth0_rb|rd_ptr[8]~29\,
	combout => \c_eth0_rb|rd_ptr[9]~30_combout\,
	cout => \c_eth0_rb|rd_ptr[9]~31\);

-- Location: FF_X16_Y7_N25
\c_eth0_rb|rd_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[9]~30_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(9));

-- Location: LCCOMB_X18_Y8_N22
\c_debug_tx3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux6~0_combout\ = (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(1) & (!\c_debug_tx3|rom_addr\(2))) # (!\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr\(2)) # (\c_debug_tx3|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(3),
	combout => \c_debug_tx3|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y11_N14
\c_debug_tx3|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux6~3_combout\ = (!\c_debug_tx3|rom_addr\(0) & ((\c_debug_tx3|rom_addr\(4) & (\c_debug_tx3|rom_addr\(5))) # (!\c_debug_tx3|rom_addr\(4) & ((\c_debug_tx3|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux6~3_combout\);

-- Location: LCCOMB_X23_Y11_N26
\c_debug_tx3|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux6~2_combout\ = (\c_debug_tx3|rom_addr\(0) & (\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|rom_addr\(3)))) # (!\c_debug_tx3|rom_addr\(0) & ((\c_debug_tx3|rom_addr\(4) & ((!\c_debug_tx3|rom_addr\(3)))) # (!\c_debug_tx3|rom_addr\(4) & 
-- (\c_debug_tx3|rom_addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y11_N28
\c_debug_tx3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux6~1_combout\ = (\c_debug_tx3|rom_addr\(3)) # ((\c_debug_tx3|rom_addr\(5) & (!\c_debug_tx3|rom_addr\(4))) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(4)) # (\c_debug_tx3|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y11_N16
\c_interconnect|Selector24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~12_combout\ = (\c_debug_tx3|rom_addr\(2) & (((!\c_debug_tx3|Mux6~1_combout\ & !\c_debug_tx3|rom_addr\(1))))) # (!\c_debug_tx3|rom_addr\(2) & (!\c_debug_tx3|Mux6~2_combout\ & ((\c_debug_tx3|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux6~2_combout\,
	datab => \c_debug_tx3|Mux6~1_combout\,
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_interconnect|Selector24~12_combout\);

-- Location: LCCOMB_X23_Y11_N20
\c_interconnect|Selector24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~13_combout\ = (\c_interconnect|Selector24~12_combout\) # ((!\c_debug_tx3|rom_addr\(1) & (\c_debug_tx3|Mux6~3_combout\ & !\c_debug_tx3|rom_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|Mux6~3_combout\,
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_interconnect|Selector24~12_combout\,
	combout => \c_interconnect|Selector24~13_combout\);

-- Location: LCCOMB_X22_Y10_N12
\c_interconnect|Selector18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~4_combout\ = (!\c_debug_tx3|rom_addr\(4) & !\c_debug_tx3|rom_addr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|rom_addr\(5),
	combout => \c_interconnect|Selector18~4_combout\);

-- Location: LCCOMB_X18_Y8_N28
\c_interconnect|Selector24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~14_combout\ = (\c_debug_tx3|rom_addr\(6) & (\c_debug_tx3|Mux6~0_combout\ & ((\c_interconnect|Selector18~4_combout\)))) # (!\c_debug_tx3|rom_addr\(6) & (((\c_interconnect|Selector24~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux6~0_combout\,
	datab => \c_debug_tx3|rom_addr\(6),
	datac => \c_interconnect|Selector24~13_combout\,
	datad => \c_interconnect|Selector18~4_combout\,
	combout => \c_interconnect|Selector24~14_combout\);

-- Location: LCCOMB_X22_Y9_N16
\c_interconnect|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~2_combout\ = (\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|rom_addr\(5) & (!\c_debug_tx1|rom_addr\(4))) # (!\c_debug_tx1|rom_addr\(5) & ((\c_debug_tx1|rom_addr\(4)) # (\c_debug_tx1|rom_addr\(0)))))) # (!\c_debug_tx1|rom_addr\(2) & 
-- (((\c_debug_tx1|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(4),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_interconnect|Selector24~2_combout\);

-- Location: LCCOMB_X22_Y9_N2
\c_interconnect|Selector24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~3_combout\ = (\c_debug_tx1|rom_addr\(1) & (\c_interconnect|Selector24~1_combout\ & ((!\c_debug_tx1|rom_addr\(2))))) # (!\c_debug_tx1|rom_addr\(1) & ((\c_interconnect|Selector24~2_combout\ & 
-- (\c_interconnect|Selector24~1_combout\)) # (!\c_interconnect|Selector24~2_combout\ & ((\c_debug_tx1|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~1_combout\,
	datab => \c_interconnect|Selector24~2_combout\,
	datac => \c_debug_tx1|rom_addr\(2),
	datad => \c_debug_tx1|rom_addr\(1),
	combout => \c_interconnect|Selector24~3_combout\);

-- Location: LCCOMB_X22_Y9_N4
\c_interconnect|Selector24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~4_combout\ = (!\c_debug_tx1|rom_addr\(3) & (\c_interconnect|Selector24~3_combout\ & ((\c_interconnect|Selector24~1_combout\) # (!\c_debug_tx1|rom_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~1_combout\,
	datab => \c_debug_tx1|rom_addr\(3),
	datac => \c_debug_tx1|rom_addr\(6),
	datad => \c_interconnect|Selector24~3_combout\,
	combout => \c_interconnect|Selector24~4_combout\);

-- Location: LCCOMB_X18_Y8_N26
\c_debug_tx1|rom_addr[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|rom_addr[4]~25_combout\ = (\c_interconnect|active_port.PORT_B~q\ & \c_debug_tx1|tx_active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_interconnect|active_port.PORT_B~q\,
	datad => \c_debug_tx1|tx_active~q\,
	combout => \c_debug_tx1|rom_addr[4]~25_combout\);

-- Location: LCCOMB_X24_Y9_N12
\c_debug_tx1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux6~1_combout\ = (\c_debug_tx1|rom_addr\(0) & (((\c_debug_tx1|rom_addr\(5) & \c_debug_tx1|rom_addr\(3))))) # (!\c_debug_tx1|rom_addr\(0) & ((\c_debug_tx1|rom_addr\(4) & ((!\c_debug_tx1|rom_addr\(3)))) # (!\c_debug_tx1|rom_addr\(4) & 
-- (\c_debug_tx1|rom_addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(3),
	combout => \c_debug_tx1|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y9_N2
\c_debug_tx1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux6~0_combout\ = (!\c_debug_tx1|rom_addr\(0) & ((\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|rom_addr\(5))) # (!\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(3),
	combout => \c_debug_tx1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\c_interconnect|Selector24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~5_combout\ = (!\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|rom_addr\(1) & (!\c_debug_tx1|Mux6~1_combout\)) # (!\c_debug_tx1|rom_addr\(1) & ((\c_debug_tx1|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux6~1_combout\,
	datab => \c_debug_tx1|Mux6~0_combout\,
	datac => \c_debug_tx1|rom_addr\(1),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_interconnect|Selector24~5_combout\);

-- Location: LCCOMB_X18_Y8_N4
\c_interconnect|Selector24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~6_combout\ = (\c_debug_tx1|rom_addr[4]~25_combout\ & ((\c_interconnect|Selector24~4_combout\) # ((!\c_debug_tx1|rom_addr\(6) & \c_interconnect|Selector24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~4_combout\,
	datab => \c_debug_tx1|rom_addr\(6),
	datac => \c_debug_tx1|rom_addr[4]~25_combout\,
	datad => \c_interconnect|Selector24~5_combout\,
	combout => \c_interconnect|Selector24~6_combout\);

-- Location: LCCOMB_X18_Y10_N6
\c_debug_tx2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux6~0_combout\ = (!\c_debug_tx2|rom_addr\(0) & ((\c_debug_tx2|rom_addr\(4) & (\c_debug_tx2|rom_addr\(5))) # (!\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(3),
	datad => \c_debug_tx2|rom_addr\(0),
	combout => \c_debug_tx2|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y10_N8
\c_debug_tx2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux6~1_combout\ = (\c_debug_tx2|rom_addr\(0) & (\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr\(3))))) # (!\c_debug_tx2|rom_addr\(0) & ((\c_debug_tx2|rom_addr\(4) & ((!\c_debug_tx2|rom_addr\(3)))) # (!\c_debug_tx2|rom_addr\(4) & 
-- (\c_debug_tx2|rom_addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(3),
	datad => \c_debug_tx2|rom_addr\(0),
	combout => \c_debug_tx2|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y10_N10
\c_interconnect|Selector24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~10_combout\ = (!\c_debug_tx2|rom_addr\(2) & ((\c_debug_tx2|rom_addr\(1) & ((!\c_debug_tx2|Mux6~1_combout\))) # (!\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|Mux6~0_combout\,
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|Mux6~1_combout\,
	datad => \c_debug_tx2|rom_addr\(1),
	combout => \c_interconnect|Selector24~10_combout\);

-- Location: LCCOMB_X18_Y10_N4
\c_interconnect|Selector24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~7_combout\ = (\c_debug_tx2|rom_addr\(2) & ((\c_debug_tx2|rom_addr\(4) & (!\c_debug_tx2|rom_addr\(5))) # (!\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(5)) # (\c_debug_tx2|rom_addr\(0)))))) # (!\c_debug_tx2|rom_addr\(2) & 
-- (((\c_debug_tx2|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(5),
	datad => \c_debug_tx2|rom_addr\(0),
	combout => \c_interconnect|Selector24~7_combout\);

-- Location: LCCOMB_X18_Y10_N30
\c_interconnect|Selector24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~8_combout\ = (\c_debug_tx2|rom_addr\(1) & (\c_interconnect|Selector24~0_combout\ & ((!\c_debug_tx2|rom_addr\(2))))) # (!\c_debug_tx2|rom_addr\(1) & ((\c_interconnect|Selector24~7_combout\ & 
-- (\c_interconnect|Selector24~0_combout\)) # (!\c_interconnect|Selector24~7_combout\ & ((\c_debug_tx2|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~0_combout\,
	datab => \c_debug_tx2|rom_addr\(1),
	datac => \c_interconnect|Selector24~7_combout\,
	datad => \c_debug_tx2|rom_addr\(2),
	combout => \c_interconnect|Selector24~8_combout\);

-- Location: LCCOMB_X18_Y10_N12
\c_interconnect|Selector24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~9_combout\ = (\c_interconnect|Selector24~8_combout\ & (!\c_debug_tx2|rom_addr\(3) & ((\c_interconnect|Selector24~0_combout\) # (!\c_debug_tx2|rom_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~8_combout\,
	datab => \c_debug_tx2|rom_addr\(6),
	datac => \c_debug_tx2|rom_addr\(3),
	datad => \c_interconnect|Selector24~0_combout\,
	combout => \c_interconnect|Selector24~9_combout\);

-- Location: LCCOMB_X18_Y10_N14
\c_interconnect|Selector24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~11_combout\ = (\c_debug_tx2|rom_addr[5]~13_combout\ & ((\c_interconnect|Selector24~9_combout\) # ((\c_interconnect|Selector24~10_combout\ & !\c_debug_tx2|rom_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~10_combout\,
	datab => \c_debug_tx2|rom_addr\(6),
	datac => \c_debug_tx2|rom_addr[5]~13_combout\,
	datad => \c_interconnect|Selector24~9_combout\,
	combout => \c_interconnect|Selector24~11_combout\);

-- Location: LCCOMB_X18_Y8_N8
\c_interconnect|Selector24~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector24~15_combout\ = (\c_interconnect|Selector24~6_combout\) # ((\c_interconnect|Selector24~11_combout\) # ((\c_debug_tx3|rom_addr[6]~13_combout\ & \c_interconnect|Selector24~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr[6]~13_combout\,
	datab => \c_interconnect|Selector24~14_combout\,
	datac => \c_interconnect|Selector24~6_combout\,
	datad => \c_interconnect|Selector24~11_combout\,
	combout => \c_interconnect|Selector24~15_combout\);

-- Location: FF_X18_Y8_N9
\c_interconnect|PA_TX_tdata_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector24~15_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(1));

-- Location: LCCOMB_X25_Y9_N12
\c_debug_tx1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux5~5_combout\ = (\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(1) & (!\c_debug_tx1|rom_addr\(5) & \c_debug_tx1|rom_addr\(0)))) # (!\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(5) & (\c_debug_tx1|rom_addr\(1) $ 
-- (\c_debug_tx1|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datab => \c_debug_tx1|rom_addr\(3),
	datac => \c_debug_tx1|rom_addr\(5),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux5~5_combout\);

-- Location: LCCOMB_X25_Y9_N30
\c_debug_tx1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux5~2_combout\ = (\c_debug_tx1|rom_addr\(3) & (((!\c_debug_tx1|rom_addr\(0) & !\c_debug_tx1|rom_addr\(1))) # (!\c_debug_tx1|rom_addr\(5)))) # (!\c_debug_tx1|rom_addr\(3) & (((\c_debug_tx1|rom_addr\(5)) # (\c_debug_tx1|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(0),
	datab => \c_debug_tx1|rom_addr\(3),
	datac => \c_debug_tx1|rom_addr\(5),
	datad => \c_debug_tx1|rom_addr\(1),
	combout => \c_debug_tx1|Mux5~2_combout\);

-- Location: LCCOMB_X25_Y9_N28
\c_debug_tx1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux5~3_combout\ = (\c_debug_tx1|rom_addr\(1) & (((!\c_debug_tx1|rom_addr\(5))))) # (!\c_debug_tx1|rom_addr\(1) & ((\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(0)) # (!\c_debug_tx1|rom_addr\(5)))) # (!\c_debug_tx1|rom_addr\(3) & 
-- (!\c_debug_tx1|rom_addr\(5) & \c_debug_tx1|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datab => \c_debug_tx1|rom_addr\(3),
	datac => \c_debug_tx1|rom_addr\(5),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux5~3_combout\);

-- Location: LCCOMB_X25_Y9_N14
\c_debug_tx1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux5~4_combout\ = (\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|rom_addr\(4)) # ((!\c_debug_tx1|Mux5~2_combout\)))) # (!\c_debug_tx1|rom_addr\(2) & (!\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|Mux5~2_combout\,
	datad => \c_debug_tx1|Mux5~3_combout\,
	combout => \c_debug_tx1|Mux5~4_combout\);

-- Location: LCCOMB_X25_Y9_N20
\c_debug_tx1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux5~1_combout\ = (\c_debug_tx1|rom_addr\(5) & (\c_debug_tx1|rom_addr\(0) $ (((\c_debug_tx1|rom_addr\(1) & !\c_debug_tx1|rom_addr\(3)))))) # (!\c_debug_tx1|rom_addr\(5) & ((\c_debug_tx1|rom_addr\(0)) # (\c_debug_tx1|rom_addr\(1) $ 
-- (\c_debug_tx1|rom_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datab => \c_debug_tx1|rom_addr\(3),
	datac => \c_debug_tx1|rom_addr\(5),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y9_N6
\c_debug_tx1|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux5~6_combout\ = (\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|Mux5~4_combout\ & (\c_debug_tx1|Mux5~5_combout\)) # (!\c_debug_tx1|Mux5~4_combout\ & ((!\c_debug_tx1|Mux5~1_combout\))))) # (!\c_debug_tx1|rom_addr\(4) & 
-- (((\c_debug_tx1|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux5~5_combout\,
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|Mux5~4_combout\,
	datad => \c_debug_tx1|Mux5~1_combout\,
	combout => \c_debug_tx1|Mux5~6_combout\);

-- Location: LCCOMB_X24_Y9_N28
\c_debug_tx1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux5~0_combout\ = (!\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(1) $ (((\c_debug_tx1|rom_addr\(0)) # (\c_debug_tx1|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y9_N12
\c_interconnect|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector23~1_combout\ = (\c_debug_tx1|Mux5~6_combout\ & ((\c_interconnect|Selector25~7_combout\) # ((\c_debug_tx1|Mux5~0_combout\ & \c_interconnect|Selector25~5_combout\)))) # (!\c_debug_tx1|Mux5~6_combout\ & (\c_debug_tx1|Mux5~0_combout\ 
-- & ((\c_interconnect|Selector25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux5~6_combout\,
	datab => \c_debug_tx1|Mux5~0_combout\,
	datac => \c_interconnect|Selector25~7_combout\,
	datad => \c_interconnect|Selector25~5_combout\,
	combout => \c_interconnect|Selector23~1_combout\);

-- Location: LCCOMB_X22_Y10_N4
\c_debug_tx3|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux5~3_combout\ = (\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|rom_addr\(3) & (\c_debug_tx3|rom_addr\(0) & !\c_debug_tx3|rom_addr\(1)))) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(3)) # ((\c_debug_tx3|rom_addr\(0)) # 
-- (\c_debug_tx3|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_debug_tx3|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y10_N6
\c_debug_tx3|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux5~2_combout\ = (\c_debug_tx3|rom_addr\(5) & (((!\c_debug_tx3|rom_addr\(0) & !\c_debug_tx3|rom_addr\(1))) # (!\c_debug_tx3|rom_addr\(3)))) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(3)) # ((\c_debug_tx3|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_debug_tx3|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y10_N10
\c_debug_tx3|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux5~4_combout\ = (\c_debug_tx3|rom_addr\(2) & (((\c_debug_tx3|rom_addr\(4)) # (!\c_debug_tx3|Mux5~2_combout\)))) # (!\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|Mux5~3_combout\ & (!\c_debug_tx3|rom_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(2),
	datab => \c_debug_tx3|Mux5~3_combout\,
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|Mux5~2_combout\,
	combout => \c_debug_tx3|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y10_N0
\c_debug_tx3|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux5~5_combout\ = (\c_debug_tx3|rom_addr\(5) & (!\c_debug_tx3|rom_addr\(3) & (\c_debug_tx3|rom_addr\(0) $ (\c_debug_tx3|rom_addr\(1))))) # (!\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|rom_addr\(3) & (\c_debug_tx3|rom_addr\(0) & 
-- \c_debug_tx3|rom_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_debug_tx3|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y10_N28
\c_debug_tx3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux5~1_combout\ = (\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|rom_addr\(0) $ (((!\c_debug_tx3|rom_addr\(3) & \c_debug_tx3|rom_addr\(1)))))) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(0)) # (\c_debug_tx3|rom_addr\(3) $ 
-- (\c_debug_tx3|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(5),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_debug_tx3|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y10_N8
\c_debug_tx3|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux5~6_combout\ = (\c_debug_tx3|Mux5~4_combout\ & ((\c_debug_tx3|Mux5~5_combout\) # ((!\c_debug_tx3|rom_addr\(4))))) # (!\c_debug_tx3|Mux5~4_combout\ & (((\c_debug_tx3|rom_addr\(4) & !\c_debug_tx3|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux5~4_combout\,
	datab => \c_debug_tx3|Mux5~5_combout\,
	datac => \c_debug_tx3|rom_addr\(4),
	datad => \c_debug_tx3|Mux5~1_combout\,
	combout => \c_debug_tx3|Mux5~6_combout\);

-- Location: LCCOMB_X22_Y10_N2
\c_debug_tx3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux5~0_combout\ = (!\c_debug_tx3|rom_addr\(3) & (\c_debug_tx3|rom_addr\(1) $ (((\c_debug_tx3|rom_addr\(2)) # (\c_debug_tx3|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(2),
	datab => \c_debug_tx3|rom_addr\(3),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_debug_tx3|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y10_N30
\c_interconnect|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector23~2_combout\ = (\c_debug_tx3|rom_addr\(6) & (\c_interconnect|Selector18~4_combout\ & ((\c_debug_tx3|Mux5~0_combout\)))) # (!\c_debug_tx3|rom_addr\(6) & (((\c_debug_tx3|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector18~4_combout\,
	datab => \c_debug_tx3|Mux5~6_combout\,
	datac => \c_debug_tx3|rom_addr\(6),
	datad => \c_debug_tx3|Mux5~0_combout\,
	combout => \c_interconnect|Selector23~2_combout\);

-- Location: LCCOMB_X19_Y8_N12
\c_debug_tx2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux5~0_combout\ = (!\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(1) $ (((\c_debug_tx2|rom_addr\(2)) # (\c_debug_tx2|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(3),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(1),
	combout => \c_debug_tx2|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y6_N18
\c_debug_tx2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux5~2_combout\ = (\c_debug_tx2|rom_addr\(5) & (((!\c_debug_tx2|rom_addr\(0) & !\c_debug_tx2|rom_addr\(1))) # (!\c_debug_tx2|rom_addr\(3)))) # (!\c_debug_tx2|rom_addr\(5) & (((\c_debug_tx2|rom_addr\(1)) # (\c_debug_tx2|rom_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|rom_addr\(0),
	datac => \c_debug_tx2|rom_addr\(1),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux5~2_combout\);

-- Location: LCCOMB_X17_Y6_N28
\c_debug_tx2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux5~3_combout\ = (\c_debug_tx2|rom_addr\(5) & (\c_debug_tx2|rom_addr\(0) & (!\c_debug_tx2|rom_addr\(1) & \c_debug_tx2|rom_addr\(3)))) # (!\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr\(0)) # ((\c_debug_tx2|rom_addr\(1)) # 
-- (\c_debug_tx2|rom_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|rom_addr\(0),
	datac => \c_debug_tx2|rom_addr\(1),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux5~3_combout\);

-- Location: LCCOMB_X17_Y6_N10
\c_debug_tx2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux5~4_combout\ = (\c_debug_tx2|rom_addr\(4) & (((\c_debug_tx2|rom_addr\(2))))) # (!\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(2) & (!\c_debug_tx2|Mux5~2_combout\)) # (!\c_debug_tx2|rom_addr\(2) & ((\c_debug_tx2|Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(4),
	datab => \c_debug_tx2|Mux5~2_combout\,
	datac => \c_debug_tx2|rom_addr\(2),
	datad => \c_debug_tx2|Mux5~3_combout\,
	combout => \c_debug_tx2|Mux5~4_combout\);

-- Location: LCCOMB_X17_Y6_N8
\c_debug_tx2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux5~1_combout\ = (\c_debug_tx2|rom_addr\(5) & (\c_debug_tx2|rom_addr\(0) $ (((!\c_debug_tx2|rom_addr\(3) & \c_debug_tx2|rom_addr\(1)))))) # (!\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr\(0)) # (\c_debug_tx2|rom_addr\(3) $ 
-- (\c_debug_tx2|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|rom_addr\(3),
	datac => \c_debug_tx2|rom_addr\(1),
	datad => \c_debug_tx2|rom_addr\(0),
	combout => \c_debug_tx2|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y6_N12
\c_debug_tx2|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux5~5_combout\ = (\c_debug_tx2|rom_addr\(5) & (!\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(1) $ (\c_debug_tx2|rom_addr\(0))))) # (!\c_debug_tx2|rom_addr\(5) & (\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(1) & 
-- \c_debug_tx2|rom_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|rom_addr\(3),
	datac => \c_debug_tx2|rom_addr\(1),
	datad => \c_debug_tx2|rom_addr\(0),
	combout => \c_debug_tx2|Mux5~5_combout\);

-- Location: LCCOMB_X17_Y6_N22
\c_debug_tx2|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux5~6_combout\ = (\c_debug_tx2|Mux5~4_combout\ & (((\c_debug_tx2|Mux5~5_combout\) # (!\c_debug_tx2|rom_addr\(4))))) # (!\c_debug_tx2|Mux5~4_combout\ & (!\c_debug_tx2|Mux5~1_combout\ & (\c_debug_tx2|rom_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|Mux5~4_combout\,
	datab => \c_debug_tx2|Mux5~1_combout\,
	datac => \c_debug_tx2|rom_addr\(4),
	datad => \c_debug_tx2|Mux5~5_combout\,
	combout => \c_debug_tx2|Mux5~6_combout\);

-- Location: LCCOMB_X21_Y9_N2
\c_interconnect|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector23~0_combout\ = (\c_debug_tx2|Mux5~0_combout\ & ((\c_interconnect|Selector25~1_combout\) # ((\c_debug_tx2|Mux5~6_combout\ & \c_interconnect|Selector25~3_combout\)))) # (!\c_debug_tx2|Mux5~0_combout\ & (\c_debug_tx2|Mux5~6_combout\ 
-- & ((\c_interconnect|Selector25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|Mux5~0_combout\,
	datab => \c_debug_tx2|Mux5~6_combout\,
	datac => \c_interconnect|Selector25~1_combout\,
	datad => \c_interconnect|Selector25~3_combout\,
	combout => \c_interconnect|Selector23~0_combout\);

-- Location: LCCOMB_X21_Y9_N22
\c_interconnect|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector23~3_combout\ = (\c_interconnect|Selector23~1_combout\) # ((\c_interconnect|Selector23~0_combout\) # ((\c_interconnect|Selector23~2_combout\ & \c_debug_tx3|rom_addr[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector23~1_combout\,
	datab => \c_interconnect|Selector23~2_combout\,
	datac => \c_debug_tx3|rom_addr[6]~13_combout\,
	datad => \c_interconnect|Selector23~0_combout\,
	combout => \c_interconnect|Selector23~3_combout\);

-- Location: FF_X21_Y9_N23
\c_interconnect|PA_TX_tdata_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector23~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(2));

-- Location: LCCOMB_X18_Y8_N10
\c_debug_tx3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux4~0_combout\ = (\c_debug_tx3|rom_addr\(0) & (!\c_debug_tx3|rom_addr\(3) & ((!\c_debug_tx3|rom_addr\(2)) # (!\c_debug_tx3|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(3),
	combout => \c_debug_tx3|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y8_N22
\c_debug_tx3|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux4~2_combout\ = (\c_debug_tx3|rom_addr\(3) & (\c_debug_tx3|rom_addr\(0) & ((\c_debug_tx3|rom_addr\(1)) # (\c_debug_tx3|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux4~2_combout\);

-- Location: LCCOMB_X22_Y8_N20
\c_debug_tx3|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux4~3_combout\ = (\c_debug_tx3|rom_addr\(1) & (((\c_debug_tx3|rom_addr\(3) & !\c_debug_tx3|rom_addr\(0))) # (!\c_debug_tx3|rom_addr\(2)))) # (!\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr\(2) & (!\c_debug_tx3|rom_addr\(3))) # 
-- (!\c_debug_tx3|rom_addr\(2) & ((\c_debug_tx3|rom_addr\(3)) # (\c_debug_tx3|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux4~3_combout\);

-- Location: LCCOMB_X22_Y8_N6
\c_debug_tx3|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux4~4_combout\ = (\c_debug_tx3|rom_addr\(5) & (((\c_debug_tx3|rom_addr\(4))))) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(4) & (\c_debug_tx3|Mux4~2_combout\)) # (!\c_debug_tx3|rom_addr\(4) & ((\c_debug_tx3|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux4~2_combout\,
	datab => \c_debug_tx3|Mux4~3_combout\,
	datac => \c_debug_tx3|rom_addr\(5),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y8_N0
\c_debug_tx3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux4~1_combout\ = (\c_debug_tx3|rom_addr\(1) & (\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|rom_addr\(3)))) # (!\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr\(2) & ((!\c_debug_tx3|rom_addr\(0)))) # (!\c_debug_tx3|rom_addr\(2) & 
-- (!\c_debug_tx3|rom_addr\(3) & \c_debug_tx3|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux4~1_combout\);

-- Location: LCCOMB_X22_Y8_N24
\c_debug_tx3|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux4~5_combout\ = (\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(1)) # ((\c_debug_tx3|rom_addr\(0)) # (!\c_debug_tx3|rom_addr\(2))))) # (!\c_debug_tx3|rom_addr\(3) & (\c_debug_tx3|rom_addr\(0) $ (((!\c_debug_tx3|rom_addr\(1) & 
-- \c_debug_tx3|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_debug_tx3|Mux4~5_combout\);

-- Location: LCCOMB_X22_Y8_N14
\c_debug_tx3|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux4~6_combout\ = (\c_debug_tx3|Mux4~4_combout\ & (((!\c_debug_tx3|Mux4~5_combout\) # (!\c_debug_tx3|rom_addr\(5))))) # (!\c_debug_tx3|Mux4~4_combout\ & (\c_debug_tx3|Mux4~1_combout\ & (\c_debug_tx3|rom_addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux4~4_combout\,
	datab => \c_debug_tx3|Mux4~1_combout\,
	datac => \c_debug_tx3|rom_addr\(5),
	datad => \c_debug_tx3|Mux4~5_combout\,
	combout => \c_debug_tx3|Mux4~6_combout\);

-- Location: LCCOMB_X18_Y8_N24
\c_interconnect|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector22~2_combout\ = (\c_debug_tx3|rom_addr\(6) & (\c_debug_tx3|Mux4~0_combout\ & ((\c_interconnect|Selector18~4_combout\)))) # (!\c_debug_tx3|rom_addr\(6) & (((\c_debug_tx3|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux4~0_combout\,
	datab => \c_debug_tx3|Mux4~6_combout\,
	datac => \c_debug_tx3|rom_addr\(6),
	datad => \c_interconnect|Selector18~4_combout\,
	combout => \c_interconnect|Selector22~2_combout\);

-- Location: LCCOMB_X24_Y9_N18
\c_debug_tx1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux4~0_combout\ = (!\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(0) & ((!\c_debug_tx1|rom_addr\(2)) # (!\c_debug_tx1|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y9_N22
\c_debug_tx1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux4~2_combout\ = (\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(0) & ((\c_debug_tx1|rom_addr\(1)) # (\c_debug_tx1|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y9_N16
\c_debug_tx1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux4~3_combout\ = (\c_debug_tx1|rom_addr\(3) & (((\c_debug_tx1|rom_addr\(1) & !\c_debug_tx1|rom_addr\(0))) # (!\c_debug_tx1|rom_addr\(2)))) # (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(1) & ((!\c_debug_tx1|rom_addr\(2)))) # 
-- (!\c_debug_tx1|rom_addr\(1) & ((\c_debug_tx1|rom_addr\(0)) # (\c_debug_tx1|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux4~3_combout\);

-- Location: LCCOMB_X24_Y9_N6
\c_debug_tx1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux4~4_combout\ = (\c_debug_tx1|rom_addr\(5) & (((\c_debug_tx1|rom_addr\(4))))) # (!\c_debug_tx1|rom_addr\(5) & ((\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|Mux4~2_combout\)) # (!\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux4~2_combout\,
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(4),
	datad => \c_debug_tx1|Mux4~3_combout\,
	combout => \c_debug_tx1|Mux4~4_combout\);

-- Location: LCCOMB_X24_Y9_N4
\c_debug_tx1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux4~1_combout\ = (\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|rom_addr\(1)) # (!\c_debug_tx1|rom_addr\(0))))) # (!\c_debug_tx1|rom_addr\(3) & (!\c_debug_tx1|rom_addr\(1) & (\c_debug_tx1|rom_addr\(0) $ 
-- (\c_debug_tx1|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y9_N20
\c_debug_tx1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux4~5_combout\ = (\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(1)) # ((\c_debug_tx1|rom_addr\(0)) # (!\c_debug_tx1|rom_addr\(2))))) # (!\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(0) $ (((!\c_debug_tx1|rom_addr\(1) & 
-- \c_debug_tx1|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux4~5_combout\);

-- Location: LCCOMB_X24_Y9_N14
\c_debug_tx1|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux4~6_combout\ = (\c_debug_tx1|Mux4~4_combout\ & (((!\c_debug_tx1|Mux4~5_combout\)) # (!\c_debug_tx1|rom_addr\(5)))) # (!\c_debug_tx1|Mux4~4_combout\ & (\c_debug_tx1|rom_addr\(5) & (\c_debug_tx1|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux4~4_combout\,
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|Mux4~1_combout\,
	datad => \c_debug_tx1|Mux4~5_combout\,
	combout => \c_debug_tx1|Mux4~6_combout\);

-- Location: LCCOMB_X21_Y9_N30
\c_interconnect|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector22~1_combout\ = (\c_debug_tx1|Mux4~0_combout\ & ((\c_interconnect|Selector25~5_combout\) # ((\c_interconnect|Selector25~7_combout\ & \c_debug_tx1|Mux4~6_combout\)))) # (!\c_debug_tx1|Mux4~0_combout\ & 
-- (((\c_interconnect|Selector25~7_combout\ & \c_debug_tx1|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux4~0_combout\,
	datab => \c_interconnect|Selector25~5_combout\,
	datac => \c_interconnect|Selector25~7_combout\,
	datad => \c_debug_tx1|Mux4~6_combout\,
	combout => \c_interconnect|Selector22~1_combout\);

-- Location: LCCOMB_X19_Y9_N0
\c_debug_tx2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux4~5_combout\ = (\c_debug_tx2|rom_addr\(0) & ((\c_debug_tx2|rom_addr\(1)) # ((\c_debug_tx2|rom_addr\(3)) # (!\c_debug_tx2|rom_addr\(2))))) # (!\c_debug_tx2|rom_addr\(0) & (\c_debug_tx2|rom_addr\(3) $ (((!\c_debug_tx2|rom_addr\(1) & 
-- \c_debug_tx2|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux4~5_combout\);

-- Location: LCCOMB_X19_Y9_N20
\c_debug_tx2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux4~3_combout\ = (\c_debug_tx2|rom_addr\(1) & (((!\c_debug_tx2|rom_addr\(0) & \c_debug_tx2|rom_addr\(3))) # (!\c_debug_tx2|rom_addr\(2)))) # (!\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|rom_addr\(2) & ((!\c_debug_tx2|rom_addr\(3)))) # 
-- (!\c_debug_tx2|rom_addr\(2) & ((\c_debug_tx2|rom_addr\(0)) # (\c_debug_tx2|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux4~3_combout\);

-- Location: LCCOMB_X19_Y9_N18
\c_debug_tx2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux4~2_combout\ = (\c_debug_tx2|rom_addr\(0) & (\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(1)) # (\c_debug_tx2|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y9_N22
\c_debug_tx2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux4~4_combout\ = (\c_debug_tx2|rom_addr\(5) & (((\c_debug_tx2|rom_addr\(4))))) # (!\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|Mux4~2_combout\))) # (!\c_debug_tx2|rom_addr\(4) & (\c_debug_tx2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|Mux4~3_combout\,
	datac => \c_debug_tx2|rom_addr\(4),
	datad => \c_debug_tx2|Mux4~2_combout\,
	combout => \c_debug_tx2|Mux4~4_combout\);

-- Location: LCCOMB_X19_Y9_N12
\c_debug_tx2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux4~1_combout\ = (\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|rom_addr\(2) & ((\c_debug_tx2|rom_addr\(3))))) # (!\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|rom_addr\(2) & (!\c_debug_tx2|rom_addr\(0))) # (!\c_debug_tx2|rom_addr\(2) & 
-- (\c_debug_tx2|rom_addr\(0) & !\c_debug_tx2|rom_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux4~1_combout\);

-- Location: LCCOMB_X19_Y9_N30
\c_debug_tx2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux4~6_combout\ = (\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|Mux4~4_combout\ & (!\c_debug_tx2|Mux4~5_combout\)) # (!\c_debug_tx2|Mux4~4_combout\ & ((\c_debug_tx2|Mux4~1_combout\))))) # (!\c_debug_tx2|rom_addr\(5) & 
-- (((\c_debug_tx2|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|Mux4~5_combout\,
	datac => \c_debug_tx2|Mux4~4_combout\,
	datad => \c_debug_tx2|Mux4~1_combout\,
	combout => \c_debug_tx2|Mux4~6_combout\);

-- Location: LCCOMB_X19_Y8_N18
\c_debug_tx2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux4~0_combout\ = (!\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(0) & ((!\c_debug_tx2|rom_addr\(1)) # (!\c_debug_tx2|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(3),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(1),
	combout => \c_debug_tx2|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y8_N28
\c_interconnect|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector22~0_combout\ = (\c_interconnect|Selector25~3_combout\ & ((\c_debug_tx2|Mux4~6_combout\) # ((\c_interconnect|Selector25~1_combout\ & \c_debug_tx2|Mux4~0_combout\)))) # (!\c_interconnect|Selector25~3_combout\ & 
-- (\c_interconnect|Selector25~1_combout\ & ((\c_debug_tx2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector25~3_combout\,
	datab => \c_interconnect|Selector25~1_combout\,
	datac => \c_debug_tx2|Mux4~6_combout\,
	datad => \c_debug_tx2|Mux4~0_combout\,
	combout => \c_interconnect|Selector22~0_combout\);

-- Location: LCCOMB_X18_Y8_N30
\c_interconnect|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector22~3_combout\ = (\c_interconnect|Selector22~1_combout\) # ((\c_interconnect|Selector22~0_combout\) # ((\c_debug_tx3|rom_addr[6]~13_combout\ & \c_interconnect|Selector22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr[6]~13_combout\,
	datab => \c_interconnect|Selector22~2_combout\,
	datac => \c_interconnect|Selector22~1_combout\,
	datad => \c_interconnect|Selector22~0_combout\,
	combout => \c_interconnect|Selector22~3_combout\);

-- Location: FF_X18_Y8_N31
\c_interconnect|PA_TX_tdata_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector22~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(3));

-- Location: LCCOMB_X25_Y9_N0
\c_debug_tx1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux3~1_combout\ = (\c_debug_tx1|rom_addr\(3) & (!\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|rom_addr\(0))))) # (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(4) $ (\c_debug_tx1|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux3~1_combout\);

-- Location: LCCOMB_X25_Y9_N22
\c_debug_tx1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux3~2_combout\ = (\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|rom_addr\(2)) # ((\c_debug_tx1|rom_addr\(3) & \c_debug_tx1|rom_addr\(0))))) # (!\c_debug_tx1|rom_addr\(4) & (((\c_debug_tx1|rom_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux3~2_combout\);

-- Location: LCCOMB_X25_Y9_N18
\c_debug_tx1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux3~4_combout\ = (\c_debug_tx1|rom_addr\(2) & (\c_debug_tx1|Mux3~1_combout\ & (\c_debug_tx1|Mux3~2_combout\ $ (\c_debug_tx1|rom_addr\(1))))) # (!\c_debug_tx1|rom_addr\(2) & (((\c_debug_tx1|Mux3~2_combout\ & !\c_debug_tx1|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|Mux3~1_combout\,
	datac => \c_debug_tx1|Mux3~2_combout\,
	datad => \c_debug_tx1|rom_addr\(1),
	combout => \c_debug_tx1|Mux3~4_combout\);

-- Location: LCCOMB_X25_Y9_N16
\c_debug_tx1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux3~3_combout\ = (\c_debug_tx1|Mux3~1_combout\ & (((\c_debug_tx1|Mux3~2_combout\ & !\c_debug_tx1|rom_addr\(1))))) # (!\c_debug_tx1|Mux3~1_combout\ & ((\c_debug_tx1|rom_addr\(2) & (!\c_debug_tx1|Mux3~2_combout\)) # (!\c_debug_tx1|rom_addr\(2) 
-- & ((\c_debug_tx1|rom_addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|Mux3~1_combout\,
	datac => \c_debug_tx1|Mux3~2_combout\,
	datad => \c_debug_tx1|rom_addr\(1),
	combout => \c_debug_tx1|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y9_N4
\c_debug_tx1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux3~5_combout\ = \c_debug_tx1|Mux3~4_combout\ $ (((!\c_debug_tx1|rom_addr\(5) & \c_debug_tx1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|Mux3~4_combout\,
	datac => \c_debug_tx1|rom_addr\(5),
	datad => \c_debug_tx1|Mux3~3_combout\,
	combout => \c_debug_tx1|Mux3~5_combout\);

-- Location: LCCOMB_X24_Y9_N8
\c_debug_tx1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux3~0_combout\ = (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(1) & ((!\c_debug_tx1|rom_addr\(2)))) # (!\c_debug_tx1|rom_addr\(1) & (\c_debug_tx1|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y9_N10
\c_interconnect|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector21~1_combout\ = (\c_debug_tx1|Mux3~5_combout\ & ((\c_interconnect|Selector25~7_combout\) # ((\c_debug_tx1|Mux3~0_combout\ & \c_interconnect|Selector25~5_combout\)))) # (!\c_debug_tx1|Mux3~5_combout\ & 
-- (((\c_debug_tx1|Mux3~0_combout\ & \c_interconnect|Selector25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux3~5_combout\,
	datab => \c_interconnect|Selector25~7_combout\,
	datac => \c_debug_tx1|Mux3~0_combout\,
	datad => \c_interconnect|Selector25~5_combout\,
	combout => \c_interconnect|Selector21~1_combout\);

-- Location: LCCOMB_X17_Y9_N30
\c_debug_tx2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux3~2_combout\ = (\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(2)) # ((\c_debug_tx2|rom_addr\(3) & \c_debug_tx2|rom_addr\(0))))) # (!\c_debug_tx2|rom_addr\(4) & (\c_debug_tx2|rom_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(4),
	combout => \c_debug_tx2|Mux3~2_combout\);

-- Location: LCCOMB_X17_Y9_N28
\c_debug_tx2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux3~1_combout\ = (\c_debug_tx2|rom_addr\(3) & (!\c_debug_tx2|rom_addr\(2) & (\c_debug_tx2|rom_addr\(0)))) # (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(0) $ (\c_debug_tx2|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(4),
	combout => \c_debug_tx2|Mux3~1_combout\);

-- Location: LCCOMB_X17_Y9_N26
\c_debug_tx2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux3~4_combout\ = (\c_debug_tx2|rom_addr\(2) & (\c_debug_tx2|Mux3~1_combout\ & (\c_debug_tx2|rom_addr\(1) $ (\c_debug_tx2|Mux3~2_combout\)))) # (!\c_debug_tx2|rom_addr\(2) & (!\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|Mux3~2_combout\,
	datad => \c_debug_tx2|Mux3~1_combout\,
	combout => \c_debug_tx2|Mux3~4_combout\);

-- Location: LCCOMB_X17_Y9_N0
\c_debug_tx2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux3~3_combout\ = (\c_debug_tx2|Mux3~1_combout\ & (!\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|Mux3~2_combout\)))) # (!\c_debug_tx2|Mux3~1_combout\ & ((\c_debug_tx2|rom_addr\(2) & ((!\c_debug_tx2|Mux3~2_combout\))) # 
-- (!\c_debug_tx2|rom_addr\(2) & (\c_debug_tx2|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|Mux3~2_combout\,
	datad => \c_debug_tx2|Mux3~1_combout\,
	combout => \c_debug_tx2|Mux3~3_combout\);

-- Location: LCCOMB_X17_Y9_N20
\c_debug_tx2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux3~5_combout\ = \c_debug_tx2|Mux3~4_combout\ $ (((!\c_debug_tx2|rom_addr\(5) & \c_debug_tx2|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(5),
	datac => \c_debug_tx2|Mux3~4_combout\,
	datad => \c_debug_tx2|Mux3~3_combout\,
	combout => \c_debug_tx2|Mux3~5_combout\);

-- Location: LCCOMB_X19_Y9_N16
\c_debug_tx2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux3~0_combout\ = (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(1) & (!\c_debug_tx2|rom_addr\(2))) # (!\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y9_N8
\c_interconnect|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector21~0_combout\ = (\c_debug_tx2|Mux3~5_combout\ & ((\c_interconnect|Selector25~3_combout\) # ((\c_debug_tx2|Mux3~0_combout\ & \c_interconnect|Selector25~1_combout\)))) # (!\c_debug_tx2|Mux3~5_combout\ & (\c_debug_tx2|Mux3~0_combout\ 
-- & (\c_interconnect|Selector25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|Mux3~5_combout\,
	datab => \c_debug_tx2|Mux3~0_combout\,
	datac => \c_interconnect|Selector25~1_combout\,
	datad => \c_interconnect|Selector25~3_combout\,
	combout => \c_interconnect|Selector21~0_combout\);

-- Location: LCCOMB_X22_Y7_N30
\c_debug_tx3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux3~1_combout\ = (\c_debug_tx3|rom_addr\(3) & (!\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|rom_addr\(0)))) # (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(0) $ (\c_debug_tx3|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(2),
	datab => \c_debug_tx3|rom_addr\(0),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y7_N16
\c_debug_tx3|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux3~2_combout\ = (\c_debug_tx3|rom_addr\(4) & ((\c_debug_tx3|rom_addr\(2)) # ((\c_debug_tx3|rom_addr\(0) & \c_debug_tx3|rom_addr\(3))))) # (!\c_debug_tx3|rom_addr\(4) & (((\c_debug_tx3|rom_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(2),
	datab => \c_debug_tx3|rom_addr\(0),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux3~2_combout\);

-- Location: LCCOMB_X22_Y7_N4
\c_debug_tx3|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux3~4_combout\ = (\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|Mux3~1_combout\ & (\c_debug_tx3|rom_addr\(1) $ (\c_debug_tx3|Mux3~2_combout\)))) # (!\c_debug_tx3|rom_addr\(2) & (((!\c_debug_tx3|rom_addr\(1) & \c_debug_tx3|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux3~1_combout\,
	datab => \c_debug_tx3|rom_addr\(1),
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|Mux3~2_combout\,
	combout => \c_debug_tx3|Mux3~4_combout\);

-- Location: LCCOMB_X22_Y7_N18
\c_debug_tx3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux3~3_combout\ = (\c_debug_tx3|Mux3~1_combout\ & (!\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|Mux3~2_combout\)))) # (!\c_debug_tx3|Mux3~1_combout\ & ((\c_debug_tx3|rom_addr\(2) & ((!\c_debug_tx3|Mux3~2_combout\))) # 
-- (!\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux3~1_combout\,
	datab => \c_debug_tx3|rom_addr\(1),
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|Mux3~2_combout\,
	combout => \c_debug_tx3|Mux3~3_combout\);

-- Location: LCCOMB_X22_Y7_N22
\c_debug_tx3|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux3~5_combout\ = \c_debug_tx3|Mux3~4_combout\ $ (((!\c_debug_tx3|rom_addr\(5) & \c_debug_tx3|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx3|rom_addr\(5),
	datac => \c_debug_tx3|Mux3~4_combout\,
	datad => \c_debug_tx3|Mux3~3_combout\,
	combout => \c_debug_tx3|Mux3~5_combout\);

-- Location: LCCOMB_X22_Y7_N24
\c_debug_tx3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux3~0_combout\ = (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(1) & (!\c_debug_tx3|rom_addr\(2))) # (!\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(2),
	datab => \c_debug_tx3|rom_addr\(0),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_debug_tx3|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y7_N0
\c_interconnect|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector21~2_combout\ = (\c_debug_tx3|rom_addr\(6) & (((\c_interconnect|Selector18~4_combout\ & \c_debug_tx3|Mux3~0_combout\)))) # (!\c_debug_tx3|rom_addr\(6) & (\c_debug_tx3|Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux3~5_combout\,
	datab => \c_debug_tx3|rom_addr\(6),
	datac => \c_interconnect|Selector18~4_combout\,
	datad => \c_debug_tx3|Mux3~0_combout\,
	combout => \c_interconnect|Selector21~2_combout\);

-- Location: LCCOMB_X21_Y9_N0
\c_interconnect|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector21~3_combout\ = (\c_interconnect|Selector21~1_combout\) # ((\c_interconnect|Selector21~0_combout\) # ((\c_debug_tx3|rom_addr[6]~13_combout\ & \c_interconnect|Selector21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector21~1_combout\,
	datab => \c_interconnect|Selector21~0_combout\,
	datac => \c_debug_tx3|rom_addr[6]~13_combout\,
	datad => \c_interconnect|Selector21~2_combout\,
	combout => \c_interconnect|Selector21~3_combout\);

-- Location: FF_X21_Y9_N1
\c_interconnect|PA_TX_tdata_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector21~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(4));

-- Location: LCCOMB_X24_Y9_N26
\c_debug_tx1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux2~0_combout\ = (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(1) & (!\c_debug_tx1|rom_addr\(0) & !\c_debug_tx1|rom_addr\(2))) # (!\c_debug_tx1|rom_addr\(1) & (\c_debug_tx1|rom_addr\(0) $ (\c_debug_tx1|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y9_N8
\c_debug_tx1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux2~2_combout\ = (\c_debug_tx1|rom_addr\(1) & (\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|rom_addr\(3)) # (\c_debug_tx1|rom_addr\(0))))) # (!\c_debug_tx1|rom_addr\(1) & (\c_debug_tx1|rom_addr\(0) & ((\c_debug_tx1|rom_addr\(3)) # 
-- (!\c_debug_tx1|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y9_N10
\c_debug_tx1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux2~1_combout\ = (\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(0)) # (\c_debug_tx1|rom_addr\(1) $ (\c_debug_tx1|rom_addr\(4))))) # (!\c_debug_tx1|rom_addr\(3) & (\c_debug_tx1|rom_addr\(1) & (!\c_debug_tx1|rom_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(1),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y9_N24
\c_debug_tx1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux2~4_combout\ = (\c_debug_tx1|Mux2~2_combout\ & (\c_debug_tx1|rom_addr\(2) $ (\c_debug_tx1|rom_addr\(4) $ (\c_debug_tx1|Mux2~1_combout\)))) # (!\c_debug_tx1|Mux2~2_combout\ & (!\c_debug_tx1|rom_addr\(2) & (!\c_debug_tx1|rom_addr\(4) & 
-- \c_debug_tx1|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|Mux2~2_combout\,
	datad => \c_debug_tx1|Mux2~1_combout\,
	combout => \c_debug_tx1|Mux2~4_combout\);

-- Location: LCCOMB_X25_Y9_N2
\c_debug_tx1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux2~3_combout\ = (\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|rom_addr\(4)) # ((\c_debug_tx1|Mux2~1_combout\)))) # (!\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|rom_addr\(4) & (!\c_debug_tx1|Mux2~2_combout\ & !\c_debug_tx1|Mux2~1_combout\)) # 
-- (!\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(4),
	datac => \c_debug_tx1|Mux2~2_combout\,
	datad => \c_debug_tx1|Mux2~1_combout\,
	combout => \c_debug_tx1|Mux2~3_combout\);

-- Location: LCCOMB_X25_Y9_N26
\c_debug_tx1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux2~5_combout\ = (\c_debug_tx1|rom_addr\(5) & ((\c_debug_tx1|Mux2~3_combout\))) # (!\c_debug_tx1|rom_addr\(5) & (\c_debug_tx1|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|Mux2~4_combout\,
	datac => \c_debug_tx1|rom_addr\(5),
	datad => \c_debug_tx1|Mux2~3_combout\,
	combout => \c_debug_tx1|Mux2~5_combout\);

-- Location: LCCOMB_X21_Y9_N18
\c_interconnect|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector20~1_combout\ = (\c_debug_tx1|Mux2~0_combout\ & ((\c_interconnect|Selector25~5_combout\) # ((\c_interconnect|Selector25~7_combout\ & \c_debug_tx1|Mux2~5_combout\)))) # (!\c_debug_tx1|Mux2~0_combout\ & 
-- (((\c_interconnect|Selector25~7_combout\ & \c_debug_tx1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux2~0_combout\,
	datab => \c_interconnect|Selector25~5_combout\,
	datac => \c_interconnect|Selector25~7_combout\,
	datad => \c_debug_tx1|Mux2~5_combout\,
	combout => \c_interconnect|Selector20~1_combout\);

-- Location: LCCOMB_X22_Y8_N10
\c_debug_tx3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux2~2_combout\ = (\c_debug_tx3|rom_addr\(1) & (\c_debug_tx3|rom_addr\(4) & ((\c_debug_tx3|rom_addr\(0)) # (\c_debug_tx3|rom_addr\(3))))) # (!\c_debug_tx3|rom_addr\(1) & (\c_debug_tx3|rom_addr\(0) & ((\c_debug_tx3|rom_addr\(3)) # 
-- (!\c_debug_tx3|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(0),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y8_N12
\c_debug_tx3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux2~1_combout\ = (\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(0)) # (\c_debug_tx3|rom_addr\(1) $ (\c_debug_tx3|rom_addr\(4))))) # (!\c_debug_tx3|rom_addr\(3) & (\c_debug_tx3|rom_addr\(1) & ((!\c_debug_tx3|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(0),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y8_N8
\c_debug_tx3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux2~3_combout\ = (\c_debug_tx3|rom_addr\(4) & ((\c_debug_tx3|rom_addr\(2)) # ((!\c_debug_tx3|Mux2~2_combout\ & !\c_debug_tx3|Mux2~1_combout\)))) # (!\c_debug_tx3|rom_addr\(4) & ((\c_debug_tx3|rom_addr\(2) & ((\c_debug_tx3|Mux2~1_combout\))) 
-- # (!\c_debug_tx3|rom_addr\(2) & (\c_debug_tx3|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux2~2_combout\,
	datab => \c_debug_tx3|rom_addr\(4),
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|Mux2~1_combout\,
	combout => \c_debug_tx3|Mux2~3_combout\);

-- Location: LCCOMB_X22_Y8_N2
\c_debug_tx3|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux2~4_combout\ = (\c_debug_tx3|Mux2~2_combout\ & (\c_debug_tx3|rom_addr\(4) $ (\c_debug_tx3|rom_addr\(2) $ (\c_debug_tx3|Mux2~1_combout\)))) # (!\c_debug_tx3|Mux2~2_combout\ & (!\c_debug_tx3|rom_addr\(4) & (!\c_debug_tx3|rom_addr\(2) & 
-- \c_debug_tx3|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux2~2_combout\,
	datab => \c_debug_tx3|rom_addr\(4),
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|Mux2~1_combout\,
	combout => \c_debug_tx3|Mux2~4_combout\);

-- Location: LCCOMB_X22_Y8_N16
\c_debug_tx3|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux2~5_combout\ = (\c_debug_tx3|rom_addr\(5) & (\c_debug_tx3|Mux2~3_combout\)) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx3|Mux2~3_combout\,
	datac => \c_debug_tx3|rom_addr\(5),
	datad => \c_debug_tx3|Mux2~4_combout\,
	combout => \c_debug_tx3|Mux2~5_combout\);

-- Location: LCCOMB_X18_Y8_N2
\c_debug_tx3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux2~0_combout\ = (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(1) & (!\c_debug_tx3|rom_addr\(2) & !\c_debug_tx3|rom_addr\(0))) # (!\c_debug_tx3|rom_addr\(1) & (\c_debug_tx3|rom_addr\(2) $ (\c_debug_tx3|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(3),
	combout => \c_debug_tx3|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y8_N0
\c_interconnect|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector20~2_combout\ = (\c_debug_tx3|rom_addr\(6) & (((\c_interconnect|Selector18~4_combout\ & \c_debug_tx3|Mux2~0_combout\)))) # (!\c_debug_tx3|rom_addr\(6) & (\c_debug_tx3|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux2~5_combout\,
	datab => \c_interconnect|Selector18~4_combout\,
	datac => \c_debug_tx3|rom_addr\(6),
	datad => \c_debug_tx3|Mux2~0_combout\,
	combout => \c_interconnect|Selector20~2_combout\);

-- Location: LCCOMB_X19_Y9_N10
\c_debug_tx2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux2~0_combout\ = (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(1) & (!\c_debug_tx2|rom_addr\(2) & !\c_debug_tx2|rom_addr\(0))) # (!\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|rom_addr\(2) $ (\c_debug_tx2|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y9_N16
\c_debug_tx2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux2~2_combout\ = (\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|rom_addr\(4)))) # (!\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|rom_addr\(0))))) # (!\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(0) & 
-- (\c_debug_tx2|rom_addr\(1) $ (!\c_debug_tx2|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(1),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(4),
	combout => \c_debug_tx2|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y9_N14
\c_debug_tx2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux2~1_combout\ = (\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(0)) # (\c_debug_tx2|rom_addr\(1) $ (\c_debug_tx2|rom_addr\(4))))) # (!\c_debug_tx2|rom_addr\(3) & (\c_debug_tx2|rom_addr\(1) & ((!\c_debug_tx2|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(3),
	datab => \c_debug_tx2|rom_addr\(1),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(4),
	combout => \c_debug_tx2|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y9_N4
\c_debug_tx2|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux2~4_combout\ = (\c_debug_tx2|Mux2~2_combout\ & (\c_debug_tx2|rom_addr\(4) $ (\c_debug_tx2|Mux2~1_combout\ $ (\c_debug_tx2|rom_addr\(2))))) # (!\c_debug_tx2|Mux2~2_combout\ & (!\c_debug_tx2|rom_addr\(4) & (\c_debug_tx2|Mux2~1_combout\ & 
-- !\c_debug_tx2|rom_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(4),
	datab => \c_debug_tx2|Mux2~2_combout\,
	datac => \c_debug_tx2|Mux2~1_combout\,
	datad => \c_debug_tx2|rom_addr\(2),
	combout => \c_debug_tx2|Mux2~4_combout\);

-- Location: LCCOMB_X17_Y9_N6
\c_debug_tx2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux2~3_combout\ = (\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(2)) # ((!\c_debug_tx2|Mux2~2_combout\ & !\c_debug_tx2|Mux2~1_combout\)))) # (!\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(2) & ((\c_debug_tx2|Mux2~1_combout\))) 
-- # (!\c_debug_tx2|rom_addr\(2) & (\c_debug_tx2|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(4),
	datab => \c_debug_tx2|Mux2~2_combout\,
	datac => \c_debug_tx2|Mux2~1_combout\,
	datad => \c_debug_tx2|rom_addr\(2),
	combout => \c_debug_tx2|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y9_N18
\c_debug_tx2|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux2~5_combout\ = (\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|Mux2~3_combout\))) # (!\c_debug_tx2|rom_addr\(5) & (\c_debug_tx2|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx2|rom_addr\(5),
	datac => \c_debug_tx2|Mux2~4_combout\,
	datad => \c_debug_tx2|Mux2~3_combout\,
	combout => \c_debug_tx2|Mux2~5_combout\);

-- Location: LCCOMB_X21_Y9_N28
\c_interconnect|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector20~0_combout\ = (\c_interconnect|Selector25~3_combout\ & ((\c_debug_tx2|Mux2~5_combout\) # ((\c_debug_tx2|Mux2~0_combout\ & \c_interconnect|Selector25~1_combout\)))) # (!\c_interconnect|Selector25~3_combout\ & 
-- (\c_debug_tx2|Mux2~0_combout\ & (\c_interconnect|Selector25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector25~3_combout\,
	datab => \c_debug_tx2|Mux2~0_combout\,
	datac => \c_interconnect|Selector25~1_combout\,
	datad => \c_debug_tx2|Mux2~5_combout\,
	combout => \c_interconnect|Selector20~0_combout\);

-- Location: LCCOMB_X21_Y9_N26
\c_interconnect|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector20~3_combout\ = (\c_interconnect|Selector20~1_combout\) # ((\c_interconnect|Selector20~0_combout\) # ((\c_debug_tx3|rom_addr[6]~13_combout\ & \c_interconnect|Selector20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr[6]~13_combout\,
	datab => \c_interconnect|Selector20~1_combout\,
	datac => \c_interconnect|Selector20~2_combout\,
	datad => \c_interconnect|Selector20~0_combout\,
	combout => \c_interconnect|Selector20~3_combout\);

-- Location: FF_X21_Y9_N27
\c_interconnect|PA_TX_tdata_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector20~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(5));

-- Location: LCCOMB_X22_Y9_N10
\c_debug_tx1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux1~2_combout\ = (\c_debug_tx1|rom_addr\(1)) # ((\c_debug_tx1|rom_addr\(0)) # (\c_debug_tx1|rom_addr\(4) $ (\c_debug_tx1|rom_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y9_N0
\c_debug_tx1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux1~3_combout\ = (\c_debug_tx1|rom_addr\(4) & ((\c_debug_tx1|rom_addr\(1) & (\c_debug_tx1|rom_addr\(3))) # (!\c_debug_tx1|rom_addr\(1) & ((!\c_debug_tx1|rom_addr\(0)))))) # (!\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|rom_addr\(0) $ 
-- (((!\c_debug_tx1|rom_addr\(1) & \c_debug_tx1|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y9_N26
\c_debug_tx1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux1~4_combout\ = (\c_debug_tx1|rom_addr\(5) & (((\c_debug_tx1|rom_addr\(2))))) # (!\c_debug_tx1|rom_addr\(5) & ((\c_debug_tx1|rom_addr\(2) & (!\c_debug_tx1|Mux1~2_combout\)) # (!\c_debug_tx1|rom_addr\(2) & ((\c_debug_tx1|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux1~2_combout\,
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(2),
	datad => \c_debug_tx1|Mux1~3_combout\,
	combout => \c_debug_tx1|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y9_N8
\c_debug_tx1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux1~1_combout\ = (\c_debug_tx1|rom_addr\(3) & (!\c_debug_tx1|rom_addr\(4))) # (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(1) & ((!\c_debug_tx1|rom_addr\(0)) # (!\c_debug_tx1|rom_addr\(4)))) # (!\c_debug_tx1|rom_addr\(1) & 
-- ((\c_debug_tx1|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y9_N28
\c_debug_tx1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux1~5_combout\ = (\c_debug_tx1|rom_addr\(3) & (!\c_debug_tx1|rom_addr\(4))) # (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(1) & ((!\c_debug_tx1|rom_addr\(0)))) # (!\c_debug_tx1|rom_addr\(1) & (\c_debug_tx1|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y9_N6
\c_debug_tx1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux1~6_combout\ = (\c_debug_tx1|Mux1~4_combout\ & (((\c_debug_tx1|Mux1~5_combout\)) # (!\c_debug_tx1|rom_addr\(5)))) # (!\c_debug_tx1|Mux1~4_combout\ & (\c_debug_tx1|rom_addr\(5) & (!\c_debug_tx1|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux1~4_combout\,
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|Mux1~1_combout\,
	datad => \c_debug_tx1|Mux1~5_combout\,
	combout => \c_debug_tx1|Mux1~6_combout\);

-- Location: LCCOMB_X22_Y9_N18
\c_debug_tx1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux1~0_combout\ = (!\c_debug_tx1|rom_addr\(2) & (!\c_debug_tx1|rom_addr\(3) & ((\c_debug_tx1|rom_addr\(1)) # (\c_debug_tx1|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_debug_tx1|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y9_N6
\c_interconnect|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector19~1_combout\ = (\c_debug_tx1|Mux1~6_combout\ & ((\c_interconnect|Selector25~7_combout\) # ((\c_debug_tx1|Mux1~0_combout\ & \c_interconnect|Selector25~5_combout\)))) # (!\c_debug_tx1|Mux1~6_combout\ & (\c_debug_tx1|Mux1~0_combout\ 
-- & ((\c_interconnect|Selector25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|Mux1~6_combout\,
	datab => \c_debug_tx1|Mux1~0_combout\,
	datac => \c_interconnect|Selector25~7_combout\,
	datad => \c_interconnect|Selector25~5_combout\,
	combout => \c_interconnect|Selector19~1_combout\);

-- Location: LCCOMB_X22_Y7_N12
\c_debug_tx3|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux1~5_combout\ = (\c_debug_tx3|rom_addr\(3) & (((!\c_debug_tx3|rom_addr\(4))))) # (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(1) & (!\c_debug_tx3|rom_addr\(0))) # (!\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(3),
	datab => \c_debug_tx3|rom_addr\(1),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y7_N6
\c_debug_tx3|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux1~2_combout\ = (\c_debug_tx3|rom_addr\(1)) # ((\c_debug_tx3|rom_addr\(0)) # (\c_debug_tx3|rom_addr\(3) $ (\c_debug_tx3|rom_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(3),
	datab => \c_debug_tx3|rom_addr\(1),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y7_N20
\c_debug_tx3|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux1~3_combout\ = (\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr\(4) & (\c_debug_tx3|rom_addr\(3))) # (!\c_debug_tx3|rom_addr\(4) & ((\c_debug_tx3|rom_addr\(0)))))) # (!\c_debug_tx3|rom_addr\(1) & (\c_debug_tx3|rom_addr\(0) $ 
-- (((\c_debug_tx3|rom_addr\(3)) # (\c_debug_tx3|rom_addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(3),
	datab => \c_debug_tx3|rom_addr\(1),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y7_N26
\c_debug_tx3|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux1~4_combout\ = (\c_debug_tx3|rom_addr\(5) & (((\c_debug_tx3|rom_addr\(2))))) # (!\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|rom_addr\(2) & (!\c_debug_tx3|Mux1~2_combout\)) # (!\c_debug_tx3|rom_addr\(2) & ((\c_debug_tx3|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux1~2_combout\,
	datab => \c_debug_tx3|rom_addr\(5),
	datac => \c_debug_tx3|rom_addr\(2),
	datad => \c_debug_tx3|Mux1~3_combout\,
	combout => \c_debug_tx3|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y7_N28
\c_debug_tx3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux1~1_combout\ = (\c_debug_tx3|rom_addr\(3) & (((!\c_debug_tx3|rom_addr\(4))))) # (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(1) & ((!\c_debug_tx3|rom_addr\(4)) # (!\c_debug_tx3|rom_addr\(0)))) # (!\c_debug_tx3|rom_addr\(1) & 
-- (\c_debug_tx3|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(3),
	datab => \c_debug_tx3|rom_addr\(1),
	datac => \c_debug_tx3|rom_addr\(0),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_debug_tx3|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y7_N10
\c_debug_tx3|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux1~6_combout\ = (\c_debug_tx3|rom_addr\(5) & ((\c_debug_tx3|Mux1~4_combout\ & (\c_debug_tx3|Mux1~5_combout\)) # (!\c_debug_tx3|Mux1~4_combout\ & ((!\c_debug_tx3|Mux1~1_combout\))))) # (!\c_debug_tx3|rom_addr\(5) & 
-- (((\c_debug_tx3|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux1~5_combout\,
	datab => \c_debug_tx3|rom_addr\(5),
	datac => \c_debug_tx3|Mux1~4_combout\,
	datad => \c_debug_tx3|Mux1~1_combout\,
	combout => \c_debug_tx3|Mux1~6_combout\);

-- Location: LCCOMB_X22_Y7_N14
\c_debug_tx3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx3|Mux1~0_combout\ = (!\c_debug_tx3|rom_addr\(2) & (!\c_debug_tx3|rom_addr\(3) & ((\c_debug_tx3|rom_addr\(0)) # (\c_debug_tx3|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(2),
	datab => \c_debug_tx3|rom_addr\(0),
	datac => \c_debug_tx3|rom_addr\(3),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_debug_tx3|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y7_N8
\c_interconnect|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector19~2_combout\ = (\c_debug_tx3|rom_addr\(6) & (((\c_interconnect|Selector18~4_combout\ & \c_debug_tx3|Mux1~0_combout\)))) # (!\c_debug_tx3|rom_addr\(6) & (\c_debug_tx3|Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|Mux1~6_combout\,
	datab => \c_interconnect|Selector18~4_combout\,
	datac => \c_debug_tx3|Mux1~0_combout\,
	datad => \c_debug_tx3|rom_addr\(6),
	combout => \c_interconnect|Selector19~2_combout\);

-- Location: LCCOMB_X19_Y8_N22
\c_debug_tx2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux1~0_combout\ = (!\c_debug_tx2|rom_addr\(2) & (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(0)) # (\c_debug_tx2|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(3),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(1),
	combout => \c_debug_tx2|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y9_N4
\c_debug_tx2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux1~1_combout\ = (\c_debug_tx2|rom_addr\(3) & (((!\c_debug_tx2|rom_addr\(4))))) # (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(1) & ((!\c_debug_tx2|rom_addr\(0)) # (!\c_debug_tx2|rom_addr\(4)))) # (!\c_debug_tx2|rom_addr\(1) & 
-- ((\c_debug_tx2|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y9_N8
\c_debug_tx2|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux1~5_combout\ = (\c_debug_tx2|rom_addr\(3) & (((!\c_debug_tx2|rom_addr\(4))))) # (!\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(1) & ((!\c_debug_tx2|rom_addr\(0)))) # (!\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|rom_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux1~5_combout\);

-- Location: LCCOMB_X19_Y9_N26
\c_debug_tx2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux1~2_combout\ = (\c_debug_tx2|rom_addr\(1)) # ((\c_debug_tx2|rom_addr\(0)) # (\c_debug_tx2|rom_addr\(4) $ (\c_debug_tx2|rom_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux1~2_combout\);

-- Location: LCCOMB_X19_Y9_N28
\c_debug_tx2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux1~3_combout\ = (\c_debug_tx2|rom_addr\(1) & ((\c_debug_tx2|rom_addr\(4) & ((\c_debug_tx2|rom_addr\(3)))) # (!\c_debug_tx2|rom_addr\(4) & (\c_debug_tx2|rom_addr\(0))))) # (!\c_debug_tx2|rom_addr\(1) & (\c_debug_tx2|rom_addr\(0) $ 
-- (((\c_debug_tx2|rom_addr\(4)) # (\c_debug_tx2|rom_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(1),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(3),
	combout => \c_debug_tx2|Mux1~3_combout\);

-- Location: LCCOMB_X19_Y9_N2
\c_debug_tx2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux1~4_combout\ = (\c_debug_tx2|rom_addr\(5) & (\c_debug_tx2|rom_addr\(2))) # (!\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr\(2) & (!\c_debug_tx2|Mux1~2_combout\)) # (!\c_debug_tx2|rom_addr\(2) & ((\c_debug_tx2|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|rom_addr\(2),
	datac => \c_debug_tx2|Mux1~2_combout\,
	datad => \c_debug_tx2|Mux1~3_combout\,
	combout => \c_debug_tx2|Mux1~4_combout\);

-- Location: LCCOMB_X19_Y9_N14
\c_debug_tx2|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx2|Mux1~6_combout\ = (\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|Mux1~4_combout\ & ((\c_debug_tx2|Mux1~5_combout\))) # (!\c_debug_tx2|Mux1~4_combout\ & (!\c_debug_tx2|Mux1~1_combout\)))) # (!\c_debug_tx2|rom_addr\(5) & 
-- (((\c_debug_tx2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(5),
	datab => \c_debug_tx2|Mux1~1_combout\,
	datac => \c_debug_tx2|Mux1~5_combout\,
	datad => \c_debug_tx2|Mux1~4_combout\,
	combout => \c_debug_tx2|Mux1~6_combout\);

-- Location: LCCOMB_X21_Y9_N20
\c_interconnect|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector19~0_combout\ = (\c_interconnect|Selector25~3_combout\ & ((\c_debug_tx2|Mux1~6_combout\) # ((\c_debug_tx2|Mux1~0_combout\ & \c_interconnect|Selector25~1_combout\)))) # (!\c_interconnect|Selector25~3_combout\ & 
-- (\c_debug_tx2|Mux1~0_combout\ & (\c_interconnect|Selector25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector25~3_combout\,
	datab => \c_debug_tx2|Mux1~0_combout\,
	datac => \c_interconnect|Selector25~1_combout\,
	datad => \c_debug_tx2|Mux1~6_combout\,
	combout => \c_interconnect|Selector19~0_combout\);

-- Location: LCCOMB_X21_Y9_N4
\c_interconnect|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector19~3_combout\ = (\c_interconnect|Selector19~1_combout\) # ((\c_interconnect|Selector19~0_combout\) # ((\c_interconnect|Selector19~2_combout\ & \c_debug_tx3|rom_addr[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector19~1_combout\,
	datab => \c_interconnect|Selector19~2_combout\,
	datac => \c_debug_tx3|rom_addr[6]~13_combout\,
	datad => \c_interconnect|Selector19~0_combout\,
	combout => \c_interconnect|Selector19~3_combout\);

-- Location: FF_X21_Y9_N5
\c_interconnect|PA_TX_tdata_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector19~3_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(6));

-- Location: LCCOMB_X19_Y8_N14
\c_interconnect|Selector18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~16_combout\ = (\c_debug_tx2|rom_addr\(0) & ((\c_debug_tx2|rom_addr\(5) & (!\c_debug_tx2|rom_addr\(2))) # (!\c_debug_tx2|rom_addr\(5) & ((\c_debug_tx2|rom_addr\(4)))))) # (!\c_debug_tx2|rom_addr\(0) & (\c_debug_tx2|rom_addr\(5) $ 
-- (((\c_debug_tx2|rom_addr\(2) & \c_debug_tx2|rom_addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(5),
	combout => \c_interconnect|Selector18~16_combout\);

-- Location: LCCOMB_X19_Y8_N20
\c_interconnect|Selector18~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~17_combout\ = (\c_debug_tx2|rom_addr\(4)) # ((\c_debug_tx2|rom_addr\(2) & (\c_debug_tx2|rom_addr\(0) & \c_debug_tx2|rom_addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(4),
	datac => \c_debug_tx2|rom_addr\(0),
	datad => \c_debug_tx2|rom_addr\(5),
	combout => \c_interconnect|Selector18~17_combout\);

-- Location: LCCOMB_X19_Y8_N30
\c_interconnect|Selector18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~18_combout\ = (\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(2) $ (\c_interconnect|Selector18~16_combout\)) # (!\c_interconnect|Selector18~17_combout\))) # (!\c_debug_tx2|rom_addr\(3) & 
-- (((\c_interconnect|Selector18~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(3),
	datac => \c_interconnect|Selector18~16_combout\,
	datad => \c_interconnect|Selector18~17_combout\,
	combout => \c_interconnect|Selector18~18_combout\);

-- Location: LCCOMB_X19_Y8_N8
\c_interconnect|Selector18~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~15_combout\ = (\c_interconnect|Selector24~0_combout\ & ((\c_debug_tx2|Mux1~0_combout\) # ((!\c_debug_tx2|rom_addr\(6) & \c_debug_tx2|rom_addr\(1))))) # (!\c_interconnect|Selector24~0_combout\ & (!\c_debug_tx2|rom_addr\(6) & 
-- ((\c_debug_tx2|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~0_combout\,
	datab => \c_debug_tx2|rom_addr\(6),
	datac => \c_debug_tx2|Mux1~0_combout\,
	datad => \c_debug_tx2|rom_addr\(1),
	combout => \c_interconnect|Selector18~15_combout\);

-- Location: LCCOMB_X19_Y8_N0
\c_interconnect|Selector18~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~19_combout\ = (\c_debug_tx2|rom_addr\(3) & ((\c_debug_tx2|rom_addr\(2)) # ((\c_interconnect|Selector18~16_combout\)))) # (!\c_debug_tx2|rom_addr\(3) & ((\c_interconnect|Selector18~17_combout\) # (\c_debug_tx2|rom_addr\(2) $ 
-- (\c_interconnect|Selector18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx2|rom_addr\(2),
	datab => \c_debug_tx2|rom_addr\(3),
	datac => \c_interconnect|Selector18~16_combout\,
	datad => \c_interconnect|Selector18~17_combout\,
	combout => \c_interconnect|Selector18~19_combout\);

-- Location: LCCOMB_X19_Y8_N2
\c_interconnect|Selector18~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~20_combout\ = (\c_debug_tx2|rom_addr\(6) & (((\c_interconnect|Selector18~15_combout\)))) # (!\c_debug_tx2|rom_addr\(6) & (\c_interconnect|Selector18~19_combout\ $ (((\c_interconnect|Selector18~18_combout\) # 
-- (\c_interconnect|Selector18~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector18~18_combout\,
	datab => \c_debug_tx2|rom_addr\(6),
	datac => \c_interconnect|Selector18~15_combout\,
	datad => \c_interconnect|Selector18~19_combout\,
	combout => \c_interconnect|Selector18~20_combout\);

-- Location: LCCOMB_X22_Y8_N30
\c_interconnect|Selector18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~5_combout\ = (!\c_debug_tx3|rom_addr\(6) & (\c_debug_tx3|rom_addr\(2) $ (((\c_debug_tx3|rom_addr\(3)) # (\c_debug_tx3|rom_addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(3),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(6),
	datad => \c_debug_tx3|rom_addr\(1),
	combout => \c_interconnect|Selector18~5_combout\);

-- Location: LCCOMB_X22_Y7_N2
\c_interconnect|Selector18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~6_combout\ = (\c_interconnect|Selector18~4_combout\ & ((\c_interconnect|Selector18~5_combout\) # ((\c_debug_tx3|Mux1~0_combout\ & \c_debug_tx3|rom_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector18~5_combout\,
	datab => \c_interconnect|Selector18~4_combout\,
	datac => \c_debug_tx3|Mux1~0_combout\,
	datad => \c_debug_tx3|rom_addr\(6),
	combout => \c_interconnect|Selector18~6_combout\);

-- Location: LCCOMB_X22_Y8_N28
\c_interconnect|Selector18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~7_combout\ = (\c_debug_tx3|rom_addr\(1) & ((\c_debug_tx3|rom_addr\(0) & ((\c_debug_tx3|rom_addr\(5)))) # (!\c_debug_tx3|rom_addr\(0) & (!\c_debug_tx3|rom_addr\(2))))) # (!\c_debug_tx3|rom_addr\(1) & (\c_debug_tx3|rom_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(1),
	datab => \c_debug_tx3|rom_addr\(2),
	datac => \c_debug_tx3|rom_addr\(5),
	datad => \c_debug_tx3|rom_addr\(0),
	combout => \c_interconnect|Selector18~7_combout\);

-- Location: LCCOMB_X22_Y8_N26
\c_interconnect|Selector18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~8_combout\ = (\c_debug_tx3|rom_addr\(3) & (\c_interconnect|Selector18~7_combout\ & (!\c_debug_tx3|rom_addr\(5) & \c_debug_tx3|rom_addr\(4)))) # (!\c_debug_tx3|rom_addr\(3) & (!\c_interconnect|Selector18~7_combout\ & 
-- (\c_debug_tx3|rom_addr\(5) & !\c_debug_tx3|rom_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx3|rom_addr\(3),
	datab => \c_interconnect|Selector18~7_combout\,
	datac => \c_debug_tx3|rom_addr\(5),
	datad => \c_debug_tx3|rom_addr\(4),
	combout => \c_interconnect|Selector18~8_combout\);

-- Location: LCCOMB_X18_Y8_N18
\c_interconnect|Selector18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~9_combout\ = (\c_debug_tx3|rom_addr[6]~13_combout\ & ((\c_interconnect|Selector18~6_combout\) # ((\c_interconnect|Selector18~8_combout\ & !\c_debug_tx3|rom_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector18~6_combout\,
	datab => \c_interconnect|Selector18~8_combout\,
	datac => \c_debug_tx3|rom_addr\(6),
	datad => \c_debug_tx3|rom_addr[6]~13_combout\,
	combout => \c_interconnect|Selector18~9_combout\);

-- Location: LCCOMB_X24_Y9_N0
\c_debug_tx1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_debug_tx1|Mux0~0_combout\ = (\c_debug_tx1|rom_addr\(3)) # ((\c_debug_tx1|rom_addr\(1) & ((\c_debug_tx1|rom_addr\(0)) # (!\c_debug_tx1|rom_addr\(2)))) # (!\c_debug_tx1|rom_addr\(1) & ((\c_debug_tx1|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(3),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(0),
	datad => \c_debug_tx1|rom_addr\(2),
	combout => \c_debug_tx1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y9_N10
\c_interconnect|Selector18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~10_combout\ = (!\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|rom_addr\(5) & (!\c_debug_tx1|rom_addr\(6) & !\c_debug_tx1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(4),
	datab => \c_debug_tx1|rom_addr\(5),
	datac => \c_debug_tx1|rom_addr\(6),
	datad => \c_debug_tx1|Mux0~0_combout\,
	combout => \c_interconnect|Selector18~10_combout\);

-- Location: LCCOMB_X22_Y9_N20
\c_interconnect|Selector18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~12_combout\ = (\c_debug_tx1|rom_addr\(3) & ((!\c_debug_tx1|rom_addr\(0)) # (!\c_debug_tx1|rom_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(3),
	datad => \c_debug_tx1|rom_addr\(0),
	combout => \c_interconnect|Selector18~12_combout\);

-- Location: LCCOMB_X22_Y9_N14
\c_interconnect|Selector18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~13_combout\ = (\c_debug_tx1|rom_addr\(4) & (\c_interconnect|Selector18~12_combout\ & (\c_debug_tx1|rom_addr\(2) $ (\c_debug_tx1|rom_addr\(1))))) # (!\c_debug_tx1|rom_addr\(4) & (\c_debug_tx1|rom_addr\(2) $ 
-- (((\c_debug_tx1|rom_addr\(1)) # (\c_interconnect|Selector18~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_debug_tx1|rom_addr\(2),
	datab => \c_debug_tx1|rom_addr\(1),
	datac => \c_debug_tx1|rom_addr\(4),
	datad => \c_interconnect|Selector18~12_combout\,
	combout => \c_interconnect|Selector18~13_combout\);

-- Location: LCCOMB_X18_Y9_N6
\c_interconnect|Selector18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~11_combout\ = (\c_debug_tx1|rom_addr\(6)) # (\c_debug_tx1|rom_addr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_debug_tx1|rom_addr\(6),
	datad => \c_debug_tx1|rom_addr\(5),
	combout => \c_interconnect|Selector18~11_combout\);

-- Location: LCCOMB_X22_Y9_N24
\c_interconnect|Selector18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~14_combout\ = (\c_interconnect|Selector24~1_combout\ & ((\c_debug_tx1|Mux1~0_combout\) # ((\c_interconnect|Selector18~13_combout\ & !\c_interconnect|Selector18~11_combout\)))) # (!\c_interconnect|Selector24~1_combout\ & 
-- (\c_interconnect|Selector18~13_combout\ & (!\c_interconnect|Selector18~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector24~1_combout\,
	datab => \c_interconnect|Selector18~13_combout\,
	datac => \c_interconnect|Selector18~11_combout\,
	datad => \c_debug_tx1|Mux1~0_combout\,
	combout => \c_interconnect|Selector18~14_combout\);

-- Location: LCCOMB_X22_Y9_N30
\c_interconnect|Selector18~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~22_combout\ = (\c_debug_tx1|tx_active~q\ & (\c_interconnect|active_port.PORT_B~q\ & ((\c_interconnect|Selector18~10_combout\) # (\c_interconnect|Selector18~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector18~10_combout\,
	datab => \c_debug_tx1|tx_active~q\,
	datac => \c_interconnect|active_port.PORT_B~q\,
	datad => \c_interconnect|Selector18~14_combout\,
	combout => \c_interconnect|Selector18~22_combout\);

-- Location: LCCOMB_X18_Y8_N12
\c_interconnect|Selector18~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_interconnect|Selector18~21_combout\ = (\c_interconnect|Selector18~9_combout\) # ((\c_interconnect|Selector18~22_combout\) # ((\c_interconnect|Selector18~20_combout\ & \c_debug_tx2|rom_addr[5]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|Selector18~20_combout\,
	datab => \c_interconnect|Selector18~9_combout\,
	datac => \c_debug_tx2|rom_addr[5]~13_combout\,
	datad => \c_interconnect|Selector18~22_combout\,
	combout => \c_interconnect|Selector18~21_combout\);

-- Location: FF_X18_Y8_N13
\c_interconnect|PA_TX_tdata_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_interconnect|Selector18~21_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_interconnect|PA_TX_tdata_reg\(7));

-- Location: M9K_X15_Y8_N0
\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/FPGACode.ram0_ram_2048x9_cascade_7cfbc130.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ringbuffer:c_eth0_rb|ram_2048x9_cascade:ram_inst|altsyncram:ram0_rtl_0|altsyncram_qkm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 9,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \c_eth0_rb|ram_inst|ram0~20_combout\,
	portbre => VCC,
	clk0 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	portadatain => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y7_N26
\c_eth0_rb|rd_ptr[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|rd_ptr[10]~32_combout\ = \c_eth0_rb|rd_ptr\(10) $ (!\c_eth0_rb|rd_ptr[9]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|rd_ptr\(10),
	cin => \c_eth0_rb|rd_ptr[9]~31\,
	combout => \c_eth0_rb|rd_ptr[10]~32_combout\);

-- Location: FF_X16_Y7_N27
\c_eth0_rb|rd_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|rd_ptr[10]~32_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|occ_words[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|rd_ptr\(10));

-- Location: LCCOMB_X14_Y7_N28
\c_eth0_rb|ram_inst|sel_b_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|sel_b_r~feeder_combout\ = \c_eth0_rb|rd_ptr\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0_rb|rd_ptr\(10),
	combout => \c_eth0_rb|ram_inst|sel_b_r~feeder_combout\);

-- Location: FF_X14_Y7_N29
\c_eth0_rb|ram_inst|sel_b_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|ram_inst|sel_b_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|ram_inst|sel_b_r~q\);

-- Location: LCCOMB_X18_Y7_N24
\c_eth0_rb|ram_inst|ram1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|ram1~20_combout\ = (\c_interconnect|PA_TX_tvalid_reg~q\ & (!\c_eth0_rb|occ_words\(11) & (\c_eth0_rb|wr_ptr\(10) & !\c_eth0_rb|dropping~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_interconnect|PA_TX_tvalid_reg~q\,
	datab => \c_eth0_rb|occ_words\(11),
	datac => \c_eth0_rb|wr_ptr\(10),
	datad => \c_eth0_rb|dropping~q\,
	combout => \c_eth0_rb|ram_inst|ram1~20_combout\);

-- Location: M9K_X15_Y7_N0
\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/FPGACode.ram0_ram_2048x9_cascade_7cfbc130.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ringbuffer:c_eth0_rb|ram_2048x9_cascade:ram_inst|altsyncram:ram1_rtl_0|altsyncram_qkm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 9,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \c_eth0_rb|ram_inst|ram1~20_combout\,
	portbre => VCC,
	clk0 => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	portadatain => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y7_N10
\c_eth0_rb|ram_inst|b_dout[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[8]~0_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a8\)) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datac => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a8\,
	datad => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a8\,
	combout => \c_eth0_rb|ram_inst|b_dout[8]~0_combout\);

-- Location: LCCOMB_X17_Y8_N12
\c_eth0|c_tx|c_fsm_axi|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~4_combout\ = (\c_eth0_rb|m_axis_tvalid_i~q\ & (!\c_eth0|c_tx|c_fsm_axi|state.READY~q\ & ((!\c_eth0_rb|ram_inst|b_dout[8]~0_combout\) # (!\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\)))) # (!\c_eth0_rb|m_axis_tvalid_i~q\ & 
-- (((!\c_eth0_rb|ram_inst|b_dout[8]~0_combout\)) # (!\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|m_axis_tvalid_i~q\,
	datab => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datac => \c_eth0_rb|ram_inst|b_dout[8]~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|state.READY~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~4_combout\);

-- Location: LCCOMB_X26_Y8_N10
\c_eth0|c_tx|c_fsm_axi|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & !\c_eth0_rb|m_axis_tvalid_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datac => \c_eth0_rb|m_axis_tvalid_i~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\);

-- Location: LCCOMB_X17_Y8_N2
\c_eth0|c_tx|c_fsm_axi|packet_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|packet_valid~0_combout\ = (\c_eth0_rb|ram_inst|b_dout[8]~0_combout\ & ((\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\) # ((!\c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ & \c_eth0|c_tx|c_fsm_axi|packet_valid~q\)))) # 
-- (!\c_eth0_rb|ram_inst|b_dout[8]~0_combout\ & (!\c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ & (\c_eth0|c_tx|c_fsm_axi|packet_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|b_dout[8]~0_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|packet_valid~0_combout\);

-- Location: FF_X17_Y8_N3
\c_eth0|c_tx|c_fsm_axi|packet_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|packet_valid~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\);

-- Location: LCCOMB_X23_Y13_N2
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~13_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0) $ (VCC)
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~14\ = CARRY(\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~13_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~14\);

-- Location: LCCOMB_X26_Y11_N8
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

-- Location: LCCOMB_X25_Y11_N16
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

-- Location: LCCOMB_X24_Y12_N30
\c_eth0|c_tx|c_fsm_pt|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & ((!\c_eth0|c_tx|c_piso_sr|state.TX~q\))) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (\c_eth0|c_tx|c_fsm_pt|mem_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\);

-- Location: LCCOMB_X24_Y12_N22
\c_eth0|c_tx|c_fsm_pt|Selector7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\) # (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\);

-- Location: LCCOMB_X25_Y12_N26
\c_eth0|c_tx|c_fsm_pt|Selector7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\ = (\c_eth0|c_tx|c_fsm_axi|packet_valid~q\ & !\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\);

-- Location: LCCOMB_X24_Y12_N28
\c_eth0|c_tx|c_fsm_pt|Selector7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\) # ((\c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\) # ((\c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ & \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~9_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\);

-- Location: LCCOMB_X23_Y13_N24
\c_eth0|c_tx|c_fsm_pt|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|process_0~5_combout\ = (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1),
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0),
	combout => \c_eth0|c_tx|c_fsm_pt|process_0~5_combout\);

-- Location: LCCOMB_X23_Y13_N14
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~27_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~26\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~26\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~28\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~26\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~27_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~28\);

-- Location: LCCOMB_X23_Y13_N16
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~29_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~28\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~28\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~30\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~28\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~28\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~29_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~30\);

-- Location: LCCOMB_X24_Y12_N26
\c_eth0|c_tx|c_fsm_pt|Selector7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IFG~q\ & (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\ & !\c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\);

-- Location: LCCOMB_X24_Y12_N18
\c_eth0|c_tx|c_fsm_pt|Selector7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ & ((\c_eth0|c_tx|c_fsm_pt|process_0~8_combout\) # ((\c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\ & !\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~12_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|process_0~8_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\);

-- Location: FF_X24_Y12_N19
\c_eth0|c_tx|c_fsm_pt|state.IFG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector7~13_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\);

-- Location: LCCOMB_X19_Y8_N16
\c_eth0|c_tx|c_fsm_axi|WideNor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\ = (\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\) # (\c_eth0|c_tx|c_fsm_axi|state.LAST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\);

-- Location: LCCOMB_X16_Y8_N2
\c_eth0_rb|ram_inst|b_dout[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[0]~1_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & 
-- ((\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datad => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \c_eth0_rb|ram_inst|b_dout[0]~1_combout\);

-- Location: LCCOMB_X26_Y9_N10
\c_eth0|c_tx|c_fsm_axi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\ = \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0) $ (VCC)
-- \c_eth0|c_tx|c_fsm_axi|Add0~17\ = CARRY(\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~17\);

-- Location: LCCOMB_X26_Y9_N12
\c_eth0|c_tx|c_fsm_axi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & (!\c_eth0|c_tx|c_fsm_axi|Add0~17\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1) & ((\c_eth0|c_tx|c_fsm_axi|Add0~17\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~19\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~17\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~17\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~19\);

-- Location: LCCOMB_X26_Y8_N14
\c_eth0|c_tx|c_fsm_axi|cnt_addr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ & ((\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & ((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0)))) # (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & 
-- (\c_eth0|c_tx|c_fsm_axi|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Add0~18_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\);

-- Location: FF_X26_Y8_N15
\c_eth0|c_tx|c_fsm_axi|cnt_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|cnt_addr~1_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1));

-- Location: LCCOMB_X26_Y9_N14
\c_eth0|c_tx|c_fsm_axi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & (\c_eth0|c_tx|c_fsm_axi|Add0~19\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & (!\c_eth0|c_tx|c_fsm_axi|Add0~19\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~21\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & !\c_eth0|c_tx|c_fsm_axi|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~19\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~21\);

-- Location: LCCOMB_X26_Y8_N4
\c_eth0|c_tx|c_fsm_axi|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~38_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~20_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~20_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~38_combout\);

-- Location: FF_X26_Y8_N5
\c_eth0|c_tx|c_fsm_axi|cnt_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~38_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2));

-- Location: LCCOMB_X26_Y9_N16
\c_eth0|c_tx|c_fsm_axi|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~22_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & (!\c_eth0|c_tx|c_fsm_axi|Add0~21\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & ((\c_eth0|c_tx|c_fsm_axi|Add0~21\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~23\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~21\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~21\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~22_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~23\);

-- Location: LCCOMB_X26_Y8_N18
\c_eth0|c_tx|c_fsm_axi|cnt_addr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ & ((\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & ((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0)))) # (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & 
-- (\c_eth0|c_tx|c_fsm_axi|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Add0~22_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\);

-- Location: FF_X26_Y8_N19
\c_eth0|c_tx|c_fsm_axi|cnt_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|cnt_addr~2_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3));

-- Location: LCCOMB_X26_Y9_N18
\c_eth0|c_tx|c_fsm_axi|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~24_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & (\c_eth0|c_tx|c_fsm_axi|Add0~23\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & (!\c_eth0|c_tx|c_fsm_axi|Add0~23\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~25\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4) & !\c_eth0|c_tx|c_fsm_axi|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~23\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~24_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~25\);

-- Location: LCCOMB_X26_Y8_N0
\c_eth0|c_tx|c_fsm_axi|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~39_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~24_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~24_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~39_combout\);

-- Location: FF_X26_Y8_N1
\c_eth0|c_tx|c_fsm_axi|cnt_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~39_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4));

-- Location: LCCOMB_X26_Y9_N20
\c_eth0|c_tx|c_fsm_axi|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~26_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & (!\c_eth0|c_tx|c_fsm_axi|Add0~25\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & ((\c_eth0|c_tx|c_fsm_axi|Add0~25\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~27\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~25\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~25\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~26_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~27\);

-- Location: LCCOMB_X26_Y8_N22
\c_eth0|c_tx|c_fsm_axi|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~40_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~26_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~26_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~40_combout\);

-- Location: FF_X26_Y8_N23
\c_eth0|c_tx|c_fsm_axi|cnt_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~40_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5));

-- Location: LCCOMB_X26_Y9_N22
\c_eth0|c_tx|c_fsm_axi|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~28_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & (\c_eth0|c_tx|c_fsm_axi|Add0~27\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & (!\c_eth0|c_tx|c_fsm_axi|Add0~27\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~29\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & !\c_eth0|c_tx|c_fsm_axi|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~27\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~28_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~29\);

-- Location: LCCOMB_X26_Y8_N28
\c_eth0|c_tx|c_fsm_axi|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~41_combout\ = (\c_eth0|c_tx|c_fsm_axi|Add0~28_combout\ & (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0|c_tx|c_fsm_axi|Add0~28_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0_rb|m_axis_tvalid_i~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~41_combout\);

-- Location: FF_X26_Y8_N29
\c_eth0|c_tx|c_fsm_axi|cnt_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~41_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(6));

-- Location: LCCOMB_X26_Y9_N24
\c_eth0|c_tx|c_fsm_axi|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~30_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & (!\c_eth0|c_tx|c_fsm_axi|Add0~29\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7) & ((\c_eth0|c_tx|c_fsm_axi|Add0~29\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~31\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~29\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~29\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~30_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~31\);

-- Location: LCCOMB_X26_Y8_N2
\c_eth0|c_tx|c_fsm_axi|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~42_combout\ = (\c_eth0|c_tx|c_fsm_axi|Add0~30_combout\ & (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0|c_tx|c_fsm_axi|Add0~30_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0_rb|m_axis_tvalid_i~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~42_combout\);

-- Location: FF_X26_Y8_N3
\c_eth0|c_tx|c_fsm_axi|cnt_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~42_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7));

-- Location: LCCOMB_X26_Y9_N26
\c_eth0|c_tx|c_fsm_axi|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~32_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & (\c_eth0|c_tx|c_fsm_axi|Add0~31\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & (!\c_eth0|c_tx|c_fsm_axi|Add0~31\ & VCC))
-- \c_eth0|c_tx|c_fsm_axi|Add0~33\ = CARRY((\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & !\c_eth0|c_tx|c_fsm_axi|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~31\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~32_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~33\);

-- Location: LCCOMB_X26_Y8_N20
\c_eth0|c_tx|c_fsm_axi|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~43_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~32_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~32_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~43_combout\);

-- Location: FF_X26_Y8_N21
\c_eth0|c_tx|c_fsm_axi|cnt_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~43_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8));

-- Location: LCCOMB_X26_Y9_N28
\c_eth0|c_tx|c_fsm_axi|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~34_combout\ = (\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & (!\c_eth0|c_tx|c_fsm_axi|Add0~33\)) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & ((\c_eth0|c_tx|c_fsm_axi|Add0~33\) # (GND)))
-- \c_eth0|c_tx|c_fsm_axi|Add0~35\ = CARRY((!\c_eth0|c_tx|c_fsm_axi|Add0~33\) # (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~33\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~34_combout\,
	cout => \c_eth0|c_tx|c_fsm_axi|Add0~35\);

-- Location: LCCOMB_X26_Y8_N6
\c_eth0|c_tx|c_fsm_axi|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~44_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & (\c_eth0|c_tx|c_fsm_axi|Add0~34_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|Add0~34_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~44_combout\);

-- Location: FF_X26_Y8_N7
\c_eth0|c_tx|c_fsm_axi|cnt_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~44_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9));

-- Location: LCCOMB_X26_Y9_N30
\c_eth0|c_tx|c_fsm_axi|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~36_combout\ = \c_eth0|c_tx|c_fsm_axi|Add0~35\ $ (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(10),
	cin => \c_eth0|c_tx|c_fsm_axi|Add0~35\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~36_combout\);

-- Location: LCCOMB_X26_Y8_N16
\c_eth0|c_tx|c_fsm_axi|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Add0~45_combout\ = (\c_eth0|c_tx|c_fsm_axi|Add0~36_combout\ & (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & ((\c_eth0_rb|m_axis_tvalid_i~q\) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Add0~36_combout\,
	datab => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Add0~45_combout\);

-- Location: FF_X26_Y8_N17
\c_eth0|c_tx|c_fsm_axi|cnt_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Add0~45_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(10));

-- Location: LCCOMB_X26_Y8_N30
\c_eth0|c_tx|c_fsm_axi|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Equal0~0_combout\ = (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(9) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(10) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(8) & !\c_eth0|c_tx|c_fsm_axi|cnt_addr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(9),
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(10),
	datac => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(8),
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(7),
	combout => \c_eth0|c_tx|c_fsm_axi|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y8_N8
\c_eth0|c_tx|c_fsm_axi|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Equal0~1_combout\ = (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(3) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(6) & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(5) & !\c_eth0|c_tx|c_fsm_axi|cnt_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(3),
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(6),
	datac => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(5),
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(4),
	combout => \c_eth0|c_tx|c_fsm_axi|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y8_N26
\c_eth0|c_tx|c_fsm_axi|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ = (\c_eth0|c_tx|c_fsm_axi|Equal0~0_combout\ & (!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(2) & (\c_eth0|c_tx|c_fsm_axi|Equal0~1_combout\ & !\c_eth0|c_tx|c_fsm_axi|cnt_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(2),
	datac => \c_eth0|c_tx|c_fsm_axi|Equal0~1_combout\,
	datad => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(1),
	combout => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y8_N12
\c_eth0|c_tx|c_fsm_axi|cnt_addr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ & ((\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & ((!\c_eth0|c_tx|c_fsm_axi|cnt_addr\(0)))) # (!\c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\ & 
-- (\c_eth0|c_tx|c_fsm_axi|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Equal0~2_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Add0~16_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0),
	datad => \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\);

-- Location: FF_X26_Y8_N13
\c_eth0|c_tx|c_fsm_axi|cnt_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|cnt_addr~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_fsm_axi|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|cnt_addr\(0));

-- Location: LCCOMB_X24_Y12_N0
\c_eth0|c_tx|c_fsm_pt|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\);

-- Location: LCCOMB_X25_Y12_N6
\c_eth0|c_tx|c_fsm_pt|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\) # ((\c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector8~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0),
	combout => \c_eth0|c_tx|c_fsm_pt|Selector8~1_combout\);

-- Location: LCCOMB_X25_Y12_N4
\c_eth0|c_tx|c_fsm_pt|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\) # (((\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\);

-- Location: LCCOMB_X26_Y11_N2
\c_eth0|c_tx|c_fsm_pt|addr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[1]~0_combout\);

-- Location: LCCOMB_X26_Y11_N4
\c_eth0|c_tx|c_fsm_pt|addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[2]~1_combout\);

-- Location: LCCOMB_X25_Y11_N30
\c_eth0|c_tx|c_fsm_pt|addr[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & !\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	datad => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[3]~2_combout\);

-- Location: LCCOMB_X25_Y11_N0
\c_eth0|c_tx|c_fsm_pt|addr[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\ = (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[4]~3_combout\);

-- Location: LCCOMB_X26_Y11_N16
\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~21_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~20\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~20\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~22\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~20\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~21_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~22\);

-- Location: LCCOMB_X26_Y11_N18
\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~23_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~22\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~22\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~24\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~22\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~22\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~23_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~24\);

-- Location: FF_X26_Y11_N19
\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5));

-- Location: LCCOMB_X26_Y11_N30
\c_eth0|c_tx|c_fsm_pt|addr[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\ = (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[5]~4_combout\);

-- Location: LCCOMB_X26_Y11_N20
\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~25_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~24\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~24\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~26\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[5]~24\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~25_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~26\);

-- Location: FF_X26_Y11_N21
\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6));

-- Location: LCCOMB_X25_Y11_N18
\c_eth0|c_tx|c_fsm_pt|addr[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) & !\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	datad => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[6]~5_combout\);

-- Location: LCCOMB_X26_Y11_N22
\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~27_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~26\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~26\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~28\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~26\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[6]~26\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~27_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~28\);

-- Location: FF_X26_Y11_N23
\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7));

-- Location: LCCOMB_X26_Y11_N6
\c_eth0|c_tx|c_fsm_pt|addr[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\ = (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[7]~6_combout\);

-- Location: LCCOMB_X26_Y11_N24
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~29_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~28\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~28\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[7]~28\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~29_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\);

-- Location: FF_X26_Y11_N25
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8));

-- Location: LCCOMB_X25_Y11_N4
\c_eth0|c_tx|c_fsm_pt|addr[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\ = (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[8]~7_combout\);

-- Location: LCCOMB_X26_Y11_N26
\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~31_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~30\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~31_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32\);

-- Location: FF_X26_Y11_N27
\c_eth0|c_tx|c_fsm_pt|cnt_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9));

-- Location: LCCOMB_X25_Y11_N26
\c_eth0|c_tx|c_fsm_pt|addr[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & !\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	datad => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|addr[9]~8_combout\);

-- Location: LCCOMB_X26_Y11_N28
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[9]~32\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\);

-- Location: FF_X26_Y11_N29
\c_eth0|c_tx|c_fsm_pt|cnt_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[10]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10));

-- Location: LCCOMB_X25_Y11_N20
\c_eth0|c_tx|c_fsm_pt|addr[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\ = (!\c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|WideOr0~0_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	combout => \c_eth0|c_tx|c_fsm_pt|addr[10]~9_combout\);

-- Location: LCCOMB_X16_Y8_N12
\c_eth0_rb|ram_inst|b_dout[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[1]~2_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a1\)) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a1\,
	datac => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a1\,
	datad => \c_eth0_rb|ram_inst|sel_b_r~q\,
	combout => \c_eth0_rb|ram_inst|b_dout[1]~2_combout\);

-- Location: LCCOMB_X16_Y8_N10
\c_eth0_rb|ram_inst|b_dout[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[2]~3_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a2\))) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datac => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a2\,
	datad => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a2\,
	combout => \c_eth0_rb|ram_inst|b_dout[2]~3_combout\);

-- Location: LCCOMB_X16_Y8_N8
\c_eth0_rb|ram_inst|b_dout[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[3]~4_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a3\))) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a3\,
	datab => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datad => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a3\,
	combout => \c_eth0_rb|ram_inst|b_dout[3]~4_combout\);

-- Location: M9K_X27_Y8_N0
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555500",
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

-- Location: LCCOMB_X25_Y12_N16
\c_eth0|c_tx|c_fsm_pt|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\);

-- Location: FF_X24_Y11_N25
\c_eth0|c_tx|c_fsm_pt|r_packet_length[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(9));

-- Location: FF_X24_Y11_N23
\c_eth0|c_tx|c_fsm_pt|r_packet_length[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(8));

-- Location: LCCOMB_X16_Y9_N24
\c_eth0_rb|ram_inst|b_dout[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[4]~5_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a4\))) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datac => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a4\,
	datad => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a4\,
	combout => \c_eth0_rb|ram_inst|b_dout[4]~5_combout\);

-- Location: LCCOMB_X16_Y9_N10
\c_eth0_rb|ram_inst|b_dout[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[5]~6_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a5\)) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datac => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a5\,
	datad => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a5\,
	combout => \c_eth0_rb|ram_inst|b_dout[5]~6_combout\);

-- Location: LCCOMB_X16_Y9_N4
\c_eth0_rb|ram_inst|b_dout[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[6]~7_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a6\))) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datac => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a6\,
	datad => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a6\,
	combout => \c_eth0_rb|ram_inst|b_dout[6]~7_combout\);

-- Location: LCCOMB_X16_Y9_N26
\c_eth0_rb|ram_inst|b_dout[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|ram_inst|b_dout[7]~8_combout\ = (\c_eth0_rb|ram_inst|sel_b_r~q\ & (\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a7\)) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datac => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a7\,
	datad => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a7\,
	combout => \c_eth0_rb|ram_inst|b_dout[7]~8_combout\);

-- Location: M9K_X27_Y9_N0
\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
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
	port_a_first_bit_number => 4,
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
	port_b_first_bit_number => 4,
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
	portadatain => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y11_N2
\c_eth0|c_tx|c_fsm_pt|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\);

-- Location: FF_X24_Y11_N21
\c_eth0|c_tx|c_fsm_pt|r_packet_length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(7));

-- Location: FF_X24_Y11_N19
\c_eth0|c_tx|c_fsm_pt|r_packet_length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(6));

-- Location: FF_X24_Y11_N17
\c_eth0|c_tx|c_fsm_pt|r_packet_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(5));

-- Location: FF_X24_Y11_N15
\c_eth0|c_tx|c_fsm_pt|r_packet_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(4));

-- Location: FF_X24_Y11_N13
\c_eth0|c_tx|c_fsm_pt|r_packet_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(3));

-- Location: FF_X24_Y11_N11
\c_eth0|c_tx|c_fsm_pt|r_packet_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(2));

-- Location: FF_X24_Y11_N3
\c_eth0|c_tx|c_fsm_pt|r_packet_length[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(1));

-- Location: LCCOMB_X24_Y11_N10
\c_eth0|c_tx|c_fsm_pt|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2) & (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(1) $ (VCC))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2) & (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(1) & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~1\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(2) & \c_eth0|c_tx|c_fsm_pt|r_packet_length\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(2),
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(1),
	datad => VCC,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~1\);

-- Location: LCCOMB_X24_Y11_N12
\c_eth0|c_tx|c_fsm_pt|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & (!\c_eth0|c_tx|c_fsm_pt|Add2~1\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3) & ((\c_eth0|c_tx|c_fsm_pt|Add2~1\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~3\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~1\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~1\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~3\);

-- Location: LCCOMB_X24_Y11_N14
\c_eth0|c_tx|c_fsm_pt|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(4) & (\c_eth0|c_tx|c_fsm_pt|Add2~3\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(4) & (!\c_eth0|c_tx|c_fsm_pt|Add2~3\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~5\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(4) & !\c_eth0|c_tx|c_fsm_pt|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~3\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~5\);

-- Location: LCCOMB_X24_Y11_N16
\c_eth0|c_tx|c_fsm_pt|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(5) & (!\c_eth0|c_tx|c_fsm_pt|Add2~5\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(5) & ((\c_eth0|c_tx|c_fsm_pt|Add2~5\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~7\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~5\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~5\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~7\);

-- Location: LCCOMB_X24_Y11_N18
\c_eth0|c_tx|c_fsm_pt|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(6) & (\c_eth0|c_tx|c_fsm_pt|Add2~7\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(6) & (!\c_eth0|c_tx|c_fsm_pt|Add2~7\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~9\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(6) & !\c_eth0|c_tx|c_fsm_pt|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~7\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~9\);

-- Location: LCCOMB_X24_Y11_N20
\c_eth0|c_tx|c_fsm_pt|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(7) & (!\c_eth0|c_tx|c_fsm_pt|Add2~9\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(7) & ((\c_eth0|c_tx|c_fsm_pt|Add2~9\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~11\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~9\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~9\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~11\);

-- Location: LCCOMB_X24_Y11_N22
\c_eth0|c_tx|c_fsm_pt|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(8) & (\c_eth0|c_tx|c_fsm_pt|Add2~11\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(8) & (!\c_eth0|c_tx|c_fsm_pt|Add2~11\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|Add2~13\ = CARRY((\c_eth0|c_tx|c_fsm_pt|r_packet_length\(8) & !\c_eth0|c_tx|c_fsm_pt|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~11\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~13\);

-- Location: LCCOMB_X24_Y11_N24
\c_eth0|c_tx|c_fsm_pt|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & (!\c_eth0|c_tx|c_fsm_pt|Add2~13\)) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9) & ((\c_eth0|c_tx|c_fsm_pt|Add2~13\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|Add2~15\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|Add2~13\) # (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~13\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|Add2~15\);

-- Location: LCCOMB_X25_Y11_N6
\c_eth0|c_tx|c_fsm_pt|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~12_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|Add2~14_combout\ & 
-- (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(9) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(8) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Add2~14_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(8),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(9),
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~12_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\);

-- Location: FF_X24_Y11_N27
\c_eth0|c_tx|c_fsm_pt|r_packet_length[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(10));

-- Location: LCCOMB_X24_Y11_N26
\c_eth0|c_tx|c_fsm_pt|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ = \c_eth0|c_tx|c_fsm_pt|r_packet_length\(10) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|Add2~15\,
	combout => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\);

-- Location: LCCOMB_X25_Y11_N2
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~38_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (\c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~38_combout\);

-- Location: LCCOMB_X25_Y11_N12
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IFG~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\) # ((\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ & \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~38_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\);

-- Location: FF_X23_Y13_N17
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~29_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7));

-- Location: LCCOMB_X23_Y13_N18
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~31_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~30\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~30\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~32\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[7]~30\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~31_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~32\);

-- Location: FF_X23_Y13_N19
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~31_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8));

-- Location: LCCOMB_X23_Y13_N0
\c_eth0|c_tx|c_fsm_pt|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|process_0~6_combout\ = (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(8),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(7),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5),
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4),
	combout => \c_eth0|c_tx|c_fsm_pt|process_0~6_combout\);

-- Location: LCCOMB_X23_Y13_N20
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~33_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~32\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~32\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~34\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~32\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[8]~32\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~33_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~34\);

-- Location: FF_X23_Y13_N21
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~33_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9));

-- Location: LCCOMB_X23_Y13_N26
\c_eth0|c_tx|c_fsm_pt|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|process_0~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|process_0~5_combout\ & (\c_eth0|c_tx|c_fsm_pt|process_0~6_combout\ & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|process_0~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|process_0~6_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(9),
	combout => \c_eth0|c_tx|c_fsm_pt|process_0~7_combout\);

-- Location: LCCOMB_X23_Y13_N22
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~36_combout\ = \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10) $ (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[9]~34\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~36_combout\);

-- Location: FF_X23_Y13_N23
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[10]~36_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10));

-- Location: LCCOMB_X23_Y13_N28
\c_eth0|c_tx|c_fsm_pt|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|process_0~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|process_0~7_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10) & \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|process_0~7_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|process_0~8_combout\);

-- Location: LCCOMB_X25_Y11_N10
\c_eth0|c_tx|c_fsm_pt|Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\);

-- Location: LCCOMB_X24_Y12_N16
\c_eth0|c_tx|c_fsm_pt|Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|process_0~8_combout\) # ((\c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & !\c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector7~6_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|process_0~8_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~7_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\);

-- Location: LCCOMB_X24_Y12_N10
\c_eth0|c_tx|c_fsm_pt|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & (!\c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\ & !\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\);

-- Location: LCCOMB_X24_Y12_N14
\c_eth0|c_tx|c_fsm_pt|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector1~2_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\ & 
-- ((\c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector1~1_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~10_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector1~2_combout\);

-- Location: FF_X24_Y12_N15
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector1~2_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\);

-- Location: LCCOMB_X24_Y12_N12
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & (\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\)) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_UPPER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\);

-- Location: FF_X24_Y12_N13
\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\);

-- Location: LCCOMB_X25_Y11_N28
\c_eth0|c_tx|c_fsm_pt|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ = \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\ $ (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y11_N14
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~13_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ & (!\c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~13_combout\);

-- Location: LCCOMB_X26_Y11_N0
\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~13_combout\) # ((\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~13_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\);

-- Location: FF_X26_Y11_N9
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
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0));

-- Location: LCCOMB_X26_Y11_N10
\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~15_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~16\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[0]~12\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~15_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~16\);

-- Location: FF_X26_Y11_N11
\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~15_combout\,
	asdata => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1));

-- Location: LCCOMB_X26_Y11_N12
\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~17_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~16\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~16\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~18\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2) & !\c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[1]~16\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~17_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~18\);

-- Location: FF_X26_Y11_N13
\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2));

-- Location: LCCOMB_X26_Y11_N14
\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~19_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & (!\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~18\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & ((\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~18\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~20\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~18\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_addr[2]~18\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~19_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~20\);

-- Location: FF_X26_Y11_N15
\c_eth0|c_tx|c_fsm_pt|cnt_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[3]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3));

-- Location: FF_X26_Y11_N17
\c_eth0|c_tx|c_fsm_pt|cnt_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_addr[4]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_addr[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4));

-- Location: LCCOMB_X24_Y11_N30
\c_eth0|c_tx|c_fsm_pt|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & (\c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~6_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(4) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(5) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(4),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(5),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\);

-- Location: FF_X24_Y11_N29
\c_eth0|c_tx|c_fsm_pt|r_packet_length[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	asdata => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0),
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => VCC,
	ena => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(0));

-- Location: LCCOMB_X24_Y11_N28
\c_eth0|c_tx|c_fsm_pt|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(1) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0) $ (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(0))))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(1) & 
-- (\c_eth0|c_tx|c_fsm_pt|r_packet_length\(1) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(0) $ (!\c_eth0|c_tx|c_fsm_pt|r_packet_length\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(1),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(0),
	datac => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(0),
	datad => \c_eth0|c_tx|c_fsm_pt|r_packet_length\(1),
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y11_N4
\c_eth0|c_tx|c_fsm_pt|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~8_combout\)))) # (!\c_eth0|c_tx|c_fsm_pt|Add2~10_combout\ & 
-- (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(7) & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(6) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Add2~10_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(6),
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(7),
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y11_N0
\c_eth0|c_tx|c_fsm_pt|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & (\c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ & (\c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2))))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(3) & 
-- (!\c_eth0|c_tx|c_fsm_pt|Add2~2_combout\ & (\c_eth0|c_tx|c_fsm_pt|Add2~0_combout\ $ (!\c_eth0|c_tx|c_fsm_pt|cnt_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(3),
	datab => \c_eth0|c_tx|c_fsm_pt|Add2~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(2),
	datad => \c_eth0|c_tx|c_fsm_pt|Add2~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y11_N8
\c_eth0|c_tx|c_fsm_pt|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\ & \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~2_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Equal0~3_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~1_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y11_N8
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\ = ((\c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\) # ((!\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\))) # (!\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Equal0~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\);

-- Location: LCCOMB_X23_Y12_N12
\c_eth0|c_tx|c_fsm_pt|byte_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\ & (((\c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\)) # (!\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\);

-- Location: LCCOMB_X23_Y12_N30
\c_eth0|c_tx|c_fsm_pt|byte_valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & (\c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\);

-- Location: LCCOMB_X23_Y12_N14
\c_eth0|c_tx|c_fsm_pt|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\) # ((!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & !\c_eth0|c_tx|c_fsm_axi|packet_valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\);

-- Location: LCCOMB_X24_Y11_N6
\c_eth0|c_tx|c_fsm_pt|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & (\c_eth0|c_tx|c_piso_sr|state.TX~q\ & (!\c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\ & !\c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector5~3_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~4_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\);

-- Location: LCCOMB_X23_Y12_N20
\c_eth0|c_tx|c_fsm_pt|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (\c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\) # (\c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~6_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~5_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\);

-- Location: LCCOMB_X23_Y12_N26
\c_eth0|c_tx|c_fsm_pt|byte_valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\ & (\c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\ & ((!\c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|byte_valid~1_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\);

-- Location: FF_X23_Y12_N27
\c_eth0|c_tx|c_fsm_pt|byte_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|byte_valid~2_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\);

-- Location: LCCOMB_X21_Y10_N14
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\ = ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\) # (!\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\)) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\);

-- Location: LCCOMB_X21_Y10_N22
\c_eth0|c_tx|c_piso_sr|r_byte~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\);

-- Location: LCCOMB_X21_Y13_N12
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\ = (\c_eth0|c_tx|c_piso_sr|r_byte~2_combout\ & (\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.TX~q\) # (!\c_eth0|c_tx|c_piso_sr|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte~2_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\);

-- Location: LCCOMB_X21_Y13_N8
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\ & 
-- !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\);

-- Location: FF_X21_Y13_N9
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[0]~8_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0));

-- Location: LCCOMB_X21_Y13_N20
\c_eth0|c_tx|c_piso_sr|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|byte_valid~q\ & !\c_eth0|c_tx|c_piso_sr|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\);

-- Location: LCCOMB_X21_Y13_N18
\c_eth0|c_tx|c_piso_sr|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ = (\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\ & ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # ((\c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ & !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\c_eth0|c_tx|c_piso_sr|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\ = (!\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & ((\c_eth0|c_tx|c_piso_sr|Selector2~2_combout\) # ((!\c_eth0|c_tx|c_piso_sr|Selector2~3_combout\ & \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~3_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\);

-- Location: FF_X21_Y13_N25
\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|Selector2~4_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\);

-- Location: LCCOMB_X21_Y13_N26
\c_eth0|c_tx|c_piso_sr|p_seq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\ = ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)) # ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # (!\c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\))) # (!\c_eth0|c_tx|c_piso_sr|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX_BYTE_READY~q\,
	combout => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\);

-- Location: LCCOMB_X19_Y10_N10
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\);

-- Location: FF_X19_Y10_N11
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~4_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0));

-- Location: LCCOMB_X19_Y10_N6
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

-- Location: FF_X19_Y10_N7
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~2_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2));

-- Location: LCCOMB_X19_Y10_N4
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1) & 
-- ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\);

-- Location: FF_X19_Y10_N5
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~3_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1));

-- Location: LCCOMB_X19_Y10_N18
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3) & ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\);

-- Location: LCCOMB_X19_Y10_N16
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\) # ((!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\);

-- Location: FF_X19_Y10_N17
\c_eth0|c_tx|c_piso_sr|cnt_bit_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay~1_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3));

-- Location: LCCOMB_X19_Y10_N12
\c_eth0|c_tx|c_piso_sr|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(0),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(3),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_delay\(2),
	combout => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\ & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\ & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\ 
-- & (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) $ (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\);

-- Location: FF_X21_Y13_N29
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[1]~7_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1));

-- Location: LCCOMB_X21_Y13_N14
\c_eth0|c_tx|c_piso_sr|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Add0~0_combout\ = \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2) $ (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	combout => \c_eth0|c_tx|c_piso_sr|Add0~0_combout\);

-- Location: LCCOMB_X21_Y13_N6
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\ & (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2))))) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\ & (!\c_eth0|c_tx|c_piso_sr|Add0~0_combout\ & 
-- ((!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Add0~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\);

-- Location: FF_X21_Y13_N7
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[2]~6_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2));

-- Location: LCCOMB_X21_Y13_N0
\c_eth0|c_tx|c_piso_sr|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Add0~1_combout\ = \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3) $ (((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2)) # ((\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0)) # (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	combout => \c_eth0|c_tx|c_piso_sr|Add0~1_combout\);

-- Location: LCCOMB_X21_Y13_N4
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\ = (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\ & (\c_eth0|c_tx|c_piso_sr|p_seq~3_combout\)) # (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\ & ((!\c_eth0|c_tx|c_piso_sr|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|p_seq~3_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|Add0~1_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~10_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~0_combout\);

-- Location: FF_X21_Y13_N5
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
	clrn => \c_reset_ctrl|r_resetn~q\,
	sload => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3));

-- Location: LCCOMB_X21_Y13_N10
\c_eth0|c_tx|c_piso_sr|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ = (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1) & (!\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3) & !\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(1),
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(3),
	datad => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(2),
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y13_N22
\c_eth0|c_tx|c_piso_sr|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector2~0_combout\ & (\c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0) & \c_eth0|c_tx|c_piso_sr|state.TX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector2~0_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem\(0),
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\);

-- Location: LCCOMB_X21_Y13_N30
\c_eth0|c_tx|c_piso_sr|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\ = (\c_eth0|c_tx|c_fsm_pt|byte_valid~q\) # ((!\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & ((\c_eth0|c_tx|c_piso_sr|Selector2~2_combout\) # (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\);

-- Location: FF_X21_Y13_N31
\c_eth0|c_tx|c_piso_sr|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\);

-- Location: LCCOMB_X21_Y13_N2
\c_eth0|c_tx|c_piso_sr|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\ = (\c_eth0|c_tx|c_piso_sr|state.TX~q\) # ((\c_eth0|c_tx|c_fsm_pt|byte_valid~q\ & !\c_eth0|c_tx|c_piso_sr|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datac => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\);

-- Location: LCCOMB_X21_Y13_N16
\c_eth0|c_tx|c_piso_sr|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & (\c_eth0|c_tx|c_fsm_pt|byte_valid~q\)) # (!\c_eth0|c_tx|c_piso_sr|Selector2~1_combout\ & (((\c_eth0|c_tx|c_piso_sr|Selector1~3_combout\ & 
-- !\c_eth0|c_tx|c_piso_sr|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|byte_valid~q\,
	datab => \c_eth0|c_tx|c_piso_sr|Selector1~3_combout\,
	datac => \c_eth0|c_tx|c_piso_sr|Selector2~2_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|Selector2~1_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\);

-- Location: FF_X21_Y13_N17
\c_eth0|c_tx|c_piso_sr|state.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|state.TX~q\);

-- Location: LCCOMB_X23_Y12_N4
\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~4_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & ((\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\) # ((!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\ & \c_eth0|c_tx|c_fsm_axi|packet_valid~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~4_combout\);

-- Location: LCCOMB_X25_Y11_N24
\c_eth0|c_tx|c_fsm_pt|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\ = (\c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\ & (\c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_addr\(10) $ (!\c_eth0|c_tx|c_fsm_pt|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Equal0~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_addr\(10),
	datac => \c_eth0|c_tx|c_fsm_pt|Add2~16_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~6_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y12_N0
\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~3_combout\ = (\c_eth0|c_tx|c_fsm_pt|r_mem_read_req~4_combout\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & !\c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~4_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~3_combout\);

-- Location: FF_X23_Y12_N1
\c_eth0|c_tx|c_fsm_pt|r_mem_read_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~3_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|r_mem_read_req~q\);

-- Location: LCCOMB_X23_Y12_N2
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

-- Location: FF_X23_Y12_N3
\c_eth0|c_tx|c_fsm_pt|mem_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|mem_next_state~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|mem_state~q\);

-- Location: LCCOMB_X23_Y12_N18
\c_eth0|c_tx|c_fsm_pt|f_first_byte~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & ((\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\) # ((\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\);

-- Location: FF_X23_Y12_N19
\c_eth0|c_tx|c_fsm_pt|f_first_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|f_first_byte~1_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\);

-- Location: LCCOMB_X23_Y12_N10
\c_eth0|c_tx|c_fsm_pt|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\ = (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\ & (!\c_eth0|c_tx|c_fsm_pt|f_first_byte~q\ & \c_eth0|c_tx|c_fsm_pt|mem_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\);

-- Location: LCCOMB_X23_Y12_N28
\c_eth0|c_tx|c_fsm_pt|Selector5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~9_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\ & ((\c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\) # (\c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector5~8_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector5~7_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~9_combout\);

-- Location: FF_X23_Y12_N29
\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector5~9_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\);

-- Location: LCCOMB_X23_Y12_N22
\c_eth0|c_tx|c_fsm_pt|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector3~5_combout\ = (\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & ((\c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\))) # (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.LOAD_LENGTH_LOWER~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector3~5_combout\);

-- Location: LCCOMB_X23_Y12_N8
\c_eth0|c_tx|c_fsm_pt|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector3~4_combout\ = (\c_eth0|c_tx|c_fsm_pt|Selector3~5_combout\) # ((\c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\ & (!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & !\c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_WAIT~q\,
	datab => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|Selector3~5_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Equal0~7_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector3~4_combout\);

-- Location: FF_X23_Y12_N9
\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector3~4_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\);

-- Location: LCCOMB_X23_Y12_N16
\c_eth0|c_tx|c_fsm_pt|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ = (!\c_eth0|c_tx|c_fsm_pt|mem_state~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.TX_LOAD~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|mem_state~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\);

-- Location: LCCOMB_X23_Y12_N24
\c_eth0|c_tx|c_fsm_pt|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\ & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\ & (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector5~2_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|f_first_byte~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\);

-- Location: FF_X23_Y12_N25
\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector4~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\);

-- Location: LCCOMB_X24_Y12_N8
\c_eth0|c_tx|c_fsm_pt|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\ & (\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ & !\c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~11_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\);

-- Location: LCCOMB_X24_Y12_N24
\c_eth0|c_tx|c_fsm_pt|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ & (((\c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\ & !\c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|Selector6~1_combout\,
	datab => \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~35_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~8_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\);

-- Location: FF_X24_Y12_N25
\c_eth0|c_tx|c_fsm_pt|state.TX_LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector6~2_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\);

-- Location: LCCOMB_X24_Y13_N30
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\ = (!\c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\ & !\c_eth0|c_tx|c_fsm_pt|state.IFG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|state.TX_LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\);

-- Location: FF_X23_Y13_N3
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~13_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(0));

-- Location: LCCOMB_X23_Y13_N4
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~17_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~14\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~14\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~18\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~14\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~14\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~17_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~18\);

-- Location: FF_X23_Y13_N5
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~17_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(1));

-- Location: LCCOMB_X23_Y13_N6
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~19_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~18\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~18\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~20\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[1]~18\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~19_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~20\);

-- Location: FF_X23_Y13_N7
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~19_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(2));

-- Location: LCCOMB_X23_Y13_N8
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~21_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~20\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~20\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~22\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~20\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[2]~20\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~21_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~22\);

-- Location: FF_X23_Y13_N9
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~21_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(3));

-- Location: LCCOMB_X23_Y13_N10
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~23_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~22\ $ (GND))) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~22\ & VCC))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~24\ = CARRY((\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4) & !\c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[3]~22\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~23_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~24\);

-- Location: FF_X23_Y13_N11
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~23_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(4));

-- Location: LCCOMB_X23_Y13_N12
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~25_combout\ = (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~24\)) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5) & ((\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~24\) # (GND)))
-- \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~26\ = CARRY((!\c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~24\) # (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[4]~24\,
	combout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~25_combout\,
	cout => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~26\);

-- Location: FF_X23_Y13_N13
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[5]~25_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(5));

-- Location: FF_X23_Y13_N15
\c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[6]~27_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~15_combout\,
	ena => \c_eth0|c_tx|c_fsm_pt|cnt_IFG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6));

-- Location: LCCOMB_X24_Y13_N8
\c_eth0|c_tx|c_fsm_pt|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ = (!\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6) & (\c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10) & (\c_eth0|c_tx|c_fsm_pt|process_0~7_combout\ & \c_eth0|c_tx|c_fsm_pt|state.IFG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(6),
	datab => \c_eth0|c_tx|c_fsm_pt|cnt_IFG\(10),
	datac => \c_eth0|c_tx|c_fsm_pt|process_0~7_combout\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.IFG~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\);

-- Location: LCCOMB_X25_Y12_N28
\c_eth0|c_tx|c_fsm_pt|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\ & ((\c_eth0|c_tx|c_fsm_axi|packet_valid~q\) # (\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_axi|packet_valid~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|Selector7~5_combout\,
	combout => \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\);

-- Location: FF_X25_Y12_N29
\c_eth0|c_tx|c_fsm_pt|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|Selector0~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\);

-- Location: LCCOMB_X17_Y8_N28
\c_eth0|c_tx|c_fsm_axi|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\ & (!\c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\ & ((\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\) # (\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\);

-- Location: LCCOMB_X17_Y8_N20
\c_eth0|c_tx|c_fsm_axi|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~5_combout\ = (!\c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ & ((\c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\ & ((\c_eth0|c_tx|c_fsm_axi|state.READY~q\))) # (!\c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\ & 
-- (\c_eth0|c_tx|c_fsm_axi|Selector1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Selector1~4_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.READY~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~5_combout\);

-- Location: FF_X17_Y8_N21
\c_eth0|c_tx|c_fsm_axi|state.READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector1~5_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.READY~q\);

-- Location: LCCOMB_X17_Y8_N18
\c_eth0|c_tx|c_fsm_axi|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\ = (\c_eth0_rb|m_axis_tvalid_i~q\ & \c_eth0|c_tx|c_fsm_axi|state.READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|m_axis_tvalid_i~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|state.READY~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\);

-- Location: LCCOMB_X17_Y8_N30
\c_eth0|c_tx|c_fsm_axi|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\ = (\c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\) # ((!\c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\ & (\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & \c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|Selector1~1_combout\,
	datab => \c_eth0|c_tx|c_fsm_axi|Selector1~3_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\);

-- Location: FF_X17_Y8_N31
\c_eth0|c_tx|c_fsm_axi|state.RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector2~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\);

-- Location: LCCOMB_X16_Y8_N24
\c_eth0|c_tx|c_fsm_axi|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\ & ((\c_eth0_rb|ram_inst|sel_b_r~q\ & ((\c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a8\))) # (!\c_eth0_rb|ram_inst|sel_b_r~q\ & 
-- (\c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|ram_inst|ram0_rtl_0|auto_generated|ram_block1a8\,
	datab => \c_eth0_rb|ram_inst|sel_b_r~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.RECEIVING~q\,
	datad => \c_eth0_rb|ram_inst|ram1_rtl_0|auto_generated|ram_block1a8\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y8_N16
\c_eth0|c_tx|c_fsm_axi|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & (\c_eth0_rb|m_axis_tvalid_i~q\ & ((\c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\) # (\c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\)))) # 
-- (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & (((\c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\ & !\c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|m_axis_tvalid_i~q\,
	datab => \c_eth0|c_tx|c_fsm_axi|Selector1~0_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datad => \c_eth0|c_tx|c_fsm_axi|Selector1~2_combout\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\);

-- Location: FF_X17_Y8_N17
\c_eth0|c_tx|c_fsm_axi|state.LAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector3~3_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\);

-- Location: LCCOMB_X26_Y8_N24
\c_eth0|c_tx|c_fsm_axi|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & (\c_eth0_rb|m_axis_tvalid_i~q\ & ((\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))) # (!\c_eth0|c_tx|c_fsm_axi|state.LAST~q\ & 
-- (((\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\)) # (!\c_eth0|c_tx|c_fsm_pt|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.LAST~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datad => \c_eth0_rb|m_axis_tvalid_i~q\,
	combout => \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\);

-- Location: FF_X26_Y8_N25
\c_eth0|c_tx|c_fsm_axi|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_axi|Selector0~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\);

-- Location: LCCOMB_X14_Y7_N18
\c_eth0_rb|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add2~4_combout\ = (\c_eth0_rb|m_axis_tvalid_i~q\ & (!\c_eth0_rb|Equal1~4_combout\ & (\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\ & \c_eth0_rb|ram_inst|b_dout[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|m_axis_tvalid_i~q\,
	datab => \c_eth0_rb|Equal1~4_combout\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datad => \c_eth0_rb|ram_inst|b_dout[8]~0_combout\,
	combout => \c_eth0_rb|Add2~4_combout\);

-- Location: LCCOMB_X14_Y7_N30
\c_eth0_rb|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add2~0_combout\ = (\c_eth0_rb|m_axis_tvalid_i~q\ & \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|m_axis_tvalid_i~q\,
	datac => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	combout => \c_eth0_rb|Add2~0_combout\);

-- Location: LCCOMB_X14_Y7_N24
\c_eth0_rb|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add2~1_combout\ = (\c_eth0_rb|pkt_count\(0)) # ((!\c_eth0_rb|Equal1~4_combout\ & (\c_eth0_rb|Add2~0_combout\ & \c_eth0_rb|ram_inst|b_dout[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(0),
	datab => \c_eth0_rb|Equal1~4_combout\,
	datac => \c_eth0_rb|Add2~0_combout\,
	datad => \c_eth0_rb|ram_inst|b_dout[8]~0_combout\,
	combout => \c_eth0_rb|Add2~1_combout\);

-- Location: LCCOMB_X13_Y7_N0
\c_eth0_rb|pkt_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[0]~18_combout\ = (\c_eth0_rb|Add2~3_combout\ & (\c_eth0_rb|Add2~1_combout\ $ (VCC))) # (!\c_eth0_rb|Add2~3_combout\ & (\c_eth0_rb|Add2~1_combout\ & VCC))
-- \c_eth0_rb|pkt_count[0]~19\ = CARRY((\c_eth0_rb|Add2~3_combout\ & \c_eth0_rb|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~3_combout\,
	datab => \c_eth0_rb|Add2~1_combout\,
	datad => VCC,
	combout => \c_eth0_rb|pkt_count[0]~18_combout\,
	cout => \c_eth0_rb|pkt_count[0]~19\);

-- Location: LCCOMB_X14_Y7_N0
\c_eth0_rb|pkt_count[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[10]~50_combout\ = ((\c_eth0_rb|Add2~4_combout\) # ((!\c_eth0_rb|dropping~q\ & \c_interconnect|PA_TX_tvalid_reg~q\))) # (!\c_reset_ctrl|r_resetn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|dropping~q\,
	datab => \c_interconnect|PA_TX_tvalid_reg~q\,
	datac => \c_reset_ctrl|r_resetn~q\,
	datad => \c_eth0_rb|Add2~4_combout\,
	combout => \c_eth0_rb|pkt_count[10]~50_combout\);

-- Location: FF_X13_Y7_N1
\c_eth0_rb|pkt_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[0]~18_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(0));

-- Location: LCCOMB_X14_Y7_N22
\c_eth0_rb|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add2~2_combout\ = (\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\ & ((\c_eth0_rb|m_axis_tvalid_i~q\ & ((\c_eth0_rb|pkt_count\(0)))) # (!\c_eth0_rb|m_axis_tvalid_i~q\ & (\c_interconnect|PA_TX_tlast_reg~q\)))) # (!\c_eth0|c_tx|c_fsm_axi|state.IDLE~q\ & 
-- (\c_interconnect|PA_TX_tlast_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_axi|state.IDLE~q\,
	datab => \c_interconnect|PA_TX_tlast_reg~q\,
	datac => \c_eth0_rb|m_axis_tvalid_i~q\,
	datad => \c_eth0_rb|pkt_count\(0),
	combout => \c_eth0_rb|Add2~2_combout\);

-- Location: LCCOMB_X14_Y7_N20
\c_eth0_rb|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Add2~3_combout\ = (\c_eth0_rb|Equal1~4_combout\ & (((\c_interconnect|PA_TX_tlast_reg~q\)))) # (!\c_eth0_rb|Equal1~4_combout\ & ((\c_eth0_rb|ram_inst|b_dout[8]~0_combout\ & (\c_eth0_rb|Add2~2_combout\)) # 
-- (!\c_eth0_rb|ram_inst|b_dout[8]~0_combout\ & ((\c_interconnect|PA_TX_tlast_reg~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~2_combout\,
	datab => \c_interconnect|PA_TX_tlast_reg~q\,
	datac => \c_eth0_rb|Equal1~4_combout\,
	datad => \c_eth0_rb|ram_inst|b_dout[8]~0_combout\,
	combout => \c_eth0_rb|Add2~3_combout\);

-- Location: LCCOMB_X13_Y7_N2
\c_eth0_rb|pkt_count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[1]~20_combout\ = (\c_eth0_rb|pkt_count\(1) & ((\c_eth0_rb|Add2~4_combout\ & (\c_eth0_rb|pkt_count[0]~19\ & VCC)) # (!\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count[0]~19\)))) # (!\c_eth0_rb|pkt_count\(1) & 
-- ((\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count[0]~19\)) # (!\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count[0]~19\) # (GND)))))
-- \c_eth0_rb|pkt_count[1]~21\ = CARRY((\c_eth0_rb|pkt_count\(1) & (!\c_eth0_rb|Add2~4_combout\ & !\c_eth0_rb|pkt_count[0]~19\)) # (!\c_eth0_rb|pkt_count\(1) & ((!\c_eth0_rb|pkt_count[0]~19\) # (!\c_eth0_rb|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(1),
	datab => \c_eth0_rb|Add2~4_combout\,
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[0]~19\,
	combout => \c_eth0_rb|pkt_count[1]~20_combout\,
	cout => \c_eth0_rb|pkt_count[1]~21\);

-- Location: FF_X13_Y7_N3
\c_eth0_rb|pkt_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[1]~20_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(1));

-- Location: LCCOMB_X13_Y7_N4
\c_eth0_rb|pkt_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[2]~22_combout\ = ((\c_eth0_rb|pkt_count\(2) $ (\c_eth0_rb|Add2~4_combout\ $ (!\c_eth0_rb|pkt_count[1]~21\)))) # (GND)
-- \c_eth0_rb|pkt_count[2]~23\ = CARRY((\c_eth0_rb|pkt_count\(2) & ((\c_eth0_rb|Add2~4_combout\) # (!\c_eth0_rb|pkt_count[1]~21\))) # (!\c_eth0_rb|pkt_count\(2) & (\c_eth0_rb|Add2~4_combout\ & !\c_eth0_rb|pkt_count[1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(2),
	datab => \c_eth0_rb|Add2~4_combout\,
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[1]~21\,
	combout => \c_eth0_rb|pkt_count[2]~22_combout\,
	cout => \c_eth0_rb|pkt_count[2]~23\);

-- Location: FF_X13_Y7_N5
\c_eth0_rb|pkt_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[2]~22_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(2));

-- Location: LCCOMB_X13_Y7_N6
\c_eth0_rb|pkt_count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[3]~24_combout\ = (\c_eth0_rb|pkt_count\(3) & ((\c_eth0_rb|Add2~4_combout\ & (\c_eth0_rb|pkt_count[2]~23\ & VCC)) # (!\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count[2]~23\)))) # (!\c_eth0_rb|pkt_count\(3) & 
-- ((\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count[2]~23\)) # (!\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count[2]~23\) # (GND)))))
-- \c_eth0_rb|pkt_count[3]~25\ = CARRY((\c_eth0_rb|pkt_count\(3) & (!\c_eth0_rb|Add2~4_combout\ & !\c_eth0_rb|pkt_count[2]~23\)) # (!\c_eth0_rb|pkt_count\(3) & ((!\c_eth0_rb|pkt_count[2]~23\) # (!\c_eth0_rb|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(3),
	datab => \c_eth0_rb|Add2~4_combout\,
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[2]~23\,
	combout => \c_eth0_rb|pkt_count[3]~24_combout\,
	cout => \c_eth0_rb|pkt_count[3]~25\);

-- Location: FF_X13_Y7_N7
\c_eth0_rb|pkt_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[3]~24_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(3));

-- Location: LCCOMB_X13_Y7_N8
\c_eth0_rb|pkt_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[4]~26_combout\ = ((\c_eth0_rb|pkt_count\(4) $ (\c_eth0_rb|Add2~4_combout\ $ (!\c_eth0_rb|pkt_count[3]~25\)))) # (GND)
-- \c_eth0_rb|pkt_count[4]~27\ = CARRY((\c_eth0_rb|pkt_count\(4) & ((\c_eth0_rb|Add2~4_combout\) # (!\c_eth0_rb|pkt_count[3]~25\))) # (!\c_eth0_rb|pkt_count\(4) & (\c_eth0_rb|Add2~4_combout\ & !\c_eth0_rb|pkt_count[3]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(4),
	datab => \c_eth0_rb|Add2~4_combout\,
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[3]~25\,
	combout => \c_eth0_rb|pkt_count[4]~26_combout\,
	cout => \c_eth0_rb|pkt_count[4]~27\);

-- Location: FF_X13_Y7_N9
\c_eth0_rb|pkt_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[4]~26_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(4));

-- Location: LCCOMB_X13_Y7_N10
\c_eth0_rb|pkt_count[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[5]~28_combout\ = (\c_eth0_rb|pkt_count\(5) & ((\c_eth0_rb|Add2~4_combout\ & (\c_eth0_rb|pkt_count[4]~27\ & VCC)) # (!\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count[4]~27\)))) # (!\c_eth0_rb|pkt_count\(5) & 
-- ((\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count[4]~27\)) # (!\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count[4]~27\) # (GND)))))
-- \c_eth0_rb|pkt_count[5]~29\ = CARRY((\c_eth0_rb|pkt_count\(5) & (!\c_eth0_rb|Add2~4_combout\ & !\c_eth0_rb|pkt_count[4]~27\)) # (!\c_eth0_rb|pkt_count\(5) & ((!\c_eth0_rb|pkt_count[4]~27\) # (!\c_eth0_rb|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(5),
	datab => \c_eth0_rb|Add2~4_combout\,
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[4]~27\,
	combout => \c_eth0_rb|pkt_count[5]~28_combout\,
	cout => \c_eth0_rb|pkt_count[5]~29\);

-- Location: FF_X13_Y7_N11
\c_eth0_rb|pkt_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[5]~28_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(5));

-- Location: LCCOMB_X13_Y7_N12
\c_eth0_rb|pkt_count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[6]~30_combout\ = ((\c_eth0_rb|pkt_count\(6) $ (\c_eth0_rb|Add2~4_combout\ $ (!\c_eth0_rb|pkt_count[5]~29\)))) # (GND)
-- \c_eth0_rb|pkt_count[6]~31\ = CARRY((\c_eth0_rb|pkt_count\(6) & ((\c_eth0_rb|Add2~4_combout\) # (!\c_eth0_rb|pkt_count[5]~29\))) # (!\c_eth0_rb|pkt_count\(6) & (\c_eth0_rb|Add2~4_combout\ & !\c_eth0_rb|pkt_count[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(6),
	datab => \c_eth0_rb|Add2~4_combout\,
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[5]~29\,
	combout => \c_eth0_rb|pkt_count[6]~30_combout\,
	cout => \c_eth0_rb|pkt_count[6]~31\);

-- Location: FF_X13_Y7_N13
\c_eth0_rb|pkt_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[6]~30_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(6));

-- Location: LCCOMB_X13_Y7_N14
\c_eth0_rb|pkt_count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[7]~32_combout\ = (\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count\(7) & (\c_eth0_rb|pkt_count[6]~31\ & VCC)) # (!\c_eth0_rb|pkt_count\(7) & (!\c_eth0_rb|pkt_count[6]~31\)))) # (!\c_eth0_rb|Add2~4_combout\ & 
-- ((\c_eth0_rb|pkt_count\(7) & (!\c_eth0_rb|pkt_count[6]~31\)) # (!\c_eth0_rb|pkt_count\(7) & ((\c_eth0_rb|pkt_count[6]~31\) # (GND)))))
-- \c_eth0_rb|pkt_count[7]~33\ = CARRY((\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count\(7) & !\c_eth0_rb|pkt_count[6]~31\)) # (!\c_eth0_rb|Add2~4_combout\ & ((!\c_eth0_rb|pkt_count[6]~31\) # (!\c_eth0_rb|pkt_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~4_combout\,
	datab => \c_eth0_rb|pkt_count\(7),
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[6]~31\,
	combout => \c_eth0_rb|pkt_count[7]~32_combout\,
	cout => \c_eth0_rb|pkt_count[7]~33\);

-- Location: FF_X13_Y7_N15
\c_eth0_rb|pkt_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[7]~32_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(7));

-- Location: LCCOMB_X13_Y7_N16
\c_eth0_rb|pkt_count[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[8]~34_combout\ = ((\c_eth0_rb|pkt_count\(8) $ (\c_eth0_rb|Add2~4_combout\ $ (!\c_eth0_rb|pkt_count[7]~33\)))) # (GND)
-- \c_eth0_rb|pkt_count[8]~35\ = CARRY((\c_eth0_rb|pkt_count\(8) & ((\c_eth0_rb|Add2~4_combout\) # (!\c_eth0_rb|pkt_count[7]~33\))) # (!\c_eth0_rb|pkt_count\(8) & (\c_eth0_rb|Add2~4_combout\ & !\c_eth0_rb|pkt_count[7]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(8),
	datab => \c_eth0_rb|Add2~4_combout\,
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[7]~33\,
	combout => \c_eth0_rb|pkt_count[8]~34_combout\,
	cout => \c_eth0_rb|pkt_count[8]~35\);

-- Location: FF_X13_Y7_N17
\c_eth0_rb|pkt_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[8]~34_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(8));

-- Location: LCCOMB_X13_Y7_N18
\c_eth0_rb|pkt_count[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[9]~36_combout\ = (\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count\(9) & (\c_eth0_rb|pkt_count[8]~35\ & VCC)) # (!\c_eth0_rb|pkt_count\(9) & (!\c_eth0_rb|pkt_count[8]~35\)))) # (!\c_eth0_rb|Add2~4_combout\ & 
-- ((\c_eth0_rb|pkt_count\(9) & (!\c_eth0_rb|pkt_count[8]~35\)) # (!\c_eth0_rb|pkt_count\(9) & ((\c_eth0_rb|pkt_count[8]~35\) # (GND)))))
-- \c_eth0_rb|pkt_count[9]~37\ = CARRY((\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count\(9) & !\c_eth0_rb|pkt_count[8]~35\)) # (!\c_eth0_rb|Add2~4_combout\ & ((!\c_eth0_rb|pkt_count[8]~35\) # (!\c_eth0_rb|pkt_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~4_combout\,
	datab => \c_eth0_rb|pkt_count\(9),
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[8]~35\,
	combout => \c_eth0_rb|pkt_count[9]~36_combout\,
	cout => \c_eth0_rb|pkt_count[9]~37\);

-- Location: FF_X13_Y7_N19
\c_eth0_rb|pkt_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[9]~36_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(9));

-- Location: LCCOMB_X13_Y7_N20
\c_eth0_rb|pkt_count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[10]~38_combout\ = ((\c_eth0_rb|Add2~4_combout\ $ (\c_eth0_rb|pkt_count\(10) $ (!\c_eth0_rb|pkt_count[9]~37\)))) # (GND)
-- \c_eth0_rb|pkt_count[10]~39\ = CARRY((\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count\(10)) # (!\c_eth0_rb|pkt_count[9]~37\))) # (!\c_eth0_rb|Add2~4_combout\ & (\c_eth0_rb|pkt_count\(10) & !\c_eth0_rb|pkt_count[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~4_combout\,
	datab => \c_eth0_rb|pkt_count\(10),
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[9]~37\,
	combout => \c_eth0_rb|pkt_count[10]~38_combout\,
	cout => \c_eth0_rb|pkt_count[10]~39\);

-- Location: FF_X13_Y7_N21
\c_eth0_rb|pkt_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[10]~38_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(10));

-- Location: LCCOMB_X13_Y7_N22
\c_eth0_rb|pkt_count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[11]~40_combout\ = (\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count\(11) & (\c_eth0_rb|pkt_count[10]~39\ & VCC)) # (!\c_eth0_rb|pkt_count\(11) & (!\c_eth0_rb|pkt_count[10]~39\)))) # (!\c_eth0_rb|Add2~4_combout\ & 
-- ((\c_eth0_rb|pkt_count\(11) & (!\c_eth0_rb|pkt_count[10]~39\)) # (!\c_eth0_rb|pkt_count\(11) & ((\c_eth0_rb|pkt_count[10]~39\) # (GND)))))
-- \c_eth0_rb|pkt_count[11]~41\ = CARRY((\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count\(11) & !\c_eth0_rb|pkt_count[10]~39\)) # (!\c_eth0_rb|Add2~4_combout\ & ((!\c_eth0_rb|pkt_count[10]~39\) # (!\c_eth0_rb|pkt_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~4_combout\,
	datab => \c_eth0_rb|pkt_count\(11),
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[10]~39\,
	combout => \c_eth0_rb|pkt_count[11]~40_combout\,
	cout => \c_eth0_rb|pkt_count[11]~41\);

-- Location: FF_X13_Y7_N23
\c_eth0_rb|pkt_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[11]~40_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(11));

-- Location: LCCOMB_X13_Y7_N24
\c_eth0_rb|pkt_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[12]~42_combout\ = ((\c_eth0_rb|Add2~4_combout\ $ (\c_eth0_rb|pkt_count\(12) $ (!\c_eth0_rb|pkt_count[11]~41\)))) # (GND)
-- \c_eth0_rb|pkt_count[12]~43\ = CARRY((\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count\(12)) # (!\c_eth0_rb|pkt_count[11]~41\))) # (!\c_eth0_rb|Add2~4_combout\ & (\c_eth0_rb|pkt_count\(12) & !\c_eth0_rb|pkt_count[11]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~4_combout\,
	datab => \c_eth0_rb|pkt_count\(12),
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[11]~41\,
	combout => \c_eth0_rb|pkt_count[12]~42_combout\,
	cout => \c_eth0_rb|pkt_count[12]~43\);

-- Location: FF_X13_Y7_N25
\c_eth0_rb|pkt_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[12]~42_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(12));

-- Location: LCCOMB_X13_Y7_N26
\c_eth0_rb|pkt_count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[13]~44_combout\ = (\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count\(13) & (\c_eth0_rb|pkt_count[12]~43\ & VCC)) # (!\c_eth0_rb|pkt_count\(13) & (!\c_eth0_rb|pkt_count[12]~43\)))) # (!\c_eth0_rb|Add2~4_combout\ & 
-- ((\c_eth0_rb|pkt_count\(13) & (!\c_eth0_rb|pkt_count[12]~43\)) # (!\c_eth0_rb|pkt_count\(13) & ((\c_eth0_rb|pkt_count[12]~43\) # (GND)))))
-- \c_eth0_rb|pkt_count[13]~45\ = CARRY((\c_eth0_rb|Add2~4_combout\ & (!\c_eth0_rb|pkt_count\(13) & !\c_eth0_rb|pkt_count[12]~43\)) # (!\c_eth0_rb|Add2~4_combout\ & ((!\c_eth0_rb|pkt_count[12]~43\) # (!\c_eth0_rb|pkt_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~4_combout\,
	datab => \c_eth0_rb|pkt_count\(13),
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[12]~43\,
	combout => \c_eth0_rb|pkt_count[13]~44_combout\,
	cout => \c_eth0_rb|pkt_count[13]~45\);

-- Location: FF_X13_Y7_N27
\c_eth0_rb|pkt_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[13]~44_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(13));

-- Location: LCCOMB_X13_Y7_N28
\c_eth0_rb|pkt_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[14]~46_combout\ = ((\c_eth0_rb|Add2~4_combout\ $ (\c_eth0_rb|pkt_count\(14) $ (!\c_eth0_rb|pkt_count[13]~45\)))) # (GND)
-- \c_eth0_rb|pkt_count[14]~47\ = CARRY((\c_eth0_rb|Add2~4_combout\ & ((\c_eth0_rb|pkt_count\(14)) # (!\c_eth0_rb|pkt_count[13]~45\))) # (!\c_eth0_rb|Add2~4_combout\ & (\c_eth0_rb|pkt_count\(14) & !\c_eth0_rb|pkt_count[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Add2~4_combout\,
	datab => \c_eth0_rb|pkt_count\(14),
	datad => VCC,
	cin => \c_eth0_rb|pkt_count[13]~45\,
	combout => \c_eth0_rb|pkt_count[14]~46_combout\,
	cout => \c_eth0_rb|pkt_count[14]~47\);

-- Location: FF_X13_Y7_N29
\c_eth0_rb|pkt_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[14]~46_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(14));

-- Location: LCCOMB_X13_Y7_N30
\c_eth0_rb|pkt_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|pkt_count[15]~48_combout\ = \c_eth0_rb|pkt_count\(15) $ (\c_eth0_rb|pkt_count[14]~47\ $ (\c_eth0_rb|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(15),
	datad => \c_eth0_rb|Add2~4_combout\,
	cin => \c_eth0_rb|pkt_count[14]~47\,
	combout => \c_eth0_rb|pkt_count[15]~48_combout\);

-- Location: FF_X13_Y7_N31
\c_eth0_rb|pkt_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|pkt_count[15]~48_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	ena => \c_eth0_rb|pkt_count[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|pkt_count\(15));

-- Location: LCCOMB_X14_Y7_N6
\c_eth0_rb|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal1~3_combout\ = (!\c_eth0_rb|pkt_count\(12) & (!\c_eth0_rb|pkt_count\(15) & (!\c_eth0_rb|pkt_count\(13) & !\c_eth0_rb|pkt_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(12),
	datab => \c_eth0_rb|pkt_count\(15),
	datac => \c_eth0_rb|pkt_count\(13),
	datad => \c_eth0_rb|pkt_count\(14),
	combout => \c_eth0_rb|Equal1~3_combout\);

-- Location: LCCOMB_X14_Y7_N8
\c_eth0_rb|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal1~2_combout\ = (!\c_eth0_rb|pkt_count\(10) & (!\c_eth0_rb|pkt_count\(9) & (!\c_eth0_rb|pkt_count\(8) & !\c_eth0_rb|pkt_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(10),
	datab => \c_eth0_rb|pkt_count\(9),
	datac => \c_eth0_rb|pkt_count\(8),
	datad => \c_eth0_rb|pkt_count\(11),
	combout => \c_eth0_rb|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y7_N14
\c_eth0_rb|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal1~1_combout\ = (!\c_eth0_rb|pkt_count\(5) & (!\c_eth0_rb|pkt_count\(4) & (!\c_eth0_rb|pkt_count\(7) & !\c_eth0_rb|pkt_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(5),
	datab => \c_eth0_rb|pkt_count\(4),
	datac => \c_eth0_rb|pkt_count\(7),
	datad => \c_eth0_rb|pkt_count\(6),
	combout => \c_eth0_rb|Equal1~1_combout\);

-- Location: LCCOMB_X14_Y7_N16
\c_eth0_rb|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal1~0_combout\ = (!\c_eth0_rb|pkt_count\(0) & (!\c_eth0_rb|pkt_count\(3) & (!\c_eth0_rb|pkt_count\(2) & !\c_eth0_rb|pkt_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|pkt_count\(0),
	datab => \c_eth0_rb|pkt_count\(3),
	datac => \c_eth0_rb|pkt_count\(2),
	datad => \c_eth0_rb|pkt_count\(1),
	combout => \c_eth0_rb|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y7_N4
\c_eth0_rb|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|Equal1~4_combout\ = (\c_eth0_rb|Equal1~3_combout\ & (\c_eth0_rb|Equal1~2_combout\ & (\c_eth0_rb|Equal1~1_combout\ & \c_eth0_rb|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0_rb|Equal1~3_combout\,
	datab => \c_eth0_rb|Equal1~2_combout\,
	datac => \c_eth0_rb|Equal1~1_combout\,
	datad => \c_eth0_rb|Equal1~0_combout\,
	combout => \c_eth0_rb|Equal1~4_combout\);

-- Location: LCCOMB_X17_Y7_N20
\c_eth0_rb|out_ready_phase~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|out_ready_phase~feeder_combout\ = \c_reset_ctrl|r_resetn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_reset_ctrl|r_resetn~q\,
	combout => \c_eth0_rb|out_ready_phase~feeder_combout\);

-- Location: FF_X17_Y7_N21
\c_eth0_rb|out_ready_phase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|out_ready_phase~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|out_ready_phase~q\);

-- Location: LCCOMB_X17_Y7_N24
\c_eth0_rb|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0_rb|process_0~0_combout\ = (!\c_eth0_rb|Equal1~4_combout\ & (!\c_eth0_rb|Equal0~3_combout\ & \c_eth0_rb|out_ready_phase~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0_rb|Equal1~4_combout\,
	datac => \c_eth0_rb|Equal0~3_combout\,
	datad => \c_eth0_rb|out_ready_phase~q\,
	combout => \c_eth0_rb|process_0~0_combout\);

-- Location: FF_X17_Y7_N25
\c_eth0_rb|m_axis_tvalid_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0_rb|process_0~0_combout\,
	sclr => \c_reset_ctrl|ALT_INV_r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0_rb|m_axis_tvalid_i~q\);

-- Location: LCCOMB_X21_Y10_N18
\c_eth0|c_tx|c_piso_sr|r_byte~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~10_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.TX~q\ & (\c_eth0|c_tx|c_piso_sr|r_byte\(7))) # (!\c_eth0|c_tx|c_piso_sr|state.TX~q\ & 
-- ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7)))))) # (!\c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ & (\c_eth0|c_tx|c_piso_sr|r_byte\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(7),
	datac => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(7),
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~10_combout\);

-- Location: LCCOMB_X21_Y10_N8
\c_eth0|c_tx|c_piso_sr|r_byte~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~11_combout\ = (\c_eth0|c_tx|c_piso_sr|r_byte~10_combout\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|r_byte~10_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~11_combout\);

-- Location: FF_X21_Y10_N9
\c_eth0|c_tx|c_piso_sr|r_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~11_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(7));

-- Location: LCCOMB_X21_Y10_N10
\c_eth0|c_tx|c_piso_sr|r_byte~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(7))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|r_byte\(7),
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(6),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\);

-- Location: LCCOMB_X21_Y10_N28
\c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ & (((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & !\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\)) # (!\c_eth0|c_tx|c_piso_sr|state.TX~q\))) # 
-- (!\c_eth0|c_tx|c_piso_sr|Selector1~2_combout\ & (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector1~2_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|state.TX~q\,
	combout => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\);

-- Location: FF_X21_Y10_N11
\c_eth0|c_tx|c_piso_sr|r_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~9_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(6));

-- Location: LCCOMB_X21_Y10_N4
\c_eth0|c_tx|c_piso_sr|r_byte~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(6))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte\(6),
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(5),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\);

-- Location: FF_X21_Y10_N5
\c_eth0|c_tx|c_piso_sr|r_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~8_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(5));

-- Location: LCCOMB_X21_Y10_N6
\c_eth0|c_tx|c_piso_sr|r_byte~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(5))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|r_byte\(5),
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(4),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\);

-- Location: FF_X21_Y10_N7
\c_eth0|c_tx|c_piso_sr|r_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~7_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(4));

-- Location: LCCOMB_X21_Y10_N12
\c_eth0|c_tx|c_piso_sr|r_byte~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3))))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(4))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte\(4),
	datab => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(3),
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\);

-- Location: FF_X21_Y10_N13
\c_eth0|c_tx|c_piso_sr|r_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~6_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(3));

-- Location: LCCOMB_X21_Y10_N30
\c_eth0|c_tx|c_piso_sr|r_byte~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(3))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte\(3),
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(2),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\);

-- Location: FF_X21_Y10_N31
\c_eth0|c_tx|c_piso_sr|r_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~5_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(2));

-- Location: LCCOMB_X21_Y10_N24
\c_eth0|c_tx|c_piso_sr|r_byte~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(2))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte\(2),
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(1),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\);

-- Location: FF_X21_Y10_N25
\c_eth0|c_tx|c_piso_sr|r_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~4_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(1));

-- Location: LCCOMB_X21_Y10_N20
\c_eth0|c_tx|c_piso_sr|r_byte~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\ = (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & 
-- (\c_eth0|c_tx|c_piso_sr|r_byte\(1))))) # (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (((\c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|r_byte\(1),
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datad => \c_eth0|c_tx|c_ram|altsyncram_component|auto_generated|q_b\(0),
	combout => \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\);

-- Location: FF_X21_Y10_N21
\c_eth0|c_tx|c_piso_sr|r_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|r_byte~3_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	ena => \c_eth0|c_tx|c_piso_sr|cnt_bit_rem[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|r_byte\(0));

-- Location: LCCOMB_X21_Y10_N16
\c_eth0|c_tx|c_piso_sr|bit_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\ = (\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & (((\c_eth0|c_tx|c_piso_sr|bit_out~q\)))) # (!\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\ & ((\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & (\c_eth0|c_tx|c_piso_sr|r_byte\(0))) # 
-- (!\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & ((\c_eth0|c_tx|c_piso_sr|bit_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|r_byte\(0),
	datac => \c_eth0|c_tx|c_piso_sr|bit_out~q\,
	datad => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	combout => \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\);

-- Location: FF_X21_Y10_N17
\c_eth0|c_tx|c_piso_sr|bit_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|bit_out~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|bit_out~q\);

-- Location: LCCOMB_X21_Y10_N26
\c_eth0|c_tx|c_piso_sr|bit_valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\ = (\c_eth0|c_tx|c_piso_sr|Selector0~1_combout\ & (\c_eth0|c_tx|c_piso_sr|state.IDLE~q\ & !\c_eth0|c_tx|c_piso_sr|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_piso_sr|Selector0~1_combout\,
	datab => \c_eth0|c_tx|c_piso_sr|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_piso_sr|Equal0~0_combout\,
	combout => \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\);

-- Location: FF_X21_Y10_N27
\c_eth0|c_tx|c_piso_sr|bit_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_piso_sr|bit_valid~2_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_piso_sr|bit_valid~q\);

-- Location: LCCOMB_X10_Y8_N26
\c_eth0|c_tx|c_phy|r_mcn_bit_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\ = (\c_eth0|c_tx|c_piso_sr|bit_valid~q\ & (\c_eth0|c_tx|c_piso_sr|bit_out~q\)) # (!\c_eth0|c_tx|c_piso_sr|bit_valid~q\ & ((\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_piso_sr|bit_out~q\,
	datac => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	datad => \c_eth0|c_tx|c_piso_sr|bit_valid~q\,
	combout => \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\);

-- Location: FF_X10_Y8_N27
\c_eth0|c_tx|c_phy|r_mcn_bit_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_mcn_bit_in~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\);

-- Location: LCCOMB_X24_Y12_N20
\c_eth0|c_tx|c_fsm_pt|tx_active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\ = (!\c_eth0|c_tx|c_fsm_pt|process_0~8_combout\ & ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\) # (\c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|process_0~8_combout\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_fsm_pt|state.TX_FIRST~q\,
	combout => \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\);

-- Location: FF_X24_Y12_N21
\c_eth0|c_tx|c_fsm_pt|tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_fsm_pt|tx_active~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_fsm_pt|tx_active~q\);

-- Location: LCCOMB_X9_Y8_N2
\c_eth0|c_tx|c_phy|r_clk_counter[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter[0]~5_combout\ = \c_eth0|c_tx|c_phy|r_clk_counter\(0) $ (VCC)
-- \c_eth0|c_tx|c_phy|r_clk_counter[0]~6\ = CARRY(\c_eth0|c_tx|c_phy|r_clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter[0]~5_combout\,
	cout => \c_eth0|c_tx|c_phy|r_clk_counter[0]~6\);

-- Location: LCCOMB_X9_Y8_N0
\c_eth0|c_tx|c_phy|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal0~0_combout\ = (((!\c_eth0|c_tx|c_phy|r_clk_counter\(0)) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(3))) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(1))) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	combout => \c_eth0|c_tx|c_phy|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y8_N12
\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~22_combout\ = \c_eth0|c_tx|c_phy|r_inactivity_counter\(0) $ (VCC)
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~23\ = CARRY(\c_eth0|c_tx|c_phy|r_inactivity_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0),
	datad => VCC,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~22_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~23\);

-- Location: FF_X8_Y8_N13
\c_eth0|c_tx|c_phy|r_inactivity_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~22_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0));

-- Location: LCCOMB_X8_Y8_N14
\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~24_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(1) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~23\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(1) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~23\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~25\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[0]~23\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[0]~23\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~24_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~25\);

-- Location: FF_X8_Y8_N15
\c_eth0|c_tx|c_phy|r_inactivity_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~24_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1));

-- Location: LCCOMB_X8_Y8_N16
\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~26_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~25\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~25\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~27\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(2) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[1]~25\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~26_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~27\);

-- Location: FF_X8_Y8_N17
\c_eth0|c_tx|c_phy|r_inactivity_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~26_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2));

-- Location: LCCOMB_X8_Y8_N18
\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~28_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(3) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~27\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(3) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~27\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~29\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[2]~27\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[2]~27\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~28_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~29\);

-- Location: FF_X8_Y8_N19
\c_eth0|c_tx|c_phy|r_inactivity_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~28_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3));

-- Location: LCCOMB_X8_Y8_N20
\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~30_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~29\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~29\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~31\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[3]~29\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~30_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~31\);

-- Location: FF_X8_Y8_N21
\c_eth0|c_tx|c_phy|r_inactivity_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~30_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4));

-- Location: LCCOMB_X8_Y8_N22
\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~32_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(5) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~31\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(5) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~31\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~33\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[4]~31\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[4]~31\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~32_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~33\);

-- Location: FF_X8_Y8_N23
\c_eth0|c_tx|c_phy|r_inactivity_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~32_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5));

-- Location: LCCOMB_X8_Y8_N24
\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~34_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~33\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~33\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~35\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(6) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[5]~33\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~34_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~35\);

-- Location: FF_X8_Y8_N25
\c_eth0|c_tx|c_phy|r_inactivity_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~34_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6));

-- Location: LCCOMB_X8_Y8_N26
\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~36_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(7) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~35\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(7) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~35\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~37\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[6]~35\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[6]~35\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~36_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~37\);

-- Location: FF_X8_Y8_N27
\c_eth0|c_tx|c_phy|r_inactivity_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~36_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7));

-- Location: LCCOMB_X8_Y8_N28
\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~38_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(8) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~37\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(8) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~37\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~39\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(8) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(8),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[7]~37\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~38_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~39\);

-- Location: FF_X8_Y8_N29
\c_eth0|c_tx|c_phy|r_inactivity_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~38_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(8));

-- Location: LCCOMB_X8_Y8_N30
\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~40_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(9) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~39\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(9) & ((\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~39\) 
-- # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~41\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[8]~39\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(9),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[8]~39\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~40_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~41\);

-- Location: FF_X8_Y8_N31
\c_eth0|c_tx|c_phy|r_inactivity_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~40_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(9));

-- Location: LCCOMB_X8_Y7_N0
\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~42_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(10) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~41\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(10) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~41\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~43\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(10) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(10),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[9]~41\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~42_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~43\);

-- Location: FF_X8_Y7_N1
\c_eth0|c_tx|c_phy|r_inactivity_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~42_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(10));

-- Location: LCCOMB_X8_Y7_N2
\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~44_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(11) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~43\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(11) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~43\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~45\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[10]~43\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(11),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[10]~43\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~44_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~45\);

-- Location: FF_X8_Y7_N3
\c_eth0|c_tx|c_phy|r_inactivity_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~44_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(11));

-- Location: LCCOMB_X8_Y7_N4
\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~46_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~45\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~45\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~47\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[11]~45\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~46_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~47\);

-- Location: FF_X8_Y7_N5
\c_eth0|c_tx|c_phy|r_inactivity_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~46_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12));

-- Location: LCCOMB_X8_Y7_N6
\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~48_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(13) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~47\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(13) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~47\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~49\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[12]~47\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[12]~47\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~48_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~49\);

-- Location: FF_X8_Y7_N7
\c_eth0|c_tx|c_phy|r_inactivity_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~48_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13));

-- Location: LCCOMB_X8_Y7_N8
\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~50_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~49\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~49\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~51\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[13]~49\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~50_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~51\);

-- Location: FF_X8_Y7_N9
\c_eth0|c_tx|c_phy|r_inactivity_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~50_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14));

-- Location: LCCOMB_X8_Y7_N10
\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~52_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(15) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~51\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(15) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~51\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~53\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[14]~51\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[14]~51\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~52_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~53\);

-- Location: FF_X8_Y7_N11
\c_eth0|c_tx|c_phy|r_inactivity_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~52_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15));

-- Location: LCCOMB_X8_Y7_N12
\c_eth0|c_tx|c_phy|r_inactivity_counter[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~54_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~53\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~53\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~55\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[15]~53\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~54_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~55\);

-- Location: FF_X8_Y7_N13
\c_eth0|c_tx|c_phy|r_inactivity_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~54_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16));

-- Location: LCCOMB_X8_Y7_N14
\c_eth0|c_tx|c_phy|r_inactivity_counter[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~56_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(17) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[16]~55\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(17) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[16]~55\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~57\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[16]~55\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[16]~55\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~56_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~57\);

-- Location: FF_X8_Y7_N15
\c_eth0|c_tx|c_phy|r_inactivity_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~56_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17));

-- Location: LCCOMB_X8_Y7_N16
\c_eth0|c_tx|c_phy|r_inactivity_counter[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~58_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(18) & (\c_eth0|c_tx|c_phy|r_inactivity_counter[17]~57\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(18) & 
-- (!\c_eth0|c_tx|c_phy|r_inactivity_counter[17]~57\ & VCC))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~59\ = CARRY((\c_eth0|c_tx|c_phy|r_inactivity_counter\(18) & !\c_eth0|c_tx|c_phy|r_inactivity_counter[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(18),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[17]~57\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~58_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~59\);

-- Location: FF_X8_Y7_N17
\c_eth0|c_tx|c_phy|r_inactivity_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~58_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(18));

-- Location: LCCOMB_X8_Y7_N18
\c_eth0|c_tx|c_phy|r_inactivity_counter[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~60_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(19) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter[18]~59\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(19) & 
-- ((\c_eth0|c_tx|c_phy|r_inactivity_counter[18]~59\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~61\ = CARRY((!\c_eth0|c_tx|c_phy|r_inactivity_counter[18]~59\) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(19),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[18]~59\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~60_combout\,
	cout => \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~61\);

-- Location: FF_X8_Y7_N19
\c_eth0|c_tx|c_phy|r_inactivity_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~60_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(19));

-- Location: LCCOMB_X8_Y7_N20
\c_eth0|c_tx|c_phy|r_inactivity_counter[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_inactivity_counter[20]~62_combout\ = \c_eth0|c_tx|c_phy|r_inactivity_counter\(20) $ (!\c_eth0|c_tx|c_phy|r_inactivity_counter[19]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(20),
	cin => \c_eth0|c_tx|c_phy|r_inactivity_counter[19]~61\,
	combout => \c_eth0|c_tx|c_phy|r_inactivity_counter[20]~62_combout\);

-- Location: FF_X8_Y7_N21
\c_eth0|c_tx|c_phy|r_inactivity_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_inactivity_counter[20]~62_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_inactivity_counter\(20));

-- Location: LCCOMB_X8_Y7_N30
\c_eth0|c_tx|c_phy|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~5_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(16) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(18) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(17) & \c_eth0|c_tx|c_phy|r_inactivity_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(16),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(18),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(17),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(19),
	combout => \c_eth0|c_tx|c_phy|Equal1~5_combout\);

-- Location: LCCOMB_X8_Y7_N26
\c_eth0|c_tx|c_phy|p_seq~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~5_combout\ = (!\c_eth0|c_tx|c_phy|state.IDLE~q\ & !\c_eth0|c_tx|c_fsm_pt|tx_active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	combout => \c_eth0|c_tx|c_phy|p_seq~5_combout\);

-- Location: LCCOMB_X8_Y7_N24
\c_eth0|c_tx|c_phy|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~3_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(15) & (\c_eth0|c_tx|c_phy|r_inactivity_counter\(14) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(12) & \c_eth0|c_tx|c_phy|r_inactivity_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(15),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(14),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(12),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(13),
	combout => \c_eth0|c_tx|c_phy|Equal1~3_combout\);

-- Location: LCCOMB_X8_Y8_N2
\c_eth0|c_tx|c_phy|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~2_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(9) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(10) & (\c_eth0|c_tx|c_phy|r_inactivity_counter\(11) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(9),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(10),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(11),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(8),
	combout => \c_eth0|c_tx|c_phy|Equal1~2_combout\);

-- Location: LCCOMB_X8_Y8_N0
\c_eth0|c_tx|c_phy|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~1_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(5) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(4) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(7) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(5),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(4),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(7),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(6),
	combout => \c_eth0|c_tx|c_phy|Equal1~1_combout\);

-- Location: LCCOMB_X8_Y8_N10
\c_eth0|c_tx|c_phy|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~0_combout\ = (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(0) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(3) & (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(1) & !\c_eth0|c_tx|c_phy|r_inactivity_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(0),
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(3),
	datac => \c_eth0|c_tx|c_phy|r_inactivity_counter\(1),
	datad => \c_eth0|c_tx|c_phy|r_inactivity_counter\(2),
	combout => \c_eth0|c_tx|c_phy|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y8_N8
\c_eth0|c_tx|c_phy|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~4_combout\ = (\c_eth0|c_tx|c_phy|Equal1~3_combout\ & (\c_eth0|c_tx|c_phy|Equal1~2_combout\ & (\c_eth0|c_tx|c_phy|Equal1~1_combout\ & \c_eth0|c_tx|c_phy|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Equal1~3_combout\,
	datab => \c_eth0|c_tx|c_phy|Equal1~2_combout\,
	datac => \c_eth0|c_tx|c_phy|Equal1~1_combout\,
	datad => \c_eth0|c_tx|c_phy|Equal1~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Equal1~4_combout\);

-- Location: LCCOMB_X9_Y8_N26
\c_eth0|c_tx|c_phy|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector0~0_combout\ = (\c_eth0|c_tx|c_phy|p_seq~5_combout\ & (((!\c_eth0|c_tx|c_phy|Equal1~4_combout\) # (!\c_eth0|c_tx|c_phy|Equal1~5_combout\)) # (!\c_eth0|c_tx|c_phy|r_inactivity_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_inactivity_counter\(20),
	datab => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datac => \c_eth0|c_tx|c_phy|p_seq~5_combout\,
	datad => \c_eth0|c_tx|c_phy|Equal1~4_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector0~0_combout\);

-- Location: LCCOMB_X9_Y8_N20
\c_eth0|c_tx|c_phy|p_seq~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~4_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter\(2) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(1) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(3) & !\c_eth0|c_tx|c_phy|r_clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	combout => \c_eth0|c_tx|c_phy|p_seq~4_combout\);

-- Location: LCCOMB_X10_Y8_N2
\c_eth0|c_tx|c_phy|p_seq~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~9_combout\ = (!\c_eth0|c_tx|c_phy|r_clk_counter\(4) & (\c_eth0|c_tx|c_phy|state.TX~q\ & \c_eth0|c_tx|c_phy|p_seq~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(4),
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datad => \c_eth0|c_tx|c_phy|p_seq~4_combout\,
	combout => \c_eth0|c_tx|c_phy|p_seq~9_combout\);

-- Location: LCCOMB_X10_Y8_N28
\c_eth0|c_tx|c_phy|r_mcn_phase~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\ = (\c_eth0|c_tx|c_phy|r_mcn_phase~q\ & (!\c_eth0|c_tx|c_phy|p_seq~9_combout\ & ((\c_eth0|c_tx|c_phy|state.IDLE~q\) # (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\)))) # (!\c_eth0|c_tx|c_phy|r_mcn_phase~q\ & 
-- (((\c_eth0|c_tx|c_phy|p_seq~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datac => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	datad => \c_eth0|c_tx|c_phy|p_seq~9_combout\,
	combout => \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\);

-- Location: FF_X10_Y8_N29
\c_eth0|c_tx|c_phy|r_mcn_phase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_mcn_phase~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_mcn_phase~q\);

-- Location: LCCOMB_X10_Y8_N22
\c_eth0|c_tx|c_phy|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector4~1_combout\ = (\c_eth0|c_tx|c_phy|state.TX~q\ & (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & (\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\ $ (\c_eth0|c_tx|c_phy|r_mcn_phase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	combout => \c_eth0|c_tx|c_phy|Selector4~1_combout\);

-- Location: LCCOMB_X10_Y8_N24
\c_eth0|c_tx|c_phy|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector4~0_combout\ = (\c_eth0|c_tx|c_phy|state.IDLE~q\ & ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\) # (!\c_eth0|c_tx|c_phy|state.TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|state.TX~q\,
	combout => \c_eth0|c_tx|c_phy|Selector4~0_combout\);

-- Location: LCCOMB_X10_Y8_N12
\c_eth0|c_tx|c_phy|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector4~2_combout\ = (\c_eth0|c_tx|c_phy|Selector2~5_combout\ & (((\c_eth0|c_tx|c_phy|Selector4~1_combout\)))) # (!\c_eth0|c_tx|c_phy|Selector2~5_combout\ & ((\c_eth0|c_tx|c_phy|Selector4~0_combout\ & 
-- (\c_eth0|c_tx|c_phy|state.TP_IDL~q\)) # (!\c_eth0|c_tx|c_phy|Selector4~0_combout\ & ((\c_eth0|c_tx|c_phy|Selector4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector2~5_combout\,
	datab => \c_eth0|c_tx|c_phy|state.TP_IDL~q\,
	datac => \c_eth0|c_tx|c_phy|Selector4~1_combout\,
	datad => \c_eth0|c_tx|c_phy|Selector4~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector4~2_combout\);

-- Location: LCCOMB_X10_Y8_N18
\c_eth0|c_tx|c_phy|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector4~3_combout\ = (!\c_eth0|c_tx|c_phy|state.TX~q\ & \c_eth0|c_tx|c_phy|state.TP_IDL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|state.TP_IDL~q\,
	combout => \c_eth0|c_tx|c_phy|Selector4~3_combout\);

-- Location: LCCOMB_X10_Y8_N6
\c_eth0|c_tx|c_phy|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector4~4_combout\ = (\c_eth0|c_tx|c_phy|Selector4~2_combout\) # ((\c_eth0|c_tx|c_phy|Selector2~4_combout\) # ((\c_eth0|c_tx|c_phy|Selector4~3_combout\ & \c_eth0|c_tx|c_phy|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector4~2_combout\,
	datab => \c_eth0|c_tx|c_phy|Selector4~3_combout\,
	datac => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	datad => \c_eth0|c_tx|c_phy|Selector2~4_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector4~4_combout\);

-- Location: FF_X10_Y8_N7
\c_eth0|c_tx|c_phy|state.TP_IDL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector4~4_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.TP_IDL~q\);

-- Location: LCCOMB_X9_Y8_N24
\c_eth0|c_tx|c_phy|p_seq~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~6_combout\ = (!\c_eth0|c_tx|c_phy|r_clk_counter\(1) & (\c_eth0|c_tx|c_phy|r_clk_counter\(3) & !\c_eth0|c_tx|c_phy|r_clk_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datac => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	combout => \c_eth0|c_tx|c_phy|p_seq~6_combout\);

-- Location: LCCOMB_X8_Y7_N28
\c_eth0|c_tx|c_phy|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Equal1~6_combout\ = (\c_eth0|c_tx|c_phy|r_inactivity_counter\(20) & (\c_eth0|c_tx|c_phy|Equal1~5_combout\ & \c_eth0|c_tx|c_phy|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_inactivity_counter\(20),
	datac => \c_eth0|c_tx|c_phy|Equal1~5_combout\,
	datad => \c_eth0|c_tx|c_phy|Equal1~4_combout\,
	combout => \c_eth0|c_tx|c_phy|Equal1~6_combout\);

-- Location: LCCOMB_X8_Y7_N22
\c_eth0|c_tx|c_phy|Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~6_combout\ = (!\c_eth0|c_tx|c_phy|state.IDLE~q\ & ((\c_eth0|c_tx|c_fsm_pt|tx_active~q\) # (\c_eth0|c_tx|c_phy|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datac => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_phy|Equal1~6_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~6_combout\);

-- Location: LCCOMB_X9_Y8_N12
\c_eth0|c_tx|c_phy|Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~7_combout\ = (\c_eth0|c_tx|c_phy|Selector2~6_combout\ & (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\)) # (!\c_eth0|c_tx|c_phy|Selector2~6_combout\ & (((!\c_eth0|c_tx|c_phy|Selector2~5_combout\ & \c_eth0|c_tx|c_phy|state.NLP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datab => \c_eth0|c_tx|c_phy|Selector2~5_combout\,
	datac => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datad => \c_eth0|c_tx|c_phy|Selector2~6_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector2~7_combout\);

-- Location: FF_X9_Y8_N13
\c_eth0|c_tx|c_phy|state.NLP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector2~7_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.NLP~q\);

-- Location: LCCOMB_X9_Y8_N18
\c_eth0|c_tx|c_phy|p_seq~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~7_combout\ = (!\c_eth0|c_tx|c_phy|r_clk_counter\(4) & (\c_eth0|c_tx|c_phy|p_seq~6_combout\ & (\c_eth0|c_tx|c_phy|state.NLP~q\ & \c_eth0|c_tx|c_phy|r_clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(4),
	datab => \c_eth0|c_tx|c_phy|p_seq~6_combout\,
	datac => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datad => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	combout => \c_eth0|c_tx|c_phy|p_seq~7_combout\);

-- Location: LCCOMB_X9_Y8_N28
\c_eth0|c_tx|c_phy|p_seq~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|p_seq~8_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter\(4) & (!\c_eth0|c_tx|c_phy|r_clk_counter\(0) & \c_eth0|c_tx|c_phy|p_seq~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(4),
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(0),
	datad => \c_eth0|c_tx|c_phy|p_seq~6_combout\,
	combout => \c_eth0|c_tx|c_phy|p_seq~8_combout\);

-- Location: LCCOMB_X9_Y8_N14
\c_eth0|c_tx|c_phy|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~5_combout\ = (\c_eth0|c_tx|c_phy|state.NLP~q\ & (((\c_eth0|c_tx|c_phy|p_seq~7_combout\)))) # (!\c_eth0|c_tx|c_phy|state.NLP~q\ & (\c_eth0|c_tx|c_phy|state.TP_IDL~q\ & ((\c_eth0|c_tx|c_phy|p_seq~7_combout\) # 
-- (\c_eth0|c_tx|c_phy|p_seq~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.TP_IDL~q\,
	datab => \c_eth0|c_tx|c_phy|p_seq~7_combout\,
	datac => \c_eth0|c_tx|c_phy|p_seq~8_combout\,
	datad => \c_eth0|c_tx|c_phy|state.NLP~q\,
	combout => \c_eth0|c_tx|c_phy|Selector2~5_combout\);

-- Location: LCCOMB_X10_Y8_N30
\c_eth0|c_tx|c_phy|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector0~1_combout\ = (\c_eth0|c_tx|c_phy|Selector2~4_combout\) # ((!\c_eth0|c_tx|c_phy|Selector0~0_combout\ & ((!\c_eth0|c_tx|c_phy|Selector2~5_combout\) # (!\c_eth0|c_tx|c_phy|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	datab => \c_eth0|c_tx|c_phy|Selector2~4_combout\,
	datac => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datad => \c_eth0|c_tx|c_phy|Selector2~5_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector0~1_combout\);

-- Location: FF_X10_Y8_N31
\c_eth0|c_tx|c_phy|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector0~1_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.IDLE~q\);

-- Location: LCCOMB_X8_Y8_N6
\c_eth0|c_tx|c_phy|r_clk_counter[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter[4]~11_combout\ = (!\c_eth0|c_tx|c_phy|p_seq~9_combout\ & ((\c_eth0|c_tx|c_phy|state.IDLE~q\) # ((!\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & !\c_eth0|c_tx|c_phy|Equal1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.IDLE~q\,
	datab => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datac => \c_eth0|c_tx|c_phy|p_seq~9_combout\,
	datad => \c_eth0|c_tx|c_phy|Equal1~6_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter[4]~11_combout\);

-- Location: LCCOMB_X10_Y8_N10
\c_eth0|c_tx|c_phy|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector4~5_combout\ = (\c_eth0|c_tx|c_phy|Selector2~5_combout\ & (!\c_eth0|c_tx|c_phy|state.TX~q\ & (\c_eth0|c_tx|c_phy|Selector0~0_combout\))) # (!\c_eth0|c_tx|c_phy|Selector2~5_combout\ & ((\c_eth0|c_tx|c_phy|Selector4~0_combout\) # 
-- ((!\c_eth0|c_tx|c_phy|state.TX~q\ & \c_eth0|c_tx|c_phy|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector2~5_combout\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|Selector0~0_combout\,
	datad => \c_eth0|c_tx|c_phy|Selector4~0_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector4~5_combout\);

-- Location: LCCOMB_X10_Y8_N0
\c_eth0|c_tx|c_phy|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector3~0_combout\ = (\c_eth0|c_tx|c_phy|state.TX~q\ & (!\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & (\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\ $ (!\c_eth0|c_tx|c_phy|r_mcn_phase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datad => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	combout => \c_eth0|c_tx|c_phy|Selector3~0_combout\);

-- Location: LCCOMB_X10_Y8_N14
\c_eth0|c_tx|c_phy|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector3~1_combout\ = (!\c_eth0|c_tx|c_phy|Selector2~4_combout\ & ((\c_eth0|c_tx|c_phy|Selector4~5_combout\ & ((\c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\))) # (!\c_eth0|c_tx|c_phy|Selector4~5_combout\ & 
-- (\c_eth0|c_tx|c_phy|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|Selector4~5_combout\,
	datab => \c_eth0|c_tx|c_phy|Selector3~0_combout\,
	datac => \c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\,
	datad => \c_eth0|c_tx|c_phy|Selector2~4_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector3~1_combout\);

-- Location: FF_X10_Y8_N15
\c_eth0|c_tx|c_phy|state.TP_IDL_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector3~1_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\);

-- Location: LCCOMB_X10_Y8_N4
\c_eth0|c_tx|c_phy|r_tp_idl_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\ = (\c_eth0|c_tx|c_phy|Selector4~4_combout\ & ((\c_eth0|c_tx|c_phy|state.TX~q\) # (\c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\,
	datad => \c_eth0|c_tx|c_phy|Selector4~4_combout\,
	combout => \c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\);

-- Location: LCCOMB_X9_Y8_N22
\c_eth0|c_tx|c_phy|r_clk_counter[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\ = ((\c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\) # ((\c_eth0|c_tx|c_phy|r_clk_counter\(4) & !\c_eth0|c_tx|c_phy|Equal0~0_combout\))) # (!\c_eth0|c_tx|c_phy|r_clk_counter[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(4),
	datab => \c_eth0|c_tx|c_phy|Equal0~0_combout\,
	datac => \c_eth0|c_tx|c_phy|r_clk_counter[4]~11_combout\,
	datad => \c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\);

-- Location: FF_X9_Y8_N3
\c_eth0|c_tx|c_phy|r_clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter[0]~5_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(0));

-- Location: LCCOMB_X9_Y8_N4
\c_eth0|c_tx|c_phy|r_clk_counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter[1]~7_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter\(1) & (!\c_eth0|c_tx|c_phy|r_clk_counter[0]~6\)) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(1) & ((\c_eth0|c_tx|c_phy|r_clk_counter[0]~6\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_clk_counter[1]~8\ = CARRY((!\c_eth0|c_tx|c_phy|r_clk_counter[0]~6\) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(1),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_clk_counter[0]~6\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter[1]~7_combout\,
	cout => \c_eth0|c_tx|c_phy|r_clk_counter[1]~8\);

-- Location: FF_X9_Y8_N5
\c_eth0|c_tx|c_phy|r_clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter[1]~7_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(1));

-- Location: LCCOMB_X9_Y8_N6
\c_eth0|c_tx|c_phy|r_clk_counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter[2]~9_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter\(2) & (\c_eth0|c_tx|c_phy|r_clk_counter[1]~8\ $ (GND))) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(2) & (!\c_eth0|c_tx|c_phy|r_clk_counter[1]~8\ & VCC))
-- \c_eth0|c_tx|c_phy|r_clk_counter[2]~10\ = CARRY((\c_eth0|c_tx|c_phy|r_clk_counter\(2) & !\c_eth0|c_tx|c_phy|r_clk_counter[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(2),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_clk_counter[1]~8\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter[2]~9_combout\,
	cout => \c_eth0|c_tx|c_phy|r_clk_counter[2]~10\);

-- Location: FF_X9_Y8_N7
\c_eth0|c_tx|c_phy|r_clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter[2]~9_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(2));

-- Location: LCCOMB_X9_Y8_N8
\c_eth0|c_tx|c_phy|r_clk_counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter[3]~13_combout\ = (\c_eth0|c_tx|c_phy|r_clk_counter\(3) & (!\c_eth0|c_tx|c_phy|r_clk_counter[2]~10\)) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(3) & ((\c_eth0|c_tx|c_phy|r_clk_counter[2]~10\) # (GND)))
-- \c_eth0|c_tx|c_phy|r_clk_counter[3]~14\ = CARRY((!\c_eth0|c_tx|c_phy|r_clk_counter[2]~10\) # (!\c_eth0|c_tx|c_phy|r_clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c_eth0|c_tx|c_phy|r_clk_counter\(3),
	datad => VCC,
	cin => \c_eth0|c_tx|c_phy|r_clk_counter[2]~10\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter[3]~13_combout\,
	cout => \c_eth0|c_tx|c_phy|r_clk_counter[3]~14\);

-- Location: FF_X9_Y8_N9
\c_eth0|c_tx|c_phy|r_clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter[3]~13_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(3));

-- Location: LCCOMB_X9_Y8_N10
\c_eth0|c_tx|c_phy|r_clk_counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_clk_counter[4]~15_combout\ = \c_eth0|c_tx|c_phy|r_clk_counter\(4) $ (!\c_eth0|c_tx|c_phy|r_clk_counter[3]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(4),
	cin => \c_eth0|c_tx|c_phy|r_clk_counter[3]~14\,
	combout => \c_eth0|c_tx|c_phy|r_clk_counter[4]~15_combout\);

-- Location: FF_X9_Y8_N11
\c_eth0|c_tx|c_phy|r_clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_clk_counter[4]~15_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	sclr => \c_eth0|c_tx|c_phy|r_clk_counter[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_clk_counter\(4));

-- Location: LCCOMB_X10_Y8_N20
\c_eth0|c_tx|c_phy|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector2~4_combout\ = (!\c_eth0|c_tx|c_phy|r_clk_counter\(4) & (\c_eth0|c_tx|c_phy|p_seq~4_combout\ & \c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_clk_counter\(4),
	datab => \c_eth0|c_tx|c_phy|p_seq~4_combout\,
	datac => \c_eth0|c_tx|c_phy|state.TP_IDL_WAIT~q\,
	combout => \c_eth0|c_tx|c_phy|Selector2~4_combout\);

-- Location: LCCOMB_X9_Y8_N30
\c_eth0|c_tx|c_phy|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector1~0_combout\ = (\c_eth0|c_tx|c_fsm_pt|tx_active~q\ & (!\c_eth0|c_tx|c_phy|Selector2~4_combout\ & ((\c_eth0|c_tx|c_phy|state.TX~q\) # (\c_eth0|c_tx|c_phy|Selector2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_fsm_pt|tx_active~q\,
	datab => \c_eth0|c_tx|c_phy|Selector2~4_combout\,
	datac => \c_eth0|c_tx|c_phy|state.TX~q\,
	datad => \c_eth0|c_tx|c_phy|Selector2~6_combout\,
	combout => \c_eth0|c_tx|c_phy|Selector1~0_combout\);

-- Location: FF_X9_Y8_N31
\c_eth0|c_tx|c_phy|state.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|Selector1~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|state.TX~q\);

-- Location: LCCOMB_X10_Y8_N8
\c_eth0|c_tx|c_phy|r_tp_idl_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_tp_idl_out~1_combout\ = (\c_eth0|c_tx|c_phy|p_seq~8_combout\ & (!\c_eth0|c_tx|c_phy|state.TP_IDL~q\ & ((\c_eth0|c_tx|c_phy|r_tp_idl_out~q\) # (\c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\)))) # (!\c_eth0|c_tx|c_phy|p_seq~8_combout\ & 
-- (((\c_eth0|c_tx|c_phy|r_tp_idl_out~q\) # (\c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|p_seq~8_combout\,
	datab => \c_eth0|c_tx|c_phy|state.TP_IDL~q\,
	datac => \c_eth0|c_tx|c_phy|r_tp_idl_out~q\,
	datad => \c_eth0|c_tx|c_phy|r_tp_idl_out~0_combout\,
	combout => \c_eth0|c_tx|c_phy|r_tp_idl_out~1_combout\);

-- Location: FF_X10_Y8_N9
\c_eth0|c_tx|c_phy|r_tp_idl_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_tp_idl_out~1_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_tp_idl_out~q\);

-- Location: LCCOMB_X8_Y8_N4
\c_eth0|c_tx|c_phy|r_nlp_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\ = (!\c_eth0|c_tx|c_phy|p_seq~7_combout\ & ((\c_eth0|c_tx|c_phy|r_nlp_out~q\) # ((\c_eth0|c_tx|c_phy|p_seq~5_combout\ & \c_eth0|c_tx|c_phy|Equal1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|p_seq~5_combout\,
	datab => \c_eth0|c_tx|c_phy|Equal1~6_combout\,
	datac => \c_eth0|c_tx|c_phy|r_nlp_out~q\,
	datad => \c_eth0|c_tx|c_phy|p_seq~7_combout\,
	combout => \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\);

-- Location: FF_X8_Y8_N5
\c_eth0|c_tx|c_phy|r_nlp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c_alt_clk_ctrl|altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	d => \c_eth0|c_tx|c_phy|r_nlp_out~0_combout\,
	clrn => \c_reset_ctrl|r_resetn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_eth0|c_tx|c_phy|r_nlp_out~q\);

-- Location: LCCOMB_X9_Y8_N16
\c_eth0|c_tx|c_phy|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector5~0_combout\ = (\c_eth0|c_tx|c_phy|state.NLP~q\ & ((\c_eth0|c_tx|c_phy|r_nlp_out~q\) # ((\c_eth0|c_tx|c_phy|r_tp_idl_out~q\ & \c_eth0|c_tx|c_phy|state.TP_IDL~q\)))) # (!\c_eth0|c_tx|c_phy|state.NLP~q\ & 
-- (\c_eth0|c_tx|c_phy|r_tp_idl_out~q\ & ((\c_eth0|c_tx|c_phy|state.TP_IDL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|state.NLP~q\,
	datab => \c_eth0|c_tx|c_phy|r_tp_idl_out~q\,
	datac => \c_eth0|c_tx|c_phy|r_nlp_out~q\,
	datad => \c_eth0|c_tx|c_phy|state.TP_IDL~q\,
	combout => \c_eth0|c_tx|c_phy|Selector5~0_combout\);

-- Location: LCCOMB_X10_Y8_N16
\c_eth0|c_tx|c_phy|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_eth0|c_tx|c_phy|Selector5~1_combout\ = (\c_eth0|c_tx|c_phy|Selector5~0_combout\) # ((\c_eth0|c_tx|c_phy|state.TX~q\ & (\c_eth0|c_tx|c_phy|r_mcn_bit_in~q\ $ (!\c_eth0|c_tx|c_phy|r_mcn_phase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_eth0|c_tx|c_phy|r_mcn_bit_in~q\,
	datab => \c_eth0|c_tx|c_phy|state.TX~q\,
	datac => \c_eth0|c_tx|c_phy|Selector5~0_combout\,
	datad => \c_eth0|c_tx|c_phy|r_mcn_phase~q\,
	combout => \c_eth0|c_tx|c_phy|Selector5~1_combout\);

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


