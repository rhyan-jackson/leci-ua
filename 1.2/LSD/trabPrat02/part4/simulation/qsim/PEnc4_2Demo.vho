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

-- DATE "03/04/2024 16:52:40"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PEnc4_2 IS
    PORT (
	decodedIn : IN std_logic_vector(3 DOWNTO 0);
	encodedOut : BUFFER std_logic_vector(1 DOWNTO 0);
	validOut : BUFFER std_logic
	);
END PEnc4_2;

-- Design Ports Information
-- encodedOut[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedOut[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOut	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PEnc4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decodedIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_encodedOut : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_validOut : std_logic;
SIGNAL \encodedOut[0]~output_o\ : std_logic;
SIGNAL \encodedOut[1]~output_o\ : std_logic;
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \decodedIn[1]~input_o\ : std_logic;
SIGNAL \decodedIn[3]~input_o\ : std_logic;
SIGNAL \decodedIn[2]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \decodedIn[0]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \encodedOut[0]$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \encodedOut[1]~0_combout\ : std_logic;
SIGNAL \encodedOut[1]$latch~combout\ : std_logic;
SIGNAL \validOut~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_decodedIn <= decodedIn;
encodedOut <= ww_encodedOut;
validOut <= ww_validOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y34_N23
\encodedOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut[0]$latch~combout\,
	devoe => ww_devoe,
	o => \encodedOut[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\encodedOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut[1]$latch~combout\,
	devoe => ww_devoe,
	o => \encodedOut[1]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\validOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \validOut~0_combout\,
	devoe => ww_devoe,
	o => \validOut~output_o\);

-- Location: IOIBUF_X0_Y34_N8
\decodedIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(1),
	o => \decodedIn[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\decodedIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(3),
	o => \decodedIn[3]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\decodedIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(2),
	o => \decodedIn[2]~input_o\);

-- Location: LCCOMB_X1_Y34_N12
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\decodedIn[3]~input_o\ & ((\decodedIn[2]~input_o\) # (!\decodedIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[1]~input_o\,
	datab => \decodedIn[3]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \comb~1_combout\);

-- Location: IOIBUF_X0_Y34_N1
\decodedIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(0),
	o => \decodedIn[0]~input_o\);

-- Location: LCCOMB_X1_Y34_N10
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\decodedIn[3]~input_o\ & ((\decodedIn[2]~input_o\) # ((!\decodedIn[1]~input_o\ & \decodedIn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[1]~input_o\,
	datab => \decodedIn[3]~input_o\,
	datac => \decodedIn[0]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X1_Y34_N18
\encodedOut[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[0]$latch~combout\ = (!\comb~0_combout\ & ((\encodedOut[0]$latch~combout\) # (!\comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => \encodedOut[0]$latch~combout\,
	combout => \encodedOut[0]$latch~combout\);

-- Location: LCCOMB_X1_Y34_N6
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\decodedIn[3]~input_o\ & (!\decodedIn[2]~input_o\ & ((\decodedIn[1]~input_o\) # (\decodedIn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[1]~input_o\,
	datab => \decodedIn[3]~input_o\,
	datac => \decodedIn[0]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X1_Y34_N24
\encodedOut[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[1]~0_combout\ = (!\decodedIn[3]~input_o\ & !\decodedIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodedIn[3]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \encodedOut[1]~0_combout\);

-- Location: LCCOMB_X1_Y34_N20
\encodedOut[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[1]$latch~combout\ = (!\comb~2_combout\ & ((\encodedOut[1]$latch~combout\) # (!\encodedOut[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \encodedOut[1]~0_combout\,
	datad => \encodedOut[1]$latch~combout\,
	combout => \encodedOut[1]$latch~combout\);

-- Location: LCCOMB_X1_Y34_N16
\validOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \validOut~0_combout\ = (\decodedIn[1]~input_o\) # ((\decodedIn[3]~input_o\) # ((\decodedIn[0]~input_o\) # (\decodedIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[1]~input_o\,
	datab => \decodedIn[3]~input_o\,
	datac => \decodedIn[0]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \validOut~0_combout\);

ww_encodedOut(0) <= \encodedOut[0]~output_o\;

ww_encodedOut(1) <= \encodedOut[1]~output_o\;

ww_validOut <= \validOut~output_o\;
END structure;


