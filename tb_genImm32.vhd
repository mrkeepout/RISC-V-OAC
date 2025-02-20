library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_genImm32 is
end tb_genImm32;

architecture behavior of tb_genImm32 is
    -- Declaração de sinais para conectar ao módulo testado
    signal instruction : std_logic_vector(31 downto 0);
    signal immediate : std_logic_vector(31 downto 0);

    -- Constantes para os testes
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instância do módulo genImm32
    uut: entity work.genImm32
        port map (
            instruction => instruction,
            immediate => immediate
        );

    -- Processo de geração de estímulos
    stimulus: process
    begin
        -- instructionução: R-type (add t0, zero, zero)
        instruction <= x"000002B3";
        wait for CLK_PERIOD;
        assert immediate = to_signed(0, 32) report "Erro no teste R-type" severity failure;

        -- instructionução: I-type (lw t0, 16(zero))
        instruction <= x"01002283";
        wait for CLK_PERIOD;
        assert immediate = to_signed(16, 32) report "Erro no teste I-type (16)" severity failure;

        -- instructionução: I-type (addi t1, zero, -100)
        instruction <= x"F9C00313";
        wait for CLK_PERIOD;
        assert immediate = to_signed(-100, 32) report "Erro no teste I-type (-100)" severity failure;

        -- instructionução: I-type (xori t0, t0, -1)
        instruction <= x"FFF2C293";
        wait for CLK_PERIOD;
        assert immediate = to_signed(-1, 32) report "Erro no teste I-type (-1)" severity failure;

        -- instructionução: I-type (addi t1, zero, 354)
        instruction <= x"16200313";
        wait for CLK_PERIOD;
        assert immediate = to_signed(354, 32) report "Erro no teste I-type (354)" severity failure;

        -- instructionução: I-type (jalr zero, zero, 0x18)
        instruction <= x"01800067";
        wait for CLK_PERIOD;
        assert immediate = to_signed(24, 32) report "Erro no teste I-type (24)" severity failure;

        -- instructionução: I-type* (srai t1, t2, 10)
        instruction <= x"40A3D313";
        wait for CLK_PERIOD;
        assert immediate = to_signed(10, 32) report "Erro no teste I-type* (10)" severity failure;

        -- instructionução: U-type (lui s0, 2)
        instruction <= x"00002437";
        wait for CLK_PERIOD;
        assert immediate = to_signed(16#2000#, 32) report "Erro no teste U-type" severity failure;

        -- instructionução: S-type (sw t0, 60(s0))
        instruction <= x"02542E23";
        wait for CLK_PERIOD;
        assert immediate = to_signed(60, 32) report "Erro no teste S-type" severity failure;

        -- instructionução: SB-type (bne t0, t0, -32)
        instruction <= x"FE5290E3";
        wait for CLK_PERIOD;
        assert immediate = to_signed(-32, 32) report "Erro no teste SB-type" severity failure;

        -- instructionução: UJ-type (jal rot)
        instruction <= x"00C000EF";
        wait for CLK_PERIOD;
        assert immediate = to_signed(12, 32) report "Erro no teste UJ-type" severity failure;

        -- Finaliza os testes
        report "Todos os testes passaram!" severity note;
        wait;
    end process;
end behavior;
