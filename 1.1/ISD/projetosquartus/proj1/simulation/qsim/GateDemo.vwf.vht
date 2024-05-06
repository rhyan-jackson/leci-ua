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
-- Generated on "10/25/2023 21:40:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          out25
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY out25_vhd_vec_tst IS
END out25_vhd_vec_tst;
ARCHITECTURE out25_arch OF out25_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in1 : STD_LOGIC;
SIGNAL in2 : STD_LOGIC;
SIGNAL out1 : STD_LOGIC;
COMPONENT out25
	PORT (
	in1 : IN STD_LOGIC;
	in2 : IN STD_LOGIC;
	out1 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : out25
	PORT MAP (
-- list connections between master ports and signals
	in1 => in1,
	in2 => in2,
	out1 => out1
	);

-- in1
t_prcs_in1: PROCESS
BEGIN
	in1 <= '0';
	WAIT FOR 50000 ps;
	in1 <= '1';
	WAIT FOR 50000 ps;
	in1 <= '0';
WAIT;
END PROCESS t_prcs_in1;

-- in2
t_prcs_in2: PROCESS
BEGIN
	in2 <= '0';
	WAIT FOR 20000 ps;
	in2 <= '1';
	WAIT FOR 60000 ps;
	in2 <= '0';
WAIT;
END PROCESS t_prcs_in2;
END out25_arch;
