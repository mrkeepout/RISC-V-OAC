library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle is
    Port (
        opcode : in STD_LOGIC_VECTOR(6 downto 0);        -- Campo opcode da instrução
        funct3 : in STD_LOGIC_VECTOR(2 downto 0);        -- Campo funct3 da instrução
        funct7 : in STD_LOGIC_VECTOR(6 downto 0);        -- Campo funct7 da instrução
        alu_control : out STD_LOGIC_VECTOR(3 downto 0);  -- Controle da ULA
        reg_write_enable : out STD_LOGIC;                -- Sinal de escrita no banco de registradores
        memory_write_enable : out STD_LOGIC;             -- Sinal de escrita na memória
        branch_taken : out STD_LOGIC                     -- Sinal de desvio (branch)
    );
end UnidadeControle;

architecture Behavioral of UnidadeControle is
begin
    process(opcode, funct3, funct7)
    begin
        -- Valores padrão para os sinais de controle
        alu_control <= "0000";  -- Operação padrão da ULA (soma)
        reg_write_enable <= '0';
        memory_write_enable <= '0';
        branch_taken <= '0';

        -- Decodificação do opcode
        case opcode is
            when "0110011" =>  -- Tipo R (operações com registradores)
                case funct3 is
                    when "000" =>  -- ADD
                        if funct7 = "0000000" then
                            alu_control <= "0010";  -- Soma
                        elsif funct7 = "0100000" then
                            alu_control <= "0110";  -- Subtração
                        end if;
                    when "111" =>  -- AND
                        alu_control <= "0000";  -- Operação AND
                    when others => null;
                end case;
                reg_write_enable <= '1';  -- Habilita escrita no banco de registradores

            when "0010011" =>  -- Tipo I (operações com imediato)
                case funct3 is
                    when "000" =>  -- ADDI
                        alu_control <= "0010";  -- Soma
                    when others => null;
                end case;
                reg_write_enable <= '1';  -- Habilita escrita no banco de registradores

            when "0100011" =>  -- Tipo S (store)
                memory_write_enable <= '1';  -- Habilita escrita na memória

            when "1100011" =>  -- Tipo B (branch)
                case funct3 is
                    when "000" =>  -- BEQ
                        branch_taken <= '1';  -- Habilita desvio
                    when others => null;
                end case;

            when others => null;
        end case;
    end process;
end Behavioral;