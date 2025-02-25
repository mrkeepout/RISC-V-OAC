library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RISC_V_Uniciclo is
    Port (
        clk 						: in STD_LOGIC;          					-- Sinal de clock
        reset 						: in STD_LOGIC         					-- Sinal de reset       -- Endereco da proxima instrucao
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
    signal wren, mem_write, alu_src, mem_to_reg, branch, jump, is_aui, is_lui : STD_LOGIC;
	 
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
    signal alu_zero : STD_LOGIC;
	 
	 -- Sinais para os MUXs
    signal mem_address : STD_LOGIC_VECTOR(31 downto 0);
    signal mem_access  : STD_LOGIC;  -- Sinal para selecionar acesso a memoria de dados ou instrucoes
	 
	 
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
            address : in STD_LOGIC_VECTOR(9 downto 0);
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
            jump            : out STD_LOGIC;
            AluOP           : out STD_LOGIC_VECTOR(1 downto 0);
            is_aui          : out STD_LOGIC;
            is_lui          : out STD_LOGIC
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
            write_data 	    : in STD_LOGIC_VECTOR(31 downto 0); --dado a ser escrito no reg
            ro1, ro2 		: out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component genImm32 is
        Port (
            instruction     : in STD_LOGIC_VECTOR(31 downto 0);
            immediate       : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    
    --dp_ULA : ULA 
    --port map(
    --    ro1 => A,
    --    alu_operand2 => B,
    --    alu_ctrl,
    --    is_aui => is_aui,
    --    is_lui => is_lui,
    --    result => alu_result,
    --    zero => alu_zero
    --);


    component ULA is
        Port (
            A, B        : in STD_LOGIC_VECTOR(31 downto 0);
            control     : in STD_LOGIC_VECTOR(3 downto 0);
            is_aui      : in STD_LOGIC;
            is_lui      : in STD_LOGIC;
            result      : out STD_LOGIC_VECTOR(31 downto 0);
            zero        : out STD_LOGIC
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
            dataout : out std_logic_vector(31 downto 0)   
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
	 
	 component mux_2to1 is
        Port (
            sel : in STD_LOGIC;
            a   : in STD_LOGIC_VECTOR(31 downto 0);
            b   : in STD_LOGIC_VECTOR(31 downto 0);
            y   : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    
begin
    -- Instanciando modulos
    dp_PC : PC 
        port map(
            clk, 
            reset, 
            next_pc, 
            pc_value
        );
		
    dp_INSTRUC_MEM : rom_rv 
        port map(
            pc_value(11 downto 2),     -- Conecta os 11 bits menos significativos do PC
            instruction    			   -- A instrucao lida eh armazenada em instruction
        );

    dp_CONTROL : ControlUnit 
        port map(
            instruction(6 downto 0), 
            wren, 
            mem_write, 
            alu_src, 
            mem_to_reg, 
            branch,
            jump, 
            AluOP,
            is_aui,
            is_lui
        );
	
    dp_IMM_GEN : genImm32 
        port map(
            instruction, 
            imm_value
        );
      
    dp_ALU_CONTROL : ALU_Control 
        port map(
              AluOP,
              instruction(14 downto 12), --funct3
              instruction(31 downto 25), --funct7
              alu_control => alu_ctrl
        );

    -- MUX define se vai usar o dado da memoria ou o dado da ULA 
    dp_MUX_MEM_ALU : mux_2to1
        port map (
            sel => mem_to_reg,          -- Sinal de selecao
            a   => alu_result,          -- Entrada A (dado da ULA)
            b   => data_from_memory,    -- Entrada B (dado da memoria)
            y   => write_data           -- Sai­da (dado a ser escrito no registrador)
        );

    dp_ULA : ULA 
        port map(
            ro1,
            alu_operand2,
            alu_ctrl,
            is_aui => is_aui,
            is_lui => is_lui,
            result => alu_result,
            zero => alu_zero
        );

    dp_XREGS : XREGS
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
		    
    -- Instanciacao da RAM
    dp_RAM : ram_rv 
        port map(
            clk,
            mem_write,                  -- Sinal de escrita (wren)
            '0',                        -- byte_en (0 para acesso a palavra)
            '0',                        -- sgn_en (0 para acesso sem sinal)
            alu_result(12 downto 0),    -- Endereco de 13 bits
            ro2,                        -- Dado de entrada (datain)
            data_from_memory            -- Dado de saiÂ­da (dataout)
        );
    
    -- MUX define se a ULA vai usar o registrador 2 ou o imediato
    dp_MUX_ULA_IMM : mux_2to1
        port map (
            sel => alu_src,         -- Sinal de selecao
            a   => ro2,             -- Entrada A (dado da ULA)
            b   => imm_value,       -- Entrada B (dado da memoria)
            y   => alu_operand2     -- Sai­da (dado a ser escrito no registrador)
        );

    --dp_MUX_ULA_AUIPC : mux_2to1
    --    port map (
    --        sel => is_aui,      -- Sinal de selecao
    --        a   => ro,         -- Entrada A (dado da ULA)
    --        b   => pc_value,    -- Entrada B (dado da memoria)
    --        y   => ro1          -- Sai­da (dado a ser escrito no registrador)
    --    );

    -- Logica do PC (falta otimizaçao)
    process(clk, reset ,pc_value, branch, jump, alu_zero, imm_value, instruction)
    begin
        if branch = '1' and alu_zero = '1' then
            -- Instrucao BEQ: salta se a condicao for verdadeira
            next_pc <= std_logic_vector(unsigned(pc_value) + unsigned(imm_value));
        elsif jump = '1' then
            -- Instrucao JAL: salto incondicional
            next_pc <= std_logic_vector(unsigned(pc_value) + unsigned(imm_value));
        elsif reset = '1' then
            -- Reset: volta para o endereco 0
            next_pc <= (others => '0');
        else 
            next_pc <= std_logic_vector(unsigned(pc_value) + 4);
        end if;
    end process;
    

    --Logica da instrucao AUIPC
    --process(clk)
    --begin
    --    if rising_edge(clk) then
    --        if instruction(6 downto 0) = "0010111" then  -- AUIPC
    --           sel_auipc_lui <= '0';
	--		   elsif instruction(6 downto 0) = "0110111" then 
	--				sel_auipc_lui <= '1';
	--			else
	--				sel_auipc_lui <= '0';
    --        end if;
    --    end if;
    --end process;
    
end Behavioral;