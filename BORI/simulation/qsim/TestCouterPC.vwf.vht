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
-- Generated on "03/09/2022 15:23:27"
                                                             
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
SIGNAL entrada : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT CounterPC
	PORT (
	Clock : IN STD_LOGIC;
	entrada : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CounterPC
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	entrada => entrada,
	saida => saida
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- entrada[7]
t_prcs_entrada_7: PROCESS
BEGIN
	entrada(7) <= '0';
WAIT;
END PROCESS t_prcs_entrada_7;
-- entrada[6]
t_prcs_entrada_6: PROCESS
BEGIN
	entrada(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_6;
-- entrada[5]
t_prcs_entrada_5: PROCESS
BEGIN
	entrada(5) <= '0';
	WAIT FOR 960000 ps;
	entrada(5) <= '1';
WAIT;
END PROCESS t_prcs_entrada_5;
-- entrada[4]
t_prcs_entrada_4: PROCESS
BEGIN
	entrada(4) <= '0';
	WAIT FOR 480000 ps;
	entrada(4) <= '1';
	WAIT FOR 480000 ps;
	entrada(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_4;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		entrada(3) <= '0';
		WAIT FOR 240000 ps;
		entrada(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	entrada(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		entrada(2) <= '0';
		WAIT FOR 120000 ps;
		entrada(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		entrada(1) <= '0';
		WAIT FOR 60000 ps;
		entrada(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		entrada(0) <= '0';
		WAIT FOR 30000 ps;
		entrada(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	entrada(0) <= '0';
	WAIT FOR 30000 ps;
	entrada(0) <= '1';
WAIT;
END PROCESS t_prcs_entrada_0;
END CounterPC_arch;
