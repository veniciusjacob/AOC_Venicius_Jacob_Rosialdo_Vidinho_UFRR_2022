-- Program Counter
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY ProgramCounter IS
PORT(
	Clock 	: IN std_logic;
   entrada 	: IN std_logic_vector (7 DOWNTO 0);
   saida 	: OUT std_logic_vector (7 DOWNTO 0)
);
END ProgramCounter;

ARCHITECTURE Behavior OF ProgramCounter IS
BEGIN
	PROCESS(Clock)
	BEGIN
		IF rising_edge(Clock) THEN
			saida <= entrada;
		END IF;
	END PROCESS;
END Behavior;