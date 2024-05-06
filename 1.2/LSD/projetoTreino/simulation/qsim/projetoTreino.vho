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

-- DATE "04/07/2024 19:34:13"

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

ENTITY 	CounterUp12 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END CounterUp12;

ARCHITECTURE structure OF CounterUp12 IS
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
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \s_count[0]~32_combout\ : std_logic;
SIGNAL \s_count[0]~33\ : std_logic;
SIGNAL \s_count[1]~35_combout\ : std_logic;
SIGNAL \s_count[1]~36\ : std_logic;
SIGNAL \s_count[2]~37_combout\ : std_logic;
SIGNAL \s_count[2]~38\ : std_logic;
SIGNAL \s_count[3]~39_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \s_count[3]~40\ : std_logic;
SIGNAL \s_count[4]~41_combout\ : std_logic;
SIGNAL \s_count[4]~42\ : std_logic;
SIGNAL \s_count[5]~43_combout\ : std_logic;
SIGNAL \s_count[5]~44\ : std_logic;
SIGNAL \s_count[6]~45_combout\ : std_logic;
SIGNAL \s_count[6]~46\ : std_logic;
SIGNAL \s_count[7]~47_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \s_count[7]~48\ : std_logic;
SIGNAL \s_count[8]~49_combout\ : std_logic;
SIGNAL \s_count[8]~50\ : std_logic;
SIGNAL \s_count[9]~51_combout\ : std_logic;
SIGNAL \s_count[9]~52\ : std_logic;
SIGNAL \s_count[10]~53_combout\ : std_logic;
SIGNAL \s_count[10]~54\ : std_logic;
SIGNAL \s_count[11]~55_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \s_count[11]~56\ : std_logic;
SIGNAL \s_count[12]~57_combout\ : std_logic;
SIGNAL \s_count[12]~58\ : std_logic;
SIGNAL \s_count[13]~59_combout\ : std_logic;
SIGNAL \s_count[13]~60\ : std_logic;
SIGNAL \s_count[14]~61_combout\ : std_logic;
SIGNAL \s_count[14]~62\ : std_logic;
SIGNAL \s_count[15]~63_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \s_count[15]~64\ : std_logic;
SIGNAL \s_count[16]~65_combout\ : std_logic;
SIGNAL \s_count[16]~66\ : std_logic;
SIGNAL \s_count[17]~67_combout\ : std_logic;
SIGNAL \s_count[17]~68\ : std_logic;
SIGNAL \s_count[18]~69_combout\ : std_logic;
SIGNAL \s_count[18]~70\ : std_logic;
SIGNAL \s_count[19]~71_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \s_count[19]~72\ : std_logic;
SIGNAL \s_count[20]~73_combout\ : std_logic;
SIGNAL \s_count[20]~74\ : std_logic;
SIGNAL \s_count[21]~75_combout\ : std_logic;
SIGNAL \s_count[21]~76\ : std_logic;
SIGNAL \s_count[22]~77_combout\ : std_logic;
SIGNAL \s_count[22]~78\ : std_logic;
SIGNAL \s_count[23]~79_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \s_count[23]~80\ : std_logic;
SIGNAL \s_count[24]~81_combout\ : std_logic;
SIGNAL \s_count[24]~82\ : std_logic;
SIGNAL \s_count[25]~83_combout\ : std_logic;
SIGNAL \s_count[25]~84\ : std_logic;
SIGNAL \s_count[26]~85_combout\ : std_logic;
SIGNAL \s_count[26]~86\ : std_logic;
SIGNAL \s_count[27]~87_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \s_count[27]~88\ : std_logic;
SIGNAL \s_count[28]~89_combout\ : std_logic;
SIGNAL \s_count[28]~90\ : std_logic;
SIGNAL \s_count[29]~91_combout\ : std_logic;
SIGNAL \s_count[29]~92\ : std_logic;
SIGNAL \s_count[30]~93_combout\ : std_logic;
SIGNAL \s_count[30]~94\ : std_logic;
SIGNAL \s_count[31]~95_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_count[19]~34_combout\ : std_logic;
SIGNAL s_count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~32_combout\ = s_count(0) $ (VCC)
-- \s_count[0]~33\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \s_count[0]~32_combout\,
	cout => \s_count[0]~33\);

\s_count[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~35_combout\ = (s_count(1) & (!\s_count[0]~33\)) # (!s_count(1) & ((\s_count[0]~33\) # (GND)))
-- \s_count[1]~36\ = CARRY((!\s_count[0]~33\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \s_count[0]~33\,
	combout => \s_count[1]~35_combout\,
	cout => \s_count[1]~36\);

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[1]~35_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\s_count[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~37_combout\ = (s_count(2) & (\s_count[1]~36\ $ (GND))) # (!s_count(2) & (!\s_count[1]~36\ & VCC))
-- \s_count[2]~38\ = CARRY((s_count(2) & !\s_count[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \s_count[1]~36\,
	combout => \s_count[2]~37_combout\,
	cout => \s_count[2]~38\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[2]~37_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~39_combout\ = (s_count(3) & (!\s_count[2]~38\)) # (!s_count(3) & ((\s_count[2]~38\) # (GND)))
-- \s_count[3]~40\ = CARRY((!\s_count[2]~38\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \s_count[2]~38\,
	combout => \s_count[3]~39_combout\,
	cout => \s_count[3]~40\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[3]~39_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (s_count(0)) # ((s_count(1)) # ((!s_count(3)) # (!s_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(1),
	datac => s_count(2),
	datad => s_count(3),
	combout => \Equal0~0_combout\);

\s_count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~41_combout\ = (s_count(4) & (\s_count[3]~40\ $ (GND))) # (!s_count(4) & (!\s_count[3]~40\ & VCC))
-- \s_count[4]~42\ = CARRY((s_count(4) & !\s_count[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \s_count[3]~40\,
	combout => \s_count[4]~41_combout\,
	cout => \s_count[4]~42\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[4]~41_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\s_count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~43_combout\ = (s_count(5) & (!\s_count[4]~42\)) # (!s_count(5) & ((\s_count[4]~42\) # (GND)))
-- \s_count[5]~44\ = CARRY((!\s_count[4]~42\) # (!s_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \s_count[4]~42\,
	combout => \s_count[5]~43_combout\,
	cout => \s_count[5]~44\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[5]~43_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\s_count[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~45_combout\ = (s_count(6) & (\s_count[5]~44\ $ (GND))) # (!s_count(6) & (!\s_count[5]~44\ & VCC))
-- \s_count[6]~46\ = CARRY((s_count(6) & !\s_count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \s_count[5]~44\,
	combout => \s_count[6]~45_combout\,
	cout => \s_count[6]~46\);

\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[6]~45_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

\s_count[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[7]~47_combout\ = (s_count(7) & (!\s_count[6]~46\)) # (!s_count(7) & ((\s_count[6]~46\) # (GND)))
-- \s_count[7]~48\ = CARRY((!\s_count[6]~46\) # (!s_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \s_count[6]~46\,
	combout => \s_count[7]~47_combout\,
	cout => \s_count[7]~48\);

\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[7]~47_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (s_count(4)) # ((s_count(5)) # ((s_count(6)) # (s_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datab => s_count(5),
	datac => s_count(6),
	datad => s_count(7),
	combout => \Equal0~1_combout\);

\s_count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[8]~49_combout\ = (s_count(8) & (\s_count[7]~48\ $ (GND))) # (!s_count(8) & (!\s_count[7]~48\ & VCC))
-- \s_count[8]~50\ = CARRY((s_count(8) & !\s_count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \s_count[7]~48\,
	combout => \s_count[8]~49_combout\,
	cout => \s_count[8]~50\);

\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[8]~49_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

\s_count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[9]~51_combout\ = (s_count(9) & (!\s_count[8]~50\)) # (!s_count(9) & ((\s_count[8]~50\) # (GND)))
-- \s_count[9]~52\ = CARRY((!\s_count[8]~50\) # (!s_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \s_count[8]~50\,
	combout => \s_count[9]~51_combout\,
	cout => \s_count[9]~52\);

\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[9]~51_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

\s_count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[10]~53_combout\ = (s_count(10) & (\s_count[9]~52\ $ (GND))) # (!s_count(10) & (!\s_count[9]~52\ & VCC))
-- \s_count[10]~54\ = CARRY((s_count(10) & !\s_count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \s_count[9]~52\,
	combout => \s_count[10]~53_combout\,
	cout => \s_count[10]~54\);

\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[10]~53_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

\s_count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[11]~55_combout\ = (s_count(11) & (!\s_count[10]~54\)) # (!s_count(11) & ((\s_count[10]~54\) # (GND)))
-- \s_count[11]~56\ = CARRY((!\s_count[10]~54\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \s_count[10]~54\,
	combout => \s_count[11]~55_combout\,
	cout => \s_count[11]~56\);

\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[11]~55_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (s_count(8)) # ((s_count(9)) # ((s_count(10)) # (s_count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datab => s_count(9),
	datac => s_count(10),
	datad => s_count(11),
	combout => \Equal0~2_combout\);

\s_count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~57_combout\ = (s_count(12) & (\s_count[11]~56\ $ (GND))) # (!s_count(12) & (!\s_count[11]~56\ & VCC))
-- \s_count[12]~58\ = CARRY((s_count(12) & !\s_count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \s_count[11]~56\,
	combout => \s_count[12]~57_combout\,
	cout => \s_count[12]~58\);

\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[12]~57_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

\s_count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[13]~59_combout\ = (s_count(13) & (!\s_count[12]~58\)) # (!s_count(13) & ((\s_count[12]~58\) # (GND)))
-- \s_count[13]~60\ = CARRY((!\s_count[12]~58\) # (!s_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \s_count[12]~58\,
	combout => \s_count[13]~59_combout\,
	cout => \s_count[13]~60\);

\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[13]~59_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

\s_count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[14]~61_combout\ = (s_count(14) & (\s_count[13]~60\ $ (GND))) # (!s_count(14) & (!\s_count[13]~60\ & VCC))
-- \s_count[14]~62\ = CARRY((s_count(14) & !\s_count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \s_count[13]~60\,
	combout => \s_count[14]~61_combout\,
	cout => \s_count[14]~62\);

\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[14]~61_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

\s_count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[15]~63_combout\ = (s_count(15) & (!\s_count[14]~62\)) # (!s_count(15) & ((\s_count[14]~62\) # (GND)))
-- \s_count[15]~64\ = CARRY((!\s_count[14]~62\) # (!s_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	datad => VCC,
	cin => \s_count[14]~62\,
	combout => \s_count[15]~63_combout\,
	cout => \s_count[15]~64\);

\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[15]~63_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (s_count(12)) # ((s_count(13)) # ((s_count(14)) # (s_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datab => s_count(13),
	datac => s_count(14),
	datad => s_count(15),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\s_count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[16]~65_combout\ = (s_count(16) & (\s_count[15]~64\ $ (GND))) # (!s_count(16) & (!\s_count[15]~64\ & VCC))
-- \s_count[16]~66\ = CARRY((s_count(16) & !\s_count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(16),
	datad => VCC,
	cin => \s_count[15]~64\,
	combout => \s_count[16]~65_combout\,
	cout => \s_count[16]~66\);

\s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[16]~65_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(16));

\s_count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[17]~67_combout\ = (s_count(17) & (!\s_count[16]~66\)) # (!s_count(17) & ((\s_count[16]~66\) # (GND)))
-- \s_count[17]~68\ = CARRY((!\s_count[16]~66\) # (!s_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(17),
	datad => VCC,
	cin => \s_count[16]~66\,
	combout => \s_count[17]~67_combout\,
	cout => \s_count[17]~68\);

\s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[17]~67_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(17));

\s_count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[18]~69_combout\ = (s_count(18) & (\s_count[17]~68\ $ (GND))) # (!s_count(18) & (!\s_count[17]~68\ & VCC))
-- \s_count[18]~70\ = CARRY((s_count(18) & !\s_count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datad => VCC,
	cin => \s_count[17]~68\,
	combout => \s_count[18]~69_combout\,
	cout => \s_count[18]~70\);

\s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[18]~69_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(18));

\s_count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[19]~71_combout\ = (s_count(19) & (!\s_count[18]~70\)) # (!s_count(19) & ((\s_count[18]~70\) # (GND)))
-- \s_count[19]~72\ = CARRY((!\s_count[18]~70\) # (!s_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datad => VCC,
	cin => \s_count[18]~70\,
	combout => \s_count[19]~71_combout\,
	cout => \s_count[19]~72\);

\s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[19]~71_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(19));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (s_count(16)) # ((s_count(17)) # ((s_count(18)) # (s_count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(16),
	datab => s_count(17),
	datac => s_count(18),
	datad => s_count(19),
	combout => \Equal0~5_combout\);

\s_count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[20]~73_combout\ = (s_count(20) & (\s_count[19]~72\ $ (GND))) # (!s_count(20) & (!\s_count[19]~72\ & VCC))
-- \s_count[20]~74\ = CARRY((s_count(20) & !\s_count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(20),
	datad => VCC,
	cin => \s_count[19]~72\,
	combout => \s_count[20]~73_combout\,
	cout => \s_count[20]~74\);

\s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[20]~73_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(20));

\s_count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[21]~75_combout\ = (s_count(21) & (!\s_count[20]~74\)) # (!s_count(21) & ((\s_count[20]~74\) # (GND)))
-- \s_count[21]~76\ = CARRY((!\s_count[20]~74\) # (!s_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(21),
	datad => VCC,
	cin => \s_count[20]~74\,
	combout => \s_count[21]~75_combout\,
	cout => \s_count[21]~76\);

\s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[21]~75_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(21));

\s_count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[22]~77_combout\ = (s_count(22) & (\s_count[21]~76\ $ (GND))) # (!s_count(22) & (!\s_count[21]~76\ & VCC))
-- \s_count[22]~78\ = CARRY((s_count(22) & !\s_count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datad => VCC,
	cin => \s_count[21]~76\,
	combout => \s_count[22]~77_combout\,
	cout => \s_count[22]~78\);

\s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[22]~77_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(22));

\s_count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[23]~79_combout\ = (s_count(23) & (!\s_count[22]~78\)) # (!s_count(23) & ((\s_count[22]~78\) # (GND)))
-- \s_count[23]~80\ = CARRY((!\s_count[22]~78\) # (!s_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(23),
	datad => VCC,
	cin => \s_count[22]~78\,
	combout => \s_count[23]~79_combout\,
	cout => \s_count[23]~80\);

\s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[23]~79_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(23));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (s_count(20)) # ((s_count(21)) # ((s_count(22)) # (s_count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(20),
	datab => s_count(21),
	datac => s_count(22),
	datad => s_count(23),
	combout => \Equal0~6_combout\);

\s_count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[24]~81_combout\ = (s_count(24) & (\s_count[23]~80\ $ (GND))) # (!s_count(24) & (!\s_count[23]~80\ & VCC))
-- \s_count[24]~82\ = CARRY((s_count(24) & !\s_count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(24),
	datad => VCC,
	cin => \s_count[23]~80\,
	combout => \s_count[24]~81_combout\,
	cout => \s_count[24]~82\);

\s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[24]~81_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(24));

\s_count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[25]~83_combout\ = (s_count(25) & (!\s_count[24]~82\)) # (!s_count(25) & ((\s_count[24]~82\) # (GND)))
-- \s_count[25]~84\ = CARRY((!\s_count[24]~82\) # (!s_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(25),
	datad => VCC,
	cin => \s_count[24]~82\,
	combout => \s_count[25]~83_combout\,
	cout => \s_count[25]~84\);

\s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[25]~83_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(25));

\s_count[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[26]~85_combout\ = (s_count(26) & (\s_count[25]~84\ $ (GND))) # (!s_count(26) & (!\s_count[25]~84\ & VCC))
-- \s_count[26]~86\ = CARRY((s_count(26) & !\s_count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datad => VCC,
	cin => \s_count[25]~84\,
	combout => \s_count[26]~85_combout\,
	cout => \s_count[26]~86\);

\s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[26]~85_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(26));

\s_count[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[27]~87_combout\ = (s_count(27) & (!\s_count[26]~86\)) # (!s_count(27) & ((\s_count[26]~86\) # (GND)))
-- \s_count[27]~88\ = CARRY((!\s_count[26]~86\) # (!s_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(27),
	datad => VCC,
	cin => \s_count[26]~86\,
	combout => \s_count[27]~87_combout\,
	cout => \s_count[27]~88\);

\s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[27]~87_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(27));

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (s_count(24)) # ((s_count(25)) # ((s_count(26)) # (s_count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(24),
	datab => s_count(25),
	datac => s_count(26),
	datad => s_count(27),
	combout => \Equal0~7_combout\);

\s_count[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[28]~89_combout\ = (s_count(28) & (\s_count[27]~88\ $ (GND))) # (!s_count(28) & (!\s_count[27]~88\ & VCC))
-- \s_count[28]~90\ = CARRY((s_count(28) & !\s_count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(28),
	datad => VCC,
	cin => \s_count[27]~88\,
	combout => \s_count[28]~89_combout\,
	cout => \s_count[28]~90\);

\s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[28]~89_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(28));

\s_count[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[29]~91_combout\ = (s_count(29) & (!\s_count[28]~90\)) # (!s_count(29) & ((\s_count[28]~90\) # (GND)))
-- \s_count[29]~92\ = CARRY((!\s_count[28]~90\) # (!s_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(29),
	datad => VCC,
	cin => \s_count[28]~90\,
	combout => \s_count[29]~91_combout\,
	cout => \s_count[29]~92\);

\s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[29]~91_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(29));

\s_count[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[30]~93_combout\ = (s_count(30) & (\s_count[29]~92\ $ (GND))) # (!s_count(30) & (!\s_count[29]~92\ & VCC))
-- \s_count[30]~94\ = CARRY((s_count(30) & !\s_count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(30),
	datad => VCC,
	cin => \s_count[29]~92\,
	combout => \s_count[30]~93_combout\,
	cout => \s_count[30]~94\);

\s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[30]~93_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(30));

\s_count[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[31]~95_combout\ = s_count(31) $ (\s_count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(31),
	cin => \s_count[30]~94\,
	combout => \s_count[31]~95_combout\);

\s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[31]~95_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(31));

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (s_count(28)) # ((s_count(29)) # ((s_count(30)) # (s_count(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(28),
	datab => s_count(29),
	datac => s_count(30),
	datad => s_count(31),
	combout => \Equal0~8_combout\);

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\) # ((\Equal0~6_combout\) # ((\Equal0~7_combout\) # (\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_count[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[19]~34_combout\ = (\reset~input_o\) # ((!\Equal0~4_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~9_combout\,
	datad => \reset~input_o\,
	combout => \s_count[19]~34_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[0]~32_combout\,
	sclr => \s_count[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


