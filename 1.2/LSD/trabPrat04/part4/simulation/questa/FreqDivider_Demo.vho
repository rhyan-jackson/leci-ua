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

-- DATE "04/02/2024 09:43:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \fd|s_counter[0]~31_combout\ : std_logic;
SIGNAL \fd|s_counter[0]~32\ : std_logic;
SIGNAL \fd|s_counter[1]~33_combout\ : std_logic;
SIGNAL \fd|s_counter[1]~34\ : std_logic;
SIGNAL \fd|s_counter[2]~35_combout\ : std_logic;
SIGNAL \fd|s_counter[2]~36\ : std_logic;
SIGNAL \fd|s_counter[3]~37_combout\ : std_logic;
SIGNAL \fd|s_counter[3]~38\ : std_logic;
SIGNAL \fd|s_counter[4]~39_combout\ : std_logic;
SIGNAL \fd|s_counter[4]~40\ : std_logic;
SIGNAL \fd|s_counter[5]~41_combout\ : std_logic;
SIGNAL \fd|s_counter[5]~42\ : std_logic;
SIGNAL \fd|s_counter[6]~43_combout\ : std_logic;
SIGNAL \fd|s_counter[6]~44\ : std_logic;
SIGNAL \fd|s_counter[7]~45_combout\ : std_logic;
SIGNAL \fd|s_counter[7]~46\ : std_logic;
SIGNAL \fd|s_counter[8]~47_combout\ : std_logic;
SIGNAL \fd|s_counter[8]~48\ : std_logic;
SIGNAL \fd|s_counter[9]~49_combout\ : std_logic;
SIGNAL \fd|s_counter[9]~50\ : std_logic;
SIGNAL \fd|s_counter[10]~51_combout\ : std_logic;
SIGNAL \fd|s_counter[10]~52\ : std_logic;
SIGNAL \fd|s_counter[11]~53_combout\ : std_logic;
SIGNAL \fd|s_counter[11]~54\ : std_logic;
SIGNAL \fd|s_counter[12]~55_combout\ : std_logic;
SIGNAL \fd|s_counter[12]~56\ : std_logic;
SIGNAL \fd|s_counter[13]~57_combout\ : std_logic;
SIGNAL \fd|s_counter[13]~58\ : std_logic;
SIGNAL \fd|s_counter[14]~59_combout\ : std_logic;
SIGNAL \fd|s_counter[14]~60\ : std_logic;
SIGNAL \fd|s_counter[15]~61_combout\ : std_logic;
SIGNAL \fd|Equal0~7_combout\ : std_logic;
SIGNAL \fd|s_counter[15]~62\ : std_logic;
SIGNAL \fd|s_counter[16]~63_combout\ : std_logic;
SIGNAL \fd|s_counter[16]~64\ : std_logic;
SIGNAL \fd|s_counter[17]~65_combout\ : std_logic;
SIGNAL \fd|s_counter[17]~66\ : std_logic;
SIGNAL \fd|s_counter[18]~67_combout\ : std_logic;
SIGNAL \fd|s_counter[18]~68\ : std_logic;
SIGNAL \fd|s_counter[19]~69_combout\ : std_logic;
SIGNAL \fd|s_counter[19]~70\ : std_logic;
SIGNAL \fd|s_counter[20]~71_combout\ : std_logic;
SIGNAL \fd|s_counter[20]~72\ : std_logic;
SIGNAL \fd|s_counter[21]~73_combout\ : std_logic;
SIGNAL \fd|s_counter[21]~74\ : std_logic;
SIGNAL \fd|s_counter[22]~75_combout\ : std_logic;
SIGNAL \fd|s_counter[22]~76\ : std_logic;
SIGNAL \fd|s_counter[23]~77_combout\ : std_logic;
SIGNAL \fd|s_counter[23]~78\ : std_logic;
SIGNAL \fd|s_counter[24]~79_combout\ : std_logic;
SIGNAL \fd|Equal0~8_combout\ : std_logic;
SIGNAL \fd|Equal0~9_combout\ : std_logic;
SIGNAL \fd|s_counter[24]~80\ : std_logic;
SIGNAL \fd|s_counter[25]~81_combout\ : std_logic;
SIGNAL \fd|s_counter[25]~82\ : std_logic;
SIGNAL \fd|s_counter[26]~83_combout\ : std_logic;
SIGNAL \fd|s_counter[26]~84\ : std_logic;
SIGNAL \fd|s_counter[27]~85_combout\ : std_logic;
SIGNAL \fd|s_counter[27]~86\ : std_logic;
SIGNAL \fd|s_counter[28]~87_combout\ : std_logic;
SIGNAL \fd|s_counter[28]~88\ : std_logic;
SIGNAL \fd|s_counter[29]~89_combout\ : std_logic;
SIGNAL \fd|s_counter[29]~90\ : std_logic;
SIGNAL \fd|s_counter[30]~91_combout\ : std_logic;
SIGNAL \fd|Equal0~5_combout\ : std_logic;
SIGNAL \fd|Equal0~1_combout\ : std_logic;
SIGNAL \fd|Equal0~3_combout\ : std_logic;
SIGNAL \fd|Equal0~0_combout\ : std_logic;
SIGNAL \fd|Equal0~2_combout\ : std_logic;
SIGNAL \fd|Equal0~4_combout\ : std_logic;
SIGNAL \fd|Equal0~6_combout\ : std_logic;
SIGNAL \fd|process_0~0_combout\ : std_logic;
SIGNAL \fd|clkOut~0_combout\ : std_logic;
SIGNAL \fd|clkOut~1_combout\ : std_logic;
SIGNAL \fd|clkOut~2_combout\ : std_logic;
SIGNAL \fd|clkOut~3_combout\ : std_logic;
SIGNAL \fd|clkOut~q\ : std_logic;
SIGNAL \fd|s_counter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X77_Y67_N2
\fd|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[0]~31_combout\ = \fd|s_counter\(0) $ (VCC)
-- \fd|s_counter[0]~32\ = CARRY(\fd|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(0),
	datad => VCC,
	combout => \fd|s_counter[0]~31_combout\,
	cout => \fd|s_counter[0]~32\);

-- Location: FF_X77_Y67_N3
\fd|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[0]~31_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(0));

-- Location: LCCOMB_X77_Y67_N4
\fd|s_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[1]~33_combout\ = (\fd|s_counter\(1) & (!\fd|s_counter[0]~32\)) # (!\fd|s_counter\(1) & ((\fd|s_counter[0]~32\) # (GND)))
-- \fd|s_counter[1]~34\ = CARRY((!\fd|s_counter[0]~32\) # (!\fd|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(1),
	datad => VCC,
	cin => \fd|s_counter[0]~32\,
	combout => \fd|s_counter[1]~33_combout\,
	cout => \fd|s_counter[1]~34\);

-- Location: FF_X77_Y67_N5
\fd|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[1]~33_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(1));

-- Location: LCCOMB_X77_Y67_N6
\fd|s_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[2]~35_combout\ = (\fd|s_counter\(2) & (\fd|s_counter[1]~34\ $ (GND))) # (!\fd|s_counter\(2) & (!\fd|s_counter[1]~34\ & VCC))
-- \fd|s_counter[2]~36\ = CARRY((\fd|s_counter\(2) & !\fd|s_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(2),
	datad => VCC,
	cin => \fd|s_counter[1]~34\,
	combout => \fd|s_counter[2]~35_combout\,
	cout => \fd|s_counter[2]~36\);

-- Location: FF_X77_Y67_N7
\fd|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[2]~35_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(2));

-- Location: LCCOMB_X77_Y67_N8
\fd|s_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[3]~37_combout\ = (\fd|s_counter\(3) & (!\fd|s_counter[2]~36\)) # (!\fd|s_counter\(3) & ((\fd|s_counter[2]~36\) # (GND)))
-- \fd|s_counter[3]~38\ = CARRY((!\fd|s_counter[2]~36\) # (!\fd|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(3),
	datad => VCC,
	cin => \fd|s_counter[2]~36\,
	combout => \fd|s_counter[3]~37_combout\,
	cout => \fd|s_counter[3]~38\);

-- Location: FF_X77_Y67_N9
\fd|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[3]~37_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(3));

-- Location: LCCOMB_X77_Y67_N10
\fd|s_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[4]~39_combout\ = (\fd|s_counter\(4) & (\fd|s_counter[3]~38\ $ (GND))) # (!\fd|s_counter\(4) & (!\fd|s_counter[3]~38\ & VCC))
-- \fd|s_counter[4]~40\ = CARRY((\fd|s_counter\(4) & !\fd|s_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(4),
	datad => VCC,
	cin => \fd|s_counter[3]~38\,
	combout => \fd|s_counter[4]~39_combout\,
	cout => \fd|s_counter[4]~40\);

-- Location: FF_X77_Y67_N11
\fd|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[4]~39_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(4));

-- Location: LCCOMB_X77_Y67_N12
\fd|s_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[5]~41_combout\ = (\fd|s_counter\(5) & (!\fd|s_counter[4]~40\)) # (!\fd|s_counter\(5) & ((\fd|s_counter[4]~40\) # (GND)))
-- \fd|s_counter[5]~42\ = CARRY((!\fd|s_counter[4]~40\) # (!\fd|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(5),
	datad => VCC,
	cin => \fd|s_counter[4]~40\,
	combout => \fd|s_counter[5]~41_combout\,
	cout => \fd|s_counter[5]~42\);

-- Location: FF_X77_Y67_N13
\fd|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[5]~41_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(5));

-- Location: LCCOMB_X77_Y67_N14
\fd|s_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[6]~43_combout\ = (\fd|s_counter\(6) & (\fd|s_counter[5]~42\ $ (GND))) # (!\fd|s_counter\(6) & (!\fd|s_counter[5]~42\ & VCC))
-- \fd|s_counter[6]~44\ = CARRY((\fd|s_counter\(6) & !\fd|s_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(6),
	datad => VCC,
	cin => \fd|s_counter[5]~42\,
	combout => \fd|s_counter[6]~43_combout\,
	cout => \fd|s_counter[6]~44\);

-- Location: FF_X77_Y67_N15
\fd|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[6]~43_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(6));

-- Location: LCCOMB_X77_Y67_N16
\fd|s_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[7]~45_combout\ = (\fd|s_counter\(7) & (!\fd|s_counter[6]~44\)) # (!\fd|s_counter\(7) & ((\fd|s_counter[6]~44\) # (GND)))
-- \fd|s_counter[7]~46\ = CARRY((!\fd|s_counter[6]~44\) # (!\fd|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(7),
	datad => VCC,
	cin => \fd|s_counter[6]~44\,
	combout => \fd|s_counter[7]~45_combout\,
	cout => \fd|s_counter[7]~46\);

-- Location: FF_X77_Y67_N17
\fd|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[7]~45_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(7));

-- Location: LCCOMB_X77_Y67_N18
\fd|s_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[8]~47_combout\ = (\fd|s_counter\(8) & (\fd|s_counter[7]~46\ $ (GND))) # (!\fd|s_counter\(8) & (!\fd|s_counter[7]~46\ & VCC))
-- \fd|s_counter[8]~48\ = CARRY((\fd|s_counter\(8) & !\fd|s_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(8),
	datad => VCC,
	cin => \fd|s_counter[7]~46\,
	combout => \fd|s_counter[8]~47_combout\,
	cout => \fd|s_counter[8]~48\);

-- Location: FF_X77_Y67_N19
\fd|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[8]~47_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(8));

-- Location: LCCOMB_X77_Y67_N20
\fd|s_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[9]~49_combout\ = (\fd|s_counter\(9) & (!\fd|s_counter[8]~48\)) # (!\fd|s_counter\(9) & ((\fd|s_counter[8]~48\) # (GND)))
-- \fd|s_counter[9]~50\ = CARRY((!\fd|s_counter[8]~48\) # (!\fd|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(9),
	datad => VCC,
	cin => \fd|s_counter[8]~48\,
	combout => \fd|s_counter[9]~49_combout\,
	cout => \fd|s_counter[9]~50\);

-- Location: FF_X77_Y67_N21
\fd|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[9]~49_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(9));

-- Location: LCCOMB_X77_Y67_N22
\fd|s_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[10]~51_combout\ = (\fd|s_counter\(10) & (\fd|s_counter[9]~50\ $ (GND))) # (!\fd|s_counter\(10) & (!\fd|s_counter[9]~50\ & VCC))
-- \fd|s_counter[10]~52\ = CARRY((\fd|s_counter\(10) & !\fd|s_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(10),
	datad => VCC,
	cin => \fd|s_counter[9]~50\,
	combout => \fd|s_counter[10]~51_combout\,
	cout => \fd|s_counter[10]~52\);

-- Location: FF_X77_Y67_N23
\fd|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[10]~51_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(10));

-- Location: LCCOMB_X77_Y67_N24
\fd|s_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[11]~53_combout\ = (\fd|s_counter\(11) & (!\fd|s_counter[10]~52\)) # (!\fd|s_counter\(11) & ((\fd|s_counter[10]~52\) # (GND)))
-- \fd|s_counter[11]~54\ = CARRY((!\fd|s_counter[10]~52\) # (!\fd|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(11),
	datad => VCC,
	cin => \fd|s_counter[10]~52\,
	combout => \fd|s_counter[11]~53_combout\,
	cout => \fd|s_counter[11]~54\);

-- Location: FF_X77_Y67_N25
\fd|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[11]~53_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(11));

-- Location: LCCOMB_X77_Y67_N26
\fd|s_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[12]~55_combout\ = (\fd|s_counter\(12) & (\fd|s_counter[11]~54\ $ (GND))) # (!\fd|s_counter\(12) & (!\fd|s_counter[11]~54\ & VCC))
-- \fd|s_counter[12]~56\ = CARRY((\fd|s_counter\(12) & !\fd|s_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(12),
	datad => VCC,
	cin => \fd|s_counter[11]~54\,
	combout => \fd|s_counter[12]~55_combout\,
	cout => \fd|s_counter[12]~56\);

-- Location: FF_X77_Y67_N27
\fd|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[12]~55_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(12));

-- Location: LCCOMB_X77_Y67_N28
\fd|s_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[13]~57_combout\ = (\fd|s_counter\(13) & (!\fd|s_counter[12]~56\)) # (!\fd|s_counter\(13) & ((\fd|s_counter[12]~56\) # (GND)))
-- \fd|s_counter[13]~58\ = CARRY((!\fd|s_counter[12]~56\) # (!\fd|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(13),
	datad => VCC,
	cin => \fd|s_counter[12]~56\,
	combout => \fd|s_counter[13]~57_combout\,
	cout => \fd|s_counter[13]~58\);

-- Location: FF_X77_Y67_N29
\fd|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[13]~57_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(13));

-- Location: LCCOMB_X77_Y67_N30
\fd|s_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[14]~59_combout\ = (\fd|s_counter\(14) & (\fd|s_counter[13]~58\ $ (GND))) # (!\fd|s_counter\(14) & (!\fd|s_counter[13]~58\ & VCC))
-- \fd|s_counter[14]~60\ = CARRY((\fd|s_counter\(14) & !\fd|s_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(14),
	datad => VCC,
	cin => \fd|s_counter[13]~58\,
	combout => \fd|s_counter[14]~59_combout\,
	cout => \fd|s_counter[14]~60\);

-- Location: FF_X77_Y67_N31
\fd|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[14]~59_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(14));

-- Location: LCCOMB_X77_Y66_N0
\fd|s_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[15]~61_combout\ = (\fd|s_counter\(15) & (!\fd|s_counter[14]~60\)) # (!\fd|s_counter\(15) & ((\fd|s_counter[14]~60\) # (GND)))
-- \fd|s_counter[15]~62\ = CARRY((!\fd|s_counter[14]~60\) # (!\fd|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(15),
	datad => VCC,
	cin => \fd|s_counter[14]~60\,
	combout => \fd|s_counter[15]~61_combout\,
	cout => \fd|s_counter[15]~62\);

-- Location: FF_X77_Y66_N1
\fd|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[15]~61_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(15));

-- Location: LCCOMB_X76_Y66_N8
\fd|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~7_combout\ = (\fd|s_counter\(5) & (!\fd|s_counter\(15) & (\fd|s_counter\(14) & !\fd|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(5),
	datab => \fd|s_counter\(15),
	datac => \fd|s_counter\(14),
	datad => \fd|s_counter\(10),
	combout => \fd|Equal0~7_combout\);

-- Location: LCCOMB_X77_Y66_N2
\fd|s_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[16]~63_combout\ = (\fd|s_counter\(16) & (\fd|s_counter[15]~62\ $ (GND))) # (!\fd|s_counter\(16) & (!\fd|s_counter[15]~62\ & VCC))
-- \fd|s_counter[16]~64\ = CARRY((\fd|s_counter\(16) & !\fd|s_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(16),
	datad => VCC,
	cin => \fd|s_counter[15]~62\,
	combout => \fd|s_counter[16]~63_combout\,
	cout => \fd|s_counter[16]~64\);

-- Location: FF_X77_Y66_N3
\fd|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[16]~63_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(16));

-- Location: LCCOMB_X77_Y66_N4
\fd|s_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[17]~65_combout\ = (\fd|s_counter\(17) & (!\fd|s_counter[16]~64\)) # (!\fd|s_counter\(17) & ((\fd|s_counter[16]~64\) # (GND)))
-- \fd|s_counter[17]~66\ = CARRY((!\fd|s_counter[16]~64\) # (!\fd|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(17),
	datad => VCC,
	cin => \fd|s_counter[16]~64\,
	combout => \fd|s_counter[17]~65_combout\,
	cout => \fd|s_counter[17]~66\);

-- Location: FF_X77_Y66_N5
\fd|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[17]~65_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(17));

-- Location: LCCOMB_X77_Y66_N6
\fd|s_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[18]~67_combout\ = (\fd|s_counter\(18) & (\fd|s_counter[17]~66\ $ (GND))) # (!\fd|s_counter\(18) & (!\fd|s_counter[17]~66\ & VCC))
-- \fd|s_counter[18]~68\ = CARRY((\fd|s_counter\(18) & !\fd|s_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(18),
	datad => VCC,
	cin => \fd|s_counter[17]~66\,
	combout => \fd|s_counter[18]~67_combout\,
	cout => \fd|s_counter[18]~68\);

-- Location: FF_X77_Y66_N7
\fd|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[18]~67_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(18));

-- Location: LCCOMB_X77_Y66_N8
\fd|s_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[19]~69_combout\ = (\fd|s_counter\(19) & (!\fd|s_counter[18]~68\)) # (!\fd|s_counter\(19) & ((\fd|s_counter[18]~68\) # (GND)))
-- \fd|s_counter[19]~70\ = CARRY((!\fd|s_counter[18]~68\) # (!\fd|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(19),
	datad => VCC,
	cin => \fd|s_counter[18]~68\,
	combout => \fd|s_counter[19]~69_combout\,
	cout => \fd|s_counter[19]~70\);

-- Location: FF_X77_Y66_N9
\fd|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[19]~69_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(19));

-- Location: LCCOMB_X77_Y66_N10
\fd|s_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[20]~71_combout\ = (\fd|s_counter\(20) & (\fd|s_counter[19]~70\ $ (GND))) # (!\fd|s_counter\(20) & (!\fd|s_counter[19]~70\ & VCC))
-- \fd|s_counter[20]~72\ = CARRY((\fd|s_counter\(20) & !\fd|s_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(20),
	datad => VCC,
	cin => \fd|s_counter[19]~70\,
	combout => \fd|s_counter[20]~71_combout\,
	cout => \fd|s_counter[20]~72\);

-- Location: FF_X77_Y66_N11
\fd|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[20]~71_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(20));

-- Location: LCCOMB_X77_Y66_N12
\fd|s_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[21]~73_combout\ = (\fd|s_counter\(21) & (!\fd|s_counter[20]~72\)) # (!\fd|s_counter\(21) & ((\fd|s_counter[20]~72\) # (GND)))
-- \fd|s_counter[21]~74\ = CARRY((!\fd|s_counter[20]~72\) # (!\fd|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(21),
	datad => VCC,
	cin => \fd|s_counter[20]~72\,
	combout => \fd|s_counter[21]~73_combout\,
	cout => \fd|s_counter[21]~74\);

-- Location: FF_X77_Y66_N13
\fd|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[21]~73_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(21));

-- Location: LCCOMB_X77_Y66_N14
\fd|s_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[22]~75_combout\ = (\fd|s_counter\(22) & (\fd|s_counter[21]~74\ $ (GND))) # (!\fd|s_counter\(22) & (!\fd|s_counter[21]~74\ & VCC))
-- \fd|s_counter[22]~76\ = CARRY((\fd|s_counter\(22) & !\fd|s_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(22),
	datad => VCC,
	cin => \fd|s_counter[21]~74\,
	combout => \fd|s_counter[22]~75_combout\,
	cout => \fd|s_counter[22]~76\);

-- Location: FF_X77_Y66_N15
\fd|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[22]~75_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(22));

-- Location: LCCOMB_X77_Y66_N16
\fd|s_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[23]~77_combout\ = (\fd|s_counter\(23) & (!\fd|s_counter[22]~76\)) # (!\fd|s_counter\(23) & ((\fd|s_counter[22]~76\) # (GND)))
-- \fd|s_counter[23]~78\ = CARRY((!\fd|s_counter[22]~76\) # (!\fd|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(23),
	datad => VCC,
	cin => \fd|s_counter[22]~76\,
	combout => \fd|s_counter[23]~77_combout\,
	cout => \fd|s_counter[23]~78\);

-- Location: FF_X77_Y66_N17
\fd|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[23]~77_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(23));

-- Location: LCCOMB_X77_Y66_N18
\fd|s_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[24]~79_combout\ = (\fd|s_counter\(24) & (\fd|s_counter[23]~78\ $ (GND))) # (!\fd|s_counter\(24) & (!\fd|s_counter[23]~78\ & VCC))
-- \fd|s_counter[24]~80\ = CARRY((\fd|s_counter\(24) & !\fd|s_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(24),
	datad => VCC,
	cin => \fd|s_counter[23]~78\,
	combout => \fd|s_counter[24]~79_combout\,
	cout => \fd|s_counter[24]~80\);

-- Location: FF_X77_Y66_N19
\fd|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[24]~79_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(24));

-- Location: LCCOMB_X76_Y66_N18
\fd|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~8_combout\ = (\fd|s_counter\(16) & (\fd|s_counter\(22) & (!\fd|s_counter\(17) & !\fd|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(16),
	datab => \fd|s_counter\(22),
	datac => \fd|s_counter\(17),
	datad => \fd|s_counter\(23),
	combout => \fd|Equal0~8_combout\);

-- Location: LCCOMB_X76_Y66_N4
\fd|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~9_combout\ = (\fd|s_counter\(24) & \fd|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(24),
	datad => \fd|Equal0~8_combout\,
	combout => \fd|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y66_N20
\fd|s_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[25]~81_combout\ = (\fd|s_counter\(25) & (!\fd|s_counter[24]~80\)) # (!\fd|s_counter\(25) & ((\fd|s_counter[24]~80\) # (GND)))
-- \fd|s_counter[25]~82\ = CARRY((!\fd|s_counter[24]~80\) # (!\fd|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(25),
	datad => VCC,
	cin => \fd|s_counter[24]~80\,
	combout => \fd|s_counter[25]~81_combout\,
	cout => \fd|s_counter[25]~82\);

-- Location: FF_X77_Y66_N21
\fd|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[25]~81_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(25));

-- Location: LCCOMB_X77_Y66_N22
\fd|s_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[26]~83_combout\ = (\fd|s_counter\(26) & (\fd|s_counter[25]~82\ $ (GND))) # (!\fd|s_counter\(26) & (!\fd|s_counter[25]~82\ & VCC))
-- \fd|s_counter[26]~84\ = CARRY((\fd|s_counter\(26) & !\fd|s_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(26),
	datad => VCC,
	cin => \fd|s_counter[25]~82\,
	combout => \fd|s_counter[26]~83_combout\,
	cout => \fd|s_counter[26]~84\);

-- Location: FF_X77_Y66_N23
\fd|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[26]~83_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(26));

-- Location: LCCOMB_X77_Y66_N24
\fd|s_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[27]~85_combout\ = (\fd|s_counter\(27) & (!\fd|s_counter[26]~84\)) # (!\fd|s_counter\(27) & ((\fd|s_counter[26]~84\) # (GND)))
-- \fd|s_counter[27]~86\ = CARRY((!\fd|s_counter[26]~84\) # (!\fd|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(27),
	datad => VCC,
	cin => \fd|s_counter[26]~84\,
	combout => \fd|s_counter[27]~85_combout\,
	cout => \fd|s_counter[27]~86\);

-- Location: FF_X77_Y66_N25
\fd|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[27]~85_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(27));

-- Location: LCCOMB_X77_Y66_N26
\fd|s_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[28]~87_combout\ = (\fd|s_counter\(28) & (\fd|s_counter[27]~86\ $ (GND))) # (!\fd|s_counter\(28) & (!\fd|s_counter[27]~86\ & VCC))
-- \fd|s_counter[28]~88\ = CARRY((\fd|s_counter\(28) & !\fd|s_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(28),
	datad => VCC,
	cin => \fd|s_counter[27]~86\,
	combout => \fd|s_counter[28]~87_combout\,
	cout => \fd|s_counter[28]~88\);

-- Location: FF_X77_Y66_N27
\fd|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[28]~87_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(28));

-- Location: LCCOMB_X77_Y66_N28
\fd|s_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[29]~89_combout\ = (\fd|s_counter\(29) & (!\fd|s_counter[28]~88\)) # (!\fd|s_counter\(29) & ((\fd|s_counter[28]~88\) # (GND)))
-- \fd|s_counter[29]~90\ = CARRY((!\fd|s_counter[28]~88\) # (!\fd|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd|s_counter\(29),
	datad => VCC,
	cin => \fd|s_counter[28]~88\,
	combout => \fd|s_counter[29]~89_combout\,
	cout => \fd|s_counter[29]~90\);

-- Location: FF_X77_Y66_N29
\fd|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[29]~89_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(29));

-- Location: LCCOMB_X77_Y66_N30
\fd|s_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|s_counter[30]~91_combout\ = \fd|s_counter\(30) $ (!\fd|s_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(30),
	cin => \fd|s_counter[29]~90\,
	combout => \fd|s_counter[30]~91_combout\);

-- Location: FF_X77_Y66_N31
\fd|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|s_counter[30]~91_combout\,
	sclr => \fd|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|s_counter\(30));

-- Location: LCCOMB_X76_Y66_N26
\fd|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~5_combout\ = (!\fd|s_counter\(25) & (!\fd|s_counter\(27) & (!\fd|s_counter\(28) & !\fd|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(25),
	datab => \fd|s_counter\(27),
	datac => \fd|s_counter\(28),
	datad => \fd|s_counter\(26),
	combout => \fd|Equal0~5_combout\);

-- Location: LCCOMB_X76_Y66_N12
\fd|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~1_combout\ = (\fd|s_counter\(4) & (!\fd|s_counter\(6) & (!\fd|s_counter\(7) & !\fd|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(4),
	datab => \fd|s_counter\(6),
	datac => \fd|s_counter\(7),
	datad => \fd|s_counter\(8),
	combout => \fd|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y66_N14
\fd|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~3_combout\ = (\fd|s_counter\(18) & (\fd|s_counter\(19) & (\fd|s_counter\(21) & \fd|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(18),
	datab => \fd|s_counter\(19),
	datac => \fd|s_counter\(21),
	datad => \fd|s_counter\(20),
	combout => \fd|Equal0~3_combout\);

-- Location: LCCOMB_X76_Y66_N22
\fd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~0_combout\ = (\fd|s_counter\(1) & (\fd|s_counter\(3) & (\fd|s_counter\(0) & \fd|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(1),
	datab => \fd|s_counter\(3),
	datac => \fd|s_counter\(0),
	datad => \fd|s_counter\(2),
	combout => \fd|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y67_N0
\fd|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~2_combout\ = (\fd|s_counter\(11) & (!\fd|s_counter\(9) & (\fd|s_counter\(12) & \fd|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(11),
	datab => \fd|s_counter\(9),
	datac => \fd|s_counter\(12),
	datad => \fd|s_counter\(13),
	combout => \fd|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y66_N0
\fd|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~4_combout\ = (\fd|Equal0~1_combout\ & (\fd|Equal0~3_combout\ & (\fd|Equal0~0_combout\ & \fd|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|Equal0~1_combout\,
	datab => \fd|Equal0~3_combout\,
	datac => \fd|Equal0~0_combout\,
	datad => \fd|Equal0~2_combout\,
	combout => \fd|Equal0~4_combout\);

-- Location: LCCOMB_X76_Y66_N24
\fd|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|Equal0~6_combout\ = (!\fd|s_counter\(30) & (!\fd|s_counter\(29) & (\fd|Equal0~5_combout\ & \fd|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(30),
	datab => \fd|s_counter\(29),
	datac => \fd|Equal0~5_combout\,
	datad => \fd|Equal0~4_combout\,
	combout => \fd|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y66_N2
\fd|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|process_0~0_combout\ = (\SW[0]~input_o\) # ((\fd|Equal0~7_combout\ & (\fd|Equal0~9_combout\ & \fd|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \fd|Equal0~7_combout\,
	datac => \fd|Equal0~9_combout\,
	datad => \fd|Equal0~6_combout\,
	combout => \fd|process_0~0_combout\);

-- Location: LCCOMB_X76_Y66_N30
\fd|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~0_combout\ = (!\fd|s_counter\(5) & (!\fd|s_counter\(14) & (\fd|s_counter\(15) & \fd|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(5),
	datab => \fd|s_counter\(14),
	datac => \fd|s_counter\(15),
	datad => \fd|s_counter\(10),
	combout => \fd|clkOut~0_combout\);

-- Location: LCCOMB_X76_Y66_N28
\fd|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~1_combout\ = (\fd|s_counter\(17) & (!\fd|s_counter\(16) & (!\fd|s_counter\(22) & \fd|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|s_counter\(17),
	datab => \fd|s_counter\(16),
	datac => \fd|s_counter\(22),
	datad => \fd|s_counter\(23),
	combout => \fd|clkOut~1_combout\);

-- Location: LCCOMB_X76_Y66_N10
\fd|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~2_combout\ = (\fd|clkOut~0_combout\ & (!\fd|s_counter\(24) & (\fd|clkOut~1_combout\ & \fd|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd|clkOut~0_combout\,
	datab => \fd|s_counter\(24),
	datac => \fd|clkOut~1_combout\,
	datad => \fd|Equal0~6_combout\,
	combout => \fd|clkOut~2_combout\);

-- Location: LCCOMB_X76_Y66_N20
\fd|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd|clkOut~3_combout\ = (!\fd|process_0~0_combout\ & ((\fd|clkOut~q\) # (\fd|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd|process_0~0_combout\,
	datac => \fd|clkOut~q\,
	datad => \fd|clkOut~2_combout\,
	combout => \fd|clkOut~3_combout\);

-- Location: FF_X76_Y66_N21
\fd|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd|clkOut~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


