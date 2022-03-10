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
-- Generated on "03/06/2022 15:19:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mult2x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mult2x1_vhd_vec_tst IS
END mult2x1_vhd_vec_tst;
ARCHITECTURE mult2x1_arch OF mult2x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL O : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Sel : STD_LOGIC;
COMPONENT mult2x1
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	O : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mult2x1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	O => O,
	Sel => Sel
	);
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
	WAIT FOR 960000 ps;
	A(5) <= '1';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
	WAIT FOR 480000 ps;
	A(4) <= '1';
	WAIT FOR 480000 ps;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		A(3) <= '0';
		WAIT FOR 240000 ps;
		A(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		A(2) <= '0';
		WAIT FOR 120000 ps;
		A(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		A(1) <= '0';
		WAIT FOR 60000 ps;
		A(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		A(0) <= '0';
		WAIT FOR 30000 ps;
		A(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	A(0) <= '0';
	WAIT FOR 30000 ps;
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
	WAIT FOR 960000 ps;
	B(5) <= '1';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
	WAIT FOR 480000 ps;
	B(4) <= '1';
	WAIT FOR 480000 ps;
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B(3) <= '0';
		WAIT FOR 240000 ps;
		B(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		B(2) <= '0';
		WAIT FOR 120000 ps;
		B(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		B(1) <= '0';
		WAIT FOR 60000 ps;
		B(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		B(0) <= '0';
		WAIT FOR 30000 ps;
		B(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	B(0) <= '0';
	WAIT FOR 30000 ps;
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		Sel <= '0';
		WAIT FOR 30000 ps;
		Sel <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	Sel <= '0';
	WAIT FOR 30000 ps;
	Sel <= '1';
WAIT;
END PROCESS t_prcs_Sel;
END mult2x1_arch;
