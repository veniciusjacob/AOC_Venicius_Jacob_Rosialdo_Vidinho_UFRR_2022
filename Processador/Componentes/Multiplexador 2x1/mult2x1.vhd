-- mult2x1
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY mult2x1 IS 
PORT(
	Sel     : IN  std_logic;
	A, B    : IN 	std_logic_vector(7 downto 0);
	O       : OUT std_logic_vector(7 downto 0) 
);
END mult2x1;

ARCHITECTURE behavior OF mult2x1 IS
BEGIN
	PROCESS ( Sel, A, B)
	BEGIN
		CASE Sel IS
			WHEN '0' => O <= A;
			WHEN '1' => O <= B;
		END CASE;
	END PROCESS;
END behavior;