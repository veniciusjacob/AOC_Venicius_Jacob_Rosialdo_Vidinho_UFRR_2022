-- TempZero
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY TempZero IS
    PORT (
        entrada  : IN std_logic;
        saida    : OUT std_logic
);
END TempZero;

ARCHITECTURE Behavior OF TempZero IS
BEGIN
    saida <= entrada;
END Behavior;