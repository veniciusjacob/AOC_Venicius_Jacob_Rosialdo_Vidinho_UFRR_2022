LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Main IS
	PORT (
		Clock : IN STD_LOGIC;
    	out_out_pc : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    	out_out_rom : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    	out_opcode : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    	out_rs : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    	out_rt : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    	out_endereco : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    	out_out_br_reg_A : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    	out_out_br_reg_B : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    	out_out_alu_result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    	out_out_overflow : OUT STD_LOGIC;
    	out_out_memoria_ram : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    	out_out_mul_2to1_ram_alu : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END Main;

ARCHITECTURE Behavior OF Main IS
COMPONENT ProgramCounter IS
PORT(
	Clock 	: IN std_logic;
   entrada 	: IN std_logic_vector (7 DOWNTO 0);
   saida 	: OUT std_logic_vector (7 DOWNTO 0)
);
END COMPONENT;

COMPONENT CounterPC IS
    PORT (
   Clock     : IN std_logic;
   entrada 	   : IN std_logic_vector (7 DOWNTO 0);
   saida 	: OUT std_logic_vector (7 DOWNTO 0)
    );
END COMPONENT;

COMPONENT MRom IS
PORT(
	Clock      : IN std_logic;
	entrada    : IN std_logic_vector (7 DOWNTO 0);
	saida      : OUT std_logic_vector (7 DOWNTO 0)
);
END COMPONENT;

COMPONENT DivInstru IS 
PORT (
    entrada 	: IN  std_logic_vector (7 DOWNTO 0);
    saida_OpCode : OUT std_logic_vector (3 DOWNTO 0);
    saida_rs 		: OUT std_logic_vector (1 DOWNTO 0);
    saida_rt 		: OUT std_logic_vector (1 DOWNTO 0);
    saida_jump 	: OUT std_logic_vector (3 DOWNTO 0)
);
END COMPONENT;

COMPONENT UniControle IS
PORT (
        Clock	  : IN std_logic;
        OpCode   : IN std_logic_vector (3 DOWNTO 0);
        Jump, Branch, MemRead, MemtoReg    : OUT std_logic;
        ALUOp    : OUT std_logic_vector (2 DOWNTO 0);
        MemWrite, ALUSrc, RegWrite : OUT std_logic
);
END COMPONENT;

COMPONENT BancReg IS
PORT(
	Clock 		: IN std_logic;
   RegWrite 	: IN std_logic;
   ReadReg1, ReadReg2 	: IN std_logic_vector (1 DOWNTO 0); 
   WriteData : IN std_logic_vector (7 DOWNTO 0);
   ReadData1, ReadData2 : OUT std_logic_vector (7 DOWNTO 0)
);
END COMPONENT;

COMPONENT Ext2x8 IS
PORT(
	P  : IN std_logic_vector(1 downto 0);
	OP	: OUT std_logic_vector(7 downto 0)
);
END COMPONENT;

COMPONENT mult2x1 IS 
PORT(
	Sel     : IN  std_logic;
	A, B    : IN 	std_logic_vector(7 downto 0);
	O       : OUT std_logic_vector(7 downto 0) 
);
END COMPONENT;

COMPONENT ALU IS
    PORT (
        Clock 			 : IN  std_logic;
        ALUOp 			 : IN  std_logic_vector (2 DOWNTO 0);
        input_A 	    : IN  std_logic_vector (7 DOWNTO 0);
        input_B 		 : IN  std_logic_vector (7 DOWNTO 0);
        output_Result : OUT std_logic_vector (7 DOWNTO 0);
        Zero          : OUT std_logic;
        Overflow      : OUT std_logic
    );
END COMPONENT;

COMPONENT MRam IS
PORT(
	Clock, MemWrite, MemRead : IN std_logic;
	Address, WriteData       : IN std_logic_vector (7 DOWNTO 0);
	ReadData                 : OUT std_logic_vector (7 DOWNTO 0)
	
);
END COMPONENT;

COMPONENT Ext4x8 IS
PORT(
	P 	: IN std_logic_vector(3 downto 0);
	OP : OUT std_logic_vector (7 downto 0)
);
END COMPONENT;

COMPONENT PAND IS
PORT(
	A : IN  std_logic;
	B : IN  std_logic;
	O : OUT std_logic  
);
END COMPONENT;

--	somador PC 
	SIGNAL out_counter_pc : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	PC
	SIGNAL out_pc : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	rom
	SIGNAL out_rom : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	Divisao da instrucao
	SIGNAL out_di_7_4 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL out_di_3_2 : STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL out_di_1_0 : STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL out_di_3_0 : STD_LOGIC_VECTOR (3 DOWNTO 0);

--	Unidade de Controle
	SIGNAL out_uc_Jump : STD_LOGIC;
	SIGNAL out_uc_Branch : STD_LOGIC;
	SIGNAL out_uc_MemRead : STD_LOGIC;
	SIGNAL out_uc_MemtoReg : STD_LOGIC;
	SIGNAL out_uc_ALUOp : STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL out_uc_MemWrite : STD_LOGIC;
	SIGNAL out_uc_ALUSrc : STD_LOGIC;
	SIGNAL out_uc_RegWrite : STD_LOGIC;

--	Banco de registradores
	SIGNAL out_br_reg_A : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL out_br_reg_B : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	extensor sinal 2 bits para 8 bits
	SIGNAL out_es_2_8 : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	multiplexador 2x1 8 bits, banco registradores e ALU
	SIGNAL out_mul_2to1_br_alu : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	ALU
	SIGNAL out_alu_result : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL out_alu_zero : STD_LOGIC;
	SIGNAL out_overflow : STD_LOGIC;

--	Memoria Ram
	SIGNAL out_memoria_ram : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	multiplexador 2x1 8 bits, ALU e memoria ram
	SIGNAL out_mul_2to1_ram_alu : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	Extensor sinal 4 bits para 8 bits
	SIGNAL out_es_4_8 : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	porta and
	SIGNAL out_and_gate : STD_LOGIC;

--	multiplexador 2x1 8 bits, somador do pc e extensor de sinal 4 bits para 8 bits do jump
	SIGNAL out_mul_2to1_add_pc_jump : STD_LOGIC_VECTOR (7 DOWNTO 0);

--	multiplexador 2x1 8 bits, saida do multiplexador anterior e e extensor de sinal 4 bits para 8 bits do jump
	SIGNAL out_port_map_mul_2to1_jump : STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
	port_map_somador_pc : CounterPc PORT MAP(Clock, out_pc, out_counter_pc);

	port_map_pc : ProgramCounter PORT MAP(Clock, out_port_map_mul_2to1_jump, out_pc);

	port_map_memoria_rom : MRom PORT MAP(Clock, out_pc, out_rom);

	port_map_divisao_instrucao : DivInstru PORT MAP(out_rom, out_di_7_4, out_di_3_2, out_di_1_0, out_di_3_0);

	port_map_unidade_controle : UniControle PORT MAP(Clock, out_di_7_4, out_uc_Jump, out_uc_Branch, out_uc_MemRead, out_uc_MemtoReg, out_uc_ALUOp, out_uc_MemWrite, out_uc_ALUSrc, out_uc_RegWrite);

	port_map_banco_registradores : BancReg PORT MAP(Clock, out_uc_RegWrite, out_di_3_2, out_di_1_0, out_mul_2to1_ram_alu, out_br_reg_A, out_br_reg_B);

	port_map_extensor_sinal_2_8 : Ext2x8 PORT MAP(out_di_1_0, out_es_2_8);

	port_map_mul_2to1_br_alu : mult2x1 PORT MAP(out_uc_ALUSrc, out_br_reg_B, out_es_2_8, out_mul_2to1_br_alu);

	port_map_alu : ALU PORT MAP(Clock, out_uc_ALUOp, out_br_reg_A, out_mul_2to1_br_alu, out_alu_result, out_alu_zero, out_overflow);

	port_map_memoria_ram : MRam PORT MAP(Clock, out_uc_MemWrite, out_uc_MemRead, out_es_2_8, out_alu_result, out_memoria_ram);

	port_map_mul_2to1_ram_alu : mult2x1 PORT MAP(out_uc_MemtoReg, out_alu_result, out_memoria_ram, out_mul_2to1_ram_alu);

	port_map_extensor_sinal_4_8 : Ext4x8 PORT MAP(out_di_3_0, out_es_4_8);

	port_map_and_gate : PAND PORT MAP(out_uc_Branch, out_alu_zero, out_and_gate);

	port_map_mul_2to1_add_pc_jump : mult2x1 PORT MAP(out_and_gate, out_counter_pc, out_es_4_8, out_mul_2to1_add_pc_jump);

	port_map_mul_2to1_jump : mult2x1 PORT MAP(out_uc_Jump, out_mul_2to1_add_pc_jump, out_es_4_8, out_port_map_mul_2to1_jump);

--	Resultados Saidas
	out_out_pc <= out_pc;
	out_out_rom <= out_rom;
	out_opcode <= out_di_7_4;
	out_rs <= out_di_3_2;
	out_rt <= out_di_1_0;
	out_endereco <= out_di_3_0;
	out_out_br_reg_A <= out_br_reg_A;
	out_out_br_reg_B <= out_br_reg_B;
	out_out_alu_result <= out_alu_result;
	out_out_overflow <= out_overflow;
	out_out_memoria_ram <= out_memoria_ram;
	out_out_mul_2to1_ram_alu <= out_mul_2to1_ram_alu;
END Behavior;