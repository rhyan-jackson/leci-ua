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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "04/04/2024 10:56:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	AccN IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	overflow : OUT std_logic;
	dataOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END AccN;

ARCHITECTURE structure OF AccN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \accumulator~1_combout\ : std_logic;
SIGNAL \accumulator[0]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \accumulator~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \accumulator~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \accumulator~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \accumulator~6_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \accumulator~7_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \accumulator~8_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \accumulator~9_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \accumulator~0_combout\ : std_logic;
SIGNAL \overflow~0_combout\ : std_logic;
SIGNAL \overflow~reg0_q\ : std_logic;
SIGNAL \dataOut[0]~reg0_q\ : std_logic;
SIGNAL \dataOut[1]~reg0_q\ : std_logic;
SIGNAL \dataOut[2]~reg0_q\ : std_logic;
SIGNAL \dataOut[3]~reg0_q\ : std_logic;
SIGNAL \dataOut[4]~reg0_q\ : std_logic;
SIGNAL \dataOut[5]~reg0_q\ : std_logic;
SIGNAL \dataOut[6]~reg0_q\ : std_logic;
SIGNAL \dataOut[7]~reg0_q\ : std_logic;
SIGNAL accumulator : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_dataIn <= dataIn;
overflow <= ww_overflow;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \overflow~reg0_q\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\dataIn[0]~input_o\ & (accumulator(0) $ (VCC))) # (!\dataIn[0]~input_o\ & (accumulator(0) & VCC))
-- \Add0~1\ = CARRY((\dataIn[0]~input_o\ & accumulator(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => accumulator(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\accumulator~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~1_combout\ = (\Add0~0_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~1_combout\);

\accumulator[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator[0]~2_combout\ = (\enable~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \accumulator[0]~2_combout\);

\accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~1_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(0));

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\dataIn[1]~input_o\ & ((accumulator(1) & (\Add0~1\ & VCC)) # (!accumulator(1) & (!\Add0~1\)))) # (!\dataIn[1]~input_o\ & ((accumulator(1) & (!\Add0~1\)) # (!accumulator(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\dataIn[1]~input_o\ & (!accumulator(1) & !\Add0~1\)) # (!\dataIn[1]~input_o\ & ((!\Add0~1\) # (!accumulator(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => accumulator(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\accumulator~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~3_combout\ = (\Add0~2_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~3_combout\);

\accumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~3_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(1));

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\dataIn[2]~input_o\ $ (accumulator(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\dataIn[2]~input_o\ & ((accumulator(2)) # (!\Add0~3\))) # (!\dataIn[2]~input_o\ & (accumulator(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => accumulator(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\accumulator~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~4_combout\ = (\Add0~4_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~4_combout\);

\accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~4_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(2));

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\dataIn[3]~input_o\ & ((accumulator(3) & (\Add0~5\ & VCC)) # (!accumulator(3) & (!\Add0~5\)))) # (!\dataIn[3]~input_o\ & ((accumulator(3) & (!\Add0~5\)) # (!accumulator(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\dataIn[3]~input_o\ & (!accumulator(3) & !\Add0~5\)) # (!\dataIn[3]~input_o\ & ((!\Add0~5\) # (!accumulator(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datab => accumulator(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\accumulator~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~5_combout\ = (\Add0~6_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~5_combout\);

\accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~5_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(3));

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\dataIn[4]~input_o\ $ (accumulator(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\dataIn[4]~input_o\ & ((accumulator(4)) # (!\Add0~7\))) # (!\dataIn[4]~input_o\ & (accumulator(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datab => accumulator(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\accumulator~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~6_combout\ = (\Add0~8_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~6_combout\);

\accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~6_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(4));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\dataIn[5]~input_o\ & ((accumulator(5) & (\Add0~9\ & VCC)) # (!accumulator(5) & (!\Add0~9\)))) # (!\dataIn[5]~input_o\ & ((accumulator(5) & (!\Add0~9\)) # (!accumulator(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\dataIn[5]~input_o\ & (!accumulator(5) & !\Add0~9\)) # (!\dataIn[5]~input_o\ & ((!\Add0~9\) # (!accumulator(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => accumulator(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\accumulator~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~7_combout\ = (\Add0~10_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~7_combout\);

\accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~7_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(5));

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\dataIn[6]~input_o\ $ (accumulator(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\dataIn[6]~input_o\ & ((accumulator(6)) # (!\Add0~11\))) # (!\dataIn[6]~input_o\ & (accumulator(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => accumulator(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\accumulator~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~8_combout\ = (\Add0~12_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~8_combout\);

\accumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~8_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(6));

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\dataIn[7]~input_o\ & ((accumulator(7) & (\Add0~13\ & VCC)) # (!accumulator(7) & (!\Add0~13\)))) # (!\dataIn[7]~input_o\ & ((accumulator(7) & (!\Add0~13\)) # (!accumulator(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\dataIn[7]~input_o\ & (!accumulator(7) & !\Add0~13\)) # (!\dataIn[7]~input_o\ & ((!\Add0~13\) # (!accumulator(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => accumulator(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\accumulator~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~9_combout\ = (\Add0~14_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \reset~input_o\,
	combout => \accumulator~9_combout\);

\accumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~9_combout\,
	ena => \accumulator[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(7));

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = accumulator(8) $ (!\Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => accumulator(8),
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

\accumulator~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \accumulator~0_combout\ = (!\reset~input_o\ & ((accumulator(8) & ((!\enable~input_o\))) # (!accumulator(8) & (\Add0~16_combout\ & \enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => accumulator(8),
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \accumulator~0_combout\);

\accumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \accumulator~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(8));

\overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \overflow~0_combout\ = (\enable~input_o\ & (accumulator(8) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => accumulator(8),
	datad => \reset~input_o\,
	combout => \overflow~0_combout\);

\overflow~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \overflow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \overflow~reg0_q\);

\dataOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[0]~reg0_q\);

\dataOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[1]~reg0_q\);

\dataOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[2]~reg0_q\);

\dataOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[3]~reg0_q\);

\dataOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[4]~reg0_q\);

\dataOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[5]~reg0_q\);

\dataOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[6]~reg0_q\);

\dataOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => accumulator(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[7]~reg0_q\);

ww_overflow <= \overflow~output_o\;

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


