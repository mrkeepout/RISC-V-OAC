library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ulaRV is
    generic (WSIZE : natural := 32);
    port (
        opcode : in std_logic_vector(3 downto 0);
        A, B   : in std_logic_vector(WSIZE-1 downto 0);
        Z      : out std_logic_vector(WSIZE-1 downto 0);
        cond   : out std_logic
    );
end ulaRV;


architecture behavior of ulaRV is
    signal Z_internal : std_logic_vector(WSIZE-1 downto 0);
begin
    process(A, B, opcode)
    begin
        case opcode is
            when "0000" => Z_internal <= std_logic_vector(signed(A) + signed(B)); -- ADD
            when "0001" => Z_internal <= std_logic_vector(signed(A) - signed(B)); -- SUB
            when "0010" => Z_internal <= A and B; -- AND
            when "0011" => Z_internal <= A or B;  -- OR
            when "0100" => Z_internal <= A xor B; -- XOR
            when "0101" => Z_internal <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(B)))); -- SLL
            when "0110" => Z_internal <= std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(B)))); -- SRL
            when "0111" => Z_internal <= std_logic_vector(shift_right(signed(A), to_integer(unsigned(B)))); -- SRA
            when "1000" =>
                if signed(A) < signed(B) then
                    Z_internal <= (others => '0');
                    Z_internal(0) <= '1';
                else
                    Z_internal <= (others => '0');
                end if; -- SLT
            when "1001" =>
                if unsigned(A) < unsigned(B) then
                    Z_internal <= (others => '0');
                    Z_internal(0) <= '1';
                else
                    Z_internal <= (others => '0');
                end if; -- SLTU
            when "1010" =>
                if signed(A) >= signed(B) then
                    Z_internal <= (others => '0');
                    Z_internal(0) <= '1';
                else
                    Z_internal <= (others => '0');
                end if; -- SGE
            when "1011" =>
                if unsigned(A) >= unsigned(B) then
                    Z_internal <= (others => '0');
                    Z_internal(0) <= '1';
                else
                    Z_internal <= (others => '0');
                end if; -- SGEU
            when "1100" =>
                if A = B then
                    Z_internal <= (others => '0');
                    Z_internal(0) <= '1';
                else
                    Z_internal <= (others => '0');
                end if; -- SEQ
            when "1101" =>
                if A /= B then
                    Z_internal <= (others => '0');
                    Z_internal(0) <= '1';
                else
                    Z_internal <= (others => '0');
                end if; -- SNE
            when others => Z_internal <= (others => '0');
        end case;

        -- Assign the value of Z_internal to Z
        Z <= Z_internal;

        -- Simplified condition for cond signal
        cond <= '0';
        for i in Z_internal'range loop
            if Z_internal(i) = '1' then
                cond <= '1';
                exit;
            end if;
        end loop;
    end process;
end behavior;
