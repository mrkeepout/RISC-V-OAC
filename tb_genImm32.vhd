library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_genImm32 is
end tb_genImm32;

architecture behavior of tb_genImm32 is
    -- Declaração de sinais para conectar ao módulo testado
    signal instr : std_logic_vector(31 downto 0);
    signal imm32 : signed(31 downto 0);

    -- Constantes para os testes
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instância do módulo genImm32
    uut: entity work.genImm32
        port map (
            instr => instr,
            imm32 => imm32
        );

    -- Processo de geração de estímulos
    stimulus: process
    begin
        -- Instrução: R-type (add t0, zero, zero)
        instr <= x"000002B3";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(0, 32) report "Erro no teste R-type" severity failure;

        -- Instrução: I-type (lw t0, 16(zero))
        instr <= x"01002283";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(16, 32) report "Erro no teste I-type (16)" severity failure;

        -- Instrução: I-type (addi t1, zero, -100)
        instr <= x"F9C00313";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(-100, 32) report "Erro no teste I-type (-100)" severity failure;

        -- Instrução: I-type (xori t0, t0, -1)
        instr <= x"FFF2C293";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(-1, 32) report "Erro no teste I-type (-1)" severity failure;

        -- Instrução: I-type (addi t1, zero, 354)
        instr <= x"16200313";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(354, 32) report "Erro no teste I-type (354)" severity failure;

        -- Instrução: I-type (jalr zero, zero, 0x18)
        instr <= x"01800067";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(24, 32) report "Erro no teste I-type (24)" severity failure;

        -- Instrução: I-type* (srai t1, t2, 10)
        instr <= x"40A3D313";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(10, 32) report "Erro no teste I-type* (10)" severity failure;

        -- Instrução: U-type (lui s0, 2)
        instr <= x"00002437";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(16#2000#, 32) report "Erro no teste U-type" severity failure;

        -- Instrução: S-type (sw t0, 60(s0))
        instr <= x"02542E23";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(60, 32) report "Erro no teste S-type" severity failure;

        -- Instrução: SB-type (bne t0, t0, -32)
        instr <= x"FE5290E3";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(-32, 32) report "Erro no teste SB-type" severity failure;

        -- Instrução: UJ-type (jal rot)
        instr <= x"00C000EF";
        wait for CLK_PERIOD;
        assert imm32 = to_signed(12, 32) report "Erro no teste UJ-type" severity failure;

        -- Finaliza os testes
        report "Todos os testes passaram!" severity note;
        wait;
    end process;
end behavior;
