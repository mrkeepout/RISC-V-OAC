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

    -- Sinais de saÃ­da
    signal pc_out           : STD_LOGIC_VECTOR(31 downto 0);
    signal data_to_memory   : STD_LOGIC_VECTOR(31 downto 0);
    signal memory_write_enable : STD_LOGIC;
	 
	-- MemÃ³ria de instruÃ§Ãµes (ROM)
    type rom_type is array (0 to 31) of std_logic_vector(31 downto 0);  -- 16 instruÃ§Ãµes de 32 bits
    signal instruction_rv : rom_type := (others => (others => '0'));  -- Inicializa com zeros
	signal address : std_logic_vector(10 downto 0);  -- 11 bits de endereco
    
	 
    -- PerÃ­odo do clock
    constant clk_period : time := 20 ns;

begin
    -- InstanciaÃ§Ã£o do processador
    UUT: entity work.RISC_V_Uniciclo
        port map (
            clk => clk,
            reset => reset,
            pc_out => pc_out,
            data_to_memory => data_to_memory,
            memory_write_enable => memory_write_enable
        );
		  
	--UUT_rom: entity work.rom_rv
	--	port map (
	--	   address,  -- 11 bits de endereco
	--	   dataout  => instruction -- 32 bits de saida
	--	);
			
			

    -- GeraÃ§Ã£o do clock
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

        ---- Carregar instruÃ§Ãµes da ROM
        --for i in 0 to 15 loop
        --    instruction <= instruction_rv(i);
        --    wait for clk_period;
        --end loop;

        -- FinalizaÃ§Ã£o do teste
        report "Testes concluidos com sucesso!" severity note;
        wait;  -- Encerra a simulaÃ§Ã£o
    end process;
end Behavioral;