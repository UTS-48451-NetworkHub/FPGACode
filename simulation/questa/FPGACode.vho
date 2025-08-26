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

-- DATE "08/26/2025 22:45:41"

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
	ETH0_TX_P : OUT std_logic;
	ETH0_TX_N : OUT std_logic;
	TEST_CLK_50M : OUT std_logic;
	TEST_NLP : OUT std_logic;
	TEST_MNC : OUT std_logic;
	KEY1 : IN std_logic;
	ETH0_RX_P : IN std_logic;
	ETH0_RX_N : IN std_logic;
	ETH1_RX_P : IN std_logic;
	ETH1_RX_N : IN std_logic
	);
END FPGACode;

-- Design Ports Information
-- LED1	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TEST_CLK_20M	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_PLL_LOCK	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_CLK_10M	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ETH1_TX_P	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH1_TX_N	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_TX_P	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ETH0_TX_N	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TEST_CLK_50M	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_NLP	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_MNC	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ETH0_RX_P	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH0_RX_N	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH1_RX_P	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ETH1_RX_N	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_ETH0_TX_P : std_logic;
SIGNAL ww_ETH0_TX_N : std_logic;
SIGNAL ww_TEST_CLK_50M : std_logic;
SIGNAL ww_TEST_NLP : std_logic;
SIGNAL ww_TEST_MNC : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_ETH0_RX_P : std_logic;
SIGNAL ww_ETH0_RX_N : std_logic;
SIGNAL ww_ETH1_RX_P : std_logic;
SIGNAL ww_ETH1_RX_N : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_50M_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_50M_outclk\ : std_logic;
SIGNAL \inst8|r_delay_counter[0]~48_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[1]~16_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[1]~17\ : std_logic;
SIGNAL \inst8|r_delay_counter[2]~18_combout\ : std_logic;
SIGNAL \inst8|r_nlp_int~0_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[2]~19\ : std_logic;
SIGNAL \inst8|r_delay_counter[3]~20_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[3]~21\ : std_logic;
SIGNAL \inst8|r_delay_counter[4]~22_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[4]~23\ : std_logic;
SIGNAL \inst8|r_delay_counter[5]~24_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[5]~25\ : std_logic;
SIGNAL \inst8|r_delay_counter[6]~26_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[6]~27\ : std_logic;
SIGNAL \inst8|r_delay_counter[7]~28_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[7]~29\ : std_logic;
SIGNAL \inst8|r_delay_counter[8]~30_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[8]~31\ : std_logic;
SIGNAL \inst8|r_delay_counter[9]~32_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[9]~33\ : std_logic;
SIGNAL \inst8|r_delay_counter[10]~34_combout\ : std_logic;
SIGNAL \inst8|r_nlp_int~2_combout\ : std_logic;
SIGNAL \inst8|r_nlp_int~1_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[10]~35\ : std_logic;
SIGNAL \inst8|r_delay_counter[11]~36_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[11]~37\ : std_logic;
SIGNAL \inst8|r_delay_counter[12]~38_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[12]~39\ : std_logic;
SIGNAL \inst8|r_delay_counter[13]~40_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[13]~41\ : std_logic;
SIGNAL \inst8|r_delay_counter[14]~42_combout\ : std_logic;
SIGNAL \inst8|r_nlp_int~3_combout\ : std_logic;
SIGNAL \inst8|r_nlp_int~4_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[14]~43\ : std_logic;
SIGNAL \inst8|r_delay_counter[15]~44_combout\ : std_logic;
SIGNAL \inst8|r_delay_counter[15]~45\ : std_logic;
SIGNAL \inst8|r_delay_counter[16]~46_combout\ : std_logic;
SIGNAL \inst8|r_nlp_int~5_combout\ : std_logic;
SIGNAL \inst8|r_nlp_int~q\ : std_logic;
SIGNAL \inst7|r_phase~0_combout\ : std_logic;
SIGNAL \inst7|r_phase~q\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst7|o_MNC_OUT~0_combout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst8|r_delay_counter\ : std_logic_vector(16 DOWNTO 0);

BEGIN

LED1 <= ww_LED1;
ww_RESET <= RESET;
TEST_CLK_20M <= ww_TEST_CLK_20M;
ww_MAIN_CLK <= MAIN_CLK;
TEST_PLL_LOCK <= ww_TEST_PLL_LOCK;
TEST_CLK_10M <= ww_TEST_CLK_10M;
ETH1_TX_P <= ww_ETH1_TX_P;
ETH1_TX_N <= ww_ETH1_TX_N;
ETH0_TX_P <= ww_ETH0_TX_P;
ETH0_TX_N <= ww_ETH0_TX_N;
TEST_CLK_50M <= ww_TEST_CLK_50M;
TEST_NLP <= ww_TEST_NLP;
TEST_MNC <= ww_TEST_MNC;
ww_KEY1 <= KEY1;
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

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_50M_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(2));

\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(1));

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

-- Location: IOOBUF_X23_Y24_N2
\TEST_CLK_20M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_TEST_CLK_20M);

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X1_Y24_N9
\TEST_CLK_10M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_ETH1_TX_N);

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
	o => ww_ETH0_TX_P);

-- Location: IOOBUF_X34_Y4_N23
\ETH0_TX_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ETH0_TX_N);

-- Location: IOOBUF_X5_Y0_N23
\TEST_CLK_50M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_50M_outclk\,
	devoe => ww_devoe,
	o => ww_TEST_CLK_50M);

-- Location: IOOBUF_X7_Y24_N9
\TEST_NLP~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|r_nlp_int~q\,
	devoe => ww_devoe,
	o => ww_TEST_NLP);

-- Location: IOOBUF_X34_Y17_N16
\TEST_MNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|o_MNC_OUT~0_combout\,
	devoe => ww_devoe,
	o => ww_TEST_MNC);

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
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 30,
	c1_initial => 1,
	c1_low => 30,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 15,
	c2_initial => 1,
	c2_low => 15,
	c2_mode => "even",
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
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c2",
	clk1_divide_by => 5,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 2,
	clk1_phase_shift => "0",
	clk2_counter => "c1",
	clk2_divide_by => 5,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
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
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \inst|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

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

-- Location: CLKCTRL_PLL1E0
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_50M\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_50M_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_TEST_CLK_50M_outclk\);

-- Location: LCCOMB_X8_Y17_N26
\inst8|r_delay_counter[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[0]~48_combout\ = !\inst8|r_delay_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|r_delay_counter\(0),
	combout => \inst8|r_delay_counter[0]~48_combout\);

-- Location: FF_X8_Y17_N27
\inst8|r_delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(0));

-- Location: LCCOMB_X9_Y17_N0
\inst8|r_delay_counter[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[1]~16_combout\ = (\inst8|r_delay_counter\(0) & (\inst8|r_delay_counter\(1) $ (VCC))) # (!\inst8|r_delay_counter\(0) & (\inst8|r_delay_counter\(1) & VCC))
-- \inst8|r_delay_counter[1]~17\ = CARRY((\inst8|r_delay_counter\(0) & \inst8|r_delay_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(0),
	datab => \inst8|r_delay_counter\(1),
	datad => VCC,
	combout => \inst8|r_delay_counter[1]~16_combout\,
	cout => \inst8|r_delay_counter[1]~17\);

-- Location: FF_X9_Y17_N1
\inst8|r_delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(1));

-- Location: LCCOMB_X9_Y17_N2
\inst8|r_delay_counter[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[2]~18_combout\ = (\inst8|r_delay_counter\(2) & (!\inst8|r_delay_counter[1]~17\)) # (!\inst8|r_delay_counter\(2) & ((\inst8|r_delay_counter[1]~17\) # (GND)))
-- \inst8|r_delay_counter[2]~19\ = CARRY((!\inst8|r_delay_counter[1]~17\) # (!\inst8|r_delay_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(2),
	datad => VCC,
	cin => \inst8|r_delay_counter[1]~17\,
	combout => \inst8|r_delay_counter[2]~18_combout\,
	cout => \inst8|r_delay_counter[2]~19\);

-- Location: FF_X9_Y17_N3
\inst8|r_delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(2));

-- Location: LCCOMB_X8_Y17_N12
\inst8|r_nlp_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_nlp_int~0_combout\ = (\inst8|r_delay_counter\(0) & (!\inst8|r_nlp_int~q\ & (\inst8|r_delay_counter\(1) & \inst8|r_delay_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(0),
	datab => \inst8|r_nlp_int~q\,
	datac => \inst8|r_delay_counter\(1),
	datad => \inst8|r_delay_counter\(2),
	combout => \inst8|r_nlp_int~0_combout\);

-- Location: LCCOMB_X9_Y17_N4
\inst8|r_delay_counter[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[3]~20_combout\ = (\inst8|r_delay_counter\(3) & (\inst8|r_delay_counter[2]~19\ $ (GND))) # (!\inst8|r_delay_counter\(3) & (!\inst8|r_delay_counter[2]~19\ & VCC))
-- \inst8|r_delay_counter[3]~21\ = CARRY((\inst8|r_delay_counter\(3) & !\inst8|r_delay_counter[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(3),
	datad => VCC,
	cin => \inst8|r_delay_counter[2]~19\,
	combout => \inst8|r_delay_counter[3]~20_combout\,
	cout => \inst8|r_delay_counter[3]~21\);

-- Location: FF_X9_Y17_N5
\inst8|r_delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(3));

-- Location: LCCOMB_X9_Y17_N6
\inst8|r_delay_counter[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[4]~22_combout\ = (\inst8|r_delay_counter\(4) & (!\inst8|r_delay_counter[3]~21\)) # (!\inst8|r_delay_counter\(4) & ((\inst8|r_delay_counter[3]~21\) # (GND)))
-- \inst8|r_delay_counter[4]~23\ = CARRY((!\inst8|r_delay_counter[3]~21\) # (!\inst8|r_delay_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(4),
	datad => VCC,
	cin => \inst8|r_delay_counter[3]~21\,
	combout => \inst8|r_delay_counter[4]~22_combout\,
	cout => \inst8|r_delay_counter[4]~23\);

-- Location: FF_X9_Y17_N7
\inst8|r_delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(4));

-- Location: LCCOMB_X9_Y17_N8
\inst8|r_delay_counter[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[5]~24_combout\ = (\inst8|r_delay_counter\(5) & (\inst8|r_delay_counter[4]~23\ $ (GND))) # (!\inst8|r_delay_counter\(5) & (!\inst8|r_delay_counter[4]~23\ & VCC))
-- \inst8|r_delay_counter[5]~25\ = CARRY((\inst8|r_delay_counter\(5) & !\inst8|r_delay_counter[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(5),
	datad => VCC,
	cin => \inst8|r_delay_counter[4]~23\,
	combout => \inst8|r_delay_counter[5]~24_combout\,
	cout => \inst8|r_delay_counter[5]~25\);

-- Location: FF_X9_Y17_N9
\inst8|r_delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(5));

-- Location: LCCOMB_X9_Y17_N10
\inst8|r_delay_counter[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[6]~26_combout\ = (\inst8|r_delay_counter\(6) & (!\inst8|r_delay_counter[5]~25\)) # (!\inst8|r_delay_counter\(6) & ((\inst8|r_delay_counter[5]~25\) # (GND)))
-- \inst8|r_delay_counter[6]~27\ = CARRY((!\inst8|r_delay_counter[5]~25\) # (!\inst8|r_delay_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(6),
	datad => VCC,
	cin => \inst8|r_delay_counter[5]~25\,
	combout => \inst8|r_delay_counter[6]~26_combout\,
	cout => \inst8|r_delay_counter[6]~27\);

-- Location: FF_X9_Y17_N11
\inst8|r_delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(6));

-- Location: LCCOMB_X9_Y17_N12
\inst8|r_delay_counter[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[7]~28_combout\ = (\inst8|r_delay_counter\(7) & (\inst8|r_delay_counter[6]~27\ $ (GND))) # (!\inst8|r_delay_counter\(7) & (!\inst8|r_delay_counter[6]~27\ & VCC))
-- \inst8|r_delay_counter[7]~29\ = CARRY((\inst8|r_delay_counter\(7) & !\inst8|r_delay_counter[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(7),
	datad => VCC,
	cin => \inst8|r_delay_counter[6]~27\,
	combout => \inst8|r_delay_counter[7]~28_combout\,
	cout => \inst8|r_delay_counter[7]~29\);

-- Location: FF_X9_Y17_N13
\inst8|r_delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(7));

-- Location: LCCOMB_X9_Y17_N14
\inst8|r_delay_counter[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[8]~30_combout\ = (\inst8|r_delay_counter\(8) & (!\inst8|r_delay_counter[7]~29\)) # (!\inst8|r_delay_counter\(8) & ((\inst8|r_delay_counter[7]~29\) # (GND)))
-- \inst8|r_delay_counter[8]~31\ = CARRY((!\inst8|r_delay_counter[7]~29\) # (!\inst8|r_delay_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(8),
	datad => VCC,
	cin => \inst8|r_delay_counter[7]~29\,
	combout => \inst8|r_delay_counter[8]~30_combout\,
	cout => \inst8|r_delay_counter[8]~31\);

-- Location: FF_X9_Y17_N15
\inst8|r_delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(8));

-- Location: LCCOMB_X9_Y17_N16
\inst8|r_delay_counter[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[9]~32_combout\ = (\inst8|r_delay_counter\(9) & (\inst8|r_delay_counter[8]~31\ $ (GND))) # (!\inst8|r_delay_counter\(9) & (!\inst8|r_delay_counter[8]~31\ & VCC))
-- \inst8|r_delay_counter[9]~33\ = CARRY((\inst8|r_delay_counter\(9) & !\inst8|r_delay_counter[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(9),
	datad => VCC,
	cin => \inst8|r_delay_counter[8]~31\,
	combout => \inst8|r_delay_counter[9]~32_combout\,
	cout => \inst8|r_delay_counter[9]~33\);

-- Location: FF_X9_Y17_N17
\inst8|r_delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(9));

-- Location: LCCOMB_X9_Y17_N18
\inst8|r_delay_counter[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[10]~34_combout\ = (\inst8|r_delay_counter\(10) & (!\inst8|r_delay_counter[9]~33\)) # (!\inst8|r_delay_counter\(10) & ((\inst8|r_delay_counter[9]~33\) # (GND)))
-- \inst8|r_delay_counter[10]~35\ = CARRY((!\inst8|r_delay_counter[9]~33\) # (!\inst8|r_delay_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(10),
	datad => VCC,
	cin => \inst8|r_delay_counter[9]~33\,
	combout => \inst8|r_delay_counter[10]~34_combout\,
	cout => \inst8|r_delay_counter[10]~35\);

-- Location: FF_X9_Y17_N19
\inst8|r_delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(10));

-- Location: LCCOMB_X8_Y17_N24
\inst8|r_nlp_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_nlp_int~2_combout\ = (\inst8|r_delay_counter\(10) & (\inst8|r_delay_counter\(8) & (\inst8|r_delay_counter\(7) & \inst8|r_delay_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(10),
	datab => \inst8|r_delay_counter\(8),
	datac => \inst8|r_delay_counter\(7),
	datad => \inst8|r_delay_counter\(9),
	combout => \inst8|r_nlp_int~2_combout\);

-- Location: LCCOMB_X8_Y17_N6
\inst8|r_nlp_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_nlp_int~1_combout\ = (\inst8|r_delay_counter\(4) & (\inst8|r_delay_counter\(6) & (\inst8|r_delay_counter\(5) & \inst8|r_delay_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(4),
	datab => \inst8|r_delay_counter\(6),
	datac => \inst8|r_delay_counter\(5),
	datad => \inst8|r_delay_counter\(3),
	combout => \inst8|r_nlp_int~1_combout\);

-- Location: LCCOMB_X9_Y17_N20
\inst8|r_delay_counter[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[11]~36_combout\ = (\inst8|r_delay_counter\(11) & (\inst8|r_delay_counter[10]~35\ $ (GND))) # (!\inst8|r_delay_counter\(11) & (!\inst8|r_delay_counter[10]~35\ & VCC))
-- \inst8|r_delay_counter[11]~37\ = CARRY((\inst8|r_delay_counter\(11) & !\inst8|r_delay_counter[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(11),
	datad => VCC,
	cin => \inst8|r_delay_counter[10]~35\,
	combout => \inst8|r_delay_counter[11]~36_combout\,
	cout => \inst8|r_delay_counter[11]~37\);

-- Location: FF_X9_Y17_N21
\inst8|r_delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[11]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(11));

-- Location: LCCOMB_X9_Y17_N22
\inst8|r_delay_counter[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[12]~38_combout\ = (\inst8|r_delay_counter\(12) & (!\inst8|r_delay_counter[11]~37\)) # (!\inst8|r_delay_counter\(12) & ((\inst8|r_delay_counter[11]~37\) # (GND)))
-- \inst8|r_delay_counter[12]~39\ = CARRY((!\inst8|r_delay_counter[11]~37\) # (!\inst8|r_delay_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(12),
	datad => VCC,
	cin => \inst8|r_delay_counter[11]~37\,
	combout => \inst8|r_delay_counter[12]~38_combout\,
	cout => \inst8|r_delay_counter[12]~39\);

-- Location: FF_X9_Y17_N23
\inst8|r_delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(12));

-- Location: LCCOMB_X9_Y17_N24
\inst8|r_delay_counter[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[13]~40_combout\ = (\inst8|r_delay_counter\(13) & (\inst8|r_delay_counter[12]~39\ $ (GND))) # (!\inst8|r_delay_counter\(13) & (!\inst8|r_delay_counter[12]~39\ & VCC))
-- \inst8|r_delay_counter[13]~41\ = CARRY((\inst8|r_delay_counter\(13) & !\inst8|r_delay_counter[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(13),
	datad => VCC,
	cin => \inst8|r_delay_counter[12]~39\,
	combout => \inst8|r_delay_counter[13]~40_combout\,
	cout => \inst8|r_delay_counter[13]~41\);

-- Location: FF_X9_Y17_N25
\inst8|r_delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[13]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(13));

-- Location: LCCOMB_X9_Y17_N26
\inst8|r_delay_counter[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[14]~42_combout\ = (\inst8|r_delay_counter\(14) & (!\inst8|r_delay_counter[13]~41\)) # (!\inst8|r_delay_counter\(14) & ((\inst8|r_delay_counter[13]~41\) # (GND)))
-- \inst8|r_delay_counter[14]~43\ = CARRY((!\inst8|r_delay_counter[13]~41\) # (!\inst8|r_delay_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(14),
	datad => VCC,
	cin => \inst8|r_delay_counter[13]~41\,
	combout => \inst8|r_delay_counter[14]~42_combout\,
	cout => \inst8|r_delay_counter[14]~43\);

-- Location: FF_X9_Y17_N27
\inst8|r_delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(14));

-- Location: LCCOMB_X8_Y17_N10
\inst8|r_nlp_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_nlp_int~3_combout\ = (\inst8|r_delay_counter\(13) & (\inst8|r_delay_counter\(14) & (\inst8|r_delay_counter\(11) & \inst8|r_delay_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(13),
	datab => \inst8|r_delay_counter\(14),
	datac => \inst8|r_delay_counter\(11),
	datad => \inst8|r_delay_counter\(12),
	combout => \inst8|r_nlp_int~3_combout\);

-- Location: LCCOMB_X8_Y17_N28
\inst8|r_nlp_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_nlp_int~4_combout\ = (\inst8|r_nlp_int~0_combout\ & (\inst8|r_nlp_int~2_combout\ & (\inst8|r_nlp_int~1_combout\ & \inst8|r_nlp_int~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_nlp_int~0_combout\,
	datab => \inst8|r_nlp_int~2_combout\,
	datac => \inst8|r_nlp_int~1_combout\,
	datad => \inst8|r_nlp_int~3_combout\,
	combout => \inst8|r_nlp_int~4_combout\);

-- Location: LCCOMB_X9_Y17_N28
\inst8|r_delay_counter[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[15]~44_combout\ = (\inst8|r_delay_counter\(15) & (\inst8|r_delay_counter[14]~43\ $ (GND))) # (!\inst8|r_delay_counter\(15) & (!\inst8|r_delay_counter[14]~43\ & VCC))
-- \inst8|r_delay_counter[15]~45\ = CARRY((\inst8|r_delay_counter\(15) & !\inst8|r_delay_counter[14]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_delay_counter\(15),
	datad => VCC,
	cin => \inst8|r_delay_counter[14]~43\,
	combout => \inst8|r_delay_counter[15]~44_combout\,
	cout => \inst8|r_delay_counter[15]~45\);

-- Location: FF_X9_Y17_N29
\inst8|r_delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(15));

-- Location: LCCOMB_X9_Y17_N30
\inst8|r_delay_counter[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_delay_counter[16]~46_combout\ = \inst8|r_delay_counter\(16) $ (\inst8|r_delay_counter[15]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|r_delay_counter\(16),
	cin => \inst8|r_delay_counter[15]~45\,
	combout => \inst8|r_delay_counter[16]~46_combout\);

-- Location: FF_X9_Y17_N31
\inst8|r_delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_delay_counter[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_delay_counter\(16));

-- Location: LCCOMB_X8_Y17_N0
\inst8|r_nlp_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|r_nlp_int~5_combout\ = (\inst8|r_nlp_int~4_combout\ & (\inst8|r_delay_counter\(16) & \inst8|r_delay_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|r_nlp_int~4_combout\,
	datac => \inst8|r_delay_counter\(16),
	datad => \inst8|r_delay_counter\(15),
	combout => \inst8|r_nlp_int~5_combout\);

-- Location: FF_X8_Y17_N1
\inst8|r_nlp_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst8|r_nlp_int~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|r_nlp_int~q\);

-- Location: LCCOMB_X32_Y12_N8
\inst7|r_phase~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|r_phase~0_combout\ = !\inst7|r_phase~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|r_phase~q\,
	combout => \inst7|r_phase~0_combout\);

-- Location: FF_X32_Y12_N9
\inst7|r_phase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst7|r_phase~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|r_phase~q\);

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

-- Location: LCCOMB_X33_Y12_N0
\inst7|o_MNC_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|o_MNC_OUT~0_combout\ = \inst7|r_phase~q\ $ (\KEY1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_phase~q\,
	datad => \KEY1~input_o\,
	combout => \inst7|o_MNC_OUT~0_combout\);

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


