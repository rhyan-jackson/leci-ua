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

-- DATE "04/16/2024 11:38:06"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \KEY[0]~padout\ : std_logic;
SIGNAL \KEY[1]~padout\ : std_logic;
SIGNAL \KEY[2]~padout\ : std_logic;
SIGNAL \KEY[3]~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[0]~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL SW : std_logic_vector(1 DOWNTO 0);

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

ENTITY 	miniProjeto IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(4 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0)
	);
END miniProjeto;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF miniProjeto IS
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
SIGNAL ww_LEDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[0]~25_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[14]~54\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[15]~55_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[15]~56\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[16]~57_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[16]~58\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[17]~59_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[17]~60\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[18]~61_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[18]~62\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[19]~63_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[19]~64\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[20]~65_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[20]~66\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[21]~67_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[21]~68\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[22]~69_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[22]~70\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[23]~71_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~5_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~5_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~4_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~6_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[23]~72\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[24]~73_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~2_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~0_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~1_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~3_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|LessThan0~7_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[0]~26\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[1]~27_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[1]~28\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[2]~29_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[2]~30\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[3]~31_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[3]~32\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[4]~33_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[4]~34\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[5]~35_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[5]~36\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[6]~37_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[6]~38\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[7]~39_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[7]~40\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[8]~41_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[8]~42\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[9]~43_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[9]~44\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[10]~45_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[10]~46\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[11]~47_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[11]~48\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[12]~49_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[12]~50\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[13]~51_combout\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[13]~52\ : std_logic;
SIGNAL \blinkForLeds_2hz|s_counter[14]~53_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~2_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~3_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~4_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~0_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~1\ : std_logic;
SIGNAL \pulse_4seg|Add0~2_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~3\ : std_logic;
SIGNAL \pulse_4seg|Add0~4_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~5\ : std_logic;
SIGNAL \pulse_4seg|Add0~6_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~7\ : std_logic;
SIGNAL \pulse_4seg|Add0~8_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~9\ : std_logic;
SIGNAL \pulse_4seg|Add0~10_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~11\ : std_logic;
SIGNAL \pulse_4seg|Add0~12_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~13\ : std_logic;
SIGNAL \pulse_4seg|Add0~14_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~15\ : std_logic;
SIGNAL \pulse_4seg|Add0~16_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~17\ : std_logic;
SIGNAL \pulse_4seg|Add0~18_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~6_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~19\ : std_logic;
SIGNAL \pulse_4seg|Add0~20_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~21\ : std_logic;
SIGNAL \pulse_4seg|Add0~22_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~23\ : std_logic;
SIGNAL \pulse_4seg|Add0~24_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~25\ : std_logic;
SIGNAL \pulse_4seg|Add0~26_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~27\ : std_logic;
SIGNAL \pulse_4seg|Add0~28_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~5_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~29\ : std_logic;
SIGNAL \pulse_4seg|Add0~30_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~4_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~31\ : std_logic;
SIGNAL \pulse_4seg|Add0~32_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~2_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~33\ : std_logic;
SIGNAL \pulse_4seg|Add0~34_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~1_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~35\ : std_logic;
SIGNAL \pulse_4seg|Add0~36_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~37\ : std_logic;
SIGNAL \pulse_4seg|Add0~38_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~0_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~39\ : std_logic;
SIGNAL \pulse_4seg|Add0~40_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~41\ : std_logic;
SIGNAL \pulse_4seg|Add0~42_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~7_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~43\ : std_logic;
SIGNAL \pulse_4seg|Add0~44_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~8_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~45\ : std_logic;
SIGNAL \pulse_4seg|Add0~46_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~9_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~47\ : std_logic;
SIGNAL \pulse_4seg|Add0~48_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~10_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~49\ : std_logic;
SIGNAL \pulse_4seg|Add0~50_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~11_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~51\ : std_logic;
SIGNAL \pulse_4seg|Add0~52_combout\ : std_logic;
SIGNAL \pulse_4seg|Add0~53\ : std_logic;
SIGNAL \pulse_4seg|Add0~54_combout\ : std_logic;
SIGNAL \pulse_4seg|s_cnt~3_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~4_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~6_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~5_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~7_combout\ : std_logic;
SIGNAL \pulse_4seg|Equal0~8_combout\ : std_logic;
SIGNAL \pulse_4seg|pulse~q\ : std_logic;
SIGNAL \control_program4~0_combout\ : std_logic;
SIGNAL \control_program4~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \sync_sw[0]~feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \sync_sw[1]~feeder_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~0_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~1_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~7_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~6_combout\ : std_logic;
SIGNAL \options_mux|dataOut[4]~8_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[0]~26_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[24]~75\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[25]~76_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~14_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~5_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~6_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~7_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~0_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~3_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~1_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~2_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~4_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|LessThan0~8_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[0]~27\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[1]~28_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[1]~29\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[2]~30_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[2]~31\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[3]~32_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[3]~33\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[4]~34_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[4]~35\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[5]~36_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[5]~37\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[6]~38_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[6]~39\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[7]~40_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[7]~41\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[8]~42_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[8]~43\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[9]~44_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[9]~45\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[10]~46_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[10]~47\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[11]~48_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[11]~49\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[12]~50_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[12]~51\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[13]~52_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[13]~53\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[14]~54_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[14]~55\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[15]~56_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[15]~57\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[16]~58_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[16]~59\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[17]~60_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[17]~61\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[18]~62_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[18]~63\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[19]~64_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[19]~65\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[20]~66_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[20]~67\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[21]~68_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[21]~69\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[22]~70_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[22]~71\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[23]~72_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[23]~73\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter[24]~74_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~9_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~10_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~15_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~11_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~12_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~13_combout\ : std_logic;
SIGNAL \options_mux|dataOut[0]~16_combout\ : std_logic;
SIGNAL \sevenSegProgransHEX0|decOut_n~0_combout\ : std_logic;
SIGNAL \options_mux|Equal1~0_combout\ : std_logic;
SIGNAL \options_mux|Equal1~1_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[0]~34_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[2]~39\ : std_logic;
SIGNAL \counter_greenBlink|s_count[3]~40_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~1_cout\ : std_logic;
SIGNAL \pulse_1hz|Add0~3_cout\ : std_logic;
SIGNAL \pulse_1hz|Add0~5_cout\ : std_logic;
SIGNAL \pulse_1hz|Add0~7_cout\ : std_logic;
SIGNAL \pulse_1hz|Add0~9_cout\ : std_logic;
SIGNAL \pulse_1hz|Add0~11_cout\ : std_logic;
SIGNAL \pulse_1hz|Add0~12_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~5_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~13\ : std_logic;
SIGNAL \pulse_1hz|Add0~14_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~15\ : std_logic;
SIGNAL \pulse_1hz|Add0~16_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~17\ : std_logic;
SIGNAL \pulse_1hz|Add0~18_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~19\ : std_logic;
SIGNAL \pulse_1hz|Add0~20_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~21\ : std_logic;
SIGNAL \pulse_1hz|Add0~22_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~4_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~23\ : std_logic;
SIGNAL \pulse_1hz|Add0~24_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~3_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~25\ : std_logic;
SIGNAL \pulse_1hz|Add0~26_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~2_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~27\ : std_logic;
SIGNAL \pulse_1hz|Add0~28_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~1_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~29\ : std_logic;
SIGNAL \pulse_1hz|Add0~30_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~31\ : std_logic;
SIGNAL \pulse_1hz|Add0~32_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~0_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~33\ : std_logic;
SIGNAL \pulse_1hz|Add0~34_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~35\ : std_logic;
SIGNAL \pulse_1hz|Add0~36_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~6_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~37\ : std_logic;
SIGNAL \pulse_1hz|Add0~38_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~7_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~39\ : std_logic;
SIGNAL \pulse_1hz|Add0~40_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~8_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~41\ : std_logic;
SIGNAL \pulse_1hz|Add0~42_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~9_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~43\ : std_logic;
SIGNAL \pulse_1hz|Add0~44_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~10_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~45\ : std_logic;
SIGNAL \pulse_1hz|Add0~46_combout\ : std_logic;
SIGNAL \pulse_1hz|Add0~47\ : std_logic;
SIGNAL \pulse_1hz|Add0~48_combout\ : std_logic;
SIGNAL \pulse_1hz|s_cnt~11_combout\ : std_logic;
SIGNAL \pulse_1hz|Equal0~4_combout\ : std_logic;
SIGNAL \pulse_1hz|Equal0~5_combout\ : std_logic;
SIGNAL \pulse_1hz|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_1hz|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_1hz|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_1hz|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_1hz|Equal0~6_combout\ : std_logic;
SIGNAL \pulse_1hz|pulse~feeder_combout\ : std_logic;
SIGNAL \pulse_1hz|pulse~q\ : std_logic;
SIGNAL \counter_greenBlink|s_count[6]~42_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[3]~41\ : std_logic;
SIGNAL \counter_greenBlink|s_count[4]~43_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[4]~44\ : std_logic;
SIGNAL \counter_greenBlink|s_count[5]~45_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[5]~46\ : std_logic;
SIGNAL \counter_greenBlink|s_count[6]~47_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[6]~48\ : std_logic;
SIGNAL \counter_greenBlink|s_count[7]~49_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[7]~50\ : std_logic;
SIGNAL \counter_greenBlink|s_count[8]~51_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[8]~52\ : std_logic;
SIGNAL \counter_greenBlink|s_count[9]~53_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[9]~54\ : std_logic;
SIGNAL \counter_greenBlink|s_count[10]~55_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[10]~56\ : std_logic;
SIGNAL \counter_greenBlink|s_count[11]~57_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[11]~58\ : std_logic;
SIGNAL \counter_greenBlink|s_count[12]~59_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[12]~60\ : std_logic;
SIGNAL \counter_greenBlink|s_count[13]~61_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[13]~62\ : std_logic;
SIGNAL \counter_greenBlink|s_count[14]~63_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[14]~64\ : std_logic;
SIGNAL \counter_greenBlink|s_count[15]~65_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[15]~66\ : std_logic;
SIGNAL \counter_greenBlink|s_count[16]~67_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[16]~68\ : std_logic;
SIGNAL \counter_greenBlink|s_count[17]~69_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[17]~70\ : std_logic;
SIGNAL \counter_greenBlink|s_count[18]~71_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[18]~72\ : std_logic;
SIGNAL \counter_greenBlink|s_count[19]~73_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~4_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[19]~74\ : std_logic;
SIGNAL \counter_greenBlink|s_count[20]~75_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[20]~76\ : std_logic;
SIGNAL \counter_greenBlink|s_count[21]~77_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[21]~78\ : std_logic;
SIGNAL \counter_greenBlink|s_count[22]~79_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[22]~80\ : std_logic;
SIGNAL \counter_greenBlink|s_count[23]~81_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[23]~82\ : std_logic;
SIGNAL \counter_greenBlink|s_count[24]~83_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[24]~84\ : std_logic;
SIGNAL \counter_greenBlink|s_count[25]~85_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[25]~86\ : std_logic;
SIGNAL \counter_greenBlink|s_count[26]~87_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[26]~88\ : std_logic;
SIGNAL \counter_greenBlink|s_count[27]~89_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[27]~90\ : std_logic;
SIGNAL \counter_greenBlink|s_count[28]~91_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[28]~92\ : std_logic;
SIGNAL \counter_greenBlink|s_count[29]~93_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[29]~94\ : std_logic;
SIGNAL \counter_greenBlink|s_count[30]~95_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[30]~96\ : std_logic;
SIGNAL \counter_greenBlink|s_count[31]~97_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~7_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~6_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~5_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~8_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~1_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~0_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|Equal7~0_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~2_combout\ : std_logic;
SIGNAL \counter_greenBlink|Equal0~3_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[6]~99_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[0]~35\ : std_logic;
SIGNAL \counter_greenBlink|s_count[1]~36_combout\ : std_logic;
SIGNAL \counter_greenBlink|s_count[1]~37\ : std_logic;
SIGNAL \counter_greenBlink|s_count[2]~38_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~10_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~20_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~11_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~21_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~12_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~22_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n[6]~13_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n[3]~14_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n[3]~15_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~16_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~23_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~17_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n~24_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n[6]~18_combout\ : std_logic;
SIGNAL \sevenSegCountGreen|decOut_n[6]~19_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[0]~34_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[0]~35\ : std_logic;
SIGNAL \counter_redBlink|s_count[1]~36_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~1_cout\ : std_logic;
SIGNAL \pulse_2hz|Add0~3_cout\ : std_logic;
SIGNAL \pulse_2hz|Add0~5_cout\ : std_logic;
SIGNAL \pulse_2hz|Add0~7_cout\ : std_logic;
SIGNAL \pulse_2hz|Add0~9_cout\ : std_logic;
SIGNAL \pulse_2hz|Add0~10_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~0_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~11\ : std_logic;
SIGNAL \pulse_2hz|Add0~12_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~13\ : std_logic;
SIGNAL \pulse_2hz|Add0~14_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~15\ : std_logic;
SIGNAL \pulse_2hz|Add0~16_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~17\ : std_logic;
SIGNAL \pulse_2hz|Add0~18_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~19\ : std_logic;
SIGNAL \pulse_2hz|Add0~20_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~9_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~21\ : std_logic;
SIGNAL \pulse_2hz|Add0~22_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~8_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~23\ : std_logic;
SIGNAL \pulse_2hz|Add0~24_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~7_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~25\ : std_logic;
SIGNAL \pulse_2hz|Add0~26_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~6_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~27\ : std_logic;
SIGNAL \pulse_2hz|Add0~28_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~29\ : std_logic;
SIGNAL \pulse_2hz|Add0~30_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~5_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~31\ : std_logic;
SIGNAL \pulse_2hz|Add0~32_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~33\ : std_logic;
SIGNAL \pulse_2hz|Add0~34_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~1_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~35\ : std_logic;
SIGNAL \pulse_2hz|Add0~36_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~2_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~37\ : std_logic;
SIGNAL \pulse_2hz|Add0~38_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~3_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~39\ : std_logic;
SIGNAL \pulse_2hz|Add0~40_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~4_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~41\ : std_logic;
SIGNAL \pulse_2hz|Add0~42_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~10_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~43\ : std_logic;
SIGNAL \pulse_2hz|Add0~44_combout\ : std_logic;
SIGNAL \pulse_2hz|Add0~45\ : std_logic;
SIGNAL \pulse_2hz|Add0~46_combout\ : std_logic;
SIGNAL \pulse_2hz|s_cnt~11_combout\ : std_logic;
SIGNAL \pulse_2hz|Equal0~4_combout\ : std_logic;
SIGNAL \pulse_2hz|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_2hz|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_2hz|Equal0~5_combout\ : std_logic;
SIGNAL \pulse_2hz|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_2hz|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_2hz|Equal0~6_combout\ : std_logic;
SIGNAL \pulse_2hz|pulse~feeder_combout\ : std_logic;
SIGNAL \pulse_2hz|pulse~q\ : std_logic;
SIGNAL \counter_redBlink|s_count[5]~42_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[1]~37\ : std_logic;
SIGNAL \counter_redBlink|s_count[2]~38_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[2]~39\ : std_logic;
SIGNAL \counter_redBlink|s_count[3]~40_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[3]~41\ : std_logic;
SIGNAL \counter_redBlink|s_count[4]~43_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[4]~44\ : std_logic;
SIGNAL \counter_redBlink|s_count[5]~45_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[5]~46\ : std_logic;
SIGNAL \counter_redBlink|s_count[6]~47_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[6]~48\ : std_logic;
SIGNAL \counter_redBlink|s_count[7]~49_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[7]~50\ : std_logic;
SIGNAL \counter_redBlink|s_count[8]~51_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[8]~52\ : std_logic;
SIGNAL \counter_redBlink|s_count[9]~53_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[9]~54\ : std_logic;
SIGNAL \counter_redBlink|s_count[10]~55_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[10]~56\ : std_logic;
SIGNAL \counter_redBlink|s_count[11]~57_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[11]~58\ : std_logic;
SIGNAL \counter_redBlink|s_count[12]~59_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[12]~60\ : std_logic;
SIGNAL \counter_redBlink|s_count[13]~61_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[13]~62\ : std_logic;
SIGNAL \counter_redBlink|s_count[14]~63_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[14]~64\ : std_logic;
SIGNAL \counter_redBlink|s_count[15]~65_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[15]~66\ : std_logic;
SIGNAL \counter_redBlink|s_count[16]~67_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[16]~68\ : std_logic;
SIGNAL \counter_redBlink|s_count[17]~69_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[17]~70\ : std_logic;
SIGNAL \counter_redBlink|s_count[18]~71_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[18]~72\ : std_logic;
SIGNAL \counter_redBlink|s_count[19]~73_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[19]~74\ : std_logic;
SIGNAL \counter_redBlink|s_count[20]~75_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[20]~76\ : std_logic;
SIGNAL \counter_redBlink|s_count[21]~77_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[21]~78\ : std_logic;
SIGNAL \counter_redBlink|s_count[22]~79_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[22]~80\ : std_logic;
SIGNAL \counter_redBlink|s_count[23]~81_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[23]~82\ : std_logic;
SIGNAL \counter_redBlink|s_count[24]~83_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[24]~84\ : std_logic;
SIGNAL \counter_redBlink|s_count[25]~85_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[25]~86\ : std_logic;
SIGNAL \counter_redBlink|s_count[26]~87_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[26]~88\ : std_logic;
SIGNAL \counter_redBlink|s_count[27]~89_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[27]~90\ : std_logic;
SIGNAL \counter_redBlink|s_count[28]~91_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[28]~92\ : std_logic;
SIGNAL \counter_redBlink|s_count[29]~93_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[29]~94\ : std_logic;
SIGNAL \counter_redBlink|s_count[30]~95_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[30]~96\ : std_logic;
SIGNAL \counter_redBlink|s_count[31]~97_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~7_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~6_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~5_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~4_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~8_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~1_combout\ : std_logic;
SIGNAL \sevenSegCountRed|Equal7~0_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~0_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~2_combout\ : std_logic;
SIGNAL \counter_redBlink|Equal0~3_combout\ : std_logic;
SIGNAL \counter_redBlink|s_count[5]~99_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~10_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~20_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~11_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~21_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~12_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~22_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n[6]~13_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n[3]~14_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n[3]~15_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~16_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~23_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~17_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n~24_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n[6]~18_combout\ : std_logic;
SIGNAL \sevenSegCountRed|decOut_n[6]~19_combout\ : std_logic;
SIGNAL \blinkForLeds_1hz|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \pulse_2hz|s_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \pulse_4seg|s_cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \counter_greenBlink|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL sync_sw : std_logic_vector(1 DOWNTO 0);
SIGNAL \pulse_1hz|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \blinkForLeds_2hz|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \counter_redBlink|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \options_mux|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \options_mux|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \sevenSegProgransHEX0|ALT_INV_decOut_n~0_combout\ : std_logic;
SIGNAL \options_mux|ALT_INV_dataOut[4]~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX4 <= ww_HEX4;
HEX6 <= ww_HEX6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\options_mux|ALT_INV_Equal1~1_combout\ <= NOT \options_mux|Equal1~1_combout\;
\options_mux|ALT_INV_Equal1~0_combout\ <= NOT \options_mux|Equal1~0_combout\;
\sevenSegProgransHEX0|ALT_INV_decOut_n~0_combout\ <= NOT \sevenSegProgransHEX0|decOut_n~0_combout\;
\options_mux|ALT_INV_dataOut[4]~7_combout\ <= NOT \options_mux|dataOut[4]~7_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[4]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[4]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[4]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[4]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[0]~16_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[0]~16_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[0]~16_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \options_mux|dataOut[0]~16_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegProgransHEX0|ALT_INV_decOut_n~0_combout\,
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
	i => \options_mux|Equal1~0_combout\,
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
	i => \sevenSegProgransHEX0|ALT_INV_decOut_n~0_combout\,
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
	i => \options_mux|ALT_INV_Equal1~0_combout\,
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
	i => \options_mux|ALT_INV_Equal1~1_combout\,
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
	i => \options_mux|ALT_INV_dataOut[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountGreen|decOut_n~20_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountGreen|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountGreen|decOut_n~22_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountGreen|decOut_n[3]~15_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountGreen|decOut_n~23_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountGreen|decOut_n~24_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountGreen|decOut_n[6]~19_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountRed|decOut_n~20_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountRed|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountRed|decOut_n~22_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountRed|decOut_n[3]~15_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountRed|decOut_n~23_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountRed|decOut_n~24_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegCountRed|decOut_n[6]~19_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

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

-- Location: LCCOMB_X87_Y42_N8
\blinkForLeds_2hz|s_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[0]~25_combout\ = \blinkForLeds_2hz|s_counter\(0) $ (VCC)
-- \blinkForLeds_2hz|s_counter[0]~26\ = CARRY(\blinkForLeds_2hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(0),
	datad => VCC,
	combout => \blinkForLeds_2hz|s_counter[0]~25_combout\,
	cout => \blinkForLeds_2hz|s_counter[0]~26\);

-- Location: LCCOMB_X87_Y41_N4
\blinkForLeds_2hz|s_counter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[14]~53_combout\ = (\blinkForLeds_2hz|s_counter\(14) & (\blinkForLeds_2hz|s_counter[13]~52\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(14) & (!\blinkForLeds_2hz|s_counter[13]~52\ & VCC))
-- \blinkForLeds_2hz|s_counter[14]~54\ = CARRY((\blinkForLeds_2hz|s_counter\(14) & !\blinkForLeds_2hz|s_counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(14),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[13]~52\,
	combout => \blinkForLeds_2hz|s_counter[14]~53_combout\,
	cout => \blinkForLeds_2hz|s_counter[14]~54\);

-- Location: LCCOMB_X87_Y41_N6
\blinkForLeds_2hz|s_counter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[15]~55_combout\ = (\blinkForLeds_2hz|s_counter\(15) & (!\blinkForLeds_2hz|s_counter[14]~54\)) # (!\blinkForLeds_2hz|s_counter\(15) & ((\blinkForLeds_2hz|s_counter[14]~54\) # (GND)))
-- \blinkForLeds_2hz|s_counter[15]~56\ = CARRY((!\blinkForLeds_2hz|s_counter[14]~54\) # (!\blinkForLeds_2hz|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(15),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[14]~54\,
	combout => \blinkForLeds_2hz|s_counter[15]~55_combout\,
	cout => \blinkForLeds_2hz|s_counter[15]~56\);

-- Location: FF_X88_Y42_N29
\blinkForLeds_2hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_2hz|s_counter[15]~55_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(15));

-- Location: LCCOMB_X87_Y41_N8
\blinkForLeds_2hz|s_counter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[16]~57_combout\ = (\blinkForLeds_2hz|s_counter\(16) & (\blinkForLeds_2hz|s_counter[15]~56\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(16) & (!\blinkForLeds_2hz|s_counter[15]~56\ & VCC))
-- \blinkForLeds_2hz|s_counter[16]~58\ = CARRY((\blinkForLeds_2hz|s_counter\(16) & !\blinkForLeds_2hz|s_counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(16),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[15]~56\,
	combout => \blinkForLeds_2hz|s_counter[16]~57_combout\,
	cout => \blinkForLeds_2hz|s_counter[16]~58\);

-- Location: FF_X87_Y41_N9
\blinkForLeds_2hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[16]~57_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(16));

-- Location: LCCOMB_X87_Y41_N10
\blinkForLeds_2hz|s_counter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[17]~59_combout\ = (\blinkForLeds_2hz|s_counter\(17) & (!\blinkForLeds_2hz|s_counter[16]~58\)) # (!\blinkForLeds_2hz|s_counter\(17) & ((\blinkForLeds_2hz|s_counter[16]~58\) # (GND)))
-- \blinkForLeds_2hz|s_counter[17]~60\ = CARRY((!\blinkForLeds_2hz|s_counter[16]~58\) # (!\blinkForLeds_2hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(17),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[16]~58\,
	combout => \blinkForLeds_2hz|s_counter[17]~59_combout\,
	cout => \blinkForLeds_2hz|s_counter[17]~60\);

-- Location: FF_X87_Y41_N11
\blinkForLeds_2hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[17]~59_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(17));

-- Location: LCCOMB_X87_Y41_N12
\blinkForLeds_2hz|s_counter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[18]~61_combout\ = (\blinkForLeds_2hz|s_counter\(18) & (\blinkForLeds_2hz|s_counter[17]~60\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(18) & (!\blinkForLeds_2hz|s_counter[17]~60\ & VCC))
-- \blinkForLeds_2hz|s_counter[18]~62\ = CARRY((\blinkForLeds_2hz|s_counter\(18) & !\blinkForLeds_2hz|s_counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(18),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[17]~60\,
	combout => \blinkForLeds_2hz|s_counter[18]~61_combout\,
	cout => \blinkForLeds_2hz|s_counter[18]~62\);

-- Location: FF_X87_Y41_N13
\blinkForLeds_2hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[18]~61_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(18));

-- Location: LCCOMB_X87_Y41_N14
\blinkForLeds_2hz|s_counter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[19]~63_combout\ = (\blinkForLeds_2hz|s_counter\(19) & (!\blinkForLeds_2hz|s_counter[18]~62\)) # (!\blinkForLeds_2hz|s_counter\(19) & ((\blinkForLeds_2hz|s_counter[18]~62\) # (GND)))
-- \blinkForLeds_2hz|s_counter[19]~64\ = CARRY((!\blinkForLeds_2hz|s_counter[18]~62\) # (!\blinkForLeds_2hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(19),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[18]~62\,
	combout => \blinkForLeds_2hz|s_counter[19]~63_combout\,
	cout => \blinkForLeds_2hz|s_counter[19]~64\);

-- Location: FF_X87_Y41_N15
\blinkForLeds_2hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[19]~63_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(19));

-- Location: LCCOMB_X87_Y41_N16
\blinkForLeds_2hz|s_counter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[20]~65_combout\ = (\blinkForLeds_2hz|s_counter\(20) & (\blinkForLeds_2hz|s_counter[19]~64\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(20) & (!\blinkForLeds_2hz|s_counter[19]~64\ & VCC))
-- \blinkForLeds_2hz|s_counter[20]~66\ = CARRY((\blinkForLeds_2hz|s_counter\(20) & !\blinkForLeds_2hz|s_counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(20),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[19]~64\,
	combout => \blinkForLeds_2hz|s_counter[20]~65_combout\,
	cout => \blinkForLeds_2hz|s_counter[20]~66\);

-- Location: FF_X87_Y41_N17
\blinkForLeds_2hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[20]~65_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(20));

-- Location: LCCOMB_X87_Y41_N18
\blinkForLeds_2hz|s_counter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[21]~67_combout\ = (\blinkForLeds_2hz|s_counter\(21) & (!\blinkForLeds_2hz|s_counter[20]~66\)) # (!\blinkForLeds_2hz|s_counter\(21) & ((\blinkForLeds_2hz|s_counter[20]~66\) # (GND)))
-- \blinkForLeds_2hz|s_counter[21]~68\ = CARRY((!\blinkForLeds_2hz|s_counter[20]~66\) # (!\blinkForLeds_2hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(21),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[20]~66\,
	combout => \blinkForLeds_2hz|s_counter[21]~67_combout\,
	cout => \blinkForLeds_2hz|s_counter[21]~68\);

-- Location: FF_X87_Y41_N19
\blinkForLeds_2hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[21]~67_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(21));

-- Location: LCCOMB_X87_Y41_N20
\blinkForLeds_2hz|s_counter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[22]~69_combout\ = (\blinkForLeds_2hz|s_counter\(22) & (\blinkForLeds_2hz|s_counter[21]~68\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(22) & (!\blinkForLeds_2hz|s_counter[21]~68\ & VCC))
-- \blinkForLeds_2hz|s_counter[22]~70\ = CARRY((\blinkForLeds_2hz|s_counter\(22) & !\blinkForLeds_2hz|s_counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(22),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[21]~68\,
	combout => \blinkForLeds_2hz|s_counter[22]~69_combout\,
	cout => \blinkForLeds_2hz|s_counter[22]~70\);

-- Location: FF_X87_Y41_N21
\blinkForLeds_2hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[22]~69_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(22));

-- Location: LCCOMB_X87_Y41_N22
\blinkForLeds_2hz|s_counter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[23]~71_combout\ = (\blinkForLeds_2hz|s_counter\(23) & (!\blinkForLeds_2hz|s_counter[22]~70\)) # (!\blinkForLeds_2hz|s_counter\(23) & ((\blinkForLeds_2hz|s_counter[22]~70\) # (GND)))
-- \blinkForLeds_2hz|s_counter[23]~72\ = CARRY((!\blinkForLeds_2hz|s_counter[22]~70\) # (!\blinkForLeds_2hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(23),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[22]~70\,
	combout => \blinkForLeds_2hz|s_counter[23]~71_combout\,
	cout => \blinkForLeds_2hz|s_counter[23]~72\);

-- Location: FF_X87_Y41_N23
\blinkForLeds_2hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[23]~71_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(23));

-- Location: LCCOMB_X86_Y42_N26
\blinkForLeds_2hz|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~5_combout\ = (((!\blinkForLeds_2hz|s_counter\(11)) # (!\blinkForLeds_2hz|s_counter\(12))) # (!\blinkForLeds_2hz|s_counter\(14))) # (!\blinkForLeds_2hz|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(13),
	datab => \blinkForLeds_2hz|s_counter\(14),
	datac => \blinkForLeds_2hz|s_counter\(12),
	datad => \blinkForLeds_2hz|s_counter\(11),
	combout => \blinkForLeds_2hz|LessThan0~5_combout\);

-- Location: LCCOMB_X87_Y41_N30
\options_mux|dataOut[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~5_combout\ = (\blinkForLeds_2hz|s_counter\(18) & (\blinkForLeds_2hz|s_counter\(20) & (\blinkForLeds_2hz|s_counter\(19) & \blinkForLeds_2hz|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(18),
	datab => \blinkForLeds_2hz|s_counter\(20),
	datac => \blinkForLeds_2hz|s_counter\(19),
	datad => \blinkForLeds_2hz|s_counter\(21),
	combout => \options_mux|dataOut[4]~5_combout\);

-- Location: LCCOMB_X87_Y41_N28
\blinkForLeds_2hz|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~4_combout\ = (((!\blinkForLeds_2hz|s_counter\(17) & !\blinkForLeds_2hz|s_counter\(16))) # (!\options_mux|dataOut[4]~5_combout\)) # (!\blinkForLeds_2hz|s_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(17),
	datab => \blinkForLeds_2hz|s_counter\(22),
	datac => \options_mux|dataOut[4]~5_combout\,
	datad => \blinkForLeds_2hz|s_counter\(16),
	combout => \blinkForLeds_2hz|LessThan0~4_combout\);

-- Location: LCCOMB_X87_Y42_N0
\blinkForLeds_2hz|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~6_combout\ = (\blinkForLeds_2hz|LessThan0~4_combout\) # ((!\blinkForLeds_2hz|s_counter\(17) & (!\blinkForLeds_2hz|s_counter\(15) & \blinkForLeds_2hz|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(17),
	datab => \blinkForLeds_2hz|s_counter\(15),
	datac => \blinkForLeds_2hz|LessThan0~5_combout\,
	datad => \blinkForLeds_2hz|LessThan0~4_combout\,
	combout => \blinkForLeds_2hz|LessThan0~6_combout\);

-- Location: LCCOMB_X87_Y41_N24
\blinkForLeds_2hz|s_counter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[24]~73_combout\ = \blinkForLeds_2hz|s_counter[23]~72\ $ (!\blinkForLeds_2hz|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \blinkForLeds_2hz|s_counter\(24),
	cin => \blinkForLeds_2hz|s_counter[23]~72\,
	combout => \blinkForLeds_2hz|s_counter[24]~73_combout\);

-- Location: FF_X87_Y41_N25
\blinkForLeds_2hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[24]~73_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(24));

-- Location: LCCOMB_X88_Y42_N30
\blinkForLeds_2hz|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~2_combout\ = (((!\blinkForLeds_2hz|s_counter\(0)) # (!\blinkForLeds_2hz|s_counter\(1))) # (!\blinkForLeds_2hz|s_counter\(5))) # (!\blinkForLeds_2hz|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(2),
	datab => \blinkForLeds_2hz|s_counter\(5),
	datac => \blinkForLeds_2hz|s_counter\(1),
	datad => \blinkForLeds_2hz|s_counter\(0),
	combout => \blinkForLeds_2hz|LessThan0~2_combout\);

-- Location: LCCOMB_X87_Y42_N4
\blinkForLeds_2hz|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~0_combout\ = (!\blinkForLeds_2hz|s_counter\(7) & (!\blinkForLeds_2hz|s_counter\(6) & (!\blinkForLeds_2hz|s_counter\(9) & !\blinkForLeds_2hz|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(7),
	datab => \blinkForLeds_2hz|s_counter\(6),
	datac => \blinkForLeds_2hz|s_counter\(9),
	datad => \blinkForLeds_2hz|s_counter\(8),
	combout => \blinkForLeds_2hz|LessThan0~0_combout\);

-- Location: LCCOMB_X88_Y42_N4
\blinkForLeds_2hz|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~1_combout\ = (!\blinkForLeds_2hz|s_counter\(15) & (!\blinkForLeds_2hz|s_counter\(17) & (\blinkForLeds_2hz|LessThan0~0_combout\ & !\blinkForLeds_2hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(15),
	datab => \blinkForLeds_2hz|s_counter\(17),
	datac => \blinkForLeds_2hz|LessThan0~0_combout\,
	datad => \blinkForLeds_2hz|s_counter\(10),
	combout => \blinkForLeds_2hz|LessThan0~1_combout\);

-- Location: LCCOMB_X87_Y42_N2
\blinkForLeds_2hz|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~3_combout\ = (\blinkForLeds_2hz|LessThan0~1_combout\ & (((\blinkForLeds_2hz|LessThan0~2_combout\) # (!\blinkForLeds_2hz|s_counter\(4))) # (!\blinkForLeds_2hz|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(3),
	datab => \blinkForLeds_2hz|s_counter\(4),
	datac => \blinkForLeds_2hz|LessThan0~2_combout\,
	datad => \blinkForLeds_2hz|LessThan0~1_combout\,
	combout => \blinkForLeds_2hz|LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y42_N6
\blinkForLeds_2hz|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|LessThan0~7_combout\ = (\blinkForLeds_2hz|s_counter\(24) & ((\blinkForLeds_2hz|s_counter\(23)) # ((!\blinkForLeds_2hz|LessThan0~6_combout\ & !\blinkForLeds_2hz|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(23),
	datab => \blinkForLeds_2hz|LessThan0~6_combout\,
	datac => \blinkForLeds_2hz|s_counter\(24),
	datad => \blinkForLeds_2hz|LessThan0~3_combout\,
	combout => \blinkForLeds_2hz|LessThan0~7_combout\);

-- Location: FF_X87_Y42_N9
\blinkForLeds_2hz|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[0]~25_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(0));

-- Location: LCCOMB_X87_Y42_N10
\blinkForLeds_2hz|s_counter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[1]~27_combout\ = (\blinkForLeds_2hz|s_counter\(1) & (!\blinkForLeds_2hz|s_counter[0]~26\)) # (!\blinkForLeds_2hz|s_counter\(1) & ((\blinkForLeds_2hz|s_counter[0]~26\) # (GND)))
-- \blinkForLeds_2hz|s_counter[1]~28\ = CARRY((!\blinkForLeds_2hz|s_counter[0]~26\) # (!\blinkForLeds_2hz|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(1),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[0]~26\,
	combout => \blinkForLeds_2hz|s_counter[1]~27_combout\,
	cout => \blinkForLeds_2hz|s_counter[1]~28\);

-- Location: FF_X87_Y42_N11
\blinkForLeds_2hz|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[1]~27_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(1));

-- Location: LCCOMB_X87_Y42_N12
\blinkForLeds_2hz|s_counter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[2]~29_combout\ = (\blinkForLeds_2hz|s_counter\(2) & (\blinkForLeds_2hz|s_counter[1]~28\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(2) & (!\blinkForLeds_2hz|s_counter[1]~28\ & VCC))
-- \blinkForLeds_2hz|s_counter[2]~30\ = CARRY((\blinkForLeds_2hz|s_counter\(2) & !\blinkForLeds_2hz|s_counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(2),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[1]~28\,
	combout => \blinkForLeds_2hz|s_counter[2]~29_combout\,
	cout => \blinkForLeds_2hz|s_counter[2]~30\);

-- Location: FF_X87_Y42_N13
\blinkForLeds_2hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[2]~29_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(2));

-- Location: LCCOMB_X87_Y42_N14
\blinkForLeds_2hz|s_counter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[3]~31_combout\ = (\blinkForLeds_2hz|s_counter\(3) & (!\blinkForLeds_2hz|s_counter[2]~30\)) # (!\blinkForLeds_2hz|s_counter\(3) & ((\blinkForLeds_2hz|s_counter[2]~30\) # (GND)))
-- \blinkForLeds_2hz|s_counter[3]~32\ = CARRY((!\blinkForLeds_2hz|s_counter[2]~30\) # (!\blinkForLeds_2hz|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(3),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[2]~30\,
	combout => \blinkForLeds_2hz|s_counter[3]~31_combout\,
	cout => \blinkForLeds_2hz|s_counter[3]~32\);

-- Location: FF_X87_Y42_N15
\blinkForLeds_2hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[3]~31_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(3));

-- Location: LCCOMB_X87_Y42_N16
\blinkForLeds_2hz|s_counter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[4]~33_combout\ = (\blinkForLeds_2hz|s_counter\(4) & (\blinkForLeds_2hz|s_counter[3]~32\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(4) & (!\blinkForLeds_2hz|s_counter[3]~32\ & VCC))
-- \blinkForLeds_2hz|s_counter[4]~34\ = CARRY((\blinkForLeds_2hz|s_counter\(4) & !\blinkForLeds_2hz|s_counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(4),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[3]~32\,
	combout => \blinkForLeds_2hz|s_counter[4]~33_combout\,
	cout => \blinkForLeds_2hz|s_counter[4]~34\);

-- Location: FF_X87_Y42_N17
\blinkForLeds_2hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[4]~33_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(4));

-- Location: LCCOMB_X87_Y42_N18
\blinkForLeds_2hz|s_counter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[5]~35_combout\ = (\blinkForLeds_2hz|s_counter\(5) & (!\blinkForLeds_2hz|s_counter[4]~34\)) # (!\blinkForLeds_2hz|s_counter\(5) & ((\blinkForLeds_2hz|s_counter[4]~34\) # (GND)))
-- \blinkForLeds_2hz|s_counter[5]~36\ = CARRY((!\blinkForLeds_2hz|s_counter[4]~34\) # (!\blinkForLeds_2hz|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(5),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[4]~34\,
	combout => \blinkForLeds_2hz|s_counter[5]~35_combout\,
	cout => \blinkForLeds_2hz|s_counter[5]~36\);

-- Location: FF_X87_Y42_N19
\blinkForLeds_2hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[5]~35_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(5));

-- Location: LCCOMB_X87_Y42_N20
\blinkForLeds_2hz|s_counter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[6]~37_combout\ = (\blinkForLeds_2hz|s_counter\(6) & (\blinkForLeds_2hz|s_counter[5]~36\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(6) & (!\blinkForLeds_2hz|s_counter[5]~36\ & VCC))
-- \blinkForLeds_2hz|s_counter[6]~38\ = CARRY((\blinkForLeds_2hz|s_counter\(6) & !\blinkForLeds_2hz|s_counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(6),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[5]~36\,
	combout => \blinkForLeds_2hz|s_counter[6]~37_combout\,
	cout => \blinkForLeds_2hz|s_counter[6]~38\);

-- Location: FF_X87_Y42_N21
\blinkForLeds_2hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[6]~37_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(6));

-- Location: LCCOMB_X87_Y42_N22
\blinkForLeds_2hz|s_counter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[7]~39_combout\ = (\blinkForLeds_2hz|s_counter\(7) & (!\blinkForLeds_2hz|s_counter[6]~38\)) # (!\blinkForLeds_2hz|s_counter\(7) & ((\blinkForLeds_2hz|s_counter[6]~38\) # (GND)))
-- \blinkForLeds_2hz|s_counter[7]~40\ = CARRY((!\blinkForLeds_2hz|s_counter[6]~38\) # (!\blinkForLeds_2hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(7),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[6]~38\,
	combout => \blinkForLeds_2hz|s_counter[7]~39_combout\,
	cout => \blinkForLeds_2hz|s_counter[7]~40\);

-- Location: FF_X87_Y42_N23
\blinkForLeds_2hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[7]~39_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(7));

-- Location: LCCOMB_X87_Y42_N24
\blinkForLeds_2hz|s_counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[8]~41_combout\ = (\blinkForLeds_2hz|s_counter\(8) & (\blinkForLeds_2hz|s_counter[7]~40\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(8) & (!\blinkForLeds_2hz|s_counter[7]~40\ & VCC))
-- \blinkForLeds_2hz|s_counter[8]~42\ = CARRY((\blinkForLeds_2hz|s_counter\(8) & !\blinkForLeds_2hz|s_counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(8),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[7]~40\,
	combout => \blinkForLeds_2hz|s_counter[8]~41_combout\,
	cout => \blinkForLeds_2hz|s_counter[8]~42\);

-- Location: FF_X87_Y42_N25
\blinkForLeds_2hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[8]~41_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(8));

-- Location: LCCOMB_X87_Y42_N26
\blinkForLeds_2hz|s_counter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[9]~43_combout\ = (\blinkForLeds_2hz|s_counter\(9) & (!\blinkForLeds_2hz|s_counter[8]~42\)) # (!\blinkForLeds_2hz|s_counter\(9) & ((\blinkForLeds_2hz|s_counter[8]~42\) # (GND)))
-- \blinkForLeds_2hz|s_counter[9]~44\ = CARRY((!\blinkForLeds_2hz|s_counter[8]~42\) # (!\blinkForLeds_2hz|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(9),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[8]~42\,
	combout => \blinkForLeds_2hz|s_counter[9]~43_combout\,
	cout => \blinkForLeds_2hz|s_counter[9]~44\);

-- Location: FF_X87_Y42_N27
\blinkForLeds_2hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[9]~43_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(9));

-- Location: LCCOMB_X87_Y42_N28
\blinkForLeds_2hz|s_counter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[10]~45_combout\ = (\blinkForLeds_2hz|s_counter\(10) & (\blinkForLeds_2hz|s_counter[9]~44\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(10) & (!\blinkForLeds_2hz|s_counter[9]~44\ & VCC))
-- \blinkForLeds_2hz|s_counter[10]~46\ = CARRY((\blinkForLeds_2hz|s_counter\(10) & !\blinkForLeds_2hz|s_counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_2hz|s_counter\(10),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[9]~44\,
	combout => \blinkForLeds_2hz|s_counter[10]~45_combout\,
	cout => \blinkForLeds_2hz|s_counter[10]~46\);

-- Location: FF_X87_Y42_N29
\blinkForLeds_2hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[10]~45_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(10));

-- Location: LCCOMB_X87_Y42_N30
\blinkForLeds_2hz|s_counter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[11]~47_combout\ = (\blinkForLeds_2hz|s_counter\(11) & (!\blinkForLeds_2hz|s_counter[10]~46\)) # (!\blinkForLeds_2hz|s_counter\(11) & ((\blinkForLeds_2hz|s_counter[10]~46\) # (GND)))
-- \blinkForLeds_2hz|s_counter[11]~48\ = CARRY((!\blinkForLeds_2hz|s_counter[10]~46\) # (!\blinkForLeds_2hz|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(11),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[10]~46\,
	combout => \blinkForLeds_2hz|s_counter[11]~47_combout\,
	cout => \blinkForLeds_2hz|s_counter[11]~48\);

-- Location: FF_X87_Y42_N31
\blinkForLeds_2hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_2hz|s_counter[11]~47_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(11));

-- Location: LCCOMB_X87_Y41_N0
\blinkForLeds_2hz|s_counter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[12]~49_combout\ = (\blinkForLeds_2hz|s_counter\(12) & (\blinkForLeds_2hz|s_counter[11]~48\ $ (GND))) # (!\blinkForLeds_2hz|s_counter\(12) & (!\blinkForLeds_2hz|s_counter[11]~48\ & VCC))
-- \blinkForLeds_2hz|s_counter[12]~50\ = CARRY((\blinkForLeds_2hz|s_counter\(12) & !\blinkForLeds_2hz|s_counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(12),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[11]~48\,
	combout => \blinkForLeds_2hz|s_counter[12]~49_combout\,
	cout => \blinkForLeds_2hz|s_counter[12]~50\);

-- Location: FF_X86_Y42_N9
\blinkForLeds_2hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_2hz|s_counter[12]~49_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(12));

-- Location: LCCOMB_X87_Y41_N2
\blinkForLeds_2hz|s_counter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_2hz|s_counter[13]~51_combout\ = (\blinkForLeds_2hz|s_counter\(13) & (!\blinkForLeds_2hz|s_counter[12]~50\)) # (!\blinkForLeds_2hz|s_counter\(13) & ((\blinkForLeds_2hz|s_counter[12]~50\) # (GND)))
-- \blinkForLeds_2hz|s_counter[13]~52\ = CARRY((!\blinkForLeds_2hz|s_counter[12]~50\) # (!\blinkForLeds_2hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(13),
	datad => VCC,
	cin => \blinkForLeds_2hz|s_counter[12]~50\,
	combout => \blinkForLeds_2hz|s_counter[13]~51_combout\,
	cout => \blinkForLeds_2hz|s_counter[13]~52\);

-- Location: FF_X86_Y42_N31
\blinkForLeds_2hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_2hz|s_counter[13]~51_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(13));

-- Location: FF_X86_Y42_N29
\blinkForLeds_2hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_2hz|s_counter[14]~53_combout\,
	sclr => \blinkForLeds_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_2hz|s_counter\(14));

-- Location: LCCOMB_X86_Y42_N8
\options_mux|dataOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~2_combout\ = (\blinkForLeds_2hz|s_counter\(13) & (\blinkForLeds_2hz|s_counter\(11) & (\blinkForLeds_2hz|s_counter\(12) & \blinkForLeds_2hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(13),
	datab => \blinkForLeds_2hz|s_counter\(11),
	datac => \blinkForLeds_2hz|s_counter\(12),
	datad => \blinkForLeds_2hz|s_counter\(10),
	combout => \options_mux|dataOut[4]~2_combout\);

-- Location: LCCOMB_X88_Y42_N24
\options_mux|dataOut[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~3_combout\ = (\options_mux|dataOut[4]~2_combout\ & (\blinkForLeds_2hz|s_counter\(15) & ((\blinkForLeds_2hz|s_counter\(5)) # (!\blinkForLeds_2hz|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \options_mux|dataOut[4]~2_combout\,
	datab => \blinkForLeds_2hz|s_counter\(5),
	datac => \blinkForLeds_2hz|LessThan0~0_combout\,
	datad => \blinkForLeds_2hz|s_counter\(15),
	combout => \options_mux|dataOut[4]~3_combout\);

-- Location: LCCOMB_X88_Y42_N10
\options_mux|dataOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~4_combout\ = (\options_mux|dataOut[4]~3_combout\) # ((\blinkForLeds_2hz|s_counter\(16)) # ((\blinkForLeds_2hz|s_counter\(14) & \blinkForLeds_2hz|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_2hz|s_counter\(14),
	datab => \options_mux|dataOut[4]~3_combout\,
	datac => \blinkForLeds_2hz|s_counter\(16),
	datad => \blinkForLeds_2hz|s_counter\(15),
	combout => \options_mux|dataOut[4]~4_combout\);

-- Location: LCCOMB_X82_Y12_N4
\pulse_4seg|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~0_combout\ = \pulse_4seg|s_cnt\(0) $ (VCC)
-- \pulse_4seg|Add0~1\ = CARRY(\pulse_4seg|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(0),
	datad => VCC,
	combout => \pulse_4seg|Add0~0_combout\,
	cout => \pulse_4seg|Add0~1\);

-- Location: FF_X82_Y12_N5
\pulse_4seg|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(0));

-- Location: LCCOMB_X82_Y12_N6
\pulse_4seg|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~2_combout\ = (\pulse_4seg|s_cnt\(1) & (!\pulse_4seg|Add0~1\)) # (!\pulse_4seg|s_cnt\(1) & ((\pulse_4seg|Add0~1\) # (GND)))
-- \pulse_4seg|Add0~3\ = CARRY((!\pulse_4seg|Add0~1\) # (!\pulse_4seg|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(1),
	datad => VCC,
	cin => \pulse_4seg|Add0~1\,
	combout => \pulse_4seg|Add0~2_combout\,
	cout => \pulse_4seg|Add0~3\);

-- Location: FF_X82_Y12_N7
\pulse_4seg|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(1));

-- Location: LCCOMB_X82_Y12_N8
\pulse_4seg|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~4_combout\ = (\pulse_4seg|s_cnt\(2) & (\pulse_4seg|Add0~3\ $ (GND))) # (!\pulse_4seg|s_cnt\(2) & (!\pulse_4seg|Add0~3\ & VCC))
-- \pulse_4seg|Add0~5\ = CARRY((\pulse_4seg|s_cnt\(2) & !\pulse_4seg|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(2),
	datad => VCC,
	cin => \pulse_4seg|Add0~3\,
	combout => \pulse_4seg|Add0~4_combout\,
	cout => \pulse_4seg|Add0~5\);

-- Location: FF_X82_Y12_N9
\pulse_4seg|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(2));

-- Location: LCCOMB_X82_Y12_N10
\pulse_4seg|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~6_combout\ = (\pulse_4seg|s_cnt\(3) & (!\pulse_4seg|Add0~5\)) # (!\pulse_4seg|s_cnt\(3) & ((\pulse_4seg|Add0~5\) # (GND)))
-- \pulse_4seg|Add0~7\ = CARRY((!\pulse_4seg|Add0~5\) # (!\pulse_4seg|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(3),
	datad => VCC,
	cin => \pulse_4seg|Add0~5\,
	combout => \pulse_4seg|Add0~6_combout\,
	cout => \pulse_4seg|Add0~7\);

-- Location: FF_X82_Y12_N11
\pulse_4seg|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(3));

-- Location: LCCOMB_X82_Y12_N12
\pulse_4seg|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~8_combout\ = (\pulse_4seg|s_cnt\(4) & (\pulse_4seg|Add0~7\ $ (GND))) # (!\pulse_4seg|s_cnt\(4) & (!\pulse_4seg|Add0~7\ & VCC))
-- \pulse_4seg|Add0~9\ = CARRY((\pulse_4seg|s_cnt\(4) & !\pulse_4seg|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(4),
	datad => VCC,
	cin => \pulse_4seg|Add0~7\,
	combout => \pulse_4seg|Add0~8_combout\,
	cout => \pulse_4seg|Add0~9\);

-- Location: FF_X82_Y12_N13
\pulse_4seg|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(4));

-- Location: LCCOMB_X82_Y12_N14
\pulse_4seg|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~10_combout\ = (\pulse_4seg|s_cnt\(5) & (!\pulse_4seg|Add0~9\)) # (!\pulse_4seg|s_cnt\(5) & ((\pulse_4seg|Add0~9\) # (GND)))
-- \pulse_4seg|Add0~11\ = CARRY((!\pulse_4seg|Add0~9\) # (!\pulse_4seg|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(5),
	datad => VCC,
	cin => \pulse_4seg|Add0~9\,
	combout => \pulse_4seg|Add0~10_combout\,
	cout => \pulse_4seg|Add0~11\);

-- Location: FF_X82_Y12_N15
\pulse_4seg|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(5));

-- Location: LCCOMB_X82_Y12_N16
\pulse_4seg|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~12_combout\ = (\pulse_4seg|s_cnt\(6) & (\pulse_4seg|Add0~11\ $ (GND))) # (!\pulse_4seg|s_cnt\(6) & (!\pulse_4seg|Add0~11\ & VCC))
-- \pulse_4seg|Add0~13\ = CARRY((\pulse_4seg|s_cnt\(6) & !\pulse_4seg|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(6),
	datad => VCC,
	cin => \pulse_4seg|Add0~11\,
	combout => \pulse_4seg|Add0~12_combout\,
	cout => \pulse_4seg|Add0~13\);

-- Location: FF_X82_Y12_N17
\pulse_4seg|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(6));

-- Location: LCCOMB_X82_Y12_N18
\pulse_4seg|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~14_combout\ = (\pulse_4seg|s_cnt\(7) & (!\pulse_4seg|Add0~13\)) # (!\pulse_4seg|s_cnt\(7) & ((\pulse_4seg|Add0~13\) # (GND)))
-- \pulse_4seg|Add0~15\ = CARRY((!\pulse_4seg|Add0~13\) # (!\pulse_4seg|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(7),
	datad => VCC,
	cin => \pulse_4seg|Add0~13\,
	combout => \pulse_4seg|Add0~14_combout\,
	cout => \pulse_4seg|Add0~15\);

-- Location: FF_X82_Y12_N19
\pulse_4seg|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(7));

-- Location: LCCOMB_X82_Y12_N20
\pulse_4seg|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~16_combout\ = (\pulse_4seg|s_cnt\(8) & (\pulse_4seg|Add0~15\ $ (GND))) # (!\pulse_4seg|s_cnt\(8) & (!\pulse_4seg|Add0~15\ & VCC))
-- \pulse_4seg|Add0~17\ = CARRY((\pulse_4seg|s_cnt\(8) & !\pulse_4seg|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(8),
	datad => VCC,
	cin => \pulse_4seg|Add0~15\,
	combout => \pulse_4seg|Add0~16_combout\,
	cout => \pulse_4seg|Add0~17\);

-- Location: FF_X82_Y12_N21
\pulse_4seg|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(8));

-- Location: LCCOMB_X82_Y12_N22
\pulse_4seg|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~18_combout\ = (\pulse_4seg|s_cnt\(9) & (!\pulse_4seg|Add0~17\)) # (!\pulse_4seg|s_cnt\(9) & ((\pulse_4seg|Add0~17\) # (GND)))
-- \pulse_4seg|Add0~19\ = CARRY((!\pulse_4seg|Add0~17\) # (!\pulse_4seg|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(9),
	datad => VCC,
	cin => \pulse_4seg|Add0~17\,
	combout => \pulse_4seg|Add0~18_combout\,
	cout => \pulse_4seg|Add0~19\);

-- Location: LCCOMB_X82_Y12_N2
\pulse_4seg|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~6_combout\ = (\pulse_4seg|Add0~18_combout\ & !\pulse_4seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_4seg|Add0~18_combout\,
	datad => \pulse_4seg|Equal0~8_combout\,
	combout => \pulse_4seg|s_cnt~6_combout\);

-- Location: FF_X82_Y12_N3
\pulse_4seg|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(9));

-- Location: LCCOMB_X82_Y12_N24
\pulse_4seg|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~20_combout\ = (\pulse_4seg|s_cnt\(10) & (\pulse_4seg|Add0~19\ $ (GND))) # (!\pulse_4seg|s_cnt\(10) & (!\pulse_4seg|Add0~19\ & VCC))
-- \pulse_4seg|Add0~21\ = CARRY((\pulse_4seg|s_cnt\(10) & !\pulse_4seg|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(10),
	datad => VCC,
	cin => \pulse_4seg|Add0~19\,
	combout => \pulse_4seg|Add0~20_combout\,
	cout => \pulse_4seg|Add0~21\);

-- Location: FF_X82_Y12_N25
\pulse_4seg|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(10));

-- Location: LCCOMB_X82_Y12_N26
\pulse_4seg|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~22_combout\ = (\pulse_4seg|s_cnt\(11) & (!\pulse_4seg|Add0~21\)) # (!\pulse_4seg|s_cnt\(11) & ((\pulse_4seg|Add0~21\) # (GND)))
-- \pulse_4seg|Add0~23\ = CARRY((!\pulse_4seg|Add0~21\) # (!\pulse_4seg|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(11),
	datad => VCC,
	cin => \pulse_4seg|Add0~21\,
	combout => \pulse_4seg|Add0~22_combout\,
	cout => \pulse_4seg|Add0~23\);

-- Location: FF_X82_Y12_N27
\pulse_4seg|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(11));

-- Location: LCCOMB_X82_Y12_N28
\pulse_4seg|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~24_combout\ = (\pulse_4seg|s_cnt\(12) & (\pulse_4seg|Add0~23\ $ (GND))) # (!\pulse_4seg|s_cnt\(12) & (!\pulse_4seg|Add0~23\ & VCC))
-- \pulse_4seg|Add0~25\ = CARRY((\pulse_4seg|s_cnt\(12) & !\pulse_4seg|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(12),
	datad => VCC,
	cin => \pulse_4seg|Add0~23\,
	combout => \pulse_4seg|Add0~24_combout\,
	cout => \pulse_4seg|Add0~25\);

-- Location: FF_X82_Y12_N29
\pulse_4seg|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(12));

-- Location: LCCOMB_X82_Y12_N30
\pulse_4seg|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~26_combout\ = (\pulse_4seg|s_cnt\(13) & (!\pulse_4seg|Add0~25\)) # (!\pulse_4seg|s_cnt\(13) & ((\pulse_4seg|Add0~25\) # (GND)))
-- \pulse_4seg|Add0~27\ = CARRY((!\pulse_4seg|Add0~25\) # (!\pulse_4seg|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(13),
	datad => VCC,
	cin => \pulse_4seg|Add0~25\,
	combout => \pulse_4seg|Add0~26_combout\,
	cout => \pulse_4seg|Add0~27\);

-- Location: FF_X82_Y12_N31
\pulse_4seg|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(13));

-- Location: LCCOMB_X82_Y11_N0
\pulse_4seg|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~28_combout\ = (\pulse_4seg|s_cnt\(14) & (\pulse_4seg|Add0~27\ $ (GND))) # (!\pulse_4seg|s_cnt\(14) & (!\pulse_4seg|Add0~27\ & VCC))
-- \pulse_4seg|Add0~29\ = CARRY((\pulse_4seg|s_cnt\(14) & !\pulse_4seg|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(14),
	datad => VCC,
	cin => \pulse_4seg|Add0~27\,
	combout => \pulse_4seg|Add0~28_combout\,
	cout => \pulse_4seg|Add0~29\);

-- Location: LCCOMB_X81_Y11_N6
\pulse_4seg|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~5_combout\ = (\pulse_4seg|Add0~28_combout\ & !\pulse_4seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_4seg|Add0~28_combout\,
	datad => \pulse_4seg|Equal0~8_combout\,
	combout => \pulse_4seg|s_cnt~5_combout\);

-- Location: FF_X81_Y11_N7
\pulse_4seg|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(14));

-- Location: LCCOMB_X82_Y11_N2
\pulse_4seg|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~30_combout\ = (\pulse_4seg|s_cnt\(15) & (!\pulse_4seg|Add0~29\)) # (!\pulse_4seg|s_cnt\(15) & ((\pulse_4seg|Add0~29\) # (GND)))
-- \pulse_4seg|Add0~31\ = CARRY((!\pulse_4seg|Add0~29\) # (!\pulse_4seg|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(15),
	datad => VCC,
	cin => \pulse_4seg|Add0~29\,
	combout => \pulse_4seg|Add0~30_combout\,
	cout => \pulse_4seg|Add0~31\);

-- Location: LCCOMB_X81_Y11_N16
\pulse_4seg|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~4_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~30_combout\,
	combout => \pulse_4seg|s_cnt~4_combout\);

-- Location: FF_X81_Y11_N17
\pulse_4seg|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(15));

-- Location: LCCOMB_X82_Y11_N4
\pulse_4seg|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~32_combout\ = (\pulse_4seg|s_cnt\(16) & (\pulse_4seg|Add0~31\ $ (GND))) # (!\pulse_4seg|s_cnt\(16) & (!\pulse_4seg|Add0~31\ & VCC))
-- \pulse_4seg|Add0~33\ = CARRY((\pulse_4seg|s_cnt\(16) & !\pulse_4seg|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(16),
	datad => VCC,
	cin => \pulse_4seg|Add0~31\,
	combout => \pulse_4seg|Add0~32_combout\,
	cout => \pulse_4seg|Add0~33\);

-- Location: LCCOMB_X81_Y11_N30
\pulse_4seg|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~2_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~32_combout\,
	combout => \pulse_4seg|s_cnt~2_combout\);

-- Location: FF_X81_Y11_N31
\pulse_4seg|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(16));

-- Location: LCCOMB_X82_Y11_N6
\pulse_4seg|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~34_combout\ = (\pulse_4seg|s_cnt\(17) & (!\pulse_4seg|Add0~33\)) # (!\pulse_4seg|s_cnt\(17) & ((\pulse_4seg|Add0~33\) # (GND)))
-- \pulse_4seg|Add0~35\ = CARRY((!\pulse_4seg|Add0~33\) # (!\pulse_4seg|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(17),
	datad => VCC,
	cin => \pulse_4seg|Add0~33\,
	combout => \pulse_4seg|Add0~34_combout\,
	cout => \pulse_4seg|Add0~35\);

-- Location: LCCOMB_X81_Y11_N28
\pulse_4seg|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~1_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~34_combout\,
	combout => \pulse_4seg|s_cnt~1_combout\);

-- Location: FF_X81_Y11_N29
\pulse_4seg|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(17));

-- Location: LCCOMB_X82_Y11_N8
\pulse_4seg|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~36_combout\ = (\pulse_4seg|s_cnt\(18) & (\pulse_4seg|Add0~35\ $ (GND))) # (!\pulse_4seg|s_cnt\(18) & (!\pulse_4seg|Add0~35\ & VCC))
-- \pulse_4seg|Add0~37\ = CARRY((\pulse_4seg|s_cnt\(18) & !\pulse_4seg|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(18),
	datad => VCC,
	cin => \pulse_4seg|Add0~35\,
	combout => \pulse_4seg|Add0~36_combout\,
	cout => \pulse_4seg|Add0~37\);

-- Location: FF_X82_Y11_N9
\pulse_4seg|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(18));

-- Location: LCCOMB_X82_Y11_N10
\pulse_4seg|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~38_combout\ = (\pulse_4seg|s_cnt\(19) & (!\pulse_4seg|Add0~37\)) # (!\pulse_4seg|s_cnt\(19) & ((\pulse_4seg|Add0~37\) # (GND)))
-- \pulse_4seg|Add0~39\ = CARRY((!\pulse_4seg|Add0~37\) # (!\pulse_4seg|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(19),
	datad => VCC,
	cin => \pulse_4seg|Add0~37\,
	combout => \pulse_4seg|Add0~38_combout\,
	cout => \pulse_4seg|Add0~39\);

-- Location: LCCOMB_X81_Y11_N22
\pulse_4seg|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~0_combout\ = (\pulse_4seg|Add0~38_combout\ & !\pulse_4seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_4seg|Add0~38_combout\,
	datad => \pulse_4seg|Equal0~8_combout\,
	combout => \pulse_4seg|s_cnt~0_combout\);

-- Location: FF_X81_Y11_N23
\pulse_4seg|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(19));

-- Location: LCCOMB_X82_Y11_N12
\pulse_4seg|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~40_combout\ = (\pulse_4seg|s_cnt\(20) & (\pulse_4seg|Add0~39\ $ (GND))) # (!\pulse_4seg|s_cnt\(20) & (!\pulse_4seg|Add0~39\ & VCC))
-- \pulse_4seg|Add0~41\ = CARRY((\pulse_4seg|s_cnt\(20) & !\pulse_4seg|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(20),
	datad => VCC,
	cin => \pulse_4seg|Add0~39\,
	combout => \pulse_4seg|Add0~40_combout\,
	cout => \pulse_4seg|Add0~41\);

-- Location: FF_X82_Y11_N13
\pulse_4seg|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(20));

-- Location: LCCOMB_X82_Y11_N14
\pulse_4seg|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~42_combout\ = (\pulse_4seg|s_cnt\(21) & (!\pulse_4seg|Add0~41\)) # (!\pulse_4seg|s_cnt\(21) & ((\pulse_4seg|Add0~41\) # (GND)))
-- \pulse_4seg|Add0~43\ = CARRY((!\pulse_4seg|Add0~41\) # (!\pulse_4seg|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(21),
	datad => VCC,
	cin => \pulse_4seg|Add0~41\,
	combout => \pulse_4seg|Add0~42_combout\,
	cout => \pulse_4seg|Add0~43\);

-- Location: LCCOMB_X82_Y11_N28
\pulse_4seg|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~7_combout\ = (\pulse_4seg|Add0~42_combout\ & !\pulse_4seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_4seg|Add0~42_combout\,
	datad => \pulse_4seg|Equal0~8_combout\,
	combout => \pulse_4seg|s_cnt~7_combout\);

-- Location: FF_X82_Y11_N29
\pulse_4seg|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(21));

-- Location: LCCOMB_X82_Y11_N16
\pulse_4seg|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~44_combout\ = (\pulse_4seg|s_cnt\(22) & (\pulse_4seg|Add0~43\ $ (GND))) # (!\pulse_4seg|s_cnt\(22) & (!\pulse_4seg|Add0~43\ & VCC))
-- \pulse_4seg|Add0~45\ = CARRY((\pulse_4seg|s_cnt\(22) & !\pulse_4seg|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(22),
	datad => VCC,
	cin => \pulse_4seg|Add0~43\,
	combout => \pulse_4seg|Add0~44_combout\,
	cout => \pulse_4seg|Add0~45\);

-- Location: LCCOMB_X81_Y11_N26
\pulse_4seg|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~8_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~44_combout\,
	combout => \pulse_4seg|s_cnt~8_combout\);

-- Location: FF_X81_Y11_N27
\pulse_4seg|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(22));

-- Location: LCCOMB_X82_Y11_N18
\pulse_4seg|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~46_combout\ = (\pulse_4seg|s_cnt\(23) & (!\pulse_4seg|Add0~45\)) # (!\pulse_4seg|s_cnt\(23) & ((\pulse_4seg|Add0~45\) # (GND)))
-- \pulse_4seg|Add0~47\ = CARRY((!\pulse_4seg|Add0~45\) # (!\pulse_4seg|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(23),
	datad => VCC,
	cin => \pulse_4seg|Add0~45\,
	combout => \pulse_4seg|Add0~46_combout\,
	cout => \pulse_4seg|Add0~47\);

-- Location: LCCOMB_X81_Y11_N14
\pulse_4seg|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~9_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~46_combout\,
	combout => \pulse_4seg|s_cnt~9_combout\);

-- Location: FF_X81_Y11_N15
\pulse_4seg|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(23));

-- Location: LCCOMB_X82_Y11_N20
\pulse_4seg|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~48_combout\ = (\pulse_4seg|s_cnt\(24) & (\pulse_4seg|Add0~47\ $ (GND))) # (!\pulse_4seg|s_cnt\(24) & (!\pulse_4seg|Add0~47\ & VCC))
-- \pulse_4seg|Add0~49\ = CARRY((\pulse_4seg|s_cnt\(24) & !\pulse_4seg|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(24),
	datad => VCC,
	cin => \pulse_4seg|Add0~47\,
	combout => \pulse_4seg|Add0~48_combout\,
	cout => \pulse_4seg|Add0~49\);

-- Location: LCCOMB_X82_Y11_N30
\pulse_4seg|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~10_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~48_combout\,
	combout => \pulse_4seg|s_cnt~10_combout\);

-- Location: FF_X82_Y11_N31
\pulse_4seg|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(24));

-- Location: LCCOMB_X82_Y11_N22
\pulse_4seg|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~50_combout\ = (\pulse_4seg|s_cnt\(25) & (!\pulse_4seg|Add0~49\)) # (!\pulse_4seg|s_cnt\(25) & ((\pulse_4seg|Add0~49\) # (GND)))
-- \pulse_4seg|Add0~51\ = CARRY((!\pulse_4seg|Add0~49\) # (!\pulse_4seg|s_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(25),
	datad => VCC,
	cin => \pulse_4seg|Add0~49\,
	combout => \pulse_4seg|Add0~50_combout\,
	cout => \pulse_4seg|Add0~51\);

-- Location: LCCOMB_X81_Y11_N0
\pulse_4seg|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~11_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~50_combout\,
	combout => \pulse_4seg|s_cnt~11_combout\);

-- Location: FF_X81_Y11_N1
\pulse_4seg|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(25));

-- Location: LCCOMB_X82_Y11_N24
\pulse_4seg|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~52_combout\ = (\pulse_4seg|s_cnt\(26) & (\pulse_4seg|Add0~51\ $ (GND))) # (!\pulse_4seg|s_cnt\(26) & (!\pulse_4seg|Add0~51\ & VCC))
-- \pulse_4seg|Add0~53\ = CARRY((\pulse_4seg|s_cnt\(26) & !\pulse_4seg|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(26),
	datad => VCC,
	cin => \pulse_4seg|Add0~51\,
	combout => \pulse_4seg|Add0~52_combout\,
	cout => \pulse_4seg|Add0~53\);

-- Location: FF_X82_Y11_N25
\pulse_4seg|s_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(26));

-- Location: LCCOMB_X82_Y11_N26
\pulse_4seg|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Add0~54_combout\ = \pulse_4seg|Add0~53\ $ (\pulse_4seg|s_cnt\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse_4seg|s_cnt\(27),
	cin => \pulse_4seg|Add0~53\,
	combout => \pulse_4seg|Add0~54_combout\);

-- Location: LCCOMB_X81_Y11_N10
\pulse_4seg|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|s_cnt~3_combout\ = (!\pulse_4seg|Equal0~8_combout\ & \pulse_4seg|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|Equal0~8_combout\,
	datad => \pulse_4seg|Add0~54_combout\,
	combout => \pulse_4seg|s_cnt~3_combout\);

-- Location: FF_X81_Y11_N11
\pulse_4seg|s_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|s_cnt\(27));

-- Location: LCCOMB_X81_Y11_N8
\pulse_4seg|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~2_combout\ = (\pulse_4seg|s_cnt\(16) & (!\pulse_4seg|s_cnt\(18) & (\pulse_4seg|s_cnt\(19) & \pulse_4seg|s_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(16),
	datab => \pulse_4seg|s_cnt\(18),
	datac => \pulse_4seg|s_cnt\(19),
	datad => \pulse_4seg|s_cnt\(17),
	combout => \pulse_4seg|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y12_N0
\pulse_4seg|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~0_combout\ = (\pulse_4seg|s_cnt\(4) & (\pulse_4seg|s_cnt\(2) & (\pulse_4seg|s_cnt\(5) & \pulse_4seg|s_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(4),
	datab => \pulse_4seg|s_cnt\(2),
	datac => \pulse_4seg|s_cnt\(5),
	datad => \pulse_4seg|s_cnt\(3),
	combout => \pulse_4seg|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y12_N0
\pulse_4seg|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~1_combout\ = (\pulse_4seg|s_cnt\(1) & (\pulse_4seg|s_cnt\(6) & (\pulse_4seg|Equal0~0_combout\ & \pulse_4seg|s_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(1),
	datab => \pulse_4seg|s_cnt\(6),
	datac => \pulse_4seg|Equal0~0_combout\,
	datad => \pulse_4seg|s_cnt\(0),
	combout => \pulse_4seg|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y12_N30
\pulse_4seg|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~4_combout\ = (!\pulse_4seg|s_cnt\(9) & (!\pulse_4seg|s_cnt\(11) & (\pulse_4seg|s_cnt\(8) & !\pulse_4seg|s_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(9),
	datab => \pulse_4seg|s_cnt\(11),
	datac => \pulse_4seg|s_cnt\(8),
	datad => \pulse_4seg|s_cnt\(10),
	combout => \pulse_4seg|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y11_N18
\pulse_4seg|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~6_combout\ = (!\pulse_4seg|s_cnt\(26) & (\pulse_4seg|s_cnt\(23) & (\pulse_4seg|s_cnt\(24) & \pulse_4seg|s_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(26),
	datab => \pulse_4seg|s_cnt\(23),
	datac => \pulse_4seg|s_cnt\(24),
	datad => \pulse_4seg|s_cnt\(25),
	combout => \pulse_4seg|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y11_N4
\pulse_4seg|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~5_combout\ = (\pulse_4seg|s_cnt\(22) & (!\pulse_4seg|s_cnt\(20) & (\pulse_4seg|s_cnt\(7) & \pulse_4seg|s_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(22),
	datab => \pulse_4seg|s_cnt\(20),
	datac => \pulse_4seg|s_cnt\(7),
	datad => \pulse_4seg|s_cnt\(21),
	combout => \pulse_4seg|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y11_N20
\pulse_4seg|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~3_combout\ = (\pulse_4seg|s_cnt\(14) & (!\pulse_4seg|s_cnt\(13) & (!\pulse_4seg|s_cnt\(12) & \pulse_4seg|s_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(14),
	datab => \pulse_4seg|s_cnt\(13),
	datac => \pulse_4seg|s_cnt\(12),
	datad => \pulse_4seg|s_cnt\(15),
	combout => \pulse_4seg|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y11_N12
\pulse_4seg|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~7_combout\ = (\pulse_4seg|Equal0~4_combout\ & (\pulse_4seg|Equal0~6_combout\ & (\pulse_4seg|Equal0~5_combout\ & \pulse_4seg|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|Equal0~4_combout\,
	datab => \pulse_4seg|Equal0~6_combout\,
	datac => \pulse_4seg|Equal0~5_combout\,
	datad => \pulse_4seg|Equal0~3_combout\,
	combout => \pulse_4seg|Equal0~7_combout\);

-- Location: LCCOMB_X81_Y11_N24
\pulse_4seg|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_4seg|Equal0~8_combout\ = (\pulse_4seg|s_cnt\(27) & (\pulse_4seg|Equal0~2_combout\ & (\pulse_4seg|Equal0~1_combout\ & \pulse_4seg|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(27),
	datab => \pulse_4seg|Equal0~2_combout\,
	datac => \pulse_4seg|Equal0~1_combout\,
	datad => \pulse_4seg|Equal0~7_combout\,
	combout => \pulse_4seg|Equal0~8_combout\);

-- Location: FF_X81_Y11_N25
\pulse_4seg|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_4seg|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_4seg|pulse~q\);

-- Location: LCCOMB_X81_Y8_N22
\control_program4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_program4~0_combout\ = \control_program4~q\ $ (\pulse_4seg|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_program4~q\,
	datad => \pulse_4seg|pulse~q\,
	combout => \control_program4~0_combout\);

-- Location: FF_X81_Y8_N23
control_program4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \control_program4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_program4~q\);

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

-- Location: LCCOMB_X81_Y8_N28
\sync_sw[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_sw[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \sync_sw[0]~feeder_combout\);

-- Location: FF_X81_Y8_N29
\sync_sw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sync_sw[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sync_sw(0));

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

-- Location: LCCOMB_X81_Y8_N8
\sync_sw[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_sw[1]~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \sync_sw[1]~feeder_combout\);

-- Location: FF_X81_Y8_N9
\sync_sw[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sync_sw[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sync_sw(1));

-- Location: LCCOMB_X81_Y8_N26
\options_mux|dataOut[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~0_combout\ = (sync_sw(0) & ((\control_program4~q\) # (!sync_sw(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_program4~q\,
	datab => sync_sw(0),
	datac => sync_sw(1),
	combout => \options_mux|dataOut[4]~0_combout\);

-- Location: LCCOMB_X88_Y42_N18
\options_mux|dataOut[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~1_combout\ = (\options_mux|dataOut[4]~0_combout\ & ((\blinkForLeds_2hz|s_counter\(24)) # ((\blinkForLeds_2hz|s_counter\(23) & \blinkForLeds_2hz|s_counter\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \options_mux|dataOut[4]~0_combout\,
	datab => \blinkForLeds_2hz|s_counter\(23),
	datac => \blinkForLeds_2hz|s_counter\(22),
	datad => \blinkForLeds_2hz|s_counter\(24),
	combout => \options_mux|dataOut[4]~1_combout\);

-- Location: LCCOMB_X81_Y8_N0
\options_mux|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~7_combout\ = (sync_sw(0)) # (sync_sw(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sync_sw(0),
	datac => sync_sw(1),
	combout => \options_mux|dataOut[4]~7_combout\);

-- Location: LCCOMB_X88_Y42_N12
\options_mux|dataOut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~6_combout\ = (\options_mux|dataOut[4]~0_combout\ & (\blinkForLeds_2hz|s_counter\(23) & (\blinkForLeds_2hz|s_counter\(17) & \options_mux|dataOut[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \options_mux|dataOut[4]~0_combout\,
	datab => \blinkForLeds_2hz|s_counter\(23),
	datac => \blinkForLeds_2hz|s_counter\(17),
	datad => \options_mux|dataOut[4]~5_combout\,
	combout => \options_mux|dataOut[4]~6_combout\);

-- Location: LCCOMB_X88_Y42_N14
\options_mux|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[4]~8_combout\ = (\options_mux|dataOut[4]~1_combout\) # (((\options_mux|dataOut[4]~4_combout\ & \options_mux|dataOut[4]~6_combout\)) # (!\options_mux|dataOut[4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \options_mux|dataOut[4]~4_combout\,
	datab => \options_mux|dataOut[4]~1_combout\,
	datac => \options_mux|dataOut[4]~7_combout\,
	datad => \options_mux|dataOut[4]~6_combout\,
	combout => \options_mux|dataOut[4]~8_combout\);

-- Location: LCCOMB_X83_Y72_N6
\blinkForLeds_1hz|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[0]~26_combout\ = \blinkForLeds_1hz|s_counter\(0) $ (VCC)
-- \blinkForLeds_1hz|s_counter[0]~27\ = CARRY(\blinkForLeds_1hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(0),
	datad => VCC,
	combout => \blinkForLeds_1hz|s_counter[0]~26_combout\,
	cout => \blinkForLeds_1hz|s_counter[0]~27\);

-- Location: LCCOMB_X83_Y71_N22
\blinkForLeds_1hz|s_counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[24]~74_combout\ = (\blinkForLeds_1hz|s_counter\(24) & (\blinkForLeds_1hz|s_counter[23]~73\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(24) & (!\blinkForLeds_1hz|s_counter[23]~73\ & VCC))
-- \blinkForLeds_1hz|s_counter[24]~75\ = CARRY((\blinkForLeds_1hz|s_counter\(24) & !\blinkForLeds_1hz|s_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(24),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[23]~73\,
	combout => \blinkForLeds_1hz|s_counter[24]~74_combout\,
	cout => \blinkForLeds_1hz|s_counter[24]~75\);

-- Location: LCCOMB_X83_Y71_N24
\blinkForLeds_1hz|s_counter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[25]~76_combout\ = \blinkForLeds_1hz|s_counter[24]~75\ $ (\blinkForLeds_1hz|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \blinkForLeds_1hz|s_counter\(25),
	cin => \blinkForLeds_1hz|s_counter[24]~75\,
	combout => \blinkForLeds_1hz|s_counter[25]~76_combout\);

-- Location: FF_X83_Y71_N25
\blinkForLeds_1hz|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[25]~76_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(25));

-- Location: LCCOMB_X83_Y71_N30
\options_mux|dataOut[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~14_combout\ = (\blinkForLeds_1hz|s_counter\(19) & (\blinkForLeds_1hz|s_counter\(22) & (\blinkForLeds_1hz|s_counter\(20) & \blinkForLeds_1hz|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(19),
	datab => \blinkForLeds_1hz|s_counter\(22),
	datac => \blinkForLeds_1hz|s_counter\(20),
	datad => \blinkForLeds_1hz|s_counter\(21),
	combout => \options_mux|dataOut[0]~14_combout\);

-- Location: LCCOMB_X82_Y71_N28
\blinkForLeds_1hz|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~5_combout\ = (((!\blinkForLeds_1hz|s_counter\(13)) # (!\blinkForLeds_1hz|s_counter\(12))) # (!\blinkForLeds_1hz|s_counter\(14))) # (!\blinkForLeds_1hz|s_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(15),
	datab => \blinkForLeds_1hz|s_counter\(14),
	datac => \blinkForLeds_1hz|s_counter\(12),
	datad => \blinkForLeds_1hz|s_counter\(13),
	combout => \blinkForLeds_1hz|LessThan0~5_combout\);

-- Location: LCCOMB_X82_Y71_N18
\blinkForLeds_1hz|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~6_combout\ = (\blinkForLeds_1hz|s_counter\(17) & ((\blinkForLeds_1hz|s_counter\(16)) # (!\blinkForLeds_1hz|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(16),
	datac => \blinkForLeds_1hz|s_counter\(17),
	datad => \blinkForLeds_1hz|LessThan0~5_combout\,
	combout => \blinkForLeds_1hz|LessThan0~6_combout\);

-- Location: LCCOMB_X82_Y71_N0
\blinkForLeds_1hz|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~7_combout\ = (((!\blinkForLeds_1hz|s_counter\(18) & !\blinkForLeds_1hz|LessThan0~6_combout\)) # (!\options_mux|dataOut[0]~14_combout\)) # (!\blinkForLeds_1hz|s_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(23),
	datab => \blinkForLeds_1hz|s_counter\(18),
	datac => \options_mux|dataOut[0]~14_combout\,
	datad => \blinkForLeds_1hz|LessThan0~6_combout\,
	combout => \blinkForLeds_1hz|LessThan0~7_combout\);

-- Location: LCCOMB_X83_Y72_N0
\blinkForLeds_1hz|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~0_combout\ = (!\blinkForLeds_1hz|s_counter\(8) & (!\blinkForLeds_1hz|s_counter\(7) & (!\blinkForLeds_1hz|s_counter\(10) & !\blinkForLeds_1hz|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(8),
	datab => \blinkForLeds_1hz|s_counter\(7),
	datac => \blinkForLeds_1hz|s_counter\(10),
	datad => \blinkForLeds_1hz|s_counter\(9),
	combout => \blinkForLeds_1hz|LessThan0~0_combout\);

-- Location: LCCOMB_X82_Y71_N8
\blinkForLeds_1hz|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~3_combout\ = (!\blinkForLeds_1hz|s_counter\(18) & !\blinkForLeds_1hz|s_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blinkForLeds_1hz|s_counter\(18),
	datad => \blinkForLeds_1hz|s_counter\(16),
	combout => \blinkForLeds_1hz|LessThan0~3_combout\);

-- Location: LCCOMB_X83_Y72_N2
\blinkForLeds_1hz|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~1_combout\ = (((!\blinkForLeds_1hz|s_counter\(0)) # (!\blinkForLeds_1hz|s_counter\(1))) # (!\blinkForLeds_1hz|s_counter\(6))) # (!\blinkForLeds_1hz|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(2),
	datab => \blinkForLeds_1hz|s_counter\(6),
	datac => \blinkForLeds_1hz|s_counter\(1),
	datad => \blinkForLeds_1hz|s_counter\(0),
	combout => \blinkForLeds_1hz|LessThan0~1_combout\);

-- Location: LCCOMB_X83_Y72_N4
\blinkForLeds_1hz|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~2_combout\ = (((\blinkForLeds_1hz|LessThan0~1_combout\) # (!\blinkForLeds_1hz|s_counter\(4))) # (!\blinkForLeds_1hz|s_counter\(5))) # (!\blinkForLeds_1hz|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(3),
	datab => \blinkForLeds_1hz|s_counter\(5),
	datac => \blinkForLeds_1hz|s_counter\(4),
	datad => \blinkForLeds_1hz|LessThan0~1_combout\,
	combout => \blinkForLeds_1hz|LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y71_N2
\blinkForLeds_1hz|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~4_combout\ = (!\blinkForLeds_1hz|s_counter\(11) & (\blinkForLeds_1hz|LessThan0~0_combout\ & (\blinkForLeds_1hz|LessThan0~3_combout\ & \blinkForLeds_1hz|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(11),
	datab => \blinkForLeds_1hz|LessThan0~0_combout\,
	datac => \blinkForLeds_1hz|LessThan0~3_combout\,
	datad => \blinkForLeds_1hz|LessThan0~2_combout\,
	combout => \blinkForLeds_1hz|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y71_N10
\blinkForLeds_1hz|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|LessThan0~8_combout\ = (\blinkForLeds_1hz|s_counter\(25) & ((\blinkForLeds_1hz|s_counter\(24)) # ((!\blinkForLeds_1hz|LessThan0~7_combout\ & !\blinkForLeds_1hz|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(24),
	datab => \blinkForLeds_1hz|s_counter\(25),
	datac => \blinkForLeds_1hz|LessThan0~7_combout\,
	datad => \blinkForLeds_1hz|LessThan0~4_combout\,
	combout => \blinkForLeds_1hz|LessThan0~8_combout\);

-- Location: FF_X83_Y72_N7
\blinkForLeds_1hz|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[0]~26_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(0));

-- Location: LCCOMB_X83_Y72_N8
\blinkForLeds_1hz|s_counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[1]~28_combout\ = (\blinkForLeds_1hz|s_counter\(1) & (!\blinkForLeds_1hz|s_counter[0]~27\)) # (!\blinkForLeds_1hz|s_counter\(1) & ((\blinkForLeds_1hz|s_counter[0]~27\) # (GND)))
-- \blinkForLeds_1hz|s_counter[1]~29\ = CARRY((!\blinkForLeds_1hz|s_counter[0]~27\) # (!\blinkForLeds_1hz|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(1),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[0]~27\,
	combout => \blinkForLeds_1hz|s_counter[1]~28_combout\,
	cout => \blinkForLeds_1hz|s_counter[1]~29\);

-- Location: FF_X83_Y72_N9
\blinkForLeds_1hz|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[1]~28_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(1));

-- Location: LCCOMB_X83_Y72_N10
\blinkForLeds_1hz|s_counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[2]~30_combout\ = (\blinkForLeds_1hz|s_counter\(2) & (\blinkForLeds_1hz|s_counter[1]~29\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(2) & (!\blinkForLeds_1hz|s_counter[1]~29\ & VCC))
-- \blinkForLeds_1hz|s_counter[2]~31\ = CARRY((\blinkForLeds_1hz|s_counter\(2) & !\blinkForLeds_1hz|s_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(2),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[1]~29\,
	combout => \blinkForLeds_1hz|s_counter[2]~30_combout\,
	cout => \blinkForLeds_1hz|s_counter[2]~31\);

-- Location: FF_X83_Y72_N11
\blinkForLeds_1hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[2]~30_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(2));

-- Location: LCCOMB_X83_Y72_N12
\blinkForLeds_1hz|s_counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[3]~32_combout\ = (\blinkForLeds_1hz|s_counter\(3) & (!\blinkForLeds_1hz|s_counter[2]~31\)) # (!\blinkForLeds_1hz|s_counter\(3) & ((\blinkForLeds_1hz|s_counter[2]~31\) # (GND)))
-- \blinkForLeds_1hz|s_counter[3]~33\ = CARRY((!\blinkForLeds_1hz|s_counter[2]~31\) # (!\blinkForLeds_1hz|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(3),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[2]~31\,
	combout => \blinkForLeds_1hz|s_counter[3]~32_combout\,
	cout => \blinkForLeds_1hz|s_counter[3]~33\);

-- Location: FF_X83_Y72_N13
\blinkForLeds_1hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[3]~32_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(3));

-- Location: LCCOMB_X83_Y72_N14
\blinkForLeds_1hz|s_counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[4]~34_combout\ = (\blinkForLeds_1hz|s_counter\(4) & (\blinkForLeds_1hz|s_counter[3]~33\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(4) & (!\blinkForLeds_1hz|s_counter[3]~33\ & VCC))
-- \blinkForLeds_1hz|s_counter[4]~35\ = CARRY((\blinkForLeds_1hz|s_counter\(4) & !\blinkForLeds_1hz|s_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(4),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[3]~33\,
	combout => \blinkForLeds_1hz|s_counter[4]~34_combout\,
	cout => \blinkForLeds_1hz|s_counter[4]~35\);

-- Location: FF_X83_Y72_N15
\blinkForLeds_1hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[4]~34_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(4));

-- Location: LCCOMB_X83_Y72_N16
\blinkForLeds_1hz|s_counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[5]~36_combout\ = (\blinkForLeds_1hz|s_counter\(5) & (!\blinkForLeds_1hz|s_counter[4]~35\)) # (!\blinkForLeds_1hz|s_counter\(5) & ((\blinkForLeds_1hz|s_counter[4]~35\) # (GND)))
-- \blinkForLeds_1hz|s_counter[5]~37\ = CARRY((!\blinkForLeds_1hz|s_counter[4]~35\) # (!\blinkForLeds_1hz|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(5),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[4]~35\,
	combout => \blinkForLeds_1hz|s_counter[5]~36_combout\,
	cout => \blinkForLeds_1hz|s_counter[5]~37\);

-- Location: FF_X83_Y72_N17
\blinkForLeds_1hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[5]~36_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(5));

-- Location: LCCOMB_X83_Y72_N18
\blinkForLeds_1hz|s_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[6]~38_combout\ = (\blinkForLeds_1hz|s_counter\(6) & (\blinkForLeds_1hz|s_counter[5]~37\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(6) & (!\blinkForLeds_1hz|s_counter[5]~37\ & VCC))
-- \blinkForLeds_1hz|s_counter[6]~39\ = CARRY((\blinkForLeds_1hz|s_counter\(6) & !\blinkForLeds_1hz|s_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(6),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[5]~37\,
	combout => \blinkForLeds_1hz|s_counter[6]~38_combout\,
	cout => \blinkForLeds_1hz|s_counter[6]~39\);

-- Location: FF_X83_Y72_N19
\blinkForLeds_1hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[6]~38_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(6));

-- Location: LCCOMB_X83_Y72_N20
\blinkForLeds_1hz|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[7]~40_combout\ = (\blinkForLeds_1hz|s_counter\(7) & (!\blinkForLeds_1hz|s_counter[6]~39\)) # (!\blinkForLeds_1hz|s_counter\(7) & ((\blinkForLeds_1hz|s_counter[6]~39\) # (GND)))
-- \blinkForLeds_1hz|s_counter[7]~41\ = CARRY((!\blinkForLeds_1hz|s_counter[6]~39\) # (!\blinkForLeds_1hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(7),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[6]~39\,
	combout => \blinkForLeds_1hz|s_counter[7]~40_combout\,
	cout => \blinkForLeds_1hz|s_counter[7]~41\);

-- Location: FF_X83_Y72_N21
\blinkForLeds_1hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[7]~40_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(7));

-- Location: LCCOMB_X83_Y72_N22
\blinkForLeds_1hz|s_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[8]~42_combout\ = (\blinkForLeds_1hz|s_counter\(8) & (\blinkForLeds_1hz|s_counter[7]~41\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(8) & (!\blinkForLeds_1hz|s_counter[7]~41\ & VCC))
-- \blinkForLeds_1hz|s_counter[8]~43\ = CARRY((\blinkForLeds_1hz|s_counter\(8) & !\blinkForLeds_1hz|s_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(8),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[7]~41\,
	combout => \blinkForLeds_1hz|s_counter[8]~42_combout\,
	cout => \blinkForLeds_1hz|s_counter[8]~43\);

-- Location: FF_X83_Y72_N23
\blinkForLeds_1hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[8]~42_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(8));

-- Location: LCCOMB_X83_Y72_N24
\blinkForLeds_1hz|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[9]~44_combout\ = (\blinkForLeds_1hz|s_counter\(9) & (!\blinkForLeds_1hz|s_counter[8]~43\)) # (!\blinkForLeds_1hz|s_counter\(9) & ((\blinkForLeds_1hz|s_counter[8]~43\) # (GND)))
-- \blinkForLeds_1hz|s_counter[9]~45\ = CARRY((!\blinkForLeds_1hz|s_counter[8]~43\) # (!\blinkForLeds_1hz|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(9),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[8]~43\,
	combout => \blinkForLeds_1hz|s_counter[9]~44_combout\,
	cout => \blinkForLeds_1hz|s_counter[9]~45\);

-- Location: FF_X83_Y72_N25
\blinkForLeds_1hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[9]~44_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(9));

-- Location: LCCOMB_X83_Y72_N26
\blinkForLeds_1hz|s_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[10]~46_combout\ = (\blinkForLeds_1hz|s_counter\(10) & (\blinkForLeds_1hz|s_counter[9]~45\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(10) & (!\blinkForLeds_1hz|s_counter[9]~45\ & VCC))
-- \blinkForLeds_1hz|s_counter[10]~47\ = CARRY((\blinkForLeds_1hz|s_counter\(10) & !\blinkForLeds_1hz|s_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(10),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[9]~45\,
	combout => \blinkForLeds_1hz|s_counter[10]~46_combout\,
	cout => \blinkForLeds_1hz|s_counter[10]~47\);

-- Location: FF_X83_Y72_N27
\blinkForLeds_1hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[10]~46_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(10));

-- Location: LCCOMB_X83_Y72_N28
\blinkForLeds_1hz|s_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[11]~48_combout\ = (\blinkForLeds_1hz|s_counter\(11) & (!\blinkForLeds_1hz|s_counter[10]~47\)) # (!\blinkForLeds_1hz|s_counter\(11) & ((\blinkForLeds_1hz|s_counter[10]~47\) # (GND)))
-- \blinkForLeds_1hz|s_counter[11]~49\ = CARRY((!\blinkForLeds_1hz|s_counter[10]~47\) # (!\blinkForLeds_1hz|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(11),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[10]~47\,
	combout => \blinkForLeds_1hz|s_counter[11]~48_combout\,
	cout => \blinkForLeds_1hz|s_counter[11]~49\);

-- Location: FF_X83_Y72_N29
\blinkForLeds_1hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[11]~48_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(11));

-- Location: LCCOMB_X83_Y72_N30
\blinkForLeds_1hz|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[12]~50_combout\ = (\blinkForLeds_1hz|s_counter\(12) & (\blinkForLeds_1hz|s_counter[11]~49\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(12) & (!\blinkForLeds_1hz|s_counter[11]~49\ & VCC))
-- \blinkForLeds_1hz|s_counter[12]~51\ = CARRY((\blinkForLeds_1hz|s_counter\(12) & !\blinkForLeds_1hz|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(12),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[11]~49\,
	combout => \blinkForLeds_1hz|s_counter[12]~50_combout\,
	cout => \blinkForLeds_1hz|s_counter[12]~51\);

-- Location: FF_X82_Y71_N5
\blinkForLeds_1hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_1hz|s_counter[12]~50_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(12));

-- Location: LCCOMB_X83_Y71_N0
\blinkForLeds_1hz|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[13]~52_combout\ = (\blinkForLeds_1hz|s_counter\(13) & (!\blinkForLeds_1hz|s_counter[12]~51\)) # (!\blinkForLeds_1hz|s_counter\(13) & ((\blinkForLeds_1hz|s_counter[12]~51\) # (GND)))
-- \blinkForLeds_1hz|s_counter[13]~53\ = CARRY((!\blinkForLeds_1hz|s_counter[12]~51\) # (!\blinkForLeds_1hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(13),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[12]~51\,
	combout => \blinkForLeds_1hz|s_counter[13]~52_combout\,
	cout => \blinkForLeds_1hz|s_counter[13]~53\);

-- Location: FF_X82_Y71_N7
\blinkForLeds_1hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_1hz|s_counter[13]~52_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(13));

-- Location: LCCOMB_X83_Y71_N2
\blinkForLeds_1hz|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[14]~54_combout\ = (\blinkForLeds_1hz|s_counter\(14) & (\blinkForLeds_1hz|s_counter[13]~53\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(14) & (!\blinkForLeds_1hz|s_counter[13]~53\ & VCC))
-- \blinkForLeds_1hz|s_counter[14]~55\ = CARRY((\blinkForLeds_1hz|s_counter\(14) & !\blinkForLeds_1hz|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(14),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[13]~53\,
	combout => \blinkForLeds_1hz|s_counter[14]~54_combout\,
	cout => \blinkForLeds_1hz|s_counter[14]~55\);

-- Location: FF_X82_Y71_N21
\blinkForLeds_1hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_1hz|s_counter[14]~54_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(14));

-- Location: LCCOMB_X83_Y71_N4
\blinkForLeds_1hz|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[15]~56_combout\ = (\blinkForLeds_1hz|s_counter\(15) & (!\blinkForLeds_1hz|s_counter[14]~55\)) # (!\blinkForLeds_1hz|s_counter\(15) & ((\blinkForLeds_1hz|s_counter[14]~55\) # (GND)))
-- \blinkForLeds_1hz|s_counter[15]~57\ = CARRY((!\blinkForLeds_1hz|s_counter[14]~55\) # (!\blinkForLeds_1hz|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(15),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[14]~55\,
	combout => \blinkForLeds_1hz|s_counter[15]~56_combout\,
	cout => \blinkForLeds_1hz|s_counter[15]~57\);

-- Location: FF_X82_Y71_N23
\blinkForLeds_1hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \blinkForLeds_1hz|s_counter[15]~56_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(15));

-- Location: LCCOMB_X83_Y71_N6
\blinkForLeds_1hz|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[16]~58_combout\ = (\blinkForLeds_1hz|s_counter\(16) & (\blinkForLeds_1hz|s_counter[15]~57\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(16) & (!\blinkForLeds_1hz|s_counter[15]~57\ & VCC))
-- \blinkForLeds_1hz|s_counter[16]~59\ = CARRY((\blinkForLeds_1hz|s_counter\(16) & !\blinkForLeds_1hz|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(16),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[15]~57\,
	combout => \blinkForLeds_1hz|s_counter[16]~58_combout\,
	cout => \blinkForLeds_1hz|s_counter[16]~59\);

-- Location: FF_X83_Y71_N7
\blinkForLeds_1hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[16]~58_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(16));

-- Location: LCCOMB_X83_Y71_N8
\blinkForLeds_1hz|s_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[17]~60_combout\ = (\blinkForLeds_1hz|s_counter\(17) & (!\blinkForLeds_1hz|s_counter[16]~59\)) # (!\blinkForLeds_1hz|s_counter\(17) & ((\blinkForLeds_1hz|s_counter[16]~59\) # (GND)))
-- \blinkForLeds_1hz|s_counter[17]~61\ = CARRY((!\blinkForLeds_1hz|s_counter[16]~59\) # (!\blinkForLeds_1hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(17),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[16]~59\,
	combout => \blinkForLeds_1hz|s_counter[17]~60_combout\,
	cout => \blinkForLeds_1hz|s_counter[17]~61\);

-- Location: FF_X83_Y71_N9
\blinkForLeds_1hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[17]~60_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(17));

-- Location: LCCOMB_X83_Y71_N10
\blinkForLeds_1hz|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[18]~62_combout\ = (\blinkForLeds_1hz|s_counter\(18) & (\blinkForLeds_1hz|s_counter[17]~61\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(18) & (!\blinkForLeds_1hz|s_counter[17]~61\ & VCC))
-- \blinkForLeds_1hz|s_counter[18]~63\ = CARRY((\blinkForLeds_1hz|s_counter\(18) & !\blinkForLeds_1hz|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(18),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[17]~61\,
	combout => \blinkForLeds_1hz|s_counter[18]~62_combout\,
	cout => \blinkForLeds_1hz|s_counter[18]~63\);

-- Location: FF_X83_Y71_N11
\blinkForLeds_1hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[18]~62_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(18));

-- Location: LCCOMB_X83_Y71_N12
\blinkForLeds_1hz|s_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[19]~64_combout\ = (\blinkForLeds_1hz|s_counter\(19) & (!\blinkForLeds_1hz|s_counter[18]~63\)) # (!\blinkForLeds_1hz|s_counter\(19) & ((\blinkForLeds_1hz|s_counter[18]~63\) # (GND)))
-- \blinkForLeds_1hz|s_counter[19]~65\ = CARRY((!\blinkForLeds_1hz|s_counter[18]~63\) # (!\blinkForLeds_1hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(19),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[18]~63\,
	combout => \blinkForLeds_1hz|s_counter[19]~64_combout\,
	cout => \blinkForLeds_1hz|s_counter[19]~65\);

-- Location: FF_X83_Y71_N13
\blinkForLeds_1hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[19]~64_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(19));

-- Location: LCCOMB_X83_Y71_N14
\blinkForLeds_1hz|s_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[20]~66_combout\ = (\blinkForLeds_1hz|s_counter\(20) & (\blinkForLeds_1hz|s_counter[19]~65\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(20) & (!\blinkForLeds_1hz|s_counter[19]~65\ & VCC))
-- \blinkForLeds_1hz|s_counter[20]~67\ = CARRY((\blinkForLeds_1hz|s_counter\(20) & !\blinkForLeds_1hz|s_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(20),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[19]~65\,
	combout => \blinkForLeds_1hz|s_counter[20]~66_combout\,
	cout => \blinkForLeds_1hz|s_counter[20]~67\);

-- Location: FF_X83_Y71_N15
\blinkForLeds_1hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[20]~66_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(20));

-- Location: LCCOMB_X83_Y71_N16
\blinkForLeds_1hz|s_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[21]~68_combout\ = (\blinkForLeds_1hz|s_counter\(21) & (!\blinkForLeds_1hz|s_counter[20]~67\)) # (!\blinkForLeds_1hz|s_counter\(21) & ((\blinkForLeds_1hz|s_counter[20]~67\) # (GND)))
-- \blinkForLeds_1hz|s_counter[21]~69\ = CARRY((!\blinkForLeds_1hz|s_counter[20]~67\) # (!\blinkForLeds_1hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(21),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[20]~67\,
	combout => \blinkForLeds_1hz|s_counter[21]~68_combout\,
	cout => \blinkForLeds_1hz|s_counter[21]~69\);

-- Location: FF_X83_Y71_N17
\blinkForLeds_1hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[21]~68_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(21));

-- Location: LCCOMB_X83_Y71_N18
\blinkForLeds_1hz|s_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[22]~70_combout\ = (\blinkForLeds_1hz|s_counter\(22) & (\blinkForLeds_1hz|s_counter[21]~69\ $ (GND))) # (!\blinkForLeds_1hz|s_counter\(22) & (!\blinkForLeds_1hz|s_counter[21]~69\ & VCC))
-- \blinkForLeds_1hz|s_counter[22]~71\ = CARRY((\blinkForLeds_1hz|s_counter\(22) & !\blinkForLeds_1hz|s_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(22),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[21]~69\,
	combout => \blinkForLeds_1hz|s_counter[22]~70_combout\,
	cout => \blinkForLeds_1hz|s_counter[22]~71\);

-- Location: FF_X83_Y71_N19
\blinkForLeds_1hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[22]~70_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(22));

-- Location: LCCOMB_X83_Y71_N20
\blinkForLeds_1hz|s_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinkForLeds_1hz|s_counter[23]~72_combout\ = (\blinkForLeds_1hz|s_counter\(23) & (!\blinkForLeds_1hz|s_counter[22]~71\)) # (!\blinkForLeds_1hz|s_counter\(23) & ((\blinkForLeds_1hz|s_counter[22]~71\) # (GND)))
-- \blinkForLeds_1hz|s_counter[23]~73\ = CARRY((!\blinkForLeds_1hz|s_counter[22]~71\) # (!\blinkForLeds_1hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinkForLeds_1hz|s_counter\(23),
	datad => VCC,
	cin => \blinkForLeds_1hz|s_counter[22]~71\,
	combout => \blinkForLeds_1hz|s_counter[23]~72_combout\,
	cout => \blinkForLeds_1hz|s_counter[23]~73\);

-- Location: FF_X83_Y71_N21
\blinkForLeds_1hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[23]~72_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(23));

-- Location: FF_X83_Y71_N23
\blinkForLeds_1hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blinkForLeds_1hz|s_counter[24]~74_combout\,
	sclr => \blinkForLeds_1hz|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinkForLeds_1hz|s_counter\(24));

-- Location: LCCOMB_X81_Y8_N14
\options_mux|dataOut[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~9_combout\ = (sync_sw(1) & ((!sync_sw(0)) # (!\control_program4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_program4~q\,
	datab => sync_sw(0),
	datac => sync_sw(1),
	combout => \options_mux|dataOut[0]~9_combout\);

-- Location: LCCOMB_X82_Y71_N12
\options_mux|dataOut[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~10_combout\ = (\options_mux|dataOut[0]~9_combout\ & ((\blinkForLeds_1hz|s_counter\(25)) # ((\blinkForLeds_1hz|s_counter\(24) & \blinkForLeds_1hz|s_counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(24),
	datab => \blinkForLeds_1hz|s_counter\(25),
	datac => \blinkForLeds_1hz|s_counter\(23),
	datad => \options_mux|dataOut[0]~9_combout\,
	combout => \options_mux|dataOut[0]~10_combout\);

-- Location: LCCOMB_X82_Y71_N24
\options_mux|dataOut[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~15_combout\ = (\options_mux|dataOut[0]~14_combout\ & (\blinkForLeds_1hz|s_counter\(18) & (\blinkForLeds_1hz|s_counter\(24) & \options_mux|dataOut[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \options_mux|dataOut[0]~14_combout\,
	datab => \blinkForLeds_1hz|s_counter\(18),
	datac => \blinkForLeds_1hz|s_counter\(24),
	datad => \options_mux|dataOut[0]~9_combout\,
	combout => \options_mux|dataOut[0]~15_combout\);

-- Location: LCCOMB_X82_Y71_N20
\options_mux|dataOut[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~11_combout\ = (\blinkForLeds_1hz|s_counter\(13) & (\blinkForLeds_1hz|s_counter\(12) & (\blinkForLeds_1hz|s_counter\(14) & \blinkForLeds_1hz|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(13),
	datab => \blinkForLeds_1hz|s_counter\(12),
	datac => \blinkForLeds_1hz|s_counter\(14),
	datad => \blinkForLeds_1hz|s_counter\(11),
	combout => \options_mux|dataOut[0]~11_combout\);

-- Location: LCCOMB_X82_Y71_N30
\options_mux|dataOut[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~12_combout\ = (\blinkForLeds_1hz|s_counter\(16) & (\options_mux|dataOut[0]~11_combout\ & ((\blinkForLeds_1hz|s_counter\(6)) # (!\blinkForLeds_1hz|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkForLeds_1hz|s_counter\(16),
	datab => \blinkForLeds_1hz|LessThan0~0_combout\,
	datac => \options_mux|dataOut[0]~11_combout\,
	datad => \blinkForLeds_1hz|s_counter\(6),
	combout => \options_mux|dataOut[0]~12_combout\);

-- Location: LCCOMB_X82_Y71_N22
\options_mux|dataOut[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~13_combout\ = (\options_mux|dataOut[0]~12_combout\) # ((\blinkForLeds_1hz|s_counter\(17)) # ((\blinkForLeds_1hz|s_counter\(15) & \blinkForLeds_1hz|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \options_mux|dataOut[0]~12_combout\,
	datab => \blinkForLeds_1hz|s_counter\(17),
	datac => \blinkForLeds_1hz|s_counter\(15),
	datad => \blinkForLeds_1hz|s_counter\(16),
	combout => \options_mux|dataOut[0]~13_combout\);

-- Location: LCCOMB_X82_Y71_N26
\options_mux|dataOut[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|dataOut[0]~16_combout\ = (\options_mux|dataOut[0]~10_combout\) # (((\options_mux|dataOut[0]~15_combout\ & \options_mux|dataOut[0]~13_combout\)) # (!\options_mux|dataOut[4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \options_mux|dataOut[0]~10_combout\,
	datab => \options_mux|dataOut[0]~15_combout\,
	datac => \options_mux|dataOut[4]~7_combout\,
	datad => \options_mux|dataOut[0]~13_combout\,
	combout => \options_mux|dataOut[0]~16_combout\);

-- Location: LCCOMB_X81_Y8_N24
\sevenSegProgransHEX0|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegProgransHEX0|decOut_n~0_combout\ = sync_sw(0) $ (sync_sw(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sync_sw(0),
	datac => sync_sw(1),
	combout => \sevenSegProgransHEX0|decOut_n~0_combout\);

-- Location: LCCOMB_X81_Y8_N2
\options_mux|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|Equal1~0_combout\ = (sync_sw(0) & !sync_sw(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sync_sw(0),
	datac => sync_sw(1),
	combout => \options_mux|Equal1~0_combout\);

-- Location: LCCOMB_X79_Y8_N28
\options_mux|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \options_mux|Equal1~1_combout\ = (sync_sw(0) & sync_sw(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sync_sw(0),
	datad => sync_sw(1),
	combout => \options_mux|Equal1~1_combout\);

-- Location: LCCOMB_X80_Y8_N0
\counter_greenBlink|s_count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[0]~34_combout\ = \counter_greenBlink|s_count\(0) $ (VCC)
-- \counter_greenBlink|s_count[0]~35\ = CARRY(\counter_greenBlink|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(0),
	datad => VCC,
	combout => \counter_greenBlink|s_count[0]~34_combout\,
	cout => \counter_greenBlink|s_count[0]~35\);

-- Location: LCCOMB_X80_Y8_N4
\counter_greenBlink|s_count[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[2]~38_combout\ = (\counter_greenBlink|s_count\(2) & (\counter_greenBlink|s_count[1]~37\ $ (GND))) # (!\counter_greenBlink|s_count\(2) & (!\counter_greenBlink|s_count[1]~37\ & VCC))
-- \counter_greenBlink|s_count[2]~39\ = CARRY((\counter_greenBlink|s_count\(2) & !\counter_greenBlink|s_count[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(2),
	datad => VCC,
	cin => \counter_greenBlink|s_count[1]~37\,
	combout => \counter_greenBlink|s_count[2]~38_combout\,
	cout => \counter_greenBlink|s_count[2]~39\);

-- Location: LCCOMB_X80_Y8_N6
\counter_greenBlink|s_count[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[3]~40_combout\ = (\counter_greenBlink|s_count\(3) & (!\counter_greenBlink|s_count[2]~39\)) # (!\counter_greenBlink|s_count\(3) & ((\counter_greenBlink|s_count[2]~39\) # (GND)))
-- \counter_greenBlink|s_count[3]~41\ = CARRY((!\counter_greenBlink|s_count[2]~39\) # (!\counter_greenBlink|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(3),
	datad => VCC,
	cin => \counter_greenBlink|s_count[2]~39\,
	combout => \counter_greenBlink|s_count[3]~40_combout\,
	cout => \counter_greenBlink|s_count[3]~41\);

-- Location: LCCOMB_X83_Y12_N8
\pulse_1hz|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~1_cout\ = CARRY((\pulse_4seg|s_cnt\(1) & \pulse_4seg|s_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(1),
	datab => \pulse_4seg|s_cnt\(0),
	datad => VCC,
	cout => \pulse_1hz|Add0~1_cout\);

-- Location: LCCOMB_X83_Y12_N10
\pulse_1hz|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~3_cout\ = CARRY((!\pulse_1hz|Add0~1_cout\) # (!\pulse_4seg|s_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(2),
	datad => VCC,
	cin => \pulse_1hz|Add0~1_cout\,
	cout => \pulse_1hz|Add0~3_cout\);

-- Location: LCCOMB_X83_Y12_N12
\pulse_1hz|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~5_cout\ = CARRY((\pulse_4seg|s_cnt\(3) & !\pulse_1hz|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(3),
	datad => VCC,
	cin => \pulse_1hz|Add0~3_cout\,
	cout => \pulse_1hz|Add0~5_cout\);

-- Location: LCCOMB_X83_Y12_N14
\pulse_1hz|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~7_cout\ = CARRY((!\pulse_1hz|Add0~5_cout\) # (!\pulse_4seg|s_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(4),
	datad => VCC,
	cin => \pulse_1hz|Add0~5_cout\,
	cout => \pulse_1hz|Add0~7_cout\);

-- Location: LCCOMB_X83_Y12_N16
\pulse_1hz|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~9_cout\ = CARRY((\pulse_4seg|s_cnt\(5) & !\pulse_1hz|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(5),
	datad => VCC,
	cin => \pulse_1hz|Add0~7_cout\,
	cout => \pulse_1hz|Add0~9_cout\);

-- Location: LCCOMB_X83_Y12_N18
\pulse_1hz|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~11_cout\ = CARRY((!\pulse_1hz|Add0~9_cout\) # (!\pulse_4seg|s_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(6),
	datad => VCC,
	cin => \pulse_1hz|Add0~9_cout\,
	cout => \pulse_1hz|Add0~11_cout\);

-- Location: LCCOMB_X83_Y12_N20
\pulse_1hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~12_combout\ = (\pulse_1hz|s_cnt\(7) & (\pulse_1hz|Add0~11_cout\ $ (GND))) # (!\pulse_1hz|s_cnt\(7) & (!\pulse_1hz|Add0~11_cout\ & VCC))
-- \pulse_1hz|Add0~13\ = CARRY((\pulse_1hz|s_cnt\(7) & !\pulse_1hz|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(7),
	datad => VCC,
	cin => \pulse_1hz|Add0~11_cout\,
	combout => \pulse_1hz|Add0~12_combout\,
	cout => \pulse_1hz|Add0~13\);

-- Location: LCCOMB_X83_Y12_N4
\pulse_1hz|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~5_combout\ = (\pulse_1hz|Add0~12_combout\ & !\pulse_1hz|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|Add0~12_combout\,
	datad => \pulse_1hz|Equal0~6_combout\,
	combout => \pulse_1hz|s_cnt~5_combout\);

-- Location: FF_X83_Y12_N5
\pulse_1hz|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(7));

-- Location: LCCOMB_X83_Y12_N22
\pulse_1hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~14_combout\ = (\pulse_1hz|s_cnt\(8) & (!\pulse_1hz|Add0~13\)) # (!\pulse_1hz|s_cnt\(8) & ((\pulse_1hz|Add0~13\) # (GND)))
-- \pulse_1hz|Add0~15\ = CARRY((!\pulse_1hz|Add0~13\) # (!\pulse_1hz|s_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(8),
	datad => VCC,
	cin => \pulse_1hz|Add0~13\,
	combout => \pulse_1hz|Add0~14_combout\,
	cout => \pulse_1hz|Add0~15\);

-- Location: FF_X83_Y12_N23
\pulse_1hz|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(8));

-- Location: LCCOMB_X83_Y12_N24
\pulse_1hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~16_combout\ = (\pulse_1hz|s_cnt\(9) & (\pulse_1hz|Add0~15\ $ (GND))) # (!\pulse_1hz|s_cnt\(9) & (!\pulse_1hz|Add0~15\ & VCC))
-- \pulse_1hz|Add0~17\ = CARRY((\pulse_1hz|s_cnt\(9) & !\pulse_1hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(9),
	datad => VCC,
	cin => \pulse_1hz|Add0~15\,
	combout => \pulse_1hz|Add0~16_combout\,
	cout => \pulse_1hz|Add0~17\);

-- Location: FF_X83_Y12_N25
\pulse_1hz|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(9));

-- Location: LCCOMB_X83_Y12_N26
\pulse_1hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~18_combout\ = (\pulse_1hz|s_cnt\(10) & (!\pulse_1hz|Add0~17\)) # (!\pulse_1hz|s_cnt\(10) & ((\pulse_1hz|Add0~17\) # (GND)))
-- \pulse_1hz|Add0~19\ = CARRY((!\pulse_1hz|Add0~17\) # (!\pulse_1hz|s_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(10),
	datad => VCC,
	cin => \pulse_1hz|Add0~17\,
	combout => \pulse_1hz|Add0~18_combout\,
	cout => \pulse_1hz|Add0~19\);

-- Location: FF_X83_Y12_N27
\pulse_1hz|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(10));

-- Location: LCCOMB_X83_Y12_N28
\pulse_1hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~20_combout\ = (\pulse_1hz|s_cnt\(11) & (\pulse_1hz|Add0~19\ $ (GND))) # (!\pulse_1hz|s_cnt\(11) & (!\pulse_1hz|Add0~19\ & VCC))
-- \pulse_1hz|Add0~21\ = CARRY((\pulse_1hz|s_cnt\(11) & !\pulse_1hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(11),
	datad => VCC,
	cin => \pulse_1hz|Add0~19\,
	combout => \pulse_1hz|Add0~20_combout\,
	cout => \pulse_1hz|Add0~21\);

-- Location: FF_X83_Y12_N29
\pulse_1hz|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(11));

-- Location: LCCOMB_X83_Y12_N30
\pulse_1hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~22_combout\ = (\pulse_1hz|s_cnt\(12) & (!\pulse_1hz|Add0~21\)) # (!\pulse_1hz|s_cnt\(12) & ((\pulse_1hz|Add0~21\) # (GND)))
-- \pulse_1hz|Add0~23\ = CARRY((!\pulse_1hz|Add0~21\) # (!\pulse_1hz|s_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(12),
	datad => VCC,
	cin => \pulse_1hz|Add0~21\,
	combout => \pulse_1hz|Add0~22_combout\,
	cout => \pulse_1hz|Add0~23\);

-- Location: LCCOMB_X83_Y12_N0
\pulse_1hz|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~4_combout\ = (\pulse_1hz|Add0~22_combout\ & !\pulse_1hz|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_1hz|Add0~22_combout\,
	datad => \pulse_1hz|Equal0~6_combout\,
	combout => \pulse_1hz|s_cnt~4_combout\);

-- Location: FF_X83_Y12_N1
\pulse_1hz|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(12));

-- Location: LCCOMB_X83_Y11_N0
\pulse_1hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~24_combout\ = (\pulse_1hz|s_cnt\(13) & (\pulse_1hz|Add0~23\ $ (GND))) # (!\pulse_1hz|s_cnt\(13) & (!\pulse_1hz|Add0~23\ & VCC))
-- \pulse_1hz|Add0~25\ = CARRY((\pulse_1hz|s_cnt\(13) & !\pulse_1hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(13),
	datad => VCC,
	cin => \pulse_1hz|Add0~23\,
	combout => \pulse_1hz|Add0~24_combout\,
	cout => \pulse_1hz|Add0~25\);

-- Location: LCCOMB_X84_Y11_N10
\pulse_1hz|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~3_combout\ = (\pulse_1hz|Add0~24_combout\ & !\pulse_1hz|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_1hz|Add0~24_combout\,
	datad => \pulse_1hz|Equal0~6_combout\,
	combout => \pulse_1hz|s_cnt~3_combout\);

-- Location: FF_X84_Y11_N11
\pulse_1hz|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(13));

-- Location: LCCOMB_X83_Y11_N2
\pulse_1hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~26_combout\ = (\pulse_1hz|s_cnt\(14) & (!\pulse_1hz|Add0~25\)) # (!\pulse_1hz|s_cnt\(14) & ((\pulse_1hz|Add0~25\) # (GND)))
-- \pulse_1hz|Add0~27\ = CARRY((!\pulse_1hz|Add0~25\) # (!\pulse_1hz|s_cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(14),
	datad => VCC,
	cin => \pulse_1hz|Add0~25\,
	combout => \pulse_1hz|Add0~26_combout\,
	cout => \pulse_1hz|Add0~27\);

-- Location: LCCOMB_X84_Y11_N2
\pulse_1hz|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~2_combout\ = (!\pulse_1hz|Equal0~6_combout\ & \pulse_1hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|Equal0~6_combout\,
	datad => \pulse_1hz|Add0~26_combout\,
	combout => \pulse_1hz|s_cnt~2_combout\);

-- Location: FF_X84_Y11_N3
\pulse_1hz|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(14));

-- Location: LCCOMB_X83_Y11_N4
\pulse_1hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~28_combout\ = (\pulse_1hz|s_cnt\(15) & (\pulse_1hz|Add0~27\ $ (GND))) # (!\pulse_1hz|s_cnt\(15) & (!\pulse_1hz|Add0~27\ & VCC))
-- \pulse_1hz|Add0~29\ = CARRY((\pulse_1hz|s_cnt\(15) & !\pulse_1hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(15),
	datad => VCC,
	cin => \pulse_1hz|Add0~27\,
	combout => \pulse_1hz|Add0~28_combout\,
	cout => \pulse_1hz|Add0~29\);

-- Location: LCCOMB_X84_Y11_N4
\pulse_1hz|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~1_combout\ = (\pulse_1hz|Add0~28_combout\ & !\pulse_1hz|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_1hz|Add0~28_combout\,
	datad => \pulse_1hz|Equal0~6_combout\,
	combout => \pulse_1hz|s_cnt~1_combout\);

-- Location: FF_X84_Y11_N5
\pulse_1hz|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(15));

-- Location: LCCOMB_X83_Y11_N6
\pulse_1hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~30_combout\ = (\pulse_1hz|s_cnt\(16) & (!\pulse_1hz|Add0~29\)) # (!\pulse_1hz|s_cnt\(16) & ((\pulse_1hz|Add0~29\) # (GND)))
-- \pulse_1hz|Add0~31\ = CARRY((!\pulse_1hz|Add0~29\) # (!\pulse_1hz|s_cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(16),
	datad => VCC,
	cin => \pulse_1hz|Add0~29\,
	combout => \pulse_1hz|Add0~30_combout\,
	cout => \pulse_1hz|Add0~31\);

-- Location: FF_X83_Y11_N7
\pulse_1hz|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(16));

-- Location: LCCOMB_X83_Y11_N8
\pulse_1hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~32_combout\ = (\pulse_1hz|s_cnt\(17) & (\pulse_1hz|Add0~31\ $ (GND))) # (!\pulse_1hz|s_cnt\(17) & (!\pulse_1hz|Add0~31\ & VCC))
-- \pulse_1hz|Add0~33\ = CARRY((\pulse_1hz|s_cnt\(17) & !\pulse_1hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(17),
	datad => VCC,
	cin => \pulse_1hz|Add0~31\,
	combout => \pulse_1hz|Add0~32_combout\,
	cout => \pulse_1hz|Add0~33\);

-- Location: LCCOMB_X84_Y11_N22
\pulse_1hz|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~0_combout\ = (!\pulse_1hz|Equal0~6_combout\ & \pulse_1hz|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|Equal0~6_combout\,
	datad => \pulse_1hz|Add0~32_combout\,
	combout => \pulse_1hz|s_cnt~0_combout\);

-- Location: FF_X84_Y11_N23
\pulse_1hz|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(17));

-- Location: LCCOMB_X83_Y11_N10
\pulse_1hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~34_combout\ = (\pulse_1hz|s_cnt\(18) & (!\pulse_1hz|Add0~33\)) # (!\pulse_1hz|s_cnt\(18) & ((\pulse_1hz|Add0~33\) # (GND)))
-- \pulse_1hz|Add0~35\ = CARRY((!\pulse_1hz|Add0~33\) # (!\pulse_1hz|s_cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(18),
	datad => VCC,
	cin => \pulse_1hz|Add0~33\,
	combout => \pulse_1hz|Add0~34_combout\,
	cout => \pulse_1hz|Add0~35\);

-- Location: FF_X83_Y11_N11
\pulse_1hz|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(18));

-- Location: LCCOMB_X83_Y11_N12
\pulse_1hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~36_combout\ = (\pulse_1hz|s_cnt\(19) & (\pulse_1hz|Add0~35\ $ (GND))) # (!\pulse_1hz|s_cnt\(19) & (!\pulse_1hz|Add0~35\ & VCC))
-- \pulse_1hz|Add0~37\ = CARRY((\pulse_1hz|s_cnt\(19) & !\pulse_1hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(19),
	datad => VCC,
	cin => \pulse_1hz|Add0~35\,
	combout => \pulse_1hz|Add0~36_combout\,
	cout => \pulse_1hz|Add0~37\);

-- Location: LCCOMB_X84_Y11_N30
\pulse_1hz|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~6_combout\ = (!\pulse_1hz|Equal0~6_combout\ & \pulse_1hz|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|Equal0~6_combout\,
	datad => \pulse_1hz|Add0~36_combout\,
	combout => \pulse_1hz|s_cnt~6_combout\);

-- Location: FF_X84_Y11_N31
\pulse_1hz|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(19));

-- Location: LCCOMB_X83_Y11_N14
\pulse_1hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~38_combout\ = (\pulse_1hz|s_cnt\(20) & (!\pulse_1hz|Add0~37\)) # (!\pulse_1hz|s_cnt\(20) & ((\pulse_1hz|Add0~37\) # (GND)))
-- \pulse_1hz|Add0~39\ = CARRY((!\pulse_1hz|Add0~37\) # (!\pulse_1hz|s_cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(20),
	datad => VCC,
	cin => \pulse_1hz|Add0~37\,
	combout => \pulse_1hz|Add0~38_combout\,
	cout => \pulse_1hz|Add0~39\);

-- Location: LCCOMB_X83_Y11_N30
\pulse_1hz|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~7_combout\ = (!\pulse_1hz|Equal0~6_combout\ & \pulse_1hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|Equal0~6_combout\,
	datac => \pulse_1hz|Add0~38_combout\,
	combout => \pulse_1hz|s_cnt~7_combout\);

-- Location: FF_X83_Y11_N31
\pulse_1hz|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(20));

-- Location: LCCOMB_X83_Y11_N16
\pulse_1hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~40_combout\ = (\pulse_1hz|s_cnt\(21) & (\pulse_1hz|Add0~39\ $ (GND))) # (!\pulse_1hz|s_cnt\(21) & (!\pulse_1hz|Add0~39\ & VCC))
-- \pulse_1hz|Add0~41\ = CARRY((\pulse_1hz|s_cnt\(21) & !\pulse_1hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(21),
	datad => VCC,
	cin => \pulse_1hz|Add0~39\,
	combout => \pulse_1hz|Add0~40_combout\,
	cout => \pulse_1hz|Add0~41\);

-- Location: LCCOMB_X84_Y11_N24
\pulse_1hz|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~8_combout\ = (\pulse_1hz|Add0~40_combout\ & !\pulse_1hz|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_1hz|Add0~40_combout\,
	datad => \pulse_1hz|Equal0~6_combout\,
	combout => \pulse_1hz|s_cnt~8_combout\);

-- Location: FF_X84_Y11_N25
\pulse_1hz|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(21));

-- Location: LCCOMB_X83_Y11_N18
\pulse_1hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~42_combout\ = (\pulse_1hz|s_cnt\(22) & (!\pulse_1hz|Add0~41\)) # (!\pulse_1hz|s_cnt\(22) & ((\pulse_1hz|Add0~41\) # (GND)))
-- \pulse_1hz|Add0~43\ = CARRY((!\pulse_1hz|Add0~41\) # (!\pulse_1hz|s_cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(22),
	datad => VCC,
	cin => \pulse_1hz|Add0~41\,
	combout => \pulse_1hz|Add0~42_combout\,
	cout => \pulse_1hz|Add0~43\);

-- Location: LCCOMB_X83_Y11_N28
\pulse_1hz|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~9_combout\ = (!\pulse_1hz|Equal0~6_combout\ & \pulse_1hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_1hz|Equal0~6_combout\,
	datad => \pulse_1hz|Add0~42_combout\,
	combout => \pulse_1hz|s_cnt~9_combout\);

-- Location: FF_X83_Y11_N29
\pulse_1hz|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(22));

-- Location: LCCOMB_X83_Y11_N20
\pulse_1hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~44_combout\ = (\pulse_1hz|s_cnt\(23) & (\pulse_1hz|Add0~43\ $ (GND))) # (!\pulse_1hz|s_cnt\(23) & (!\pulse_1hz|Add0~43\ & VCC))
-- \pulse_1hz|Add0~45\ = CARRY((\pulse_1hz|s_cnt\(23) & !\pulse_1hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(23),
	datad => VCC,
	cin => \pulse_1hz|Add0~43\,
	combout => \pulse_1hz|Add0~44_combout\,
	cout => \pulse_1hz|Add0~45\);

-- Location: LCCOMB_X83_Y11_N26
\pulse_1hz|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~10_combout\ = (!\pulse_1hz|Equal0~6_combout\ & \pulse_1hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_1hz|Equal0~6_combout\,
	datad => \pulse_1hz|Add0~44_combout\,
	combout => \pulse_1hz|s_cnt~10_combout\);

-- Location: FF_X83_Y11_N27
\pulse_1hz|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(23));

-- Location: LCCOMB_X83_Y11_N22
\pulse_1hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~46_combout\ = (\pulse_1hz|s_cnt\(24) & (!\pulse_1hz|Add0~45\)) # (!\pulse_1hz|s_cnt\(24) & ((\pulse_1hz|Add0~45\) # (GND)))
-- \pulse_1hz|Add0~47\ = CARRY((!\pulse_1hz|Add0~45\) # (!\pulse_1hz|s_cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(24),
	datad => VCC,
	cin => \pulse_1hz|Add0~45\,
	combout => \pulse_1hz|Add0~46_combout\,
	cout => \pulse_1hz|Add0~47\);

-- Location: FF_X83_Y11_N23
\pulse_1hz|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(24));

-- Location: LCCOMB_X83_Y11_N24
\pulse_1hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Add0~48_combout\ = \pulse_1hz|s_cnt\(25) $ (!\pulse_1hz|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|s_cnt\(25),
	cin => \pulse_1hz|Add0~47\,
	combout => \pulse_1hz|Add0~48_combout\);

-- Location: LCCOMB_X84_Y11_N12
\pulse_1hz|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|s_cnt~11_combout\ = (!\pulse_1hz|Equal0~6_combout\ & \pulse_1hz|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_1hz|Equal0~6_combout\,
	datad => \pulse_1hz|Add0~48_combout\,
	combout => \pulse_1hz|s_cnt~11_combout\);

-- Location: FF_X84_Y11_N13
\pulse_1hz|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|s_cnt\(25));

-- Location: LCCOMB_X84_Y11_N18
\pulse_1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Equal0~4_combout\ = (\pulse_1hz|s_cnt\(21) & (\pulse_1hz|s_cnt\(20) & (\pulse_1hz|s_cnt\(19) & \pulse_1hz|s_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(21),
	datab => \pulse_1hz|s_cnt\(20),
	datac => \pulse_1hz|s_cnt\(19),
	datad => \pulse_1hz|s_cnt\(22),
	combout => \pulse_1hz|Equal0~4_combout\);

-- Location: LCCOMB_X84_Y11_N26
\pulse_1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Equal0~5_combout\ = (\pulse_1hz|s_cnt\(25) & (!\pulse_1hz|s_cnt\(24) & (\pulse_1hz|s_cnt\(23) & \pulse_1hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(25),
	datab => \pulse_1hz|s_cnt\(24),
	datac => \pulse_1hz|s_cnt\(23),
	datad => \pulse_1hz|Equal0~4_combout\,
	combout => \pulse_1hz|Equal0~5_combout\);

-- Location: LCCOMB_X84_Y11_N28
\pulse_1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Equal0~0_combout\ = (\pulse_1hz|s_cnt\(17) & (\pulse_1hz|s_cnt\(15) & (!\pulse_1hz|s_cnt\(16) & \pulse_1hz|s_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(17),
	datab => \pulse_1hz|s_cnt\(15),
	datac => \pulse_1hz|s_cnt\(16),
	datad => \pulse_1hz|s_cnt\(14),
	combout => \pulse_1hz|Equal0~0_combout\);

-- Location: LCCOMB_X83_Y12_N2
\pulse_1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Equal0~2_combout\ = (!\pulse_1hz|s_cnt\(8) & (!\pulse_1hz|s_cnt\(7) & (!\pulse_1hz|s_cnt\(18) & !\pulse_1hz|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(8),
	datab => \pulse_1hz|s_cnt\(7),
	datac => \pulse_1hz|s_cnt\(18),
	datad => \pulse_1hz|s_cnt\(9),
	combout => \pulse_1hz|Equal0~2_combout\);

-- Location: LCCOMB_X83_Y12_N6
\pulse_1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Equal0~1_combout\ = (!\pulse_1hz|s_cnt\(10) & (\pulse_1hz|s_cnt\(12) & (\pulse_1hz|s_cnt\(13) & !\pulse_1hz|s_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|s_cnt\(10),
	datab => \pulse_1hz|s_cnt\(12),
	datac => \pulse_1hz|s_cnt\(13),
	datad => \pulse_1hz|s_cnt\(11),
	combout => \pulse_1hz|Equal0~1_combout\);

-- Location: LCCOMB_X84_Y11_N16
\pulse_1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Equal0~3_combout\ = (\pulse_1hz|Equal0~2_combout\ & \pulse_1hz|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_1hz|Equal0~2_combout\,
	datad => \pulse_1hz|Equal0~1_combout\,
	combout => \pulse_1hz|Equal0~3_combout\);

-- Location: LCCOMB_X84_Y11_N0
\pulse_1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|Equal0~6_combout\ = (\pulse_1hz|Equal0~5_combout\ & (\pulse_1hz|Equal0~0_combout\ & (\pulse_4seg|Equal0~1_combout\ & \pulse_1hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_1hz|Equal0~5_combout\,
	datab => \pulse_1hz|Equal0~0_combout\,
	datac => \pulse_4seg|Equal0~1_combout\,
	datad => \pulse_1hz|Equal0~3_combout\,
	combout => \pulse_1hz|Equal0~6_combout\);

-- Location: LCCOMB_X84_Y11_N20
\pulse_1hz|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_1hz|pulse~feeder_combout\ = \pulse_1hz|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pulse_1hz|Equal0~6_combout\,
	combout => \pulse_1hz|pulse~feeder_combout\);

-- Location: FF_X84_Y11_N21
\pulse_1hz|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_1hz|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_1hz|pulse~q\);

-- Location: LCCOMB_X81_Y8_N20
\counter_greenBlink|s_count[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[6]~42_combout\ = (((!\control_program4~q\ & \pulse_1hz|pulse~q\)) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_program4~q\,
	datab => sync_sw(0),
	datac => sync_sw(1),
	datad => \pulse_1hz|pulse~q\,
	combout => \counter_greenBlink|s_count[6]~42_combout\);

-- Location: FF_X80_Y8_N7
\counter_greenBlink|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[3]~40_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(3));

-- Location: LCCOMB_X80_Y8_N8
\counter_greenBlink|s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[4]~43_combout\ = (\counter_greenBlink|s_count\(4) & (\counter_greenBlink|s_count[3]~41\ $ (GND))) # (!\counter_greenBlink|s_count\(4) & (!\counter_greenBlink|s_count[3]~41\ & VCC))
-- \counter_greenBlink|s_count[4]~44\ = CARRY((\counter_greenBlink|s_count\(4) & !\counter_greenBlink|s_count[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(4),
	datad => VCC,
	cin => \counter_greenBlink|s_count[3]~41\,
	combout => \counter_greenBlink|s_count[4]~43_combout\,
	cout => \counter_greenBlink|s_count[4]~44\);

-- Location: FF_X80_Y8_N9
\counter_greenBlink|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[4]~43_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(4));

-- Location: LCCOMB_X80_Y8_N10
\counter_greenBlink|s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[5]~45_combout\ = (\counter_greenBlink|s_count\(5) & (!\counter_greenBlink|s_count[4]~44\)) # (!\counter_greenBlink|s_count\(5) & ((\counter_greenBlink|s_count[4]~44\) # (GND)))
-- \counter_greenBlink|s_count[5]~46\ = CARRY((!\counter_greenBlink|s_count[4]~44\) # (!\counter_greenBlink|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(5),
	datad => VCC,
	cin => \counter_greenBlink|s_count[4]~44\,
	combout => \counter_greenBlink|s_count[5]~45_combout\,
	cout => \counter_greenBlink|s_count[5]~46\);

-- Location: FF_X80_Y8_N11
\counter_greenBlink|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[5]~45_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(5));

-- Location: LCCOMB_X80_Y8_N12
\counter_greenBlink|s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[6]~47_combout\ = (\counter_greenBlink|s_count\(6) & (\counter_greenBlink|s_count[5]~46\ $ (GND))) # (!\counter_greenBlink|s_count\(6) & (!\counter_greenBlink|s_count[5]~46\ & VCC))
-- \counter_greenBlink|s_count[6]~48\ = CARRY((\counter_greenBlink|s_count\(6) & !\counter_greenBlink|s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(6),
	datad => VCC,
	cin => \counter_greenBlink|s_count[5]~46\,
	combout => \counter_greenBlink|s_count[6]~47_combout\,
	cout => \counter_greenBlink|s_count[6]~48\);

-- Location: FF_X80_Y8_N13
\counter_greenBlink|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[6]~47_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(6));

-- Location: LCCOMB_X80_Y8_N14
\counter_greenBlink|s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[7]~49_combout\ = (\counter_greenBlink|s_count\(7) & (!\counter_greenBlink|s_count[6]~48\)) # (!\counter_greenBlink|s_count\(7) & ((\counter_greenBlink|s_count[6]~48\) # (GND)))
-- \counter_greenBlink|s_count[7]~50\ = CARRY((!\counter_greenBlink|s_count[6]~48\) # (!\counter_greenBlink|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(7),
	datad => VCC,
	cin => \counter_greenBlink|s_count[6]~48\,
	combout => \counter_greenBlink|s_count[7]~49_combout\,
	cout => \counter_greenBlink|s_count[7]~50\);

-- Location: FF_X80_Y8_N15
\counter_greenBlink|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[7]~49_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(7));

-- Location: LCCOMB_X80_Y8_N16
\counter_greenBlink|s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[8]~51_combout\ = (\counter_greenBlink|s_count\(8) & (\counter_greenBlink|s_count[7]~50\ $ (GND))) # (!\counter_greenBlink|s_count\(8) & (!\counter_greenBlink|s_count[7]~50\ & VCC))
-- \counter_greenBlink|s_count[8]~52\ = CARRY((\counter_greenBlink|s_count\(8) & !\counter_greenBlink|s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(8),
	datad => VCC,
	cin => \counter_greenBlink|s_count[7]~50\,
	combout => \counter_greenBlink|s_count[8]~51_combout\,
	cout => \counter_greenBlink|s_count[8]~52\);

-- Location: FF_X80_Y8_N17
\counter_greenBlink|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[8]~51_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(8));

-- Location: LCCOMB_X80_Y8_N18
\counter_greenBlink|s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[9]~53_combout\ = (\counter_greenBlink|s_count\(9) & (!\counter_greenBlink|s_count[8]~52\)) # (!\counter_greenBlink|s_count\(9) & ((\counter_greenBlink|s_count[8]~52\) # (GND)))
-- \counter_greenBlink|s_count[9]~54\ = CARRY((!\counter_greenBlink|s_count[8]~52\) # (!\counter_greenBlink|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(9),
	datad => VCC,
	cin => \counter_greenBlink|s_count[8]~52\,
	combout => \counter_greenBlink|s_count[9]~53_combout\,
	cout => \counter_greenBlink|s_count[9]~54\);

-- Location: FF_X80_Y8_N19
\counter_greenBlink|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[9]~53_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(9));

-- Location: LCCOMB_X80_Y8_N20
\counter_greenBlink|s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[10]~55_combout\ = (\counter_greenBlink|s_count\(10) & (\counter_greenBlink|s_count[9]~54\ $ (GND))) # (!\counter_greenBlink|s_count\(10) & (!\counter_greenBlink|s_count[9]~54\ & VCC))
-- \counter_greenBlink|s_count[10]~56\ = CARRY((\counter_greenBlink|s_count\(10) & !\counter_greenBlink|s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(10),
	datad => VCC,
	cin => \counter_greenBlink|s_count[9]~54\,
	combout => \counter_greenBlink|s_count[10]~55_combout\,
	cout => \counter_greenBlink|s_count[10]~56\);

-- Location: FF_X80_Y8_N21
\counter_greenBlink|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[10]~55_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(10));

-- Location: LCCOMB_X80_Y8_N22
\counter_greenBlink|s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[11]~57_combout\ = (\counter_greenBlink|s_count\(11) & (!\counter_greenBlink|s_count[10]~56\)) # (!\counter_greenBlink|s_count\(11) & ((\counter_greenBlink|s_count[10]~56\) # (GND)))
-- \counter_greenBlink|s_count[11]~58\ = CARRY((!\counter_greenBlink|s_count[10]~56\) # (!\counter_greenBlink|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(11),
	datad => VCC,
	cin => \counter_greenBlink|s_count[10]~56\,
	combout => \counter_greenBlink|s_count[11]~57_combout\,
	cout => \counter_greenBlink|s_count[11]~58\);

-- Location: FF_X80_Y8_N23
\counter_greenBlink|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[11]~57_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(11));

-- Location: LCCOMB_X80_Y8_N24
\counter_greenBlink|s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[12]~59_combout\ = (\counter_greenBlink|s_count\(12) & (\counter_greenBlink|s_count[11]~58\ $ (GND))) # (!\counter_greenBlink|s_count\(12) & (!\counter_greenBlink|s_count[11]~58\ & VCC))
-- \counter_greenBlink|s_count[12]~60\ = CARRY((\counter_greenBlink|s_count\(12) & !\counter_greenBlink|s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(12),
	datad => VCC,
	cin => \counter_greenBlink|s_count[11]~58\,
	combout => \counter_greenBlink|s_count[12]~59_combout\,
	cout => \counter_greenBlink|s_count[12]~60\);

-- Location: FF_X80_Y8_N25
\counter_greenBlink|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[12]~59_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(12));

-- Location: LCCOMB_X80_Y8_N26
\counter_greenBlink|s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[13]~61_combout\ = (\counter_greenBlink|s_count\(13) & (!\counter_greenBlink|s_count[12]~60\)) # (!\counter_greenBlink|s_count\(13) & ((\counter_greenBlink|s_count[12]~60\) # (GND)))
-- \counter_greenBlink|s_count[13]~62\ = CARRY((!\counter_greenBlink|s_count[12]~60\) # (!\counter_greenBlink|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(13),
	datad => VCC,
	cin => \counter_greenBlink|s_count[12]~60\,
	combout => \counter_greenBlink|s_count[13]~61_combout\,
	cout => \counter_greenBlink|s_count[13]~62\);

-- Location: FF_X80_Y8_N27
\counter_greenBlink|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[13]~61_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(13));

-- Location: LCCOMB_X80_Y8_N28
\counter_greenBlink|s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[14]~63_combout\ = (\counter_greenBlink|s_count\(14) & (\counter_greenBlink|s_count[13]~62\ $ (GND))) # (!\counter_greenBlink|s_count\(14) & (!\counter_greenBlink|s_count[13]~62\ & VCC))
-- \counter_greenBlink|s_count[14]~64\ = CARRY((\counter_greenBlink|s_count\(14) & !\counter_greenBlink|s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(14),
	datad => VCC,
	cin => \counter_greenBlink|s_count[13]~62\,
	combout => \counter_greenBlink|s_count[14]~63_combout\,
	cout => \counter_greenBlink|s_count[14]~64\);

-- Location: FF_X80_Y8_N29
\counter_greenBlink|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[14]~63_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(14));

-- Location: LCCOMB_X80_Y8_N30
\counter_greenBlink|s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[15]~65_combout\ = (\counter_greenBlink|s_count\(15) & (!\counter_greenBlink|s_count[14]~64\)) # (!\counter_greenBlink|s_count\(15) & ((\counter_greenBlink|s_count[14]~64\) # (GND)))
-- \counter_greenBlink|s_count[15]~66\ = CARRY((!\counter_greenBlink|s_count[14]~64\) # (!\counter_greenBlink|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(15),
	datad => VCC,
	cin => \counter_greenBlink|s_count[14]~64\,
	combout => \counter_greenBlink|s_count[15]~65_combout\,
	cout => \counter_greenBlink|s_count[15]~66\);

-- Location: FF_X80_Y8_N31
\counter_greenBlink|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[15]~65_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(15));

-- Location: LCCOMB_X80_Y7_N0
\counter_greenBlink|s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[16]~67_combout\ = (\counter_greenBlink|s_count\(16) & (\counter_greenBlink|s_count[15]~66\ $ (GND))) # (!\counter_greenBlink|s_count\(16) & (!\counter_greenBlink|s_count[15]~66\ & VCC))
-- \counter_greenBlink|s_count[16]~68\ = CARRY((\counter_greenBlink|s_count\(16) & !\counter_greenBlink|s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(16),
	datad => VCC,
	cin => \counter_greenBlink|s_count[15]~66\,
	combout => \counter_greenBlink|s_count[16]~67_combout\,
	cout => \counter_greenBlink|s_count[16]~68\);

-- Location: FF_X80_Y7_N1
\counter_greenBlink|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[16]~67_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(16));

-- Location: LCCOMB_X80_Y7_N2
\counter_greenBlink|s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[17]~69_combout\ = (\counter_greenBlink|s_count\(17) & (!\counter_greenBlink|s_count[16]~68\)) # (!\counter_greenBlink|s_count\(17) & ((\counter_greenBlink|s_count[16]~68\) # (GND)))
-- \counter_greenBlink|s_count[17]~70\ = CARRY((!\counter_greenBlink|s_count[16]~68\) # (!\counter_greenBlink|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(17),
	datad => VCC,
	cin => \counter_greenBlink|s_count[16]~68\,
	combout => \counter_greenBlink|s_count[17]~69_combout\,
	cout => \counter_greenBlink|s_count[17]~70\);

-- Location: FF_X80_Y7_N3
\counter_greenBlink|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[17]~69_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(17));

-- Location: LCCOMB_X80_Y7_N4
\counter_greenBlink|s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[18]~71_combout\ = (\counter_greenBlink|s_count\(18) & (\counter_greenBlink|s_count[17]~70\ $ (GND))) # (!\counter_greenBlink|s_count\(18) & (!\counter_greenBlink|s_count[17]~70\ & VCC))
-- \counter_greenBlink|s_count[18]~72\ = CARRY((\counter_greenBlink|s_count\(18) & !\counter_greenBlink|s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(18),
	datad => VCC,
	cin => \counter_greenBlink|s_count[17]~70\,
	combout => \counter_greenBlink|s_count[18]~71_combout\,
	cout => \counter_greenBlink|s_count[18]~72\);

-- Location: FF_X80_Y7_N5
\counter_greenBlink|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[18]~71_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(18));

-- Location: LCCOMB_X80_Y7_N6
\counter_greenBlink|s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[19]~73_combout\ = (\counter_greenBlink|s_count\(19) & (!\counter_greenBlink|s_count[18]~72\)) # (!\counter_greenBlink|s_count\(19) & ((\counter_greenBlink|s_count[18]~72\) # (GND)))
-- \counter_greenBlink|s_count[19]~74\ = CARRY((!\counter_greenBlink|s_count[18]~72\) # (!\counter_greenBlink|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(19),
	datad => VCC,
	cin => \counter_greenBlink|s_count[18]~72\,
	combout => \counter_greenBlink|s_count[19]~73_combout\,
	cout => \counter_greenBlink|s_count[19]~74\);

-- Location: FF_X80_Y7_N7
\counter_greenBlink|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[19]~73_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(19));

-- Location: LCCOMB_X79_Y7_N6
\counter_greenBlink|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~4_combout\ = (\counter_greenBlink|s_count\(18)) # ((\counter_greenBlink|s_count\(16)) # ((\counter_greenBlink|s_count\(19)) # (\counter_greenBlink|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(18),
	datab => \counter_greenBlink|s_count\(16),
	datac => \counter_greenBlink|s_count\(19),
	datad => \counter_greenBlink|s_count\(17),
	combout => \counter_greenBlink|Equal0~4_combout\);

-- Location: LCCOMB_X80_Y7_N8
\counter_greenBlink|s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[20]~75_combout\ = (\counter_greenBlink|s_count\(20) & (\counter_greenBlink|s_count[19]~74\ $ (GND))) # (!\counter_greenBlink|s_count\(20) & (!\counter_greenBlink|s_count[19]~74\ & VCC))
-- \counter_greenBlink|s_count[20]~76\ = CARRY((\counter_greenBlink|s_count\(20) & !\counter_greenBlink|s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(20),
	datad => VCC,
	cin => \counter_greenBlink|s_count[19]~74\,
	combout => \counter_greenBlink|s_count[20]~75_combout\,
	cout => \counter_greenBlink|s_count[20]~76\);

-- Location: FF_X80_Y7_N9
\counter_greenBlink|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[20]~75_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(20));

-- Location: LCCOMB_X80_Y7_N10
\counter_greenBlink|s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[21]~77_combout\ = (\counter_greenBlink|s_count\(21) & (!\counter_greenBlink|s_count[20]~76\)) # (!\counter_greenBlink|s_count\(21) & ((\counter_greenBlink|s_count[20]~76\) # (GND)))
-- \counter_greenBlink|s_count[21]~78\ = CARRY((!\counter_greenBlink|s_count[20]~76\) # (!\counter_greenBlink|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(21),
	datad => VCC,
	cin => \counter_greenBlink|s_count[20]~76\,
	combout => \counter_greenBlink|s_count[21]~77_combout\,
	cout => \counter_greenBlink|s_count[21]~78\);

-- Location: FF_X80_Y7_N11
\counter_greenBlink|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[21]~77_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(21));

-- Location: LCCOMB_X80_Y7_N12
\counter_greenBlink|s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[22]~79_combout\ = (\counter_greenBlink|s_count\(22) & (\counter_greenBlink|s_count[21]~78\ $ (GND))) # (!\counter_greenBlink|s_count\(22) & (!\counter_greenBlink|s_count[21]~78\ & VCC))
-- \counter_greenBlink|s_count[22]~80\ = CARRY((\counter_greenBlink|s_count\(22) & !\counter_greenBlink|s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(22),
	datad => VCC,
	cin => \counter_greenBlink|s_count[21]~78\,
	combout => \counter_greenBlink|s_count[22]~79_combout\,
	cout => \counter_greenBlink|s_count[22]~80\);

-- Location: FF_X80_Y7_N13
\counter_greenBlink|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[22]~79_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(22));

-- Location: LCCOMB_X80_Y7_N14
\counter_greenBlink|s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[23]~81_combout\ = (\counter_greenBlink|s_count\(23) & (!\counter_greenBlink|s_count[22]~80\)) # (!\counter_greenBlink|s_count\(23) & ((\counter_greenBlink|s_count[22]~80\) # (GND)))
-- \counter_greenBlink|s_count[23]~82\ = CARRY((!\counter_greenBlink|s_count[22]~80\) # (!\counter_greenBlink|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(23),
	datad => VCC,
	cin => \counter_greenBlink|s_count[22]~80\,
	combout => \counter_greenBlink|s_count[23]~81_combout\,
	cout => \counter_greenBlink|s_count[23]~82\);

-- Location: FF_X80_Y7_N15
\counter_greenBlink|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[23]~81_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(23));

-- Location: LCCOMB_X80_Y7_N16
\counter_greenBlink|s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[24]~83_combout\ = (\counter_greenBlink|s_count\(24) & (\counter_greenBlink|s_count[23]~82\ $ (GND))) # (!\counter_greenBlink|s_count\(24) & (!\counter_greenBlink|s_count[23]~82\ & VCC))
-- \counter_greenBlink|s_count[24]~84\ = CARRY((\counter_greenBlink|s_count\(24) & !\counter_greenBlink|s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(24),
	datad => VCC,
	cin => \counter_greenBlink|s_count[23]~82\,
	combout => \counter_greenBlink|s_count[24]~83_combout\,
	cout => \counter_greenBlink|s_count[24]~84\);

-- Location: FF_X80_Y7_N17
\counter_greenBlink|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[24]~83_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(24));

-- Location: LCCOMB_X80_Y7_N18
\counter_greenBlink|s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[25]~85_combout\ = (\counter_greenBlink|s_count\(25) & (!\counter_greenBlink|s_count[24]~84\)) # (!\counter_greenBlink|s_count\(25) & ((\counter_greenBlink|s_count[24]~84\) # (GND)))
-- \counter_greenBlink|s_count[25]~86\ = CARRY((!\counter_greenBlink|s_count[24]~84\) # (!\counter_greenBlink|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(25),
	datad => VCC,
	cin => \counter_greenBlink|s_count[24]~84\,
	combout => \counter_greenBlink|s_count[25]~85_combout\,
	cout => \counter_greenBlink|s_count[25]~86\);

-- Location: FF_X80_Y7_N19
\counter_greenBlink|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[25]~85_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(25));

-- Location: LCCOMB_X80_Y7_N20
\counter_greenBlink|s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[26]~87_combout\ = (\counter_greenBlink|s_count\(26) & (\counter_greenBlink|s_count[25]~86\ $ (GND))) # (!\counter_greenBlink|s_count\(26) & (!\counter_greenBlink|s_count[25]~86\ & VCC))
-- \counter_greenBlink|s_count[26]~88\ = CARRY((\counter_greenBlink|s_count\(26) & !\counter_greenBlink|s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(26),
	datad => VCC,
	cin => \counter_greenBlink|s_count[25]~86\,
	combout => \counter_greenBlink|s_count[26]~87_combout\,
	cout => \counter_greenBlink|s_count[26]~88\);

-- Location: FF_X80_Y7_N21
\counter_greenBlink|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[26]~87_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(26));

-- Location: LCCOMB_X80_Y7_N22
\counter_greenBlink|s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[27]~89_combout\ = (\counter_greenBlink|s_count\(27) & (!\counter_greenBlink|s_count[26]~88\)) # (!\counter_greenBlink|s_count\(27) & ((\counter_greenBlink|s_count[26]~88\) # (GND)))
-- \counter_greenBlink|s_count[27]~90\ = CARRY((!\counter_greenBlink|s_count[26]~88\) # (!\counter_greenBlink|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(27),
	datad => VCC,
	cin => \counter_greenBlink|s_count[26]~88\,
	combout => \counter_greenBlink|s_count[27]~89_combout\,
	cout => \counter_greenBlink|s_count[27]~90\);

-- Location: FF_X80_Y7_N23
\counter_greenBlink|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[27]~89_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(27));

-- Location: LCCOMB_X80_Y7_N24
\counter_greenBlink|s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[28]~91_combout\ = (\counter_greenBlink|s_count\(28) & (\counter_greenBlink|s_count[27]~90\ $ (GND))) # (!\counter_greenBlink|s_count\(28) & (!\counter_greenBlink|s_count[27]~90\ & VCC))
-- \counter_greenBlink|s_count[28]~92\ = CARRY((\counter_greenBlink|s_count\(28) & !\counter_greenBlink|s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(28),
	datad => VCC,
	cin => \counter_greenBlink|s_count[27]~90\,
	combout => \counter_greenBlink|s_count[28]~91_combout\,
	cout => \counter_greenBlink|s_count[28]~92\);

-- Location: FF_X80_Y7_N25
\counter_greenBlink|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[28]~91_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(28));

-- Location: LCCOMB_X80_Y7_N26
\counter_greenBlink|s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[29]~93_combout\ = (\counter_greenBlink|s_count\(29) & (!\counter_greenBlink|s_count[28]~92\)) # (!\counter_greenBlink|s_count\(29) & ((\counter_greenBlink|s_count[28]~92\) # (GND)))
-- \counter_greenBlink|s_count[29]~94\ = CARRY((!\counter_greenBlink|s_count[28]~92\) # (!\counter_greenBlink|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(29),
	datad => VCC,
	cin => \counter_greenBlink|s_count[28]~92\,
	combout => \counter_greenBlink|s_count[29]~93_combout\,
	cout => \counter_greenBlink|s_count[29]~94\);

-- Location: FF_X80_Y7_N27
\counter_greenBlink|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[29]~93_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(29));

-- Location: LCCOMB_X80_Y7_N28
\counter_greenBlink|s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[30]~95_combout\ = (\counter_greenBlink|s_count\(30) & (\counter_greenBlink|s_count[29]~94\ $ (GND))) # (!\counter_greenBlink|s_count\(30) & (!\counter_greenBlink|s_count[29]~94\ & VCC))
-- \counter_greenBlink|s_count[30]~96\ = CARRY((\counter_greenBlink|s_count\(30) & !\counter_greenBlink|s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(30),
	datad => VCC,
	cin => \counter_greenBlink|s_count[29]~94\,
	combout => \counter_greenBlink|s_count[30]~95_combout\,
	cout => \counter_greenBlink|s_count[30]~96\);

-- Location: FF_X80_Y7_N29
\counter_greenBlink|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[30]~95_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(30));

-- Location: LCCOMB_X80_Y7_N30
\counter_greenBlink|s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[31]~97_combout\ = \counter_greenBlink|s_count\(31) $ (\counter_greenBlink|s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(31),
	cin => \counter_greenBlink|s_count[30]~96\,
	combout => \counter_greenBlink|s_count[31]~97_combout\);

-- Location: FF_X80_Y7_N31
\counter_greenBlink|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[31]~97_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(31));

-- Location: LCCOMB_X79_Y7_N28
\counter_greenBlink|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~7_combout\ = (\counter_greenBlink|s_count\(31)) # ((\counter_greenBlink|s_count\(30)) # ((\counter_greenBlink|s_count\(28)) # (\counter_greenBlink|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(31),
	datab => \counter_greenBlink|s_count\(30),
	datac => \counter_greenBlink|s_count\(28),
	datad => \counter_greenBlink|s_count\(29),
	combout => \counter_greenBlink|Equal0~7_combout\);

-- Location: LCCOMB_X79_Y7_N26
\counter_greenBlink|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~6_combout\ = (\counter_greenBlink|s_count\(26)) # ((\counter_greenBlink|s_count\(24)) # ((\counter_greenBlink|s_count\(27)) # (\counter_greenBlink|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(26),
	datab => \counter_greenBlink|s_count\(24),
	datac => \counter_greenBlink|s_count\(27),
	datad => \counter_greenBlink|s_count\(25),
	combout => \counter_greenBlink|Equal0~6_combout\);

-- Location: LCCOMB_X79_Y7_N24
\counter_greenBlink|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~5_combout\ = (\counter_greenBlink|s_count\(23)) # ((\counter_greenBlink|s_count\(20)) # ((\counter_greenBlink|s_count\(21)) # (\counter_greenBlink|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(23),
	datab => \counter_greenBlink|s_count\(20),
	datac => \counter_greenBlink|s_count\(21),
	datad => \counter_greenBlink|s_count\(22),
	combout => \counter_greenBlink|Equal0~5_combout\);

-- Location: LCCOMB_X79_Y7_N10
\counter_greenBlink|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~8_combout\ = (\counter_greenBlink|Equal0~4_combout\) # ((\counter_greenBlink|Equal0~7_combout\) # ((\counter_greenBlink|Equal0~6_combout\) # (\counter_greenBlink|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|Equal0~4_combout\,
	datab => \counter_greenBlink|Equal0~7_combout\,
	datac => \counter_greenBlink|Equal0~6_combout\,
	datad => \counter_greenBlink|Equal0~5_combout\,
	combout => \counter_greenBlink|Equal0~8_combout\);

-- Location: LCCOMB_X79_Y8_N30
\counter_greenBlink|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~1_combout\ = (\counter_greenBlink|s_count\(10)) # ((\counter_greenBlink|s_count\(9)) # ((\counter_greenBlink|s_count\(11)) # (\counter_greenBlink|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(10),
	datab => \counter_greenBlink|s_count\(9),
	datac => \counter_greenBlink|s_count\(11),
	datad => \counter_greenBlink|s_count\(8),
	combout => \counter_greenBlink|Equal0~1_combout\);

-- Location: LCCOMB_X79_Y8_N20
\counter_greenBlink|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~0_combout\ = (\counter_greenBlink|s_count\(4)) # ((\counter_greenBlink|s_count\(5)) # ((\counter_greenBlink|s_count\(6)) # (\counter_greenBlink|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(4),
	datab => \counter_greenBlink|s_count\(5),
	datac => \counter_greenBlink|s_count\(6),
	datad => \counter_greenBlink|s_count\(7),
	combout => \counter_greenBlink|Equal0~0_combout\);

-- Location: LCCOMB_X79_Y8_N16
\sevenSegCountGreen|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|Equal7~0_combout\ = (\counter_greenBlink|s_count\(2) & (\counter_greenBlink|s_count\(0) & (\counter_greenBlink|s_count\(1) & \counter_greenBlink|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(0),
	datac => \counter_greenBlink|s_count\(1),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|Equal7~0_combout\);

-- Location: LCCOMB_X79_Y8_N24
\counter_greenBlink|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~2_combout\ = (\counter_greenBlink|s_count\(15)) # ((\counter_greenBlink|s_count\(14)) # ((\counter_greenBlink|s_count\(13)) # (\counter_greenBlink|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(15),
	datab => \counter_greenBlink|s_count\(14),
	datac => \counter_greenBlink|s_count\(13),
	datad => \counter_greenBlink|s_count\(12),
	combout => \counter_greenBlink|Equal0~2_combout\);

-- Location: LCCOMB_X79_Y7_N16
\counter_greenBlink|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|Equal0~3_combout\ = (\counter_greenBlink|Equal0~1_combout\) # ((\counter_greenBlink|Equal0~0_combout\) # ((\counter_greenBlink|Equal0~2_combout\) # (!\sevenSegCountGreen|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|Equal0~1_combout\,
	datab => \counter_greenBlink|Equal0~0_combout\,
	datac => \sevenSegCountGreen|Equal7~0_combout\,
	datad => \counter_greenBlink|Equal0~2_combout\,
	combout => \counter_greenBlink|Equal0~3_combout\);

-- Location: LCCOMB_X79_Y7_N12
\counter_greenBlink|s_count[6]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[6]~99_combout\ = (((!\counter_greenBlink|Equal0~8_combout\ & !\counter_greenBlink|Equal0~3_combout\)) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|Equal0~8_combout\,
	datab => sync_sw(0),
	datac => sync_sw(1),
	datad => \counter_greenBlink|Equal0~3_combout\,
	combout => \counter_greenBlink|s_count[6]~99_combout\);

-- Location: FF_X80_Y8_N1
\counter_greenBlink|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[0]~34_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(0));

-- Location: LCCOMB_X80_Y8_N2
\counter_greenBlink|s_count[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_greenBlink|s_count[1]~36_combout\ = (\counter_greenBlink|s_count\(1) & (!\counter_greenBlink|s_count[0]~35\)) # (!\counter_greenBlink|s_count\(1) & ((\counter_greenBlink|s_count[0]~35\) # (GND)))
-- \counter_greenBlink|s_count[1]~37\ = CARRY((!\counter_greenBlink|s_count[0]~35\) # (!\counter_greenBlink|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_greenBlink|s_count\(1),
	datad => VCC,
	cin => \counter_greenBlink|s_count[0]~35\,
	combout => \counter_greenBlink|s_count[1]~36_combout\,
	cout => \counter_greenBlink|s_count[1]~37\);

-- Location: FF_X80_Y8_N3
\counter_greenBlink|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[1]~36_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(1));

-- Location: FF_X80_Y8_N5
\counter_greenBlink|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_greenBlink|s_count[2]~38_combout\,
	sclr => \counter_greenBlink|s_count[6]~99_combout\,
	ena => \counter_greenBlink|s_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_greenBlink|s_count\(2));

-- Location: LCCOMB_X79_Y8_N26
\sevenSegCountGreen|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~10_combout\ = (\counter_greenBlink|s_count\(2) & (!\counter_greenBlink|s_count\(1) & (\counter_greenBlink|s_count\(0) $ (!\counter_greenBlink|s_count\(3))))) # (!\counter_greenBlink|s_count\(2) & 
-- (\counter_greenBlink|s_count\(0) & (\counter_greenBlink|s_count\(1) $ (!\counter_greenBlink|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n~10_combout\);

-- Location: LCCOMB_X81_Y8_N16
\sevenSegCountGreen|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~20_combout\ = ((\sevenSegCountGreen|decOut_n~10_combout\) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sync_sw(0),
	datac => sync_sw(1),
	datad => \sevenSegCountGreen|decOut_n~10_combout\,
	combout => \sevenSegCountGreen|decOut_n~20_combout\);

-- Location: LCCOMB_X79_Y8_N8
\sevenSegCountGreen|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~11_combout\ = (\counter_greenBlink|s_count\(1) & ((\counter_greenBlink|s_count\(0) & ((\counter_greenBlink|s_count\(3)))) # (!\counter_greenBlink|s_count\(0) & (\counter_greenBlink|s_count\(2))))) # 
-- (!\counter_greenBlink|s_count\(1) & (\counter_greenBlink|s_count\(2) & (\counter_greenBlink|s_count\(0) $ (\counter_greenBlink|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n~11_combout\);

-- Location: LCCOMB_X81_Y8_N18
\sevenSegCountGreen|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~21_combout\ = (\sevenSegCountGreen|decOut_n~11_combout\) # ((!sync_sw(1)) # (!sync_sw(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountGreen|decOut_n~11_combout\,
	datab => sync_sw(0),
	datac => sync_sw(1),
	combout => \sevenSegCountGreen|decOut_n~21_combout\);

-- Location: LCCOMB_X79_Y8_N22
\sevenSegCountGreen|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~12_combout\ = (\counter_greenBlink|s_count\(2) & (\counter_greenBlink|s_count\(3) & ((\counter_greenBlink|s_count\(1)) # (!\counter_greenBlink|s_count\(0))))) # (!\counter_greenBlink|s_count\(2) & 
-- (\counter_greenBlink|s_count\(1) & (!\counter_greenBlink|s_count\(0) & !\counter_greenBlink|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n~12_combout\);

-- Location: LCCOMB_X79_Y8_N10
\sevenSegCountGreen|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~22_combout\ = ((\sevenSegCountGreen|decOut_n~12_combout\) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sync_sw(0),
	datac => \sevenSegCountGreen|decOut_n~12_combout\,
	datad => sync_sw(1),
	combout => \sevenSegCountGreen|decOut_n~22_combout\);

-- Location: LCCOMB_X79_Y8_N14
\sevenSegCountGreen|decOut_n[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n[6]~13_combout\ = (\counter_greenBlink|s_count\(2) & (\counter_greenBlink|s_count\(1) & (\counter_greenBlink|s_count\(0) & \counter_greenBlink|s_count\(3)))) # (!\counter_greenBlink|s_count\(2) & 
-- (!\counter_greenBlink|s_count\(1) & (!\counter_greenBlink|s_count\(0) & !\counter_greenBlink|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n[6]~13_combout\);

-- Location: LCCOMB_X79_Y8_N12
\sevenSegCountGreen|decOut_n[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n[3]~14_combout\ = (\counter_greenBlink|s_count\(2) & ((\counter_greenBlink|s_count\(3)) # (\counter_greenBlink|s_count\(1) $ (\counter_greenBlink|s_count\(0))))) # (!\counter_greenBlink|s_count\(2) & 
-- ((\counter_greenBlink|s_count\(1) & ((\counter_greenBlink|s_count\(0)) # (!\counter_greenBlink|s_count\(3)))) # (!\counter_greenBlink|s_count\(1) & ((\counter_greenBlink|s_count\(3)) # (!\counter_greenBlink|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n[3]~14_combout\);

-- Location: LCCOMB_X79_Y8_N6
\sevenSegCountGreen|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n[3]~15_combout\ = ((\sevenSegCountGreen|decOut_n[6]~13_combout\ & (\sevenSegCountGreen|Equal7~0_combout\)) # (!\sevenSegCountGreen|decOut_n[6]~13_combout\ & ((!\sevenSegCountGreen|decOut_n[3]~14_combout\)))) # 
-- (!\options_mux|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountGreen|Equal7~0_combout\,
	datab => \options_mux|Equal1~1_combout\,
	datac => \sevenSegCountGreen|decOut_n[6]~13_combout\,
	datad => \sevenSegCountGreen|decOut_n[3]~14_combout\,
	combout => \sevenSegCountGreen|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X79_Y8_N4
\sevenSegCountGreen|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~16_combout\ = (\counter_greenBlink|s_count\(1) & (((\counter_greenBlink|s_count\(0) & !\counter_greenBlink|s_count\(3))))) # (!\counter_greenBlink|s_count\(1) & ((\counter_greenBlink|s_count\(2) & 
-- ((!\counter_greenBlink|s_count\(3)))) # (!\counter_greenBlink|s_count\(2) & (\counter_greenBlink|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n~16_combout\);

-- Location: LCCOMB_X81_Y8_N12
\sevenSegCountGreen|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~23_combout\ = (\sevenSegCountGreen|decOut_n~16_combout\) # ((!sync_sw(1)) # (!sync_sw(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountGreen|decOut_n~16_combout\,
	datab => sync_sw(0),
	datac => sync_sw(1),
	combout => \sevenSegCountGreen|decOut_n~23_combout\);

-- Location: LCCOMB_X79_Y8_N18
\sevenSegCountGreen|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~17_combout\ = (\counter_greenBlink|s_count\(2) & (\counter_greenBlink|s_count\(0) & (\counter_greenBlink|s_count\(1) $ (\counter_greenBlink|s_count\(3))))) # (!\counter_greenBlink|s_count\(2) & 
-- (!\counter_greenBlink|s_count\(3) & ((\counter_greenBlink|s_count\(1)) # (\counter_greenBlink|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n~17_combout\);

-- Location: LCCOMB_X81_Y8_N6
\sevenSegCountGreen|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n~24_combout\ = ((\sevenSegCountGreen|decOut_n~17_combout\) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sync_sw(0),
	datac => sync_sw(1),
	datad => \sevenSegCountGreen|decOut_n~17_combout\,
	combout => \sevenSegCountGreen|decOut_n~24_combout\);

-- Location: LCCOMB_X79_Y8_N0
\sevenSegCountGreen|decOut_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n[6]~18_combout\ = (\counter_greenBlink|s_count\(0) & (!\counter_greenBlink|s_count\(3) & (\counter_greenBlink|s_count\(2) $ (!\counter_greenBlink|s_count\(1))))) # (!\counter_greenBlink|s_count\(0) & 
-- (\counter_greenBlink|s_count\(2) & (!\counter_greenBlink|s_count\(1) & \counter_greenBlink|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_greenBlink|s_count\(2),
	datab => \counter_greenBlink|s_count\(1),
	datac => \counter_greenBlink|s_count\(0),
	datad => \counter_greenBlink|s_count\(3),
	combout => \sevenSegCountGreen|decOut_n[6]~18_combout\);

-- Location: LCCOMB_X79_Y8_N2
\sevenSegCountGreen|decOut_n[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountGreen|decOut_n[6]~19_combout\ = ((\sevenSegCountGreen|decOut_n[6]~13_combout\ & (!\sevenSegCountGreen|Equal7~0_combout\)) # (!\sevenSegCountGreen|decOut_n[6]~13_combout\ & ((\sevenSegCountGreen|decOut_n[6]~18_combout\)))) # 
-- (!\options_mux|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountGreen|Equal7~0_combout\,
	datab => \sevenSegCountGreen|decOut_n[6]~18_combout\,
	datac => \sevenSegCountGreen|decOut_n[6]~13_combout\,
	datad => \options_mux|Equal1~1_combout\,
	combout => \sevenSegCountGreen|decOut_n[6]~19_combout\);

-- Location: LCCOMB_X82_Y6_N0
\counter_redBlink|s_count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[0]~34_combout\ = \counter_redBlink|s_count\(0) $ (VCC)
-- \counter_redBlink|s_count[0]~35\ = CARRY(\counter_redBlink|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(0),
	datad => VCC,
	combout => \counter_redBlink|s_count[0]~34_combout\,
	cout => \counter_redBlink|s_count[0]~35\);

-- Location: LCCOMB_X82_Y6_N2
\counter_redBlink|s_count[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[1]~36_combout\ = (\counter_redBlink|s_count\(1) & (!\counter_redBlink|s_count[0]~35\)) # (!\counter_redBlink|s_count\(1) & ((\counter_redBlink|s_count[0]~35\) # (GND)))
-- \counter_redBlink|s_count[1]~37\ = CARRY((!\counter_redBlink|s_count[0]~35\) # (!\counter_redBlink|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(1),
	datad => VCC,
	cin => \counter_redBlink|s_count[0]~35\,
	combout => \counter_redBlink|s_count[1]~36_combout\,
	cout => \counter_redBlink|s_count[1]~37\);

-- Location: LCCOMB_X82_Y16_N8
\pulse_2hz|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~1_cout\ = CARRY((\pulse_4seg|s_cnt\(0) & \pulse_4seg|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(0),
	datab => \pulse_4seg|s_cnt\(1),
	datad => VCC,
	cout => \pulse_2hz|Add0~1_cout\);

-- Location: LCCOMB_X82_Y16_N10
\pulse_2hz|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~3_cout\ = CARRY((!\pulse_2hz|Add0~1_cout\) # (!\pulse_4seg|s_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(2),
	datad => VCC,
	cin => \pulse_2hz|Add0~1_cout\,
	cout => \pulse_2hz|Add0~3_cout\);

-- Location: LCCOMB_X82_Y16_N12
\pulse_2hz|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~5_cout\ = CARRY((\pulse_4seg|s_cnt\(3) & !\pulse_2hz|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(3),
	datad => VCC,
	cin => \pulse_2hz|Add0~3_cout\,
	cout => \pulse_2hz|Add0~5_cout\);

-- Location: LCCOMB_X82_Y16_N14
\pulse_2hz|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~7_cout\ = CARRY((!\pulse_2hz|Add0~5_cout\) # (!\pulse_4seg|s_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_4seg|s_cnt\(4),
	datad => VCC,
	cin => \pulse_2hz|Add0~5_cout\,
	cout => \pulse_2hz|Add0~7_cout\);

-- Location: LCCOMB_X82_Y16_N16
\pulse_2hz|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~9_cout\ = CARRY((\pulse_4seg|s_cnt\(5) & !\pulse_2hz|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(5),
	datad => VCC,
	cin => \pulse_2hz|Add0~7_cout\,
	cout => \pulse_2hz|Add0~9_cout\);

-- Location: LCCOMB_X82_Y16_N18
\pulse_2hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~10_combout\ = (\pulse_2hz|s_cnt\(6) & (!\pulse_2hz|Add0~9_cout\)) # (!\pulse_2hz|s_cnt\(6) & ((\pulse_2hz|Add0~9_cout\) # (GND)))
-- \pulse_2hz|Add0~11\ = CARRY((!\pulse_2hz|Add0~9_cout\) # (!\pulse_2hz|s_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(6),
	datad => VCC,
	cin => \pulse_2hz|Add0~9_cout\,
	combout => \pulse_2hz|Add0~10_combout\,
	cout => \pulse_2hz|Add0~11\);

-- Location: LCCOMB_X82_Y16_N0
\pulse_2hz|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~0_combout\ = (\pulse_2hz|Add0~10_combout\ & !\pulse_2hz|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|Add0~10_combout\,
	datad => \pulse_2hz|Equal0~6_combout\,
	combout => \pulse_2hz|s_cnt~0_combout\);

-- Location: FF_X82_Y16_N1
\pulse_2hz|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(6));

-- Location: LCCOMB_X82_Y16_N20
\pulse_2hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~12_combout\ = (\pulse_2hz|s_cnt\(7) & (\pulse_2hz|Add0~11\ $ (GND))) # (!\pulse_2hz|s_cnt\(7) & (!\pulse_2hz|Add0~11\ & VCC))
-- \pulse_2hz|Add0~13\ = CARRY((\pulse_2hz|s_cnt\(7) & !\pulse_2hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(7),
	datad => VCC,
	cin => \pulse_2hz|Add0~11\,
	combout => \pulse_2hz|Add0~12_combout\,
	cout => \pulse_2hz|Add0~13\);

-- Location: FF_X82_Y16_N21
\pulse_2hz|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(7));

-- Location: LCCOMB_X82_Y16_N22
\pulse_2hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~14_combout\ = (\pulse_2hz|s_cnt\(8) & (!\pulse_2hz|Add0~13\)) # (!\pulse_2hz|s_cnt\(8) & ((\pulse_2hz|Add0~13\) # (GND)))
-- \pulse_2hz|Add0~15\ = CARRY((!\pulse_2hz|Add0~13\) # (!\pulse_2hz|s_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(8),
	datad => VCC,
	cin => \pulse_2hz|Add0~13\,
	combout => \pulse_2hz|Add0~14_combout\,
	cout => \pulse_2hz|Add0~15\);

-- Location: FF_X82_Y16_N23
\pulse_2hz|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(8));

-- Location: LCCOMB_X82_Y16_N24
\pulse_2hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~16_combout\ = (\pulse_2hz|s_cnt\(9) & (\pulse_2hz|Add0~15\ $ (GND))) # (!\pulse_2hz|s_cnt\(9) & (!\pulse_2hz|Add0~15\ & VCC))
-- \pulse_2hz|Add0~17\ = CARRY((\pulse_2hz|s_cnt\(9) & !\pulse_2hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(9),
	datad => VCC,
	cin => \pulse_2hz|Add0~15\,
	combout => \pulse_2hz|Add0~16_combout\,
	cout => \pulse_2hz|Add0~17\);

-- Location: FF_X82_Y16_N25
\pulse_2hz|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(9));

-- Location: LCCOMB_X82_Y16_N26
\pulse_2hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~18_combout\ = (\pulse_2hz|s_cnt\(10) & (!\pulse_2hz|Add0~17\)) # (!\pulse_2hz|s_cnt\(10) & ((\pulse_2hz|Add0~17\) # (GND)))
-- \pulse_2hz|Add0~19\ = CARRY((!\pulse_2hz|Add0~17\) # (!\pulse_2hz|s_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(10),
	datad => VCC,
	cin => \pulse_2hz|Add0~17\,
	combout => \pulse_2hz|Add0~18_combout\,
	cout => \pulse_2hz|Add0~19\);

-- Location: FF_X82_Y16_N27
\pulse_2hz|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(10));

-- Location: LCCOMB_X82_Y16_N28
\pulse_2hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~20_combout\ = (\pulse_2hz|s_cnt\(11) & (\pulse_2hz|Add0~19\ $ (GND))) # (!\pulse_2hz|s_cnt\(11) & (!\pulse_2hz|Add0~19\ & VCC))
-- \pulse_2hz|Add0~21\ = CARRY((\pulse_2hz|s_cnt\(11) & !\pulse_2hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(11),
	datad => VCC,
	cin => \pulse_2hz|Add0~19\,
	combout => \pulse_2hz|Add0~20_combout\,
	cout => \pulse_2hz|Add0~21\);

-- Location: LCCOMB_X82_Y16_N4
\pulse_2hz|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~9_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|Equal0~6_combout\,
	datad => \pulse_2hz|Add0~20_combout\,
	combout => \pulse_2hz|s_cnt~9_combout\);

-- Location: FF_X82_Y16_N5
\pulse_2hz|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(11));

-- Location: LCCOMB_X82_Y16_N30
\pulse_2hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~22_combout\ = (\pulse_2hz|s_cnt\(12) & (!\pulse_2hz|Add0~21\)) # (!\pulse_2hz|s_cnt\(12) & ((\pulse_2hz|Add0~21\) # (GND)))
-- \pulse_2hz|Add0~23\ = CARRY((!\pulse_2hz|Add0~21\) # (!\pulse_2hz|s_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(12),
	datad => VCC,
	cin => \pulse_2hz|Add0~21\,
	combout => \pulse_2hz|Add0~22_combout\,
	cout => \pulse_2hz|Add0~23\);

-- Location: LCCOMB_X82_Y16_N2
\pulse_2hz|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~8_combout\ = (\pulse_2hz|Add0~22_combout\ & !\pulse_2hz|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_2hz|Add0~22_combout\,
	datad => \pulse_2hz|Equal0~6_combout\,
	combout => \pulse_2hz|s_cnt~8_combout\);

-- Location: FF_X82_Y16_N3
\pulse_2hz|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(12));

-- Location: LCCOMB_X82_Y15_N0
\pulse_2hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~24_combout\ = (\pulse_2hz|s_cnt\(13) & (\pulse_2hz|Add0~23\ $ (GND))) # (!\pulse_2hz|s_cnt\(13) & (!\pulse_2hz|Add0~23\ & VCC))
-- \pulse_2hz|Add0~25\ = CARRY((\pulse_2hz|s_cnt\(13) & !\pulse_2hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(13),
	datad => VCC,
	cin => \pulse_2hz|Add0~23\,
	combout => \pulse_2hz|Add0~24_combout\,
	cout => \pulse_2hz|Add0~25\);

-- Location: LCCOMB_X81_Y15_N16
\pulse_2hz|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~7_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|Equal0~6_combout\,
	datac => \pulse_2hz|Add0~24_combout\,
	combout => \pulse_2hz|s_cnt~7_combout\);

-- Location: FF_X81_Y15_N17
\pulse_2hz|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(13));

-- Location: LCCOMB_X82_Y15_N2
\pulse_2hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~26_combout\ = (\pulse_2hz|s_cnt\(14) & (!\pulse_2hz|Add0~25\)) # (!\pulse_2hz|s_cnt\(14) & ((\pulse_2hz|Add0~25\) # (GND)))
-- \pulse_2hz|Add0~27\ = CARRY((!\pulse_2hz|Add0~25\) # (!\pulse_2hz|s_cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(14),
	datad => VCC,
	cin => \pulse_2hz|Add0~25\,
	combout => \pulse_2hz|Add0~26_combout\,
	cout => \pulse_2hz|Add0~27\);

-- Location: LCCOMB_X82_Y15_N24
\pulse_2hz|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~6_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|Equal0~6_combout\,
	datad => \pulse_2hz|Add0~26_combout\,
	combout => \pulse_2hz|s_cnt~6_combout\);

-- Location: FF_X82_Y15_N25
\pulse_2hz|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(14));

-- Location: LCCOMB_X82_Y15_N4
\pulse_2hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~28_combout\ = (\pulse_2hz|s_cnt\(15) & (\pulse_2hz|Add0~27\ $ (GND))) # (!\pulse_2hz|s_cnt\(15) & (!\pulse_2hz|Add0~27\ & VCC))
-- \pulse_2hz|Add0~29\ = CARRY((\pulse_2hz|s_cnt\(15) & !\pulse_2hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(15),
	datad => VCC,
	cin => \pulse_2hz|Add0~27\,
	combout => \pulse_2hz|Add0~28_combout\,
	cout => \pulse_2hz|Add0~29\);

-- Location: FF_X82_Y15_N5
\pulse_2hz|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(15));

-- Location: LCCOMB_X82_Y15_N6
\pulse_2hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~30_combout\ = (\pulse_2hz|s_cnt\(16) & (!\pulse_2hz|Add0~29\)) # (!\pulse_2hz|s_cnt\(16) & ((\pulse_2hz|Add0~29\) # (GND)))
-- \pulse_2hz|Add0~31\ = CARRY((!\pulse_2hz|Add0~29\) # (!\pulse_2hz|s_cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(16),
	datad => VCC,
	cin => \pulse_2hz|Add0~29\,
	combout => \pulse_2hz|Add0~30_combout\,
	cout => \pulse_2hz|Add0~31\);

-- Location: LCCOMB_X81_Y15_N6
\pulse_2hz|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~5_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_2hz|Equal0~6_combout\,
	datad => \pulse_2hz|Add0~30_combout\,
	combout => \pulse_2hz|s_cnt~5_combout\);

-- Location: FF_X81_Y15_N7
\pulse_2hz|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(16));

-- Location: LCCOMB_X82_Y15_N8
\pulse_2hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~32_combout\ = (\pulse_2hz|s_cnt\(17) & (\pulse_2hz|Add0~31\ $ (GND))) # (!\pulse_2hz|s_cnt\(17) & (!\pulse_2hz|Add0~31\ & VCC))
-- \pulse_2hz|Add0~33\ = CARRY((\pulse_2hz|s_cnt\(17) & !\pulse_2hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(17),
	datad => VCC,
	cin => \pulse_2hz|Add0~31\,
	combout => \pulse_2hz|Add0~32_combout\,
	cout => \pulse_2hz|Add0~33\);

-- Location: FF_X82_Y15_N9
\pulse_2hz|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(17));

-- Location: LCCOMB_X82_Y15_N10
\pulse_2hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~34_combout\ = (\pulse_2hz|s_cnt\(18) & (!\pulse_2hz|Add0~33\)) # (!\pulse_2hz|s_cnt\(18) & ((\pulse_2hz|Add0~33\) # (GND)))
-- \pulse_2hz|Add0~35\ = CARRY((!\pulse_2hz|Add0~33\) # (!\pulse_2hz|s_cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(18),
	datad => VCC,
	cin => \pulse_2hz|Add0~33\,
	combout => \pulse_2hz|Add0~34_combout\,
	cout => \pulse_2hz|Add0~35\);

-- Location: LCCOMB_X82_Y15_N28
\pulse_2hz|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~1_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|Equal0~6_combout\,
	datad => \pulse_2hz|Add0~34_combout\,
	combout => \pulse_2hz|s_cnt~1_combout\);

-- Location: FF_X82_Y15_N29
\pulse_2hz|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(18));

-- Location: LCCOMB_X82_Y15_N12
\pulse_2hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~36_combout\ = (\pulse_2hz|s_cnt\(19) & (\pulse_2hz|Add0~35\ $ (GND))) # (!\pulse_2hz|s_cnt\(19) & (!\pulse_2hz|Add0~35\ & VCC))
-- \pulse_2hz|Add0~37\ = CARRY((\pulse_2hz|s_cnt\(19) & !\pulse_2hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(19),
	datad => VCC,
	cin => \pulse_2hz|Add0~35\,
	combout => \pulse_2hz|Add0~36_combout\,
	cout => \pulse_2hz|Add0~37\);

-- Location: LCCOMB_X81_Y15_N0
\pulse_2hz|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~2_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|Equal0~6_combout\,
	datac => \pulse_2hz|Add0~36_combout\,
	combout => \pulse_2hz|s_cnt~2_combout\);

-- Location: FF_X81_Y15_N1
\pulse_2hz|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(19));

-- Location: LCCOMB_X82_Y15_N14
\pulse_2hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~38_combout\ = (\pulse_2hz|s_cnt\(20) & (!\pulse_2hz|Add0~37\)) # (!\pulse_2hz|s_cnt\(20) & ((\pulse_2hz|Add0~37\) # (GND)))
-- \pulse_2hz|Add0~39\ = CARRY((!\pulse_2hz|Add0~37\) # (!\pulse_2hz|s_cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(20),
	datad => VCC,
	cin => \pulse_2hz|Add0~37\,
	combout => \pulse_2hz|Add0~38_combout\,
	cout => \pulse_2hz|Add0~39\);

-- Location: LCCOMB_X81_Y15_N2
\pulse_2hz|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~3_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|Equal0~6_combout\,
	datac => \pulse_2hz|Add0~38_combout\,
	combout => \pulse_2hz|s_cnt~3_combout\);

-- Location: FF_X81_Y15_N3
\pulse_2hz|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(20));

-- Location: LCCOMB_X82_Y15_N16
\pulse_2hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~40_combout\ = (\pulse_2hz|s_cnt\(21) & (\pulse_2hz|Add0~39\ $ (GND))) # (!\pulse_2hz|s_cnt\(21) & (!\pulse_2hz|Add0~39\ & VCC))
-- \pulse_2hz|Add0~41\ = CARRY((\pulse_2hz|s_cnt\(21) & !\pulse_2hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(21),
	datad => VCC,
	cin => \pulse_2hz|Add0~39\,
	combout => \pulse_2hz|Add0~40_combout\,
	cout => \pulse_2hz|Add0~41\);

-- Location: LCCOMB_X82_Y15_N26
\pulse_2hz|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~4_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|Equal0~6_combout\,
	datad => \pulse_2hz|Add0~40_combout\,
	combout => \pulse_2hz|s_cnt~4_combout\);

-- Location: FF_X82_Y15_N27
\pulse_2hz|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(21));

-- Location: LCCOMB_X82_Y15_N18
\pulse_2hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~42_combout\ = (\pulse_2hz|s_cnt\(22) & (!\pulse_2hz|Add0~41\)) # (!\pulse_2hz|s_cnt\(22) & ((\pulse_2hz|Add0~41\) # (GND)))
-- \pulse_2hz|Add0~43\ = CARRY((!\pulse_2hz|Add0~41\) # (!\pulse_2hz|s_cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(22),
	datad => VCC,
	cin => \pulse_2hz|Add0~41\,
	combout => \pulse_2hz|Add0~42_combout\,
	cout => \pulse_2hz|Add0~43\);

-- Location: LCCOMB_X82_Y15_N30
\pulse_2hz|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~10_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|Equal0~6_combout\,
	datad => \pulse_2hz|Add0~42_combout\,
	combout => \pulse_2hz|s_cnt~10_combout\);

-- Location: FF_X82_Y15_N31
\pulse_2hz|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(22));

-- Location: LCCOMB_X82_Y15_N20
\pulse_2hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~44_combout\ = (\pulse_2hz|s_cnt\(23) & (\pulse_2hz|Add0~43\ $ (GND))) # (!\pulse_2hz|s_cnt\(23) & (!\pulse_2hz|Add0~43\ & VCC))
-- \pulse_2hz|Add0~45\ = CARRY((\pulse_2hz|s_cnt\(23) & !\pulse_2hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_2hz|s_cnt\(23),
	datad => VCC,
	cin => \pulse_2hz|Add0~43\,
	combout => \pulse_2hz|Add0~44_combout\,
	cout => \pulse_2hz|Add0~45\);

-- Location: FF_X82_Y15_N21
\pulse_2hz|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(23));

-- Location: LCCOMB_X82_Y15_N22
\pulse_2hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Add0~46_combout\ = \pulse_2hz|Add0~45\ $ (\pulse_2hz|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse_2hz|s_cnt\(24),
	cin => \pulse_2hz|Add0~45\,
	combout => \pulse_2hz|Add0~46_combout\);

-- Location: LCCOMB_X81_Y15_N24
\pulse_2hz|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|s_cnt~11_combout\ = (!\pulse_2hz|Equal0~6_combout\ & \pulse_2hz|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_2hz|Equal0~6_combout\,
	datad => \pulse_2hz|Add0~46_combout\,
	combout => \pulse_2hz|s_cnt~11_combout\);

-- Location: FF_X81_Y15_N25
\pulse_2hz|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|s_cnt\(24));

-- Location: LCCOMB_X81_Y15_N10
\pulse_2hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Equal0~4_combout\ = (!\pulse_2hz|s_cnt\(23) & (\pulse_2hz|s_cnt\(24) & (\pulse_4seg|s_cnt\(1) & \pulse_2hz|s_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(23),
	datab => \pulse_2hz|s_cnt\(24),
	datac => \pulse_4seg|s_cnt\(1),
	datad => \pulse_2hz|s_cnt\(22),
	combout => \pulse_2hz|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y15_N18
\pulse_2hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Equal0~2_combout\ = (\pulse_2hz|s_cnt\(16) & (\pulse_2hz|s_cnt\(13) & (!\pulse_2hz|s_cnt\(15) & \pulse_2hz|s_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(16),
	datab => \pulse_2hz|s_cnt\(13),
	datac => \pulse_2hz|s_cnt\(15),
	datad => \pulse_2hz|s_cnt\(14),
	combout => \pulse_2hz|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y16_N6
\pulse_2hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Equal0~3_combout\ = (!\pulse_2hz|s_cnt\(10) & (!\pulse_2hz|s_cnt\(9) & (\pulse_2hz|s_cnt\(11) & \pulse_2hz|s_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(10),
	datab => \pulse_2hz|s_cnt\(9),
	datac => \pulse_2hz|s_cnt\(11),
	datad => \pulse_2hz|s_cnt\(12),
	combout => \pulse_2hz|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y15_N28
\pulse_2hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Equal0~5_combout\ = (\pulse_2hz|Equal0~4_combout\ & (\pulse_2hz|Equal0~2_combout\ & (\pulse_4seg|Equal0~0_combout\ & \pulse_2hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|Equal0~4_combout\,
	datab => \pulse_2hz|Equal0~2_combout\,
	datac => \pulse_4seg|Equal0~0_combout\,
	datad => \pulse_2hz|Equal0~3_combout\,
	combout => \pulse_2hz|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y15_N26
\pulse_2hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Equal0~0_combout\ = (!\pulse_2hz|s_cnt\(7) & (!\pulse_2hz|s_cnt\(17) & (!\pulse_2hz|s_cnt\(8) & !\pulse_2hz|s_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(7),
	datab => \pulse_2hz|s_cnt\(17),
	datac => \pulse_2hz|s_cnt\(8),
	datad => \pulse_2hz|s_cnt\(6),
	combout => \pulse_2hz|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y15_N12
\pulse_2hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Equal0~1_combout\ = (\pulse_2hz|s_cnt\(18) & (\pulse_2hz|s_cnt\(19) & (\pulse_2hz|s_cnt\(21) & \pulse_2hz|s_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_2hz|s_cnt\(18),
	datab => \pulse_2hz|s_cnt\(19),
	datac => \pulse_2hz|s_cnt\(21),
	datad => \pulse_2hz|s_cnt\(20),
	combout => \pulse_2hz|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y15_N22
\pulse_2hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|Equal0~6_combout\ = (\pulse_4seg|s_cnt\(0) & (\pulse_2hz|Equal0~5_combout\ & (\pulse_2hz|Equal0~0_combout\ & \pulse_2hz|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_4seg|s_cnt\(0),
	datab => \pulse_2hz|Equal0~5_combout\,
	datac => \pulse_2hz|Equal0~0_combout\,
	datad => \pulse_2hz|Equal0~1_combout\,
	combout => \pulse_2hz|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y15_N8
\pulse_2hz|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_2hz|pulse~feeder_combout\ = \pulse_2hz|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_2hz|Equal0~6_combout\,
	combout => \pulse_2hz|pulse~feeder_combout\);

-- Location: FF_X81_Y15_N9
\pulse_2hz|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_2hz|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_2hz|pulse~q\);

-- Location: LCCOMB_X81_Y8_N30
\counter_redBlink|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[5]~42_combout\ = (((\control_program4~q\ & \pulse_2hz|pulse~q\)) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_program4~q\,
	datab => sync_sw(0),
	datac => sync_sw(1),
	datad => \pulse_2hz|pulse~q\,
	combout => \counter_redBlink|s_count[5]~42_combout\);

-- Location: FF_X82_Y6_N3
\counter_redBlink|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[1]~36_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(1));

-- Location: LCCOMB_X82_Y6_N4
\counter_redBlink|s_count[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[2]~38_combout\ = (\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count[1]~37\ $ (GND))) # (!\counter_redBlink|s_count\(2) & (!\counter_redBlink|s_count[1]~37\ & VCC))
-- \counter_redBlink|s_count[2]~39\ = CARRY((\counter_redBlink|s_count\(2) & !\counter_redBlink|s_count[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(2),
	datad => VCC,
	cin => \counter_redBlink|s_count[1]~37\,
	combout => \counter_redBlink|s_count[2]~38_combout\,
	cout => \counter_redBlink|s_count[2]~39\);

-- Location: FF_X82_Y6_N5
\counter_redBlink|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[2]~38_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(2));

-- Location: LCCOMB_X82_Y6_N6
\counter_redBlink|s_count[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[3]~40_combout\ = (\counter_redBlink|s_count\(3) & (!\counter_redBlink|s_count[2]~39\)) # (!\counter_redBlink|s_count\(3) & ((\counter_redBlink|s_count[2]~39\) # (GND)))
-- \counter_redBlink|s_count[3]~41\ = CARRY((!\counter_redBlink|s_count[2]~39\) # (!\counter_redBlink|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(3),
	datad => VCC,
	cin => \counter_redBlink|s_count[2]~39\,
	combout => \counter_redBlink|s_count[3]~40_combout\,
	cout => \counter_redBlink|s_count[3]~41\);

-- Location: FF_X82_Y6_N7
\counter_redBlink|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[3]~40_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(3));

-- Location: LCCOMB_X82_Y6_N8
\counter_redBlink|s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[4]~43_combout\ = (\counter_redBlink|s_count\(4) & (\counter_redBlink|s_count[3]~41\ $ (GND))) # (!\counter_redBlink|s_count\(4) & (!\counter_redBlink|s_count[3]~41\ & VCC))
-- \counter_redBlink|s_count[4]~44\ = CARRY((\counter_redBlink|s_count\(4) & !\counter_redBlink|s_count[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(4),
	datad => VCC,
	cin => \counter_redBlink|s_count[3]~41\,
	combout => \counter_redBlink|s_count[4]~43_combout\,
	cout => \counter_redBlink|s_count[4]~44\);

-- Location: FF_X82_Y6_N9
\counter_redBlink|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[4]~43_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(4));

-- Location: LCCOMB_X82_Y6_N10
\counter_redBlink|s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[5]~45_combout\ = (\counter_redBlink|s_count\(5) & (!\counter_redBlink|s_count[4]~44\)) # (!\counter_redBlink|s_count\(5) & ((\counter_redBlink|s_count[4]~44\) # (GND)))
-- \counter_redBlink|s_count[5]~46\ = CARRY((!\counter_redBlink|s_count[4]~44\) # (!\counter_redBlink|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(5),
	datad => VCC,
	cin => \counter_redBlink|s_count[4]~44\,
	combout => \counter_redBlink|s_count[5]~45_combout\,
	cout => \counter_redBlink|s_count[5]~46\);

-- Location: FF_X82_Y6_N11
\counter_redBlink|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[5]~45_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(5));

-- Location: LCCOMB_X82_Y6_N12
\counter_redBlink|s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[6]~47_combout\ = (\counter_redBlink|s_count\(6) & (\counter_redBlink|s_count[5]~46\ $ (GND))) # (!\counter_redBlink|s_count\(6) & (!\counter_redBlink|s_count[5]~46\ & VCC))
-- \counter_redBlink|s_count[6]~48\ = CARRY((\counter_redBlink|s_count\(6) & !\counter_redBlink|s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(6),
	datad => VCC,
	cin => \counter_redBlink|s_count[5]~46\,
	combout => \counter_redBlink|s_count[6]~47_combout\,
	cout => \counter_redBlink|s_count[6]~48\);

-- Location: FF_X82_Y6_N13
\counter_redBlink|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[6]~47_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(6));

-- Location: LCCOMB_X82_Y6_N14
\counter_redBlink|s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[7]~49_combout\ = (\counter_redBlink|s_count\(7) & (!\counter_redBlink|s_count[6]~48\)) # (!\counter_redBlink|s_count\(7) & ((\counter_redBlink|s_count[6]~48\) # (GND)))
-- \counter_redBlink|s_count[7]~50\ = CARRY((!\counter_redBlink|s_count[6]~48\) # (!\counter_redBlink|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(7),
	datad => VCC,
	cin => \counter_redBlink|s_count[6]~48\,
	combout => \counter_redBlink|s_count[7]~49_combout\,
	cout => \counter_redBlink|s_count[7]~50\);

-- Location: FF_X82_Y6_N15
\counter_redBlink|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[7]~49_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(7));

-- Location: LCCOMB_X82_Y6_N16
\counter_redBlink|s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[8]~51_combout\ = (\counter_redBlink|s_count\(8) & (\counter_redBlink|s_count[7]~50\ $ (GND))) # (!\counter_redBlink|s_count\(8) & (!\counter_redBlink|s_count[7]~50\ & VCC))
-- \counter_redBlink|s_count[8]~52\ = CARRY((\counter_redBlink|s_count\(8) & !\counter_redBlink|s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(8),
	datad => VCC,
	cin => \counter_redBlink|s_count[7]~50\,
	combout => \counter_redBlink|s_count[8]~51_combout\,
	cout => \counter_redBlink|s_count[8]~52\);

-- Location: FF_X82_Y6_N17
\counter_redBlink|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[8]~51_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(8));

-- Location: LCCOMB_X82_Y6_N18
\counter_redBlink|s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[9]~53_combout\ = (\counter_redBlink|s_count\(9) & (!\counter_redBlink|s_count[8]~52\)) # (!\counter_redBlink|s_count\(9) & ((\counter_redBlink|s_count[8]~52\) # (GND)))
-- \counter_redBlink|s_count[9]~54\ = CARRY((!\counter_redBlink|s_count[8]~52\) # (!\counter_redBlink|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(9),
	datad => VCC,
	cin => \counter_redBlink|s_count[8]~52\,
	combout => \counter_redBlink|s_count[9]~53_combout\,
	cout => \counter_redBlink|s_count[9]~54\);

-- Location: FF_X82_Y6_N19
\counter_redBlink|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[9]~53_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(9));

-- Location: LCCOMB_X82_Y6_N20
\counter_redBlink|s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[10]~55_combout\ = (\counter_redBlink|s_count\(10) & (\counter_redBlink|s_count[9]~54\ $ (GND))) # (!\counter_redBlink|s_count\(10) & (!\counter_redBlink|s_count[9]~54\ & VCC))
-- \counter_redBlink|s_count[10]~56\ = CARRY((\counter_redBlink|s_count\(10) & !\counter_redBlink|s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(10),
	datad => VCC,
	cin => \counter_redBlink|s_count[9]~54\,
	combout => \counter_redBlink|s_count[10]~55_combout\,
	cout => \counter_redBlink|s_count[10]~56\);

-- Location: FF_X82_Y6_N21
\counter_redBlink|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[10]~55_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(10));

-- Location: LCCOMB_X82_Y6_N22
\counter_redBlink|s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[11]~57_combout\ = (\counter_redBlink|s_count\(11) & (!\counter_redBlink|s_count[10]~56\)) # (!\counter_redBlink|s_count\(11) & ((\counter_redBlink|s_count[10]~56\) # (GND)))
-- \counter_redBlink|s_count[11]~58\ = CARRY((!\counter_redBlink|s_count[10]~56\) # (!\counter_redBlink|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(11),
	datad => VCC,
	cin => \counter_redBlink|s_count[10]~56\,
	combout => \counter_redBlink|s_count[11]~57_combout\,
	cout => \counter_redBlink|s_count[11]~58\);

-- Location: FF_X82_Y6_N23
\counter_redBlink|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[11]~57_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(11));

-- Location: LCCOMB_X82_Y6_N24
\counter_redBlink|s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[12]~59_combout\ = (\counter_redBlink|s_count\(12) & (\counter_redBlink|s_count[11]~58\ $ (GND))) # (!\counter_redBlink|s_count\(12) & (!\counter_redBlink|s_count[11]~58\ & VCC))
-- \counter_redBlink|s_count[12]~60\ = CARRY((\counter_redBlink|s_count\(12) & !\counter_redBlink|s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(12),
	datad => VCC,
	cin => \counter_redBlink|s_count[11]~58\,
	combout => \counter_redBlink|s_count[12]~59_combout\,
	cout => \counter_redBlink|s_count[12]~60\);

-- Location: FF_X82_Y6_N25
\counter_redBlink|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[12]~59_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(12));

-- Location: LCCOMB_X82_Y6_N26
\counter_redBlink|s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[13]~61_combout\ = (\counter_redBlink|s_count\(13) & (!\counter_redBlink|s_count[12]~60\)) # (!\counter_redBlink|s_count\(13) & ((\counter_redBlink|s_count[12]~60\) # (GND)))
-- \counter_redBlink|s_count[13]~62\ = CARRY((!\counter_redBlink|s_count[12]~60\) # (!\counter_redBlink|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(13),
	datad => VCC,
	cin => \counter_redBlink|s_count[12]~60\,
	combout => \counter_redBlink|s_count[13]~61_combout\,
	cout => \counter_redBlink|s_count[13]~62\);

-- Location: FF_X82_Y6_N27
\counter_redBlink|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[13]~61_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(13));

-- Location: LCCOMB_X82_Y6_N28
\counter_redBlink|s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[14]~63_combout\ = (\counter_redBlink|s_count\(14) & (\counter_redBlink|s_count[13]~62\ $ (GND))) # (!\counter_redBlink|s_count\(14) & (!\counter_redBlink|s_count[13]~62\ & VCC))
-- \counter_redBlink|s_count[14]~64\ = CARRY((\counter_redBlink|s_count\(14) & !\counter_redBlink|s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(14),
	datad => VCC,
	cin => \counter_redBlink|s_count[13]~62\,
	combout => \counter_redBlink|s_count[14]~63_combout\,
	cout => \counter_redBlink|s_count[14]~64\);

-- Location: FF_X82_Y6_N29
\counter_redBlink|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[14]~63_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(14));

-- Location: LCCOMB_X82_Y6_N30
\counter_redBlink|s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[15]~65_combout\ = (\counter_redBlink|s_count\(15) & (!\counter_redBlink|s_count[14]~64\)) # (!\counter_redBlink|s_count\(15) & ((\counter_redBlink|s_count[14]~64\) # (GND)))
-- \counter_redBlink|s_count[15]~66\ = CARRY((!\counter_redBlink|s_count[14]~64\) # (!\counter_redBlink|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(15),
	datad => VCC,
	cin => \counter_redBlink|s_count[14]~64\,
	combout => \counter_redBlink|s_count[15]~65_combout\,
	cout => \counter_redBlink|s_count[15]~66\);

-- Location: FF_X82_Y6_N31
\counter_redBlink|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[15]~65_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(15));

-- Location: LCCOMB_X82_Y5_N0
\counter_redBlink|s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[16]~67_combout\ = (\counter_redBlink|s_count\(16) & (\counter_redBlink|s_count[15]~66\ $ (GND))) # (!\counter_redBlink|s_count\(16) & (!\counter_redBlink|s_count[15]~66\ & VCC))
-- \counter_redBlink|s_count[16]~68\ = CARRY((\counter_redBlink|s_count\(16) & !\counter_redBlink|s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(16),
	datad => VCC,
	cin => \counter_redBlink|s_count[15]~66\,
	combout => \counter_redBlink|s_count[16]~67_combout\,
	cout => \counter_redBlink|s_count[16]~68\);

-- Location: FF_X82_Y5_N1
\counter_redBlink|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[16]~67_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(16));

-- Location: LCCOMB_X82_Y5_N2
\counter_redBlink|s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[17]~69_combout\ = (\counter_redBlink|s_count\(17) & (!\counter_redBlink|s_count[16]~68\)) # (!\counter_redBlink|s_count\(17) & ((\counter_redBlink|s_count[16]~68\) # (GND)))
-- \counter_redBlink|s_count[17]~70\ = CARRY((!\counter_redBlink|s_count[16]~68\) # (!\counter_redBlink|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(17),
	datad => VCC,
	cin => \counter_redBlink|s_count[16]~68\,
	combout => \counter_redBlink|s_count[17]~69_combout\,
	cout => \counter_redBlink|s_count[17]~70\);

-- Location: FF_X82_Y5_N3
\counter_redBlink|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[17]~69_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(17));

-- Location: LCCOMB_X82_Y5_N4
\counter_redBlink|s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[18]~71_combout\ = (\counter_redBlink|s_count\(18) & (\counter_redBlink|s_count[17]~70\ $ (GND))) # (!\counter_redBlink|s_count\(18) & (!\counter_redBlink|s_count[17]~70\ & VCC))
-- \counter_redBlink|s_count[18]~72\ = CARRY((\counter_redBlink|s_count\(18) & !\counter_redBlink|s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(18),
	datad => VCC,
	cin => \counter_redBlink|s_count[17]~70\,
	combout => \counter_redBlink|s_count[18]~71_combout\,
	cout => \counter_redBlink|s_count[18]~72\);

-- Location: FF_X82_Y5_N5
\counter_redBlink|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[18]~71_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(18));

-- Location: LCCOMB_X82_Y5_N6
\counter_redBlink|s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[19]~73_combout\ = (\counter_redBlink|s_count\(19) & (!\counter_redBlink|s_count[18]~72\)) # (!\counter_redBlink|s_count\(19) & ((\counter_redBlink|s_count[18]~72\) # (GND)))
-- \counter_redBlink|s_count[19]~74\ = CARRY((!\counter_redBlink|s_count[18]~72\) # (!\counter_redBlink|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(19),
	datad => VCC,
	cin => \counter_redBlink|s_count[18]~72\,
	combout => \counter_redBlink|s_count[19]~73_combout\,
	cout => \counter_redBlink|s_count[19]~74\);

-- Location: FF_X82_Y5_N7
\counter_redBlink|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[19]~73_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(19));

-- Location: LCCOMB_X82_Y5_N8
\counter_redBlink|s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[20]~75_combout\ = (\counter_redBlink|s_count\(20) & (\counter_redBlink|s_count[19]~74\ $ (GND))) # (!\counter_redBlink|s_count\(20) & (!\counter_redBlink|s_count[19]~74\ & VCC))
-- \counter_redBlink|s_count[20]~76\ = CARRY((\counter_redBlink|s_count\(20) & !\counter_redBlink|s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(20),
	datad => VCC,
	cin => \counter_redBlink|s_count[19]~74\,
	combout => \counter_redBlink|s_count[20]~75_combout\,
	cout => \counter_redBlink|s_count[20]~76\);

-- Location: FF_X82_Y5_N9
\counter_redBlink|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[20]~75_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(20));

-- Location: LCCOMB_X82_Y5_N10
\counter_redBlink|s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[21]~77_combout\ = (\counter_redBlink|s_count\(21) & (!\counter_redBlink|s_count[20]~76\)) # (!\counter_redBlink|s_count\(21) & ((\counter_redBlink|s_count[20]~76\) # (GND)))
-- \counter_redBlink|s_count[21]~78\ = CARRY((!\counter_redBlink|s_count[20]~76\) # (!\counter_redBlink|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(21),
	datad => VCC,
	cin => \counter_redBlink|s_count[20]~76\,
	combout => \counter_redBlink|s_count[21]~77_combout\,
	cout => \counter_redBlink|s_count[21]~78\);

-- Location: FF_X82_Y5_N11
\counter_redBlink|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[21]~77_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(21));

-- Location: LCCOMB_X82_Y5_N12
\counter_redBlink|s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[22]~79_combout\ = (\counter_redBlink|s_count\(22) & (\counter_redBlink|s_count[21]~78\ $ (GND))) # (!\counter_redBlink|s_count\(22) & (!\counter_redBlink|s_count[21]~78\ & VCC))
-- \counter_redBlink|s_count[22]~80\ = CARRY((\counter_redBlink|s_count\(22) & !\counter_redBlink|s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(22),
	datad => VCC,
	cin => \counter_redBlink|s_count[21]~78\,
	combout => \counter_redBlink|s_count[22]~79_combout\,
	cout => \counter_redBlink|s_count[22]~80\);

-- Location: FF_X82_Y5_N13
\counter_redBlink|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[22]~79_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(22));

-- Location: LCCOMB_X82_Y5_N14
\counter_redBlink|s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[23]~81_combout\ = (\counter_redBlink|s_count\(23) & (!\counter_redBlink|s_count[22]~80\)) # (!\counter_redBlink|s_count\(23) & ((\counter_redBlink|s_count[22]~80\) # (GND)))
-- \counter_redBlink|s_count[23]~82\ = CARRY((!\counter_redBlink|s_count[22]~80\) # (!\counter_redBlink|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(23),
	datad => VCC,
	cin => \counter_redBlink|s_count[22]~80\,
	combout => \counter_redBlink|s_count[23]~81_combout\,
	cout => \counter_redBlink|s_count[23]~82\);

-- Location: FF_X82_Y5_N15
\counter_redBlink|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[23]~81_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(23));

-- Location: LCCOMB_X82_Y5_N16
\counter_redBlink|s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[24]~83_combout\ = (\counter_redBlink|s_count\(24) & (\counter_redBlink|s_count[23]~82\ $ (GND))) # (!\counter_redBlink|s_count\(24) & (!\counter_redBlink|s_count[23]~82\ & VCC))
-- \counter_redBlink|s_count[24]~84\ = CARRY((\counter_redBlink|s_count\(24) & !\counter_redBlink|s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(24),
	datad => VCC,
	cin => \counter_redBlink|s_count[23]~82\,
	combout => \counter_redBlink|s_count[24]~83_combout\,
	cout => \counter_redBlink|s_count[24]~84\);

-- Location: FF_X82_Y5_N17
\counter_redBlink|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[24]~83_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(24));

-- Location: LCCOMB_X82_Y5_N18
\counter_redBlink|s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[25]~85_combout\ = (\counter_redBlink|s_count\(25) & (!\counter_redBlink|s_count[24]~84\)) # (!\counter_redBlink|s_count\(25) & ((\counter_redBlink|s_count[24]~84\) # (GND)))
-- \counter_redBlink|s_count[25]~86\ = CARRY((!\counter_redBlink|s_count[24]~84\) # (!\counter_redBlink|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(25),
	datad => VCC,
	cin => \counter_redBlink|s_count[24]~84\,
	combout => \counter_redBlink|s_count[25]~85_combout\,
	cout => \counter_redBlink|s_count[25]~86\);

-- Location: FF_X82_Y5_N19
\counter_redBlink|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[25]~85_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(25));

-- Location: LCCOMB_X82_Y5_N20
\counter_redBlink|s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[26]~87_combout\ = (\counter_redBlink|s_count\(26) & (\counter_redBlink|s_count[25]~86\ $ (GND))) # (!\counter_redBlink|s_count\(26) & (!\counter_redBlink|s_count[25]~86\ & VCC))
-- \counter_redBlink|s_count[26]~88\ = CARRY((\counter_redBlink|s_count\(26) & !\counter_redBlink|s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(26),
	datad => VCC,
	cin => \counter_redBlink|s_count[25]~86\,
	combout => \counter_redBlink|s_count[26]~87_combout\,
	cout => \counter_redBlink|s_count[26]~88\);

-- Location: FF_X82_Y5_N21
\counter_redBlink|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[26]~87_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(26));

-- Location: LCCOMB_X82_Y5_N22
\counter_redBlink|s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[27]~89_combout\ = (\counter_redBlink|s_count\(27) & (!\counter_redBlink|s_count[26]~88\)) # (!\counter_redBlink|s_count\(27) & ((\counter_redBlink|s_count[26]~88\) # (GND)))
-- \counter_redBlink|s_count[27]~90\ = CARRY((!\counter_redBlink|s_count[26]~88\) # (!\counter_redBlink|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(27),
	datad => VCC,
	cin => \counter_redBlink|s_count[26]~88\,
	combout => \counter_redBlink|s_count[27]~89_combout\,
	cout => \counter_redBlink|s_count[27]~90\);

-- Location: FF_X82_Y5_N23
\counter_redBlink|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[27]~89_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(27));

-- Location: LCCOMB_X82_Y5_N24
\counter_redBlink|s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[28]~91_combout\ = (\counter_redBlink|s_count\(28) & (\counter_redBlink|s_count[27]~90\ $ (GND))) # (!\counter_redBlink|s_count\(28) & (!\counter_redBlink|s_count[27]~90\ & VCC))
-- \counter_redBlink|s_count[28]~92\ = CARRY((\counter_redBlink|s_count\(28) & !\counter_redBlink|s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(28),
	datad => VCC,
	cin => \counter_redBlink|s_count[27]~90\,
	combout => \counter_redBlink|s_count[28]~91_combout\,
	cout => \counter_redBlink|s_count[28]~92\);

-- Location: FF_X82_Y5_N25
\counter_redBlink|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[28]~91_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(28));

-- Location: LCCOMB_X82_Y5_N26
\counter_redBlink|s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[29]~93_combout\ = (\counter_redBlink|s_count\(29) & (!\counter_redBlink|s_count[28]~92\)) # (!\counter_redBlink|s_count\(29) & ((\counter_redBlink|s_count[28]~92\) # (GND)))
-- \counter_redBlink|s_count[29]~94\ = CARRY((!\counter_redBlink|s_count[28]~92\) # (!\counter_redBlink|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(29),
	datad => VCC,
	cin => \counter_redBlink|s_count[28]~92\,
	combout => \counter_redBlink|s_count[29]~93_combout\,
	cout => \counter_redBlink|s_count[29]~94\);

-- Location: FF_X82_Y5_N27
\counter_redBlink|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[29]~93_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(29));

-- Location: LCCOMB_X82_Y5_N28
\counter_redBlink|s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[30]~95_combout\ = (\counter_redBlink|s_count\(30) & (\counter_redBlink|s_count[29]~94\ $ (GND))) # (!\counter_redBlink|s_count\(30) & (!\counter_redBlink|s_count[29]~94\ & VCC))
-- \counter_redBlink|s_count[30]~96\ = CARRY((\counter_redBlink|s_count\(30) & !\counter_redBlink|s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_redBlink|s_count\(30),
	datad => VCC,
	cin => \counter_redBlink|s_count[29]~94\,
	combout => \counter_redBlink|s_count[30]~95_combout\,
	cout => \counter_redBlink|s_count[30]~96\);

-- Location: FF_X82_Y5_N29
\counter_redBlink|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[30]~95_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(30));

-- Location: LCCOMB_X82_Y5_N30
\counter_redBlink|s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[31]~97_combout\ = \counter_redBlink|s_count\(31) $ (\counter_redBlink|s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(31),
	cin => \counter_redBlink|s_count[30]~96\,
	combout => \counter_redBlink|s_count[31]~97_combout\);

-- Location: FF_X82_Y5_N31
\counter_redBlink|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[31]~97_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(31));

-- Location: LCCOMB_X81_Y5_N26
\counter_redBlink|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~7_combout\ = (\counter_redBlink|s_count\(31)) # ((\counter_redBlink|s_count\(28)) # ((\counter_redBlink|s_count\(29)) # (\counter_redBlink|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(31),
	datab => \counter_redBlink|s_count\(28),
	datac => \counter_redBlink|s_count\(29),
	datad => \counter_redBlink|s_count\(30),
	combout => \counter_redBlink|Equal0~7_combout\);

-- Location: LCCOMB_X81_Y5_N16
\counter_redBlink|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~6_combout\ = (\counter_redBlink|s_count\(26)) # ((\counter_redBlink|s_count\(27)) # ((\counter_redBlink|s_count\(25)) # (\counter_redBlink|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(26),
	datab => \counter_redBlink|s_count\(27),
	datac => \counter_redBlink|s_count\(25),
	datad => \counter_redBlink|s_count\(24),
	combout => \counter_redBlink|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y5_N22
\counter_redBlink|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~5_combout\ = (\counter_redBlink|s_count\(23)) # ((\counter_redBlink|s_count\(22)) # ((\counter_redBlink|s_count\(21)) # (\counter_redBlink|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(23),
	datab => \counter_redBlink|s_count\(22),
	datac => \counter_redBlink|s_count\(21),
	datad => \counter_redBlink|s_count\(20),
	combout => \counter_redBlink|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y5_N28
\counter_redBlink|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~4_combout\ = (\counter_redBlink|s_count\(18)) # ((\counter_redBlink|s_count\(16)) # ((\counter_redBlink|s_count\(19)) # (\counter_redBlink|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(18),
	datab => \counter_redBlink|s_count\(16),
	datac => \counter_redBlink|s_count\(19),
	datad => \counter_redBlink|s_count\(17),
	combout => \counter_redBlink|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y5_N24
\counter_redBlink|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~8_combout\ = (\counter_redBlink|Equal0~7_combout\) # ((\counter_redBlink|Equal0~6_combout\) # ((\counter_redBlink|Equal0~5_combout\) # (\counter_redBlink|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|Equal0~7_combout\,
	datab => \counter_redBlink|Equal0~6_combout\,
	datac => \counter_redBlink|Equal0~5_combout\,
	datad => \counter_redBlink|Equal0~4_combout\,
	combout => \counter_redBlink|Equal0~8_combout\);

-- Location: LCCOMB_X81_Y6_N30
\counter_redBlink|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~1_combout\ = (\counter_redBlink|s_count\(11)) # ((\counter_redBlink|s_count\(8)) # ((\counter_redBlink|s_count\(10)) # (\counter_redBlink|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(11),
	datab => \counter_redBlink|s_count\(8),
	datac => \counter_redBlink|s_count\(10),
	datad => \counter_redBlink|s_count\(9),
	combout => \counter_redBlink|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y5_N8
\sevenSegCountRed|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|Equal7~0_combout\ = (\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(3) & (\counter_redBlink|s_count\(0) & \counter_redBlink|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(2),
	datab => \counter_redBlink|s_count\(3),
	datac => \counter_redBlink|s_count\(0),
	datad => \counter_redBlink|s_count\(1),
	combout => \sevenSegCountRed|Equal7~0_combout\);

-- Location: LCCOMB_X81_Y6_N16
\counter_redBlink|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~0_combout\ = (\counter_redBlink|s_count\(5)) # ((\counter_redBlink|s_count\(6)) # ((\counter_redBlink|s_count\(4)) # (\counter_redBlink|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(5),
	datab => \counter_redBlink|s_count\(6),
	datac => \counter_redBlink|s_count\(4),
	datad => \counter_redBlink|s_count\(7),
	combout => \counter_redBlink|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y6_N12
\counter_redBlink|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~2_combout\ = (\counter_redBlink|s_count\(15)) # ((\counter_redBlink|s_count\(14)) # ((\counter_redBlink|s_count\(12)) # (\counter_redBlink|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(15),
	datab => \counter_redBlink|s_count\(14),
	datac => \counter_redBlink|s_count\(12),
	datad => \counter_redBlink|s_count\(13),
	combout => \counter_redBlink|Equal0~2_combout\);

-- Location: LCCOMB_X81_Y5_N10
\counter_redBlink|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|Equal0~3_combout\ = (\counter_redBlink|Equal0~1_combout\) # (((\counter_redBlink|Equal0~0_combout\) # (\counter_redBlink|Equal0~2_combout\)) # (!\sevenSegCountRed|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|Equal0~1_combout\,
	datab => \sevenSegCountRed|Equal7~0_combout\,
	datac => \counter_redBlink|Equal0~0_combout\,
	datad => \counter_redBlink|Equal0~2_combout\,
	combout => \counter_redBlink|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y5_N18
\counter_redBlink|s_count[5]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_redBlink|s_count[5]~99_combout\ = (((!\counter_redBlink|Equal0~8_combout\ & !\counter_redBlink|Equal0~3_combout\)) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sync_sw(0),
	datab => \counter_redBlink|Equal0~8_combout\,
	datac => sync_sw(1),
	datad => \counter_redBlink|Equal0~3_combout\,
	combout => \counter_redBlink|s_count[5]~99_combout\);

-- Location: FF_X82_Y6_N1
\counter_redBlink|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter_redBlink|s_count[0]~34_combout\,
	sclr => \counter_redBlink|s_count[5]~99_combout\,
	ena => \counter_redBlink|s_count[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_redBlink|s_count\(0));

-- Location: LCCOMB_X81_Y5_N12
\sevenSegCountRed|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~10_combout\ = (\counter_redBlink|s_count\(2) & (!\counter_redBlink|s_count\(1) & (\counter_redBlink|s_count\(0) $ (!\counter_redBlink|s_count\(3))))) # (!\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(0) & 
-- (\counter_redBlink|s_count\(1) $ (!\counter_redBlink|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(0),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(2),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n~10_combout\);

-- Location: LCCOMB_X81_Y5_N30
\sevenSegCountRed|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~20_combout\ = (\sevenSegCountRed|decOut_n~10_combout\) # ((!sync_sw(0)) # (!sync_sw(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountRed|decOut_n~10_combout\,
	datab => sync_sw(1),
	datac => sync_sw(0),
	combout => \sevenSegCountRed|decOut_n~20_combout\);

-- Location: LCCOMB_X81_Y5_N6
\sevenSegCountRed|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~11_combout\ = (\counter_redBlink|s_count\(1) & ((\counter_redBlink|s_count\(0) & ((\counter_redBlink|s_count\(3)))) # (!\counter_redBlink|s_count\(0) & (\counter_redBlink|s_count\(2))))) # (!\counter_redBlink|s_count\(1) & 
-- (\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(0) $ (\counter_redBlink|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(0),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(2),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n~11_combout\);

-- Location: LCCOMB_X81_Y5_N20
\sevenSegCountRed|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~21_combout\ = ((\sevenSegCountRed|decOut_n~11_combout\) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sync_sw(0),
	datac => sync_sw(1),
	datad => \sevenSegCountRed|decOut_n~11_combout\,
	combout => \sevenSegCountRed|decOut_n~21_combout\);

-- Location: LCCOMB_X81_Y6_N4
\sevenSegCountRed|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~12_combout\ = (\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(3) & ((\counter_redBlink|s_count\(1)) # (!\counter_redBlink|s_count\(0))))) # (!\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(1) & 
-- (!\counter_redBlink|s_count\(0) & !\counter_redBlink|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(2),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(0),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n~12_combout\);

-- Location: LCCOMB_X80_Y6_N0
\sevenSegCountRed|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~22_combout\ = (\sevenSegCountRed|decOut_n~12_combout\) # ((!sync_sw(1)) # (!sync_sw(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountRed|decOut_n~12_combout\,
	datac => sync_sw(0),
	datad => sync_sw(1),
	combout => \sevenSegCountRed|decOut_n~22_combout\);

-- Location: LCCOMB_X81_Y6_N10
\sevenSegCountRed|decOut_n[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n[6]~13_combout\ = (\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(1) & (\counter_redBlink|s_count\(0) & \counter_redBlink|s_count\(3)))) # (!\counter_redBlink|s_count\(2) & (!\counter_redBlink|s_count\(1) & 
-- (!\counter_redBlink|s_count\(0) & !\counter_redBlink|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(2),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(0),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n[6]~13_combout\);

-- Location: LCCOMB_X81_Y6_N20
\sevenSegCountRed|decOut_n[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n[3]~14_combout\ = (\counter_redBlink|s_count\(2) & ((\counter_redBlink|s_count\(3)) # (\counter_redBlink|s_count\(1) $ (\counter_redBlink|s_count\(0))))) # (!\counter_redBlink|s_count\(2) & ((\counter_redBlink|s_count\(1) & 
-- ((\counter_redBlink|s_count\(0)) # (!\counter_redBlink|s_count\(3)))) # (!\counter_redBlink|s_count\(1) & ((\counter_redBlink|s_count\(3)) # (!\counter_redBlink|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(2),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(0),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n[3]~14_combout\);

-- Location: LCCOMB_X81_Y6_N22
\sevenSegCountRed|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n[3]~15_combout\ = ((\sevenSegCountRed|decOut_n[6]~13_combout\ & ((\sevenSegCountRed|Equal7~0_combout\))) # (!\sevenSegCountRed|decOut_n[6]~13_combout\ & (!\sevenSegCountRed|decOut_n[3]~14_combout\))) # 
-- (!\options_mux|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountRed|decOut_n[6]~13_combout\,
	datab => \sevenSegCountRed|decOut_n[3]~14_combout\,
	datac => \options_mux|Equal1~1_combout\,
	datad => \sevenSegCountRed|Equal7~0_combout\,
	combout => \sevenSegCountRed|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X81_Y6_N0
\sevenSegCountRed|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~16_combout\ = (\counter_redBlink|s_count\(1) & (((\counter_redBlink|s_count\(0) & !\counter_redBlink|s_count\(3))))) # (!\counter_redBlink|s_count\(1) & ((\counter_redBlink|s_count\(2) & ((!\counter_redBlink|s_count\(3)))) # 
-- (!\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(2),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(0),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n~16_combout\);

-- Location: LCCOMB_X80_Y6_N14
\sevenSegCountRed|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~23_combout\ = ((\sevenSegCountRed|decOut_n~16_combout\) # (!sync_sw(1))) # (!sync_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sync_sw(0),
	datac => \sevenSegCountRed|decOut_n~16_combout\,
	datad => sync_sw(1),
	combout => \sevenSegCountRed|decOut_n~23_combout\);

-- Location: LCCOMB_X81_Y6_N18
\sevenSegCountRed|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~17_combout\ = (\counter_redBlink|s_count\(2) & (\counter_redBlink|s_count\(0) & (\counter_redBlink|s_count\(1) $ (\counter_redBlink|s_count\(3))))) # (!\counter_redBlink|s_count\(2) & (!\counter_redBlink|s_count\(3) & 
-- ((\counter_redBlink|s_count\(1)) # (\counter_redBlink|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(2),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(0),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n~17_combout\);

-- Location: LCCOMB_X80_Y6_N4
\sevenSegCountRed|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n~24_combout\ = (\sevenSegCountRed|decOut_n~17_combout\) # ((!sync_sw(1)) # (!sync_sw(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenSegCountRed|decOut_n~17_combout\,
	datac => sync_sw(0),
	datad => sync_sw(1),
	combout => \sevenSegCountRed|decOut_n~24_combout\);

-- Location: LCCOMB_X81_Y6_N28
\sevenSegCountRed|decOut_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n[6]~18_combout\ = (\counter_redBlink|s_count\(0) & (!\counter_redBlink|s_count\(3) & (\counter_redBlink|s_count\(2) $ (!\counter_redBlink|s_count\(1))))) # (!\counter_redBlink|s_count\(0) & (\counter_redBlink|s_count\(2) & 
-- (!\counter_redBlink|s_count\(1) & \counter_redBlink|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_redBlink|s_count\(2),
	datab => \counter_redBlink|s_count\(1),
	datac => \counter_redBlink|s_count\(0),
	datad => \counter_redBlink|s_count\(3),
	combout => \sevenSegCountRed|decOut_n[6]~18_combout\);

-- Location: LCCOMB_X81_Y6_N6
\sevenSegCountRed|decOut_n[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegCountRed|decOut_n[6]~19_combout\ = ((\sevenSegCountRed|decOut_n[6]~13_combout\ & ((!\sevenSegCountRed|Equal7~0_combout\))) # (!\sevenSegCountRed|decOut_n[6]~13_combout\ & (\sevenSegCountRed|decOut_n[6]~18_combout\))) # 
-- (!\options_mux|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegCountRed|decOut_n[6]~13_combout\,
	datab => \sevenSegCountRed|decOut_n[6]~18_combout\,
	datac => \options_mux|Equal1~1_combout\,
	datad => \sevenSegCountRed|Equal7~0_combout\,
	combout => \sevenSegCountRed|decOut_n[6]~19_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;
END structure;


