-- Unidade de Controle
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY UniControle IS
PORT (
        Clock	  : IN std_logic;
        OpCode   : IN std_logic_vector (3 DOWNTO 0);
        Jump, Branch, MemRead, MemtoReg    : OUT std_logic;
        ALUOp    : OUT std_logic_vector (2 DOWNTO 0);
        MemWrite, ALUSrc, RegWrite : OUT std_logic
);
END UniControle;

ARCHITECTURE Behavior OF UniControle IS
BEGIN
    PROCESS (Clock)
    BEGIN
        CASE OpCode IS

            WHEN "0000" => -- lw
                Jump <= '0';
                Branch <= '0';
                MemRead <= '1';
                MemtoReg <= '1';
                ALUOp <= "000";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '1';

            WHEN "0001" => -- sw
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "000";
                MemWrite <= '1';
                ALUSrc <= '0';
                RegWrite <= '0';

            WHEN "0010" => -- add
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "001";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '1';
            
            WHEN "0011" => -- sub
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "010";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '1';

            WHEN "0100" => -- addi
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "001";
                MemWrite <= '0';
                ALUSrc <= '1';
                RegWrite <= '1';

            WHEN "0101" => -- subi
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "010";
                MemWrite <= '0';
                ALUSrc <= '1';
                RegWrite <= '1';

            WHEN "0110" => -- move
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "011";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '1';

            WHEN "0111" => -- li
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "011";
                MemWrite <= '0';
                ALUSrc <= '1';
                RegWrite <= '1';

            WHEN "1000" => -- beq
                Jump <= '0';
                Branch <= '1';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "100";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '0';

            WHEN "1001" => -- bne
                Jump <= '0';
                Branch <= '1';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "101";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '0';

            WHEN "1010" => -- cmp
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "110";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '0';

            WHEN "1011" => -- Jump
                Jump <= '1';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "111";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '0';            

            WHEN OTHERS =>
                Jump <= '0';
                Branch <= '0';
                MemRead <= '0';
                MemtoReg <= '0';
                ALUOp <= "111";
                MemWrite <= '0';
                ALUSrc <= '0';
                RegWrite <= '0';
        END CASE;
    END PROCESS;
END Behavior;

