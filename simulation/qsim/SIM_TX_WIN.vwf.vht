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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/26/2025 22:48:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FPGACode
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FPGACode_vhd_vec_tst IS
END FPGACode_vhd_vec_tst;
ARCHITECTURE FPGACode_arch OF FPGACode_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ETH0_RX_N : STD_LOGIC;
SIGNAL ETH0_RX_P : STD_LOGIC;
SIGNAL ETH0_TX_N : STD_LOGIC;
SIGNAL ETH0_TX_P : STD_LOGIC;
SIGNAL ETH1_RX_N : STD_LOGIC;
SIGNAL ETH1_RX_P : STD_LOGIC;
SIGNAL ETH1_TX_N : STD_LOGIC;
SIGNAL ETH1_TX_P : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL LED1 : STD_LOGIC;
SIGNAL MAIN_CLK : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL TEST_CLK_10M : STD_LOGIC;
SIGNAL TEST_CLK_20M : STD_LOGIC;
SIGNAL TEST_CLK_50M : STD_LOGIC;
SIGNAL TEST_MNC : STD_LOGIC;
SIGNAL TEST_NLP : STD_LOGIC;
SIGNAL TEST_PLL_LOCK : STD_LOGIC;
COMPONENT FPGACode
	PORT (
	ETH0_RX_N : IN STD_LOGIC;
	ETH0_RX_P : IN STD_LOGIC;
	ETH0_TX_N : OUT STD_LOGIC;
	ETH0_TX_P : OUT STD_LOGIC;
	ETH1_RX_N : IN STD_LOGIC;
	ETH1_RX_P : IN STD_LOGIC;
	ETH1_TX_N : OUT STD_LOGIC;
	ETH1_TX_P : OUT STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	LED1 : OUT STD_LOGIC;
	MAIN_CLK : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	TEST_CLK_10M : OUT STD_LOGIC;
	TEST_CLK_20M : OUT STD_LOGIC;
	TEST_CLK_50M : OUT STD_LOGIC;
	TEST_MNC : OUT STD_LOGIC;
	TEST_NLP : OUT STD_LOGIC;
	TEST_PLL_LOCK : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FPGACode
	PORT MAP (
-- list connections between master ports and signals
	ETH0_RX_N => ETH0_RX_N,
	ETH0_RX_P => ETH0_RX_P,
	ETH0_TX_N => ETH0_TX_N,
	ETH0_TX_P => ETH0_TX_P,
	ETH1_RX_N => ETH1_RX_N,
	ETH1_RX_P => ETH1_RX_P,
	ETH1_TX_N => ETH1_TX_N,
	ETH1_TX_P => ETH1_TX_P,
	KEY1 => KEY1,
	LED1 => LED1,
	MAIN_CLK => MAIN_CLK,
	RESET => RESET,
	TEST_CLK_10M => TEST_CLK_10M,
	TEST_CLK_20M => TEST_CLK_20M,
	TEST_CLK_50M => TEST_CLK_50M,
	TEST_MNC => TEST_MNC,
	TEST_NLP => TEST_NLP,
	TEST_PLL_LOCK => TEST_PLL_LOCK
	);

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;

-- MAIN_CLK
t_prcs_MAIN_CLK: PROCESS
BEGIN
LOOP
	MAIN_CLK <= '0';
	WAIT FOR 10000 ps;
	MAIN_CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MAIN_CLK;
END FPGACode_arch;
