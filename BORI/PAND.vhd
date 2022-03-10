-- And
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY PAND IS
PORT(
	A : IN  std_logic;
	B : IN  std_logic;
	O : OUT std_logic  
);
END PAND;
ARCHITECTURE behavior OF PAND IS
BEGIN
	O <= A AND B;
END behavior;