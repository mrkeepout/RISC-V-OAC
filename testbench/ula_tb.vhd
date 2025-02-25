library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula_tb is
end ula_tb;

architecture tb_arch of ula_tb is
    signal opcode : std_logic_vector(3 downto 0);
    signal A, B, Z : std_logic_vector(31 downto 0);
    signal cond : std_logic;

    component ulaRV
        port (
            opcode : in std_logic_vector(3 downto 0);
            A, B   : in std_logic_vector(31 downto 0);
            Z      : out std_logic_vector(31 downto 0);
            cond   : out std_logic
        );
    end component;

begin
    uut: ulaRV port map (opcode => opcode, A => A, B => B, Z => Z, cond => cond);

    stimulus: process
    begin
        -- ADD
        A <= x"00000001"; B <= x"00000001"; opcode <= "0000"; wait for 10 ns;
        -- SUB
        A <= x"00000002"; B <= x"00000001"; opcode <= "0001"; wait for 10 ns;
        -- AND
        A <= x"00000003"; B <= x"00000001"; opcode <= "0010"; wait for 10 ns;
        -- OR
        A <= x"00000004"; B <= x"00000001"; opcode <= "0011"; wait for 10 ns;
        -- XOR
        A <= x"00000005"; B <= x"00000001"; opcode <= "0100"; wait for 10 ns;
        -- SLL
        A <= x"00000001"; B <= x"00000002"; opcode <= "0101"; wait for 10 ns;
        -- SRL
        A <= x"00000004"; B <= x"00000001"; opcode <= "0110"; wait for 10 ns;
        -- SRA
        A <= x"80000004"; B <= x"00000001"; opcode <= "0111"; wait for 10 ns;
        -- SLT
        A <= x"00000001"; B <= x"00000002"; opcode <= "1000"; wait for 10 ns;
        -- SLTU
        A <= x"00000001"; B <= x"00000002"; opcode <= "1001"; wait for 10 ns;
        -- SGE
        A <= x"00000002"; B <= x"00000001"; opcode <= "1010"; wait for 10 ns;
        -- SGEU
        A <= x"00000002"; B <= x"00000001"; opcode <= "1011"; wait for 10 ns;
        -- SEQ
        A <= x"00000001"; B <= x"00000001"; opcode <= "1100"; wait for 10 ns;
        -- SNE
        A <= x"00000001"; B <= x"00000002"; opcode <= "1101"; wait for 10 ns;

        wait;
    end process;
end tb_arch;
