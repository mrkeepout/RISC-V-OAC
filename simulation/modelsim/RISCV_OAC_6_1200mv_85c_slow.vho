-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/23/2025 16:24:55"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RISC_V_Uniciclo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	instruction : IN std_logic_vector(31 DOWNTO 0);
	data_from_memory : IN std_logic_vector(31 DOWNTO 0);
	pc_out : OUT std_logic_vector(31 DOWNTO 0);
	data_to_memory : OUT std_logic_vector(31 DOWNTO 0);
	memory_write_enable : OUT std_logic
	);
END RISC_V_Uniciclo;

-- Design Ports Information
-- instruction[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[16]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[17]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[18]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[19]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[20]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[21]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[22]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[23]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[24]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[25]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[28]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[29]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[30]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[31]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[8]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[10]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[12]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[15]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[16]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[17]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[18]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[19]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[20]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[21]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[22]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[23]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[24]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[25]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[26]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[27]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[28]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[29]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[30]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[31]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[8]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[10]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[11]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[12]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[14]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[15]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[16]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[17]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[18]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[19]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[20]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[21]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[24]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[25]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[26]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[27]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[28]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[29]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[30]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[31]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[10]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[11]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[14]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[15]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[16]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[17]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[18]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[19]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[20]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[21]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[22]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[23]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[25]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[26]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[27]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[28]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[29]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[30]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[31]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_write_enable	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RISC_V_Uniciclo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_from_memory : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_to_memory : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memory_write_enable : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \instruction[8]~input_o\ : std_logic;
SIGNAL \instruction[9]~input_o\ : std_logic;
SIGNAL \instruction[10]~input_o\ : std_logic;
SIGNAL \instruction[11]~input_o\ : std_logic;
SIGNAL \instruction[12]~input_o\ : std_logic;
SIGNAL \instruction[13]~input_o\ : std_logic;
SIGNAL \instruction[14]~input_o\ : std_logic;
SIGNAL \instruction[15]~input_o\ : std_logic;
SIGNAL \instruction[16]~input_o\ : std_logic;
SIGNAL \instruction[17]~input_o\ : std_logic;
SIGNAL \instruction[18]~input_o\ : std_logic;
SIGNAL \instruction[19]~input_o\ : std_logic;
SIGNAL \instruction[20]~input_o\ : std_logic;
SIGNAL \instruction[21]~input_o\ : std_logic;
SIGNAL \instruction[22]~input_o\ : std_logic;
SIGNAL \instruction[23]~input_o\ : std_logic;
SIGNAL \instruction[24]~input_o\ : std_logic;
SIGNAL \instruction[25]~input_o\ : std_logic;
SIGNAL \instruction[26]~input_o\ : std_logic;
SIGNAL \instruction[27]~input_o\ : std_logic;
SIGNAL \instruction[28]~input_o\ : std_logic;
SIGNAL \instruction[29]~input_o\ : std_logic;
SIGNAL \instruction[30]~input_o\ : std_logic;
SIGNAL \instruction[31]~input_o\ : std_logic;
SIGNAL \data_from_memory[0]~input_o\ : std_logic;
SIGNAL \data_from_memory[1]~input_o\ : std_logic;
SIGNAL \data_from_memory[2]~input_o\ : std_logic;
SIGNAL \data_from_memory[3]~input_o\ : std_logic;
SIGNAL \data_from_memory[4]~input_o\ : std_logic;
SIGNAL \data_from_memory[5]~input_o\ : std_logic;
SIGNAL \data_from_memory[6]~input_o\ : std_logic;
SIGNAL \data_from_memory[7]~input_o\ : std_logic;
SIGNAL \data_from_memory[8]~input_o\ : std_logic;
SIGNAL \data_from_memory[9]~input_o\ : std_logic;
SIGNAL \data_from_memory[10]~input_o\ : std_logic;
SIGNAL \data_from_memory[11]~input_o\ : std_logic;
SIGNAL \data_from_memory[12]~input_o\ : std_logic;
SIGNAL \data_from_memory[13]~input_o\ : std_logic;
SIGNAL \data_from_memory[14]~input_o\ : std_logic;
SIGNAL \data_from_memory[15]~input_o\ : std_logic;
SIGNAL \data_from_memory[16]~input_o\ : std_logic;
SIGNAL \data_from_memory[17]~input_o\ : std_logic;
SIGNAL \data_from_memory[18]~input_o\ : std_logic;
SIGNAL \data_from_memory[19]~input_o\ : std_logic;
SIGNAL \data_from_memory[20]~input_o\ : std_logic;
SIGNAL \data_from_memory[21]~input_o\ : std_logic;
SIGNAL \data_from_memory[22]~input_o\ : std_logic;
SIGNAL \data_from_memory[23]~input_o\ : std_logic;
SIGNAL \data_from_memory[24]~input_o\ : std_logic;
SIGNAL \data_from_memory[25]~input_o\ : std_logic;
SIGNAL \data_from_memory[26]~input_o\ : std_logic;
SIGNAL \data_from_memory[27]~input_o\ : std_logic;
SIGNAL \data_from_memory[28]~input_o\ : std_logic;
SIGNAL \data_from_memory[29]~input_o\ : std_logic;
SIGNAL \data_from_memory[30]~input_o\ : std_logic;
SIGNAL \data_from_memory[31]~input_o\ : std_logic;
SIGNAL \pc_out[0]~output_o\ : std_logic;
SIGNAL \pc_out[1]~output_o\ : std_logic;
SIGNAL \pc_out[2]~output_o\ : std_logic;
SIGNAL \pc_out[3]~output_o\ : std_logic;
SIGNAL \pc_out[4]~output_o\ : std_logic;
SIGNAL \pc_out[5]~output_o\ : std_logic;
SIGNAL \pc_out[6]~output_o\ : std_logic;
SIGNAL \pc_out[7]~output_o\ : std_logic;
SIGNAL \pc_out[8]~output_o\ : std_logic;
SIGNAL \pc_out[9]~output_o\ : std_logic;
SIGNAL \pc_out[10]~output_o\ : std_logic;
SIGNAL \pc_out[11]~output_o\ : std_logic;
SIGNAL \pc_out[12]~output_o\ : std_logic;
SIGNAL \pc_out[13]~output_o\ : std_logic;
SIGNAL \pc_out[14]~output_o\ : std_logic;
SIGNAL \pc_out[15]~output_o\ : std_logic;
SIGNAL \pc_out[16]~output_o\ : std_logic;
SIGNAL \pc_out[17]~output_o\ : std_logic;
SIGNAL \pc_out[18]~output_o\ : std_logic;
SIGNAL \pc_out[19]~output_o\ : std_logic;
SIGNAL \pc_out[20]~output_o\ : std_logic;
SIGNAL \pc_out[21]~output_o\ : std_logic;
SIGNAL \pc_out[22]~output_o\ : std_logic;
SIGNAL \pc_out[23]~output_o\ : std_logic;
SIGNAL \pc_out[24]~output_o\ : std_logic;
SIGNAL \pc_out[25]~output_o\ : std_logic;
SIGNAL \pc_out[26]~output_o\ : std_logic;
SIGNAL \pc_out[27]~output_o\ : std_logic;
SIGNAL \pc_out[28]~output_o\ : std_logic;
SIGNAL \pc_out[29]~output_o\ : std_logic;
SIGNAL \pc_out[30]~output_o\ : std_logic;
SIGNAL \pc_out[31]~output_o\ : std_logic;
SIGNAL \data_to_memory[0]~output_o\ : std_logic;
SIGNAL \data_to_memory[1]~output_o\ : std_logic;
SIGNAL \data_to_memory[2]~output_o\ : std_logic;
SIGNAL \data_to_memory[3]~output_o\ : std_logic;
SIGNAL \data_to_memory[4]~output_o\ : std_logic;
SIGNAL \data_to_memory[5]~output_o\ : std_logic;
SIGNAL \data_to_memory[6]~output_o\ : std_logic;
SIGNAL \data_to_memory[7]~output_o\ : std_logic;
SIGNAL \data_to_memory[8]~output_o\ : std_logic;
SIGNAL \data_to_memory[9]~output_o\ : std_logic;
SIGNAL \data_to_memory[10]~output_o\ : std_logic;
SIGNAL \data_to_memory[11]~output_o\ : std_logic;
SIGNAL \data_to_memory[12]~output_o\ : std_logic;
SIGNAL \data_to_memory[13]~output_o\ : std_logic;
SIGNAL \data_to_memory[14]~output_o\ : std_logic;
SIGNAL \data_to_memory[15]~output_o\ : std_logic;
SIGNAL \data_to_memory[16]~output_o\ : std_logic;
SIGNAL \data_to_memory[17]~output_o\ : std_logic;
SIGNAL \data_to_memory[18]~output_o\ : std_logic;
SIGNAL \data_to_memory[19]~output_o\ : std_logic;
SIGNAL \data_to_memory[20]~output_o\ : std_logic;
SIGNAL \data_to_memory[21]~output_o\ : std_logic;
SIGNAL \data_to_memory[22]~output_o\ : std_logic;
SIGNAL \data_to_memory[23]~output_o\ : std_logic;
SIGNAL \data_to_memory[24]~output_o\ : std_logic;
SIGNAL \data_to_memory[25]~output_o\ : std_logic;
SIGNAL \data_to_memory[26]~output_o\ : std_logic;
SIGNAL \data_to_memory[27]~output_o\ : std_logic;
SIGNAL \data_to_memory[28]~output_o\ : std_logic;
SIGNAL \data_to_memory[29]~output_o\ : std_logic;
SIGNAL \data_to_memory[30]~output_o\ : std_logic;
SIGNAL \data_to_memory[31]~output_o\ : std_logic;
SIGNAL \memory_write_enable~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[2]~87_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[3]~29_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[3]~30\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[4]~31_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[4]~32\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[5]~33_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[5]~34\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[6]~35_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[6]~36\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[7]~37_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[7]~38\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[8]~39_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[8]~40\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[9]~41_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[9]~42\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[10]~43_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[10]~44\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[11]~45_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[11]~46\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[12]~47_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[12]~48\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[13]~49_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[13]~50\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[14]~51_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[14]~52\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[15]~53_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[15]~54\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[16]~55_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[16]~56\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[17]~57_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[17]~58\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[18]~59_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[18]~60\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[19]~61_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[19]~62\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[20]~63_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[20]~64\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[21]~65_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[21]~66\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[22]~67_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[22]~68\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[23]~69_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[23]~70\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[24]~71_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[24]~72\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[25]~73_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[25]~74\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[26]~75_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[26]~76\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[27]~77_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[27]~78\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[28]~79_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[28]~80\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[29]~81_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[29]~82\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[30]~83_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[30]~84\ : std_logic;
SIGNAL \dp_pc_reg|current_pc[31]~85_combout\ : std_logic;
SIGNAL \dp_pc_reg|current_pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_instruction <= instruction;
ww_data_from_memory <= data_from_memory;
pc_out <= ww_pc_out;
data_to_memory <= ww_data_to_memory;
memory_write_enable <= ww_memory_write_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X6_Y0_N16
\pc_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pc_out[0]~output_o\);

-- Location: IOOBUF_X26_Y67_N2
\pc_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pc_out[1]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\pc_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(2),
	devoe => ww_devoe,
	o => \pc_out[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\pc_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(3),
	devoe => ww_devoe,
	o => \pc_out[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N2
\pc_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(4),
	devoe => ww_devoe,
	o => \pc_out[4]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\pc_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(5),
	devoe => ww_devoe,
	o => \pc_out[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\pc_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(6),
	devoe => ww_devoe,
	o => \pc_out[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\pc_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(7),
	devoe => ww_devoe,
	o => \pc_out[7]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\pc_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(8),
	devoe => ww_devoe,
	o => \pc_out[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\pc_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(9),
	devoe => ww_devoe,
	o => \pc_out[9]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\pc_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(10),
	devoe => ww_devoe,
	o => \pc_out[10]~output_o\);

-- Location: IOOBUF_X44_Y0_N2
\pc_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(11),
	devoe => ww_devoe,
	o => \pc_out[11]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\pc_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(12),
	devoe => ww_devoe,
	o => \pc_out[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\pc_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(13),
	devoe => ww_devoe,
	o => \pc_out[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\pc_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(14),
	devoe => ww_devoe,
	o => \pc_out[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\pc_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(15),
	devoe => ww_devoe,
	o => \pc_out[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\pc_out[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(16),
	devoe => ww_devoe,
	o => \pc_out[16]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\pc_out[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(17),
	devoe => ww_devoe,
	o => \pc_out[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\pc_out[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(18),
	devoe => ww_devoe,
	o => \pc_out[18]~output_o\);

-- Location: IOOBUF_X44_Y0_N23
\pc_out[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(19),
	devoe => ww_devoe,
	o => \pc_out[19]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\pc_out[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(20),
	devoe => ww_devoe,
	o => \pc_out[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\pc_out[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(21),
	devoe => ww_devoe,
	o => \pc_out[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\pc_out[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(22),
	devoe => ww_devoe,
	o => \pc_out[22]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\pc_out[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(23),
	devoe => ww_devoe,
	o => \pc_out[23]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\pc_out[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(24),
	devoe => ww_devoe,
	o => \pc_out[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\pc_out[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(25),
	devoe => ww_devoe,
	o => \pc_out[25]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\pc_out[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(26),
	devoe => ww_devoe,
	o => \pc_out[26]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\pc_out[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(27),
	devoe => ww_devoe,
	o => \pc_out[27]~output_o\);

-- Location: IOOBUF_X44_Y0_N9
\pc_out[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(28),
	devoe => ww_devoe,
	o => \pc_out[28]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\pc_out[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(29),
	devoe => ww_devoe,
	o => \pc_out[29]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\pc_out[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(30),
	devoe => ww_devoe,
	o => \pc_out[30]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\pc_out[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_pc_reg|current_pc\(31),
	devoe => ww_devoe,
	o => \pc_out[31]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\data_to_memory[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[0]~output_o\);

-- Location: IOOBUF_X81_Y46_N2
\data_to_memory[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[1]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\data_to_memory[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[2]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\data_to_memory[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\data_to_memory[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\data_to_memory[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[5]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\data_to_memory[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[6]~output_o\);

-- Location: IOOBUF_X63_Y67_N9
\data_to_memory[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[7]~output_o\);

-- Location: IOOBUF_X10_Y67_N2
\data_to_memory[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\data_to_memory[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[9]~output_o\);

-- Location: IOOBUF_X10_Y67_N9
\data_to_memory[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[10]~output_o\);

-- Location: IOOBUF_X17_Y67_N23
\data_to_memory[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[11]~output_o\);

-- Location: IOOBUF_X42_Y67_N2
\data_to_memory[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[12]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\data_to_memory[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[13]~output_o\);

-- Location: IOOBUF_X81_Y42_N2
\data_to_memory[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[14]~output_o\);

-- Location: IOOBUF_X22_Y67_N9
\data_to_memory[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[15]~output_o\);

-- Location: IOOBUF_X81_Y59_N2
\data_to_memory[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[16]~output_o\);

-- Location: IOOBUF_X56_Y67_N9
\data_to_memory[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[17]~output_o\);

-- Location: IOOBUF_X56_Y67_N16
\data_to_memory[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[18]~output_o\);

-- Location: IOOBUF_X81_Y17_N9
\data_to_memory[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[19]~output_o\);

-- Location: IOOBUF_X58_Y67_N23
\data_to_memory[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[20]~output_o\);

-- Location: IOOBUF_X81_Y49_N9
\data_to_memory[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[21]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\data_to_memory[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[22]~output_o\);

-- Location: IOOBUF_X81_Y19_N2
\data_to_memory[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[23]~output_o\);

-- Location: IOOBUF_X54_Y67_N9
\data_to_memory[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[24]~output_o\);

-- Location: IOOBUF_X17_Y67_N2
\data_to_memory[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[25]~output_o\);

-- Location: IOOBUF_X10_Y0_N23
\data_to_memory[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[26]~output_o\);

-- Location: IOOBUF_X81_Y55_N2
\data_to_memory[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[27]~output_o\);

-- Location: IOOBUF_X42_Y67_N23
\data_to_memory[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[28]~output_o\);

-- Location: IOOBUF_X19_Y67_N2
\data_to_memory[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[29]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\data_to_memory[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[30]~output_o\);

-- Location: IOOBUF_X17_Y67_N9
\data_to_memory[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_to_memory[31]~output_o\);

-- Location: IOOBUF_X81_Y59_N9
\memory_write_enable~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memory_write_enable~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X49_Y2_N0
\dp_pc_reg|current_pc[2]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[2]~87_combout\ = !\dp_pc_reg|current_pc\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp_pc_reg|current_pc\(2),
	combout => \dp_pc_reg|current_pc[2]~87_combout\);

-- Location: IOIBUF_X38_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G28
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X49_Y2_N1
\dp_pc_reg|current_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[2]~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(2));

-- Location: LCCOMB_X49_Y2_N4
\dp_pc_reg|current_pc[3]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[3]~29_combout\ = (\dp_pc_reg|current_pc\(3) & (\dp_pc_reg|current_pc\(2) $ (VCC))) # (!\dp_pc_reg|current_pc\(3) & (\dp_pc_reg|current_pc\(2) & VCC))
-- \dp_pc_reg|current_pc[3]~30\ = CARRY((\dp_pc_reg|current_pc\(3) & \dp_pc_reg|current_pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(3),
	datab => \dp_pc_reg|current_pc\(2),
	datad => VCC,
	combout => \dp_pc_reg|current_pc[3]~29_combout\,
	cout => \dp_pc_reg|current_pc[3]~30\);

-- Location: FF_X49_Y2_N5
\dp_pc_reg|current_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[3]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(3));

-- Location: LCCOMB_X49_Y2_N6
\dp_pc_reg|current_pc[4]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[4]~31_combout\ = (\dp_pc_reg|current_pc\(4) & (!\dp_pc_reg|current_pc[3]~30\)) # (!\dp_pc_reg|current_pc\(4) & ((\dp_pc_reg|current_pc[3]~30\) # (GND)))
-- \dp_pc_reg|current_pc[4]~32\ = CARRY((!\dp_pc_reg|current_pc[3]~30\) # (!\dp_pc_reg|current_pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(4),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[3]~30\,
	combout => \dp_pc_reg|current_pc[4]~31_combout\,
	cout => \dp_pc_reg|current_pc[4]~32\);

-- Location: FF_X49_Y2_N7
\dp_pc_reg|current_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[4]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(4));

-- Location: LCCOMB_X49_Y2_N8
\dp_pc_reg|current_pc[5]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[5]~33_combout\ = (\dp_pc_reg|current_pc\(5) & (\dp_pc_reg|current_pc[4]~32\ $ (GND))) # (!\dp_pc_reg|current_pc\(5) & (!\dp_pc_reg|current_pc[4]~32\ & VCC))
-- \dp_pc_reg|current_pc[5]~34\ = CARRY((\dp_pc_reg|current_pc\(5) & !\dp_pc_reg|current_pc[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(5),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[4]~32\,
	combout => \dp_pc_reg|current_pc[5]~33_combout\,
	cout => \dp_pc_reg|current_pc[5]~34\);

-- Location: FF_X49_Y2_N9
\dp_pc_reg|current_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[5]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(5));

-- Location: LCCOMB_X49_Y2_N10
\dp_pc_reg|current_pc[6]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[6]~35_combout\ = (\dp_pc_reg|current_pc\(6) & (!\dp_pc_reg|current_pc[5]~34\)) # (!\dp_pc_reg|current_pc\(6) & ((\dp_pc_reg|current_pc[5]~34\) # (GND)))
-- \dp_pc_reg|current_pc[6]~36\ = CARRY((!\dp_pc_reg|current_pc[5]~34\) # (!\dp_pc_reg|current_pc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(6),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[5]~34\,
	combout => \dp_pc_reg|current_pc[6]~35_combout\,
	cout => \dp_pc_reg|current_pc[6]~36\);

-- Location: FF_X49_Y2_N11
\dp_pc_reg|current_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[6]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(6));

-- Location: LCCOMB_X49_Y2_N12
\dp_pc_reg|current_pc[7]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[7]~37_combout\ = (\dp_pc_reg|current_pc\(7) & (\dp_pc_reg|current_pc[6]~36\ $ (GND))) # (!\dp_pc_reg|current_pc\(7) & (!\dp_pc_reg|current_pc[6]~36\ & VCC))
-- \dp_pc_reg|current_pc[7]~38\ = CARRY((\dp_pc_reg|current_pc\(7) & !\dp_pc_reg|current_pc[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(7),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[6]~36\,
	combout => \dp_pc_reg|current_pc[7]~37_combout\,
	cout => \dp_pc_reg|current_pc[7]~38\);

-- Location: FF_X49_Y2_N13
\dp_pc_reg|current_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[7]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(7));

-- Location: LCCOMB_X49_Y2_N14
\dp_pc_reg|current_pc[8]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[8]~39_combout\ = (\dp_pc_reg|current_pc\(8) & (!\dp_pc_reg|current_pc[7]~38\)) # (!\dp_pc_reg|current_pc\(8) & ((\dp_pc_reg|current_pc[7]~38\) # (GND)))
-- \dp_pc_reg|current_pc[8]~40\ = CARRY((!\dp_pc_reg|current_pc[7]~38\) # (!\dp_pc_reg|current_pc\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(8),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[7]~38\,
	combout => \dp_pc_reg|current_pc[8]~39_combout\,
	cout => \dp_pc_reg|current_pc[8]~40\);

-- Location: FF_X49_Y2_N15
\dp_pc_reg|current_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[8]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(8));

-- Location: LCCOMB_X49_Y2_N16
\dp_pc_reg|current_pc[9]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[9]~41_combout\ = (\dp_pc_reg|current_pc\(9) & (\dp_pc_reg|current_pc[8]~40\ $ (GND))) # (!\dp_pc_reg|current_pc\(9) & (!\dp_pc_reg|current_pc[8]~40\ & VCC))
-- \dp_pc_reg|current_pc[9]~42\ = CARRY((\dp_pc_reg|current_pc\(9) & !\dp_pc_reg|current_pc[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(9),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[8]~40\,
	combout => \dp_pc_reg|current_pc[9]~41_combout\,
	cout => \dp_pc_reg|current_pc[9]~42\);

-- Location: FF_X49_Y2_N17
\dp_pc_reg|current_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[9]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(9));

-- Location: LCCOMB_X49_Y2_N18
\dp_pc_reg|current_pc[10]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[10]~43_combout\ = (\dp_pc_reg|current_pc\(10) & (!\dp_pc_reg|current_pc[9]~42\)) # (!\dp_pc_reg|current_pc\(10) & ((\dp_pc_reg|current_pc[9]~42\) # (GND)))
-- \dp_pc_reg|current_pc[10]~44\ = CARRY((!\dp_pc_reg|current_pc[9]~42\) # (!\dp_pc_reg|current_pc\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(10),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[9]~42\,
	combout => \dp_pc_reg|current_pc[10]~43_combout\,
	cout => \dp_pc_reg|current_pc[10]~44\);

-- Location: FF_X49_Y2_N19
\dp_pc_reg|current_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[10]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(10));

-- Location: LCCOMB_X49_Y2_N20
\dp_pc_reg|current_pc[11]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[11]~45_combout\ = (\dp_pc_reg|current_pc\(11) & (\dp_pc_reg|current_pc[10]~44\ $ (GND))) # (!\dp_pc_reg|current_pc\(11) & (!\dp_pc_reg|current_pc[10]~44\ & VCC))
-- \dp_pc_reg|current_pc[11]~46\ = CARRY((\dp_pc_reg|current_pc\(11) & !\dp_pc_reg|current_pc[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(11),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[10]~44\,
	combout => \dp_pc_reg|current_pc[11]~45_combout\,
	cout => \dp_pc_reg|current_pc[11]~46\);

-- Location: FF_X49_Y2_N21
\dp_pc_reg|current_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[11]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(11));

-- Location: LCCOMB_X49_Y2_N22
\dp_pc_reg|current_pc[12]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[12]~47_combout\ = (\dp_pc_reg|current_pc\(12) & (!\dp_pc_reg|current_pc[11]~46\)) # (!\dp_pc_reg|current_pc\(12) & ((\dp_pc_reg|current_pc[11]~46\) # (GND)))
-- \dp_pc_reg|current_pc[12]~48\ = CARRY((!\dp_pc_reg|current_pc[11]~46\) # (!\dp_pc_reg|current_pc\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(12),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[11]~46\,
	combout => \dp_pc_reg|current_pc[12]~47_combout\,
	cout => \dp_pc_reg|current_pc[12]~48\);

-- Location: FF_X49_Y2_N23
\dp_pc_reg|current_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[12]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(12));

-- Location: LCCOMB_X49_Y2_N24
\dp_pc_reg|current_pc[13]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[13]~49_combout\ = (\dp_pc_reg|current_pc\(13) & (\dp_pc_reg|current_pc[12]~48\ $ (GND))) # (!\dp_pc_reg|current_pc\(13) & (!\dp_pc_reg|current_pc[12]~48\ & VCC))
-- \dp_pc_reg|current_pc[13]~50\ = CARRY((\dp_pc_reg|current_pc\(13) & !\dp_pc_reg|current_pc[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(13),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[12]~48\,
	combout => \dp_pc_reg|current_pc[13]~49_combout\,
	cout => \dp_pc_reg|current_pc[13]~50\);

-- Location: FF_X49_Y2_N25
\dp_pc_reg|current_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[13]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(13));

-- Location: LCCOMB_X49_Y2_N26
\dp_pc_reg|current_pc[14]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[14]~51_combout\ = (\dp_pc_reg|current_pc\(14) & (!\dp_pc_reg|current_pc[13]~50\)) # (!\dp_pc_reg|current_pc\(14) & ((\dp_pc_reg|current_pc[13]~50\) # (GND)))
-- \dp_pc_reg|current_pc[14]~52\ = CARRY((!\dp_pc_reg|current_pc[13]~50\) # (!\dp_pc_reg|current_pc\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(14),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[13]~50\,
	combout => \dp_pc_reg|current_pc[14]~51_combout\,
	cout => \dp_pc_reg|current_pc[14]~52\);

-- Location: FF_X49_Y2_N27
\dp_pc_reg|current_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[14]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(14));

-- Location: LCCOMB_X49_Y2_N28
\dp_pc_reg|current_pc[15]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[15]~53_combout\ = (\dp_pc_reg|current_pc\(15) & (\dp_pc_reg|current_pc[14]~52\ $ (GND))) # (!\dp_pc_reg|current_pc\(15) & (!\dp_pc_reg|current_pc[14]~52\ & VCC))
-- \dp_pc_reg|current_pc[15]~54\ = CARRY((\dp_pc_reg|current_pc\(15) & !\dp_pc_reg|current_pc[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(15),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[14]~52\,
	combout => \dp_pc_reg|current_pc[15]~53_combout\,
	cout => \dp_pc_reg|current_pc[15]~54\);

-- Location: FF_X49_Y2_N29
\dp_pc_reg|current_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[15]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(15));

-- Location: LCCOMB_X49_Y2_N30
\dp_pc_reg|current_pc[16]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[16]~55_combout\ = (\dp_pc_reg|current_pc\(16) & (!\dp_pc_reg|current_pc[15]~54\)) # (!\dp_pc_reg|current_pc\(16) & ((\dp_pc_reg|current_pc[15]~54\) # (GND)))
-- \dp_pc_reg|current_pc[16]~56\ = CARRY((!\dp_pc_reg|current_pc[15]~54\) # (!\dp_pc_reg|current_pc\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(16),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[15]~54\,
	combout => \dp_pc_reg|current_pc[16]~55_combout\,
	cout => \dp_pc_reg|current_pc[16]~56\);

-- Location: FF_X49_Y2_N31
\dp_pc_reg|current_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[16]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(16));

-- Location: LCCOMB_X49_Y1_N0
\dp_pc_reg|current_pc[17]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[17]~57_combout\ = (\dp_pc_reg|current_pc\(17) & (\dp_pc_reg|current_pc[16]~56\ $ (GND))) # (!\dp_pc_reg|current_pc\(17) & (!\dp_pc_reg|current_pc[16]~56\ & VCC))
-- \dp_pc_reg|current_pc[17]~58\ = CARRY((\dp_pc_reg|current_pc\(17) & !\dp_pc_reg|current_pc[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(17),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[16]~56\,
	combout => \dp_pc_reg|current_pc[17]~57_combout\,
	cout => \dp_pc_reg|current_pc[17]~58\);

-- Location: FF_X49_Y1_N1
\dp_pc_reg|current_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[17]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(17));

-- Location: LCCOMB_X49_Y1_N2
\dp_pc_reg|current_pc[18]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[18]~59_combout\ = (\dp_pc_reg|current_pc\(18) & (!\dp_pc_reg|current_pc[17]~58\)) # (!\dp_pc_reg|current_pc\(18) & ((\dp_pc_reg|current_pc[17]~58\) # (GND)))
-- \dp_pc_reg|current_pc[18]~60\ = CARRY((!\dp_pc_reg|current_pc[17]~58\) # (!\dp_pc_reg|current_pc\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(18),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[17]~58\,
	combout => \dp_pc_reg|current_pc[18]~59_combout\,
	cout => \dp_pc_reg|current_pc[18]~60\);

-- Location: FF_X49_Y1_N3
\dp_pc_reg|current_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[18]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(18));

-- Location: LCCOMB_X49_Y1_N4
\dp_pc_reg|current_pc[19]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[19]~61_combout\ = (\dp_pc_reg|current_pc\(19) & (\dp_pc_reg|current_pc[18]~60\ $ (GND))) # (!\dp_pc_reg|current_pc\(19) & (!\dp_pc_reg|current_pc[18]~60\ & VCC))
-- \dp_pc_reg|current_pc[19]~62\ = CARRY((\dp_pc_reg|current_pc\(19) & !\dp_pc_reg|current_pc[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(19),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[18]~60\,
	combout => \dp_pc_reg|current_pc[19]~61_combout\,
	cout => \dp_pc_reg|current_pc[19]~62\);

-- Location: FF_X49_Y1_N5
\dp_pc_reg|current_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[19]~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(19));

-- Location: LCCOMB_X49_Y1_N6
\dp_pc_reg|current_pc[20]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[20]~63_combout\ = (\dp_pc_reg|current_pc\(20) & (!\dp_pc_reg|current_pc[19]~62\)) # (!\dp_pc_reg|current_pc\(20) & ((\dp_pc_reg|current_pc[19]~62\) # (GND)))
-- \dp_pc_reg|current_pc[20]~64\ = CARRY((!\dp_pc_reg|current_pc[19]~62\) # (!\dp_pc_reg|current_pc\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(20),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[19]~62\,
	combout => \dp_pc_reg|current_pc[20]~63_combout\,
	cout => \dp_pc_reg|current_pc[20]~64\);

-- Location: FF_X49_Y1_N7
\dp_pc_reg|current_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[20]~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(20));

-- Location: LCCOMB_X49_Y1_N8
\dp_pc_reg|current_pc[21]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[21]~65_combout\ = (\dp_pc_reg|current_pc\(21) & (\dp_pc_reg|current_pc[20]~64\ $ (GND))) # (!\dp_pc_reg|current_pc\(21) & (!\dp_pc_reg|current_pc[20]~64\ & VCC))
-- \dp_pc_reg|current_pc[21]~66\ = CARRY((\dp_pc_reg|current_pc\(21) & !\dp_pc_reg|current_pc[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(21),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[20]~64\,
	combout => \dp_pc_reg|current_pc[21]~65_combout\,
	cout => \dp_pc_reg|current_pc[21]~66\);

-- Location: FF_X49_Y1_N9
\dp_pc_reg|current_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[21]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(21));

-- Location: LCCOMB_X49_Y1_N10
\dp_pc_reg|current_pc[22]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[22]~67_combout\ = (\dp_pc_reg|current_pc\(22) & (!\dp_pc_reg|current_pc[21]~66\)) # (!\dp_pc_reg|current_pc\(22) & ((\dp_pc_reg|current_pc[21]~66\) # (GND)))
-- \dp_pc_reg|current_pc[22]~68\ = CARRY((!\dp_pc_reg|current_pc[21]~66\) # (!\dp_pc_reg|current_pc\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(22),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[21]~66\,
	combout => \dp_pc_reg|current_pc[22]~67_combout\,
	cout => \dp_pc_reg|current_pc[22]~68\);

-- Location: FF_X49_Y1_N11
\dp_pc_reg|current_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[22]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(22));

-- Location: LCCOMB_X49_Y1_N12
\dp_pc_reg|current_pc[23]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[23]~69_combout\ = (\dp_pc_reg|current_pc\(23) & (\dp_pc_reg|current_pc[22]~68\ $ (GND))) # (!\dp_pc_reg|current_pc\(23) & (!\dp_pc_reg|current_pc[22]~68\ & VCC))
-- \dp_pc_reg|current_pc[23]~70\ = CARRY((\dp_pc_reg|current_pc\(23) & !\dp_pc_reg|current_pc[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(23),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[22]~68\,
	combout => \dp_pc_reg|current_pc[23]~69_combout\,
	cout => \dp_pc_reg|current_pc[23]~70\);

-- Location: FF_X49_Y1_N13
\dp_pc_reg|current_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[23]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(23));

-- Location: LCCOMB_X49_Y1_N14
\dp_pc_reg|current_pc[24]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[24]~71_combout\ = (\dp_pc_reg|current_pc\(24) & (!\dp_pc_reg|current_pc[23]~70\)) # (!\dp_pc_reg|current_pc\(24) & ((\dp_pc_reg|current_pc[23]~70\) # (GND)))
-- \dp_pc_reg|current_pc[24]~72\ = CARRY((!\dp_pc_reg|current_pc[23]~70\) # (!\dp_pc_reg|current_pc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(24),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[23]~70\,
	combout => \dp_pc_reg|current_pc[24]~71_combout\,
	cout => \dp_pc_reg|current_pc[24]~72\);

-- Location: FF_X49_Y1_N15
\dp_pc_reg|current_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[24]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(24));

-- Location: LCCOMB_X49_Y1_N16
\dp_pc_reg|current_pc[25]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[25]~73_combout\ = (\dp_pc_reg|current_pc\(25) & (\dp_pc_reg|current_pc[24]~72\ $ (GND))) # (!\dp_pc_reg|current_pc\(25) & (!\dp_pc_reg|current_pc[24]~72\ & VCC))
-- \dp_pc_reg|current_pc[25]~74\ = CARRY((\dp_pc_reg|current_pc\(25) & !\dp_pc_reg|current_pc[24]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(25),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[24]~72\,
	combout => \dp_pc_reg|current_pc[25]~73_combout\,
	cout => \dp_pc_reg|current_pc[25]~74\);

-- Location: FF_X49_Y1_N17
\dp_pc_reg|current_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[25]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(25));

-- Location: LCCOMB_X49_Y1_N18
\dp_pc_reg|current_pc[26]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[26]~75_combout\ = (\dp_pc_reg|current_pc\(26) & (!\dp_pc_reg|current_pc[25]~74\)) # (!\dp_pc_reg|current_pc\(26) & ((\dp_pc_reg|current_pc[25]~74\) # (GND)))
-- \dp_pc_reg|current_pc[26]~76\ = CARRY((!\dp_pc_reg|current_pc[25]~74\) # (!\dp_pc_reg|current_pc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(26),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[25]~74\,
	combout => \dp_pc_reg|current_pc[26]~75_combout\,
	cout => \dp_pc_reg|current_pc[26]~76\);

-- Location: FF_X49_Y1_N19
\dp_pc_reg|current_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[26]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(26));

-- Location: LCCOMB_X49_Y1_N20
\dp_pc_reg|current_pc[27]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[27]~77_combout\ = (\dp_pc_reg|current_pc\(27) & (\dp_pc_reg|current_pc[26]~76\ $ (GND))) # (!\dp_pc_reg|current_pc\(27) & (!\dp_pc_reg|current_pc[26]~76\ & VCC))
-- \dp_pc_reg|current_pc[27]~78\ = CARRY((\dp_pc_reg|current_pc\(27) & !\dp_pc_reg|current_pc[26]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(27),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[26]~76\,
	combout => \dp_pc_reg|current_pc[27]~77_combout\,
	cout => \dp_pc_reg|current_pc[27]~78\);

-- Location: FF_X49_Y1_N21
\dp_pc_reg|current_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[27]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(27));

-- Location: LCCOMB_X49_Y1_N22
\dp_pc_reg|current_pc[28]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[28]~79_combout\ = (\dp_pc_reg|current_pc\(28) & (!\dp_pc_reg|current_pc[27]~78\)) # (!\dp_pc_reg|current_pc\(28) & ((\dp_pc_reg|current_pc[27]~78\) # (GND)))
-- \dp_pc_reg|current_pc[28]~80\ = CARRY((!\dp_pc_reg|current_pc[27]~78\) # (!\dp_pc_reg|current_pc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(28),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[27]~78\,
	combout => \dp_pc_reg|current_pc[28]~79_combout\,
	cout => \dp_pc_reg|current_pc[28]~80\);

-- Location: FF_X49_Y1_N23
\dp_pc_reg|current_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[28]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(28));

-- Location: LCCOMB_X49_Y1_N24
\dp_pc_reg|current_pc[29]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[29]~81_combout\ = (\dp_pc_reg|current_pc\(29) & (\dp_pc_reg|current_pc[28]~80\ $ (GND))) # (!\dp_pc_reg|current_pc\(29) & (!\dp_pc_reg|current_pc[28]~80\ & VCC))
-- \dp_pc_reg|current_pc[29]~82\ = CARRY((\dp_pc_reg|current_pc\(29) & !\dp_pc_reg|current_pc[28]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp_pc_reg|current_pc\(29),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[28]~80\,
	combout => \dp_pc_reg|current_pc[29]~81_combout\,
	cout => \dp_pc_reg|current_pc[29]~82\);

-- Location: FF_X49_Y1_N25
\dp_pc_reg|current_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[29]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(29));

-- Location: LCCOMB_X49_Y1_N26
\dp_pc_reg|current_pc[30]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[30]~83_combout\ = (\dp_pc_reg|current_pc\(30) & (!\dp_pc_reg|current_pc[29]~82\)) # (!\dp_pc_reg|current_pc\(30) & ((\dp_pc_reg|current_pc[29]~82\) # (GND)))
-- \dp_pc_reg|current_pc[30]~84\ = CARRY((!\dp_pc_reg|current_pc[29]~82\) # (!\dp_pc_reg|current_pc\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp_pc_reg|current_pc\(30),
	datad => VCC,
	cin => \dp_pc_reg|current_pc[29]~82\,
	combout => \dp_pc_reg|current_pc[30]~83_combout\,
	cout => \dp_pc_reg|current_pc[30]~84\);

-- Location: FF_X49_Y1_N27
\dp_pc_reg|current_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[30]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(30));

-- Location: LCCOMB_X49_Y1_N28
\dp_pc_reg|current_pc[31]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_pc_reg|current_pc[31]~85_combout\ = \dp_pc_reg|current_pc[30]~84\ $ (!\dp_pc_reg|current_pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dp_pc_reg|current_pc\(31),
	cin => \dp_pc_reg|current_pc[30]~84\,
	combout => \dp_pc_reg|current_pc[31]~85_combout\);

-- Location: FF_X49_Y1_N29
\dp_pc_reg|current_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_pc_reg|current_pc[31]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_pc_reg|current_pc\(31));

-- Location: IOIBUF_X38_Y0_N8
\instruction[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\instruction[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: IOIBUF_X81_Y14_N1
\instruction[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: IOIBUF_X81_Y4_N15
\instruction[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: IOIBUF_X81_Y50_N1
\instruction[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\instruction[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: IOIBUF_X65_Y67_N1
\instruction[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: IOIBUF_X49_Y67_N22
\instruction[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: IOIBUF_X17_Y0_N15
\instruction[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(8),
	o => \instruction[8]~input_o\);

-- Location: IOIBUF_X52_Y67_N15
\instruction[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(9),
	o => \instruction[9]~input_o\);

-- Location: IOIBUF_X81_Y2_N15
\instruction[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(10),
	o => \instruction[10]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\instruction[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(11),
	o => \instruction[11]~input_o\);

-- Location: IOIBUF_X81_Y4_N8
\instruction[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(12),
	o => \instruction[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\instruction[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(13),
	o => \instruction[13]~input_o\);

-- Location: IOIBUF_X81_Y44_N8
\instruction[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(14),
	o => \instruction[14]~input_o\);

-- Location: IOIBUF_X26_Y67_N8
\instruction[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(15),
	o => \instruction[15]~input_o\);

-- Location: IOIBUF_X33_Y0_N15
\instruction[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(16),
	o => \instruction[16]~input_o\);

-- Location: IOIBUF_X56_Y67_N22
\instruction[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(17),
	o => \instruction[17]~input_o\);

-- Location: IOIBUF_X81_Y21_N8
\instruction[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(18),
	o => \instruction[18]~input_o\);

-- Location: IOIBUF_X81_Y64_N22
\instruction[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(19),
	o => \instruction[19]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\instruction[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(20),
	o => \instruction[20]~input_o\);

-- Location: IOIBUF_X81_Y8_N1
\instruction[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(21),
	o => \instruction[21]~input_o\);

-- Location: IOIBUF_X10_Y67_N15
\instruction[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(22),
	o => \instruction[22]~input_o\);

-- Location: IOIBUF_X81_Y20_N1
\instruction[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(23),
	o => \instruction[23]~input_o\);

-- Location: IOIBUF_X42_Y67_N8
\instruction[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(24),
	o => \instruction[24]~input_o\);

-- Location: IOIBUF_X8_Y67_N1
\instruction[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(25),
	o => \instruction[25]~input_o\);

-- Location: IOIBUF_X44_Y67_N15
\instruction[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(26),
	o => \instruction[26]~input_o\);

-- Location: IOIBUF_X47_Y67_N1
\instruction[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(27),
	o => \instruction[27]~input_o\);

-- Location: IOIBUF_X81_Y55_N8
\instruction[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(28),
	o => \instruction[28]~input_o\);

-- Location: IOIBUF_X81_Y20_N8
\instruction[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(29),
	o => \instruction[29]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\instruction[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(30),
	o => \instruction[30]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\instruction[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(31),
	o => \instruction[31]~input_o\);

-- Location: IOIBUF_X13_Y67_N8
\data_from_memory[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(0),
	o => \data_from_memory[0]~input_o\);

-- Location: IOIBUF_X81_Y64_N15
\data_from_memory[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(1),
	o => \data_from_memory[1]~input_o\);

-- Location: IOIBUF_X81_Y14_N8
\data_from_memory[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(2),
	o => \data_from_memory[2]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\data_from_memory[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(3),
	o => \data_from_memory[3]~input_o\);

-- Location: IOIBUF_X58_Y67_N1
\data_from_memory[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(4),
	o => \data_from_memory[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\data_from_memory[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(5),
	o => \data_from_memory[5]~input_o\);

-- Location: IOIBUF_X81_Y7_N1
\data_from_memory[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(6),
	o => \data_from_memory[6]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\data_from_memory[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(7),
	o => \data_from_memory[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\data_from_memory[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(8),
	o => \data_from_memory[8]~input_o\);

-- Location: IOIBUF_X47_Y67_N8
\data_from_memory[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(9),
	o => \data_from_memory[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\data_from_memory[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(10),
	o => \data_from_memory[10]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\data_from_memory[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(11),
	o => \data_from_memory[11]~input_o\);

-- Location: IOIBUF_X15_Y67_N22
\data_from_memory[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(12),
	o => \data_from_memory[12]~input_o\);

-- Location: IOIBUF_X24_Y67_N1
\data_from_memory[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(13),
	o => \data_from_memory[13]~input_o\);

-- Location: IOIBUF_X26_Y67_N22
\data_from_memory[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(14),
	o => \data_from_memory[14]~input_o\);

-- Location: IOIBUF_X81_Y21_N1
\data_from_memory[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(15),
	o => \data_from_memory[15]~input_o\);

-- Location: IOIBUF_X81_Y3_N1
\data_from_memory[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(16),
	o => \data_from_memory[16]~input_o\);

-- Location: IOIBUF_X56_Y67_N1
\data_from_memory[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(17),
	o => \data_from_memory[17]~input_o\);

-- Location: IOIBUF_X8_Y67_N15
\data_from_memory[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(18),
	o => \data_from_memory[18]~input_o\);

-- Location: IOIBUF_X81_Y5_N1
\data_from_memory[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(19),
	o => \data_from_memory[19]~input_o\);

-- Location: IOIBUF_X81_Y14_N15
\data_from_memory[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(20),
	o => \data_from_memory[20]~input_o\);

-- Location: IOIBUF_X70_Y67_N1
\data_from_memory[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(21),
	o => \data_from_memory[21]~input_o\);

-- Location: IOIBUF_X81_Y2_N8
\data_from_memory[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(22),
	o => \data_from_memory[22]~input_o\);

-- Location: IOIBUF_X81_Y4_N22
\data_from_memory[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(23),
	o => \data_from_memory[23]~input_o\);

-- Location: IOIBUF_X81_Y19_N8
\data_from_memory[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(24),
	o => \data_from_memory[24]~input_o\);

-- Location: IOIBUF_X8_Y67_N8
\data_from_memory[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(25),
	o => \data_from_memory[25]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\data_from_memory[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(26),
	o => \data_from_memory[26]~input_o\);

-- Location: IOIBUF_X68_Y67_N1
\data_from_memory[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(27),
	o => \data_from_memory[27]~input_o\);

-- Location: IOIBUF_X58_Y67_N15
\data_from_memory[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(28),
	o => \data_from_memory[28]~input_o\);

-- Location: IOIBUF_X81_Y11_N22
\data_from_memory[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(29),
	o => \data_from_memory[29]~input_o\);

-- Location: IOIBUF_X44_Y67_N22
\data_from_memory[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(30),
	o => \data_from_memory[30]~input_o\);

-- Location: IOIBUF_X70_Y0_N8
\data_from_memory[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(31),
	o => \data_from_memory[31]~input_o\);

ww_pc_out(0) <= \pc_out[0]~output_o\;

ww_pc_out(1) <= \pc_out[1]~output_o\;

ww_pc_out(2) <= \pc_out[2]~output_o\;

ww_pc_out(3) <= \pc_out[3]~output_o\;

ww_pc_out(4) <= \pc_out[4]~output_o\;

ww_pc_out(5) <= \pc_out[5]~output_o\;

ww_pc_out(6) <= \pc_out[6]~output_o\;

ww_pc_out(7) <= \pc_out[7]~output_o\;

ww_pc_out(8) <= \pc_out[8]~output_o\;

ww_pc_out(9) <= \pc_out[9]~output_o\;

ww_pc_out(10) <= \pc_out[10]~output_o\;

ww_pc_out(11) <= \pc_out[11]~output_o\;

ww_pc_out(12) <= \pc_out[12]~output_o\;

ww_pc_out(13) <= \pc_out[13]~output_o\;

ww_pc_out(14) <= \pc_out[14]~output_o\;

ww_pc_out(15) <= \pc_out[15]~output_o\;

ww_pc_out(16) <= \pc_out[16]~output_o\;

ww_pc_out(17) <= \pc_out[17]~output_o\;

ww_pc_out(18) <= \pc_out[18]~output_o\;

ww_pc_out(19) <= \pc_out[19]~output_o\;

ww_pc_out(20) <= \pc_out[20]~output_o\;

ww_pc_out(21) <= \pc_out[21]~output_o\;

ww_pc_out(22) <= \pc_out[22]~output_o\;

ww_pc_out(23) <= \pc_out[23]~output_o\;

ww_pc_out(24) <= \pc_out[24]~output_o\;

ww_pc_out(25) <= \pc_out[25]~output_o\;

ww_pc_out(26) <= \pc_out[26]~output_o\;

ww_pc_out(27) <= \pc_out[27]~output_o\;

ww_pc_out(28) <= \pc_out[28]~output_o\;

ww_pc_out(29) <= \pc_out[29]~output_o\;

ww_pc_out(30) <= \pc_out[30]~output_o\;

ww_pc_out(31) <= \pc_out[31]~output_o\;

ww_data_to_memory(0) <= \data_to_memory[0]~output_o\;

ww_data_to_memory(1) <= \data_to_memory[1]~output_o\;

ww_data_to_memory(2) <= \data_to_memory[2]~output_o\;

ww_data_to_memory(3) <= \data_to_memory[3]~output_o\;

ww_data_to_memory(4) <= \data_to_memory[4]~output_o\;

ww_data_to_memory(5) <= \data_to_memory[5]~output_o\;

ww_data_to_memory(6) <= \data_to_memory[6]~output_o\;

ww_data_to_memory(7) <= \data_to_memory[7]~output_o\;

ww_data_to_memory(8) <= \data_to_memory[8]~output_o\;

ww_data_to_memory(9) <= \data_to_memory[9]~output_o\;

ww_data_to_memory(10) <= \data_to_memory[10]~output_o\;

ww_data_to_memory(11) <= \data_to_memory[11]~output_o\;

ww_data_to_memory(12) <= \data_to_memory[12]~output_o\;

ww_data_to_memory(13) <= \data_to_memory[13]~output_o\;

ww_data_to_memory(14) <= \data_to_memory[14]~output_o\;

ww_data_to_memory(15) <= \data_to_memory[15]~output_o\;

ww_data_to_memory(16) <= \data_to_memory[16]~output_o\;

ww_data_to_memory(17) <= \data_to_memory[17]~output_o\;

ww_data_to_memory(18) <= \data_to_memory[18]~output_o\;

ww_data_to_memory(19) <= \data_to_memory[19]~output_o\;

ww_data_to_memory(20) <= \data_to_memory[20]~output_o\;

ww_data_to_memory(21) <= \data_to_memory[21]~output_o\;

ww_data_to_memory(22) <= \data_to_memory[22]~output_o\;

ww_data_to_memory(23) <= \data_to_memory[23]~output_o\;

ww_data_to_memory(24) <= \data_to_memory[24]~output_o\;

ww_data_to_memory(25) <= \data_to_memory[25]~output_o\;

ww_data_to_memory(26) <= \data_to_memory[26]~output_o\;

ww_data_to_memory(27) <= \data_to_memory[27]~output_o\;

ww_data_to_memory(28) <= \data_to_memory[28]~output_o\;

ww_data_to_memory(29) <= \data_to_memory[29]~output_o\;

ww_data_to_memory(30) <= \data_to_memory[30]~output_o\;

ww_data_to_memory(31) <= \data_to_memory[31]~output_o\;

ww_memory_write_enable <= \memory_write_enable~output_o\;
END structure;


