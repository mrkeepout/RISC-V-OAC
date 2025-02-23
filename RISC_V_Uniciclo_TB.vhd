library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use std.env.stop;

entity RISC_V_Uniciclo_TB is
end RISC_V_Uniciclo_TB;

architecture Behavioral of RISC_V_Uniciclo_TB is
    -- Sinais de entrada
    signal clk              : STD_LOGIC := '0';
    signal reset            : STD_LOGIC := '0';
    signal instruction      : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal data_from_memory : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    -- Sinais de saída
    signal pc_out           : STD_LOGIC_VECTOR(31 downto 0);
    signal data_to_memory   : STD_LOGIC_VECTOR(31 downto 0);
    signal memory_write_enable : STD_LOGIC;
	 
	-- Memória de instruções (ROM)
    type rom_type is array (0 to 31) of std_logic_vector(31 downto 0);  -- 16 instruções de 32 bits
    signal instruction_rv : rom_type := (others => (others => '0'));  -- Inicializa com zeros
	signal address : std_logic_vector(10 downto 0);  -- 11 bits de endereco
    
    -- Sinais de controle
    signal opcode : STD_LOGIC_VECTOR(6 downto 0);
    signal wren, mem_write, alu_src, mem_to_reg, branch : STD_LOGIC;
    signal AluOP : STD_LOGIC_VECTOR(1 downto 0);

    -- Sinais XREGS
    signal rs1, rs2, rd : STD_LOGIC_VECTOR(4 downto 0);
    signal ro1, ro2 : STD_LOGIC_VECTOR(31 downto 0);
    signal write_data : STD_LOGIC_VECTOR(31 downto 0);
    
	 
    -- Período do clock
    constant clk_period : time := 10 ns;

begin
    -- Instanciação do processador
    UUT: entity work.RISC_V_Uniciclo
        port map (
            clk => clk,
            reset => reset,
            instruction => instruction,
            data_from_memory => data_from_memory,
            pc_out => pc_out,
            data_to_memory => data_to_memory,
            memory_write_enable => memory_write_enable
        );
		  
	UUT_rom: entity work.rom_rv
		port map (
		   address => pc_out(10 downto 0),  -- 11 bits de endereco
		   dataout => instruction   -- 32 bits de saida
		);

    UUT_ControlUnit: entity work.ControlUnit
        port map (
            opcode,
            wren,     
            mem_write,
            alu_src,  
            mem_to_reg,
            branch,
            AluOP
        );

				
    -- Geração do clock
    clk_process: process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Processo de teste
    test_process: process
    begin
        -- Reset inicial
        reset <= '1';
        wait for clk_period;
        reset <= '0';

        -- Finalização do teste
        report "Testes concluidos com sucesso!" severity note;
        wait;  -- Encerra a simulação
    end process;
end Behavioral;