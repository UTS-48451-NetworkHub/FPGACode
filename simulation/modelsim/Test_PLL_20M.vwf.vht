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
-- Generated on "08/12/2025 09:50:01"
                                                             
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
SIGNAL MAIN_CLK : STD_LOGIC;
COMPONENT FPGACode
	PORT (
	CLK_20M : OUT STD_LOGIC;
	CLK_LOCKED : OUT STD_LOGIC;
	MAIN_CLK : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FPGACode
	PORT MAP (
-- list connections between master ports and signals
	CLK_20M => CLK_20M,
	CLK_LOCKED => CLK_LOCKED,
	MAIN_CLK => MAIN_CLK
	);

-- MAIN_CLK
t_prcs_MAIN_CLK: PROCESS
BEGIN
LOOP
	MAIN_CLK <= '0';
	WAIT FOR 1000000 ps;
	MAIN_CLK <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MAIN_CLK;
END FPGACode_arch;
