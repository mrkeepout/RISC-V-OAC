library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity rom_rv is
  port (
    address : in  std_logic_vector(10 downto 0);  -- 11 bits de endereco
    dataout : out std_logic_vector(31 downto 0)   -- 32 bits de saida
  );
end entity rom_rv;

architecture rtl of rom_rv is
  -- Definicao do tipo de memoria
  type rom_type is array (0 to 2047) of std_logic_vector(31 downto 0);  -- 2048 palavras de 32 bits
  constant rom_depth : natural := 2048;  -- Profundidade da ROM

  -- Funcao para inicializar a ROM a partir de um arquivo de texto
  impure function init_rom_hex return rom_type is
    file text_file : text open read_mode is "memory.txt";
    variable text_line : line;
    variable rom_content : rom_type;
    variable temp : std_logic_vector(31 downto 0);
  begin
    for i in 0 to rom_depth - 1 loop
      if not endfile(text_file) then
        readline(text_file, text_line);
        hread(text_line, temp);  -- Le uma palavra de 32 bits em hexadecimal
        rom_content(i) := temp;
        -- report "Endereco " & integer'image(i) & " carregado com valor " & to_hstring(temp);
      else
        rom_content(i) := (others => '0');  -- Preenche o restante com zeros
      end if;
    end loop;
    return rom_content;
  end function;

  -- Sinal para a memoria ROM, inicializado com a funcao
  signal mem : rom_type := init_rom_hex;

begin
  -- Processo de leitura da ROM
  process(address)
  begin
    dataout <= mem(to_integer(unsigned(address)));  -- Le a palavra no endereco especificado
  end process;

end architecture rtl;