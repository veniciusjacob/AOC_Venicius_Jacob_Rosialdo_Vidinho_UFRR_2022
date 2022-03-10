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
-- Generated on "03/06/2022 19:41:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CounterPC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CounterPC_vhd_vec_tst IS
END CounterPC_vhd_vec_tst;
ARCHITECTURE CounterPC_arch OF CounterPC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT CounterPC
	PORT (
	Clock : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CounterPC
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	input => input,
	output => output
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		Clock <= '0';
		WAIT FOR 30000 ps;
		Clock <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	Clock <= '0';
	WAIT FOR 30000 ps;
	Clock <= '1';
WAIT;
END PROCESS t_prcs_Clock;
-- input[7]
t_prcs_input_7: PROCESS
BEGIN
	input(7) <= '0';
WAIT;
END PROCESS t_prcs_input_7;
-- input[6]
t_prcs_input_6: PROCESS
BEGIN
	input(6) <= '0';
WAIT;
END PROCESS t_prcs_input_6;
-- input[5]
t_prcs_input_5: PROCESS
BEGIN
	input(5) <= '0';
	WAIT FOR 960000 ps;
	input(5) <= '1';
WAIT;
END PROCESS t_prcs_input_5;
-- input[4]
t_prcs_input_4: PROCESS
BEGIN
	input(4) <= '0';
	WAIT FOR 480000 ps;
	input(4) <= '1';
	WAIT FOR 480000 ps;
	input(4) <= '0';
WAIT;
END PROCESS t_prcs_input_4;
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		input(3) <= '0';
		WAIT FOR 240000 ps;
		input(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		input(2) <= '0';
		WAIT FOR 120000 ps;
		input(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	input(2) <= '0';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		input(1) <= '0';
		WAIT FOR 60000 ps;
		input(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		input(0) <= '0';
		WAIT FOR 30000 ps;
		input(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	input(0) <= '0';
	WAIT FOR 30000 ps;
	input(0) <= '1';
WAIT;
END PROCESS t_prcs_input_0;
END CounterPC_arch;
