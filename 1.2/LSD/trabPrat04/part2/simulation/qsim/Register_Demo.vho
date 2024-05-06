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

-- DATE "03/18/2024 21:03:51"

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

ENTITY 	Register8 IS
    PORT (
	clk : IN std_logic;
	set : IN std_logic;
	reset : IN std_logic;
	d : IN std_logic_vector(7 DOWNTO 0);
	q : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Register8;

ARCHITECTURE structure OF Register8 IS
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
SIGNAL ww_set : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ff_0|q~0_combout\ : std_logic;
SIGNAL \ff_0|q~q\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \ff_1|q~0_combout\ : std_logic;
SIGNAL \ff_1|q~q\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \ff_2|q~0_combout\ : std_logic;
SIGNAL \ff_2|q~q\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \ff_3|q~0_combout\ : std_logic;
SIGNAL \ff_3|q~q\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \ff_4|q~0_combout\ : std_logic;
SIGNAL \ff_4|q~q\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \ff_5|q~0_combout\ : std_logic;
SIGNAL \ff_5|q~q\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \ff_6|q~0_combout\ : std_logic;
SIGNAL \ff_6|q~q\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \ff_7|q~0_combout\ : std_logic;
SIGNAL \ff_7|q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_set <= set;
ww_reset <= reset;
ww_d <= d;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_0|q~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_1|q~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_2|q~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_3|q~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_4|q~q\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_5|q~q\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_6|q~q\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_7|q~q\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

\d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\ff_0|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_0|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[0]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_0|q~0_combout\);

\ff_0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_0|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_0|q~q\);

\d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

\ff_1|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_1|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[1]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_1|q~0_combout\);

\ff_1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_1|q~q\);

\d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

\ff_2|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_2|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[2]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_2|q~0_combout\);

\ff_2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_2|q~q\);

\d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

\ff_3|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_3|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[3]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_3|q~0_combout\);

\ff_3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_3|q~q\);

\d[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

\ff_4|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_4|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[4]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_4|q~0_combout\);

\ff_4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_4|q~q\);

\d[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

\ff_5|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_5|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[5]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_5|q~0_combout\);

\ff_5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_5|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_5|q~q\);

\d[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

\ff_6|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_6|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[6]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_6|q~0_combout\);

\ff_6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_6|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_6|q~q\);

\d[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

\ff_7|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff_7|q~0_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\d[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \d[7]~input_o\,
	datad => \reset~input_o\,
	combout => \ff_7|q~0_combout\);

\ff_7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff_7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_7|q~q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;
END structure;


