library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XREGS is
  generic (
    WSIZE : natural := 32 -- Tamanho da palavra
  );
  port (
    clk   : in  std_logic; -- Clock de 10ns
    wren  : in  std_logic; -- Habilitação de escrita
    rs1   : in  std_logic_vector(4 downto 0); -- Endereço do registrador a ser lido em ro1
    rs2   : in  std_logic_vector(4 downto 0); -- Endereço do registrador a ser lido em ro2
    rd    : in  std_logic_vector(4 downto 0); -- Endereço do registrador a ser escrito
    data  : in  std_logic_vector(WSIZE-1 downto 0); -- Dado a ser escrito
    ro1   : out std_logic_vector(WSIZE-1 downto 0); -- Register output - Saída 1
    ro2   : out std_logic_vector(WSIZE-1 downto 0)  -- Register output - Saída 2
  );
end XREGS;

architecture Behavioral of XREGS is

  -- Tipo e sinal para representar os 32 registradores de 32 bits
  type reg_array is array (0 to 31) of std_logic_vector(WSIZE-1 downto 0);
  signal registers : reg_array := (others => (others => '0')); -- 

begin

  process(clk)
  begin
    if rising_edge(clk) then
      -- Escrever no registrador quando wren esteja habilitado, nao importando se for o reg 0.
      if wren = '1' and rd /= "00000" then
        registers(to_integer(unsigned(rd))) <= data;
		end if;
		
    end if;
  end process;

  -- Leitura e atribuicao dos valores aos registradores de saida, ro1 e ro2, se reg != de 0; se reg = 0, entao sera retornado 0.
  ro1 <= registers(to_integer(unsigned(rs1))) when rs1 /= "00000" else (others => '0'); 
  ro2 <= registers(to_integer(unsigned(rs2))) when rs2 /= "00000" else (others => '0');

end Behavioral;
