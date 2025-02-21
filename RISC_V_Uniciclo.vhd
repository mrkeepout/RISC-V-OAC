library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity RISC_V_Uniciclo is
    Port (
        clk 						: in STD_LOGIC;          					-- Sinal de clock
        reset 						: in STD_LOGIC;         					-- Sinal de reset
        instruction 				: in STD_LOGIC_VECTOR(31 downto 0);  	-- Instrução da ROM
        data_from_memory 		: in STD_LOGIC_VECTOR(31 downto 0);  	-- Dado da memória RAM
        pc_out 					: out STD_LOGIC_VECTOR(31 downto 0);   -- Endereço da próxima instrução
        data_to_memory 			: out STD_LOGIC_VECTOR(31 downto 0);  	-- Dado para a memória RAM
        memory_write_enable 	: out STD_LOGIC              				-- Sinal de escrita na memória
    );
end RISC_V_Uniciclo;

architecture Behavioral of RISC_V_Uniciclo is
    -- Sinais internos para interconexão dos módulos
    signal pc_value : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal next_pc : STD_LOGIC_VECTOR(31 downto 0);
    signal alu_result : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_write_data : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_read_data1 : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_read_data2 : STD_LOGIC_VECTOR(31 downto 0);
    signal immediate : STD_LOGIC_VECTOR(31 downto 0);
    signal alu_control : STD_LOGIC_VECTOR(3 downto 0);
    signal reg_write_enable : STD_LOGIC;
    signal branch_taken : STD_LOGIC;
    signal zero : STD_LOGIC;  -- Sinal "zero" da ULA
    signal alu_input2 : STD_LOGIC_VECTOR(31 downto 0); -- Entrada B da ULA após o MUX
    signal alu_src : STD_LOGIC; -- Sinal de controle do MUX para selecionar entre reg_read_data2 e immediate

    -- Instanciação dos módulos
    component UnidadeControle is
        Port (
            opcode : in STD_LOGIC_VECTOR(6 downto 0);
            funct3 : in STD_LOGIC_VECTOR(2 downto 0);
            funct7 : in STD_LOGIC_VECTOR(6 downto 0);
            alu_control : out STD_LOGIC_VECTOR(3 downto 0);
            reg_write_enable : out STD_LOGIC;
            memory_write_enable : out STD_LOGIC;
            branch_taken : out STD_LOGIC;
            alu_src : out STD_LOGIC -- Sinal de controle para o MUX
        );
    end component;

	 component ULA is
		 generic (
			 WSIZE : natural := 32  -- Tamanho da palavra (32 bits para RISC-V)
		 );
		 port (
			 A      : in STD_LOGIC_VECTOR(WSIZE-1 downto 0);  -- Entrada A (rs1)
			 B      : in STD_LOGIC_VECTOR(WSIZE-1 downto 0);  -- Entrada B (rs2 ou imediato)
			 control: in STD_LOGIC_VECTOR(3 downto 0);        -- Sinal de controle da ULA
			 result : out STD_LOGIC_VECTOR(WSIZE-1 downto 0); -- Resultado da operação
			 zero   : out STD_LOGIC                           -- Sinal "zero" (1 se resultado = 0)
		 );
	 end component;

    component XREGS is
        Port (
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
				wren  : in  std_logic; -- Habilitação de escrita
            rs1 : in STD_LOGIC_VECTOR(4 downto 0);
            rs2 : in STD_LOGIC_VECTOR(4 downto 0);
            rd : in STD_LOGIC_VECTOR(4 downto 0);
            write_data : in STD_LOGIC_VECTOR(31 downto 0);
            ro1 : out STD_LOGIC_VECTOR(31 downto 0);
            ro2 : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component genImm32 is
        Port (
            instruction : in STD_LOGIC_VECTOR(31 downto 0);
            immediate : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component PC is
        Port (
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            next_pc : in STD_LOGIC_VECTOR(31 downto 0);
            pc_value : out STD_LOGIC_VECTOR(31 downto 0)
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
    -- Instanciação da Unidade de Controle
	UC: UnidadeControle port map (
        opcode => instruction(6 downto 0),
        funct3 => instruction(14 downto 12),
        funct7 => instruction(31 downto 25),
        alu_control => alu_control,
        reg_write_enable => reg_write_enable,
        memory_write_enable => memory_write_enable,
        branch_taken => branch_taken,
        alu_src => alu_src -- Sinal de controle do MUX
    );

    -- Instanciação da ULA
	ULA_inst: ULA
		generic map (
			WSIZE => 32  -- Tamanho da palavra (32 bits)
		)
		port map (
        A => reg_read_data1,        -- Valor do registrador rs1
        B => alu_input2,            -- Valor do registrador rs2 ou imediato (selecionado pelo MUX)
        control => alu_control,     -- Sinal de controle da ULA (gerado pela Unidade de Controle)
        result => alu_result,       -- Resultado da operação
        zero => zero                -- Sinal "zero" (1 se resultado = 0)
		);

    -- Instanciação do Banco de Registradores
    XREG: XREGS port map (
        clk => clk,
        reset => reset,
        rs1 => instruction(19 downto 15),
        rs2 => instruction(24 downto 20),
        rd => instruction(11 downto 7),
        write_data => reg_write_data,
        wren => reg_write_enable,
        ro1 => reg_read_data1,
        ro2 => reg_read_data2
    );

    -- Instanciação do Gerador de Imediatos
    IMM: genImm32 port map (
        instruction => instruction,
        immediate => immediate
    );

    -- Instanciação do PC
    PC_inst: PC port map (
        clk => clk,
        reset => reset,
        next_pc => next_pc,
        pc_value => pc_value
    );

    -- Instanciação do MUX para selecionar entre reg_read_data2 e immediate
    MUX_ALU: mux_2to1 port map (
        sel => alu_src,
        a => reg_read_data2,
        b => immediate,
        y => alu_input2
    );

    -- Lógica para o próximo valor do PC
    next_pc <= std_logic_vector(unsigned(pc_value) + 4) when branch_taken = '0' else
               std_logic_vector(unsigned(pc_value) + unsigned(immediate));

    -- Saída do PC 
    pc_out <= pc_value;

    -- Lógica para escrita na memória
    data_to_memory <= reg_read_data2;

end Behavioral;