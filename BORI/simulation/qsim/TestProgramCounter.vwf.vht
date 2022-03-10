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
-- Generated on "03/09/2022 16:02:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UniControle
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UniControle_vhd_vec_tst IS
END UniControle_vhd_vec_tst;
ARCHITECTURE UniControle_arch OF UniControle_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUOp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL Branch : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL Jump : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL OpCode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RegWrite : STD_LOGIC;
COMPONENT UniControle
	PORT (
	ALUOp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUSrc : OUT STD_LOGIC;
	Branch : OUT STD_LOGIC;
	Clock : IN STD_LOGIC;
	Jump : OUT STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	MemtoReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	OpCode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RegWrite : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UniControle
	PORT MAP (
-- list connections between master ports and signals
	ALUOp => ALUOp,
	ALUSrc => ALUSrc,
	Branch => Branch,
	Clock => Clock,
	Jump => Jump,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	OpCode => OpCode,
	RegWrite => RegWrite
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		Clock <= '0';
		WAIT FOR 15000 ps;
		Clock <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	Clock <= '0';
WAIT;
END PROCESS t_prcs_Clock;
-- OpCode[3]
t_prcs_OpCode_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		OpCode(3) <= '0';
		WAIT FOR 240000 ps;
		OpCode(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	OpCode(3) <= '0';
WAIT;
END PROCESS t_prcs_OpCode_3;
-- OpCode[2]
t_prcs_OpCode_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		OpCode(2) <= '0';
		WAIT FOR 120000 ps;
		OpCode(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	OpCode(2) <= '0';
WAIT;
END PROCESS t_prcs_OpCode_2;
-- OpCode[1]
t_prcs_OpCode_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		OpCode(1) <= '0';
		WAIT FOR 60000 ps;
		OpCode(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	OpCode(1) <= '0';
WAIT;
END PROCESS t_prcs_OpCode_1;
-- OpCode[0]
t_prcs_OpCode_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		OpCode(0) <= '0';
		WAIT FOR 30000 ps;
		OpCode(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	OpCode(0) <= '0';
	WAIT FOR 30000 ps;
	OpCode(0) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_0;
END UniControle_arch;
