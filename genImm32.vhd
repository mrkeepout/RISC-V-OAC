library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity genImm32 is
    port (
        instruction : in std_logic_vector(31 downto 0); -- Instrução de 32 bits
        immediate : out std_logic_vector(31 downto 0)   -- Imediato de 32 bits
    );
end genImm32;

architecture behavior of genImm32 is
begin
    process(instruction)
        variable imm_temp : std_logic_vector(31 downto 0); -- Variável temporária para o imediato
    begin
        -- Inicializa o imediato com zero por padrão
        imm_temp := (others => '0');

        -- Decodifica o formato da instrução
        case instruction(6 downto 0) is
            when "0110011" => -- R-type: Imediato inexistente
                imm_temp := (others => '0');

            when "0000011" | "0010011" | "1100111" => -- I-type

                if instruction(14 downto 12) = "101" and instruction(30) = '1' then
                    -- I-type* com shamt (shift amount)
                    imm_temp := (31 downto 5 => '0') & instruction(24 downto 20);
                else
                    -- I-type comum
                    imm_temp := (31 downto 11 => instruction(31), 10 downto 0 => instruction(30 downto 20));
                end if;

            when "0100011" => -- S-type
                imm_temp := (31 downto 11 => instruction(31), 10 downto 5 => instruction(30 downto 25), 4 downto 0 => instruction(11 downto 7));

            when "1100011" => -- SB-type
                imm_temp := (31 => instruction(31), 30 downto 25 => instruction(30 downto 25), 24 downto 1 => instruction(11 downto 8), 0 => '0');

            when "0110111" | "0010111" => -- U-type
                imm_temp := instruction(31 downto 12) & (11 downto 0 => '0');

            when "1101111" => -- UJ-type
                imm_temp := (31 => instruction(31), 30 downto 12 => instruction(19 downto 12), 11 => instruction(20), 10 downto 1 => instruction(30 downto 21), 0 => '0');

            when others => -- Caso não identificado
                imm_temp := (others => '0');
        end case;

        -- Atribui o resultado para a saída
        immediate <= imm_temp;
    end process;
end behavior;