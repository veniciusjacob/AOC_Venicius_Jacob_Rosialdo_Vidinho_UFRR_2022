-- ALU
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY ALU IS
    PORT (
        Clock 			 : IN  std_logic;
        ALUOp 			 : IN  std_logic_vector (2 DOWNTO 0);
        input_A 	    : IN  std_logic_vector (7 DOWNTO 0);
        input_B 		 : IN  std_logic_vector (7 DOWNTO 0);
        output_Result : OUT std_logic_vector (7 DOWNTO 0);
        Zero          : OUT std_logic;
        Overflow      : OUT std_logic
    );
END ALU;

ARCHITECTURE Behavior OF ALU IS

    COMPONENT TempZero IS
        PORT (
         entrada : IN std_logic;
			saida : OUT std_logic
        );
    END COMPONENT;
	 
    -- Para usar na instrução cmp
    SIGNAL in_TempZero : std_logic;
    SIGNAL out_TempZero : std_logic;

    -- Usados nas operações de adição e subtração
    SIGNAL result_adder : std_logic_vector (8 DOWNTO 0);
	 SIGNAL temp_overflow_adder : std_logic;
    SIGNAL result_sub : std_logic_vector (8 DOWNTO 0);
	 SIGNAL temp_overflow_sub : std_logic;

BEGIN
    port_map_TempZero : TempZero PORT MAP(in_TempZero, out_TempZero);
    result_adder <= ('0' & input_A) + ('0' & input_B);
    temp_overflow_adder <= result_adder(8) XOR input_A(7) XOR input_B(7) XOR result_adder(7);
	 result_sub <= ('0' & input_A) - ('0' & input_B);
	 temp_overflow_sub <= result_sub(8) XOR input_A(7) XOR input_B(7) XOR result_sub(7);
    PROCESS (Clock, ALUOp, input_A, input_B)
    BEGIN
        CASE ALUOp IS

            WHEN "000" => -- lw, sw
                output_Result <= input_A;
					 Overflow <= '0';

            WHEN "001" => --add, addi
                output_Result <= result_adder (7 DOWNTO 0);
                Overflow <= temp_overflow_adder;

            WHEN "010" => --sub, subi
                output_Result <= result_sub (7 DOWNTO 0);
				Overflow <= temp_overflow_sub;

            WHEN "011" => -- move, li
                output_Result <= input_B;
				Overflow <= '0';
					 
            WHEN "100" => -- beq
                IF out_TempZero = '1' THEN
                    Zero <= '1';
                ELSE
                    Zero <= '0';
                END IF;
                output_Result <= "00000000";

            WHEN "101" => -- bne
                IF out_TempZero = '0' THEN
                    Zero <= '1';
                ELSE
                    Zero <= '0';
                END IF;
                output_Result <= "00000000";

            WHEN "110" => -- cmp
                IF input_A = input_B THEN
                    in_TempZero <= '1';
                ELSE
                    in_TempZero <= '0';
                END IF;
                output_Result <= "00000000";

            WHEN OTHERS =>
                output_Result <= "00000000";
        END CASE;
    END PROCESS;
END Behavior;
