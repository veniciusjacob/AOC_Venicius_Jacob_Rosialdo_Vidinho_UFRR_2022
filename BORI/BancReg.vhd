-- Banco Registrador
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;


ENTITY BancReg IS
PORT(
	Clock 		: IN std_logic;
   RegWrite 	: IN std_logic;
   ReadReg1, ReadReg2 	: IN std_logic_vector (1 DOWNTO 0); 
   WriteData : IN std_logic_vector (7 DOWNTO 0);
   ReadData1, ReadData2 : OUT std_logic_vector (7 DOWNTO 0)
);
END BancReg;

ARCHITECTURE Behavior OF BancReg IS
	TYPE BankofReg iS ARRAY(0 TO 3) OF std_logic_vector (7 DOWNTO 0);
	SIGNAL Reg : BankofReg;
	
BEGIN
	PROCESS(Clock)
	BEGIN
		IF rising_edge(Clock) THEN
			IF (RegWrite = '1') THEN
				Reg(to_integer(unsigned(ReadReg1))) <= WriteData;
			END IF;
		END IF;
		ReadData1 <= Reg(to_integer(unsigned(ReadReg1)));
      ReadData2 <= Reg(to_integer(unsigned(ReadReg2)));
    END PROCESS;
	 END Behavior;