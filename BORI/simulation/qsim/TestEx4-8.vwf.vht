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
-- Generated on "03/09/2022 15:33:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Ext4x8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ext4x8_vhd_vec_tst IS
END Ext4x8_vhd_vec_tst;
ARCHITECTURE Ext4x8_arch OF Ext4x8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL OP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL P : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Ext4x8
	PORT (
	OP : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	P : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ext4x8
	PORT MAP (
-- list connections between master ports and signals
	OP => OP,
	P => P
	);
-- P[3]
t_prcs_P_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		P(3) <= '0';
		WAIT FOR 160000 ps;
		P(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	P(3) <= '0';
WAIT;
END PROCESS t_prcs_P_3;
-- P[2]
t_prcs_P_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		P(2) <= '0';
		WAIT FOR 80000 ps;
		P(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	P(2) <= '0';
WAIT;
END PROCESS t_prcs_P_2;
-- P[1]
t_prcs_P_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		P(1) <= '0';
		WAIT FOR 40000 ps;
		P(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	P(1) <= '0';
WAIT;
END PROCESS t_prcs_P_1;
-- P[0]
t_prcs_P_0: PROCESS
BEGIN
LOOP
	P(0) <= '0';
	WAIT FOR 20000 ps;
	P(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_P_0;
END Ext4x8_arch;
