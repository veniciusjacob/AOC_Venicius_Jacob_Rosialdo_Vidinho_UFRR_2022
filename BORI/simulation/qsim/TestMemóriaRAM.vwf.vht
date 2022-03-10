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
-- Generated on "03/09/2022 15:43:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MRam
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MRam_vhd_vec_tst IS
END MRam_vhd_vec_tst;
ARCHITECTURE MRam_arch OF MRam_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL ReadData : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL WriteData : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT MRam
	PORT (
	Address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Clock : IN STD_LOGIC;
	MemRead : IN STD_LOGIC;
	MemWrite : IN STD_LOGIC;
	ReadData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	WriteData : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MRam
	PORT MAP (
-- list connections between master ports and signals
	Address => Address,
	Clock => Clock,
	MemRead => MemRead,
	MemWrite => MemWrite,
	ReadData => ReadData,
	WriteData => WriteData
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

-- MemWrite
t_prcs_MemWrite: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		MemWrite <= '0';
		WAIT FOR 30000 ps;
		MemWrite <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	MemWrite <= '0';
	WAIT FOR 30000 ps;
	MemWrite <= '1';
WAIT;
END PROCESS t_prcs_MemWrite;

-- MemRead
t_prcs_MemRead: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		MemRead <= '0';
		WAIT FOR 30000 ps;
		MemRead <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	MemRead <= '0';
	WAIT FOR 30000 ps;
	MemRead <= '1';
WAIT;
END PROCESS t_prcs_MemRead;
-- Address[7]
t_prcs_Address_7: PROCESS
BEGIN
	Address(7) <= '0';
WAIT;
END PROCESS t_prcs_Address_7;
-- Address[6]
t_prcs_Address_6: PROCESS
BEGIN
	Address(6) <= '0';
	WAIT FOR 640000 ps;
	Address(6) <= '1';
WAIT;
END PROCESS t_prcs_Address_6;
-- Address[5]
t_prcs_Address_5: PROCESS
BEGIN
	Address(5) <= '0';
	WAIT FOR 320000 ps;
	Address(5) <= '1';
	WAIT FOR 320000 ps;
	Address(5) <= '0';
	WAIT FOR 320000 ps;
	Address(5) <= '1';
WAIT;
END PROCESS t_prcs_Address_5;
-- Address[4]
t_prcs_Address_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Address(4) <= '0';
		WAIT FOR 160000 ps;
		Address(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Address(4) <= '0';
WAIT;
END PROCESS t_prcs_Address_4;
-- Address[3]
t_prcs_Address_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Address(3) <= '0';
		WAIT FOR 80000 ps;
		Address(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Address(3) <= '0';
WAIT;
END PROCESS t_prcs_Address_3;
-- Address[2]
t_prcs_Address_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Address(2) <= '0';
		WAIT FOR 40000 ps;
		Address(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Address(2) <= '0';
WAIT;
END PROCESS t_prcs_Address_2;
-- Address[1]
t_prcs_Address_1: PROCESS
BEGIN
LOOP
	Address(1) <= '0';
	WAIT FOR 20000 ps;
	Address(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Address_1;
-- Address[0]
t_prcs_Address_0: PROCESS
BEGIN
LOOP
	Address(0) <= '0';
	WAIT FOR 10000 ps;
	Address(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Address_0;
-- WriteData[7]
t_prcs_WriteData_7: PROCESS
BEGIN
	WriteData(7) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_7;
-- WriteData[6]
t_prcs_WriteData_6: PROCESS
BEGIN
	WriteData(6) <= '0';
	WAIT FOR 640000 ps;
	WriteData(6) <= '1';
WAIT;
END PROCESS t_prcs_WriteData_6;
-- WriteData[5]
t_prcs_WriteData_5: PROCESS
BEGIN
	WriteData(5) <= '0';
	WAIT FOR 320000 ps;
	WriteData(5) <= '1';
	WAIT FOR 320000 ps;
	WriteData(5) <= '0';
	WAIT FOR 320000 ps;
	WriteData(5) <= '1';
WAIT;
END PROCESS t_prcs_WriteData_5;
-- WriteData[4]
t_prcs_WriteData_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		WriteData(4) <= '0';
		WAIT FOR 160000 ps;
		WriteData(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	WriteData(4) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_4;
-- WriteData[3]
t_prcs_WriteData_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		WriteData(3) <= '0';
		WAIT FOR 80000 ps;
		WriteData(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	WriteData(3) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_3;
-- WriteData[2]
t_prcs_WriteData_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		WriteData(2) <= '0';
		WAIT FOR 40000 ps;
		WriteData(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	WriteData(2) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_2;
-- WriteData[1]
t_prcs_WriteData_1: PROCESS
BEGIN
LOOP
	WriteData(1) <= '0';
	WAIT FOR 20000 ps;
	WriteData(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_WriteData_1;
-- WriteData[0]
t_prcs_WriteData_0: PROCESS
BEGIN
LOOP
	WriteData(0) <= '0';
	WAIT FOR 10000 ps;
	WriteData(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_WriteData_0;
END MRam_arch;
