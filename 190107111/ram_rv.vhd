library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_rv is
  port (
    clk     : in  std_logic;                      -- Clock
    wren    : in  std_logic;                      -- Sinal de escrita (write enable)
    byte_en : in  std_logic;                      -- Acesso a byte (1) ou palavra (0)
    sgn_en  : in  std_logic;                      -- Acesso com sinal (1) ou sem sinal (0)
    address : in  std_logic_vector(12 downto 0);  -- Endereço de 13 bits
    datain  : in  std_logic_vector(31 downto 0);  -- Dado de entrada (32 bits)
    dataout : out std_logic_vector(31 downto 0)   -- Dado de saída (32 bits)
  );
end entity ram_rv;

architecture rtl of ram_rv is
  -- Definicao do tipo de memoria
  type ram_type is array (0 to 8191) of std_logic_vector(7 downto 0);  -- Memória de bytes (8192 bytes)
  signal mem : ram_type := (others => (others => '0')); 

  -- Sinais auxiliares
  signal word_address : natural;  -- Endereço da palavra (múltiplo de 4)
  signal byte_offset  : natural;  -- Offset do byte dentro da palavra (0 a 3)
begin
  -- Calcula o endereço da palavra e o offset do byte
  word_address <= to_integer(unsigned(address(12 downto 2)));  -- Divide o endereço por 4
  byte_offset  <= to_integer(unsigned(address(1 downto 0)));   -- Offset do byte (0 a 3)

  -- Processo de escrita na RAM
  process(clk)
  begin
    if rising_edge(clk) then
      if wren = '1' then
        if byte_en = '1' then
          -- Escrita de byte
          mem(word_address + byte_offset) <= datain(7 downto 0);  -- Escreve apenas 1 byte
        else
          -- Escrita de palavra (4 bytes)
          mem(word_address + 0) <= datain(7 downto 0);    -- Byte 0
          mem(word_address + 1) <= datain(15 downto 8);   -- Byte 1
          mem(word_address + 2) <= datain(23 downto 16);  -- Byte 2
          mem(word_address + 3) <= datain(31 downto 24);  -- Byte 3
        end if;
      end if;
    end if;
  end process;

  -- Processo de leitura da RAM
  process(byte_en, byte_offset, sgn_en, word_address)
  begin
      if byte_en = '1' then
        -- Leitura de byte
        dataout <= (others => '0');  -- Limpa os bits superiores
        dataout(7 downto 0) <= mem(word_address * 4 + byte_offset);  -- Lê o byte

        -- Extensão de sinal (se sgn_en = 1 e o bit mais significativo do byte for 1)
        if sgn_en = '1' and mem(word_address * 4 + byte_offset)(7) = '1' then
          dataout(31 downto 8) <= (others => '1');  -- Estende o sinal para os bits superiores
        end if;
      else
        -- Leitura de palavra (4 bytes)
        dataout(7 downto 0)   <= mem(word_address * 4 + 0);  -- Byte 0
        dataout(15 downto 8)  <= mem(word_address * 4 + 1);  -- Byte 1
        dataout(23 downto 16) <= mem(word_address * 4 + 2);  -- Byte 2
        dataout(31 downto 24) <= mem(word_address * 4 + 3);  -- Byte 3
      end if;
  end process;
end architecture rtl;