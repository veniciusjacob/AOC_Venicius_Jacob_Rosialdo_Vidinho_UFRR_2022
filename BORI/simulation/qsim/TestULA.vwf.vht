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
-- Generated on "03/09/2022 17:08:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUOp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL input_A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL input_B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output_Result : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Overflow : STD_LOGIC;
SIGNAL Zero : STD_LOGIC;
COMPONENT ALU
	PORT (
	ALUOp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Clock : IN STD_LOGIC;
	input_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	input_B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	output_Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Overflow : OUT STD_LOGIC;
	Zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	ALUOp => ALUOp,
	Clock => Clock,
	input_A => input_A,
	input_B => input_B,
	output_Result => output_Result,
	Overflow => Overflow,
	Zero => Zero
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- ALUOp[2]
t_prcs_ALUOp_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ALUOp(2) <= '0';
		WAIT FOR 40000 ps;
		ALUOp(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ALUOp(2) <= '0';
WAIT;
END PROCESS t_prcs_ALUOp_2;
-- ALUOp[1]
t_prcs_ALUOp_1: PROCESS
BEGIN
LOOP
	ALUOp(1) <= '0';
	WAIT FOR 20000 ps;
	ALUOp(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ALUOp_1;
-- ALUOp[0]
t_prcs_ALUOp_0: PROCESS
BEGIN
LOOP
	ALUOp(0) <= '0';
	WAIT FOR 10000 ps;
	ALUOp(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ALUOp_0;
-- input_A[7]
t_prcs_input_A_7: PROCESS
BEGIN
	input_A(7) <= '0';
WAIT;
END PROCESS t_prcs_input_A_7;
-- input_A[6]
t_prcs_input_A_6: PROCESS
BEGIN
	input_A(6) <= '0';
	WAIT FOR 640000 ps;
	input_A(6) <= '1';
WAIT;
END PROCESS t_prcs_input_A_6;
-- input_A[5]
t_prcs_input_A_5: PROCESS
BEGIN
	input_A(5) <= '0';
	WAIT FOR 320000 ps;
	input_A(5) <= '1';
	WAIT FOR 320000 ps;
	input_A(5) <= '0';
	WAIT FOR 320000 ps;
	input_A(5) <= '1';
WAIT;
END PROCESS t_prcs_input_A_5;
-- input_A[4]
t_prcs_input_A_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		input_A(4) <= '0';
		WAIT FOR 160000 ps;
		input_A(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	input_A(4) <= '0';
WAIT;
END PROCESS t_prcs_input_A_4;
-- input_A[3]
t_prcs_input_A_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		input_A(3) <= '0';
		WAIT FOR 80000 ps;
		input_A(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	input_A(3) <= '0';
WAIT;
END PROCESS t_prcs_input_A_3;
-- input_A[2]
t_prcs_input_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		input_A(2) <= '0';
		WAIT FOR 40000 ps;
		input_A(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	input_A(2) <= '0';
WAIT;
END PROCESS t_prcs_input_A_2;
-- input_A[1]
t_prcs_input_A_1: PROCESS
BEGIN
LOOP
	input_A(1) <= '0';
	WAIT FOR 20000 ps;
	input_A(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_A_1;
-- input_A[0]
t_prcs_input_A_0: PROCESS
BEGIN
LOOP
	input_A(0) <= '0';
	WAIT FOR 10000 ps;
	input_A(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_A_0;
-- input_B[7]
t_prcs_input_B_7: PROCESS
BEGIN
	input_B(7) <= '0';
WAIT;
END PROCESS t_prcs_input_B_7;
-- input_B[6]
t_prcs_input_B_6: PROCESS
BEGIN
	input_B(6) <= '0';
	WAIT FOR 640000 ps;
	input_B(6) <= '1';
WAIT;
END PROCESS t_prcs_input_B_6;
-- input_B[5]
t_prcs_input_B_5: PROCESS
BEGIN
	input_B(5) <= '0';
	WAIT FOR 320000 ps;
	input_B(5) <= '1';
	WAIT FOR 320000 ps;
	input_B(5) <= '0';
	WAIT FOR 320000 ps;
	input_B(5) <= '1';
WAIT;
END PROCESS t_prcs_input_B_5;
-- input_B[4]
t_prcs_input_B_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		input_B(4) <= '0';
		WAIT FOR 160000 ps;
		input_B(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	input_B(4) <= '0';
WAIT;
END PROCESS t_prcs_input_B_4;
-- input_B[3]
t_prcs_input_B_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		input_B(3) <= '0';
		WAIT FOR 80000 ps;
		input_B(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	input_B(3) <= '0';
WAIT;
END PROCESS t_prcs_input_B_3;
-- input_B[2]
t_prcs_input_B_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		input_B(2) <= '0';
		WAIT FOR 40000 ps;
		input_B(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	input_B(2) <= '0';
WAIT;
END PROCESS t_prcs_input_B_2;
-- input_B[1]
t_prcs_input_B_1: PROCESS
BEGIN
LOOP
	input_B(1) <= '0';
	WAIT FOR 20000 ps;
	input_B(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_B_1;
-- input_B[0]
t_prcs_input_B_0: PROCESS
BEGIN
LOOP
	input_B(0) <= '0';
	WAIT FOR 10000 ps;
	input_B(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_B_0;
END ALU_arch;
