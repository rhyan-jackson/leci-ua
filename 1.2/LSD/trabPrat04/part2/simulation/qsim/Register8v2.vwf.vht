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
-- Generated on "03/18/2024 21:00:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Register8v2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Register8v2_vhd_vec_tst IS
END Register8v2_vhd_vec_tst;
ARCHITECTURE Register8v2_arch OF Register8v2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL set : STD_LOGIC;
COMPONENT Register8v2
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	set : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Register8v2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	reset => reset,
	set => set
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- d[7]
t_prcs_d_7: PROCESS
BEGIN
	d(7) <= '1';
	WAIT FOR 120000 ps;
	d(7) <= '0';
	WAIT FOR 120000 ps;
	d(7) <= '1';
	WAIT FOR 40000 ps;
	d(7) <= '0';
	WAIT FOR 80000 ps;
	d(7) <= '1';
	WAIT FOR 120000 ps;
	d(7) <= '0';
	WAIT FOR 40000 ps;
	d(7) <= '1';
	WAIT FOR 120000 ps;
	d(7) <= '0';
	WAIT FOR 40000 ps;
	d(7) <= '1';
	WAIT FOR 80000 ps;
	d(7) <= '0';
	WAIT FOR 40000 ps;
	d(7) <= '1';
	WAIT FOR 80000 ps;
	d(7) <= '0';
	WAIT FOR 80000 ps;
	d(7) <= '1';
WAIT;
END PROCESS t_prcs_d_7;
-- d[6]
t_prcs_d_6: PROCESS
BEGIN
	d(6) <= '0';
	WAIT FOR 120000 ps;
	d(6) <= '1';
	WAIT FOR 40000 ps;
	d(6) <= '0';
	WAIT FOR 120000 ps;
	d(6) <= '1';
	WAIT FOR 80000 ps;
	d(6) <= '0';
	WAIT FOR 160000 ps;
	d(6) <= '1';
	WAIT FOR 80000 ps;
	d(6) <= '0';
	WAIT FOR 120000 ps;
	d(6) <= '1';
	WAIT FOR 80000 ps;
	d(6) <= '0';
	WAIT FOR 160000 ps;
	d(6) <= '1';
WAIT;
END PROCESS t_prcs_d_6;
-- d[5]
t_prcs_d_5: PROCESS
BEGIN
	d(5) <= '0';
	WAIT FOR 160000 ps;
	d(5) <= '1';
	WAIT FOR 40000 ps;
	d(5) <= '0';
	WAIT FOR 120000 ps;
	d(5) <= '1';
	WAIT FOR 80000 ps;
	d(5) <= '0';
	WAIT FOR 80000 ps;
	d(5) <= '1';
	WAIT FOR 40000 ps;
	d(5) <= '0';
	WAIT FOR 40000 ps;
	d(5) <= '1';
	WAIT FOR 80000 ps;
	d(5) <= '0';
	WAIT FOR 80000 ps;
	d(5) <= '1';
	WAIT FOR 80000 ps;
	d(5) <= '0';
	WAIT FOR 40000 ps;
	d(5) <= '1';
	WAIT FOR 40000 ps;
	d(5) <= '0';
	WAIT FOR 40000 ps;
	d(5) <= '1';
	WAIT FOR 40000 ps;
	d(5) <= '0';
WAIT;
END PROCESS t_prcs_d_5;
-- d[4]
t_prcs_d_4: PROCESS
BEGIN
	d(4) <= '0';
	WAIT FOR 40000 ps;
	d(4) <= '1';
	WAIT FOR 40000 ps;
	d(4) <= '0';
	WAIT FOR 80000 ps;
	d(4) <= '1';
	WAIT FOR 40000 ps;
	d(4) <= '0';
	WAIT FOR 40000 ps;
	d(4) <= '1';
	WAIT FOR 80000 ps;
	d(4) <= '0';
	WAIT FOR 40000 ps;
	d(4) <= '1';
	WAIT FOR 120000 ps;
	d(4) <= '0';
	WAIT FOR 40000 ps;
	d(4) <= '1';
	WAIT FOR 40000 ps;
	d(4) <= '0';
	WAIT FOR 80000 ps;
	d(4) <= '1';
	WAIT FOR 280000 ps;
	d(4) <= '0';
	WAIT FOR 40000 ps;
	d(4) <= '1';
WAIT;
END PROCESS t_prcs_d_4;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '1';
	WAIT FOR 120000 ps;
	d(3) <= '0';
	WAIT FOR 40000 ps;
	d(3) <= '1';
	WAIT FOR 40000 ps;
	d(3) <= '0';
	WAIT FOR 240000 ps;
	d(3) <= '1';
	WAIT FOR 200000 ps;
	d(3) <= '0';
	WAIT FOR 80000 ps;
	d(3) <= '1';
	WAIT FOR 40000 ps;
	d(3) <= '0';
	WAIT FOR 120000 ps;
	d(3) <= '1';
	WAIT FOR 40000 ps;
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '0';
	WAIT FOR 40000 ps;
	d(2) <= '1';
	WAIT FOR 40000 ps;
	d(2) <= '0';
	WAIT FOR 40000 ps;
	d(2) <= '1';
	WAIT FOR 240000 ps;
	d(2) <= '0';
	WAIT FOR 40000 ps;
	d(2) <= '1';
	WAIT FOR 160000 ps;
	d(2) <= '0';
	WAIT FOR 40000 ps;
	d(2) <= '1';
	WAIT FOR 40000 ps;
	d(2) <= '0';
	WAIT FOR 120000 ps;
	d(2) <= '1';
	WAIT FOR 80000 ps;
	d(2) <= '0';
	WAIT FOR 120000 ps;
	d(2) <= '1';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '0';
	WAIT FOR 80000 ps;
	d(1) <= '1';
	WAIT FOR 160000 ps;
	d(1) <= '0';
	WAIT FOR 40000 ps;
	d(1) <= '1';
	WAIT FOR 40000 ps;
	d(1) <= '0';
	WAIT FOR 80000 ps;
	d(1) <= '1';
	WAIT FOR 80000 ps;
	d(1) <= '0';
	WAIT FOR 40000 ps;
	d(1) <= '1';
	WAIT FOR 120000 ps;
	d(1) <= '0';
	WAIT FOR 40000 ps;
	d(1) <= '1';
	WAIT FOR 120000 ps;
	d(1) <= '0';
	WAIT FOR 160000 ps;
	d(1) <= '1';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= '1';
	WAIT FOR 80000 ps;
	d(0) <= '0';
	WAIT FOR 80000 ps;
	d(0) <= '1';
	WAIT FOR 160000 ps;
	d(0) <= '0';
	WAIT FOR 80000 ps;
	d(0) <= '1';
	WAIT FOR 40000 ps;
	d(0) <= '0';
	WAIT FOR 40000 ps;
	d(0) <= '1';
	WAIT FOR 120000 ps;
	d(0) <= '0';
	WAIT FOR 200000 ps;
	d(0) <= '1';
	WAIT FOR 40000 ps;
	d(0) <= '0';
	WAIT FOR 40000 ps;
	d(0) <= '1';
	WAIT FOR 40000 ps;
	d(0) <= '0';
	WAIT FOR 40000 ps;
	d(0) <= '1';
WAIT;
END PROCESS t_prcs_d_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 210000 ps;
	reset <= '1';
	WAIT FOR 70000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- set
t_prcs_set: PROCESS
BEGIN
	set <= '0';
	WAIT FOR 350000 ps;
	set <= '1';
	WAIT FOR 90000 ps;
	set <= '0';
WAIT;
END PROCESS t_prcs_set;
END Register8v2_arch;
