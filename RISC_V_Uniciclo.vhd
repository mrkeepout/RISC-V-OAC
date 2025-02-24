library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RISC_V_Uniciclo is
    Port (
        clk 						: in STD_LOGIC;          					-- Sinal de clock
        reset 						: in STD_LOGIC;         					-- Sinal de reset
        pc_out 					    : out STD_LOGIC_VECTOR(31 downto 0);        -- Endereco da proxima instrucao
        data_to_memory 			    : out STD_LOGIC_VECTOR(31 downto 0);  	    -- Dado para a memoria RAM
        memory_write_enable 	    : out STD_LOGIC              				-- Sinal de escrita na memoria
    );
end RISC_V_Uniciclo;

architecture Behavioral of RISC_V_Uniciclo is
    
    -- Sinais PC
    signal pc_value, next_pc : STD_LOGIC_VECTOR(31 downto 0);
	 
	 -- Sinais ROM
    --signal instruction_rv : STD_LOGIC_VECTOR(31 downto 0);
    signal instruction : STD_LOGIC_VECTOR(31 downto 0);
	 
	 -- Sinais ULA
    signal alu_result, mem_data, alu_operand2 : STD_LOGIC_VECTOR(31 downto 0);
	 
	 -- Sinais gerador de imediato
    signal imm_value : STD_LOGIC_VECTOR(31 downto 0);
	 
	 -- Sinais de controle
    signal wren, mem_write, alu_src, mem_to_reg, branch : STD_LOGIC;
	 
	 -- Sinais Controle ULA
    signal alu_ctrl : STD_LOGIC_VECTOR(3 downto 0);
	 
	 -- Sinais RAM
    signal byte_en, sgn_en : STD_LOGIC;  -- Sinais adicionais para a RAM
    signal data_from_memory : STD_LOGIC_VECTOR(31 downto 0);
	 
	 -- Sinais registradores
    signal ro1, ro2 : STD_LOGIC_VECTOR(31 downto 0);
    signal write_data : STD_LOGIC_VECTOR(31 downto 0);
	 
    -- Sinais operacao ULA
	signal AluOP : STD_LOGIC_VECTOR(1 downto 0);
	 
    -- Componentes
    component PC is
        Port (
            clk 		: in STD_LOGIC;
            reset 	    : in STD_LOGIC;
            next_pc 	: in STD_LOGIC_VECTOR(31 downto 0);
            pc_value    : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    
    component rom_rv is
        Port (
            address : in STD_LOGIC_VECTOR(10 downto 0);
            instruction : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component ControlUnit is
        Port (
            opcode          : in STD_LOGIC_VECTOR(6 downto 0);
            wren            : out STD_LOGIC; 
            mem_write       : out STD_LOGIC;
            alu_src         : out STD_LOGIC; 
            mem_to_reg      : out STD_LOGIC; 
            branch          : out STD_LOGIC;
            AluOP           : out STD_LOGIC_VECTOR(1 downto 0)
        );
    end component;
    
    component XREGS is
        Port (
            clk 		    : in STD_LOGIC;
            reset 			: in STD_LOGIC;
            wren 			: in STD_LOGIC;
            rs1             : in STD_LOGIC_VECTOR(4 downto 0);
            rs2             : in STD_LOGIC_VECTOR(4 downto 0);
            rd 			    : in STD_LOGIC_VECTOR(4 downto 0);
            write_data 		: in STD_LOGIC_VECTOR(31 downto 0); --dado a ser escrito no reg
            ro1, ro2 		: out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component genImm32 is
        Port (
            instruction     : in STD_LOGIC_VECTOR(31 downto 0);
            immediate       : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    
    component ULA is
        Port (
            A, B : in STD_LOGIC_VECTOR(31 downto 0);
            control : in STD_LOGIC_VECTOR(3 downto 0);
            result : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    
    component ram_rv is
        Port (
            clk     : in  std_logic;                      -- Clock
            wren    : in  std_logic;                      -- Sinal de escrita (write enable)
            byte_en : in  std_logic;                      -- Acesso a byte (1) ou palavra (0)
            sgn_en  : in  std_logic;                      -- Acesso com sinal (1) ou sem sinal (0)
            address : in  std_logic_vector(12 downto 0);  -- Endereco de 13 bits
            datain  : in  std_logic_vector(31 downto 0);  -- Dado de entrada (32 bits)
            dataout : out std_logic_vector(31 downto 0)   -- Dado de saÃƒÂ­da (32 bits)
        );
    end component;
	 
	 component ALU_Control is
		Port (
			AluOP        : in STD_LOGIC_VECTOR(1 downto 0);
			funct3       : in STD_LOGIC_VECTOR(2 downto 0);
			funct7       : in STD_LOGIC_VECTOR(6 downto 0);
			alu_control  : out STD_LOGIC_VECTOR(3 downto 0)
		);
	 end component;
    
begin
    -- Instanciando modulos
    dp_pc_reg : PC 
        port map(
            clk, 
            reset, 
            next_pc, 
            pc_value
        );
		
    dp_instr_mem : rom_rv 
        port map(
            pc_value(10 downto 0),       -- Conecta os 11 bits menos significativos do PC
            instruction    -- A instrucao lida eh armazenada em instruction_rv
        );

    dp_control : ControlUnit 
        port map(
            instruction(6 downto 0), 
            wren, 
            mem_write, 
            alu_src, 
            mem_to_reg, 
            branch, 
            AluOP
        );

    -- MUX para selecionar o dado de sai­da da memoria ou da ALU (Precisa aprimorar)
    write_data <= data_from_memory when mem_to_reg = '1' else alu_result;
        
    dp_regs : XREGS
        port map(
            clk, 
            reset, 
            wren, 
            instruction(19 downto 15), -- rs1
            instruction(24 downto 20), -- rs2
            instruction(11 downto 7),  -- rd
            write_data,
            ro1,
            ro2
        );
		
		
    dp_imm_gen : genImm32 
        port map(
            instruction, 
            imm_value
        );
		  
	 dp_alu_control : ALU_Control 
		  port map(
				AluOP,
				instruction(14 downto 12), --funct3
				instruction(31 downto 25), --funct7
				alu_control => alu_ctrl
		  );
    
    -- Definir o operando B da ULA com um sinal intermediario
    alu_operand2 <= ro2 when alu_src = '0' else imm_value;
    --alu_control <= control;
    
    dp_alu : ULA 
        port map(
            ro1,
            alu_operand2,
            alu_ctrl,
            alu_result
        );

    
    -- Instanciacao da RAM
    dp_data_mem : ram_rv 
        port map(
            clk,
            mem_write,                  -- Sinal de escrita (wren)
            '0',                        -- byte_en (0 para acesso a palavra)
            '0',                        -- sgn_en (0 para acesso sem sinal)
            alu_result(12 downto 0),    -- Endereco de 13 bits
            ro2,                        -- Dado de entrada (datain)
            data_from_memory            -- Dado de sai­da (dataout)
        );
    
    -- Logica do PC
    next_pc <= std_logic_vector(unsigned(pc_value) + 4);
    pc_out <= pc_value;
    
    -- Conexao dos sinais de memoria
    data_to_memory <= ro2;
    memory_write_enable <= mem_write;
    
    
end Behavioral;