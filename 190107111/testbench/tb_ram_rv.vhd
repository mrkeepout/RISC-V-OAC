library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity tb_ram_rv is
end entity;

architecture test of tb_ram_rv is
  signal clk     : std_logic := '0';
  signal wren    : std_logic;
  signal byte_en : std_logic;
  signal sgn_en  : std_logic;
  signal address : std_logic_vector(12 downto 0);
  signal datain  : std_logic_vector(31 downto 0);
  signal dataout : std_logic_vector(31 downto 0);

  constant clk_period : time := 10 ns;

begin
  -- Instanciando a RAM
  uut: entity work.ram_rv
  port map (
    clk     => clk,
    wren    => wren,
    byte_en => byte_en,
    sgn_en  => sgn_en,
    address => address,
    datain  => datain,
    dataout => dataout
  );

  -- Processo de geracao do clock
  clk_gen: process
  begin
    while true loop
      clk <= '0';
      wait for clk_period / 2;
      clk <= '1';
      wait for clk_period / 2;
    end loop;
  end process;

  -- Processo de teste
  stimulus: process
  begin
    -- Aguarda tempo suficiente para a inicializacao da RAM
    wait for 100 ns;

    -- Verifica se a RAM carregou os valores do arquivo corretamente
    address <= std_logic_vector(to_unsigned(0, 13));
    wait for clk_period;
    assert dataout = x"00000001" report "Erro no valor inicial da RAM no endereco 0!" severity error;

    address <= std_logic_vector(to_unsigned(1, 13));
    wait for clk_period;
    assert dataout = x"00000002" report "Erro no valor inicial da RAM no endereco 1!" severity error;

    -- Teste 1: Escrever e ler uma palavra completa
    wren    <= '1';
    byte_en <= '0';  -- Acesso a palavra inteira
    address <= std_logic_vector(to_unsigned(8, 13));
    datain  <= x"AABBCCDD";
    wait for clk_period;
    wren <= '0';
    wait for clk_period;
    assert dataout = x"AABBCCDD" report "Erro na leitura da palavra!" severity error;

    -- Teste 2: Escrever e ler um byte
    wren    <= '1';
    byte_en <= '1';  -- Acesso a byte
    address <= std_logic_vector(to_unsigned(10, 13));
    datain  <= x"000000EE";
    wait for clk_period;
    wren <= '0';
    wait for clk_period;
    assert dataout(7 downto 0) = x"EE" report "Erro na leitura do byte!" severity error;

    -- Teste 3: Leitura de byte com sinal
    byte_en <= '1';
    sgn_en  <= '1';
    address <= std_logic_vector(to_unsigned(10, 13));
    wait for clk_period;
    assert dataout = x"FFFFFFEE" report "Erro na extensao de sinal!" severity error;

    wait for 10 ns;
    report "Finalizando simulacao." severity note;
    assert false report "Fim da simulação" severity failure;
    wait;
  end process;

end architecture test;