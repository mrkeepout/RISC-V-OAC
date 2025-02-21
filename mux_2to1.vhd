library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1 is
    Port (
        sel : in STD_LOGIC;
        a   : in STD_LOGIC_VECTOR(31 downto 0);
        b   : in STD_LOGIC_VECTOR(31 downto 0);
        y   : out STD_LOGIC_VECTOR(31 downto 0)
    );
end mux_2to1;

architecture Behavioral of mux_2to1 is
begin
    process(sel, a, b)
    begin
        if sel = '0' then
            y <= a;
        else
            y <= b;
        end if;
    end process;
end Behavioral;