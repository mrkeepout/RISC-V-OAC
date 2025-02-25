library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity genImm32 is
  generic (
    SIZEWORD : natural := 32
  );
  port (
    instruction : in  std_logic_vector(SIZEWORD-1 downto 0);
    immediate   : out std_logic_vector(SIZEWORD-1 downto 0)
  );
end genImm32;

architecture bhv of genImm32 is
  
  signal imm32_temp : signed(SIZEWORD-1 downto 0);

  -- Constants for different opcodes
  constant opcode_JAL      : std_logic_vector(6 downto 0) := "1101111";
  constant opcode_tipo_I   : std_logic_vector(6 downto 0) := "0010011";
  constant opcode_eCALL    : std_logic_vector(6 downto 0) := "1110011";
  constant opcode_AUIPC    : std_logic_vector(6 downto 0) := "0010111";
  constant opcode_tipo_LUI : std_logic_vector(6 downto 0) := "0110111";
  constant opcode_JALR     : std_logic_vector(6 downto 0) := "1100111";
  constant opcode_tipo_B   : std_logic_vector(6 downto 0) := "1100011";
  constant opcode_tipo_ST  : std_logic_vector(6 downto 0) := "0100011";
  constant opcode_tipo_R   : std_logic_vector(6 downto 0) := "0110011";
  constant opcode_tipo_IL  : std_logic_vector(6 downto 0) := "0000011";

begin

  process (instruction)

    variable OPCODE :  std_logic_vector(6 downto 0);
    constant ZERO :  std_logic_vector(31 downto 0) := (others => '0');

  begin
    -- Separar o opcode
    OPCODE := instruction(6 downto 0);

    case OPCODE is
      when opcode_tipo_R => 
        imm32_temp <= ( others => '0' );

      when opcode_tipo_IL | opcode_tipo_I => 
        imm32_temp <= resize(signed( instruction(31 downto 20) ), SIZEWORD);

      when opcode_JALR => 
        imm32_temp <= resize(signed( instruction(31 downto 21) & '0' ), SIZEWORD);

      when opcode_tipo_ST => 
        imm32_temp <= resize(signed( instruction(31 downto 25) & instruction(11 downto 7) ), SIZEWORD);

      when opcode_tipo_B => 
        imm32_temp <= resize(signed( instruction(31) & instruction(7) & instruction(30 downto 25) & instruction(11 downto 8) ), SIZEWORD);

      when opcode_JAL => 
        imm32_temp <= resize(signed( instruction(31) & instruction(19 downto 12) & instruction(20) & instruction(30 downto 25) & instruction(24 downto 21) ), SIZEWORD);

      when opcode_tipo_LUI | opcode_AUIPC => 
        imm32_temp <= signed(instruction(31 downto 12) & ZERO(11 downto 0));
      when others => 
        imm32_temp <= ( others => '0' );
    end case;

  end process;

  immediate <= std_logic_vector(imm32_temp);

end architecture;