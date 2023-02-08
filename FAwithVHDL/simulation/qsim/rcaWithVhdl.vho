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

-- DATE "11/04/2022 08:32:53"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	csa8 IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	SUB : IN std_logic;
	SUM : OUT std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic
	);
END csa8;

ARCHITECTURE structure OF csa8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SUB : std_logic;
SIGNAL ww_SUM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \SUM[0]~output_o\ : std_logic;
SIGNAL \SUM[1]~output_o\ : std_logic;
SIGNAL \SUM[2]~output_o\ : std_logic;
SIGNAL \SUM[3]~output_o\ : std_logic;
SIGNAL \SUM[4]~output_o\ : std_logic;
SIGNAL \SUM[5]~output_o\ : std_logic;
SIGNAL \SUM[6]~output_o\ : std_logic;
SIGNAL \SUM[7]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \RCA0|FA0|Sum~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \SUB~input_o\ : std_logic;
SIGNAL \RCA0|FA1|Sum~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Bsig[2]~0_combout\ : std_logic;
SIGNAL \RCA0|FA1|Cout~0_combout\ : std_logic;
SIGNAL \RCA0|FA2|Sum~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Bsig[3]~1_combout\ : std_logic;
SIGNAL \RCA0|FA3|Sum~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \SUM~0_combout\ : std_logic;
SIGNAL \SUM~1_combout\ : std_logic;
SIGNAL \RCA0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \SUM~2_combout\ : std_logic;
SIGNAL \RCA1|FA1|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Bsig[6]~2_combout\ : std_logic;
SIGNAL \RCA2|FA1|Cout~0_combout\ : std_logic;
SIGNAL \SUM~3_combout\ : std_logic;
SIGNAL \RCA1|FA2|Cout~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \RCA2|FA2|Cout~0_combout\ : std_logic;
SIGNAL \SUM~4_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SUB~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \RCA2|FA2|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \RCA1|FA2|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \RCA2|FA1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Bsig[6]~2_combout\ : std_logic;
SIGNAL \RCA1|FA1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \RCA0|FA3|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_SUM~0_combout\ : std_logic;
SIGNAL \ALT_INV_Bsig[3]~1_combout\ : std_logic;
SIGNAL \RCA0|FA1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Bsig[2]~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_SUB <= SUB;
SUM <= ww_SUM;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_SUB~input_o\ <= NOT \SUB~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\RCA2|FA2|ALT_INV_Cout~0_combout\ <= NOT \RCA2|FA2|Cout~0_combout\;
\RCA1|FA2|ALT_INV_Cout~0_combout\ <= NOT \RCA1|FA2|Cout~0_combout\;
\RCA2|FA1|ALT_INV_Cout~0_combout\ <= NOT \RCA2|FA1|Cout~0_combout\;
\ALT_INV_Bsig[6]~2_combout\ <= NOT \Bsig[6]~2_combout\;
\RCA1|FA1|ALT_INV_Cout~0_combout\ <= NOT \RCA1|FA1|Cout~0_combout\;
\RCA0|FA3|ALT_INV_Cout~0_combout\ <= NOT \RCA0|FA3|Cout~0_combout\;
\ALT_INV_SUM~0_combout\ <= NOT \SUM~0_combout\;
\ALT_INV_Bsig[3]~1_combout\ <= NOT \Bsig[3]~1_combout\;
\RCA0|FA1|ALT_INV_Cout~0_combout\ <= NOT \RCA0|FA1|Cout~0_combout\;
\ALT_INV_Bsig[2]~0_combout\ <= NOT \Bsig[2]~0_combout\;

\SUM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA0|FA0|Sum~0_combout\,
	devoe => ww_devoe,
	o => \SUM[0]~output_o\);

\SUM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA0|FA1|Sum~combout\,
	devoe => ww_devoe,
	o => \SUM[1]~output_o\);

\SUM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA0|FA2|Sum~combout\,
	devoe => ww_devoe,
	o => \SUM[2]~output_o\);

\SUM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA0|FA3|Sum~combout\,
	devoe => ww_devoe,
	o => \SUM[3]~output_o\);

\SUM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUM~1_combout\,
	devoe => ww_devoe,
	o => \SUM[4]~output_o\);

\SUM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUM~2_combout\,
	devoe => ww_devoe,
	o => \SUM[5]~output_o\);

\SUM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUM~3_combout\,
	devoe => ww_devoe,
	o => \SUM[6]~output_o\);

\SUM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUM~4_combout\,
	devoe => ww_devoe,
	o => \SUM[7]~output_o\);

\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\RCA0|FA0|Sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA0|FA0|Sum~0_combout\ = !\A[0]~input_o\ $ (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	combout => \RCA0|FA0|Sum~0_combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\SUB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUB,
	o => \SUB~input_o\);

\RCA0|FA1|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA0|FA1|Sum~combout\ = ( \SUB~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((!\A[0]~input_o\ & \B[0]~input_o\)))) ) ) # ( !\SUB~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001001011011101001000011110111000010010110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	combout => \RCA0|FA1|Sum~combout\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\Bsig[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bsig[2]~0_combout\ = !\SUB~input_o\ $ (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \Bsig[2]~0_combout\);

\RCA0|FA1|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA0|FA1|Cout~0_combout\ = ( \SUB~input_o\ & ( (!\A[1]~input_o\ & (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\)))) # (\A[1]~input_o\ & (((!\B[0]~input_o\) # (!\B[1]~input_o\)) # (\A[0]~input_o\))) ) ) # ( !\SUB~input_o\ & ( (!\A[1]~input_o\ & 
-- (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) # (\A[1]~input_o\ & (((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111110111110000110100000001000111111101111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	combout => \RCA0|FA1|Cout~0_combout\);

\RCA0|FA2|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA0|FA2|Sum~combout\ = !\A[2]~input_o\ $ (!\Bsig[2]~0_combout\ $ (\RCA0|FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_Bsig[2]~0_combout\,
	datac => \RCA0|FA1|ALT_INV_Cout~0_combout\,
	combout => \RCA0|FA2|Sum~combout\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\Bsig[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bsig[3]~1_combout\ = !\SUB~input_o\ $ (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \Bsig[3]~1_combout\);

\RCA0|FA3|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA0|FA3|Sum~combout\ = ( \Bsig[3]~1_combout\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & (\Bsig[2]~0_combout\ & \RCA0|FA1|Cout~0_combout\)) # (\A[2]~input_o\ & ((\RCA0|FA1|Cout~0_combout\) # (\Bsig[2]~0_combout\))))) ) ) # ( !\Bsig[3]~1_combout\ & ( 
-- !\A[3]~input_o\ $ (((!\A[2]~input_o\ & ((!\Bsig[2]~0_combout\) # (!\RCA0|FA1|Cout~0_combout\))) # (\A[2]~input_o\ & (!\Bsig[2]~0_combout\ & !\RCA0|FA1|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011100010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_Bsig[2]~0_combout\,
	datac => \RCA0|FA1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_Bsig[3]~1_combout\,
	combout => \RCA0|FA3|Sum~combout\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\SUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUM~0_combout\ = !\SUB~input_o\ $ (!\A[4]~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	combout => \SUM~0_combout\);

\SUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUM~1_combout\ = ( \Bsig[3]~1_combout\ & ( \SUM~0_combout\ & ( (!\A[3]~input_o\ & ((!\A[2]~input_o\ & ((!\Bsig[2]~0_combout\) # (!\RCA0|FA1|Cout~0_combout\))) # (\A[2]~input_o\ & (!\Bsig[2]~0_combout\ & !\RCA0|FA1|Cout~0_combout\)))) ) ) ) # ( 
-- !\Bsig[3]~1_combout\ & ( \SUM~0_combout\ & ( (!\A[3]~input_o\) # ((!\A[2]~input_o\ & ((!\Bsig[2]~0_combout\) # (!\RCA0|FA1|Cout~0_combout\))) # (\A[2]~input_o\ & (!\Bsig[2]~0_combout\ & !\RCA0|FA1|Cout~0_combout\))) ) ) ) # ( \Bsig[3]~1_combout\ & ( 
-- !\SUM~0_combout\ & ( ((!\A[2]~input_o\ & (\Bsig[2]~0_combout\ & \RCA0|FA1|Cout~0_combout\)) # (\A[2]~input_o\ & ((\RCA0|FA1|Cout~0_combout\) # (\Bsig[2]~0_combout\)))) # (\A[3]~input_o\) ) ) ) # ( !\Bsig[3]~1_combout\ & ( !\SUM~0_combout\ & ( 
-- (\A[3]~input_o\ & ((!\A[2]~input_o\ & (\Bsig[2]~0_combout\ & \RCA0|FA1|Cout~0_combout\)) # (\A[2]~input_o\ & ((\RCA0|FA1|Cout~0_combout\) # (\Bsig[2]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111111111111111010001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_Bsig[2]~0_combout\,
	datac => \RCA0|FA1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_Bsig[3]~1_combout\,
	dataf => \ALT_INV_SUM~0_combout\,
	combout => \SUM~1_combout\);

\RCA0|FA3|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA0|FA3|Cout~0_combout\ = ( \Bsig[3]~1_combout\ & ( ((!\A[2]~input_o\ & (\Bsig[2]~0_combout\ & \RCA0|FA1|Cout~0_combout\)) # (\A[2]~input_o\ & ((\RCA0|FA1|Cout~0_combout\) # (\Bsig[2]~0_combout\)))) # (\A[3]~input_o\) ) ) # ( !\Bsig[3]~1_combout\ & ( 
-- (\A[3]~input_o\ & ((!\A[2]~input_o\ & (\Bsig[2]~0_combout\ & \RCA0|FA1|Cout~0_combout\)) # (\A[2]~input_o\ & ((\RCA0|FA1|Cout~0_combout\) # (\Bsig[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_Bsig[2]~0_combout\,
	datac => \RCA0|FA1|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_Bsig[3]~1_combout\,
	combout => \RCA0|FA3|Cout~0_combout\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\SUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUM~2_combout\ = ( \A[5]~input_o\ & ( \B[5]~input_o\ & ( (!\A[4]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\ & (\SUB~input_o\)) # (\RCA0|FA3|Cout~0_combout\ & ((\B[4]~input_o\))))) # (\A[4]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\ & ((\B[4]~input_o\))) # 
-- (\RCA0|FA3|Cout~0_combout\ & (!\SUB~input_o\)))) ) ) ) # ( !\A[5]~input_o\ & ( \B[5]~input_o\ & ( (!\A[4]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\ & (!\SUB~input_o\)) # (\RCA0|FA3|Cout~0_combout\ & ((!\B[4]~input_o\))))) # (\A[4]~input_o\ & 
-- ((!\RCA0|FA3|Cout~0_combout\ & ((!\B[4]~input_o\))) # (\RCA0|FA3|Cout~0_combout\ & (\SUB~input_o\)))) ) ) ) # ( \A[5]~input_o\ & ( !\B[5]~input_o\ & ( (!\A[4]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\ & (!\SUB~input_o\)) # (\RCA0|FA3|Cout~0_combout\ & 
-- ((!\B[4]~input_o\))))) # (\A[4]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\ & ((!\B[4]~input_o\))) # (\RCA0|FA3|Cout~0_combout\ & (\SUB~input_o\)))) ) ) ) # ( !\A[5]~input_o\ & ( !\B[5]~input_o\ & ( (!\A[4]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\ & 
-- (\SUB~input_o\)) # (\RCA0|FA3|Cout~0_combout\ & ((\B[4]~input_o\))))) # (\A[4]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\ & ((\B[4]~input_o\))) # (\RCA0|FA3|Cout~0_combout\ & (!\SUB~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100101110101110001101000110111000110100010100011100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \RCA0|FA3|ALT_INV_Cout~0_combout\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \SUM~2_combout\);

\RCA1|FA1|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA1|Cout~0_combout\ = ( \B[5]~input_o\ & ( (!\A[4]~input_o\ & ((!\B[4]~input_o\ & ((!\A[5]~input_o\))) # (\B[4]~input_o\ & (\SUB~input_o\)))) # (\A[4]~input_o\ & (\SUB~input_o\ & ((!\A[5]~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (!\A[4]~input_o\ & 
-- ((!\B[4]~input_o\ & (!\SUB~input_o\)) # (\B[4]~input_o\ & ((!\A[5]~input_o\))))) # (\A[4]~input_o\ & (!\SUB~input_o\ & ((!\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010000000110101010000010010101110100000001101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	combout => \RCA1|FA1|Cout~0_combout\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\Bsig[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bsig[6]~2_combout\ = !\SUB~input_o\ $ (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	combout => \Bsig[6]~2_combout\);

\RCA2|FA1|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA2|FA1|Cout~0_combout\ = ( \B[5]~input_o\ & ( (!\A[4]~input_o\ & (!\SUB~input_o\ & ((\A[5]~input_o\)))) # (\A[4]~input_o\ & ((!\B[4]~input_o\ & ((\A[5]~input_o\))) # (\B[4]~input_o\ & (!\SUB~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (!\A[4]~input_o\ & 
-- (\SUB~input_o\ & ((\A[5]~input_o\)))) # (\A[4]~input_o\ & ((!\B[4]~input_o\ & (\SUB~input_o\)) # (\B[4]~input_o\ & ((\A[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010111000000101011101000010000010101110000001010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	combout => \RCA2|FA1|Cout~0_combout\);

\SUM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUM~3_combout\ = ( \RCA2|FA1|Cout~0_combout\ & ( !\A[6]~input_o\ $ (!\Bsig[6]~2_combout\ $ (((!\RCA0|FA3|Cout~0_combout\) # (!\RCA1|FA1|Cout~0_combout\)))) ) ) # ( !\RCA2|FA1|Cout~0_combout\ & ( !\A[6]~input_o\ $ (!\Bsig[6]~2_combout\ $ 
-- (((\RCA0|FA3|Cout~0_combout\ & !\RCA1|FA1|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110110100111000010001111001001011101101001110000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RCA0|FA3|ALT_INV_Cout~0_combout\,
	datab => \RCA1|FA1|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_Bsig[6]~2_combout\,
	datae => \RCA2|FA1|ALT_INV_Cout~0_combout\,
	combout => \SUM~3_combout\);

\RCA1|FA2|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA2|Cout~0_combout\ = (!\RCA1|FA1|Cout~0_combout\ & ((\Bsig[6]~2_combout\) # (\A[6]~input_o\))) # (\RCA1|FA1|Cout~0_combout\ & (\A[6]~input_o\ & \Bsig[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RCA1|FA1|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_Bsig[6]~2_combout\,
	combout => \RCA1|FA2|Cout~0_combout\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\RCA2|FA2|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA2|FA2|Cout~0_combout\ = (!\A[6]~input_o\ & (\Bsig[6]~2_combout\ & \RCA2|FA1|Cout~0_combout\)) # (\A[6]~input_o\ & ((\RCA2|FA1|Cout~0_combout\) # (\Bsig[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_Bsig[6]~2_combout\,
	datac => \RCA2|FA1|ALT_INV_Cout~0_combout\,
	combout => \RCA2|FA2|Cout~0_combout\);

\SUM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUM~4_combout\ = ( \B[7]~input_o\ & ( \RCA2|FA2|Cout~0_combout\ & ( !\SUB~input_o\ $ (!\A[7]~input_o\ $ (((\RCA0|FA3|Cout~0_combout\ & !\RCA1|FA2|Cout~0_combout\)))) ) ) ) # ( !\B[7]~input_o\ & ( \RCA2|FA2|Cout~0_combout\ & ( !\SUB~input_o\ $ 
-- (!\A[7]~input_o\ $ (((!\RCA0|FA3|Cout~0_combout\) # (\RCA1|FA2|Cout~0_combout\)))) ) ) ) # ( \B[7]~input_o\ & ( !\RCA2|FA2|Cout~0_combout\ & ( !\SUB~input_o\ $ (!\A[7]~input_o\ $ (((!\RCA0|FA3|Cout~0_combout\) # (!\RCA1|FA2|Cout~0_combout\)))) ) ) ) # ( 
-- !\B[7]~input_o\ & ( !\RCA2|FA2|Cout~0_combout\ & ( !\SUB~input_o\ $ (!\A[7]~input_o\ $ (((\RCA0|FA3|Cout~0_combout\ & \RCA1|FA2|Cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001101010010101011010011010011001010110010110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \RCA0|FA3|ALT_INV_Cout~0_combout\,
	datac => \RCA1|FA2|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \RCA2|FA2|ALT_INV_Cout~0_combout\,
	combout => \SUM~4_combout\);

\cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = ( \B[7]~input_o\ & ( \RCA2|FA2|Cout~0_combout\ & ( (!\SUB~input_o\ & ((!\RCA0|FA3|Cout~0_combout\) # ((\A[7]~input_o\) # (\RCA1|FA2|Cout~0_combout\)))) # (\SUB~input_o\ & (\A[7]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\) # 
-- (\RCA1|FA2|Cout~0_combout\)))) ) ) ) # ( !\B[7]~input_o\ & ( \RCA2|FA2|Cout~0_combout\ & ( (!\SUB~input_o\ & (\A[7]~input_o\ & ((!\RCA0|FA3|Cout~0_combout\) # (\RCA1|FA2|Cout~0_combout\)))) # (\SUB~input_o\ & ((!\RCA0|FA3|Cout~0_combout\) # 
-- ((\A[7]~input_o\) # (\RCA1|FA2|Cout~0_combout\)))) ) ) ) # ( \B[7]~input_o\ & ( !\RCA2|FA2|Cout~0_combout\ & ( (!\SUB~input_o\ & (((\RCA0|FA3|Cout~0_combout\ & \RCA1|FA2|Cout~0_combout\)) # (\A[7]~input_o\))) # (\SUB~input_o\ & (\RCA0|FA3|Cout~0_combout\ 
-- & (\RCA1|FA2|Cout~0_combout\ & \A[7]~input_o\))) ) ) ) # ( !\B[7]~input_o\ & ( !\RCA2|FA2|Cout~0_combout\ & ( (!\SUB~input_o\ & (\RCA0|FA3|Cout~0_combout\ & (\RCA1|FA2|Cout~0_combout\ & \A[7]~input_o\))) # (\SUB~input_o\ & (((\RCA0|FA3|Cout~0_combout\ & 
-- \RCA1|FA2|Cout~0_combout\)) # (\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000101010101101000101110111111000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \RCA0|FA3|ALT_INV_Cout~0_combout\,
	datac => \RCA1|FA2|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \RCA2|FA2|ALT_INV_Cout~0_combout\,
	combout => \cout~0_combout\);

ww_SUM(0) <= \SUM[0]~output_o\;

ww_SUM(1) <= \SUM[1]~output_o\;

ww_SUM(2) <= \SUM[2]~output_o\;

ww_SUM(3) <= \SUM[3]~output_o\;

ww_SUM(4) <= \SUM[4]~output_o\;

ww_SUM(5) <= \SUM[5]~output_o\;

ww_SUM(6) <= \SUM[6]~output_o\;

ww_SUM(7) <= \SUM[7]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


