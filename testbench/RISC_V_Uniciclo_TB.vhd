library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use std.env.stop;

entity RISC_V_Uniciclo_TB is
end RISC_V_Uniciclo_TB;

architecture Behavioral of RISC_V_Uniciclo_TB is
    component RISC_V_Uniciclo 
        Port (
            clk 	: in STD_LOGIC;  -- Sinal de clock
            reset 	: in STD_LOGIC -- Sinal de reset  
        );
    end component;
    
    -- Sinais de entrada
    signal clk      : STD_LOGIC := '0';
    signal reset    : STD_LOGIC := '0';

    -- Periodo do clock
    constant clk_period : time := 20 ns;

begin
    -- Instanciacao do processador
    tb_Processador: entity work.RISC_V_Uniciclo
        port map (
            clk => clk,
            reset => reset
        );		

    -- Geracao do clock
    process
    begin
    
        wait for clk_period;
        for i in 0 to 500 loop
            clk <= not clk;
            wait for clk_period / 2;
        end loop;

        wait;

    end process;

    -- Processo de teste
    test_process: process
    begin
        -- Reset inicial
        reset <= '1';
        wait for clk_period;
        reset <= '0';

        -- Finalizacao do teste
        report "Finalizado com sucesso!" severity note;
        wait;  -- Encerra a simulaÃ§Ã£o

    end process;
end Behavioral;