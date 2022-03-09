-- Divisão de Instrução
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DivInstru IS PORT (
    entrada 	: IN  std_logic_vector (7 DOWNTO 0);
    saida_OpCode : OUT std_logic_vector (3 DOWNTO 0);
    saida_rs 		: OUT std_logic_vector (1 DOWNTO 0);
    saida_rt 		: OUT std_logic_vector (1 DOWNTO 0);
    saida_jump 	: OUT std_logic_vector (3 DOWNTO 0)
);
END DivInstru;

ARCHITECTURE Behavior OF DivInstru IS
BEGIN
    saida_OpCode <=  entrada (7 DOWNTO 4);
    saida_rs 		<= entrada (3 DOWNTO 2);
    saida_rt 		<= entrada (1 DOWNTO 0);
    saida_jump 	<= entrada (3 DOWNTO 0);
END Behavior;

