-- extensor 2x8
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY Ext2x8 IS
PORT(
	P  : IN std_logic_vector(1 downto 0);
	OP	: OUT std_logic_vector(7 downto 0)
);
END Ext2x8;
ARCHITECTURE behavior OF Ext2x8 IS
BEGIN
	PROCESS (P)
	BEGIN
		OP <= ("000000") & P;
END PROCESS;
END behavior;