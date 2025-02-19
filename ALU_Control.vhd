library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Control is
    Port (
        ALUOp       : in STD_LOGIC_VECTOR(1 downto 0);  -- Sinal da Unidade de Controle
        funct3      : in STD_LOGIC_VECTOR(2 downto 0);  -- Campo funct3 da instrução
        funct7      : in STD_LOGIC_VECTOR(6 downto 0);  -- Campo funct7 da instrução
        alu_control : out STD_LOGIC_VECTOR(3 downto 0) -- Sinal de controle da ULA
    );
end ALU_Control;

architecture Behavioral of ALU_Control is
begin
    process(ALUOp, funct3, funct7)
    begin
        case ALUOp is
            when "00" =>  -- Instruções do tipo I (ADDI, LW, etc.)
                case funct3 is
                    when "000" => alu_control <= "0000";  -- ADD (para ADDI)
                    when others => alu_control <= "0000";  -- Operação padrão
                end case;

            when "01" =>  -- Instruções de desvio (BEQ, BNE, etc.)
                alu_control <= "0001";  -- SUB (para comparar rs1 e rs2)

            when "10" =>  -- Instruções do tipo R (ADD, SUB, AND, etc.)
                case funct3 is
                    when "000" =>  -- ADD ou SUB
                        if funct7 = "0000000" then
                            alu_control <= "0000";  -- ADD
                        elsif funct7 = "0100000" then
                            alu_control <= "0001";  -- SUB
                        end if;
                    when "001" =>  -- SLL (Shift Left Logical)
                        alu_control <= "0101";  -- SLL
                    when "010" =>  -- SLT (Set Less Than)
                        alu_control <= "1000";  -- SLT
                    when "011" =>  -- SLTU (Set Less Than Unsigned)
                        alu_control <= "1001";  -- SLTU
                    when "100" =>  -- XOR
                        alu_control <= "0100";  -- XOR
                    when "101" =>  -- SRL (Shift Right Logical) ou SRA (Shift Right Arithmetic)
                        if funct7 = "0000000" then
                            alu_control <= "0110";  -- SRL
                        elsif funct7 = "0100000" then
                            alu_control <= "0111";  -- SRA
                        end if;
                    when "110" =>  -- OR
                        alu_control <= "0011";  -- OR
                    when "111" =>  -- AND
                        alu_control <= "0010";  -- AND
                    when others => alu_control <= "0000";  -- Operação padrão
                end case;

            when others => alu_control <= "0000";  -- Operação padrão
        end case;
    end process;
end Behavioral;