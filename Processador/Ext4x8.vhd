-- Extensor 4x8
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY Ext4x8 IS
PORT(
	P 	: IN std_logic_vector(3 downto 0);
	OP : OUT std_logic_vector (7 downto 0)
);
END Ext4x8;

ARCHITECTURE behavior OF Ext4x8 IS
BEGIN
	PROCESS (P)
	BEGIN
		OP <= ("0000") & P;
END PROCESS;
END behavior;
