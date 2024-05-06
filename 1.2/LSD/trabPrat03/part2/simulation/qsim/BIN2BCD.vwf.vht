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
-- Generated on "03/12/2024 10:00:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin4ToBCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin4ToBCD_vhd_vec_tst IS
END Bin4ToBCD_vhd_vec_tst;
ARCHITECTURE Bin4ToBCD_arch OF Bin4ToBCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcdHigh : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bcdLow : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Bin4ToBCD
	PORT (
	bcdHigh : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bcdLow : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin4ToBCD
	PORT MAP (
-- list connections between master ports and signals
	bcdHigh => bcdHigh,
	bcdLow => bcdLow,
	bIn => bIn
	);
-- bIn[3]
t_prcs_bIn_3: PROCESS
BEGIN
	bIn(3) <= '0';
	WAIT FOR 320000 ps;
	bIn(3) <= '1';
	WAIT FOR 320000 ps;
	bIn(3) <= '0';
	WAIT FOR 320000 ps;
	bIn(3) <= '1';
WAIT;
END PROCESS t_prcs_bIn_3;
-- bIn[2]
t_prcs_bIn_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		bIn(2) <= '0';
		WAIT FOR 160000 ps;
		bIn(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	bIn(2) <= '0';
WAIT;
END PROCESS t_prcs_bIn_2;
-- bIn[1]
t_prcs_bIn_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		bIn(1) <= '0';
		WAIT FOR 80000 ps;
		bIn(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	bIn(1) <= '0';
WAIT;
END PROCESS t_prcs_bIn_1;
-- bIn[0]
t_prcs_bIn_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		bIn(0) <= '0';
		WAIT FOR 40000 ps;
		bIn(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	bIn(0) <= '0';
WAIT;
END PROCESS t_prcs_bIn_0;
END Bin4ToBCD_arch;
