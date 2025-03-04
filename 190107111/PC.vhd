library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is
    Port (
        clk     : in STD_LOGIC;  -- Clock
        reset   : in STD_LOGIC;  -- Sinal de reset
        next_pc : in STD_LOGIC_VECTOR(31 downto 0);  -- Proximo valor do PC
        pc_value: out STD_LOGIC_VECTOR(31 downto 0)  -- Valor atual do PC
    );
end PC;

architecture Behavioral of PC is
    signal current_pc : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');  -- Registrador interno
begin
    process(clk, reset)
    begin
        if reset = '1' then
            current_pc <= (others => '0');
        elsif rising_edge(clk) then
            -- Atualiza o PC com o proximo valor na subida do clock
            current_pc <= next_pc;
        end if;
    end process;

    -- SaÃ­da do PC
    pc_value <= current_pc;
	 
end Behavioral;