library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity rom_rv is
  port (
    address : in  std_logic_vector(9 downto 0);  -- 12 bits de endereco (2 a 11 do PC - 1k word)
    instruction : out std_logic_vector(31 downto 0)   -- 32 bits de saida
  );
end entity rom_rv;

architecture rtl of rom_rv is
  -- Definicao do tipo de memoria
  type rom_type is array (0 to 2047) of std_logic_vector(31 downto 0);  -- 2048 palavras de 32 bits
  constant rom_depth : natural := 2048;  -- Profundidade da ROM

  -- Funcao para inicializar a ROM a partir de um arquivo de texto
  impure function init_rom_hex return rom_type is
    file text_file : text open read_mode is "C:/altera/OAC/RISC-V-OAC/memory.txt";
    variable text_line : line;
    variable rom_content : rom_type;
    variable temp : std_logic_vector(31 downto 0);
	 variable open_status : FILE_OPEN_STATUS;
	 
  begin
  
	if open_status = open_ok then
		for i in 0 to rom_depth - 1 loop
			if not endfile(text_file) then
				readline(text_file, text_line);
				hread(text_line, rom_content(i));  -- Le uma palavra de 32 bits em hexadecimal
				-- report "Endereco " & integer'image(i) & " carregado com valor " & to_hstring(temp);
			else
				rom_content(i) := (others => '0');  
			end if;
		end loop;
	end if;
	
	file_close(text_file);
	
   return rom_content;
  end function;

  -- Sinal para a memoria ROM, inicializado com a funcao
  signal mem : rom_type := init_rom_hex;

begin
  -- Processo de leitura da ROM
  process(address)
  begin
    instruction <= mem(to_integer(unsigned(address)));  -- Le a palavra no endereco especificado
  end process;

end architecture rtl;