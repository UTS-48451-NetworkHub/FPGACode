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

-- DATE "09/07/2025 23:34:30"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
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
	ETH0_RX_N : IN std_logic;
	ETH0_RX_P : IN std_logic;
	ETH0_TX_N : BUFFER std_logic;
	ETH0_TX_P : BUFFER std_logic;
	ETH0_LED_GRN : BUFFER std_logic;
	ETH0_LED_YEL : BUFFER std_logic;
	ETH1_RX_N : IN std_logic;
	ETH1_RX_P : IN std_logic;
	ETH1_TX_N : BUFFER std_logic;
	ETH1_TX_P : BUFFER std_logic;
	ETH1_LED_GRN : BUFFER std_logic;
	ETH1_LED_YEL : BUFFER std_logic;
	ETH2_RX_N : IN std_logic;
	ETH2_RX_P : IN std_logic;
	ETH2_TX_N : BUFFER std_logic;
	ETH2_TX_P : BUFFER std_logic;
	ETH2_LED_GRN : BUFFER std_logic;
	ETH2_LED_YEL : BUFFER std_logic;
	ETH3_RX_N : IN std_logic;
	ETH3_RX_P : IN std_logic;
	ETH3_TX_N : BUFFER std_logic;
	ETH3_TX_P : BUFFER std_logic;
	ETH3_LED_GRN : BUFFER std_logic;
	ETH3_LED_YEL : BUFFER std_logic;
	ETH4_RX_N : IN std_logic;
	ETH4_RX_P : IN std_logic;
	ETH4_TX_N : BUFFER std_logic;
	ETH4_TX_P : BUFFER std_logic;
	ETH4_LED_GRN : BUFFER std_logic;
	ETH4_LED_YEL : BUFFER std_logic
	);
END ethernet_switch;

-- Design Ports Information
-- MAIN_CLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY3	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY4	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED1	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UART_RX	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_TX	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_RX_N	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH0_RX_P	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH0_TX_N	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_TX_P	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_LED_GRN	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_LED_YEL	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_RX_N	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH1_RX_P	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH1_TX_N	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_TX_P	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_LED_GRN	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_LED_YEL	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_RX_N	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH2_RX_P	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH2_TX_N	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_TX_P	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_LED_GRN	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH2_LED_YEL	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_RX_N	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH3_RX_P	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH3_TX_N	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_TX_P	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_LED_GRN	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH3_LED_YEL	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_RX_N	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH4_RX_P	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH4_TX_N	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_TX_P	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_LED_GRN	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH4_LED_YEL	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


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
SIGNAL ww_ETH0_RX_N : std_logic;
SIGNAL ww_ETH0_RX_P : std_logic;
SIGNAL ww_ETH0_TX_N : std_logic;
SIGNAL ww_ETH0_TX_P : std_logic;
SIGNAL ww_ETH0_LED_GRN : std_logic;
SIGNAL ww_ETH0_LED_YEL : std_logic;
SIGNAL ww_ETH1_RX_N : std_logic;
SIGNAL ww_ETH1_RX_P : std_logic;
SIGNAL ww_ETH1_TX_N : std_logic;
SIGNAL ww_ETH1_TX_P : std_logic;
SIGNAL ww_ETH1_LED_GRN : std_logic;
SIGNAL ww_ETH1_LED_YEL : std_logic;
SIGNAL ww_ETH2_RX_N : std_logic;
SIGNAL ww_ETH2_RX_P : std_logic;
SIGNAL ww_ETH2_TX_N : std_logic;
SIGNAL ww_ETH2_TX_P : std_logic;
SIGNAL ww_ETH2_LED_GRN : std_logic;
SIGNAL ww_ETH2_LED_YEL : std_logic;
SIGNAL ww_ETH3_RX_N : std_logic;
SIGNAL ww_ETH3_RX_P : std_logic;
SIGNAL ww_ETH3_TX_N : std_logic;
SIGNAL ww_ETH3_TX_P : std_logic;
SIGNAL ww_ETH3_LED_GRN : std_logic;
SIGNAL ww_ETH3_LED_YEL : std_logic;
SIGNAL ww_ETH4_RX_N : std_logic;
SIGNAL ww_ETH4_RX_P : std_logic;
SIGNAL ww_ETH4_TX_N : std_logic;
SIGNAL ww_ETH4_TX_P : std_logic;
SIGNAL ww_ETH4_LED_GRN : std_logic;
SIGNAL ww_ETH4_LED_YEL : std_logic;
SIGNAL \MAIN_CLK~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \KEY4~input_o\ : std_logic;
SIGNAL \UART_RX~input_o\ : std_logic;
SIGNAL \ETH0_RX_N~input_o\ : std_logic;
SIGNAL \ETH0_RX_P~input_o\ : std_logic;
SIGNAL \ETH1_RX_N~input_o\ : std_logic;
SIGNAL \ETH1_RX_P~input_o\ : std_logic;
SIGNAL \ETH2_RX_N~input_o\ : std_logic;
SIGNAL \ETH2_RX_P~input_o\ : std_logic;
SIGNAL \ETH3_RX_N~input_o\ : std_logic;
SIGNAL \ETH3_RX_P~input_o\ : std_logic;
SIGNAL \ETH4_RX_N~input_o\ : std_logic;
SIGNAL \ETH4_RX_P~input_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \UART_TX~output_o\ : std_logic;
SIGNAL \ETH0_TX_N~output_o\ : std_logic;
SIGNAL \ETH0_TX_P~output_o\ : std_logic;
SIGNAL \ETH0_LED_GRN~output_o\ : std_logic;
SIGNAL \ETH0_LED_YEL~output_o\ : std_logic;
SIGNAL \ETH1_TX_N~output_o\ : std_logic;
SIGNAL \ETH1_TX_P~output_o\ : std_logic;
SIGNAL \ETH1_LED_GRN~output_o\ : std_logic;
SIGNAL \ETH1_LED_YEL~output_o\ : std_logic;
SIGNAL \ETH2_TX_N~output_o\ : std_logic;
SIGNAL \ETH2_TX_P~output_o\ : std_logic;
SIGNAL \ETH2_LED_GRN~output_o\ : std_logic;
SIGNAL \ETH2_LED_YEL~output_o\ : std_logic;
SIGNAL \ETH3_TX_N~output_o\ : std_logic;
SIGNAL \ETH3_TX_P~output_o\ : std_logic;
SIGNAL \ETH3_LED_GRN~output_o\ : std_logic;
SIGNAL \ETH3_LED_YEL~output_o\ : std_logic;
SIGNAL \ETH4_TX_N~output_o\ : std_logic;
SIGNAL \ETH4_TX_P~output_o\ : std_logic;
SIGNAL \ETH4_LED_GRN~output_o\ : std_logic;
SIGNAL \ETH4_LED_YEL~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
ww_ETH0_RX_N <= ETH0_RX_N;
ww_ETH0_RX_P <= ETH0_RX_P;
ETH0_TX_N <= ww_ETH0_TX_N;
ETH0_TX_P <= ww_ETH0_TX_P;
ETH0_LED_GRN <= ww_ETH0_LED_GRN;
ETH0_LED_YEL <= ww_ETH0_LED_YEL;
ww_ETH1_RX_N <= ETH1_RX_N;
ww_ETH1_RX_P <= ETH1_RX_P;
ETH1_TX_N <= ww_ETH1_TX_N;
ETH1_TX_P <= ww_ETH1_TX_P;
ETH1_LED_GRN <= ww_ETH1_LED_GRN;
ETH1_LED_YEL <= ww_ETH1_LED_YEL;
ww_ETH2_RX_N <= ETH2_RX_N;
ww_ETH2_RX_P <= ETH2_RX_P;
ETH2_TX_N <= ww_ETH2_TX_N;
ETH2_TX_P <= ww_ETH2_TX_P;
ETH2_LED_GRN <= ww_ETH2_LED_GRN;
ETH2_LED_YEL <= ww_ETH2_LED_YEL;
ww_ETH3_RX_N <= ETH3_RX_N;
ww_ETH3_RX_P <= ETH3_RX_P;
ETH3_TX_N <= ww_ETH3_TX_N;
ETH3_TX_P <= ww_ETH3_TX_P;
ETH3_LED_GRN <= ww_ETH3_LED_GRN;
ETH3_LED_YEL <= ww_ETH3_LED_YEL;
ww_ETH4_RX_N <= ETH4_RX_N;
ww_ETH4_RX_P <= ETH4_RX_P;
ETH4_TX_N <= ww_ETH4_TX_N;
ETH4_TX_P <= ww_ETH4_TX_P;
ETH4_LED_GRN <= ww_ETH4_LED_GRN;
ETH4_LED_YEL <= ww_ETH4_LED_YEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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
	o => \LED1~output_o\);

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
	o => \UART_TX~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\ETH0_TX_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH0_TX_N~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\ETH0_TX_P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH0_TX_P~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\ETH0_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH0_LED_GRN~output_o\);

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
	o => \ETH0_LED_YEL~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\ETH1_TX_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH1_TX_N~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\ETH1_TX_P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH1_TX_P~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\ETH1_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH1_LED_GRN~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\ETH1_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH1_LED_YEL~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\ETH2_TX_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH2_TX_N~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ETH2_TX_P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH2_TX_P~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ETH2_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH2_LED_GRN~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\ETH2_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH2_LED_YEL~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ETH3_TX_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH3_TX_N~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ETH3_TX_P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH3_TX_P~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ETH3_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH3_LED_GRN~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ETH3_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH3_LED_YEL~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ETH4_TX_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH4_TX_N~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ETH4_TX_P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH4_TX_P~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ETH4_LED_GRN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH4_LED_GRN~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\ETH4_LED_YEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ETH4_LED_YEL~output_o\);

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

-- Location: IOIBUF_X34_Y7_N8
\ETH0_RX_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH0_RX_N,
	o => \ETH0_RX_N~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\ETH0_RX_P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH0_RX_P,
	o => \ETH0_RX_P~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\ETH1_RX_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH1_RX_N,
	o => \ETH1_RX_N~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\ETH1_RX_P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH1_RX_P,
	o => \ETH1_RX_P~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\ETH2_RX_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH2_RX_N,
	o => \ETH2_RX_N~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\ETH2_RX_P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH2_RX_P,
	o => \ETH2_RX_P~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\ETH3_RX_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH3_RX_N,
	o => \ETH3_RX_N~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\ETH3_RX_P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH3_RX_P,
	o => \ETH3_RX_P~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\ETH4_RX_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH4_RX_N,
	o => \ETH4_RX_N~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\ETH4_RX_P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH4_RX_P,
	o => \ETH4_RX_P~input_o\);

ww_LED1 <= \LED1~output_o\;

ww_UART_TX <= \UART_TX~output_o\;

ww_ETH0_TX_N <= \ETH0_TX_N~output_o\;

ww_ETH0_TX_P <= \ETH0_TX_P~output_o\;

ww_ETH0_LED_GRN <= \ETH0_LED_GRN~output_o\;

ww_ETH0_LED_YEL <= \ETH0_LED_YEL~output_o\;

ww_ETH1_TX_N <= \ETH1_TX_N~output_o\;

ww_ETH1_TX_P <= \ETH1_TX_P~output_o\;

ww_ETH1_LED_GRN <= \ETH1_LED_GRN~output_o\;

ww_ETH1_LED_YEL <= \ETH1_LED_YEL~output_o\;

ww_ETH2_TX_N <= \ETH2_TX_N~output_o\;

ww_ETH2_TX_P <= \ETH2_TX_P~output_o\;

ww_ETH2_LED_GRN <= \ETH2_LED_GRN~output_o\;

ww_ETH2_LED_YEL <= \ETH2_LED_YEL~output_o\;

ww_ETH3_TX_N <= \ETH3_TX_N~output_o\;

ww_ETH3_TX_P <= \ETH3_TX_P~output_o\;

ww_ETH3_LED_GRN <= \ETH3_LED_GRN~output_o\;

ww_ETH3_LED_YEL <= \ETH3_LED_YEL~output_o\;

ww_ETH4_TX_N <= \ETH4_TX_N~output_o\;

ww_ETH4_TX_P <= \ETH4_TX_P~output_o\;

ww_ETH4_LED_GRN <= \ETH4_LED_GRN~output_o\;

ww_ETH4_LED_YEL <= \ETH4_LED_YEL~output_o\;
END structure;


