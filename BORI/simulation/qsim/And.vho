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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/09/2022 20:10:23"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	Clock : IN std_logic;
	out_out_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_rom : BUFFER std_logic_vector(7 DOWNTO 0);
	out_opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rs : BUFFER std_logic_vector(1 DOWNTO 0);
	out_rt : BUFFER std_logic_vector(1 DOWNTO 0);
	out_endereco : BUFFER std_logic_vector(3 DOWNTO 0);
	out_out_br_reg_A : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_br_reg_B : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_alu_result : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_overflow : BUFFER std_logic;
	out_out_memoria_ram : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_mul_2to1_ram_alu : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Main;

ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_out_out_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_rom : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_rt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_out_br_reg_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_br_reg_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_alu_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_overflow : std_logic;
SIGNAL ww_out_out_memoria_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_mul_2to1_ram_alu : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_out_pc[0]~output_o\ : std_logic;
SIGNAL \out_out_pc[1]~output_o\ : std_logic;
SIGNAL \out_out_pc[2]~output_o\ : std_logic;
SIGNAL \out_out_pc[3]~output_o\ : std_logic;
SIGNAL \out_out_pc[4]~output_o\ : std_logic;
SIGNAL \out_out_pc[5]~output_o\ : std_logic;
SIGNAL \out_out_pc[6]~output_o\ : std_logic;
SIGNAL \out_out_pc[7]~output_o\ : std_logic;
SIGNAL \out_out_rom[0]~output_o\ : std_logic;
SIGNAL \out_out_rom[1]~output_o\ : std_logic;
SIGNAL \out_out_rom[2]~output_o\ : std_logic;
SIGNAL \out_out_rom[3]~output_o\ : std_logic;
SIGNAL \out_out_rom[4]~output_o\ : std_logic;
SIGNAL \out_out_rom[5]~output_o\ : std_logic;
SIGNAL \out_out_rom[6]~output_o\ : std_logic;
SIGNAL \out_out_rom[7]~output_o\ : std_logic;
SIGNAL \out_opcode[0]~output_o\ : std_logic;
SIGNAL \out_opcode[1]~output_o\ : std_logic;
SIGNAL \out_opcode[2]~output_o\ : std_logic;
SIGNAL \out_opcode[3]~output_o\ : std_logic;
SIGNAL \out_rs[0]~output_o\ : std_logic;
SIGNAL \out_rs[1]~output_o\ : std_logic;
SIGNAL \out_rt[0]~output_o\ : std_logic;
SIGNAL \out_rt[1]~output_o\ : std_logic;
SIGNAL \out_endereco[0]~output_o\ : std_logic;
SIGNAL \out_endereco[1]~output_o\ : std_logic;
SIGNAL \out_endereco[2]~output_o\ : std_logic;
SIGNAL \out_endereco[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[0]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[1]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[2]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[4]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[5]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[6]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[7]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[0]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[1]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[2]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[4]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[5]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[6]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[7]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[0]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[1]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[2]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[3]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[4]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[5]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[6]~output_o\ : std_logic;
SIGNAL \out_out_alu_result[7]~output_o\ : std_logic;
SIGNAL \out_out_overflow~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[0]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[1]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[2]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[3]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[4]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[5]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[6]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[7]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[0]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[1]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[2]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[3]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[4]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[5]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[6]~output_o\ : std_logic;
SIGNAL \out_out_mul_2to1_ram_alu[7]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~18\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~22\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~26\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~2\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~6\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux0~1_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux7~1_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux7~2_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~61_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~19_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~62_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~27_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~43_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~63_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~35_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~52_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~34_cout\ : std_logic;
SIGNAL \port_map_alu|Add1~1_sumout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_alu|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux11~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux11~2_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~84_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~12_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~85_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~20_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~86_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~28_q\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~87_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~36_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~76_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[0]~0_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~60_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~11_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~44_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~21_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~29_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~37_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~54_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux6~2_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~20_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~28_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~36_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~53_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~2\ : std_logic;
SIGNAL \port_map_alu|Add1~5_sumout\ : std_logic;
SIGNAL \port_map_alu|Add0~2\ : std_logic;
SIGNAL \port_map_alu|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux10~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux10~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~13_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~21_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~29_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~37_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~77_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[1]~1_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~12_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~45_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~6\ : std_logic;
SIGNAL \port_map_alu|Add1~9_sumout\ : std_logic;
SIGNAL \port_map_alu|Add0~6\ : std_logic;
SIGNAL \port_map_alu|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux9~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux9~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~14_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~22_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~30_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~38_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~78_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[2]~2_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~13_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~46_combout\ : std_logic;
SIGNAL \port_map_alu|Equal0~0_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~22_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~30_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~38_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~55_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~10\ : std_logic;
SIGNAL \port_map_alu|Add1~13_sumout\ : std_logic;
SIGNAL \port_map_alu|Add0~10\ : std_logic;
SIGNAL \port_map_alu|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux8~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~15_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~23_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~31_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~39_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~79_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[3]~3_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~14_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~47_combout\ : std_logic;
SIGNAL \port_map_alu|Equal0~1_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~23_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~31_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~39_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~56_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~14\ : std_logic;
SIGNAL \port_map_alu|Add1~17_sumout\ : std_logic;
SIGNAL \port_map_alu|Add0~14\ : std_logic;
SIGNAL \port_map_alu|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux7~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~16_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~24_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~32_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~40_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~80_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[4]~4_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~15_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~48_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~24_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~32_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~40_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~57_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~18\ : std_logic;
SIGNAL \port_map_alu|Add1~21_sumout\ : std_logic;
SIGNAL \port_map_alu|Add0~18\ : std_logic;
SIGNAL \port_map_alu|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux6~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~17_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~25_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~33_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~41_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~81_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[5]~5_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~16_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~49_combout\ : std_logic;
SIGNAL \port_map_alu|Equal0~2_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~25_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~33_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~41_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~58_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~22\ : std_logic;
SIGNAL \port_map_alu|Add1~25_sumout\ : std_logic;
SIGNAL \port_map_alu|Add0~22\ : std_logic;
SIGNAL \port_map_alu|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux5~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~18_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~26_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~34_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~42_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~82_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[6]~6_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~17_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~50_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~26_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~34_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~42_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~59_combout\ : std_logic;
SIGNAL \port_map_alu|Add1~26\ : std_logic;
SIGNAL \port_map_alu|Add1~29_sumout\ : std_logic;
SIGNAL \port_map_alu|Add0~26\ : std_logic;
SIGNAL \port_map_alu|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_alu|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux4~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~19_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~27_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~35_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~43_q\ : std_logic;
SIGNAL \port_map_memoria_ram|M_Ram~83_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_ram_alu|O[7]~7_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~18_q\ : std_logic;
SIGNAL \port_map_banco_registradores|Reg~51_combout\ : std_logic;
SIGNAL \port_map_alu|Equal0~3_combout\ : std_logic;
SIGNAL \port_map_alu|Equal0~4_combout\ : std_logic;
SIGNAL \port_map_alu|Mux2~1_combout\ : std_logic;
SIGNAL \port_map_alu|in_TempZero~combout\ : std_logic;
SIGNAL \port_map_alu|Mux1~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_alu|Zero~combout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[2]~8_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux1~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux1~1_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[7]~3_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux2~2_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux2~1_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[6]~2_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux3~2_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux3~1_combout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[5]~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[1]~12_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux4~1_combout\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~10\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[3]~4_combout\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~14\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[4]~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|Mux0~2_combout\ : std_logic;
SIGNAL \port_map_somador_pc|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_mul_2to1_jump|O[0]~16_combout\ : std_logic;
SIGNAL \port_map_alu|Mux11~1_combout\ : std_logic;
SIGNAL \port_map_alu|Mux10~1_combout\ : std_logic;
SIGNAL \port_map_alu|Mux9~1_combout\ : std_logic;
SIGNAL \port_map_alu|Mux8~1_combout\ : std_logic;
SIGNAL \port_map_alu|Mux7~1_combout\ : std_logic;
SIGNAL \port_map_alu|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_alu|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_alu|Mux4~1_combout\ : std_logic;
SIGNAL \port_map_alu|temp_overflow_sub~0_combout\ : std_logic;
SIGNAL \port_map_alu|Add0~30\ : std_logic;
SIGNAL \port_map_alu|Add0~33_sumout\ : std_logic;
SIGNAL \port_map_alu|Add1~30\ : std_logic;
SIGNAL \port_map_alu|Add1~37_sumout\ : std_logic;
SIGNAL \port_map_alu|temp_overflow_adder~0_combout\ : std_logic;
SIGNAL \port_map_alu|Mux12~0_combout\ : std_logic;
SIGNAL \port_map_alu|Overflow~combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[0]~0_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[1]~1_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[2]~2_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[3]~3_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[4]~4_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[5]~5_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[6]~6_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ReadData[7]~7_combout\ : std_logic;
SIGNAL \port_map_pc|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_alu|ALT_INV_in_TempZero~combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Zero~combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Overflow~combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_temp_overflow_adder~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_temp_overflow_sub~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~83_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~82_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~81_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~80_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~79_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~78_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~77_combout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~76_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~59_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~58_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~57_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~56_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~55_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~54_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~53_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~52_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~51_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~42_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~34_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~26_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~18_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~50_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~41_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~33_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~25_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~17_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~49_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~40_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~32_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~24_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~16_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~48_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~39_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~31_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~23_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~15_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~47_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~38_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~30_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~22_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~14_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~46_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~37_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~29_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~21_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~13_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~45_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~36_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~28_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~20_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~12_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~44_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~35_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~27_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~19_q\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~11_q\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \port_map_banco_registradores|ALT_INV_Reg~43_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \port_map_memoria_rom|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_alu|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_somador_pc|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~43_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~35_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~27_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~19_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~42_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~34_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~26_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~18_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~41_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~33_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~25_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~17_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~40_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~32_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~24_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~16_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~39_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~31_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~23_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~15_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~38_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~30_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~22_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~14_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~37_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~29_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~21_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~13_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~36_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~28_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~20_q\ : std_logic;
SIGNAL \port_map_memoria_ram|ALT_INV_M_Ram~12_q\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_alu|ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

ww_Clock <= Clock;
out_out_pc <= ww_out_out_pc;
out_out_rom <= ww_out_out_rom;
out_opcode <= ww_out_opcode;
out_rs <= ww_out_rs;
out_rt <= ww_out_rt;
out_endereco <= ww_out_endereco;
out_out_br_reg_A <= ww_out_out_br_reg_A;
out_out_br_reg_B <= ww_out_out_br_reg_B;
out_out_alu_result <= ww_out_out_alu_result;
out_out_overflow <= ww_out_out_overflow;
out_out_memoria_ram <= ww_out_out_memoria_ram;
out_out_mul_2to1_ram_alu <= ww_out_out_mul_2to1_ram_alu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\port_map_alu|ALT_INV_in_TempZero~combout\ <= NOT \port_map_alu|in_TempZero~combout\;
\port_map_alu|ALT_INV_Zero~combout\ <= NOT \port_map_alu|Zero~combout\;
\port_map_alu|ALT_INV_Overflow~combout\ <= NOT \port_map_alu|Overflow~combout\;
\port_map_memoria_rom|ALT_INV_Mux2~2_combout\ <= NOT \port_map_memoria_rom|Mux2~2_combout\;
\port_map_memoria_rom|ALT_INV_Mux3~2_combout\ <= NOT \port_map_memoria_rom|Mux3~2_combout\;
\port_map_alu|ALT_INV_Mux2~1_combout\ <= NOT \port_map_alu|Mux2~1_combout\;
\port_map_alu|ALT_INV_Equal0~4_combout\ <= NOT \port_map_alu|Equal0~4_combout\;
\port_map_alu|ALT_INV_Equal0~3_combout\ <= NOT \port_map_alu|Equal0~3_combout\;
\port_map_alu|ALT_INV_Equal0~2_combout\ <= NOT \port_map_alu|Equal0~2_combout\;
\port_map_alu|ALT_INV_Equal0~1_combout\ <= NOT \port_map_alu|Equal0~1_combout\;
\port_map_alu|ALT_INV_Equal0~0_combout\ <= NOT \port_map_alu|Equal0~0_combout\;
\port_map_alu|ALT_INV_Mux0~0_combout\ <= NOT \port_map_alu|Mux0~0_combout\;
\port_map_alu|ALT_INV_Mux1~0_combout\ <= NOT \port_map_alu|Mux1~0_combout\;
\port_map_unidade_controle|ALT_INV_Mux6~0_combout\ <= NOT \port_map_unidade_controle|Mux6~0_combout\;
\port_map_alu|ALT_INV_temp_overflow_adder~0_combout\ <= NOT \port_map_alu|temp_overflow_adder~0_combout\;
\port_map_alu|ALT_INV_temp_overflow_sub~0_combout\ <= NOT \port_map_alu|temp_overflow_sub~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux6~2_combout\ <= NOT \port_map_memoria_rom|Mux6~2_combout\;
\port_map_memoria_rom|ALT_INV_Mux7~2_combout\ <= NOT \port_map_memoria_rom|Mux7~2_combout\;
\port_map_unidade_controle|ALT_INV_Mux8~0_combout\ <= NOT \port_map_unidade_controle|Mux8~0_combout\;
\port_map_alu|ALT_INV_Mux4~2_combout\ <= NOT \port_map_alu|Mux4~2_combout\;
\port_map_alu|ALT_INV_Mux5~2_combout\ <= NOT \port_map_alu|Mux5~2_combout\;
\port_map_alu|ALT_INV_Mux6~2_combout\ <= NOT \port_map_alu|Mux6~2_combout\;
\port_map_alu|ALT_INV_Mux7~2_combout\ <= NOT \port_map_alu|Mux7~2_combout\;
\port_map_alu|ALT_INV_Mux8~2_combout\ <= NOT \port_map_alu|Mux8~2_combout\;
\port_map_alu|ALT_INV_Mux9~2_combout\ <= NOT \port_map_alu|Mux9~2_combout\;
\port_map_alu|ALT_INV_Mux10~2_combout\ <= NOT \port_map_alu|Mux10~2_combout\;
\port_map_alu|ALT_INV_Mux11~2_combout\ <= NOT \port_map_alu|Mux11~2_combout\;
\port_map_alu|ALT_INV_Mux2~0_combout\ <= NOT \port_map_alu|Mux2~0_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~83_combout\ <= NOT \port_map_memoria_ram|M_Ram~83_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~82_combout\ <= NOT \port_map_memoria_ram|M_Ram~82_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~81_combout\ <= NOT \port_map_memoria_ram|M_Ram~81_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~80_combout\ <= NOT \port_map_memoria_ram|M_Ram~80_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~79_combout\ <= NOT \port_map_memoria_ram|M_Ram~79_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~78_combout\ <= NOT \port_map_memoria_ram|M_Ram~78_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~77_combout\ <= NOT \port_map_memoria_ram|M_Ram~77_combout\;
\port_map_memoria_ram|ALT_INV_M_Ram~76_combout\ <= NOT \port_map_memoria_ram|M_Ram~76_combout\;
\port_map_unidade_controle|ALT_INV_Mux2~0_combout\ <= NOT \port_map_unidade_controle|Mux2~0_combout\;
\port_map_alu|ALT_INV_Mux4~0_combout\ <= NOT \port_map_alu|Mux4~0_combout\;
\port_map_alu|ALT_INV_Mux5~0_combout\ <= NOT \port_map_alu|Mux5~0_combout\;
\port_map_alu|ALT_INV_Mux6~0_combout\ <= NOT \port_map_alu|Mux6~0_combout\;
\port_map_alu|ALT_INV_Mux7~0_combout\ <= NOT \port_map_alu|Mux7~0_combout\;
\port_map_alu|ALT_INV_Mux8~0_combout\ <= NOT \port_map_alu|Mux8~0_combout\;
\port_map_alu|ALT_INV_Mux9~0_combout\ <= NOT \port_map_alu|Mux9~0_combout\;
\port_map_alu|ALT_INV_Mux10~0_combout\ <= NOT \port_map_alu|Mux10~0_combout\;
\port_map_alu|ALT_INV_Mux11~0_combout\ <= NOT \port_map_alu|Mux11~0_combout\;
\port_map_unidade_controle|ALT_INV_Mux7~0_combout\ <= NOT \port_map_unidade_controle|Mux7~0_combout\;
\port_map_unidade_controle|ALT_INV_Mux5~0_combout\ <= NOT \port_map_unidade_controle|Mux5~0_combout\;
\port_map_unidade_controle|ALT_INV_Mux4~0_combout\ <= NOT \port_map_unidade_controle|Mux4~0_combout\;
\port_map_banco_registradores|ALT_INV_Reg~59_combout\ <= NOT \port_map_banco_registradores|Reg~59_combout\;
\port_map_banco_registradores|ALT_INV_Reg~58_combout\ <= NOT \port_map_banco_registradores|Reg~58_combout\;
\port_map_banco_registradores|ALT_INV_Reg~57_combout\ <= NOT \port_map_banco_registradores|Reg~57_combout\;
\port_map_banco_registradores|ALT_INV_Reg~56_combout\ <= NOT \port_map_banco_registradores|Reg~56_combout\;
\port_map_banco_registradores|ALT_INV_Reg~55_combout\ <= NOT \port_map_banco_registradores|Reg~55_combout\;
\port_map_banco_registradores|ALT_INV_Reg~54_combout\ <= NOT \port_map_banco_registradores|Reg~54_combout\;
\port_map_banco_registradores|ALT_INV_Reg~53_combout\ <= NOT \port_map_banco_registradores|Reg~53_combout\;
\port_map_banco_registradores|ALT_INV_Reg~52_combout\ <= NOT \port_map_banco_registradores|Reg~52_combout\;
\port_map_banco_registradores|ALT_INV_Reg~51_combout\ <= NOT \port_map_banco_registradores|Reg~51_combout\;
\port_map_banco_registradores|ALT_INV_Reg~42_q\ <= NOT \port_map_banco_registradores|Reg~42_q\;
\port_map_banco_registradores|ALT_INV_Reg~34_q\ <= NOT \port_map_banco_registradores|Reg~34_q\;
\port_map_banco_registradores|ALT_INV_Reg~26_q\ <= NOT \port_map_banco_registradores|Reg~26_q\;
\port_map_banco_registradores|ALT_INV_Reg~18_q\ <= NOT \port_map_banco_registradores|Reg~18_q\;
\port_map_banco_registradores|ALT_INV_Reg~50_combout\ <= NOT \port_map_banco_registradores|Reg~50_combout\;
\port_map_banco_registradores|ALT_INV_Reg~41_q\ <= NOT \port_map_banco_registradores|Reg~41_q\;
\port_map_banco_registradores|ALT_INV_Reg~33_q\ <= NOT \port_map_banco_registradores|Reg~33_q\;
\port_map_banco_registradores|ALT_INV_Reg~25_q\ <= NOT \port_map_banco_registradores|Reg~25_q\;
\port_map_banco_registradores|ALT_INV_Reg~17_q\ <= NOT \port_map_banco_registradores|Reg~17_q\;
\port_map_banco_registradores|ALT_INV_Reg~49_combout\ <= NOT \port_map_banco_registradores|Reg~49_combout\;
\port_map_banco_registradores|ALT_INV_Reg~40_q\ <= NOT \port_map_banco_registradores|Reg~40_q\;
\port_map_banco_registradores|ALT_INV_Reg~32_q\ <= NOT \port_map_banco_registradores|Reg~32_q\;
\port_map_banco_registradores|ALT_INV_Reg~24_q\ <= NOT \port_map_banco_registradores|Reg~24_q\;
\port_map_banco_registradores|ALT_INV_Reg~16_q\ <= NOT \port_map_banco_registradores|Reg~16_q\;
\port_map_banco_registradores|ALT_INV_Reg~48_combout\ <= NOT \port_map_banco_registradores|Reg~48_combout\;
\port_map_banco_registradores|ALT_INV_Reg~39_q\ <= NOT \port_map_banco_registradores|Reg~39_q\;
\port_map_banco_registradores|ALT_INV_Reg~31_q\ <= NOT \port_map_banco_registradores|Reg~31_q\;
\port_map_banco_registradores|ALT_INV_Reg~23_q\ <= NOT \port_map_banco_registradores|Reg~23_q\;
\port_map_banco_registradores|ALT_INV_Reg~15_q\ <= NOT \port_map_banco_registradores|Reg~15_q\;
\port_map_banco_registradores|ALT_INV_Reg~47_combout\ <= NOT \port_map_banco_registradores|Reg~47_combout\;
\port_map_banco_registradores|ALT_INV_Reg~38_q\ <= NOT \port_map_banco_registradores|Reg~38_q\;
\port_map_banco_registradores|ALT_INV_Reg~30_q\ <= NOT \port_map_banco_registradores|Reg~30_q\;
\port_map_banco_registradores|ALT_INV_Reg~22_q\ <= NOT \port_map_banco_registradores|Reg~22_q\;
\port_map_banco_registradores|ALT_INV_Reg~14_q\ <= NOT \port_map_banco_registradores|Reg~14_q\;
\port_map_banco_registradores|ALT_INV_Reg~46_combout\ <= NOT \port_map_banco_registradores|Reg~46_combout\;
\port_map_banco_registradores|ALT_INV_Reg~37_q\ <= NOT \port_map_banco_registradores|Reg~37_q\;
\port_map_banco_registradores|ALT_INV_Reg~29_q\ <= NOT \port_map_banco_registradores|Reg~29_q\;
\port_map_banco_registradores|ALT_INV_Reg~21_q\ <= NOT \port_map_banco_registradores|Reg~21_q\;
\port_map_banco_registradores|ALT_INV_Reg~13_q\ <= NOT \port_map_banco_registradores|Reg~13_q\;
\port_map_banco_registradores|ALT_INV_Reg~45_combout\ <= NOT \port_map_banco_registradores|Reg~45_combout\;
\port_map_banco_registradores|ALT_INV_Reg~36_q\ <= NOT \port_map_banco_registradores|Reg~36_q\;
\port_map_banco_registradores|ALT_INV_Reg~28_q\ <= NOT \port_map_banco_registradores|Reg~28_q\;
\port_map_banco_registradores|ALT_INV_Reg~20_q\ <= NOT \port_map_banco_registradores|Reg~20_q\;
\port_map_banco_registradores|ALT_INV_Reg~12_q\ <= NOT \port_map_banco_registradores|Reg~12_q\;
\port_map_banco_registradores|ALT_INV_Reg~44_combout\ <= NOT \port_map_banco_registradores|Reg~44_combout\;
\port_map_banco_registradores|ALT_INV_Reg~35_q\ <= NOT \port_map_banco_registradores|Reg~35_q\;
\port_map_banco_registradores|ALT_INV_Reg~27_q\ <= NOT \port_map_banco_registradores|Reg~27_q\;
\port_map_banco_registradores|ALT_INV_Reg~19_q\ <= NOT \port_map_banco_registradores|Reg~19_q\;
\port_map_banco_registradores|ALT_INV_Reg~11_q\ <= NOT \port_map_banco_registradores|Reg~11_q\;
\port_map_memoria_rom|ALT_INV_Mux0~2_combout\ <= NOT \port_map_memoria_rom|Mux0~2_combout\;
\port_map_memoria_rom|ALT_INV_Mux0~1_combout\ <= NOT \port_map_memoria_rom|Mux0~1_combout\;
\port_map_memoria_rom|ALT_INV_Mux1~1_combout\ <= NOT \port_map_memoria_rom|Mux1~1_combout\;
\port_map_memoria_rom|ALT_INV_Mux1~0_combout\ <= NOT \port_map_memoria_rom|Mux1~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux2~1_combout\ <= NOT \port_map_memoria_rom|Mux2~1_combout\;
\port_map_memoria_rom|ALT_INV_Mux2~0_combout\ <= NOT \port_map_memoria_rom|Mux2~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux3~1_combout\ <= NOT \port_map_memoria_rom|Mux3~1_combout\;
\port_map_memoria_rom|ALT_INV_Mux3~0_combout\ <= NOT \port_map_memoria_rom|Mux3~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux4~1_combout\ <= NOT \port_map_memoria_rom|Mux4~1_combout\;
\port_map_banco_registradores|ALT_INV_Reg~43_combout\ <= NOT \port_map_banco_registradores|Reg~43_combout\;
\port_map_memoria_rom|ALT_INV_Mux4~0_combout\ <= NOT \port_map_memoria_rom|Mux4~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux5~1_combout\ <= NOT \port_map_memoria_rom|Mux5~1_combout\;
\port_map_memoria_rom|ALT_INV_Mux0~0_combout\ <= NOT \port_map_memoria_rom|Mux0~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux5~0_combout\ <= NOT \port_map_memoria_rom|Mux5~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux6~1_combout\ <= NOT \port_map_memoria_rom|Mux6~1_combout\;
\port_map_memoria_rom|ALT_INV_Mux6~0_combout\ <= NOT \port_map_memoria_rom|Mux6~0_combout\;
\port_map_memoria_rom|ALT_INV_Mux7~1_combout\ <= NOT \port_map_memoria_rom|Mux7~1_combout\;
\port_map_memoria_rom|ALT_INV_Mux7~0_combout\ <= NOT \port_map_memoria_rom|Mux7~0_combout\;
\port_map_pc|ALT_INV_saida\(7) <= NOT \port_map_pc|saida\(7);
\port_map_pc|ALT_INV_saida\(6) <= NOT \port_map_pc|saida\(6);
\port_map_pc|ALT_INV_saida\(5) <= NOT \port_map_pc|saida\(5);
\port_map_pc|ALT_INV_saida\(4) <= NOT \port_map_pc|saida\(4);
\port_map_pc|ALT_INV_saida\(3) <= NOT \port_map_pc|saida\(3);
\port_map_pc|ALT_INV_saida\(2) <= NOT \port_map_pc|saida\(2);
\port_map_pc|ALT_INV_saida\(1) <= NOT \port_map_pc|saida\(1);
\port_map_pc|ALT_INV_saida\(0) <= NOT \port_map_pc|saida\(0);
\port_map_alu|ALT_INV_Mux12~0_combout\ <= NOT \port_map_alu|Mux12~0_combout\;
\port_map_alu|ALT_INV_Add0~33_sumout\ <= NOT \port_map_alu|Add0~33_sumout\;
\port_map_alu|ALT_INV_Add1~37_sumout\ <= NOT \port_map_alu|Add1~37_sumout\;
\port_map_somador_pc|ALT_INV_Add0~29_sumout\ <= NOT \port_map_somador_pc|Add0~29_sumout\;
\port_map_somador_pc|ALT_INV_Add0~25_sumout\ <= NOT \port_map_somador_pc|Add0~25_sumout\;
\port_map_somador_pc|ALT_INV_Add0~21_sumout\ <= NOT \port_map_somador_pc|Add0~21_sumout\;
\port_map_somador_pc|ALT_INV_Add0~17_sumout\ <= NOT \port_map_somador_pc|Add0~17_sumout\;
\port_map_somador_pc|ALT_INV_Add0~13_sumout\ <= NOT \port_map_somador_pc|Add0~13_sumout\;
\port_map_somador_pc|ALT_INV_Add0~9_sumout\ <= NOT \port_map_somador_pc|Add0~9_sumout\;
\port_map_somador_pc|ALT_INV_Add0~5_sumout\ <= NOT \port_map_somador_pc|Add0~5_sumout\;
\port_map_somador_pc|ALT_INV_Add0~1_sumout\ <= NOT \port_map_somador_pc|Add0~1_sumout\;
\port_map_memoria_ram|ALT_INV_M_Ram~43_q\ <= NOT \port_map_memoria_ram|M_Ram~43_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~35_q\ <= NOT \port_map_memoria_ram|M_Ram~35_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~27_q\ <= NOT \port_map_memoria_ram|M_Ram~27_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~19_q\ <= NOT \port_map_memoria_ram|M_Ram~19_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~42_q\ <= NOT \port_map_memoria_ram|M_Ram~42_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~34_q\ <= NOT \port_map_memoria_ram|M_Ram~34_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~26_q\ <= NOT \port_map_memoria_ram|M_Ram~26_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~18_q\ <= NOT \port_map_memoria_ram|M_Ram~18_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~41_q\ <= NOT \port_map_memoria_ram|M_Ram~41_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~33_q\ <= NOT \port_map_memoria_ram|M_Ram~33_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~25_q\ <= NOT \port_map_memoria_ram|M_Ram~25_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~17_q\ <= NOT \port_map_memoria_ram|M_Ram~17_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~40_q\ <= NOT \port_map_memoria_ram|M_Ram~40_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~32_q\ <= NOT \port_map_memoria_ram|M_Ram~32_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~24_q\ <= NOT \port_map_memoria_ram|M_Ram~24_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~16_q\ <= NOT \port_map_memoria_ram|M_Ram~16_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~39_q\ <= NOT \port_map_memoria_ram|M_Ram~39_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~31_q\ <= NOT \port_map_memoria_ram|M_Ram~31_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~23_q\ <= NOT \port_map_memoria_ram|M_Ram~23_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~15_q\ <= NOT \port_map_memoria_ram|M_Ram~15_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~38_q\ <= NOT \port_map_memoria_ram|M_Ram~38_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~30_q\ <= NOT \port_map_memoria_ram|M_Ram~30_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~22_q\ <= NOT \port_map_memoria_ram|M_Ram~22_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~14_q\ <= NOT \port_map_memoria_ram|M_Ram~14_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~37_q\ <= NOT \port_map_memoria_ram|M_Ram~37_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~29_q\ <= NOT \port_map_memoria_ram|M_Ram~29_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~21_q\ <= NOT \port_map_memoria_ram|M_Ram~21_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~13_q\ <= NOT \port_map_memoria_ram|M_Ram~13_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~36_q\ <= NOT \port_map_memoria_ram|M_Ram~36_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~28_q\ <= NOT \port_map_memoria_ram|M_Ram~28_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~20_q\ <= NOT \port_map_memoria_ram|M_Ram~20_q\;
\port_map_memoria_ram|ALT_INV_M_Ram~12_q\ <= NOT \port_map_memoria_ram|M_Ram~12_q\;
\port_map_alu|ALT_INV_Add0~29_sumout\ <= NOT \port_map_alu|Add0~29_sumout\;
\port_map_alu|ALT_INV_Add1~29_sumout\ <= NOT \port_map_alu|Add1~29_sumout\;
\port_map_alu|ALT_INV_Add0~25_sumout\ <= NOT \port_map_alu|Add0~25_sumout\;
\port_map_alu|ALT_INV_Add1~25_sumout\ <= NOT \port_map_alu|Add1~25_sumout\;
\port_map_alu|ALT_INV_Add0~21_sumout\ <= NOT \port_map_alu|Add0~21_sumout\;
\port_map_alu|ALT_INV_Add1~21_sumout\ <= NOT \port_map_alu|Add1~21_sumout\;
\port_map_alu|ALT_INV_Add0~17_sumout\ <= NOT \port_map_alu|Add0~17_sumout\;
\port_map_alu|ALT_INV_Add1~17_sumout\ <= NOT \port_map_alu|Add1~17_sumout\;
\port_map_alu|ALT_INV_Add0~13_sumout\ <= NOT \port_map_alu|Add0~13_sumout\;
\port_map_alu|ALT_INV_Add1~13_sumout\ <= NOT \port_map_alu|Add1~13_sumout\;
\port_map_alu|ALT_INV_Add0~9_sumout\ <= NOT \port_map_alu|Add0~9_sumout\;
\port_map_alu|ALT_INV_Add1~9_sumout\ <= NOT \port_map_alu|Add1~9_sumout\;
\port_map_alu|ALT_INV_Add0~5_sumout\ <= NOT \port_map_alu|Add0~5_sumout\;
\port_map_alu|ALT_INV_Add1~5_sumout\ <= NOT \port_map_alu|Add1~5_sumout\;
\port_map_alu|ALT_INV_Add0~1_sumout\ <= NOT \port_map_alu|Add0~1_sumout\;
\port_map_alu|ALT_INV_Add1~1_sumout\ <= NOT \port_map_alu|Add1~1_sumout\;

\out_out_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(0),
	devoe => ww_devoe,
	o => \out_out_pc[0]~output_o\);

\out_out_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(1),
	devoe => ww_devoe,
	o => \out_out_pc[1]~output_o\);

\out_out_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(2),
	devoe => ww_devoe,
	o => \out_out_pc[2]~output_o\);

\out_out_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(3),
	devoe => ww_devoe,
	o => \out_out_pc[3]~output_o\);

\out_out_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(4),
	devoe => ww_devoe,
	o => \out_out_pc[4]~output_o\);

\out_out_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(5),
	devoe => ww_devoe,
	o => \out_out_pc[5]~output_o\);

\out_out_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(6),
	devoe => ww_devoe,
	o => \out_out_pc[6]~output_o\);

\out_out_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|saida\(7),
	devoe => ww_devoe,
	o => \out_out_pc[7]~output_o\);

\out_out_rom[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[0]~output_o\);

\out_out_rom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[1]~output_o\);

\out_out_rom[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[2]~output_o\);

\out_out_rom[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[3]~output_o\);

\out_out_rom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[4]~output_o\);

\out_out_rom[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[5]~output_o\);

\out_out_rom[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[6]~output_o\);

\out_out_rom[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[7]~output_o\);

\out_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \out_opcode[0]~output_o\);

\out_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \out_opcode[1]~output_o\);

\out_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \out_opcode[2]~output_o\);

\out_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \out_opcode[3]~output_o\);

\out_rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_rs[0]~output_o\);

\out_rs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_rs[1]~output_o\);

\out_rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	devoe => ww_devoe,
	o => \out_rt[0]~output_o\);

\out_rt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_rt[1]~output_o\);

\out_endereco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[0]~output_o\);

\out_endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[1]~output_o\);

\out_endereco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[2]~output_o\);

\out_endereco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[3]~output_o\);

\out_out_br_reg_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~44_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[0]~output_o\);

\out_out_br_reg_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~45_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[1]~output_o\);

\out_out_br_reg_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~46_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[2]~output_o\);

\out_out_br_reg_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~47_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[3]~output_o\);

\out_out_br_reg_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~48_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[4]~output_o\);

\out_out_br_reg_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~49_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[5]~output_o\);

\out_out_br_reg_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~50_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[6]~output_o\);

\out_out_br_reg_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~51_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[7]~output_o\);

\out_out_br_reg_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~52_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[0]~output_o\);

\out_out_br_reg_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~53_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[1]~output_o\);

\out_out_br_reg_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~54_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[2]~output_o\);

\out_out_br_reg_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~55_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[3]~output_o\);

\out_out_br_reg_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~56_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[4]~output_o\);

\out_out_br_reg_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~57_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[5]~output_o\);

\out_out_br_reg_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~58_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[6]~output_o\);

\out_out_br_reg_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_registradores|Reg~59_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[7]~output_o\);

\out_out_alu_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[0]~output_o\);

\out_out_alu_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[1]~output_o\);

\out_out_alu_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[2]~output_o\);

\out_out_alu_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[3]~output_o\);

\out_out_alu_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[4]~output_o\);

\out_out_alu_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[5]~output_o\);

\out_out_alu_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[6]~output_o\);

\out_out_alu_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_out_alu_result[7]~output_o\);

\out_out_overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_alu|Overflow~combout\,
	devoe => ww_devoe,
	o => \out_out_overflow~output_o\);

\out_out_memoria_ram[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[0]~output_o\);

\out_out_memoria_ram[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[1]~output_o\);

\out_out_memoria_ram[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[2]~output_o\);

\out_out_memoria_ram[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[3]~output_o\);

\out_out_memoria_ram[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[4]~output_o\);

\out_out_memoria_ram[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[5]~output_o\);

\out_out_memoria_ram[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[6]~output_o\);

\out_out_memoria_ram[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoria_ram|ReadData[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[7]~output_o\);

\out_out_mul_2to1_ram_alu[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[0]~output_o\);

\out_out_mul_2to1_ram_alu[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[1]~output_o\);

\out_out_mul_2to1_ram_alu[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[2]~output_o\);

\out_out_mul_2to1_ram_alu[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[3]~output_o\);

\out_out_mul_2to1_ram_alu[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[4]~output_o\);

\out_out_mul_2to1_ram_alu[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[5]~output_o\);

\out_out_mul_2to1_ram_alu[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[6]~output_o\);

\out_out_mul_2to1_ram_alu[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mul_2to1_ram_alu|O[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2to1_ram_alu[7]~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\port_map_somador_pc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~17_sumout\ = SUM(( \port_map_pc|saida\(4) ) + ( GND ) + ( \port_map_somador_pc|Add0~14\ ))
-- \port_map_somador_pc|Add0~18\ = CARRY(( \port_map_pc|saida\(4) ) + ( GND ) + ( \port_map_somador_pc|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(4),
	cin => \port_map_somador_pc|Add0~14\,
	sumout => \port_map_somador_pc|Add0~17_sumout\,
	cout => \port_map_somador_pc|Add0~18\);

\port_map_somador_pc|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~21_sumout\ = SUM(( \port_map_pc|saida\(5) ) + ( GND ) + ( \port_map_somador_pc|Add0~18\ ))
-- \port_map_somador_pc|Add0~22\ = CARRY(( \port_map_pc|saida\(5) ) + ( GND ) + ( \port_map_somador_pc|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(5),
	cin => \port_map_somador_pc|Add0~18\,
	sumout => \port_map_somador_pc|Add0~21_sumout\,
	cout => \port_map_somador_pc|Add0~22\);

\port_map_somador_pc|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~25_sumout\ = SUM(( \port_map_pc|saida\(6) ) + ( GND ) + ( \port_map_somador_pc|Add0~22\ ))
-- \port_map_somador_pc|Add0~26\ = CARRY(( \port_map_pc|saida\(6) ) + ( GND ) + ( \port_map_somador_pc|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(6),
	cin => \port_map_somador_pc|Add0~22\,
	sumout => \port_map_somador_pc|Add0~25_sumout\,
	cout => \port_map_somador_pc|Add0~26\);

\port_map_somador_pc|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~29_sumout\ = SUM(( \port_map_pc|saida\(7) ) + ( GND ) + ( \port_map_somador_pc|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(7),
	cin => \port_map_somador_pc|Add0~26\,
	sumout => \port_map_somador_pc|Add0~29_sumout\);

\port_map_memoria_rom|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux5~0_combout\ = (!\port_map_pc|saida\(0) & (((!\port_map_pc|saida\(3))))) # (\port_map_pc|saida\(0) & ((!\port_map_pc|saida\(2) & (!\port_map_pc|saida\(1) & \port_map_pc|saida\(3))) # (\port_map_pc|saida\(2) & 
-- ((!\port_map_pc|saida\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111101000000101011110100000010101111010000001010111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	datad => \port_map_pc|ALT_INV_saida\(3),
	combout => \port_map_memoria_rom|Mux5~0_combout\);

\port_map_memoria_rom|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux0~0_combout\ = (!\port_map_pc|saida\(4) & (!\port_map_pc|saida\(5) & (!\port_map_pc|saida\(6) & !\port_map_pc|saida\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_pc|ALT_INV_saida\(7),
	combout => \port_map_memoria_rom|Mux0~0_combout\);

\port_map_memoria_rom|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux5~1_combout\ = (\port_map_memoria_rom|Mux5~0_combout\ & \port_map_memoria_rom|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux5~0_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux0~0_combout\,
	combout => \port_map_memoria_rom|Mux5~1_combout\);

\port_map_somador_pc|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~1_sumout\ = SUM(( \port_map_pc|saida\(0) ) + ( VCC ) + ( !VCC ))
-- \port_map_somador_pc|Add0~2\ = CARRY(( \port_map_pc|saida\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(0),
	cin => GND,
	sumout => \port_map_somador_pc|Add0~1_sumout\,
	cout => \port_map_somador_pc|Add0~2\);

\port_map_somador_pc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~5_sumout\ = SUM(( \port_map_pc|saida\(1) ) + ( GND ) + ( \port_map_somador_pc|Add0~2\ ))
-- \port_map_somador_pc|Add0~6\ = CARRY(( \port_map_pc|saida\(1) ) + ( GND ) + ( \port_map_somador_pc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(1),
	cin => \port_map_somador_pc|Add0~2\,
	sumout => \port_map_somador_pc|Add0~5_sumout\,
	cout => \port_map_somador_pc|Add0~6\);

\port_map_somador_pc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~9_sumout\ = SUM(( \port_map_pc|saida\(2) ) + ( GND ) + ( \port_map_somador_pc|Add0~6\ ))
-- \port_map_somador_pc|Add0~10\ = CARRY(( \port_map_pc|saida\(2) ) + ( GND ) + ( \port_map_somador_pc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(2),
	cin => \port_map_somador_pc|Add0~6\,
	sumout => \port_map_somador_pc|Add0~9_sumout\,
	cout => \port_map_somador_pc|Add0~10\);

\port_map_memoria_rom|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux3~0_combout\ = (!\port_map_pc|saida\(3) & ((!\port_map_pc|saida\(1) & ((\port_map_pc|saida\(2)))) # (\port_map_pc|saida\(1) & (!\port_map_pc|saida\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000000000001011100000000000101110000000000010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	datad => \port_map_pc|ALT_INV_saida\(3),
	combout => \port_map_memoria_rom|Mux3~0_combout\);

\port_map_memoria_rom|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux2~0_combout\ = (!\port_map_pc|saida\(3) & ((!\port_map_pc|saida\(1) & ((\port_map_pc|saida\(2)))) # (\port_map_pc|saida\(1) & (\port_map_pc|saida\(0) & !\port_map_pc|saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000000000000111000000000000011100000000000001110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	datad => \port_map_pc|ALT_INV_saida\(3),
	combout => \port_map_memoria_rom|Mux2~0_combout\);

\port_map_memoria_rom|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux0~1_combout\ = (!\port_map_pc|saida\(2) & (!\port_map_pc|saida\(1) & ((!\port_map_pc|saida\(0)) # (!\port_map_pc|saida\(3))))) # (\port_map_pc|saida\(2) & (((!\port_map_pc|saida\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111110000000110011111000000011001111100000001100111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	datad => \port_map_pc|ALT_INV_saida\(3),
	combout => \port_map_memoria_rom|Mux0~1_combout\);

\port_map_unidade_controle|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux5~0_combout\ = ( \port_map_memoria_rom|Mux0~1_combout\ & ( (\port_map_memoria_rom|Mux0~0_combout\ & ((!\port_map_memoria_rom|Mux3~0_combout\ & ((\port_map_memoria_rom|Mux1~0_combout\) # 
-- (\port_map_memoria_rom|Mux2~0_combout\))) # (\port_map_memoria_rom|Mux3~0_combout\ & (\port_map_memoria_rom|Mux2~0_combout\ & \port_map_memoria_rom|Mux1~0_combout\)))) ) ) # ( !\port_map_memoria_rom|Mux0~1_combout\ & ( 
-- (\port_map_memoria_rom|Mux0~0_combout\ & (\port_map_memoria_rom|Mux3~0_combout\ & \port_map_memoria_rom|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000001000100010100000000000100010000010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~0_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux3~0_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux2~0_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~0_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux0~1_combout\,
	combout => \port_map_unidade_controle|Mux5~0_combout\);

\port_map_memoria_rom|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux7~0_combout\ = (!\port_map_pc|saida\(1) & (!\port_map_pc|saida\(2) & ((!\port_map_pc|saida\(0)) # (\port_map_pc|saida\(3))))) # (\port_map_pc|saida\(1) & (\port_map_pc|saida\(0) & ((!\port_map_pc|saida\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000111000000100100011100000010010001110000001001000111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	datad => \port_map_pc|ALT_INV_saida\(3),
	combout => \port_map_memoria_rom|Mux7~0_combout\);

\port_map_memoria_rom|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux7~1_combout\ = ( \port_map_memoria_rom|Mux7~0_combout\ & ( (!\port_map_pc|saida\(4) & (!\port_map_pc|saida\(5) & (!\port_map_pc|saida\(6) & !\port_map_pc|saida\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_pc|ALT_INV_saida\(7),
	datae => \port_map_memoria_rom|ALT_INV_Mux7~0_combout\,
	combout => \port_map_memoria_rom|Mux7~1_combout\);

\port_map_unidade_controle|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux7~0_combout\ = ( \port_map_memoria_rom|Mux0~1_combout\ & ( (\port_map_memoria_rom|Mux0~0_combout\ & (!\port_map_memoria_rom|Mux1~0_combout\ & ((!\port_map_memoria_rom|Mux3~0_combout\) # 
-- (\port_map_memoria_rom|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010000000000000000000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~0_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux3~0_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux2~0_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~0_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux0~1_combout\,
	combout => \port_map_unidade_controle|Mux7~0_combout\);

\port_map_memoria_rom|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux7~2_combout\ = (((!\port_map_memoria_rom|Mux7~0_combout\) # (\port_map_pc|saida\(6))) # (\port_map_pc|saida\(5))) # (\port_map_pc|saida\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_memoria_rom|ALT_INV_Mux7~0_combout\,
	combout => \port_map_memoria_rom|Mux7~2_combout\);

\port_map_unidade_controle|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux8~0_combout\ = (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_memoria_rom|Mux3~1_combout\) # ((\port_map_memoria_rom|Mux1~1_combout\) # (\port_map_memoria_rom|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100000000101111110000000010111111000000001011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	combout => \port_map_unidade_controle|Mux8~0_combout\);

\port_map_banco_registradores|Reg~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~61_combout\ = (!\port_map_memoria_rom|Mux5~1_combout\ & (\port_map_memoria_rom|Mux4~1_combout\ & \port_map_unidade_controle|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux8~0_combout\,
	combout => \port_map_banco_registradores|Reg~61_combout\);

\port_map_banco_registradores|Reg~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[0]~0_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~19_q\);

\port_map_banco_registradores|Reg~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~62_combout\ = (\port_map_memoria_rom|Mux5~1_combout\ & (!\port_map_memoria_rom|Mux4~1_combout\ & \port_map_unidade_controle|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux8~0_combout\,
	combout => \port_map_banco_registradores|Reg~62_combout\);

\port_map_banco_registradores|Reg~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[0]~0_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~27_q\);

\port_map_banco_registradores|Reg~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~43_combout\ = (!\port_map_pc|saida\(5) & (!\port_map_pc|saida\(6) & !\port_map_pc|saida\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(5),
	datab => \port_map_pc|ALT_INV_saida\(6),
	datac => \port_map_pc|ALT_INV_saida\(7),
	combout => \port_map_banco_registradores|Reg~43_combout\);

\port_map_banco_registradores|Reg~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~63_combout\ = ( \port_map_unidade_controle|Mux8~0_combout\ & ( (!\port_map_banco_registradores|Reg~43_combout\) # ((!\port_map_memoria_rom|Mux4~0_combout\ & ((!\port_map_memoria_rom|Mux5~0_combout\) # 
-- (\port_map_pc|saida\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101000000000000000000001111111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_memoria_rom|ALT_INV_Mux5~0_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux4~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~43_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux8~0_combout\,
	combout => \port_map_banco_registradores|Reg~63_combout\);

\port_map_banco_registradores|Reg~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[0]~0_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~35_q\);

\port_map_banco_registradores|Reg~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~52_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~11_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~19_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~27_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~11_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~19_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~27_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~35_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~52_combout\);

\port_map_alu|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_alu|Add1~34_cout\);

\port_map_alu|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~1_sumout\ = SUM(( \port_map_banco_registradores|Reg~44_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((!\port_map_banco_registradores|Reg~52_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (!\port_map_pc|saida\(7) & (!\port_map_memoria_rom|Mux7~2_combout\))) ) + ( \port_map_alu|Add1~34_cout\ ))
-- \port_map_alu|Add1~2\ = CARRY(( \port_map_banco_registradores|Reg~44_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((!\port_map_banco_registradores|Reg~52_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (!\port_map_pc|saida\(7) & (!\port_map_memoria_rom|Mux7~2_combout\))) ) + ( \port_map_alu|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_pc|ALT_INV_saida\(7),
	datac => \port_map_memoria_rom|ALT_INV_Mux7~2_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~44_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~52_combout\,
	cin => \port_map_alu|Add1~34_cout\,
	sumout => \port_map_alu|Add1~1_sumout\,
	cout => \port_map_alu|Add1~2\);

\port_map_unidade_controle|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux4~0_combout\ = ( \port_map_memoria_rom|Mux0~1_combout\ & ( (\port_map_memoria_rom|Mux0~0_combout\ & ((!\port_map_memoria_rom|Mux3~0_combout\ & (\port_map_memoria_rom|Mux2~0_combout\ & \port_map_memoria_rom|Mux1~0_combout\)) # 
-- (\port_map_memoria_rom|Mux3~0_combout\ & ((\port_map_memoria_rom|Mux1~0_combout\) # (\port_map_memoria_rom|Mux2~0_combout\))))) ) ) # ( !\port_map_memoria_rom|Mux0~1_combout\ & ( (\port_map_memoria_rom|Mux0~0_combout\ & 
-- (\port_map_memoria_rom|Mux2~0_combout\ & \port_map_memoria_rom|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000010001010100000000000001010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~0_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux3~0_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux2~0_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~0_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux0~1_combout\,
	combout => \port_map_unidade_controle|Mux4~0_combout\);

\port_map_alu|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux2~0_combout\ = (!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_unidade_controle|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux2~0_combout\);

\port_map_alu|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~1_sumout\ = SUM(( \port_map_banco_registradores|Reg~44_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((\port_map_banco_registradores|Reg~52_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (((\port_map_memoria_rom|Mux7~2_combout\)) # (\port_map_pc|saida\(7)))) ) + ( !VCC ))
-- \port_map_alu|Add0~2\ = CARRY(( \port_map_banco_registradores|Reg~44_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((\port_map_banco_registradores|Reg~52_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (((\port_map_memoria_rom|Mux7~2_combout\)) # (\port_map_pc|saida\(7)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_pc|ALT_INV_saida\(7),
	datac => \port_map_memoria_rom|ALT_INV_Mux7~2_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~44_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~52_combout\,
	cin => GND,
	sumout => \port_map_alu|Add0~1_sumout\,
	cout => \port_map_alu|Add0~2\);

\port_map_alu|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux11~0_combout\ = ( \port_map_unidade_controle|Mux4~0_combout\ & ( \port_map_unidade_controle|Mux5~0_combout\ & ( \port_map_banco_registradores|Reg~44_combout\ ) ) ) # ( !\port_map_unidade_controle|Mux4~0_combout\ & ( 
-- \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_banco_registradores|Reg~52_combout\))) # (\port_map_unidade_controle|Mux7~0_combout\ & (!\port_map_memoria_rom|Mux7~1_combout\)) ) ) ) # ( 
-- !\port_map_unidade_controle|Mux4~0_combout\ & ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_banco_registradores|Reg~52_combout\))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (!\port_map_memoria_rom|Mux7~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000000000000000000001111101010100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~44_combout\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~52_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	dataf => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux11~0_combout\);

\port_map_alu|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux11~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~1_sumout\))) # (\port_map_alu|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~1_sumout\,
	datad => \port_map_alu|ALT_INV_Mux11~0_combout\,
	combout => \port_map_alu|Mux11~2_combout\);

\port_map_unidade_controle|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux2~0_combout\ = (!\port_map_memoria_rom|Mux3~1_combout\ & (!\port_map_memoria_rom|Mux2~1_combout\ & (!\port_map_memoria_rom|Mux1~1_combout\ & !\port_map_memoria_rom|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	combout => \port_map_unidade_controle|Mux2~0_combout\);

\port_map_unidade_controle|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux6~0_combout\ = (\port_map_memoria_rom|Mux3~1_combout\ & (!\port_map_memoria_rom|Mux2~1_combout\ & (!\port_map_memoria_rom|Mux1~1_combout\ & !\port_map_memoria_rom|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	combout => \port_map_unidade_controle|Mux6~0_combout\);

\port_map_memoria_ram|M_Ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~84_combout\ = (!\port_map_memoria_rom|Mux7~2_combout\ & (\port_map_memoria_rom|Mux6~1_combout\ & \port_map_unidade_controle|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux7~2_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux6~0_combout\,
	combout => \port_map_memoria_ram|M_Ram~84_combout\);

\port_map_memoria_ram|M_Ram~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~1_sumout\,
	asdata => \port_map_alu|Mux11~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~12_q\);

\port_map_memoria_ram|M_Ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~85_combout\ = (!\port_map_memoria_rom|Mux7~1_combout\ & (\port_map_memoria_rom|Mux6~1_combout\ & \port_map_unidade_controle|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux6~0_combout\,
	combout => \port_map_memoria_ram|M_Ram~85_combout\);

\port_map_memoria_ram|M_Ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~1_sumout\,
	asdata => \port_map_alu|Mux11~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~20_q\);

\port_map_memoria_ram|M_Ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~86_combout\ = (\port_map_memoria_rom|Mux7~1_combout\ & (!\port_map_memoria_rom|Mux6~1_combout\ & \port_map_unidade_controle|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux6~0_combout\,
	combout => \port_map_memoria_ram|M_Ram~86_combout\);

\port_map_memoria_ram|M_Ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~1_sumout\,
	asdata => \port_map_alu|Mux11~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~28_q\);

\port_map_memoria_rom|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux6~0_combout\ = (!\port_map_pc|saida\(1) & (((!\port_map_pc|saida\(2) & \port_map_pc|saida\(3))))) # (\port_map_pc|saida\(1) & (!\port_map_pc|saida\(3) & ((!\port_map_pc|saida\(0)) # (\port_map_pc|saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111000000001000111100000000100011110000000010001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	datad => \port_map_pc|ALT_INV_saida\(3),
	combout => \port_map_memoria_rom|Mux6~0_combout\);

\port_map_memoria_ram|M_Ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~87_combout\ = (\port_map_unidade_controle|Mux6~0_combout\ & ((!\port_map_memoria_rom|Mux0~0_combout\) # ((!\port_map_memoria_rom|Mux7~0_combout\ & !\port_map_memoria_rom|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000000000001111100000000000111110000000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux7~0_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux6~0_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux0~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux6~0_combout\,
	combout => \port_map_memoria_ram|M_Ram~87_combout\);

\port_map_memoria_ram|M_Ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~1_sumout\,
	asdata => \port_map_alu|Mux11~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~36_q\);

\port_map_memoria_ram|M_Ram~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~76_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~12_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~20_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~28_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~12_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~20_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~28_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~36_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~76_combout\);

\port_map_mul_2to1_ram_alu|O[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[0]~0_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~76_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~76_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~1_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux11~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~76_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~1_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux11~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010000000000000000000100000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Add1~1_sumout\,
	datac => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datad => \port_map_alu|ALT_INV_Mux11~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~76_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[0]~0_combout\);

\port_map_banco_registradores|Reg~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~60_combout\ = (\port_map_memoria_rom|Mux5~1_combout\ & (\port_map_memoria_rom|Mux4~0_combout\ & \port_map_unidade_controle|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux8~0_combout\,
	combout => \port_map_banco_registradores|Reg~60_combout\);

\port_map_banco_registradores|Reg~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[0]~0_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~11_q\);

\port_map_banco_registradores|Reg~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~44_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~11_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~19_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~27_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~11_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~19_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~27_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~35_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~44_combout\);

\port_map_banco_registradores|Reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[2]~2_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~21_q\);

\port_map_banco_registradores|Reg~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[2]~2_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~29_q\);

\port_map_banco_registradores|Reg~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[2]~2_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~37_q\);

\port_map_banco_registradores|Reg~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~54_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~13_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~21_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~29_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~13_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~21_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~29_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~37_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~54_combout\);

\port_map_memoria_rom|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux6~2_combout\ = (((!\port_map_memoria_rom|Mux6~0_combout\) # (\port_map_pc|saida\(6))) # (\port_map_pc|saida\(5))) # (\port_map_pc|saida\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_memoria_rom|ALT_INV_Mux6~0_combout\,
	combout => \port_map_memoria_rom|Mux6~2_combout\);

\port_map_banco_registradores|Reg~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[1]~1_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~20_q\);

\port_map_banco_registradores|Reg~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[1]~1_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~28_q\);

\port_map_banco_registradores|Reg~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[1]~1_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~36_q\);

\port_map_banco_registradores|Reg~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~53_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~12_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~20_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~28_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~12_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~20_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~28_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~36_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~53_combout\);

\port_map_alu|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~5_sumout\ = SUM(( \port_map_banco_registradores|Reg~45_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((!\port_map_banco_registradores|Reg~53_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (!\port_map_pc|saida\(7) & (!\port_map_memoria_rom|Mux6~2_combout\))) ) + ( \port_map_alu|Add1~2\ ))
-- \port_map_alu|Add1~6\ = CARRY(( \port_map_banco_registradores|Reg~45_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((!\port_map_banco_registradores|Reg~53_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (!\port_map_pc|saida\(7) & (!\port_map_memoria_rom|Mux6~2_combout\))) ) + ( \port_map_alu|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_pc|ALT_INV_saida\(7),
	datac => \port_map_memoria_rom|ALT_INV_Mux6~2_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~45_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~53_combout\,
	cin => \port_map_alu|Add1~2\,
	sumout => \port_map_alu|Add1~5_sumout\,
	cout => \port_map_alu|Add1~6\);

\port_map_alu|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~5_sumout\ = SUM(( \port_map_banco_registradores|Reg~45_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((\port_map_banco_registradores|Reg~53_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (((\port_map_memoria_rom|Mux6~2_combout\)) # (\port_map_pc|saida\(7)))) ) + ( \port_map_alu|Add0~2\ ))
-- \port_map_alu|Add0~6\ = CARRY(( \port_map_banco_registradores|Reg~45_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & (((\port_map_banco_registradores|Reg~53_combout\)))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (((\port_map_memoria_rom|Mux6~2_combout\)) # (\port_map_pc|saida\(7)))) ) + ( \port_map_alu|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_pc|ALT_INV_saida\(7),
	datac => \port_map_memoria_rom|ALT_INV_Mux6~2_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~45_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~53_combout\,
	cin => \port_map_alu|Add0~2\,
	sumout => \port_map_alu|Add0~5_sumout\,
	cout => \port_map_alu|Add0~6\);

\port_map_alu|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux10~0_combout\ = ( \port_map_unidade_controle|Mux4~0_combout\ & ( \port_map_unidade_controle|Mux5~0_combout\ & ( \port_map_banco_registradores|Reg~45_combout\ ) ) ) # ( !\port_map_unidade_controle|Mux4~0_combout\ & ( 
-- \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_banco_registradores|Reg~53_combout\))) # (\port_map_unidade_controle|Mux7~0_combout\ & (!\port_map_memoria_rom|Mux6~1_combout\)) ) ) ) # ( 
-- !\port_map_unidade_controle|Mux4~0_combout\ & ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_banco_registradores|Reg~53_combout\))) # (\port_map_unidade_controle|Mux7~0_combout\ & 
-- (!\port_map_memoria_rom|Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000000000000000000001111101010100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~45_combout\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~53_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	dataf => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux10~0_combout\);

\port_map_alu|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux10~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~5_sumout\))) # (\port_map_alu|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~5_sumout\,
	datad => \port_map_alu|ALT_INV_Mux10~0_combout\,
	combout => \port_map_alu|Mux10~2_combout\);

\port_map_memoria_ram|M_Ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~5_sumout\,
	asdata => \port_map_alu|Mux10~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~13_q\);

\port_map_memoria_ram|M_Ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~5_sumout\,
	asdata => \port_map_alu|Mux10~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~21_q\);

\port_map_memoria_ram|M_Ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~5_sumout\,
	asdata => \port_map_alu|Mux10~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~29_q\);

\port_map_memoria_ram|M_Ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~5_sumout\,
	asdata => \port_map_alu|Mux10~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~37_q\);

\port_map_memoria_ram|M_Ram~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~77_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~13_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~21_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~29_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~13_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~21_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~29_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~37_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~77_combout\);

\port_map_mul_2to1_ram_alu|O[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[1]~1_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~77_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~77_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~5_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux10~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~77_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~5_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux10~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datac => \port_map_alu|ALT_INV_Add1~5_sumout\,
	datad => \port_map_alu|ALT_INV_Mux10~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~77_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[1]~1_combout\);

\port_map_banco_registradores|Reg~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[1]~1_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~12_q\);

\port_map_banco_registradores|Reg~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~45_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~12_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~20_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~28_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~12_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~20_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~28_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~36_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~45_combout\);

\port_map_alu|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~9_sumout\ = SUM(( \port_map_banco_registradores|Reg~46_combout\ ) + ( (!\port_map_banco_registradores|Reg~54_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~6\ ))
-- \port_map_alu|Add1~10\ = CARRY(( \port_map_banco_registradores|Reg~46_combout\ ) + ( (!\port_map_banco_registradores|Reg~54_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~46_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~54_combout\,
	cin => \port_map_alu|Add1~6\,
	sumout => \port_map_alu|Add1~9_sumout\,
	cout => \port_map_alu|Add1~10\);

\port_map_alu|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~9_sumout\ = SUM(( \port_map_banco_registradores|Reg~46_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~54_combout\) ) + ( \port_map_alu|Add0~6\ ))
-- \port_map_alu|Add0~10\ = CARRY(( \port_map_banco_registradores|Reg~46_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~54_combout\) ) + ( \port_map_alu|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~46_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~54_combout\,
	cin => \port_map_alu|Add0~6\,
	sumout => \port_map_alu|Add0~9_sumout\,
	cout => \port_map_alu|Add0~10\);

\port_map_alu|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux9~0_combout\ = ( \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux4~0_combout\ & (((\port_map_banco_registradores|Reg~54_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # 
-- (\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_banco_registradores|Reg~46_combout\)) ) ) # ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (\port_map_banco_registradores|Reg~54_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- !\port_map_unidade_controle|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000101010100110000000000000011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~46_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~54_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux9~0_combout\);

\port_map_alu|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux9~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~9_sumout\))) # (\port_map_alu|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~9_sumout\,
	datad => \port_map_alu|ALT_INV_Mux9~0_combout\,
	combout => \port_map_alu|Mux9~2_combout\);

\port_map_memoria_ram|M_Ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~9_sumout\,
	asdata => \port_map_alu|Mux9~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~14_q\);

\port_map_memoria_ram|M_Ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~9_sumout\,
	asdata => \port_map_alu|Mux9~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~22_q\);

\port_map_memoria_ram|M_Ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~9_sumout\,
	asdata => \port_map_alu|Mux9~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~30_q\);

\port_map_memoria_ram|M_Ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~9_sumout\,
	asdata => \port_map_alu|Mux9~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~38_q\);

\port_map_memoria_ram|M_Ram~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~78_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~14_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~22_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~30_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~14_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~22_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~30_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~38_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~78_combout\);

\port_map_mul_2to1_ram_alu|O[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[2]~2_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~78_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~78_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~9_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux9~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~78_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~9_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux9~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datac => \port_map_alu|ALT_INV_Add1~9_sumout\,
	datad => \port_map_alu|ALT_INV_Mux9~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~78_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[2]~2_combout\);

\port_map_banco_registradores|Reg~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[2]~2_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~13_q\);

\port_map_banco_registradores|Reg~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~46_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~13_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~21_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~29_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~13_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~21_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~29_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~37_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~46_combout\);

\port_map_alu|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Equal0~0_combout\ = ( \port_map_banco_registradores|Reg~54_combout\ & ( \port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~46_combout\ & (!\port_map_memoria_rom|Mux7~1_combout\ $ 
-- (!\port_map_banco_registradores|Reg~44_combout\))) ) ) ) # ( !\port_map_banco_registradores|Reg~54_combout\ & ( \port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~46_combout\ & (!\port_map_memoria_rom|Mux7~1_combout\ $ 
-- (!\port_map_banco_registradores|Reg~44_combout\))) ) ) ) # ( \port_map_banco_registradores|Reg~54_combout\ & ( !\port_map_unidade_controle|Mux7~0_combout\ & ( (\port_map_banco_registradores|Reg~46_combout\ & (!\port_map_banco_registradores|Reg~44_combout\ 
-- $ (\port_map_banco_registradores|Reg~52_combout\))) ) ) ) # ( !\port_map_banco_registradores|Reg~54_combout\ & ( !\port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~46_combout\ & 
-- (!\port_map_banco_registradores|Reg~44_combout\ $ (\port_map_banco_registradores|Reg~52_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000000011000000001101100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~44_combout\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~46_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~52_combout\,
	datae => \port_map_banco_registradores|ALT_INV_Reg~54_combout\,
	dataf => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_alu|Equal0~0_combout\);

\port_map_banco_registradores|Reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[3]~3_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~22_q\);

\port_map_banco_registradores|Reg~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[3]~3_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~30_q\);

\port_map_banco_registradores|Reg~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[3]~3_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~38_q\);

\port_map_banco_registradores|Reg~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~55_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~14_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~22_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~30_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~14_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~22_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~30_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~38_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~55_combout\);

\port_map_alu|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~13_sumout\ = SUM(( \port_map_banco_registradores|Reg~47_combout\ ) + ( (!\port_map_banco_registradores|Reg~55_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~10\ ))
-- \port_map_alu|Add1~14\ = CARRY(( \port_map_banco_registradores|Reg~47_combout\ ) + ( (!\port_map_banco_registradores|Reg~55_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~47_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~55_combout\,
	cin => \port_map_alu|Add1~10\,
	sumout => \port_map_alu|Add1~13_sumout\,
	cout => \port_map_alu|Add1~14\);

\port_map_alu|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~13_sumout\ = SUM(( \port_map_banco_registradores|Reg~47_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~55_combout\) ) + ( \port_map_alu|Add0~10\ ))
-- \port_map_alu|Add0~14\ = CARRY(( \port_map_banco_registradores|Reg~47_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~55_combout\) ) + ( \port_map_alu|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~47_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~55_combout\,
	cin => \port_map_alu|Add0~10\,
	sumout => \port_map_alu|Add0~13_sumout\,
	cout => \port_map_alu|Add0~14\);

\port_map_alu|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux8~0_combout\ = ( \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux4~0_combout\ & (((\port_map_banco_registradores|Reg~55_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # 
-- (\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_banco_registradores|Reg~47_combout\)) ) ) # ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (\port_map_banco_registradores|Reg~55_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- !\port_map_unidade_controle|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000101010100110000000000000011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~47_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~55_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux8~0_combout\);

\port_map_alu|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux8~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~13_sumout\))) # (\port_map_alu|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~13_sumout\,
	datad => \port_map_alu|ALT_INV_Mux8~0_combout\,
	combout => \port_map_alu|Mux8~2_combout\);

\port_map_memoria_ram|M_Ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~13_sumout\,
	asdata => \port_map_alu|Mux8~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~15_q\);

\port_map_memoria_ram|M_Ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~13_sumout\,
	asdata => \port_map_alu|Mux8~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~23_q\);

\port_map_memoria_ram|M_Ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~13_sumout\,
	asdata => \port_map_alu|Mux8~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~31_q\);

\port_map_memoria_ram|M_Ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~13_sumout\,
	asdata => \port_map_alu|Mux8~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~39_q\);

\port_map_memoria_ram|M_Ram~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~79_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~15_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~23_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~31_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~15_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~23_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~31_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~39_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~79_combout\);

\port_map_mul_2to1_ram_alu|O[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[3]~3_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~79_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~79_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~13_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux8~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~79_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~13_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux8~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datac => \port_map_alu|ALT_INV_Add1~13_sumout\,
	datad => \port_map_alu|ALT_INV_Mux8~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~79_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[3]~3_combout\);

\port_map_banco_registradores|Reg~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[3]~3_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~14_q\);

\port_map_banco_registradores|Reg~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~47_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~14_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~22_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~30_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~14_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~22_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~30_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~38_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~47_combout\);

\port_map_alu|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Equal0~1_combout\ = ( \port_map_banco_registradores|Reg~55_combout\ & ( \port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~47_combout\ & (!\port_map_memoria_rom|Mux6~1_combout\ $ 
-- (!\port_map_banco_registradores|Reg~45_combout\))) ) ) ) # ( !\port_map_banco_registradores|Reg~55_combout\ & ( \port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~47_combout\ & (!\port_map_memoria_rom|Mux6~1_combout\ $ 
-- (!\port_map_banco_registradores|Reg~45_combout\))) ) ) ) # ( \port_map_banco_registradores|Reg~55_combout\ & ( !\port_map_unidade_controle|Mux7~0_combout\ & ( (\port_map_banco_registradores|Reg~47_combout\ & (!\port_map_banco_registradores|Reg~45_combout\ 
-- $ (\port_map_banco_registradores|Reg~53_combout\))) ) ) ) # ( !\port_map_banco_registradores|Reg~55_combout\ & ( !\port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~47_combout\ & 
-- (!\port_map_banco_registradores|Reg~45_combout\ $ (\port_map_banco_registradores|Reg~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000000011000000001101100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~45_combout\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~47_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~53_combout\,
	datae => \port_map_banco_registradores|ALT_INV_Reg~55_combout\,
	dataf => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_alu|Equal0~1_combout\);

\port_map_banco_registradores|Reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[4]~4_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~23_q\);

\port_map_banco_registradores|Reg~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[4]~4_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~31_q\);

\port_map_banco_registradores|Reg~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[4]~4_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~39_q\);

\port_map_banco_registradores|Reg~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~56_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~15_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~23_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~31_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~15_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~23_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~31_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~39_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~56_combout\);

\port_map_alu|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~17_sumout\ = SUM(( \port_map_banco_registradores|Reg~48_combout\ ) + ( (!\port_map_banco_registradores|Reg~56_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~14\ ))
-- \port_map_alu|Add1~18\ = CARRY(( \port_map_banco_registradores|Reg~48_combout\ ) + ( (!\port_map_banco_registradores|Reg~56_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~48_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~56_combout\,
	cin => \port_map_alu|Add1~14\,
	sumout => \port_map_alu|Add1~17_sumout\,
	cout => \port_map_alu|Add1~18\);

\port_map_alu|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~17_sumout\ = SUM(( \port_map_banco_registradores|Reg~48_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~56_combout\) ) + ( \port_map_alu|Add0~14\ ))
-- \port_map_alu|Add0~18\ = CARRY(( \port_map_banco_registradores|Reg~48_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~56_combout\) ) + ( \port_map_alu|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~48_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~56_combout\,
	cin => \port_map_alu|Add0~14\,
	sumout => \port_map_alu|Add0~17_sumout\,
	cout => \port_map_alu|Add0~18\);

\port_map_alu|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux7~0_combout\ = ( \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux4~0_combout\ & (((\port_map_banco_registradores|Reg~56_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # 
-- (\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_banco_registradores|Reg~48_combout\)) ) ) # ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (\port_map_banco_registradores|Reg~56_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- !\port_map_unidade_controle|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000101010100110000000000000011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~48_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~56_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux7~0_combout\);

\port_map_alu|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux7~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~17_sumout\))) # (\port_map_alu|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~17_sumout\,
	datad => \port_map_alu|ALT_INV_Mux7~0_combout\,
	combout => \port_map_alu|Mux7~2_combout\);

\port_map_memoria_ram|M_Ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~17_sumout\,
	asdata => \port_map_alu|Mux7~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~16_q\);

\port_map_memoria_ram|M_Ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~17_sumout\,
	asdata => \port_map_alu|Mux7~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~24_q\);

\port_map_memoria_ram|M_Ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~17_sumout\,
	asdata => \port_map_alu|Mux7~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~32_q\);

\port_map_memoria_ram|M_Ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~17_sumout\,
	asdata => \port_map_alu|Mux7~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~40_q\);

\port_map_memoria_ram|M_Ram~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~80_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~16_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~24_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~32_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~16_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~24_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~32_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~40_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~80_combout\);

\port_map_mul_2to1_ram_alu|O[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[4]~4_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~80_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~80_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~17_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux7~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~80_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~17_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux7~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datac => \port_map_alu|ALT_INV_Add1~17_sumout\,
	datad => \port_map_alu|ALT_INV_Mux7~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~80_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[4]~4_combout\);

\port_map_banco_registradores|Reg~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[4]~4_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~15_q\);

\port_map_banco_registradores|Reg~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~48_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~15_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~23_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~31_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~15_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~23_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~31_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~39_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~48_combout\);

\port_map_banco_registradores|Reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[5]~5_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~24_q\);

\port_map_banco_registradores|Reg~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[5]~5_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~32_q\);

\port_map_banco_registradores|Reg~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[5]~5_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~40_q\);

\port_map_banco_registradores|Reg~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~57_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~16_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~24_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~32_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~16_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~24_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~32_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~40_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~57_combout\);

\port_map_alu|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~21_sumout\ = SUM(( \port_map_banco_registradores|Reg~49_combout\ ) + ( (!\port_map_banco_registradores|Reg~57_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~18\ ))
-- \port_map_alu|Add1~22\ = CARRY(( \port_map_banco_registradores|Reg~49_combout\ ) + ( (!\port_map_banco_registradores|Reg~57_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~49_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~57_combout\,
	cin => \port_map_alu|Add1~18\,
	sumout => \port_map_alu|Add1~21_sumout\,
	cout => \port_map_alu|Add1~22\);

\port_map_alu|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~21_sumout\ = SUM(( \port_map_banco_registradores|Reg~49_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~57_combout\) ) + ( \port_map_alu|Add0~18\ ))
-- \port_map_alu|Add0~22\ = CARRY(( \port_map_banco_registradores|Reg~49_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~57_combout\) ) + ( \port_map_alu|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~49_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~57_combout\,
	cin => \port_map_alu|Add0~18\,
	sumout => \port_map_alu|Add0~21_sumout\,
	cout => \port_map_alu|Add0~22\);

\port_map_alu|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux6~0_combout\ = ( \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux4~0_combout\ & (((\port_map_banco_registradores|Reg~57_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # 
-- (\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_banco_registradores|Reg~49_combout\)) ) ) # ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (\port_map_banco_registradores|Reg~57_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- !\port_map_unidade_controle|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000101010100110000000000000011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~49_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~57_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux6~0_combout\);

\port_map_alu|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux6~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~21_sumout\))) # (\port_map_alu|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~21_sumout\,
	datad => \port_map_alu|ALT_INV_Mux6~0_combout\,
	combout => \port_map_alu|Mux6~2_combout\);

\port_map_memoria_ram|M_Ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~21_sumout\,
	asdata => \port_map_alu|Mux6~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~17_q\);

\port_map_memoria_ram|M_Ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~21_sumout\,
	asdata => \port_map_alu|Mux6~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~25_q\);

\port_map_memoria_ram|M_Ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~21_sumout\,
	asdata => \port_map_alu|Mux6~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~33_q\);

\port_map_memoria_ram|M_Ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~21_sumout\,
	asdata => \port_map_alu|Mux6~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~41_q\);

\port_map_memoria_ram|M_Ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~81_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~17_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~25_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~33_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~17_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~25_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~33_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~41_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~81_combout\);

\port_map_mul_2to1_ram_alu|O[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[5]~5_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~81_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~81_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~21_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux6~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~81_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~21_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux6~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datac => \port_map_alu|ALT_INV_Add1~21_sumout\,
	datad => \port_map_alu|ALT_INV_Mux6~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~81_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[5]~5_combout\);

\port_map_banco_registradores|Reg~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[5]~5_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~16_q\);

\port_map_banco_registradores|Reg~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~49_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~16_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~24_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~32_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~16_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~24_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~32_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~40_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~49_combout\);

\port_map_alu|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Equal0~2_combout\ = ( \port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~48_combout\ & !\port_map_banco_registradores|Reg~49_combout\) ) ) # ( !\port_map_unidade_controle|Mux7~0_combout\ & ( 
-- (!\port_map_banco_registradores|Reg~48_combout\ & (!\port_map_banco_registradores|Reg~56_combout\ & (!\port_map_banco_registradores|Reg~49_combout\ $ (\port_map_banco_registradores|Reg~57_combout\)))) # (\port_map_banco_registradores|Reg~48_combout\ & 
-- (\port_map_banco_registradores|Reg~56_combout\ & (!\port_map_banco_registradores|Reg~49_combout\ $ (\port_map_banco_registradores|Reg~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100010001000100010000100001000011000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~48_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~49_combout\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~56_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~57_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_alu|Equal0~2_combout\);

\port_map_banco_registradores|Reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[6]~6_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~25_q\);

\port_map_banco_registradores|Reg~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[6]~6_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~33_q\);

\port_map_banco_registradores|Reg~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[6]~6_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~41_q\);

\port_map_banco_registradores|Reg~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~58_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~17_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~25_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~33_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~17_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~25_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~33_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~41_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~58_combout\);

\port_map_alu|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~25_sumout\ = SUM(( \port_map_banco_registradores|Reg~50_combout\ ) + ( (!\port_map_banco_registradores|Reg~58_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~22\ ))
-- \port_map_alu|Add1~26\ = CARRY(( \port_map_banco_registradores|Reg~50_combout\ ) + ( (!\port_map_banco_registradores|Reg~58_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~50_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~58_combout\,
	cin => \port_map_alu|Add1~22\,
	sumout => \port_map_alu|Add1~25_sumout\,
	cout => \port_map_alu|Add1~26\);

\port_map_alu|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~25_sumout\ = SUM(( \port_map_banco_registradores|Reg~50_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~58_combout\) ) + ( \port_map_alu|Add0~22\ ))
-- \port_map_alu|Add0~26\ = CARRY(( \port_map_banco_registradores|Reg~50_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~58_combout\) ) + ( \port_map_alu|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~50_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~58_combout\,
	cin => \port_map_alu|Add0~22\,
	sumout => \port_map_alu|Add0~25_sumout\,
	cout => \port_map_alu|Add0~26\);

\port_map_alu|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux5~0_combout\ = ( \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux4~0_combout\ & (((\port_map_banco_registradores|Reg~58_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # 
-- (\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_banco_registradores|Reg~50_combout\)) ) ) # ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (\port_map_banco_registradores|Reg~58_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- !\port_map_unidade_controle|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000101010100110000000000000011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~50_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~58_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux5~0_combout\);

\port_map_alu|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux5~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~25_sumout\))) # (\port_map_alu|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~25_sumout\,
	datad => \port_map_alu|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux5~2_combout\);

\port_map_memoria_ram|M_Ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~25_sumout\,
	asdata => \port_map_alu|Mux5~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~18_q\);

\port_map_memoria_ram|M_Ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~25_sumout\,
	asdata => \port_map_alu|Mux5~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~26_q\);

\port_map_memoria_ram|M_Ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~25_sumout\,
	asdata => \port_map_alu|Mux5~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~34_q\);

\port_map_memoria_ram|M_Ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~25_sumout\,
	asdata => \port_map_alu|Mux5~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~42_q\);

\port_map_memoria_ram|M_Ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~82_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~18_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~26_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~34_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~18_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~26_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~34_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~42_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~82_combout\);

\port_map_mul_2to1_ram_alu|O[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[6]~6_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~82_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~82_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~25_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux5~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~82_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~25_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux5~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datac => \port_map_alu|ALT_INV_Add1~25_sumout\,
	datad => \port_map_alu|ALT_INV_Mux5~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~82_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[6]~6_combout\);

\port_map_banco_registradores|Reg~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[6]~6_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~17_q\);

\port_map_banco_registradores|Reg~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~50_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~17_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~25_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~33_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~17_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~25_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~33_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~41_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~50_combout\);

\port_map_banco_registradores|Reg~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[7]~7_combout\,
	ena => \port_map_banco_registradores|Reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~26_q\);

\port_map_banco_registradores|Reg~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[7]~7_combout\,
	ena => \port_map_banco_registradores|Reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~34_q\);

\port_map_banco_registradores|Reg~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[7]~7_combout\,
	ena => \port_map_banco_registradores|Reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~42_q\);

\port_map_banco_registradores|Reg~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~59_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~18_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~26_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~34_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_banco_registradores|Reg~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~18_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~26_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~34_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~42_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_banco_registradores|Reg~59_combout\);

\port_map_alu|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~29_sumout\ = SUM(( \port_map_banco_registradores|Reg~51_combout\ ) + ( (!\port_map_banco_registradores|Reg~59_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~26\ ))
-- \port_map_alu|Add1~30\ = CARRY(( \port_map_banco_registradores|Reg~51_combout\ ) + ( (!\port_map_banco_registradores|Reg~59_combout\) # (\port_map_unidade_controle|Mux7~0_combout\) ) + ( \port_map_alu|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~51_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~59_combout\,
	cin => \port_map_alu|Add1~26\,
	sumout => \port_map_alu|Add1~29_sumout\,
	cout => \port_map_alu|Add1~30\);

\port_map_alu|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~29_sumout\ = SUM(( \port_map_banco_registradores|Reg~51_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~59_combout\) ) + ( \port_map_alu|Add0~26\ ))
-- \port_map_alu|Add0~30\ = CARRY(( \port_map_banco_registradores|Reg~51_combout\ ) + ( (!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_registradores|Reg~59_combout\) ) + ( \port_map_alu|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~51_combout\,
	dataf => \port_map_banco_registradores|ALT_INV_Reg~59_combout\,
	cin => \port_map_alu|Add0~26\,
	sumout => \port_map_alu|Add0~29_sumout\,
	cout => \port_map_alu|Add0~30\);

\port_map_alu|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux4~0_combout\ = ( \port_map_unidade_controle|Mux5~0_combout\ & ( (!\port_map_unidade_controle|Mux4~0_combout\ & (((\port_map_banco_registradores|Reg~59_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # 
-- (\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_banco_registradores|Reg~51_combout\)) ) ) # ( !\port_map_unidade_controle|Mux5~0_combout\ & ( (\port_map_banco_registradores|Reg~59_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- !\port_map_unidade_controle|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000101010100110000000000000011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~51_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~59_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux4~0_combout\);

\port_map_alu|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux4~2_combout\ = ((\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add0~29_sumout\))) # (\port_map_alu|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_alu|ALT_INV_Add0~29_sumout\,
	datad => \port_map_alu|ALT_INV_Mux4~0_combout\,
	combout => \port_map_alu|Mux4~2_combout\);

\port_map_memoria_ram|M_Ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~29_sumout\,
	asdata => \port_map_alu|Mux4~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~19_q\);

\port_map_memoria_ram|M_Ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~29_sumout\,
	asdata => \port_map_alu|Mux4~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~27_q\);

\port_map_memoria_ram|M_Ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~29_sumout\,
	asdata => \port_map_alu|Mux4~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~35_q\);

\port_map_memoria_ram|M_Ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_alu|Add1~29_sumout\,
	asdata => \port_map_alu|Mux4~2_combout\,
	sclr => \port_map_memoria_rom|Mux0~2_combout\,
	sload => \port_map_alu|Mux2~0_combout\,
	ena => \port_map_memoria_ram|M_Ram~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_memoria_ram|M_Ram~43_q\);

\port_map_memoria_ram|M_Ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|M_Ram~83_combout\ = ( \port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~19_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( \port_map_memoria_rom|Mux6~1_combout\ & 
-- ( \port_map_memoria_ram|M_Ram~27_q\ ) ) ) # ( \port_map_memoria_rom|Mux7~1_combout\ & ( !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~35_q\ ) ) ) # ( !\port_map_memoria_rom|Mux7~1_combout\ & ( 
-- !\port_map_memoria_rom|Mux6~1_combout\ & ( \port_map_memoria_ram|M_Ram~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_ram|ALT_INV_M_Ram~19_q\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~27_q\,
	datac => \port_map_memoria_ram|ALT_INV_M_Ram~35_q\,
	datad => \port_map_memoria_ram|ALT_INV_M_Ram~43_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoria_ram|M_Ram~83_combout\);

\port_map_mul_2to1_ram_alu|O[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_ram_alu|O[7]~7_combout\ = ( \port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~83_combout\ ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( \port_map_memoria_ram|M_Ram~83_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~29_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux4~2_combout\))))) ) ) ) # ( !\port_map_unidade_controle|Mux2~0_combout\ & ( 
-- !\port_map_memoria_ram|M_Ram~83_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Mux2~0_combout\ & (\port_map_alu|Add1~29_sumout\)) # (\port_map_alu|Mux2~0_combout\ & ((\port_map_alu|Mux4~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000000000000001000001010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	datac => \port_map_alu|ALT_INV_Add1~29_sumout\,
	datad => \port_map_alu|ALT_INV_Mux4~2_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	dataf => \port_map_memoria_ram|ALT_INV_M_Ram~83_combout\,
	combout => \port_map_mul_2to1_ram_alu|O[7]~7_combout\);

\port_map_banco_registradores|Reg~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_ram_alu|O[7]~7_combout\,
	ena => \port_map_banco_registradores|Reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_registradores|Reg~18_q\);

\port_map_banco_registradores|Reg~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_registradores|Reg~51_combout\ = ( \port_map_memoria_rom|Mux5~1_combout\ & ( \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~18_q\ ) ) ) # ( !\port_map_memoria_rom|Mux5~1_combout\ & ( 
-- \port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~26_q\ ) ) ) # ( \port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~34_q\ ) ) ) # ( 
-- !\port_map_memoria_rom|Mux5~1_combout\ & ( !\port_map_memoria_rom|Mux4~1_combout\ & ( \port_map_banco_registradores|Reg~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~18_q\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~26_q\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~34_q\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~42_q\,
	datae => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	combout => \port_map_banco_registradores|Reg~51_combout\);

\port_map_alu|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Equal0~3_combout\ = ( \port_map_unidade_controle|Mux7~0_combout\ & ( (!\port_map_banco_registradores|Reg~50_combout\ & !\port_map_banco_registradores|Reg~51_combout\) ) ) # ( !\port_map_unidade_controle|Mux7~0_combout\ & ( 
-- (!\port_map_banco_registradores|Reg~50_combout\ & (!\port_map_banco_registradores|Reg~58_combout\ & (!\port_map_banco_registradores|Reg~51_combout\ $ (\port_map_banco_registradores|Reg~59_combout\)))) # (\port_map_banco_registradores|Reg~50_combout\ & 
-- (\port_map_banco_registradores|Reg~58_combout\ & (!\port_map_banco_registradores|Reg~51_combout\ $ (\port_map_banco_registradores|Reg~59_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100010001000100010000100001000011000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_registradores|ALT_INV_Reg~50_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~51_combout\,
	datac => \port_map_banco_registradores|ALT_INV_Reg~58_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~59_combout\,
	datae => \port_map_unidade_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_alu|Equal0~3_combout\);

\port_map_alu|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Equal0~4_combout\ = (\port_map_alu|Equal0~0_combout\ & (\port_map_alu|Equal0~1_combout\ & (\port_map_alu|Equal0~2_combout\ & \port_map_alu|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_alu|ALT_INV_Equal0~0_combout\,
	datab => \port_map_alu|ALT_INV_Equal0~1_combout\,
	datac => \port_map_alu|ALT_INV_Equal0~2_combout\,
	datad => \port_map_alu|ALT_INV_Equal0~3_combout\,
	combout => \port_map_alu|Equal0~4_combout\);

\port_map_alu|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux2~1_combout\ = (\port_map_memoria_rom|Mux0~2_combout\ & !\port_map_alu|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Mux2~0_combout\,
	combout => \port_map_alu|Mux2~1_combout\);

\port_map_alu|in_TempZero\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|in_TempZero~combout\ = ( \port_map_alu|in_TempZero~combout\ & ( \port_map_alu|Mux2~1_combout\ & ( \port_map_alu|Equal0~4_combout\ ) ) ) # ( !\port_map_alu|in_TempZero~combout\ & ( \port_map_alu|Mux2~1_combout\ & ( 
-- \port_map_alu|Equal0~4_combout\ ) ) ) # ( \port_map_alu|in_TempZero~combout\ & ( !\port_map_alu|Mux2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_alu|ALT_INV_Equal0~4_combout\,
	datae => \port_map_alu|ALT_INV_in_TempZero~combout\,
	dataf => \port_map_alu|ALT_INV_Mux2~1_combout\,
	combout => \port_map_alu|in_TempZero~combout\);

\port_map_alu|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux1~0_combout\ = !\port_map_unidade_controle|Mux5~0_combout\ $ (\port_map_alu|in_TempZero~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datab => \port_map_alu|ALT_INV_in_TempZero~combout\,
	combout => \port_map_alu|Mux1~0_combout\);

\port_map_alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux0~0_combout\ = (\port_map_memoria_rom|Mux0~2_combout\ & \port_map_unidade_controle|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	combout => \port_map_alu|Mux0~0_combout\);

\port_map_alu|Zero\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Zero~combout\ = ( \port_map_alu|Zero~combout\ & ( \port_map_alu|Mux0~0_combout\ & ( \port_map_alu|Mux1~0_combout\ ) ) ) # ( !\port_map_alu|Zero~combout\ & ( \port_map_alu|Mux0~0_combout\ & ( \port_map_alu|Mux1~0_combout\ ) ) ) # ( 
-- \port_map_alu|Zero~combout\ & ( !\port_map_alu|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_alu|ALT_INV_Mux1~0_combout\,
	datae => \port_map_alu|ALT_INV_Zero~combout\,
	dataf => \port_map_alu|ALT_INV_Mux0~0_combout\,
	combout => \port_map_alu|Zero~combout\);

\port_map_mul_2to1_jump|O[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[2]~8_combout\ = ( !\port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~9_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Zero~combout\ & 
-- (((\port_map_somador_pc|Add0~9_sumout\)))) # (\port_map_alu|Zero~combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux5~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & ((\port_map_somador_pc|Add0~9_sumout\))))))) ) ) # 
-- ( \port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~9_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_memoria_rom|Mux3~1_combout\ & 
-- (((\port_map_somador_pc|Add0~9_sumout\)))) # (\port_map_memoria_rom|Mux3~1_combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux5~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & 
-- ((\port_map_somador_pc|Add0~9_sumout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000001000000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux5~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	dataf => \port_map_somador_pc|ALT_INV_Add0~9_sumout\,
	datag => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[2]~8_combout\);

\port_map_pc|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(2));

\port_map_memoria_rom|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux1~0_combout\ = (!\port_map_pc|saida\(0) & (\port_map_pc|saida\(1) & ((!\port_map_pc|saida\(3))))) # (\port_map_pc|saida\(0) & (!\port_map_pc|saida\(2) & (!\port_map_pc|saida\(1) $ (!\port_map_pc|saida\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001001000000001100100100000000110010010000000011001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	datad => \port_map_pc|ALT_INV_saida\(3),
	combout => \port_map_memoria_rom|Mux1~0_combout\);

\port_map_memoria_rom|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux1~1_combout\ = ( \port_map_memoria_rom|Mux1~0_combout\ & ( (((\port_map_pc|saida\(7)) # (\port_map_pc|saida\(6))) # (\port_map_pc|saida\(5))) # (\port_map_pc|saida\(4)) ) ) # ( !\port_map_memoria_rom|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_pc|ALT_INV_saida\(7),
	datae => \port_map_memoria_rom|ALT_INV_Mux1~0_combout\,
	combout => \port_map_memoria_rom|Mux1~1_combout\);

\port_map_mul_2to1_jump|O[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[7]~3_combout\ = ( \port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( (\port_map_somador_pc|Add0~29_sumout\ & (((!\port_map_memoria_rom|Mux3~1_combout\ & \port_map_memoria_rom|Mux2~1_combout\)) # 
-- (\port_map_memoria_rom|Mux1~1_combout\))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( \port_map_somador_pc|Add0~29_sumout\ ) ) ) # ( \port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & ( 
-- (\port_map_somador_pc|Add0~29_sumout\ & ((!\port_map_memoria_rom|Mux3~1_combout\) # ((!\port_map_memoria_rom|Mux2~1_combout\) # (\port_map_memoria_rom|Mux1~1_combout\)))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & 
-- ( \port_map_somador_pc|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000101010101010101010101010000010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|ALT_INV_Add0~29_sumout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	dataf => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[7]~3_combout\);

\port_map_pc|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(7));

\port_map_memoria_rom|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux2~2_combout\ = (!\port_map_pc|saida\(1) & ((\port_map_pc|saida\(2)))) # (\port_map_pc|saida\(1) & (\port_map_pc|saida\(0) & !\port_map_pc|saida\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000011100000111000001110000011100000111000001110000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	combout => \port_map_memoria_rom|Mux2~2_combout\);

\port_map_memoria_rom|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux2~1_combout\ = ( \port_map_pc|saida\(3) & ( \port_map_memoria_rom|Mux2~2_combout\ ) ) # ( !\port_map_pc|saida\(3) & ( \port_map_memoria_rom|Mux2~2_combout\ & ( (((\port_map_pc|saida\(7)) # (\port_map_pc|saida\(6))) # 
-- (\port_map_pc|saida\(5))) # (\port_map_pc|saida\(4)) ) ) ) # ( \port_map_pc|saida\(3) & ( !\port_map_memoria_rom|Mux2~2_combout\ ) ) # ( !\port_map_pc|saida\(3) & ( !\port_map_memoria_rom|Mux2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_pc|ALT_INV_saida\(7),
	datae => \port_map_pc|ALT_INV_saida\(3),
	dataf => \port_map_memoria_rom|ALT_INV_Mux2~2_combout\,
	combout => \port_map_memoria_rom|Mux2~1_combout\);

\port_map_mul_2to1_jump|O[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[6]~2_combout\ = ( \port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( (\port_map_somador_pc|Add0~25_sumout\ & (((!\port_map_memoria_rom|Mux3~1_combout\ & \port_map_memoria_rom|Mux2~1_combout\)) # 
-- (\port_map_memoria_rom|Mux1~1_combout\))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( \port_map_somador_pc|Add0~25_sumout\ ) ) ) # ( \port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & ( 
-- (\port_map_somador_pc|Add0~25_sumout\ & ((!\port_map_memoria_rom|Mux3~1_combout\) # ((!\port_map_memoria_rom|Mux2~1_combout\) # (\port_map_memoria_rom|Mux1~1_combout\)))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & 
-- ( \port_map_somador_pc|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000101010101010101010101010000010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|ALT_INV_Add0~25_sumout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	dataf => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[6]~2_combout\);

\port_map_pc|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(6));

\port_map_memoria_rom|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux3~2_combout\ = (!\port_map_pc|saida\(1) & ((!\port_map_pc|saida\(2)))) # (\port_map_pc|saida\(1) & (\port_map_pc|saida\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(0),
	datab => \port_map_pc|ALT_INV_saida\(1),
	datac => \port_map_pc|ALT_INV_saida\(2),
	combout => \port_map_memoria_rom|Mux3~2_combout\);

\port_map_memoria_rom|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux3~1_combout\ = ( \port_map_pc|saida\(3) & ( \port_map_memoria_rom|Mux3~2_combout\ ) ) # ( !\port_map_pc|saida\(3) & ( \port_map_memoria_rom|Mux3~2_combout\ ) ) # ( \port_map_pc|saida\(3) & ( !\port_map_memoria_rom|Mux3~2_combout\ 
-- ) ) # ( !\port_map_pc|saida\(3) & ( !\port_map_memoria_rom|Mux3~2_combout\ & ( (((\port_map_pc|saida\(7)) # (\port_map_pc|saida\(6))) # (\port_map_pc|saida\(5))) # (\port_map_pc|saida\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_pc|ALT_INV_saida\(7),
	datae => \port_map_pc|ALT_INV_saida\(3),
	dataf => \port_map_memoria_rom|ALT_INV_Mux3~2_combout\,
	combout => \port_map_memoria_rom|Mux3~1_combout\);

\port_map_mul_2to1_jump|O[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[5]~1_combout\ = ( \port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( (\port_map_somador_pc|Add0~21_sumout\ & (((!\port_map_memoria_rom|Mux3~1_combout\ & \port_map_memoria_rom|Mux2~1_combout\)) # 
-- (\port_map_memoria_rom|Mux1~1_combout\))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( \port_map_somador_pc|Add0~21_sumout\ ) ) ) # ( \port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & ( 
-- (\port_map_somador_pc|Add0~21_sumout\ & ((!\port_map_memoria_rom|Mux3~1_combout\) # ((!\port_map_memoria_rom|Mux2~1_combout\) # (\port_map_memoria_rom|Mux1~1_combout\)))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & 
-- ( \port_map_somador_pc|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000101010101010101010101010000010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|ALT_INV_Add0~21_sumout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	dataf => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[5]~1_combout\);

\port_map_pc|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(5));

\port_map_memoria_rom|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux6~1_combout\ = ( \port_map_memoria_rom|Mux6~0_combout\ & ( (!\port_map_pc|saida\(4) & (!\port_map_pc|saida\(5) & (!\port_map_pc|saida\(6) & !\port_map_pc|saida\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_pc|ALT_INV_saida\(7),
	datae => \port_map_memoria_rom|ALT_INV_Mux6~0_combout\,
	combout => \port_map_memoria_rom|Mux6~1_combout\);

\port_map_mul_2to1_jump|O[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[1]~12_combout\ = ( !\port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~5_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Zero~combout\ & 
-- (((\port_map_somador_pc|Add0~5_sumout\)))) # (\port_map_alu|Zero~combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux6~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & ((\port_map_somador_pc|Add0~5_sumout\))))))) ) ) # 
-- ( \port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~5_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_memoria_rom|Mux3~1_combout\ & 
-- (((\port_map_somador_pc|Add0~5_sumout\)))) # (\port_map_memoria_rom|Mux3~1_combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux6~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & 
-- ((\port_map_somador_pc|Add0~5_sumout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000001000000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux6~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	dataf => \port_map_somador_pc|ALT_INV_Add0~5_sumout\,
	datag => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[1]~12_combout\);

\port_map_pc|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(1));

\port_map_memoria_rom|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux4~0_combout\ = (!\port_map_pc|saida\(4) & ((!\port_map_pc|saida\(3)) # ((!\port_map_pc|saida\(1) & !\port_map_pc|saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000011111000000000001111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(1),
	datab => \port_map_pc|ALT_INV_saida\(2),
	datac => \port_map_pc|ALT_INV_saida\(3),
	datad => \port_map_pc|ALT_INV_saida\(4),
	combout => \port_map_memoria_rom|Mux4~0_combout\);

\port_map_memoria_rom|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux4~1_combout\ = (\port_map_memoria_rom|Mux4~0_combout\ & \port_map_banco_registradores|Reg~43_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux4~0_combout\,
	datab => \port_map_banco_registradores|ALT_INV_Reg~43_combout\,
	combout => \port_map_memoria_rom|Mux4~1_combout\);

\port_map_somador_pc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|Add0~13_sumout\ = SUM(( \port_map_pc|saida\(3) ) + ( GND ) + ( \port_map_somador_pc|Add0~10\ ))
-- \port_map_somador_pc|Add0~14\ = CARRY(( \port_map_pc|saida\(3) ) + ( GND ) + ( \port_map_somador_pc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_saida\(3),
	cin => \port_map_somador_pc|Add0~10\,
	sumout => \port_map_somador_pc|Add0~13_sumout\,
	cout => \port_map_somador_pc|Add0~14\);

\port_map_mul_2to1_jump|O[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[3]~4_combout\ = ( !\port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~13_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Zero~combout\ & 
-- (((\port_map_somador_pc|Add0~13_sumout\)))) # (\port_map_alu|Zero~combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux4~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & ((\port_map_somador_pc|Add0~13_sumout\))))))) ) ) 
-- # ( \port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~13_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_memoria_rom|Mux3~1_combout\ & 
-- (((\port_map_somador_pc|Add0~13_sumout\)))) # (\port_map_memoria_rom|Mux3~1_combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux4~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & 
-- ((\port_map_somador_pc|Add0~13_sumout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000001000000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux4~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	dataf => \port_map_somador_pc|ALT_INV_Add0~13_sumout\,
	datag => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[3]~4_combout\);

\port_map_pc|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(3));

\port_map_mul_2to1_jump|O[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[4]~0_combout\ = ( \port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( (\port_map_somador_pc|Add0~17_sumout\ & (((!\port_map_memoria_rom|Mux3~1_combout\ & \port_map_memoria_rom|Mux2~1_combout\)) # 
-- (\port_map_memoria_rom|Mux1~1_combout\))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Zero~combout\ & ( \port_map_somador_pc|Add0~17_sumout\ ) ) ) # ( \port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & ( 
-- (\port_map_somador_pc|Add0~17_sumout\ & ((!\port_map_memoria_rom|Mux3~1_combout\) # ((!\port_map_memoria_rom|Mux2~1_combout\) # (\port_map_memoria_rom|Mux1~1_combout\)))) ) ) ) # ( !\port_map_memoria_rom|Mux0~2_combout\ & ( !\port_map_alu|Zero~combout\ & 
-- ( \port_map_somador_pc|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000101010101010101010101010000010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|ALT_INV_Add0~17_sumout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	dataf => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[4]~0_combout\);

\port_map_pc|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(4));

\port_map_memoria_rom|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_rom|Mux0~2_combout\ = ( \port_map_memoria_rom|Mux0~1_combout\ & ( (((\port_map_pc|saida\(7)) # (\port_map_pc|saida\(6))) # (\port_map_pc|saida\(5))) # (\port_map_pc|saida\(4)) ) ) # ( !\port_map_memoria_rom|Mux0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_saida\(4),
	datab => \port_map_pc|ALT_INV_saida\(5),
	datac => \port_map_pc|ALT_INV_saida\(6),
	datad => \port_map_pc|ALT_INV_saida\(7),
	datae => \port_map_memoria_rom|ALT_INV_Mux0~1_combout\,
	combout => \port_map_memoria_rom|Mux0~2_combout\);

\port_map_mul_2to1_jump|O[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mul_2to1_jump|O[0]~16_combout\ = ( !\port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~1_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_alu|Zero~combout\ & 
-- (((\port_map_somador_pc|Add0~1_sumout\)))) # (\port_map_alu|Zero~combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux7~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & ((\port_map_somador_pc|Add0~1_sumout\))))))) ) ) # 
-- ( \port_map_memoria_rom|Mux2~1_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((((\port_map_somador_pc|Add0~1_sumout\))))) # (\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_memoria_rom|Mux3~1_combout\ & 
-- (((\port_map_somador_pc|Add0~1_sumout\)))) # (\port_map_memoria_rom|Mux3~1_combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux7~1_combout\)) # (\port_map_memoria_rom|Mux1~1_combout\ & 
-- ((\port_map_somador_pc|Add0~1_sumout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000001000000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux7~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datad => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	dataf => \port_map_somador_pc|ALT_INV_Add0~1_sumout\,
	datag => \port_map_alu|ALT_INV_Zero~combout\,
	combout => \port_map_mul_2to1_jump|O[0]~16_combout\);

\port_map_pc|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \port_map_mul_2to1_jump|O[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|saida\(0));

\port_map_alu|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux11~1_combout\ = ( \port_map_alu|Add0~1_sumout\ & ( \port_map_alu|Mux11~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_unidade_controle|Mux4~0_combout\)) # 
-- (\port_map_alu|Add1~1_sumout\))) ) ) ) # ( !\port_map_alu|Add0~1_sumout\ & ( \port_map_alu|Mux11~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_unidade_controle|Mux4~0_combout\)) # 
-- (\port_map_alu|Add1~1_sumout\))) ) ) ) # ( \port_map_alu|Add0~1_sumout\ & ( !\port_map_alu|Mux11~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_alu|Add1~1_sumout\ & 
-- \port_map_unidade_controle|Mux5~0_combout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & ((!\port_map_unidade_controle|Mux5~0_combout\))))) ) ) ) # ( !\port_map_alu|Add0~1_sumout\ & ( !\port_map_alu|Mux11~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (\port_map_alu|Add1~1_sumout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & \port_map_unidade_controle|Mux5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000010100010000010101010001010101010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_alu|ALT_INV_Add1~1_sumout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datad => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datae => \port_map_alu|ALT_INV_Add0~1_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux11~0_combout\,
	combout => \port_map_alu|Mux11~1_combout\);

\port_map_alu|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux10~1_combout\ = ( \port_map_alu|Add0~5_sumout\ & ( \port_map_alu|Mux10~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~5_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( !\port_map_alu|Add0~5_sumout\ & ( \port_map_alu|Mux10~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~5_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( \port_map_alu|Add0~5_sumout\ & ( !\port_map_alu|Mux10~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & 
-- (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~5_sumout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\)))) ) ) ) # ( !\port_map_alu|Add0~5_sumout\ & ( !\port_map_alu|Mux10~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000010100010100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_alu|ALT_INV_Add1~5_sumout\,
	datae => \port_map_alu|ALT_INV_Add0~5_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux10~0_combout\,
	combout => \port_map_alu|Mux10~1_combout\);

\port_map_alu|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux9~1_combout\ = ( \port_map_alu|Add0~9_sumout\ & ( \port_map_alu|Mux9~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~9_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( !\port_map_alu|Add0~9_sumout\ & ( \port_map_alu|Mux9~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~9_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( \port_map_alu|Add0~9_sumout\ & ( !\port_map_alu|Mux9~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & 
-- (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~9_sumout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\)))) ) ) ) # ( !\port_map_alu|Add0~9_sumout\ & ( !\port_map_alu|Mux9~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000010100010100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_alu|ALT_INV_Add1~9_sumout\,
	datae => \port_map_alu|ALT_INV_Add0~9_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux9~0_combout\,
	combout => \port_map_alu|Mux9~1_combout\);

\port_map_alu|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux8~1_combout\ = ( \port_map_alu|Add0~13_sumout\ & ( \port_map_alu|Mux8~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~13_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( !\port_map_alu|Add0~13_sumout\ & ( \port_map_alu|Mux8~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~13_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( \port_map_alu|Add0~13_sumout\ & ( !\port_map_alu|Mux8~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & 
-- (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~13_sumout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\)))) ) ) ) # ( !\port_map_alu|Add0~13_sumout\ & ( !\port_map_alu|Mux8~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000010100010100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_alu|ALT_INV_Add1~13_sumout\,
	datae => \port_map_alu|ALT_INV_Add0~13_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux8~0_combout\,
	combout => \port_map_alu|Mux8~1_combout\);

\port_map_alu|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux7~1_combout\ = ( \port_map_alu|Add0~17_sumout\ & ( \port_map_alu|Mux7~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~17_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( !\port_map_alu|Add0~17_sumout\ & ( \port_map_alu|Mux7~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~17_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( \port_map_alu|Add0~17_sumout\ & ( !\port_map_alu|Mux7~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & 
-- (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~17_sumout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\)))) ) ) ) # ( !\port_map_alu|Add0~17_sumout\ & ( !\port_map_alu|Mux7~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000010100010100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_alu|ALT_INV_Add1~17_sumout\,
	datae => \port_map_alu|ALT_INV_Add0~17_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux7~0_combout\,
	combout => \port_map_alu|Mux7~1_combout\);

\port_map_alu|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux6~1_combout\ = ( \port_map_alu|Add0~21_sumout\ & ( \port_map_alu|Mux6~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~21_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( !\port_map_alu|Add0~21_sumout\ & ( \port_map_alu|Mux6~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~21_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( \port_map_alu|Add0~21_sumout\ & ( !\port_map_alu|Mux6~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & 
-- (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~21_sumout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\)))) ) ) ) # ( !\port_map_alu|Add0~21_sumout\ & ( !\port_map_alu|Mux6~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000010100010100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_alu|ALT_INV_Add1~21_sumout\,
	datae => \port_map_alu|ALT_INV_Add0~21_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux6~0_combout\,
	combout => \port_map_alu|Mux6~1_combout\);

\port_map_alu|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux5~1_combout\ = ( \port_map_alu|Add0~25_sumout\ & ( \port_map_alu|Mux5~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~25_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( !\port_map_alu|Add0~25_sumout\ & ( \port_map_alu|Mux5~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~25_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( \port_map_alu|Add0~25_sumout\ & ( !\port_map_alu|Mux5~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & 
-- (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~25_sumout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\)))) ) ) ) # ( !\port_map_alu|Add0~25_sumout\ & ( !\port_map_alu|Mux5~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000010100010100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_alu|ALT_INV_Add1~25_sumout\,
	datae => \port_map_alu|ALT_INV_Add0~25_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux5~0_combout\,
	combout => \port_map_alu|Mux5~1_combout\);

\port_map_alu|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux4~1_combout\ = ( \port_map_alu|Add0~29_sumout\ & ( \port_map_alu|Mux4~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~29_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( !\port_map_alu|Add0~29_sumout\ & ( \port_map_alu|Mux4~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & (((!\port_map_unidade_controle|Mux5~0_combout\) # (\port_map_alu|Add1~29_sumout\)) # 
-- (\port_map_unidade_controle|Mux4~0_combout\))) ) ) ) # ( \port_map_alu|Add0~29_sumout\ & ( !\port_map_alu|Mux4~0_combout\ & ( (!\port_map_memoria_rom|Mux0~2_combout\ & ((!\port_map_unidade_controle|Mux4~0_combout\ & 
-- (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~29_sumout\)) # (\port_map_unidade_controle|Mux4~0_combout\ & (!\port_map_unidade_controle|Mux5~0_combout\)))) ) ) ) # ( !\port_map_alu|Add0~29_sumout\ & ( !\port_map_alu|Mux4~0_combout\ & ( 
-- (!\port_map_memoria_rom|Mux0~2_combout\ & (!\port_map_unidade_controle|Mux4~0_combout\ & (\port_map_unidade_controle|Mux5~0_combout\ & \port_map_alu|Add1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000010100010100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	datab => \port_map_unidade_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_unidade_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_alu|ALT_INV_Add1~29_sumout\,
	datae => \port_map_alu|ALT_INV_Add0~29_sumout\,
	dataf => \port_map_alu|ALT_INV_Mux4~0_combout\,
	combout => \port_map_alu|Mux4~1_combout\);

\port_map_alu|temp_overflow_sub~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|temp_overflow_sub~0_combout\ = ( \port_map_banco_registradores|Reg~59_combout\ & ( \port_map_alu|Add1~29_sumout\ & ( !\port_map_banco_registradores|Reg~51_combout\ $ (((!\port_map_memoria_rom|Mux1~1_combout\) # 
-- ((!\port_map_memoria_rom|Mux3~1_combout\ & \port_map_memoria_rom|Mux2~1_combout\)))) ) ) ) # ( !\port_map_banco_registradores|Reg~59_combout\ & ( \port_map_alu|Add1~29_sumout\ & ( !\port_map_banco_registradores|Reg~51_combout\ ) ) ) # ( 
-- \port_map_banco_registradores|Reg~59_combout\ & ( !\port_map_alu|Add1~29_sumout\ & ( !\port_map_banco_registradores|Reg~51_combout\ $ (((\port_map_memoria_rom|Mux1~1_combout\ & ((!\port_map_memoria_rom|Mux2~1_combout\) # 
-- (\port_map_memoria_rom|Mux3~1_combout\))))) ) ) ) # ( !\port_map_banco_registradores|Reg~59_combout\ & ( !\port_map_alu|Add1~29_sumout\ & ( \port_map_banco_registradores|Reg~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111100100000110111111111000000000000110111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~51_combout\,
	datae => \port_map_banco_registradores|ALT_INV_Reg~59_combout\,
	dataf => \port_map_alu|ALT_INV_Add1~29_sumout\,
	combout => \port_map_alu|temp_overflow_sub~0_combout\);

\port_map_alu|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add0~33_sumout\ = SUM(( \port_map_banco_registradores|Reg~51_combout\ ) + ( GND ) + ( \port_map_alu|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_banco_registradores|ALT_INV_Reg~51_combout\,
	cin => \port_map_alu|Add0~30\,
	sumout => \port_map_alu|Add0~33_sumout\);

\port_map_alu|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Add1~37_sumout\ = SUM(( VCC ) + ( GND ) + ( \port_map_alu|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \port_map_alu|Add1~30\,
	sumout => \port_map_alu|Add1~37_sumout\);

\port_map_alu|temp_overflow_adder~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|temp_overflow_adder~0_combout\ = ( \port_map_alu|Add0~29_sumout\ & ( (!\port_map_banco_registradores|Reg~59_combout\) # ((\port_map_memoria_rom|Mux1~1_combout\ & ((!\port_map_memoria_rom|Mux2~1_combout\) # 
-- (\port_map_memoria_rom|Mux3~1_combout\)))) ) ) # ( !\port_map_alu|Add0~29_sumout\ & ( (\port_map_banco_registradores|Reg~59_combout\ & ((!\port_map_memoria_rom|Mux1~1_combout\) # ((!\port_map_memoria_rom|Mux3~1_combout\ & 
-- \port_map_memoria_rom|Mux2~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110010111111110000110100000000111100101111111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datac => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datad => \port_map_banco_registradores|ALT_INV_Reg~59_combout\,
	datae => \port_map_alu|ALT_INV_Add0~29_sumout\,
	combout => \port_map_alu|temp_overflow_adder~0_combout\);

\port_map_alu|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Mux12~0_combout\ = ( !\port_map_memoria_rom|Mux3~1_combout\ & ( (!\port_map_memoria_rom|Mux1~1_combout\ & (\port_map_memoria_rom|Mux2~1_combout\ & (!\port_map_alu|temp_overflow_adder~0_combout\ $ ((!\port_map_alu|Add0~33_sumout\))))) # 
-- (\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux2~1_combout\ & (!\port_map_alu|temp_overflow_adder~0_combout\ $ ((!\port_map_alu|Add0~33_sumout\))))) ) ) # ( \port_map_memoria_rom|Mux3~1_combout\ & ( 
-- (!\port_map_memoria_rom|Mux1~1_combout\ & (\port_map_memoria_rom|Mux2~1_combout\ & (!\port_map_alu|temp_overflow_sub~0_combout\ $ (((!\port_map_alu|Add1~37_sumout\)))))) # (\port_map_memoria_rom|Mux1~1_combout\ & (!\port_map_memoria_rom|Mux2~1_combout\ & 
-- (!\port_map_alu|temp_overflow_sub~0_combout\ $ (((!\port_map_alu|Add1~37_sumout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000011001100000000001100000011000000110011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoria_rom|ALT_INV_Mux1~1_combout\,
	datab => \port_map_memoria_rom|ALT_INV_Mux2~1_combout\,
	datac => \port_map_alu|ALT_INV_temp_overflow_sub~0_combout\,
	datad => \port_map_alu|ALT_INV_Add0~33_sumout\,
	datae => \port_map_memoria_rom|ALT_INV_Mux3~1_combout\,
	dataf => \port_map_alu|ALT_INV_Add1~37_sumout\,
	datag => \port_map_alu|ALT_INV_temp_overflow_adder~0_combout\,
	combout => \port_map_alu|Mux12~0_combout\);

\port_map_alu|Overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_alu|Overflow~combout\ = ( \port_map_alu|Overflow~combout\ & ( \port_map_memoria_rom|Mux0~2_combout\ ) ) # ( \port_map_alu|Overflow~combout\ & ( !\port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Mux12~0_combout\ ) ) ) # ( 
-- !\port_map_alu|Overflow~combout\ & ( !\port_map_memoria_rom|Mux0~2_combout\ & ( \port_map_alu|Mux12~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_alu|ALT_INV_Mux12~0_combout\,
	datae => \port_map_alu|ALT_INV_Overflow~combout\,
	dataf => \port_map_memoria_rom|ALT_INV_Mux0~2_combout\,
	combout => \port_map_alu|Overflow~combout\);

\port_map_memoria_ram|ReadData[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[0]~0_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~76_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~76_combout\,
	combout => \port_map_memoria_ram|ReadData[0]~0_combout\);

\port_map_memoria_ram|ReadData[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[1]~1_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~77_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~77_combout\,
	combout => \port_map_memoria_ram|ReadData[1]~1_combout\);

\port_map_memoria_ram|ReadData[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[2]~2_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~78_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~78_combout\,
	combout => \port_map_memoria_ram|ReadData[2]~2_combout\);

\port_map_memoria_ram|ReadData[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[3]~3_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~79_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~79_combout\,
	combout => \port_map_memoria_ram|ReadData[3]~3_combout\);

\port_map_memoria_ram|ReadData[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[4]~4_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~80_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~80_combout\,
	combout => \port_map_memoria_ram|ReadData[4]~4_combout\);

\port_map_memoria_ram|ReadData[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[5]~5_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~81_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~81_combout\,
	combout => \port_map_memoria_ram|ReadData[5]~5_combout\);

\port_map_memoria_ram|ReadData[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[6]~6_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~82_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~82_combout\,
	combout => \port_map_memoria_ram|ReadData[6]~6_combout\);

\port_map_memoria_ram|ReadData[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoria_ram|ReadData[7]~7_combout\ = (\port_map_unidade_controle|Mux2~0_combout\ & \port_map_memoria_ram|M_Ram~83_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoria_ram|ALT_INV_M_Ram~83_combout\,
	combout => \port_map_memoria_ram|ReadData[7]~7_combout\);

ww_out_out_pc(0) <= \out_out_pc[0]~output_o\;

ww_out_out_pc(1) <= \out_out_pc[1]~output_o\;

ww_out_out_pc(2) <= \out_out_pc[2]~output_o\;

ww_out_out_pc(3) <= \out_out_pc[3]~output_o\;

ww_out_out_pc(4) <= \out_out_pc[4]~output_o\;

ww_out_out_pc(5) <= \out_out_pc[5]~output_o\;

ww_out_out_pc(6) <= \out_out_pc[6]~output_o\;

ww_out_out_pc(7) <= \out_out_pc[7]~output_o\;

ww_out_out_rom(0) <= \out_out_rom[0]~output_o\;

ww_out_out_rom(1) <= \out_out_rom[1]~output_o\;

ww_out_out_rom(2) <= \out_out_rom[2]~output_o\;

ww_out_out_rom(3) <= \out_out_rom[3]~output_o\;

ww_out_out_rom(4) <= \out_out_rom[4]~output_o\;

ww_out_out_rom(5) <= \out_out_rom[5]~output_o\;

ww_out_out_rom(6) <= \out_out_rom[6]~output_o\;

ww_out_out_rom(7) <= \out_out_rom[7]~output_o\;

ww_out_opcode(0) <= \out_opcode[0]~output_o\;

ww_out_opcode(1) <= \out_opcode[1]~output_o\;

ww_out_opcode(2) <= \out_opcode[2]~output_o\;

ww_out_opcode(3) <= \out_opcode[3]~output_o\;

ww_out_rs(0) <= \out_rs[0]~output_o\;

ww_out_rs(1) <= \out_rs[1]~output_o\;

ww_out_rt(0) <= \out_rt[0]~output_o\;

ww_out_rt(1) <= \out_rt[1]~output_o\;

ww_out_endereco(0) <= \out_endereco[0]~output_o\;

ww_out_endereco(1) <= \out_endereco[1]~output_o\;

ww_out_endereco(2) <= \out_endereco[2]~output_o\;

ww_out_endereco(3) <= \out_endereco[3]~output_o\;

ww_out_out_br_reg_A(0) <= \out_out_br_reg_A[0]~output_o\;

ww_out_out_br_reg_A(1) <= \out_out_br_reg_A[1]~output_o\;

ww_out_out_br_reg_A(2) <= \out_out_br_reg_A[2]~output_o\;

ww_out_out_br_reg_A(3) <= \out_out_br_reg_A[3]~output_o\;

ww_out_out_br_reg_A(4) <= \out_out_br_reg_A[4]~output_o\;

ww_out_out_br_reg_A(5) <= \out_out_br_reg_A[5]~output_o\;

ww_out_out_br_reg_A(6) <= \out_out_br_reg_A[6]~output_o\;

ww_out_out_br_reg_A(7) <= \out_out_br_reg_A[7]~output_o\;

ww_out_out_br_reg_B(0) <= \out_out_br_reg_B[0]~output_o\;

ww_out_out_br_reg_B(1) <= \out_out_br_reg_B[1]~output_o\;

ww_out_out_br_reg_B(2) <= \out_out_br_reg_B[2]~output_o\;

ww_out_out_br_reg_B(3) <= \out_out_br_reg_B[3]~output_o\;

ww_out_out_br_reg_B(4) <= \out_out_br_reg_B[4]~output_o\;

ww_out_out_br_reg_B(5) <= \out_out_br_reg_B[5]~output_o\;

ww_out_out_br_reg_B(6) <= \out_out_br_reg_B[6]~output_o\;

ww_out_out_br_reg_B(7) <= \out_out_br_reg_B[7]~output_o\;

ww_out_out_alu_result(0) <= \out_out_alu_result[0]~output_o\;

ww_out_out_alu_result(1) <= \out_out_alu_result[1]~output_o\;

ww_out_out_alu_result(2) <= \out_out_alu_result[2]~output_o\;

ww_out_out_alu_result(3) <= \out_out_alu_result[3]~output_o\;

ww_out_out_alu_result(4) <= \out_out_alu_result[4]~output_o\;

ww_out_out_alu_result(5) <= \out_out_alu_result[5]~output_o\;

ww_out_out_alu_result(6) <= \out_out_alu_result[6]~output_o\;

ww_out_out_alu_result(7) <= \out_out_alu_result[7]~output_o\;

ww_out_out_overflow <= \out_out_overflow~output_o\;

ww_out_out_memoria_ram(0) <= \out_out_memoria_ram[0]~output_o\;

ww_out_out_memoria_ram(1) <= \out_out_memoria_ram[1]~output_o\;

ww_out_out_memoria_ram(2) <= \out_out_memoria_ram[2]~output_o\;

ww_out_out_memoria_ram(3) <= \out_out_memoria_ram[3]~output_o\;

ww_out_out_memoria_ram(4) <= \out_out_memoria_ram[4]~output_o\;

ww_out_out_memoria_ram(5) <= \out_out_memoria_ram[5]~output_o\;

ww_out_out_memoria_ram(6) <= \out_out_memoria_ram[6]~output_o\;

ww_out_out_memoria_ram(7) <= \out_out_memoria_ram[7]~output_o\;

ww_out_out_mul_2to1_ram_alu(0) <= \out_out_mul_2to1_ram_alu[0]~output_o\;

ww_out_out_mul_2to1_ram_alu(1) <= \out_out_mul_2to1_ram_alu[1]~output_o\;

ww_out_out_mul_2to1_ram_alu(2) <= \out_out_mul_2to1_ram_alu[2]~output_o\;

ww_out_out_mul_2to1_ram_alu(3) <= \out_out_mul_2to1_ram_alu[3]~output_o\;

ww_out_out_mul_2to1_ram_alu(4) <= \out_out_mul_2to1_ram_alu[4]~output_o\;

ww_out_out_mul_2to1_ram_alu(5) <= \out_out_mul_2to1_ram_alu[5]~output_o\;

ww_out_out_mul_2to1_ram_alu(6) <= \out_out_mul_2to1_ram_alu[6]~output_o\;

ww_out_out_mul_2to1_ram_alu(7) <= \out_out_mul_2to1_ram_alu[7]~output_o\;
END structure;


