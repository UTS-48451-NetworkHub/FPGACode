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

-- DATE "09/02/2025 11:00:46"

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

ENTITY 	FPGACode IS
    PORT (
	LED1 : OUT std_logic;
	RESET : IN std_logic;
	TEST_CLK_20M : OUT std_logic;
	MAIN_CLK : IN std_logic;
	TEST_PLL_LOCK : OUT std_logic;
	TEST_CLK_10M : OUT std_logic;
	ETH1_TX_P : OUT std_logic;
	ETH1_TX_N : OUT std_logic;
	TEST_CLK_50M : OUT std_logic;
	TEST_CLK_100M : OUT std_logic;
	ETH0_TX_P : OUT std_logic;
	KEY1 : IN std_logic;
	ETH0_TX_N : OUT std_logic;
	ETH0_RX_P : IN std_logic;
	ETH0_RX_N : IN std_logic;
	ETH1_RX_P : IN std_logic;
	ETH1_RX_N : IN std_logic
	);
END FPGACode;

-- Design Ports Information
-- LED1	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TEST_CLK_20M	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_PLL_LOCK	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_CLK_10M	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ETH1_TX_P	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_TX_N	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TEST_CLK_50M	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_CLK_100M	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ETH0_TX_P	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH0_TX_N	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_RX_P	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH0_RX_N	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH1_RX_P	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH1_RX_N	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MAIN_CLK	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FPGACode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_TEST_CLK_20M : std_logic;
SIGNAL ww_MAIN_CLK : std_logic;
SIGNAL ww_TEST_PLL_LOCK : std_logic;
SIGNAL ww_TEST_CLK_10M : std_logic;
SIGNAL ww_ETH1_TX_P : std_logic;
SIGNAL ww_ETH1_TX_N : std_logic;
SIGNAL ww_TEST_CLK_50M : std_logic;
SIGNAL ww_TEST_CLK_100M : std_logic;
SIGNAL ww_ETH0_TX_P : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_ETH0_TX_N : std_logic;
SIGNAL ww_ETH0_RX_P : std_logic;
SIGNAL ww_ETH0_RX_N : std_logic;
SIGNAL ww_ETH1_RX_P : std_logic;
SIGNAL ww_ETH1_RX_N : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_100M_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \ETH0_RX_P~input_o\ : std_logic;
SIGNAL \ETH0_RX_N~input_o\ : std_logic;
SIGNAL \ETH1_RX_P~input_o\ : std_logic;
SIGNAL \ETH1_RX_N~input_o\ : std_logic;
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
SIGNAL \MAIN_CLK~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_100M_outclk\ : std_logic;
SIGNAL \inst12|c_mnc_gen|r_phase~0_combout\ : std_logic;
SIGNAL \inst12|c_mnc_gen|r_phase~_Duplicate_2_q\ : std_logic;
SIGNAL \inst12|c_mnc_gen|r_phase~q\ : std_logic;
SIGNAL \inst12|c_mnc_gen|r_phase~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst12|c_mnc_gen|ALT_INV_r_phase~_Duplicate_2_q\ : std_logic;

BEGIN

LED1 <= ww_LED1;
ww_RESET <= RESET;
TEST_CLK_20M <= ww_TEST_CLK_20M;
ww_MAIN_CLK <= MAIN_CLK;
TEST_PLL_LOCK <= ww_TEST_PLL_LOCK;
TEST_CLK_10M <= ww_TEST_CLK_10M;
ETH1_TX_P <= ww_ETH1_TX_P;
ETH1_TX_N <= ww_ETH1_TX_N;
TEST_CLK_50M <= ww_TEST_CLK_50M;
TEST_CLK_100M <= ww_TEST_CLK_100M;
ETH0_TX_P <= ww_ETH0_TX_P;
ww_KEY1 <= KEY1;
ETH0_TX_N <= ww_ETH0_TX_N;
ww_ETH0_RX_P <= ETH0_RX_P;
ww_ETH0_RX_N <= ETH0_RX_N;
ww_ETH1_RX_P <= ETH1_RX_P;
ww_ETH1_RX_N <= ETH1_RX_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \MAIN_CLK~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(3));

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_100M_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(2));

\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(1));
\inst12|c_mnc_gen|ALT_INV_r_phase~_Duplicate_2_q\ <= NOT \inst12|c_mnc_gen|r_phase~_Duplicate_2_q\;

-- Location: IOOBUF_X34_Y9_N16
\LED1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESET~input_o\,
	devoe => ww_devoe,
	o => ww_LED1);

-- Location: IOOBUF_X13_Y0_N16
\TEST_CLK_20M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_TEST_CLK_20M);

-- Location: IOOBUF_X1_Y0_N16
\TEST_PLL_LOCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_locked\,
	devoe => ww_devoe,
	o => ww_TEST_PLL_LOCK);

-- Location: IOOBUF_X16_Y0_N2
\TEST_CLK_10M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_TEST_CLK_10M);

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
	o => ww_ETH1_TX_P);

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
	o => ww_ETH1_TX_N);

-- Location: IOOBUF_X16_Y24_N16
\TEST_CLK_50M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_TEST_CLK_50M);

-- Location: IOOBUF_X5_Y0_N23
\TEST_CLK_100M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_100M_outclk\,
	devoe => ww_devoe,
	o => ww_TEST_CLK_100M);

-- Location: IOOBUF_X34_Y3_N23
\ETH0_TX_P~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|c_mnc_gen|r_phase~q\,
	devoe => ww_devoe,
	o => ww_ETH0_TX_P);

-- Location: IOOBUF_X34_Y4_N23
\ETH0_TX_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|c_mnc_gen|r_phase~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_ETH0_TX_N);

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
\inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 15,
	c1_initial => 1,
	c1_low => 15,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 6,
	c2_initial => 1,
	c2_low => 6,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 30,
	c3_initial => 1,
	c3_low => 30,
	c3_mode => "even",
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
	clk1_counter => "c2",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "c1",
	clk2_divide_by => 5,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 2,
	clk2_phase_shift => "0",
	clk3_counter => "c3",
	clk3_divide_by => 5,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 1,
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
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \inst|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_PLL1E0
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_100M\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_100M_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_100M_outclk\);

-- Location: LCCOMB_X33_Y3_N8
\inst12|c_mnc_gen|r_phase~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|c_mnc_gen|r_phase~0_combout\ = !\inst12|c_mnc_gen|r_phase~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|c_mnc_gen|r_phase~_Duplicate_2_q\,
	combout => \inst12|c_mnc_gen|r_phase~0_combout\);

-- Location: FF_X33_Y3_N9
\inst12|c_mnc_gen|r_phase~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst12|c_mnc_gen|r_phase~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|c_mnc_gen|r_phase~_Duplicate_2_q\);

-- Location: DDIOOUTCELL_X34_Y3_N25
\inst12|c_mnc_gen|r_phase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst12|c_mnc_gen|ALT_INV_r_phase~_Duplicate_2_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|c_mnc_gen|r_phase~q\);

-- Location: DDIOOUTCELL_X34_Y4_N25
\inst12|c_mnc_gen|r_phase~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst12|c_mnc_gen|r_phase~_Duplicate_2_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|c_mnc_gen|r_phase~_Duplicate_1_q\);

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
END structure;


