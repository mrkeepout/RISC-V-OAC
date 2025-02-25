library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ULA is
    generic (
        WSIZE : natural := 32  -- Tamanho da palavra (32 bits para RISC-V)
    );
    port (
        A      : in STD_LOGIC_VECTOR(WSIZE-1 downto 0);  -- Entrada A (rs1)
        B      : in STD_LOGIC_VECTOR(WSIZE-1 downto 0);  -- Entrada B (rs2 ou imediato)
        control: in STD_LOGIC_VECTOR(3 downto 0);        -- Sinal de controle da ULA
        is_aui : in STD_LOGIC;                           -- Sinal para operação AUIPC
        is_lui : in STD_LOGIC;                           -- Sinal para operação LUI
        pc     : in STD_LOGIC_VECTOR(9 downto 0);  -- PC para operação AUIPC
        result : out STD_LOGIC_VECTOR(WSIZE-1 downto 0); -- Resultado da operação
        zero   : out STD_LOGIC                           -- Sinal "zero" (1 se resultado = 0)
    );
end ULA;

architecture Behavioral of ULA is
begin
    process(A, B, control, pc)
        variable result_temp : STD_LOGIC_VECTOR(WSIZE-1 downto 0); -- troquei signal por variable
    begin
        case control is
            when "0000" => 
                if is_aui = '1' then
                    result_temp := std_logic_vector(unsigned(A) + unsigned(B(31 downto 12) & "000000000000")); -- AUIPC
                elsif is_lui = '1' then
                    result_temp := std_logic_vector(unsigned(B) & "000000000000"); -- LUI
                else 
                    result_temp := std_logic_vector(signed(A) + signed(B)); -- ADD
                end if; 
            when "0001" => result_temp := std_logic_vector(signed(A) - signed(B)); -- SUB
            when "0010" => result_temp := A and B; -- AND
            when "0011" => result_temp := A or B;  -- OR
            when "0100" => result_temp := A xor B; -- XOR
            when "0101" => result_temp := std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(B)))); -- SLL
            when "0110" => result_temp := std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(B)))); -- SRL
            when "0111" => result_temp := std_logic_vector(shift_right(signed(A), to_integer(unsigned(B)))); -- SRA
            when "1000" => -- SLT (Set Less Than)
                if signed(A) < signed(B) then
                    result_temp := (others => '0');
                    result_temp(0) := '1';  -- Resultado = 1
                else
                    result_temp := (others => '0');  -- Resultado = 0
                end if;
            when "1001" => -- SLTU (Set Less Than Unsigned)
                if unsigned(A) < unsigned(B) then
                    result_temp := (others => '0');
                    result_temp(0) := '1';  -- Resultado = 1
                else
                    result_temp := (others => '0');  -- Resultado = 0
                end if;
            when "1010" => -- SGE (Set Greater Than or Equal)
                if signed(A) >= signed(B) then
                    result_temp := (others => '0');
                    result_temp(0) := '1';  -- Resultado = 1
                else
                    result_temp := (others => '0');  -- Resultado = 0
                end if;
            when "1011" => -- SGEU (Set Greater Than or Equal Unsigned)
                if unsigned(A) >= unsigned(B) then
                    result_temp := (others => '0');
                    result_temp(0) := '1';  -- Resultado = 1
                else
                    result_temp := (others => '0');  -- Resultado = 0
                end if;
            when "1100" => -- SEQ (Set Equal)
                if A = B then
                    result_temp := (others => '0');
                    result_temp(0) := '1';  -- Resultado = 1
                else
                    result_temp := (others => '0');  -- Resultado = 0
                end if;
            when "1101" => -- SNE (Set Not Equal)
                if A /= B then
                    result_temp := (others => '0');
                    result_temp(0) := '1';  -- Resultado = 1
                else
                    result_temp := (others => '0');  -- Resultado = 0
                end if;
            when others => result_temp := (others => '0');  -- Operação inválida
        end case;

        -- Atribui o resultado à saída
        result <= result_temp;

        -- Sinal "zero" (1 se o resultado for zero)
        if result_temp = (result_temp'range => '0') then
            zero <= '1';
        else
            zero <= '0';
        end if;
    end process;
end Behavioral;