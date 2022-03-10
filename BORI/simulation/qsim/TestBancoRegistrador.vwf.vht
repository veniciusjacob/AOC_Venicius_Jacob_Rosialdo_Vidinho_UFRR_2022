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
-- Generated on "03/09/2022 15:01:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BancReg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BancReg_vhd_vec_tst IS
END BancReg_vhd_vec_tst;
ARCHITECTURE BancReg_arch OF BancReg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL ReadData1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ReadData2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ReadReg1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ReadReg2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RegWrite : STD_LOGIC;
SIGNAL WriteData : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT BancReg
	PORT (
	Clock : IN STD_LOGIC;
	ReadData1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ReadData2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ReadReg1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ReadReg2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	RegWrite : IN STD_LOGIC;
	WriteData : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BancReg
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	ReadData1 => ReadData1,
	ReadData2 => ReadData2,
	ReadReg1 => ReadReg1,
	ReadReg2 => ReadReg2,
	RegWrite => RegWrite,
	WriteData => WriteData
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

-- RegWrite
t_prcs_RegWrite: PROCESS
BEGIN
LOOP
	RegWrite <= '0';
	WAIT FOR 10000 ps;
	RegWrite <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RegWrite;
-- ReadReg2[1]
t_prcs_ReadReg2_1: PROCESS
BEGIN
LOOP
	ReadReg2(1) <= '0';
	WAIT FOR 20000 ps;
	ReadReg2(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ReadReg2_1;
-- ReadReg2[0]
t_prcs_ReadReg2_0: PROCESS
BEGIN
LOOP
	ReadReg2(0) <= '0';
	WAIT FOR 10000 ps;
	ReadReg2(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ReadReg2_0;
-- ReadReg1[1]
t_prcs_ReadReg1_1: PROCESS
BEGIN
LOOP
	ReadReg1(1) <= '0';
	WAIT FOR 20000 ps;
	ReadReg1(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ReadReg1_1;
-- ReadReg1[0]
t_prcs_ReadReg1_0: PROCESS
BEGIN
LOOP
	ReadReg1(0) <= '0';
	WAIT FOR 10000 ps;
	ReadReg1(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ReadReg1_0;
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
END BancReg_arch;
