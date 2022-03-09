-- Counter PC
library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY CounterPC IS
    PORT (
        Clock     : IN std_logic;
        entrada 	   : IN std_logic_vector (7 DOWNTO 0);
        saida 	: OUT std_logic_vector (7 DOWNTO 0)
    );
END CounterPC;

ARCHITECTURE Behavior OF CounterPC IS
BEGIN
    PROCESS (Clock)
    BEGIN
        saida <= entrada + "00000001";
    END PROCESS;
END Behavior;