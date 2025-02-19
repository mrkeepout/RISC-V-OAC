library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity genImm32 is
    port (
        instr : in std_logic_vector(31 downto 0); -- Instrução de 32 bits
        imm32 : out signed(31 downto 0)           -- Imediato de 32 bits
    );
end genImm32;

architecture behavior of genImm32 is
begin
    process(instr)
        variable imm_temp : signed(31 downto 0); -- Variável temporária para o imediato
    begin
        -- Inicializa o imediato com zero por padrão
        imm_temp := to_signed(0, 32);

        -- Decodifica o formato da instrução
        case instr(6 downto 0) is
            when "0110011" => -- R-type: Imediato inexistente
                imm_temp := to_signed(0, 32);

            when "0000011" | "0010011" | "1100111" => -- I-type

                if instr(14 downto 12) = "101" and instr(30) = '1' then
                	-- I-type* com shamt (shift amount)
                	imm_temp := to_signed(to_integer(unsigned(instr(24 downto 20))), 32);
           		else
                	-- I-type comum
                	imm_temp := resize(signed(instr(31 downto 20)), 32);
            	end if;

            when "0100011" => -- S-type
                imm_temp := resize(signed(instr(31 downto 25) & instr(11 downto 7)), 32);

            when "1100011" => -- SB-type
                imm_temp := resize(signed(instr(31) & instr(7) & instr(30 downto 25) & instr(11 downto 8) & '0'), 32);

            when "0110111" | "0010111" => -- U-type
                imm_temp := resize(signed(instr(31 downto 12) & "000000000000"), 32); -- necessario otimizacao

            when "1101111" => -- UJ-type
                imm_temp := resize(signed(instr(31) & instr(19 downto 12) & instr(20) & instr(30 downto 21) & '0'), 32);

            when others => -- Caso não identificado
                imm_temp := to_signed(0, 32);
        end case;

        -- Atribui o resultado para a saída
        imm32 <= imm_temp;
    end process;
end behavior;
