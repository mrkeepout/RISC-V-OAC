library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XREGS_tb is
end XREGS_tb;

architecture Behavioral of XREGS_tb is

  -- Component instanciado
  component XREGS
    generic (
      WSIZE : natural := 32
    );
    port (
      clk   : in  std_logic;
      wren  : in  std_logic;
      rs1   : in  std_logic_vector(4 downto 0);
      rs2   : in  std_logic_vector(4 downto 0);
      rd    : in  std_logic_vector(4 downto 0);
      data  : in  std_logic_vector(WSIZE-1 downto 0);
      ro1   : out std_logic_vector(WSIZE-1 downto 0);
      ro2   : out std_logic_vector(WSIZE-1 downto 0)
    );
  end component;

  -- Sinais para conectar ao DUT (Device Under Test)
  signal clk   : std_logic := '0';
  signal wren  : std_logic := '0';
  signal rs1, rs2, rd : std_logic_vector(4 downto 0) := (others => '0');
  signal data  : std_logic_vector(31 downto 0) := (others => '0');
  signal ro1, ro2 : std_logic_vector(31 downto 0) := (others => '0');
  signal zero_vector : std_logic_vector(31 downto 0) := (others => '0');

  -- Clock de 10 ns
  constant clk_period : time := 10 ns;

begin

  -- Instância do DUT
  DUT: XREGS
    generic map (
      WSIZE => 32
    )
    port map (
      clk   => clk,
      wren  => wren,
      rs1   => rs1,
      rs2   => rs2,
      rd    => rd,
      data  => data,
      ro1   => ro1,
      ro2   => ro2
    );

  -- Geração do clock
  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for clk_period / 2;
      clk <= '1';
      wait for clk_period / 2;
    end loop;
  end process;

  -- Teste do banco de registradores
  test_process : process
  begin
    -- Escrever valores em registradores diferentes de zero
    for i in 1 to 31 loop
      rd   <= std_logic_vector(to_unsigned(i, 5));
      data <= std_logic_vector(to_unsigned(i * 10, 32));
      wren <= '1';
      wait for clk_period;
      wren <= '0';
      wait for clk_period;
    end loop;

    -- Ler e verificar valores
    for i in 1 to 31 loop
      rs1 <= std_logic_vector(to_unsigned(i, 5));
      wait for clk_period;
      assert ro1 = std_logic_vector(to_unsigned(i * 10, 32))
        report "Erro na leitura do registrador " & integer'image(i) -- utilizamos o integer'image para retornar o inteiro em string.
        severity error;
    end loop;

    -- Verificar o registrador zero
    rd   <= "00000";
    data <= x"FFFFFFFF";
    wren <= '1';
    wait for clk_period;
    wren <= '0';
    rs1  <= "00000";
    wait for clk_period;
    assert ro1 = zero_vector
      report "Erro: registrador zero alterado"
      severity error;

    report "Todos os testes passaram!" severity note;
    wait;
  end process;

end Behavioral;
