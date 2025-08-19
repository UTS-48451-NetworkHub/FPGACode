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
-- Generated on "08/19/2025 16:08:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BUFF_OUTPUT_DIFF
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BUFF_OUTPUT_DIFF_vhd_vec_tst IS
END BUFF_OUTPUT_DIFF_vhd_vec_tst;
ARCHITECTURE BUFF_OUTPUT_DIFF_arch OF BUFF_OUTPUT_DIFF_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I : STD_LOGIC;
SIGNAL O_n : STD_LOGIC;
SIGNAL O_p : STD_LOGIC;
COMPONENT BUFF_OUTPUT_DIFF
	PORT (
	I : IN STD_LOGIC;
	O_n : OUT STD_LOGIC;
	O_p : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BUFF_OUTPUT_DIFF
	PORT MAP (
-- list connections between master ports and signals
	I => I,
	O_n => O_n,
	O_p => O_p
	);

-- I
t_prcs_I: PROCESS
BEGIN
LOOP
	I <= '0';
	WAIT FOR 5000 ps;
	I <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I;
END BUFF_OUTPUT_DIFF_arch;
