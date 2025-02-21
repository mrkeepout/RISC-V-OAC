library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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

    -- Sinais de banco de registradores
    signal reg_rs1, reg_rs2, reg_rd : STD_LOGIC_VECTOR(4 downto 0);
    signal reg_write_data, reg_ro1, reg_ro2 : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_wren : STD_LOGIC := '0';

    -- Período do clock
    constant clk_period : time := 10 ns;

    -- Memória de instruções (ROM)
    type rom_type is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
    signal rom : rom_type := (
        x"00000013",  -- NOP (ADDI x0, x0, 0)
        x"00100093",  -- ADDI x1, x0, 1   (x1 = 1)
        x"00200113",  -- ADDI x2, x0, 2   (x2 = 2)
        x"002081B3",  -- ADD  x3, x1, x2  (x3 = x1 + x2 = 3)
        x"404181B3",  -- SUB  x3, x3, x1  (x3 = x3 - x1 = 2)
        x"00320233",  -- ADD  x4, x0, x3  (x4 = x0 + x3 = 2)
        x"004002B3",  -- ADD  x5, x0, x4  (x5 = x0 + x4 = 2)
        x"004282B3",  -- AND  x5, x5, x4  (x5 = x5 & x4 = 2)
        x"00530333",  -- ADD  x6, x6, x5  (x6 = x6 + x5 = 2)
        x"006383B3",  -- ADD  x7, x7, x6  (x7 = x7 + x6 = 2)
        x"007403B3",  -- ADD  x8, x8, x7  (x8 = x8 + x7 = 2)
        -- Instruções de Branch
        x"00000063",  -- BEQ x0, x0, 0   (Desvio se x0 == x0, desvio para a próxima instrução)
        x"00108063",  -- BEQ x1, x0, 2   (Desvio se x1 == x0, desvio não tomado)
        -- Instruções de Store
        x"00212223",  -- SW x2, 0(x4)    (Armazena x2 na memória no endereço x4 + 0)
        -- NOP para finalizar
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000",  -- NOP
		  x"00000000",  -- NOP
        x"00000000",  -- NOP
        x"00000000"   -- NOP
    );

    -- Memória de dados simulado (RAM)
    type ram_type is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
    signal ram : ram_type := (others => (others => '0'));

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

    -- Instanciação do banco de registradores
    XREGS_inst: entity work.XREGS
        generic map (
            WSIZE => 32,
            REGS => 32
        )
        port map (
            clk => clk,
            reset => reset,
            wren => reg_wren,
            rs1 => reg_rs1,
            rs2 => reg_rs2,
            rd => reg_rd,
            write_data => reg_write_data,
            ro1 => reg_ro1,
            ro2 => reg_ro2
        );

    -- Geração do clock
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Processo de teste
    test_process: process
    begin
        -- Reset inicial
        reset <= '1';
        wait for clk_period;
        reset <= '0';

        -- Carregar instruções da ROM e verificar resultados
        for i in 0 to 31 loop
            instruction <= rom(i);
            wait for clk_period;

            -- Atualizar sinais de entrada do banco de registradores
            reg_rs1 <= instruction(19 downto 15);
            reg_rs2 <= instruction(24 downto 20);
            reg_rd <= instruction(11 downto 7);
            reg_write_data <= reg_ro1;

            -- Definir reg_wren baseado no opcode
            if instruction(6 downto 0) = "0010011" or instruction(6 downto 0) = "0110011" then
                reg_wren <= '1';
            else
                reg_wren <= '0';
            end if;

            -- Verificar os resultados após cada instrução
            case i is
                when 1 =>
                    assert reg_ro1 = x"00000001"
                    report "Erro: ADDI x1, x0, 1 falhou"
                    severity error;
                when 2 =>
                    assert reg_ro2 = x"00000002"
                    report "Erro: ADDI x2, x0, 2 falhou"
                    severity error;
                when 3 =>
                    assert reg_ro1 = x"00000003"
                    report "Erro: ADD x3, x1, x2 falhou"
                    severity error;
                when 4 =>
                    assert reg_ro1 = x"00000002"
                    report "Erro: SUB x3, x3, x1 falhou"
                    severity error;
                when 5 =>
                    assert reg_ro1 = x"00000002"
                    report "Erro: ADD x4, x0, x3 falhou"
                    severity error;
                when 6 =>
                    assert reg_ro1 = x"00000002"
                    report "Erro: ADD x5, x0, x4 falhou"
                    severity error;
                when 7 =>
                    assert reg_ro1 = x"00000002"
                    report "Erro: AND x5, x5, x4 falhou"
                    severity error;
                when 8 =>
                    assert reg_ro1 = x"00000002"
                    report "Erro: ADD x6, x6, x5 falhou"
                    severity error;
                when 9 =>
                    assert reg_ro1 = x"00000002"
                    report "Erro: ADD x7, x7, x6 falhou"
                    severity error;
                when 10 =>
                    assert reg_ro1 = x"00000002"
                    report "Erro: ADD x8, x8, x7 falhou"
                    severity error;
                when 12 =>
                    assert pc_out = std_logic_vector(to_unsigned(16, 32))
                    report "Erro: BEQ x0, x0, 0 falhou"
                    severity error;
                when 13 =>
                    assert pc_out = std_logic_vector(to_unsigned(20, 32))
                    report "Erro: BEQ x1, x0, 2 falhou"
                    severity error;
                when 14 =>
                    assert ram(to_integer(unsigned(reg_ro1))) = reg_ro2
                    report "Erro: SW x2, 0(x4) falhou"
                    severity error;
                when others =>
                    null;
            end case;
        end loop;

        -- Finalização do teste
        report "Testes concluídos com sucesso!" severity note;
        assert false report "Fim da simulação" severity failure;
    end process;
end Behavioral;