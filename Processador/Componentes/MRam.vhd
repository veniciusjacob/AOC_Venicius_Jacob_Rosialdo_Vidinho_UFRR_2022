-- Memória Ram
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY MRam IS
PORT(
	Clock, MemWrite, MemRead : IN std_logic;
	Address, WriteData       : IN std_logic_vector (7 DOWNTO 0);
	ReadData                 : OUT std_logic_vector (7 DOWNTO 0)
	
);
END MRam;

ARCHITECTURE behavior OF MRam IS
    TYPE DataMemory IS ARRAY (0 TO 7) OF std_logic_vector (7 DOWNTO 0);
    SIGNAL M_Ram : DataMemory := (OTHERS => "00000000");
BEGIN
    PROCESS (Clock)
    BEGIN
        IF rising_edge(Clock) THEN
            IF (MemWrite = '1') THEN
                M_Ram(to_integer(unsigned(Address))) <= WriteData;
            END IF;
        END IF;
		  ReadData <= "00000000";
        IF (MemRead = '1') THEN
            ReadData <= M_Ram(to_integer(unsigned(Address)));
        END IF;
    END PROCESS;
END behavior;
