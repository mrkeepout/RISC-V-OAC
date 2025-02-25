library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity genImm32_tb is
end genImm32_tb;

architecture behavior of genImm32_tb is
    component genImm32
        generic (
            SIZEWORD : natural := 32
        );
        port (
            instruction : in std_logic_vector(SIZEWORD-1 downto 0);
            immediate   : out std_logic_vector(SIZEWORD-1 downto 0)
        );
    end component;

    signal instruction : std_logic_vector(31 downto 0);
    signal immediate   : std_logic_vector(31 downto 0);

    -- Expected outputs for test cases
    constant expected1 : std_logic_vector(31 downto 0) := x"00000001"; -- For ADDI with immediate 1
    constant expected2 : std_logic_vector(31 downto 0) := x"00000001"; -- For SB with immediate 1
    constant expected3 : std_logic_vector(31 downto 0) := (others => '0'); -- For R-type (no immediate)
    constant expected4 : std_logic_vector(31 downto 0) := x"00000005"; -- For SLLI with shamt 5
    
begin
    uut: genImm32
        generic map (
            SIZEWORD => 32
        )
        port map (
            instruction => instruction,
            immediate   => immediate
        );

    stim_proc: process
    begin
        -- Test case 1: I-type ADDI x1, x0, 1
        instruction <= "00000000000100000000000010010011"; -- 0x00010093
        wait for 10 ns;
        assert immediate = expected1
            report "Test case 1 failed: immediate = " & integer'image(to_integer(unsigned(immediate)))
            severity error;

        -- Test case 2: S-type SB x1, 1(x0)
        instruction <= "00000000000100000000000010100011"; -- 0x000100A3
        wait for 10 ns;
        assert immediate = expected2
            report "Test case 2 failed: immediate = " & integer'image(to_integer(unsigned(immediate)))
            severity error;

        -- Test case 3: R-type ADD x1, x0, x0 (no immediate)
        instruction <= "00000000000000000000000000110011"; -- 0x00000033
        wait for 10 ns;
        assert immediate = expected3
            report "Test case 3 failed: immediate = " & integer'image(to_integer(unsigned(immediate)))
            severity error;

        -- Test case 4: I-type SLLI x1, x0, 5
        instruction <= "00000000010100000000000110010011"; -- 0x00500013
        wait for 10 ns;
        assert immediate = expected4
            report "Test case 4 failed: immediate = " & integer'image(to_integer(unsigned(immediate)))
            severity error;

        report "All test cases passed." severity note;
        wait;
    end process;
end behavior;