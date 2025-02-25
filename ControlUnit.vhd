-- Arquivo atualizado: ControlUnit.vhd
-- Correção de sintaxe e estrutura do case

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ControlUnit is
    Port (
        opcode          : in STD_LOGIC_VECTOR(6 downto 0);
        wren            : out STD_LOGIC; 
        mem_write       : out STD_LOGIC; 
        alu_src         : out STD_LOGIC; 
        mem_to_reg      : out STD_LOGIC; 
        branch          : out STD_LOGIC;
        jump            : out STD_LOGIC;
		zero 			: out STD_LOGIC;
        AluOP           : out STD_LOGIC_VECTOR(1 downto 0)
    );
end ControlUnit;

architecture Behavioral of ControlUnit is

    -- Constants for different opcodes
    constant opcode_JAL      : std_logic_vector(6 downto 0) := "1101111";
    constant opcode_tipo_I   : std_logic_vector(6 downto 0) := "0010011";
    constant opcode_tipo_IL  : std_logic_vector(6 downto 0) := "0000011";
    constant opcode_tipo_R   : std_logic_vector(6 downto 0) := "0110011";
    constant opcode_tipo_B   : std_logic_vector(6 downto 0) := "1100011";
    constant opcode_tipo_ST  : std_logic_vector(6 downto 0) := "0100011";
    constant opcode_eCALL    : std_logic_vector(6 downto 0) := "1110011";
    constant opcode_AUIPC    : std_logic_vector(6 downto 0) := "0010111";
    constant opcode_tipo_LUI : std_logic_vector(6 downto 0) := "0110111";
    constant opcode_JALR     : std_logic_vector(6 downto 0) := "1100111";

    --signal instrucao_atual : opcode(6 downto 0);

begin
    process(opcode)
    begin
        case opcode is
            when opcode_tipo_R =>  -- Tipo R (ADD, SUB, AND, OR, XOR, SLL, SRL, SRA)
                wren <= '1'; 
                mem_write <= '0'; 
                alu_src <= '0'; 
                mem_to_reg <= '0'; 
                branch <= '0';
                AluOP <= "10";
                jump <= '0';
                zero <= '0';
                
            when opcode_tipo_I => -- Tipo I (ADDI, ANDI, ORI, XORI, SLLI, SRLI, SRAI)
                wren <= '1'; 
                mem_write <= '0'; 
                alu_src <= '1'; 
                mem_to_reg <= '0'; 
                branch <= '0';
                AluOP <= "10";
                jump <= '0';
                zero <= '0';

            when "0000011" => -- LW
                wren <= '0'; 
                mem_write <= '0'; 
                alu_src <= '1'; 
                mem_to_reg <= '1'; 
                branch <= '0'; 
                AluOP <= "00";
                jump <= '0';
                zero <= '0';

            when "0100011" => -- SW
                wren <= '0'; 
                mem_write <= '1'; 
                alu_src <= '1'; 
                mem_to_reg <= '0'; 
                branch <= '0'; 
                AluOP <= "00";
                jump <= '0';
                zero <= '0';

            when "1100011" => -- BEQ, BNE, BLT, BGE, BLTU, BGEU
                wren <= '0'; 
                mem_write <= '0'; 
                alu_src <= '0'; 
                mem_to_reg <= '0'; 
                branch <= '1';
                AluOP <= "01";
                jump <= '0';
                zero <= '1';

            when "1101111" => -- JAL
                wren <= '1'; 
                mem_write <= '0'; 
                alu_src <= '0'; 
                mem_to_reg <= '0'; 
                branch <= '1'; 
                AluOP <= "00";
                jump <= '1';
                zero <= '0';

            when "1100111" => -- JALR
                wren <= '1'; 
                mem_write <= '0'; 
                alu_src <= '1'; 
                mem_to_reg <= '0'; 
                branch <= '1'; 
                AluOP <= "00";
                jump <= '1';
                zero <= '0';

            when others =>
                wren <= '0'; 
                mem_write <= '0'; 
                alu_src <= '0'; 
                mem_to_reg <= '0'; 
                branch <= '0'; 
                AluOP <= "00";
                jump <= '0';
                zero <= '0';

        end case;
    end process;
end Behavioral;