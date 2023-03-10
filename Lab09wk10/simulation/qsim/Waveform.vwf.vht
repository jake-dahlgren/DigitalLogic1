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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/08/2022 22:39:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LW10
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LW10_vhd_vec_tst IS
END LW10_vhd_vec_tst;
ARCHITECTURE LW10_arch OF LW10_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCLR : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BEEP : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LDIR : STD_LOGIC;
SIGNAL LEN : STD_LOGIC;
SIGNAL RDIR : STD_LOGIC;
SIGNAL REN : STD_LOGIC;
COMPONENT LW10
	PORT (
	BCLR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEEP : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LDIR : OUT STD_LOGIC;
	LEN : OUT STD_LOGIC;
	RDIR : OUT STD_LOGIC;
	REN : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LW10
	PORT MAP (
-- list connections between master ports and signals
	BCLR => BCLR,
	BEEP => BEEP,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	LDIR => LDIR,
	LEN => LEN,
	RDIR => RDIR,
	REN => REN
	);
-- BCLR[3]
t_prcs_BCLR_3: PROCESS
BEGIN
LOOP
	BCLR(3) <= '0';
	WAIT FOR 500000 ps;
	BCLR(3) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCLR_3;
-- BCLR[2]
t_prcs_BCLR_2: PROCESS
BEGIN
LOOP
	BCLR(2) <= '0';
	WAIT FOR 250000 ps;
	BCLR(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCLR_2;
-- BCLR[1]
t_prcs_BCLR_1: PROCESS
BEGIN
LOOP
	BCLR(1) <= '0';
	WAIT FOR 125000 ps;
	BCLR(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCLR_1;
-- BCLR[0]
t_prcs_BCLR_0: PROCESS
BEGIN
LOOP
	BCLR(0) <= '0';
	WAIT FOR 62500 ps;
	BCLR(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCLR_0;
END LW10_arch;
