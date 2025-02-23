-- Arquivo atualizado: ALU_Control.vhd
-- Correção de sintaxe para suporte correto às instruções

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_Control is
    Port (
        AluOP       : in STD_LOGIC_VECTOR(1 downto 0);
        funct3      : in STD_LOGIC_VECTOR(2 downto 0);
        funct7      : in STD_LOGIC_VECTOR(6 downto 0);
        alu_control : out STD_LOGIC_VECTOR(3 downto 0)
    );
end ALU_Control;

architecture Behavioral of ALU_Control is
begin
    process(ALUOp, funct3, funct7)
    begin
        case ALUOp is
            when "00" => 
                alu_control <= "0000"; -- Load/Store (LW, SW)
            when "01" => 
                case funct3 is
                    when "000" => alu_control <= "1000"; -- BEQ
                    when "001" => alu_control <= "1001"; -- BNE
                    when "100" => alu_control <= "1010"; -- BLT
                    when "101" => alu_control <= "1011"; -- BGE
                    when "110" => alu_control <= "1100"; -- BLTU
                    when "111" => alu_control <= "1101"; -- BGEU
                    when others => alu_control <= "0000";
                end case;
            when "10" => 
                case funct3 is
                    when "000" => 
                        if funct7 = "0000000" then 
                            alu_control <= "0000"; -- ADD
                        elsif funct7 = "0100000" then 
                            alu_control <= "0001"; -- SUB
                        else 
                            alu_control <= "0000";
                        end if;
                    when "111" => alu_control <= "0010"; -- AND
                    when "110" => alu_control <= "0011"; -- OR
                    when "100" => alu_control <= "0100"; -- XOR
                    when "001" => alu_control <= "0101"; -- SLL
                    when "101" => 
                        if funct7 = "0000000" then 
                            alu_control <= "0110"; -- SRL
                        elsif funct7 = "0100000" then 
                            alu_control <= "0111"; -- SRA
                        else 
                            alu_control <= "0000";
                        end if;
                    when "010" => alu_control <= "1000"; -- SLT
                    when "011" => alu_control <= "1001"; -- SLTU
                    when others => alu_control <= "0000";
                end case;
            when others => 
                alu_control <= "0000";
        end case;
    end process;
end Behavioral;
