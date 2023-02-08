-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/08/2022 22:39:14"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LW10 IS
    PORT (
	BCLR : IN std_logic_vector(3 DOWNTO 0);
	RDIR : OUT std_logic;
	REN : OUT std_logic;
	LEN : OUT std_logic;
	LDIR : OUT std_logic;
	BEEP : OUT std_logic;
	HEX5 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0)
	);
END LW10;

-- Design Ports Information
-- RDIR	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REN	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEN	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDIR	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BEEP	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCLR[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCLR[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCLR[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCLR[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LW10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCLR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RDIR : std_logic;
SIGNAL ww_REN : std_logic;
SIGNAL ww_LEN : std_logic;
SIGNAL ww_LDIR : std_logic;
SIGNAL ww_BEEP : std_logic;
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \RDIR~output_o\ : std_logic;
SIGNAL \REN~output_o\ : std_logic;
SIGNAL \LEN~output_o\ : std_logic;
SIGNAL \LDIR~output_o\ : std_logic;
SIGNAL \BEEP~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \BCLR[0]~input_o\ : std_logic;
SIGNAL \BCLR[2]~input_o\ : std_logic;
SIGNAL \U6|Mux37~0_combout\ : std_logic;
SIGNAL \BCLR[1]~input_o\ : std_logic;
SIGNAL \BCLR[3]~input_o\ : std_logic;
SIGNAL \U6|Mux1~0_combout\ : std_logic;
SIGNAL \U6|Mux2~0_combout\ : std_logic;
SIGNAL \U6|Mux3~0_combout\ : std_logic;
SIGNAL \U6|Mux4~0_combout\ : std_logic;
SIGNAL \U6|Mux9~0_combout\ : std_logic;
SIGNAL \U6|Mux5~0_combout\ : std_logic;
SIGNAL \U5|Mux7~0_combout\ : std_logic;
SIGNAL \U5|Mux6~0_combout\ : std_logic;
SIGNAL \U5|Mux3~0_combout\ : std_logic;
SIGNAL \U5|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux7~2_combout\ : std_logic;
SIGNAL \U4|Mux6~2_combout\ : std_logic;
SIGNAL \U4|Mux5~7_combout\ : std_logic;
SIGNAL \U4|Mux4~2_combout\ : std_logic;
SIGNAL \U4|Mux3~8_combout\ : std_logic;
SIGNAL \U4|Mux2~8_combout\ : std_logic;
SIGNAL \U4|Mux1~8_combout\ : std_logic;
SIGNAL \U3|Mux7~2_combout\ : std_logic;
SIGNAL \U3|Mux6~8_combout\ : std_logic;
SIGNAL \U3|Mux5~8_combout\ : std_logic;
SIGNAL \U3|Mux3~8_combout\ : std_logic;
SIGNAL \U3|Mux2~2_combout\ : std_logic;
SIGNAL \U2|Mux7~8_combout\ : std_logic;
SIGNAL \U2|Mux6~4_combout\ : std_logic;
SIGNAL \U2|Mux5~8_combout\ : std_logic;
SIGNAL \U2|Mux4~5_combout\ : std_logic;
SIGNAL \U2|Mux3~8_combout\ : std_logic;
SIGNAL \U2|Mux2~2_combout\ : std_logic;
SIGNAL \U2|Mux1~2_combout\ : std_logic;
SIGNAL \U1|Mux7~5_combout\ : std_logic;
SIGNAL \U1|Mux6~5_combout\ : std_logic;
SIGNAL \U1|Mux5~2_combout\ : std_logic;
SIGNAL \U1|Mux4~2_combout\ : std_logic;
SIGNAL \U1|Mux3~5_combout\ : std_logic;
SIGNAL \U1|Mux1~5_combout\ : std_logic;
SIGNAL \U0|Mux6~0_combout\ : std_logic;
SIGNAL \U0|Mux5~9_combout\ : std_logic;
SIGNAL \U0|Mux5~8_combout\ : std_logic;
SIGNAL \U0|Mux3~4_combout\ : std_logic;
SIGNAL \U0|Mux2~4_combout\ : std_logic;
SIGNAL \U0|Mux1~5_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux6~8_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux5~8_combout\ : std_logic;
SIGNAL \U0|ALT_INV_Mux5~8_combout\ : std_logic;
SIGNAL \U5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U5|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \U6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U6|ALT_INV_Mux4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_BCLR <= BCLR;
RDIR <= ww_RDIR;
REN <= ww_REN;
LEN <= ww_LEN;
LDIR <= ww_LDIR;
BEEP <= ww_BEEP;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\U2|ALT_INV_Mux6~4_combout\ <= NOT \U2|Mux6~4_combout\;
\U3|ALT_INV_Mux6~8_combout\ <= NOT \U3|Mux6~8_combout\;
\U2|ALT_INV_Mux5~8_combout\ <= NOT \U2|Mux5~8_combout\;
\U0|ALT_INV_Mux5~8_combout\ <= NOT \U0|Mux5~8_combout\;
\U5|ALT_INV_Mux3~0_combout\ <= NOT \U5|Mux3~0_combout\;
\U5|ALT_INV_Mux7~0_combout\ <= NOT \U5|Mux7~0_combout\;
\U6|ALT_INV_Mux5~0_combout\ <= NOT \U6|Mux5~0_combout\;
\U6|ALT_INV_Mux4~0_combout\ <= NOT \U6|Mux4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X34_Y0_N16
\RDIR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux37~0_combout\,
	devoe => ww_devoe,
	o => \RDIR~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\REN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \REN~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\LEN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \LEN~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\LDIR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LDIR~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\BEEP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \BEEP~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux6~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCLR[3]~input_o\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux7~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux6~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux5~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux4~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux3~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux7~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux6~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux3~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|ALT_INV_Mux5~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOIBUF_X58_Y0_N29
\BCLR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCLR(0),
	o => \BCLR[0]~input_o\);

-- Location: IOIBUF_X69_Y0_N22
\BCLR[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCLR(2),
	o => \BCLR[2]~input_o\);

-- Location: LCCOMB_X66_Y1_N24
\U6|Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Mux37~0_combout\ = (\BCLR[0]~input_o\ & !\BCLR[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U6|Mux37~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\BCLR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCLR(1),
	o => \BCLR[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\BCLR[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCLR(3),
	o => \BCLR[3]~input_o\);

-- Location: LCCOMB_X77_Y38_N0
\U6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Mux1~0_combout\ = (\BCLR[2]~input_o\ & (((\BCLR[3]~input_o\)))) # (!\BCLR[2]~input_o\ & ((\BCLR[0]~input_o\) # ((\BCLR[1]~input_o\ & \BCLR[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U6|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y38_N18
\U6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Mux2~0_combout\ = (\BCLR[2]~input_o\ & (((\BCLR[3]~input_o\)))) # (!\BCLR[2]~input_o\ & ((\BCLR[1]~input_o\) # ((\BCLR[3]~input_o\ & \BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U6|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y38_N20
\U6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Mux3~0_combout\ = (!\BCLR[2]~input_o\ & \BCLR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[1]~input_o\,
	combout => \U6|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y44_N8
\U6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Mux4~0_combout\ = (\BCLR[3]~input_o\) # ((!\BCLR[2]~input_o\ & ((\BCLR[0]~input_o\) # (\BCLR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U6|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y38_N24
\U6|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Mux9~0_combout\ = (!\BCLR[2]~input_o\ & (\BCLR[1]~input_o\ $ (((\BCLR[3]~input_o\ & \BCLR[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U6|Mux9~0_combout\);

-- Location: LCCOMB_X77_Y38_N6
\U6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Mux5~0_combout\ = (\BCLR[3]~input_o\ & (!\BCLR[2]~input_o\ & (\BCLR[1]~input_o\ $ (\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U6|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y38_N10
\U5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~0_combout\ = (\U6|Mux3~0_combout\ & (!\U6|Mux9~0_combout\ & (!\BCLR[3]~input_o\ & \U6|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux3~0_combout\,
	datab => \U6|Mux9~0_combout\,
	datac => \BCLR[3]~input_o\,
	datad => \U6|Mux5~0_combout\,
	combout => \U5|Mux7~0_combout\);

-- Location: LCCOMB_X77_Y38_N12
\U5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux6~0_combout\ = ((\U6|Mux9~0_combout\ & ((\BCLR[3]~input_o\) # (!\U6|Mux3~0_combout\)))) # (!\U6|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux3~0_combout\,
	datab => \U6|Mux9~0_combout\,
	datac => \BCLR[3]~input_o\,
	datad => \U6|Mux5~0_combout\,
	combout => \U5|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y38_N14
\U5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux3~0_combout\ = (!\U6|Mux9~0_combout\ & (\U6|Mux5~0_combout\ & ((\BCLR[3]~input_o\) # (!\U6|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux3~0_combout\,
	datab => \U6|Mux9~0_combout\,
	datac => \BCLR[3]~input_o\,
	datad => \U6|Mux5~0_combout\,
	combout => \U5|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y38_N16
\U5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux1~0_combout\ = ((!\U6|Mux5~0_combout\ & ((\BCLR[3]~input_o\) # (!\U6|Mux3~0_combout\)))) # (!\U6|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux3~0_combout\,
	datab => \U6|Mux9~0_combout\,
	datac => \BCLR[3]~input_o\,
	datad => \U6|Mux5~0_combout\,
	combout => \U5|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y38_N2
\U4|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Mux7~2_combout\ = (\BCLR[3]~input_o\ & ((\BCLR[2]~input_o\) # ((!\BCLR[1]~input_o\ & !\BCLR[0]~input_o\)))) # (!\BCLR[3]~input_o\ & (((!\BCLR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U4|Mux7~2_combout\);

-- Location: LCCOMB_X77_Y38_N4
\U4|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Mux6~2_combout\ = \BCLR[3]~input_o\ $ (!\BCLR[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	combout => \U4|Mux6~2_combout\);

-- Location: LCCOMB_X71_Y44_N22
\U4|Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Mux5~7_combout\ = (!\BCLR[2]~input_o\ & ((\BCLR[0]~input_o\ & ((!\BCLR[1]~input_o\) # (!\BCLR[3]~input_o\))) # (!\BCLR[0]~input_o\ & ((\BCLR[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U4|Mux5~7_combout\);

-- Location: LCCOMB_X77_Y43_N30
\U4|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Mux4~2_combout\ = (\BCLR[3]~input_o\ & (!\BCLR[2]~input_o\ & ((\BCLR[1]~input_o\) # (\BCLR[0]~input_o\)))) # (!\BCLR[3]~input_o\ & ((\BCLR[2]~input_o\) # (\BCLR[1]~input_o\ $ (!\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U4|Mux4~2_combout\);

-- Location: LCCOMB_X77_Y43_N0
\U4|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Mux3~8_combout\ = (\BCLR[1]~input_o\ & (!\BCLR[3]~input_o\ & (\BCLR[0]~input_o\ & !\BCLR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U4|Mux3~8_combout\);

-- Location: LCCOMB_X77_Y38_N26
\U4|Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Mux2~8_combout\ = (\BCLR[1]~input_o\ & (!\BCLR[3]~input_o\ & (!\BCLR[2]~input_o\ & \BCLR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U4|Mux2~8_combout\);

-- Location: LCCOMB_X77_Y38_N28
\U4|Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Mux1~8_combout\ = (!\BCLR[3]~input_o\ & ((\BCLR[2]~input_o\) # ((\BCLR[1]~input_o\ & \BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U4|Mux1~8_combout\);

-- Location: LCCOMB_X77_Y43_N20
\U3|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mux7~2_combout\ = (\BCLR[2]~input_o\ & (((!\BCLR[3]~input_o\)))) # (!\BCLR[2]~input_o\ & ((\BCLR[1]~input_o\ & ((\BCLR[3]~input_o\) # (!\BCLR[0]~input_o\))) # (!\BCLR[1]~input_o\ & ((\BCLR[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U3|Mux7~2_combout\);

-- Location: LCCOMB_X77_Y38_N22
\U3|Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mux6~8_combout\ = (\BCLR[3]~input_o\ & ((\BCLR[2]~input_o\) # ((!\BCLR[1]~input_o\ & !\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U3|Mux6~8_combout\);

-- Location: LCCOMB_X77_Y38_N30
\U3|Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mux5~8_combout\ = (!\BCLR[1]~input_o\ & (!\BCLR[3]~input_o\ & (!\BCLR[2]~input_o\ & !\BCLR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U3|Mux5~8_combout\);

-- Location: LCCOMB_X77_Y43_N6
\U3|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mux3~8_combout\ = (\BCLR[3]~input_o\ & (!\BCLR[2]~input_o\ & (\BCLR[1]~input_o\ $ (\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U3|Mux3~8_combout\);

-- Location: LCCOMB_X77_Y43_N8
\U3|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mux2~2_combout\ = (\BCLR[2]~input_o\ & (((!\BCLR[3]~input_o\)))) # (!\BCLR[2]~input_o\ & (\BCLR[1]~input_o\ $ (((\BCLR[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U3|Mux2~2_combout\);

-- Location: LCCOMB_X77_Y43_N18
\U2|Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux7~8_combout\ = (((\BCLR[2]~input_o\) # (!\BCLR[0]~input_o\)) # (!\BCLR[3]~input_o\)) # (!\BCLR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U2|Mux7~8_combout\);

-- Location: LCCOMB_X71_Y44_N4
\U2|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux6~4_combout\ = (!\BCLR[3]~input_o\ & \BCLR[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCLR[3]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U2|Mux6~4_combout\);

-- Location: LCCOMB_X71_Y44_N16
\U2|Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux5~8_combout\ = \BCLR[3]~input_o\ $ (((\BCLR[2]~input_o\) # ((\BCLR[0]~input_o\ & \BCLR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U2|Mux5~8_combout\);

-- Location: LCCOMB_X77_Y43_N10
\U2|Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux4~5_combout\ = (!\BCLR[2]~input_o\ & ((\BCLR[1]~input_o\ & ((!\BCLR[0]~input_o\))) # (!\BCLR[1]~input_o\ & ((\BCLR[3]~input_o\) # (\BCLR[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U2|Mux4~5_combout\);

-- Location: LCCOMB_X77_Y43_N16
\U2|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux3~8_combout\ = (!\BCLR[1]~input_o\ & (\BCLR[3]~input_o\ & (!\BCLR[0]~input_o\ & !\BCLR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U2|Mux3~8_combout\);

-- Location: LCCOMB_X77_Y38_N8
\U2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux2~2_combout\ = (\BCLR[3]~input_o\ & (((\BCLR[2]~input_o\) # (!\BCLR[0]~input_o\)) # (!\BCLR[1]~input_o\))) # (!\BCLR[3]~input_o\ & (!\BCLR[2]~input_o\ & ((\BCLR[1]~input_o\) # (\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[2]~input_o\,
	datad => \BCLR[0]~input_o\,
	combout => \U2|Mux2~2_combout\);

-- Location: LCCOMB_X77_Y43_N2
\U2|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux1~2_combout\ = (\BCLR[2]~input_o\ & (((!\BCLR[3]~input_o\)))) # (!\BCLR[2]~input_o\ & (!\BCLR[1]~input_o\ & ((!\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U2|Mux1~2_combout\);

-- Location: LCCOMB_X71_Y44_N18
\U1|Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Mux7~5_combout\ = (!\BCLR[2]~input_o\ & ((\BCLR[3]~input_o\ & ((!\BCLR[1]~input_o\) # (!\BCLR[0]~input_o\))) # (!\BCLR[3]~input_o\ & ((\BCLR[0]~input_o\) # (\BCLR[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U1|Mux7~5_combout\);

-- Location: LCCOMB_X77_Y43_N22
\U1|Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Mux6~5_combout\ = (\BCLR[2]~input_o\) # ((\BCLR[1]~input_o\ & ((!\BCLR[0]~input_o\) # (!\BCLR[3]~input_o\))) # (!\BCLR[1]~input_o\ & ((\BCLR[3]~input_o\) # (\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U1|Mux6~5_combout\);

-- Location: LCCOMB_X77_Y43_N12
\U1|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Mux5~2_combout\ = (\BCLR[3]~input_o\ & (!\BCLR[2]~input_o\ & ((!\BCLR[0]~input_o\) # (!\BCLR[1]~input_o\)))) # (!\BCLR[3]~input_o\ & ((\BCLR[2]~input_o\) # (\BCLR[1]~input_o\ $ (!\BCLR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U1|Mux5~2_combout\);

-- Location: LCCOMB_X77_Y43_N28
\U1|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Mux4~2_combout\ = (\BCLR[3]~input_o\ & ((\BCLR[2]~input_o\) # ((\BCLR[1]~input_o\ & \BCLR[0]~input_o\)))) # (!\BCLR[3]~input_o\ & (((!\BCLR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U1|Mux4~2_combout\);

-- Location: LCCOMB_X71_Y44_N28
\U1|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Mux3~5_combout\ = (!\BCLR[2]~input_o\ & ((\BCLR[3]~input_o\ & (\BCLR[0]~input_o\ $ (\BCLR[1]~input_o\))) # (!\BCLR[3]~input_o\ & (\BCLR[0]~input_o\ & \BCLR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U1|Mux3~5_combout\);

-- Location: LCCOMB_X71_Y44_N14
\U1|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Mux1~5_combout\ = (!\BCLR[2]~input_o\ & ((\BCLR[3]~input_o\ & (\BCLR[0]~input_o\ $ (\BCLR[1]~input_o\))) # (!\BCLR[3]~input_o\ & (\BCLR[0]~input_o\ & \BCLR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U1|Mux1~5_combout\);

-- Location: LCCOMB_X77_Y43_N24
\U0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mux6~0_combout\ = (((\BCLR[2]~input_o\) # (!\BCLR[0]~input_o\)) # (!\BCLR[3]~input_o\)) # (!\BCLR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U0|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y44_N24
\U0|Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mux5~9_combout\ = (((\BCLR[2]~input_o\) # (!\BCLR[1]~input_o\)) # (!\BCLR[0]~input_o\)) # (!\BCLR[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U0|Mux5~9_combout\);

-- Location: LCCOMB_X71_Y44_N10
\U0|Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mux5~8_combout\ = (\BCLR[0]~input_o\ & (\BCLR[3]~input_o\ & !\BCLR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[3]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U0|Mux5~8_combout\);

-- Location: LCCOMB_X71_Y44_N20
\U0|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mux3~4_combout\ = ((\BCLR[2]~input_o\) # ((!\BCLR[0]~input_o\ & !\BCLR[1]~input_o\))) # (!\BCLR[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U0|Mux3~4_combout\);

-- Location: LCCOMB_X77_Y43_N26
\U0|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mux2~4_combout\ = (\BCLR[1]~input_o\) # (((\BCLR[2]~input_o\) # (!\BCLR[0]~input_o\)) # (!\BCLR[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[1]~input_o\,
	datab => \BCLR[3]~input_o\,
	datac => \BCLR[0]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U0|Mux2~4_combout\);

-- Location: LCCOMB_X71_Y44_N26
\U0|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mux1~5_combout\ = (\BCLR[2]~input_o\) # ((\BCLR[3]~input_o\ & ((!\BCLR[1]~input_o\))) # (!\BCLR[3]~input_o\ & (!\BCLR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCLR[3]~input_o\,
	datab => \BCLR[0]~input_o\,
	datac => \BCLR[1]~input_o\,
	datad => \BCLR[2]~input_o\,
	combout => \U0|Mux1~5_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_RDIR <= \RDIR~output_o\;

ww_REN <= \REN~output_o\;

ww_LEN <= \LEN~output_o\;

ww_LDIR <= \LDIR~output_o\;

ww_BEEP <= \BEEP~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;
END structure;


