library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XREGS is
  generic (
    WSIZE : natural := 32  -- Tamanho da palavra
  );
  port (
    clk        : in  std_logic;  -- Clock
    reset      : in  std_logic;  -- Sinal de reset
    wren       : in  std_logic;  -- Habilitação de escrita
    rs1        : in  std_logic_vector(4 downto 0);  -- Endereço do registrador a ser lido em ro1
    rs2        : in  std_logic_vector(4 downto 0);  -- Endereço do registrador a ser lido em ro2
    rd         : in  std_logic_vector(4 downto 0);  -- Endereço do registrador a ser escrito
    write_data : in  std_logic_vector(WSIZE-1 downto 0);  -- Dado a ser escrito
    ro1        : out std_logic_vector(WSIZE-1 downto 0);  -- Saída 1
    ro2        : out std_logic_vector(WSIZE-1 downto 0)   -- Saída 2
  );
end XREGS;

architecture Behavioral of XREGS is
  -- Tipo e sinal para representar os 32 registradores de 32 bits
  type reg_array is array (0 to 31) of std_logic_vector(WSIZE-1 downto 0);
  signal registers : reg_array := (others => (others => '0'));  -- Inicializa todos os registradores com 0
begin
  process(clk, reset)
  begin
    if reset = '1' then
      -- Reset: inicializa todos os registradores com 0
      registers <= (others => (others => '0'));
    elsif rising_edge(clk) then
      -- Escrever no registrador quando wren estiver habilitado e rd não for o registrador 0
      if wren = '1' and rd /= "00000" then
        registers(to_integer(unsigned(rd))) <= write_data;
      end if;
    end if;
  end process;

  -- Leitura e atribuição dos valores aos registradores de saída (ro1 e ro2)
  -- Se o registrador for 0, retorna 0; caso contrário, retorna o valor do registrador
  ro1 <= registers(to_integer(unsigned(rs1))) when rs1 /= "00000" else (others => '0');
  ro2 <= registers(to_integer(unsigned(rs2))) when rs2 /= "00000" else (others => '0');
end Behavioral;