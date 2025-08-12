-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/12/2025 10:36:39"
                                                             
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
SIGNAL CLK_20M : STD_LOGIC;
SIGNAL CLK_LOCKED : STD_LOGIC;
SIGNAL ETH0_RX_N : STD_LOGIC;
SIGNAL ETH0_RX_P : STD_LOGIC;
SIGNAL MAIN_CLK : STD_LOGIC;
SIGNAL TEST_DIFF_OUT : STD_LOGIC;
COMPONENT FPGACode
	PORT (
	CLK_20M : OUT STD_LOGIC;
	CLK_LOCKED : OUT STD_LOGIC;
	ETH0_RX_N : IN STD_LOGIC;
	ETH0_RX_P : IN STD_LOGIC;
	MAIN_CLK : IN STD_LOGIC;
	TEST_DIFF_OUT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FPGACode
	PORT MAP (
-- list connections between master ports and signals
	CLK_20M => CLK_20M,
	CLK_LOCKED => CLK_LOCKED,
	ETH0_RX_N => ETH0_RX_N,
	ETH0_RX_P => ETH0_RX_P,
	MAIN_CLK => MAIN_CLK,
	TEST_DIFF_OUT => TEST_DIFF_OUT
	);

-- MAIN_CLK
t_prcs_MAIN_CLK: PROCESS
BEGIN
LOOP
	MAIN_CLK <= '0';
	WAIT FOR 20000 ps;
	MAIN_CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MAIN_CLK;

-- ETH0_RX_N
t_prcs_ETH0_RX_N: PROCESS
BEGIN
LOOP
	ETH0_RX_N <= '0';
	WAIT FOR 100000 ps;
	ETH0_RX_N <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ETH0_RX_N;

-- ETH0_RX_P
t_prcs_ETH0_RX_P: PROCESS
BEGIN
	ETH0_RX_P <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 9
	LOOP
		ETH0_RX_P <= '0';
		WAIT FOR 50000 ps;
		ETH0_RX_P <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	ETH0_RX_P <= '0';
WAIT;
END PROCESS t_prcs_ETH0_RX_P;
END FPGACode_arch;
