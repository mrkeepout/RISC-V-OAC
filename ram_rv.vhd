library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity ram_rv is
  port (
    clk     : in  std_logic;
    wren    : in  std_logic;
    byte_en : in  std_logic;
    sgn_en  : in  std_logic;
    address : in  std_logic_vector(12 downto 0);
    datain  : in  std_logic_vector(31 downto 0);
    dataout : out std_logic_vector(31 downto 0)
  );
end entity ram_rv;

architecture rtl of ram_rv is
  -- Definicaoo do tipo de memoria
  type ram_type is array (0 to 8191) of std_logic_vector(31 downto 0);
  constant ram_depth : natural := 8192;  -- Profundidade da RAM (numero de palavras)

  -- Funcao para inicializar a RAM a partir de um arquivo de texto - fonte: https://vhdlwhiz.com/initialize-ram-from-file/
  impure function init_ram_hex return ram_type is
    file text_file : text open read_mode is "memory.txt";
    variable text_line : line;
    variable ram_content : ram_type;
    variable temp : std_logic_vector(31 downto 0);
  begin
    for i in 0 to ram_depth - 1 loop
      if not endfile(text_file) then
        readline(text_file, text_line);
        hread(text_line, temp);  -- Le uma palavra de 32 bits em hexadecimal
        ram_content(i) := temp;
        --report "Endereco " & integer'image(i) & " carregado com valor " & to_hstring(temp);
      else
        ram_content(i) := (others => '0');  -- Preenche o restante com zeros
      end if;
    end loop;
    return ram_content;
  end function;

  -- Sinal para a memoria RAM, inicializado com a funcao
  signal mem : ram_type := init_ram_hex;

begin
  -- Processo de escrita na RAM
  process(clk)
  begin
    if rising_edge(clk) then
      if wren = '1' then
        if byte_en = '1' then
          -- Escreve apenas um byte
          mem(to_integer(unsigned(address)))(7 downto 0) <= datain(7 downto 0);
        else
          -- Escreve uma palavra de 32 bits
          mem(to_integer(unsigned(address))) <= datain;
        end if;
      end if;
    end if;
  end process;

  -- Processo de leitura da RAM
  process(clk)
  begin
    if rising_edge(clk) then
      if byte_en = '1' then
        -- Le apenas um byte
        dataout <= (others => '0');  -- Limpa os bits superiores
        dataout(7 downto 0) <= mem(to_integer(unsigned(address)))(7 downto 0);
        if sgn_en = '1' and mem(to_integer(unsigned(address)))(7) = '1' then
          dataout(31 downto 8) <= (others => '1');  -- Extensao de sinal
        end if;
      else
        -- Le uma palavra de 32 bits
        dataout <= mem(to_integer(unsigned(address)));
      end if;
    end if;
  end process;

end architecture rtl;