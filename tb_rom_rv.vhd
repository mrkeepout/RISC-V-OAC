library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity tb_rom_rv is
end entity;

architecture test of tb_rom_rv is
  signal address : std_logic_vector(10 downto 0);
  signal dataout : std_logic_vector(31 downto 0);

begin
  -- Instanciando a ROM
  uut: entity work.rom_rv
  port map (
    address => address,
    dataout => dataout
  );

  -- Processo de teste
  stimulus: process
  begin
    -- Aguarda tempo suficiente para a inicializacao da ROM
    wait for 10 ns;

    -- Teste 1: Verifica o valor no endereco 0
    address <= std_logic_vector(to_unsigned(0, 11));
    wait for 10 ns;
    assert dataout = x"00000001" report "Erro no valor da ROM no endereco 0!" severity error;

    -- Teste 2: Verifica o valor no endereco 1
    address <= std_logic_vector(to_unsigned(1, 11));
    wait for 10 ns;
    assert dataout = x"00000002" report "Erro no valor da ROM no endereco 1!" severity error;

    -- Teste 3: Verifica o valor no endereco 2
    address <= std_logic_vector(to_unsigned(2, 11));
    wait for 10 ns;
    assert dataout = x"AABBCCDD" report "Erro no valor da ROM no endereco 2!" severity error;

    -- Teste 4: Verifica o valor no endereco 3
    address <= std_logic_vector(to_unsigned(3, 11));
    wait for 10 ns;
    assert dataout = x"12345678" report "Erro no valor da ROM no endereco 3!" severity error;

    -- Finaliza a simulacao
    report "Finalizando simulacao." severity note;
    std.env.stop;
    wait;
  end process;

end architecture test;