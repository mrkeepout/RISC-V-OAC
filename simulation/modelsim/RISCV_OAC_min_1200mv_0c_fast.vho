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

-- DATE "02/20/2025 12:17:30"

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
	pc_out : BUFFER std_logic_vector(31 DOWNTO 0);
	data_to_memory : BUFFER std_logic_vector(31 DOWNTO 0);
	memory_write_enable : BUFFER std_logic
	);
END RISC_V_Uniciclo;

-- Design Ports Information
-- data_from_memory[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[9]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[10]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[11]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[12]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[13]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[14]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[16]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[17]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[18]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[20]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[21]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[22]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[23]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[24]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[25]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[26]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[27]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[28]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[29]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[30]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_from_memory[31]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[0]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[13]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[14]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[15]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[16]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[17]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[18]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[19]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[20]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[22]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[23]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[24]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[25]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[26]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[27]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[28]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[29]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[30]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[31]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[5]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[6]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[10]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[11]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[14]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[16]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[17]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[18]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[19]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[20]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[21]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[22]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[23]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[24]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[25]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[26]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[27]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[28]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[29]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[30]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_to_memory[31]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memory_write_enable	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[20]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[21]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[22]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[23]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[24]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[25]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[30]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[26]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[27]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[28]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[29]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[31]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[16]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[17]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[18]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[19]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \IMM|Mux21~0_combout\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \instruction[20]~input_o\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \IMM|Mux31~2_combout\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \IMM|Mux31~0_combout\ : std_logic;
SIGNAL \UC|Mux6~0_combout\ : std_logic;
SIGNAL \IMM|Mux31~1_combout\ : std_logic;
SIGNAL \IMM|Mux31~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \UC|Mux6~2_combout\ : std_logic;
SIGNAL \IMM|Mux27~2_combout\ : std_logic;
SIGNAL \UC|Mux7~0_combout\ : std_logic;
SIGNAL \instruction[12]~input_o\ : std_logic;
SIGNAL \instruction[13]~input_o\ : std_logic;
SIGNAL \instruction[14]~input_o\ : std_logic;
SIGNAL \UC|Mux7~1_combout\ : std_logic;
SIGNAL \UC|Mux7~2_combout\ : std_logic;
SIGNAL \instruction[21]~input_o\ : std_logic;
SIGNAL \instruction[8]~input_o\ : std_logic;
SIGNAL \IMM|Mux30~1_combout\ : std_logic;
SIGNAL \IMM|Mux0~0_combout\ : std_logic;
SIGNAL \IMM|Mux27~3_combout\ : std_logic;
SIGNAL \IMM|Mux0~1_combout\ : std_logic;
SIGNAL \IMM|Mux27~7_combout\ : std_logic;
SIGNAL \IMM|Mux30~0_combout\ : std_logic;
SIGNAL \IMM|Mux30~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[2]~30_combout\ : std_logic;
SIGNAL \instruction[22]~input_o\ : std_logic;
SIGNAL \IMM|Mux29~0_combout\ : std_logic;
SIGNAL \instruction[9]~input_o\ : std_logic;
SIGNAL \IMM|Mux29~1_combout\ : std_logic;
SIGNAL \IMM|Mux29~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[2]~31\ : std_logic;
SIGNAL \PC_inst|current_pc[3]~32_combout\ : std_logic;
SIGNAL \instruction[10]~input_o\ : std_logic;
SIGNAL \instruction[23]~input_o\ : std_logic;
SIGNAL \IMM|Mux28~1_combout\ : std_logic;
SIGNAL \IMM|Mux28~0_combout\ : std_logic;
SIGNAL \IMM|Mux28~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[3]~33\ : std_logic;
SIGNAL \PC_inst|current_pc[4]~34_combout\ : std_logic;
SIGNAL \instruction[11]~input_o\ : std_logic;
SIGNAL \instruction[24]~input_o\ : std_logic;
SIGNAL \IMM|Mux27~5_combout\ : std_logic;
SIGNAL \IMM|Mux27~4_combout\ : std_logic;
SIGNAL \IMM|Mux27~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[4]~35\ : std_logic;
SIGNAL \PC_inst|current_pc[5]~36_combout\ : std_logic;
SIGNAL \IMM|Mux21~1_combout\ : std_logic;
SIGNAL \IMM|Mux22~0_combout\ : std_logic;
SIGNAL \IMM|Mux21~2_combout\ : std_logic;
SIGNAL \instruction[25]~input_o\ : std_logic;
SIGNAL \instruction[30]~input_o\ : std_logic;
SIGNAL \IMM|process_0~0_combout\ : std_logic;
SIGNAL \IMM|Mux21~3_combout\ : std_logic;
SIGNAL \IMM|Mux26~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[5]~37\ : std_logic;
SIGNAL \PC_inst|current_pc[6]~38_combout\ : std_logic;
SIGNAL \instruction[26]~input_o\ : std_logic;
SIGNAL \IMM|Mux25~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[6]~39\ : std_logic;
SIGNAL \PC_inst|current_pc[7]~40_combout\ : std_logic;
SIGNAL \instruction[27]~input_o\ : std_logic;
SIGNAL \IMM|Mux24~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[7]~41\ : std_logic;
SIGNAL \PC_inst|current_pc[8]~42_combout\ : std_logic;
SIGNAL \instruction[28]~input_o\ : std_logic;
SIGNAL \IMM|Mux23~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[8]~43\ : std_logic;
SIGNAL \PC_inst|current_pc[9]~44_combout\ : std_logic;
SIGNAL \instruction[29]~input_o\ : std_logic;
SIGNAL \IMM|Mux22~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[9]~45\ : std_logic;
SIGNAL \PC_inst|current_pc[10]~46_combout\ : std_logic;
SIGNAL \IMM|Mux21~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[10]~47\ : std_logic;
SIGNAL \PC_inst|current_pc[11]~48_combout\ : std_logic;
SIGNAL \instruction[31]~input_o\ : std_logic;
SIGNAL \IMM|Mux20~1_combout\ : std_logic;
SIGNAL \IMM|Mux0~3_combout\ : std_logic;
SIGNAL \IMM|Mux20~2_combout\ : std_logic;
SIGNAL \IMM|Mux0~2_combout\ : std_logic;
SIGNAL \IMM|Mux19~0_combout\ : std_logic;
SIGNAL \IMM|Mux20~0_combout\ : std_logic;
SIGNAL \IMM|Mux20~3_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[11]~49\ : std_logic;
SIGNAL \PC_inst|current_pc[12]~50_combout\ : std_logic;
SIGNAL \IMM|Mux19~1_combout\ : std_logic;
SIGNAL \IMM|Mux16~0_combout\ : std_logic;
SIGNAL \IMM|Mux12~0_combout\ : std_logic;
SIGNAL \IMM|Mux19~3_combout\ : std_logic;
SIGNAL \IMM|Mux19~2_combout\ : std_logic;
SIGNAL \IMM|Mux19~4_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[12]~51\ : std_logic;
SIGNAL \PC_inst|current_pc[13]~52_combout\ : std_logic;
SIGNAL \IMM|Mux18~0_combout\ : std_logic;
SIGNAL \IMM|Mux18~1_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[13]~53\ : std_logic;
SIGNAL \PC_inst|current_pc[14]~54_combout\ : std_logic;
SIGNAL \IMM|Mux17~0_combout\ : std_logic;
SIGNAL \IMM|Mux17~1_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[14]~55\ : std_logic;
SIGNAL \PC_inst|current_pc[15]~56_combout\ : std_logic;
SIGNAL \instruction[15]~input_o\ : std_logic;
SIGNAL \IMM|Mux16~1_combout\ : std_logic;
SIGNAL \IMM|Mux16~2_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[15]~57\ : std_logic;
SIGNAL \PC_inst|current_pc[16]~58_combout\ : std_logic;
SIGNAL \instruction[16]~input_o\ : std_logic;
SIGNAL \IMM|Mux15~0_combout\ : std_logic;
SIGNAL \IMM|Mux15~1_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[16]~59\ : std_logic;
SIGNAL \PC_inst|current_pc[17]~60_combout\ : std_logic;
SIGNAL \instruction[17]~input_o\ : std_logic;
SIGNAL \IMM|Mux14~0_combout\ : std_logic;
SIGNAL \IMM|Mux14~1_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[17]~61\ : std_logic;
SIGNAL \PC_inst|current_pc[18]~62_combout\ : std_logic;
SIGNAL \instruction[18]~input_o\ : std_logic;
SIGNAL \IMM|Mux13~0_combout\ : std_logic;
SIGNAL \IMM|Mux13~1_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[18]~63\ : std_logic;
SIGNAL \PC_inst|current_pc[19]~64_combout\ : std_logic;
SIGNAL \instruction[19]~input_o\ : std_logic;
SIGNAL \IMM|Mux12~1_combout\ : std_logic;
SIGNAL \IMM|Mux12~2_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[19]~65\ : std_logic;
SIGNAL \PC_inst|current_pc[20]~66_combout\ : std_logic;
SIGNAL \IMM|Mux11~1_combout\ : std_logic;
SIGNAL \IMM|Mux11~2_combout\ : std_logic;
SIGNAL \IMM|Mux11~0_combout\ : std_logic;
SIGNAL \IMM|Mux11~3_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[20]~67\ : std_logic;
SIGNAL \PC_inst|current_pc[21]~68_combout\ : std_logic;
SIGNAL \IMM|Mux10~0_combout\ : std_logic;
SIGNAL \IMM|Mux10~1_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[21]~69\ : std_logic;
SIGNAL \PC_inst|current_pc[22]~70_combout\ : std_logic;
SIGNAL \IMM|Mux9~0_combout\ : std_logic;
SIGNAL \IMM|Mux9~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[22]~71\ : std_logic;
SIGNAL \PC_inst|current_pc[23]~72_combout\ : std_logic;
SIGNAL \IMM|Mux8~0_combout\ : std_logic;
SIGNAL \IMM|Mux8~1_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[23]~73\ : std_logic;
SIGNAL \PC_inst|current_pc[24]~74_combout\ : std_logic;
SIGNAL \IMM|Mux7~0_combout\ : std_logic;
SIGNAL \IMM|Mux7~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[24]~75\ : std_logic;
SIGNAL \PC_inst|current_pc[25]~76_combout\ : std_logic;
SIGNAL \IMM|Mux6~0_combout\ : std_logic;
SIGNAL \IMM|Mux6~1_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[25]~77\ : std_logic;
SIGNAL \PC_inst|current_pc[26]~78_combout\ : std_logic;
SIGNAL \IMM|Mux5~0_combout\ : std_logic;
SIGNAL \IMM|Mux5~1_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[26]~79\ : std_logic;
SIGNAL \PC_inst|current_pc[27]~80_combout\ : std_logic;
SIGNAL \IMM|Mux4~0_combout\ : std_logic;
SIGNAL \IMM|Mux4~1_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[27]~81\ : std_logic;
SIGNAL \PC_inst|current_pc[28]~82_combout\ : std_logic;
SIGNAL \IMM|Mux3~0_combout\ : std_logic;
SIGNAL \IMM|Mux3~1_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[28]~83\ : std_logic;
SIGNAL \PC_inst|current_pc[29]~84_combout\ : std_logic;
SIGNAL \IMM|Mux2~0_combout\ : std_logic;
SIGNAL \IMM|Mux2~1_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[29]~85\ : std_logic;
SIGNAL \PC_inst|current_pc[30]~86_combout\ : std_logic;
SIGNAL \IMM|Mux1~0_combout\ : std_logic;
SIGNAL \IMM|Mux1~1_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \PC_inst|current_pc[30]~87\ : std_logic;
SIGNAL \PC_inst|current_pc[31]~88_combout\ : std_logic;
SIGNAL \IMM|Mux0~4_combout\ : std_logic;
SIGNAL \IMM|Mux0~5_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \UC|Mux6~1_combout\ : std_logic;
SIGNAL \PC_inst|current_pc\ : std_logic_vector(31 DOWNTO 0);
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

-- Location: IOOBUF_X81_Y11_N2
\pc_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(0),
	devoe => ww_devoe,
	o => \pc_out[0]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\pc_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(1),
	devoe => ww_devoe,
	o => \pc_out[1]~output_o\);

-- Location: IOOBUF_X81_Y4_N16
\pc_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(2),
	devoe => ww_devoe,
	o => \pc_out[2]~output_o\);

-- Location: IOOBUF_X81_Y4_N9
\pc_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(3),
	devoe => ww_devoe,
	o => \pc_out[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\pc_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(4),
	devoe => ww_devoe,
	o => \pc_out[4]~output_o\);

-- Location: IOOBUF_X81_Y5_N2
\pc_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(5),
	devoe => ww_devoe,
	o => \pc_out[5]~output_o\);

-- Location: IOOBUF_X81_Y4_N23
\pc_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(6),
	devoe => ww_devoe,
	o => \pc_out[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\pc_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(7),
	devoe => ww_devoe,
	o => \pc_out[7]~output_o\);

-- Location: IOOBUF_X81_Y10_N16
\pc_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(8),
	devoe => ww_devoe,
	o => \pc_out[8]~output_o\);

-- Location: IOOBUF_X81_Y4_N2
\pc_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(9),
	devoe => ww_devoe,
	o => \pc_out[9]~output_o\);

-- Location: IOOBUF_X81_Y10_N2
\pc_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(10),
	devoe => ww_devoe,
	o => \pc_out[10]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\pc_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(11),
	devoe => ww_devoe,
	o => \pc_out[11]~output_o\);

-- Location: IOOBUF_X81_Y8_N9
\pc_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(12),
	devoe => ww_devoe,
	o => \pc_out[12]~output_o\);

-- Location: IOOBUF_X81_Y9_N2
\pc_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(13),
	devoe => ww_devoe,
	o => \pc_out[13]~output_o\);

-- Location: IOOBUF_X81_Y10_N9
\pc_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(14),
	devoe => ww_devoe,
	o => \pc_out[14]~output_o\);

-- Location: IOOBUF_X81_Y8_N2
\pc_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(15),
	devoe => ww_devoe,
	o => \pc_out[15]~output_o\);

-- Location: IOOBUF_X81_Y7_N9
\pc_out[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(16),
	devoe => ww_devoe,
	o => \pc_out[16]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\pc_out[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(17),
	devoe => ww_devoe,
	o => \pc_out[17]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\pc_out[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(18),
	devoe => ww_devoe,
	o => \pc_out[18]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\pc_out[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(19),
	devoe => ww_devoe,
	o => \pc_out[19]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\pc_out[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(20),
	devoe => ww_devoe,
	o => \pc_out[20]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\pc_out[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(21),
	devoe => ww_devoe,
	o => \pc_out[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\pc_out[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(22),
	devoe => ww_devoe,
	o => \pc_out[22]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\pc_out[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(23),
	devoe => ww_devoe,
	o => \pc_out[23]~output_o\);

-- Location: IOOBUF_X81_Y3_N2
\pc_out[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(24),
	devoe => ww_devoe,
	o => \pc_out[24]~output_o\);

-- Location: IOOBUF_X81_Y7_N2
\pc_out[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(25),
	devoe => ww_devoe,
	o => \pc_out[25]~output_o\);

-- Location: IOOBUF_X81_Y6_N9
\pc_out[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(26),
	devoe => ww_devoe,
	o => \pc_out[26]~output_o\);

-- Location: IOOBUF_X81_Y7_N16
\pc_out[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(27),
	devoe => ww_devoe,
	o => \pc_out[27]~output_o\);

-- Location: IOOBUF_X81_Y3_N9
\pc_out[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(28),
	devoe => ww_devoe,
	o => \pc_out[28]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\pc_out[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(29),
	devoe => ww_devoe,
	o => \pc_out[29]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\pc_out[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(30),
	devoe => ww_devoe,
	o => \pc_out[30]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\pc_out[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_inst|current_pc\(31),
	devoe => ww_devoe,
	o => \pc_out[31]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X81_Y20_N9
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

-- Location: IOOBUF_X15_Y0_N16
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X26_Y67_N16
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

-- Location: IOOBUF_X10_Y67_N16
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

-- Location: IOOBUF_X29_Y67_N16
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

-- Location: IOOBUF_X8_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X81_Y52_N2
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

-- Location: IOOBUF_X81_Y62_N2
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

-- Location: IOOBUF_X24_Y67_N2
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

-- Location: IOOBUF_X70_Y67_N2
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

-- Location: IOOBUF_X33_Y67_N9
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

-- Location: IOOBUF_X54_Y67_N23
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

-- Location: IOOBUF_X81_Y61_N16
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X58_Y67_N23
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

-- Location: IOOBUF_X13_Y67_N9
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

-- Location: IOOBUF_X40_Y67_N2
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

-- Location: IOOBUF_X19_Y0_N23
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

-- Location: IOOBUF_X52_Y67_N16
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

-- Location: IOOBUF_X81_Y44_N9
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

-- Location: IOOBUF_X81_Y63_N2
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

-- Location: IOOBUF_X47_Y67_N2
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

-- Location: IOOBUF_X81_Y50_N9
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

-- Location: IOOBUF_X31_Y67_N23
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

-- Location: IOOBUF_X81_Y21_N9
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

-- Location: IOOBUF_X65_Y67_N16
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

-- Location: IOOBUF_X81_Y62_N16
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

-- Location: IOOBUF_X81_Y2_N23
\memory_write_enable~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|Mux6~1_combout\,
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

-- Location: IOIBUF_X52_Y0_N8
\instruction[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\instruction[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\instruction[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\instruction[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: LCCOMB_X63_Y2_N14
\IMM|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux21~0_combout\ = (\instruction[5]~input_o\ & (!\instruction[4]~input_o\ & (\instruction[0]~input_o\ & \instruction[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \instruction[4]~input_o\,
	datac => \instruction[0]~input_o\,
	datad => \instruction[1]~input_o\,
	combout => \IMM|Mux21~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\instruction[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\instruction[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(20),
	o => \instruction[20]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\instruction[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: LCCOMB_X64_Y2_N24
\IMM|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux31~2_combout\ = (!\instruction[3]~input_o\ & (\instruction[20]~input_o\ & \instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datab => \instruction[20]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux31~2_combout\);

-- Location: IOIBUF_X61_Y0_N1
\instruction[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\instruction[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: LCCOMB_X64_Y2_N8
\IMM|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux31~0_combout\ = (\instruction[5]~input_o\ & (((!\instruction[4]~input_o\ & \instruction[7]~input_o\)))) # (!\instruction[5]~input_o\ & (\instruction[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[7]~input_o\,
	combout => \IMM|Mux31~0_combout\);

-- Location: LCCOMB_X63_Y2_N8
\UC|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UC|Mux6~0_combout\ = (\instruction[0]~input_o\ & (\instruction[1]~input_o\ & !\instruction[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[0]~input_o\,
	datab => \instruction[1]~input_o\,
	datac => \instruction[6]~input_o\,
	combout => \UC|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y2_N2
\IMM|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux31~1_combout\ = (!\instruction[3]~input_o\ & (!\instruction[2]~input_o\ & (\IMM|Mux31~0_combout\ & \UC|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datab => \instruction[2]~input_o\,
	datac => \IMM|Mux31~0_combout\,
	datad => \UC|Mux6~0_combout\,
	combout => \IMM|Mux31~1_combout\);

-- Location: LCCOMB_X64_Y2_N18
\IMM|Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux31~3_combout\ = (\IMM|Mux31~1_combout\) # ((\IMM|Mux21~0_combout\ & (\IMM|Mux31~2_combout\ & \instruction[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux21~0_combout\,
	datab => \IMM|Mux31~2_combout\,
	datac => \instruction[6]~input_o\,
	datad => \IMM|Mux31~1_combout\,
	combout => \IMM|Mux31~3_combout\);

-- Location: LCCOMB_X65_Y4_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\IMM|Mux31~3_combout\ & (\PC_inst|current_pc\(0) $ (VCC))) # (!\IMM|Mux31~3_combout\ & (\PC_inst|current_pc\(0) & VCC))
-- \Add0~1\ = CARRY((\IMM|Mux31~3_combout\ & \PC_inst|current_pc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux31~3_combout\,
	datab => \PC_inst|current_pc\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

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

-- Location: LCCOMB_X63_Y2_N20
\UC|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UC|Mux6~2_combout\ = (\instruction[0]~input_o\ & \instruction[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[0]~input_o\,
	datac => \instruction[1]~input_o\,
	combout => \UC|Mux6~2_combout\);

-- Location: LCCOMB_X64_Y2_N28
\IMM|Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux27~2_combout\ = (!\instruction[3]~input_o\ & !\instruction[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux27~2_combout\);

-- Location: LCCOMB_X64_Y2_N16
\UC|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UC|Mux7~0_combout\ = (\instruction[5]~input_o\ & (\UC|Mux6~2_combout\ & (!\instruction[4]~input_o\ & \IMM|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \UC|Mux6~2_combout\,
	datac => \instruction[4]~input_o\,
	datad => \IMM|Mux27~2_combout\,
	combout => \UC|Mux7~0_combout\);

-- Location: IOIBUF_X70_Y0_N8
\instruction[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(12),
	o => \instruction[12]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\instruction[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(13),
	o => \instruction[13]~input_o\);

-- Location: IOIBUF_X81_Y2_N8
\instruction[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(14),
	o => \instruction[14]~input_o\);

-- Location: LCCOMB_X65_Y2_N20
\UC|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UC|Mux7~1_combout\ = (\instruction[6]~input_o\ & (!\instruction[12]~input_o\ & (!\instruction[13]~input_o\ & !\instruction[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[12]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \instruction[14]~input_o\,
	combout => \UC|Mux7~1_combout\);

-- Location: LCCOMB_X65_Y2_N10
\UC|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UC|Mux7~2_combout\ = (\UC|Mux7~0_combout\ & \UC|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|Mux7~0_combout\,
	datad => \UC|Mux7~1_combout\,
	combout => \UC|Mux7~2_combout\);

-- Location: FF_X65_Y4_N1
\PC_inst|current_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(0));

-- Location: IOIBUF_X54_Y0_N22
\instruction[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(21),
	o => \instruction[21]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\instruction[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(8),
	o => \instruction[8]~input_o\);

-- Location: LCCOMB_X63_Y4_N16
\IMM|Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux30~1_combout\ = (\instruction[2]~input_o\ & (((\instruction[21]~input_o\)))) # (!\instruction[2]~input_o\ & (\instruction[5]~input_o\ & ((\instruction[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \instruction[21]~input_o\,
	datac => \instruction[8]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux30~1_combout\);

-- Location: LCCOMB_X63_Y2_N10
\IMM|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux0~0_combout\ = (!\instruction[6]~input_o\ & (\instruction[1]~input_o\ & (\instruction[0]~input_o\ & !\instruction[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[1]~input_o\,
	datac => \instruction[0]~input_o\,
	datad => \instruction[3]~input_o\,
	combout => \IMM|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y4_N24
\IMM|Mux27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux27~3_combout\ = (\instruction[5]~input_o\ & (!\instruction[4]~input_o\)) # (!\instruction[5]~input_o\ & ((\instruction[2]~input_o\ & (!\instruction[4]~input_o\)) # (!\instruction[2]~input_o\ & ((\IMM|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \instruction[4]~input_o\,
	datac => \IMM|Mux0~0_combout\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux27~3_combout\);

-- Location: LCCOMB_X63_Y2_N24
\IMM|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux0~1_combout\ = (\instruction[6]~input_o\ & \instruction[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datac => \instruction[5]~input_o\,
	combout => \IMM|Mux0~1_combout\);

-- Location: LCCOMB_X63_Y2_N12
\IMM|Mux27~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux27~7_combout\ = (\UC|Mux6~2_combout\ & ((\instruction[2]~input_o\ & ((\IMM|Mux0~1_combout\))) # (!\instruction[2]~input_o\ & (!\instruction[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datab => \UC|Mux6~2_combout\,
	datac => \instruction[2]~input_o\,
	datad => \IMM|Mux0~1_combout\,
	combout => \IMM|Mux27~7_combout\);

-- Location: LCCOMB_X63_Y4_N14
\IMM|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux30~0_combout\ = (\instruction[21]~input_o\ & (!\instruction[5]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[21]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux30~0_combout\);

-- Location: LCCOMB_X64_Y4_N16
\IMM|Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux30~2_combout\ = (\IMM|Mux27~3_combout\ & ((\IMM|Mux30~0_combout\) # ((\IMM|Mux30~1_combout\ & \IMM|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux30~1_combout\,
	datab => \IMM|Mux27~3_combout\,
	datac => \IMM|Mux27~7_combout\,
	datad => \IMM|Mux30~0_combout\,
	combout => \IMM|Mux30~2_combout\);

-- Location: LCCOMB_X65_Y4_N2
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\IMM|Mux30~2_combout\ & ((\PC_inst|current_pc\(1) & (\Add0~1\ & VCC)) # (!\PC_inst|current_pc\(1) & (!\Add0~1\)))) # (!\IMM|Mux30~2_combout\ & ((\PC_inst|current_pc\(1) & (!\Add0~1\)) # (!\PC_inst|current_pc\(1) & ((\Add0~1\) # 
-- (GND)))))
-- \Add0~3\ = CARRY((\IMM|Mux30~2_combout\ & (!\PC_inst|current_pc\(1) & !\Add0~1\)) # (!\IMM|Mux30~2_combout\ & ((!\Add0~1\) # (!\PC_inst|current_pc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux30~2_combout\,
	datab => \PC_inst|current_pc\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X65_Y4_N3
\PC_inst|current_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(1));

-- Location: LCCOMB_X66_Y4_N2
\PC_inst|current_pc[2]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[2]~30_combout\ = \PC_inst|current_pc\(2) $ (VCC)
-- \PC_inst|current_pc[2]~31\ = CARRY(\PC_inst|current_pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(2),
	datad => VCC,
	combout => \PC_inst|current_pc[2]~30_combout\,
	cout => \PC_inst|current_pc[2]~31\);

-- Location: IOIBUF_X54_Y0_N15
\instruction[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(22),
	o => \instruction[22]~input_o\);

-- Location: LCCOMB_X63_Y4_N10
\IMM|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux29~0_combout\ = (\instruction[22]~input_o\ & (!\instruction[5]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[22]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux29~0_combout\);

-- Location: IOIBUF_X52_Y0_N15
\instruction[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(9),
	o => \instruction[9]~input_o\);

-- Location: LCCOMB_X63_Y4_N20
\IMM|Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux29~1_combout\ = (\instruction[2]~input_o\ & (((\instruction[22]~input_o\)))) # (!\instruction[2]~input_o\ & (\instruction[9]~input_o\ & (\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[2]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[22]~input_o\,
	combout => \IMM|Mux29~1_combout\);

-- Location: LCCOMB_X64_Y4_N6
\IMM|Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux29~2_combout\ = (\IMM|Mux27~3_combout\ & ((\IMM|Mux29~0_combout\) # ((\IMM|Mux29~1_combout\ & \IMM|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux29~0_combout\,
	datab => \IMM|Mux29~1_combout\,
	datac => \IMM|Mux27~7_combout\,
	datad => \IMM|Mux27~3_combout\,
	combout => \IMM|Mux29~2_combout\);

-- Location: LCCOMB_X65_Y4_N4
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\PC_inst|current_pc\(2) $ (\IMM|Mux29~2_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\PC_inst|current_pc\(2) & ((\IMM|Mux29~2_combout\) # (!\Add0~3\))) # (!\PC_inst|current_pc\(2) & (\IMM|Mux29~2_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(2),
	datab => \IMM|Mux29~2_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X66_Y4_N3
\PC_inst|current_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[2]~30_combout\,
	asdata => \Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(2));

-- Location: LCCOMB_X66_Y4_N4
\PC_inst|current_pc[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[3]~32_combout\ = (\PC_inst|current_pc\(3) & (!\PC_inst|current_pc[2]~31\)) # (!\PC_inst|current_pc\(3) & ((\PC_inst|current_pc[2]~31\) # (GND)))
-- \PC_inst|current_pc[3]~33\ = CARRY((!\PC_inst|current_pc[2]~31\) # (!\PC_inst|current_pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(3),
	datad => VCC,
	cin => \PC_inst|current_pc[2]~31\,
	combout => \PC_inst|current_pc[3]~32_combout\,
	cout => \PC_inst|current_pc[3]~33\);

-- Location: IOIBUF_X52_Y0_N1
\instruction[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(10),
	o => \instruction[10]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\instruction[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(23),
	o => \instruction[23]~input_o\);

-- Location: LCCOMB_X63_Y4_N12
\IMM|Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux28~1_combout\ = (\instruction[2]~input_o\ & (((\instruction[23]~input_o\)))) # (!\instruction[2]~input_o\ & (\instruction[5]~input_o\ & (\instruction[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \instruction[2]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \instruction[23]~input_o\,
	combout => \IMM|Mux28~1_combout\);

-- Location: LCCOMB_X63_Y4_N18
\IMM|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux28~0_combout\ = (\instruction[23]~input_o\ & (!\instruction[5]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux28~0_combout\);

-- Location: LCCOMB_X64_Y4_N4
\IMM|Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux28~2_combout\ = (\IMM|Mux27~3_combout\ & ((\IMM|Mux28~0_combout\) # ((\IMM|Mux28~1_combout\ & \IMM|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux28~1_combout\,
	datab => \IMM|Mux28~0_combout\,
	datac => \IMM|Mux27~7_combout\,
	datad => \IMM|Mux27~3_combout\,
	combout => \IMM|Mux28~2_combout\);

-- Location: LCCOMB_X65_Y4_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\PC_inst|current_pc\(3) & ((\IMM|Mux28~2_combout\ & (\Add0~5\ & VCC)) # (!\IMM|Mux28~2_combout\ & (!\Add0~5\)))) # (!\PC_inst|current_pc\(3) & ((\IMM|Mux28~2_combout\ & (!\Add0~5\)) # (!\IMM|Mux28~2_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\PC_inst|current_pc\(3) & (!\IMM|Mux28~2_combout\ & !\Add0~5\)) # (!\PC_inst|current_pc\(3) & ((!\Add0~5\) # (!\IMM|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(3),
	datab => \IMM|Mux28~2_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X66_Y4_N5
\PC_inst|current_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[3]~32_combout\,
	asdata => \Add0~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(3));

-- Location: LCCOMB_X66_Y4_N6
\PC_inst|current_pc[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[4]~34_combout\ = (\PC_inst|current_pc\(4) & (\PC_inst|current_pc[3]~33\ $ (GND))) # (!\PC_inst|current_pc\(4) & (!\PC_inst|current_pc[3]~33\ & VCC))
-- \PC_inst|current_pc[4]~35\ = CARRY((\PC_inst|current_pc\(4) & !\PC_inst|current_pc[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(4),
	datad => VCC,
	cin => \PC_inst|current_pc[3]~33\,
	combout => \PC_inst|current_pc[4]~34_combout\,
	cout => \PC_inst|current_pc[4]~35\);

-- Location: IOIBUF_X56_Y0_N15
\instruction[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(11),
	o => \instruction[11]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\instruction[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(24),
	o => \instruction[24]~input_o\);

-- Location: LCCOMB_X63_Y4_N0
\IMM|Mux27~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux27~5_combout\ = (\instruction[2]~input_o\ & (((\instruction[24]~input_o\)))) # (!\instruction[2]~input_o\ & (\instruction[5]~input_o\ & (\instruction[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datab => \instruction[11]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux27~5_combout\);

-- Location: LCCOMB_X63_Y4_N26
\IMM|Mux27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux27~4_combout\ = (!\instruction[5]~input_o\ & (\instruction[24]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \IMM|Mux27~4_combout\);

-- Location: LCCOMB_X63_Y4_N2
\IMM|Mux27~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux27~6_combout\ = (\IMM|Mux27~3_combout\ & ((\IMM|Mux27~4_combout\) # ((\IMM|Mux27~7_combout\ & \IMM|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux27~7_combout\,
	datab => \IMM|Mux27~5_combout\,
	datac => \IMM|Mux27~4_combout\,
	datad => \IMM|Mux27~3_combout\,
	combout => \IMM|Mux27~6_combout\);

-- Location: LCCOMB_X65_Y4_N8
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\PC_inst|current_pc\(4) $ (\IMM|Mux27~6_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\PC_inst|current_pc\(4) & ((\IMM|Mux27~6_combout\) # (!\Add0~7\))) # (!\PC_inst|current_pc\(4) & (\IMM|Mux27~6_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(4),
	datab => \IMM|Mux27~6_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X66_Y4_N7
\PC_inst|current_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[4]~34_combout\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(4));

-- Location: LCCOMB_X66_Y4_N8
\PC_inst|current_pc[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[5]~36_combout\ = (\PC_inst|current_pc\(5) & (!\PC_inst|current_pc[4]~35\)) # (!\PC_inst|current_pc\(5) & ((\PC_inst|current_pc[4]~35\) # (GND)))
-- \PC_inst|current_pc[5]~37\ = CARRY((!\PC_inst|current_pc[4]~35\) # (!\PC_inst|current_pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(5),
	datad => VCC,
	cin => \PC_inst|current_pc[4]~35\,
	combout => \PC_inst|current_pc[5]~36_combout\,
	cout => \PC_inst|current_pc[5]~37\);

-- Location: LCCOMB_X63_Y2_N6
\IMM|Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux21~1_combout\ = (\instruction[2]~input_o\ & (\instruction[6]~input_o\)) # (!\instruction[2]~input_o\ & ((!\instruction[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[2]~input_o\,
	datac => \instruction[3]~input_o\,
	combout => \IMM|Mux21~1_combout\);

-- Location: LCCOMB_X63_Y2_N16
\IMM|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux22~0_combout\ = (\instruction[6]~input_o\ & (((\instruction[4]~input_o\) # (!\instruction[5]~input_o\)) # (!\instruction[2]~input_o\))) # (!\instruction[6]~input_o\ & ((\instruction[2]~input_o\) # ((\instruction[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[2]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \IMM|Mux22~0_combout\);

-- Location: LCCOMB_X63_Y2_N22
\IMM|Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux21~2_combout\ = (\IMM|Mux21~1_combout\ & (\IMM|Mux21~0_combout\ & ((\instruction[3]~input_o\) # (\IMM|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux21~1_combout\,
	datab => \instruction[3]~input_o\,
	datac => \IMM|Mux21~0_combout\,
	datad => \IMM|Mux22~0_combout\,
	combout => \IMM|Mux21~2_combout\);

-- Location: IOIBUF_X44_Y0_N22
\instruction[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(25),
	o => \instruction[25]~input_o\);

-- Location: IOIBUF_X68_Y0_N8
\instruction[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(30),
	o => \instruction[30]~input_o\);

-- Location: LCCOMB_X65_Y2_N16
\IMM|process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|process_0~0_combout\ = (((\instruction[13]~input_o\) # (!\instruction[14]~input_o\)) # (!\instruction[12]~input_o\)) # (!\instruction[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \instruction[12]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \instruction[14]~input_o\,
	combout => \IMM|process_0~0_combout\);

-- Location: LCCOMB_X64_Y2_N6
\IMM|Mux21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux21~3_combout\ = (!\instruction[3]~input_o\ & (\UC|Mux6~2_combout\ & (!\IMM|Mux22~0_combout\ & \IMM|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datab => \UC|Mux6~2_combout\,
	datac => \IMM|Mux22~0_combout\,
	datad => \IMM|process_0~0_combout\,
	combout => \IMM|Mux21~3_combout\);

-- Location: LCCOMB_X64_Y4_N14
\IMM|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux26~0_combout\ = (\instruction[25]~input_o\ & ((\IMM|Mux21~2_combout\) # (\IMM|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux21~2_combout\,
	datac => \instruction[25]~input_o\,
	datad => \IMM|Mux21~3_combout\,
	combout => \IMM|Mux26~0_combout\);

-- Location: LCCOMB_X65_Y4_N10
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\IMM|Mux26~0_combout\ & ((\PC_inst|current_pc\(5) & (\Add0~9\ & VCC)) # (!\PC_inst|current_pc\(5) & (!\Add0~9\)))) # (!\IMM|Mux26~0_combout\ & ((\PC_inst|current_pc\(5) & (!\Add0~9\)) # (!\PC_inst|current_pc\(5) & ((\Add0~9\) # 
-- (GND)))))
-- \Add0~11\ = CARRY((\IMM|Mux26~0_combout\ & (!\PC_inst|current_pc\(5) & !\Add0~9\)) # (!\IMM|Mux26~0_combout\ & ((!\Add0~9\) # (!\PC_inst|current_pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux26~0_combout\,
	datab => \PC_inst|current_pc\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X66_Y4_N9
\PC_inst|current_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[5]~36_combout\,
	asdata => \Add0~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(5));

-- Location: LCCOMB_X66_Y4_N10
\PC_inst|current_pc[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[6]~38_combout\ = (\PC_inst|current_pc\(6) & (\PC_inst|current_pc[5]~37\ $ (GND))) # (!\PC_inst|current_pc\(6) & (!\PC_inst|current_pc[5]~37\ & VCC))
-- \PC_inst|current_pc[6]~39\ = CARRY((\PC_inst|current_pc\(6) & !\PC_inst|current_pc[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(6),
	datad => VCC,
	cin => \PC_inst|current_pc[5]~37\,
	combout => \PC_inst|current_pc[6]~38_combout\,
	cout => \PC_inst|current_pc[6]~39\);

-- Location: IOIBUF_X44_Y0_N1
\instruction[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(26),
	o => \instruction[26]~input_o\);

-- Location: LCCOMB_X64_Y4_N20
\IMM|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux25~0_combout\ = (\instruction[26]~input_o\ & ((\IMM|Mux21~2_combout\) # (\IMM|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux21~2_combout\,
	datac => \instruction[26]~input_o\,
	datad => \IMM|Mux21~3_combout\,
	combout => \IMM|Mux25~0_combout\);

-- Location: LCCOMB_X65_Y4_N12
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\IMM|Mux25~0_combout\ $ (\PC_inst|current_pc\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\IMM|Mux25~0_combout\ & ((\PC_inst|current_pc\(6)) # (!\Add0~11\))) # (!\IMM|Mux25~0_combout\ & (\PC_inst|current_pc\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux25~0_combout\,
	datab => \PC_inst|current_pc\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X66_Y4_N11
\PC_inst|current_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[6]~38_combout\,
	asdata => \Add0~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(6));

-- Location: LCCOMB_X66_Y4_N12
\PC_inst|current_pc[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[7]~40_combout\ = (\PC_inst|current_pc\(7) & (!\PC_inst|current_pc[6]~39\)) # (!\PC_inst|current_pc\(7) & ((\PC_inst|current_pc[6]~39\) # (GND)))
-- \PC_inst|current_pc[7]~41\ = CARRY((!\PC_inst|current_pc[6]~39\) # (!\PC_inst|current_pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(7),
	datad => VCC,
	cin => \PC_inst|current_pc[6]~39\,
	combout => \PC_inst|current_pc[7]~40_combout\,
	cout => \PC_inst|current_pc[7]~41\);

-- Location: IOIBUF_X49_Y0_N22
\instruction[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(27),
	o => \instruction[27]~input_o\);

-- Location: LCCOMB_X64_Y4_N26
\IMM|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux24~0_combout\ = (\instruction[27]~input_o\ & ((\IMM|Mux21~2_combout\) # (\IMM|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux21~2_combout\,
	datac => \instruction[27]~input_o\,
	datad => \IMM|Mux21~3_combout\,
	combout => \IMM|Mux24~0_combout\);

-- Location: LCCOMB_X65_Y4_N14
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\IMM|Mux24~0_combout\ & ((\PC_inst|current_pc\(7) & (\Add0~13\ & VCC)) # (!\PC_inst|current_pc\(7) & (!\Add0~13\)))) # (!\IMM|Mux24~0_combout\ & ((\PC_inst|current_pc\(7) & (!\Add0~13\)) # (!\PC_inst|current_pc\(7) & ((\Add0~13\) # 
-- (GND)))))
-- \Add0~15\ = CARRY((\IMM|Mux24~0_combout\ & (!\PC_inst|current_pc\(7) & !\Add0~13\)) # (!\IMM|Mux24~0_combout\ & ((!\Add0~13\) # (!\PC_inst|current_pc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux24~0_combout\,
	datab => \PC_inst|current_pc\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X66_Y4_N13
\PC_inst|current_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[7]~40_combout\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(7));

-- Location: LCCOMB_X66_Y4_N14
\PC_inst|current_pc[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[8]~42_combout\ = (\PC_inst|current_pc\(8) & (\PC_inst|current_pc[7]~41\ $ (GND))) # (!\PC_inst|current_pc\(8) & (!\PC_inst|current_pc[7]~41\ & VCC))
-- \PC_inst|current_pc[8]~43\ = CARRY((\PC_inst|current_pc\(8) & !\PC_inst|current_pc[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(8),
	datad => VCC,
	cin => \PC_inst|current_pc[7]~41\,
	combout => \PC_inst|current_pc[8]~42_combout\,
	cout => \PC_inst|current_pc[8]~43\);

-- Location: IOIBUF_X56_Y0_N1
\instruction[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(28),
	o => \instruction[28]~input_o\);

-- Location: LCCOMB_X64_Y4_N0
\IMM|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux23~0_combout\ = (\instruction[28]~input_o\ & ((\IMM|Mux21~2_combout\) # (\IMM|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux21~2_combout\,
	datac => \instruction[28]~input_o\,
	datad => \IMM|Mux21~3_combout\,
	combout => \IMM|Mux23~0_combout\);

-- Location: LCCOMB_X65_Y4_N16
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\IMM|Mux23~0_combout\ $ (\PC_inst|current_pc\(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\IMM|Mux23~0_combout\ & ((\PC_inst|current_pc\(8)) # (!\Add0~15\))) # (!\IMM|Mux23~0_combout\ & (\PC_inst|current_pc\(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux23~0_combout\,
	datab => \PC_inst|current_pc\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X66_Y4_N15
\PC_inst|current_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[8]~42_combout\,
	asdata => \Add0~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(8));

-- Location: LCCOMB_X66_Y4_N16
\PC_inst|current_pc[9]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[9]~44_combout\ = (\PC_inst|current_pc\(9) & (!\PC_inst|current_pc[8]~43\)) # (!\PC_inst|current_pc\(9) & ((\PC_inst|current_pc[8]~43\) # (GND)))
-- \PC_inst|current_pc[9]~45\ = CARRY((!\PC_inst|current_pc[8]~43\) # (!\PC_inst|current_pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(9),
	datad => VCC,
	cin => \PC_inst|current_pc[8]~43\,
	combout => \PC_inst|current_pc[9]~44_combout\,
	cout => \PC_inst|current_pc[9]~45\);

-- Location: IOIBUF_X42_Y0_N1
\instruction[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(29),
	o => \instruction[29]~input_o\);

-- Location: LCCOMB_X64_Y4_N10
\IMM|Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux22~1_combout\ = (\instruction[29]~input_o\ & ((\IMM|Mux21~2_combout\) # (\IMM|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[29]~input_o\,
	datab => \IMM|Mux21~2_combout\,
	datad => \IMM|Mux21~3_combout\,
	combout => \IMM|Mux22~1_combout\);

-- Location: LCCOMB_X65_Y4_N18
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\IMM|Mux22~1_combout\ & ((\PC_inst|current_pc\(9) & (\Add0~17\ & VCC)) # (!\PC_inst|current_pc\(9) & (!\Add0~17\)))) # (!\IMM|Mux22~1_combout\ & ((\PC_inst|current_pc\(9) & (!\Add0~17\)) # (!\PC_inst|current_pc\(9) & ((\Add0~17\) # 
-- (GND)))))
-- \Add0~19\ = CARRY((\IMM|Mux22~1_combout\ & (!\PC_inst|current_pc\(9) & !\Add0~17\)) # (!\IMM|Mux22~1_combout\ & ((!\Add0~17\) # (!\PC_inst|current_pc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux22~1_combout\,
	datab => \PC_inst|current_pc\(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X66_Y4_N17
\PC_inst|current_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[9]~44_combout\,
	asdata => \Add0~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(9));

-- Location: LCCOMB_X66_Y4_N18
\PC_inst|current_pc[10]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[10]~46_combout\ = (\PC_inst|current_pc\(10) & (\PC_inst|current_pc[9]~45\ $ (GND))) # (!\PC_inst|current_pc\(10) & (!\PC_inst|current_pc[9]~45\ & VCC))
-- \PC_inst|current_pc[10]~47\ = CARRY((\PC_inst|current_pc\(10) & !\PC_inst|current_pc[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(10),
	datad => VCC,
	cin => \PC_inst|current_pc[9]~45\,
	combout => \PC_inst|current_pc[10]~46_combout\,
	cout => \PC_inst|current_pc[10]~47\);

-- Location: LCCOMB_X64_Y4_N12
\IMM|Mux21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux21~4_combout\ = (\instruction[30]~input_o\ & ((\IMM|Mux21~2_combout\) # (\IMM|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \IMM|Mux21~2_combout\,
	datad => \IMM|Mux21~3_combout\,
	combout => \IMM|Mux21~4_combout\);

-- Location: LCCOMB_X65_Y4_N20
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\IMM|Mux21~4_combout\ $ (\PC_inst|current_pc\(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\IMM|Mux21~4_combout\ & ((\PC_inst|current_pc\(10)) # (!\Add0~19\))) # (!\IMM|Mux21~4_combout\ & (\PC_inst|current_pc\(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux21~4_combout\,
	datab => \PC_inst|current_pc\(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X66_Y4_N19
\PC_inst|current_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[10]~46_combout\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(10));

-- Location: LCCOMB_X66_Y4_N20
\PC_inst|current_pc[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[11]~48_combout\ = (\PC_inst|current_pc\(11) & (!\PC_inst|current_pc[10]~47\)) # (!\PC_inst|current_pc\(11) & ((\PC_inst|current_pc[10]~47\) # (GND)))
-- \PC_inst|current_pc[11]~49\ = CARRY((!\PC_inst|current_pc[10]~47\) # (!\PC_inst|current_pc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(11),
	datad => VCC,
	cin => \PC_inst|current_pc[10]~47\,
	combout => \PC_inst|current_pc[11]~48_combout\,
	cout => \PC_inst|current_pc[11]~49\);

-- Location: IOIBUF_X65_Y0_N8
\instruction[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(31),
	o => \instruction[31]~input_o\);

-- Location: LCCOMB_X64_Y2_N10
\IMM|Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux20~1_combout\ = (\instruction[2]~input_o\ & ((\instruction[3]~input_o\ & (\instruction[20]~input_o\)) # (!\instruction[3]~input_o\ & ((\instruction[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datab => \instruction[20]~input_o\,
	datac => \instruction[2]~input_o\,
	datad => \instruction[31]~input_o\,
	combout => \IMM|Mux20~1_combout\);

-- Location: LCCOMB_X63_Y2_N28
\IMM|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux0~3_combout\ = (\instruction[0]~input_o\ & (\instruction[1]~input_o\ & ((\instruction[3]~input_o\) # (\IMM|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[0]~input_o\,
	datab => \instruction[3]~input_o\,
	datac => \instruction[1]~input_o\,
	datad => \IMM|process_0~0_combout\,
	combout => \IMM|Mux0~3_combout\);

-- Location: LCCOMB_X64_Y2_N12
\IMM|Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux20~2_combout\ = (\IMM|Mux20~1_combout\ & (\IMM|Mux0~1_combout\ & (!\instruction[4]~input_o\ & \IMM|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux20~1_combout\,
	datab => \IMM|Mux0~1_combout\,
	datac => \instruction[4]~input_o\,
	datad => \IMM|Mux0~3_combout\,
	combout => \IMM|Mux20~2_combout\);

-- Location: LCCOMB_X64_Y2_N26
\IMM|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux0~2_combout\ = (\instruction[6]~input_o\ & ((\instruction[5]~input_o\ & (\instruction[7]~input_o\)) # (!\instruction[5]~input_o\ & ((\instruction[31]~input_o\))))) # (!\instruction[6]~input_o\ & (((\instruction[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[31]~input_o\,
	combout => \IMM|Mux0~2_combout\);

-- Location: LCCOMB_X64_Y2_N4
\IMM|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux19~0_combout\ = (\UC|Mux6~0_combout\ & (\IMM|Mux27~2_combout\ & (!\instruction[5]~input_o\ & \IMM|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|Mux6~0_combout\,
	datab => \IMM|Mux27~2_combout\,
	datac => \instruction[5]~input_o\,
	datad => \IMM|process_0~0_combout\,
	combout => \IMM|Mux19~0_combout\);

-- Location: LCCOMB_X64_Y2_N20
\IMM|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux20~0_combout\ = (\IMM|Mux19~0_combout\ & ((\instruction[4]~input_o\ & ((\instruction[31]~input_o\))) # (!\instruction[4]~input_o\ & (\IMM|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux0~2_combout\,
	datab => \IMM|Mux19~0_combout\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[31]~input_o\,
	combout => \IMM|Mux20~0_combout\);

-- Location: LCCOMB_X64_Y2_N30
\IMM|Mux20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux20~3_combout\ = (\IMM|Mux20~2_combout\) # ((\IMM|Mux20~0_combout\) # ((\IMM|Mux0~2_combout\ & \UC|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux20~2_combout\,
	datab => \IMM|Mux20~0_combout\,
	datac => \IMM|Mux0~2_combout\,
	datad => \UC|Mux7~0_combout\,
	combout => \IMM|Mux20~3_combout\);

-- Location: LCCOMB_X65_Y4_N22
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\PC_inst|current_pc\(11) & ((\IMM|Mux20~3_combout\ & (\Add0~21\ & VCC)) # (!\IMM|Mux20~3_combout\ & (!\Add0~21\)))) # (!\PC_inst|current_pc\(11) & ((\IMM|Mux20~3_combout\ & (!\Add0~21\)) # (!\IMM|Mux20~3_combout\ & ((\Add0~21\) # 
-- (GND)))))
-- \Add0~23\ = CARRY((\PC_inst|current_pc\(11) & (!\IMM|Mux20~3_combout\ & !\Add0~21\)) # (!\PC_inst|current_pc\(11) & ((!\Add0~21\) # (!\IMM|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(11),
	datab => \IMM|Mux20~3_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X66_Y4_N21
\PC_inst|current_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[11]~48_combout\,
	asdata => \Add0~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(11));

-- Location: LCCOMB_X66_Y4_N22
\PC_inst|current_pc[12]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[12]~50_combout\ = (\PC_inst|current_pc\(12) & (\PC_inst|current_pc[11]~49\ $ (GND))) # (!\PC_inst|current_pc\(12) & (!\PC_inst|current_pc[11]~49\ & VCC))
-- \PC_inst|current_pc[12]~51\ = CARRY((\PC_inst|current_pc\(12) & !\PC_inst|current_pc[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(12),
	datad => VCC,
	cin => \PC_inst|current_pc[11]~49\,
	combout => \PC_inst|current_pc[12]~50_combout\,
	cout => \PC_inst|current_pc[12]~51\);

-- Location: LCCOMB_X64_Y2_N0
\IMM|Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux19~1_combout\ = (\instruction[31]~input_o\ & ((\UC|Mux7~0_combout\) # (\IMM|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|Mux7~0_combout\,
	datac => \IMM|Mux19~0_combout\,
	datad => \instruction[31]~input_o\,
	combout => \IMM|Mux19~1_combout\);

-- Location: LCCOMB_X63_Y2_N2
\IMM|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux16~0_combout\ = (\instruction[6]~input_o\ & (!\instruction[4]~input_o\ & (\instruction[5]~input_o\ & \instruction[3]~input_o\))) # (!\instruction[6]~input_o\ & (\instruction[4]~input_o\ & ((!\instruction[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[4]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \instruction[3]~input_o\,
	combout => \IMM|Mux16~0_combout\);

-- Location: LCCOMB_X63_Y2_N4
\IMM|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux12~0_combout\ = (\IMM|process_0~0_combout\ & (\IMM|Mux21~0_combout\ & (\instruction[6]~input_o\ & !\IMM|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|process_0~0_combout\,
	datab => \IMM|Mux21~0_combout\,
	datac => \instruction[6]~input_o\,
	datad => \IMM|Mux16~0_combout\,
	combout => \IMM|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y2_N30
\IMM|Mux19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux19~3_combout\ = (\instruction[2]~input_o\ & ((\IMM|Mux12~0_combout\) # ((\UC|Mux6~2_combout\ & \IMM|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux12~0_combout\,
	datab => \UC|Mux6~2_combout\,
	datac => \instruction[2]~input_o\,
	datad => \IMM|Mux16~0_combout\,
	combout => \IMM|Mux19~3_combout\);

-- Location: LCCOMB_X65_Y2_N2
\IMM|Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux19~2_combout\ = (\IMM|Mux16~0_combout\ & ((\instruction[12]~input_o\))) # (!\IMM|Mux16~0_combout\ & (\instruction[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[31]~input_o\,
	datac => \IMM|Mux16~0_combout\,
	datad => \instruction[12]~input_o\,
	combout => \IMM|Mux19~2_combout\);

-- Location: LCCOMB_X65_Y2_N24
\IMM|Mux19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux19~4_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux19~3_combout\ & \IMM|Mux19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux19~3_combout\,
	datad => \IMM|Mux19~2_combout\,
	combout => \IMM|Mux19~4_combout\);

-- Location: LCCOMB_X65_Y4_N24
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\IMM|Mux19~4_combout\ $ (\PC_inst|current_pc\(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\IMM|Mux19~4_combout\ & ((\PC_inst|current_pc\(12)) # (!\Add0~23\))) # (!\IMM|Mux19~4_combout\ & (\PC_inst|current_pc\(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux19~4_combout\,
	datab => \PC_inst|current_pc\(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X66_Y4_N23
\PC_inst|current_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[12]~50_combout\,
	asdata => \Add0~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(12));

-- Location: LCCOMB_X66_Y4_N24
\PC_inst|current_pc[13]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[13]~52_combout\ = (\PC_inst|current_pc\(13) & (!\PC_inst|current_pc[12]~51\)) # (!\PC_inst|current_pc\(13) & ((\PC_inst|current_pc[12]~51\) # (GND)))
-- \PC_inst|current_pc[13]~53\ = CARRY((!\PC_inst|current_pc[12]~51\) # (!\PC_inst|current_pc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(13),
	datad => VCC,
	cin => \PC_inst|current_pc[12]~51\,
	combout => \PC_inst|current_pc[13]~52_combout\,
	cout => \PC_inst|current_pc[13]~53\);

-- Location: LCCOMB_X65_Y2_N18
\IMM|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux18~0_combout\ = (\IMM|Mux16~0_combout\ & (\instruction[13]~input_o\)) # (!\IMM|Mux16~0_combout\ & ((\instruction[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[13]~input_o\,
	datab => \IMM|Mux16~0_combout\,
	datac => \instruction[31]~input_o\,
	combout => \IMM|Mux18~0_combout\);

-- Location: LCCOMB_X65_Y2_N12
\IMM|Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux18~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux19~3_combout\ & \IMM|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux19~3_combout\,
	datad => \IMM|Mux18~0_combout\,
	combout => \IMM|Mux18~1_combout\);

-- Location: LCCOMB_X65_Y4_N26
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\IMM|Mux18~1_combout\ & ((\PC_inst|current_pc\(13) & (\Add0~25\ & VCC)) # (!\PC_inst|current_pc\(13) & (!\Add0~25\)))) # (!\IMM|Mux18~1_combout\ & ((\PC_inst|current_pc\(13) & (!\Add0~25\)) # (!\PC_inst|current_pc\(13) & ((\Add0~25\) 
-- # (GND)))))
-- \Add0~27\ = CARRY((\IMM|Mux18~1_combout\ & (!\PC_inst|current_pc\(13) & !\Add0~25\)) # (!\IMM|Mux18~1_combout\ & ((!\Add0~25\) # (!\PC_inst|current_pc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux18~1_combout\,
	datab => \PC_inst|current_pc\(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X66_Y4_N25
\PC_inst|current_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[13]~52_combout\,
	asdata => \Add0~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(13));

-- Location: LCCOMB_X66_Y4_N26
\PC_inst|current_pc[14]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[14]~54_combout\ = (\PC_inst|current_pc\(14) & (\PC_inst|current_pc[13]~53\ $ (GND))) # (!\PC_inst|current_pc\(14) & (!\PC_inst|current_pc[13]~53\ & VCC))
-- \PC_inst|current_pc[14]~55\ = CARRY((\PC_inst|current_pc\(14) & !\PC_inst|current_pc[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(14),
	datad => VCC,
	cin => \PC_inst|current_pc[13]~53\,
	combout => \PC_inst|current_pc[14]~54_combout\,
	cout => \PC_inst|current_pc[14]~55\);

-- Location: LCCOMB_X65_Y2_N22
\IMM|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux17~0_combout\ = (\IMM|Mux16~0_combout\ & ((\instruction[14]~input_o\))) # (!\IMM|Mux16~0_combout\ & (\instruction[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[31]~input_o\,
	datac => \IMM|Mux16~0_combout\,
	datad => \instruction[14]~input_o\,
	combout => \IMM|Mux17~0_combout\);

-- Location: LCCOMB_X65_Y2_N28
\IMM|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux17~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux17~0_combout\ & \IMM|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux17~0_combout\,
	datad => \IMM|Mux19~3_combout\,
	combout => \IMM|Mux17~1_combout\);

-- Location: LCCOMB_X65_Y4_N28
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\IMM|Mux17~1_combout\ $ (\PC_inst|current_pc\(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\IMM|Mux17~1_combout\ & ((\PC_inst|current_pc\(14)) # (!\Add0~27\))) # (!\IMM|Mux17~1_combout\ & (\PC_inst|current_pc\(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux17~1_combout\,
	datab => \PC_inst|current_pc\(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X66_Y4_N27
\PC_inst|current_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[14]~54_combout\,
	asdata => \Add0~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(14));

-- Location: LCCOMB_X66_Y4_N28
\PC_inst|current_pc[15]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[15]~56_combout\ = (\PC_inst|current_pc\(15) & (!\PC_inst|current_pc[14]~55\)) # (!\PC_inst|current_pc\(15) & ((\PC_inst|current_pc[14]~55\) # (GND)))
-- \PC_inst|current_pc[15]~57\ = CARRY((!\PC_inst|current_pc[14]~55\) # (!\PC_inst|current_pc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(15),
	datad => VCC,
	cin => \PC_inst|current_pc[14]~55\,
	combout => \PC_inst|current_pc[15]~56_combout\,
	cout => \PC_inst|current_pc[15]~57\);

-- Location: IOIBUF_X56_Y0_N22
\instruction[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(15),
	o => \instruction[15]~input_o\);

-- Location: LCCOMB_X64_Y3_N0
\IMM|Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux16~1_combout\ = (\IMM|Mux16~0_combout\ & (\instruction[15]~input_o\)) # (!\IMM|Mux16~0_combout\ & ((\instruction[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux16~0_combout\,
	datac => \instruction[15]~input_o\,
	datad => \instruction[31]~input_o\,
	combout => \IMM|Mux16~1_combout\);

-- Location: LCCOMB_X64_Y3_N22
\IMM|Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux16~2_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux19~3_combout\ & \IMM|Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux19~3_combout\,
	datad => \IMM|Mux16~1_combout\,
	combout => \IMM|Mux16~2_combout\);

-- Location: LCCOMB_X65_Y4_N30
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\IMM|Mux16~2_combout\ & ((\PC_inst|current_pc\(15) & (\Add0~29\ & VCC)) # (!\PC_inst|current_pc\(15) & (!\Add0~29\)))) # (!\IMM|Mux16~2_combout\ & ((\PC_inst|current_pc\(15) & (!\Add0~29\)) # (!\PC_inst|current_pc\(15) & ((\Add0~29\) 
-- # (GND)))))
-- \Add0~31\ = CARRY((\IMM|Mux16~2_combout\ & (!\PC_inst|current_pc\(15) & !\Add0~29\)) # (!\IMM|Mux16~2_combout\ & ((!\Add0~29\) # (!\PC_inst|current_pc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux16~2_combout\,
	datab => \PC_inst|current_pc\(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X66_Y4_N29
\PC_inst|current_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[15]~56_combout\,
	asdata => \Add0~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(15));

-- Location: LCCOMB_X66_Y4_N30
\PC_inst|current_pc[16]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[16]~58_combout\ = (\PC_inst|current_pc\(16) & (\PC_inst|current_pc[15]~57\ $ (GND))) # (!\PC_inst|current_pc\(16) & (!\PC_inst|current_pc[15]~57\ & VCC))
-- \PC_inst|current_pc[16]~59\ = CARRY((\PC_inst|current_pc\(16) & !\PC_inst|current_pc[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(16),
	datad => VCC,
	cin => \PC_inst|current_pc[15]~57\,
	combout => \PC_inst|current_pc[16]~58_combout\,
	cout => \PC_inst|current_pc[16]~59\);

-- Location: IOIBUF_X49_Y0_N15
\instruction[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(16),
	o => \instruction[16]~input_o\);

-- Location: LCCOMB_X64_Y3_N28
\IMM|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux15~0_combout\ = (\IMM|Mux16~0_combout\ & (\instruction[16]~input_o\)) # (!\IMM|Mux16~0_combout\ & ((\instruction[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux16~0_combout\,
	datac => \instruction[16]~input_o\,
	datad => \instruction[31]~input_o\,
	combout => \IMM|Mux15~0_combout\);

-- Location: LCCOMB_X64_Y3_N6
\IMM|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux15~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux19~3_combout\ & \IMM|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux19~3_combout\,
	datad => \IMM|Mux15~0_combout\,
	combout => \IMM|Mux15~1_combout\);

-- Location: LCCOMB_X65_Y3_N0
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\PC_inst|current_pc\(16) $ (\IMM|Mux15~1_combout\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\PC_inst|current_pc\(16) & ((\IMM|Mux15~1_combout\) # (!\Add0~31\))) # (!\PC_inst|current_pc\(16) & (\IMM|Mux15~1_combout\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(16),
	datab => \IMM|Mux15~1_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X66_Y4_N31
\PC_inst|current_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[16]~58_combout\,
	asdata => \Add0~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(16));

-- Location: LCCOMB_X66_Y3_N0
\PC_inst|current_pc[17]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[17]~60_combout\ = (\PC_inst|current_pc\(17) & (!\PC_inst|current_pc[16]~59\)) # (!\PC_inst|current_pc\(17) & ((\PC_inst|current_pc[16]~59\) # (GND)))
-- \PC_inst|current_pc[17]~61\ = CARRY((!\PC_inst|current_pc[16]~59\) # (!\PC_inst|current_pc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(17),
	datad => VCC,
	cin => \PC_inst|current_pc[16]~59\,
	combout => \PC_inst|current_pc[17]~60_combout\,
	cout => \PC_inst|current_pc[17]~61\);

-- Location: IOIBUF_X81_Y2_N15
\instruction[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(17),
	o => \instruction[17]~input_o\);

-- Location: LCCOMB_X65_Y2_N26
\IMM|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux14~0_combout\ = (\IMM|Mux16~0_combout\ & ((\instruction[17]~input_o\))) # (!\IMM|Mux16~0_combout\ & (\instruction[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[31]~input_o\,
	datac => \IMM|Mux16~0_combout\,
	datad => \instruction[17]~input_o\,
	combout => \IMM|Mux14~0_combout\);

-- Location: LCCOMB_X65_Y2_N0
\IMM|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux14~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux14~0_combout\ & \IMM|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux14~0_combout\,
	datad => \IMM|Mux19~3_combout\,
	combout => \IMM|Mux14~1_combout\);

-- Location: LCCOMB_X65_Y3_N2
\Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\IMM|Mux14~1_combout\ & ((\PC_inst|current_pc\(17) & (\Add0~33\ & VCC)) # (!\PC_inst|current_pc\(17) & (!\Add0~33\)))) # (!\IMM|Mux14~1_combout\ & ((\PC_inst|current_pc\(17) & (!\Add0~33\)) # (!\PC_inst|current_pc\(17) & ((\Add0~33\) 
-- # (GND)))))
-- \Add0~35\ = CARRY((\IMM|Mux14~1_combout\ & (!\PC_inst|current_pc\(17) & !\Add0~33\)) # (!\IMM|Mux14~1_combout\ & ((!\Add0~33\) # (!\PC_inst|current_pc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux14~1_combout\,
	datab => \PC_inst|current_pc\(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X66_Y3_N1
\PC_inst|current_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[17]~60_combout\,
	asdata => \Add0~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(17));

-- Location: LCCOMB_X66_Y3_N2
\PC_inst|current_pc[18]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[18]~62_combout\ = (\PC_inst|current_pc\(18) & (\PC_inst|current_pc[17]~61\ $ (GND))) # (!\PC_inst|current_pc\(18) & (!\PC_inst|current_pc[17]~61\ & VCC))
-- \PC_inst|current_pc[18]~63\ = CARRY((\PC_inst|current_pc\(18) & !\PC_inst|current_pc[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(18),
	datad => VCC,
	cin => \PC_inst|current_pc[17]~61\,
	combout => \PC_inst|current_pc[18]~62_combout\,
	cout => \PC_inst|current_pc[18]~63\);

-- Location: IOIBUF_X81_Y2_N1
\instruction[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(18),
	o => \instruction[18]~input_o\);

-- Location: LCCOMB_X65_Y2_N30
\IMM|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux13~0_combout\ = (\IMM|Mux16~0_combout\ & ((\instruction[18]~input_o\))) # (!\IMM|Mux16~0_combout\ & (\instruction[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[31]~input_o\,
	datac => \IMM|Mux16~0_combout\,
	datad => \instruction[18]~input_o\,
	combout => \IMM|Mux13~0_combout\);

-- Location: LCCOMB_X65_Y2_N8
\IMM|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux13~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux13~0_combout\ & \IMM|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux13~0_combout\,
	datad => \IMM|Mux19~3_combout\,
	combout => \IMM|Mux13~1_combout\);

-- Location: LCCOMB_X65_Y3_N4
\Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\PC_inst|current_pc\(18) $ (\IMM|Mux13~1_combout\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\PC_inst|current_pc\(18) & ((\IMM|Mux13~1_combout\) # (!\Add0~35\))) # (!\PC_inst|current_pc\(18) & (\IMM|Mux13~1_combout\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(18),
	datab => \IMM|Mux13~1_combout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X66_Y3_N3
\PC_inst|current_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[18]~62_combout\,
	asdata => \Add0~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(18));

-- Location: LCCOMB_X66_Y3_N4
\PC_inst|current_pc[19]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[19]~64_combout\ = (\PC_inst|current_pc\(19) & (!\PC_inst|current_pc[18]~63\)) # (!\PC_inst|current_pc\(19) & ((\PC_inst|current_pc[18]~63\) # (GND)))
-- \PC_inst|current_pc[19]~65\ = CARRY((!\PC_inst|current_pc[18]~63\) # (!\PC_inst|current_pc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(19),
	datad => VCC,
	cin => \PC_inst|current_pc[18]~63\,
	combout => \PC_inst|current_pc[19]~64_combout\,
	cout => \PC_inst|current_pc[19]~65\);

-- Location: IOIBUF_X81_Y6_N15
\instruction[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(19),
	o => \instruction[19]~input_o\);

-- Location: LCCOMB_X65_Y2_N14
\IMM|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux12~1_combout\ = (\IMM|Mux16~0_combout\ & ((\instruction[19]~input_o\))) # (!\IMM|Mux16~0_combout\ & (\instruction[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[31]~input_o\,
	datac => \IMM|Mux16~0_combout\,
	datad => \instruction[19]~input_o\,
	combout => \IMM|Mux12~1_combout\);

-- Location: LCCOMB_X65_Y2_N4
\IMM|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux12~2_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux12~1_combout\ & \IMM|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux19~1_combout\,
	datab => \IMM|Mux12~1_combout\,
	datac => \IMM|Mux19~3_combout\,
	combout => \IMM|Mux12~2_combout\);

-- Location: LCCOMB_X65_Y3_N6
\Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\PC_inst|current_pc\(19) & ((\IMM|Mux12~2_combout\ & (\Add0~37\ & VCC)) # (!\IMM|Mux12~2_combout\ & (!\Add0~37\)))) # (!\PC_inst|current_pc\(19) & ((\IMM|Mux12~2_combout\ & (!\Add0~37\)) # (!\IMM|Mux12~2_combout\ & ((\Add0~37\) # 
-- (GND)))))
-- \Add0~39\ = CARRY((\PC_inst|current_pc\(19) & (!\IMM|Mux12~2_combout\ & !\Add0~37\)) # (!\PC_inst|current_pc\(19) & ((!\Add0~37\) # (!\IMM|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(19),
	datab => \IMM|Mux12~2_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X66_Y3_N5
\PC_inst|current_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[19]~64_combout\,
	asdata => \Add0~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(19));

-- Location: LCCOMB_X66_Y3_N6
\PC_inst|current_pc[20]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[20]~66_combout\ = (\PC_inst|current_pc\(20) & (\PC_inst|current_pc[19]~65\ $ (GND))) # (!\PC_inst|current_pc\(20) & (!\PC_inst|current_pc[19]~65\ & VCC))
-- \PC_inst|current_pc[20]~67\ = CARRY((\PC_inst|current_pc\(20) & !\PC_inst|current_pc[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(20),
	datad => VCC,
	cin => \PC_inst|current_pc[19]~65\,
	combout => \PC_inst|current_pc[20]~66_combout\,
	cout => \PC_inst|current_pc[20]~67\);

-- Location: LCCOMB_X64_Y2_N14
\IMM|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux11~1_combout\ = (\IMM|Mux0~3_combout\ & (!\instruction[4]~input_o\ & \instruction[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux0~3_combout\,
	datac => \instruction[4]~input_o\,
	datad => \instruction[31]~input_o\,
	combout => \IMM|Mux11~1_combout\);

-- Location: LCCOMB_X64_Y4_N22
\IMM|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux11~2_combout\ = (\instruction[20]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[20]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux11~2_combout\);

-- Location: LCCOMB_X63_Y2_N0
\IMM|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux11~0_combout\ = (\instruction[2]~input_o\ & ((\instruction[4]~input_o\ & (\IMM|Mux0~0_combout\)) # (!\instruction[4]~input_o\ & ((\IMM|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux0~0_combout\,
	datab => \instruction[2]~input_o\,
	datac => \instruction[4]~input_o\,
	datad => \IMM|Mux0~1_combout\,
	combout => \IMM|Mux11~0_combout\);

-- Location: LCCOMB_X64_Y3_N4
\IMM|Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux11~3_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux11~2_combout\,
	datad => \IMM|Mux11~0_combout\,
	combout => \IMM|Mux11~3_combout\);

-- Location: LCCOMB_X65_Y3_N8
\Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\PC_inst|current_pc\(20) $ (\IMM|Mux11~3_combout\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\PC_inst|current_pc\(20) & ((\IMM|Mux11~3_combout\) # (!\Add0~39\))) # (!\PC_inst|current_pc\(20) & (\IMM|Mux11~3_combout\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(20),
	datab => \IMM|Mux11~3_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X66_Y3_N7
\PC_inst|current_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[20]~66_combout\,
	asdata => \Add0~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(20));

-- Location: LCCOMB_X66_Y3_N8
\PC_inst|current_pc[21]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[21]~68_combout\ = (\PC_inst|current_pc\(21) & (!\PC_inst|current_pc[20]~67\)) # (!\PC_inst|current_pc\(21) & ((\PC_inst|current_pc[20]~67\) # (GND)))
-- \PC_inst|current_pc[21]~69\ = CARRY((!\PC_inst|current_pc[20]~67\) # (!\PC_inst|current_pc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(21),
	datad => VCC,
	cin => \PC_inst|current_pc[20]~67\,
	combout => \PC_inst|current_pc[21]~68_combout\,
	cout => \PC_inst|current_pc[21]~69\);

-- Location: LCCOMB_X63_Y3_N16
\IMM|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux10~0_combout\ = (\instruction[21]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[21]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux10~0_combout\);

-- Location: LCCOMB_X64_Y3_N14
\IMM|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux10~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux10~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux10~1_combout\);

-- Location: LCCOMB_X65_Y3_N10
\Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\IMM|Mux10~1_combout\ & ((\PC_inst|current_pc\(21) & (\Add0~41\ & VCC)) # (!\PC_inst|current_pc\(21) & (!\Add0~41\)))) # (!\IMM|Mux10~1_combout\ & ((\PC_inst|current_pc\(21) & (!\Add0~41\)) # (!\PC_inst|current_pc\(21) & ((\Add0~41\) 
-- # (GND)))))
-- \Add0~43\ = CARRY((\IMM|Mux10~1_combout\ & (!\PC_inst|current_pc\(21) & !\Add0~41\)) # (!\IMM|Mux10~1_combout\ & ((!\Add0~41\) # (!\PC_inst|current_pc\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux10~1_combout\,
	datab => \PC_inst|current_pc\(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X66_Y3_N9
\PC_inst|current_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[21]~68_combout\,
	asdata => \Add0~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(21));

-- Location: LCCOMB_X66_Y3_N10
\PC_inst|current_pc[22]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[22]~70_combout\ = (\PC_inst|current_pc\(22) & (\PC_inst|current_pc[21]~69\ $ (GND))) # (!\PC_inst|current_pc\(22) & (!\PC_inst|current_pc[21]~69\ & VCC))
-- \PC_inst|current_pc[22]~71\ = CARRY((\PC_inst|current_pc\(22) & !\PC_inst|current_pc[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(22),
	datad => VCC,
	cin => \PC_inst|current_pc[21]~69\,
	combout => \PC_inst|current_pc[22]~70_combout\,
	cout => \PC_inst|current_pc[22]~71\);

-- Location: LCCOMB_X63_Y3_N26
\IMM|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux9~0_combout\ = (\instruction[22]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[22]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux9~0_combout\);

-- Location: LCCOMB_X64_Y3_N16
\IMM|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux9~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux9~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux9~1_combout\);

-- Location: LCCOMB_X65_Y3_N12
\Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\IMM|Mux9~1_combout\ $ (\PC_inst|current_pc\(22) $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\IMM|Mux9~1_combout\ & ((\PC_inst|current_pc\(22)) # (!\Add0~43\))) # (!\IMM|Mux9~1_combout\ & (\PC_inst|current_pc\(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux9~1_combout\,
	datab => \PC_inst|current_pc\(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X66_Y3_N11
\PC_inst|current_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[22]~70_combout\,
	asdata => \Add0~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(22));

-- Location: LCCOMB_X66_Y3_N12
\PC_inst|current_pc[23]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[23]~72_combout\ = (\PC_inst|current_pc\(23) & (!\PC_inst|current_pc[22]~71\)) # (!\PC_inst|current_pc\(23) & ((\PC_inst|current_pc[22]~71\) # (GND)))
-- \PC_inst|current_pc[23]~73\ = CARRY((!\PC_inst|current_pc[22]~71\) # (!\PC_inst|current_pc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(23),
	datad => VCC,
	cin => \PC_inst|current_pc[22]~71\,
	combout => \PC_inst|current_pc[23]~72_combout\,
	cout => \PC_inst|current_pc[23]~73\);

-- Location: LCCOMB_X63_Y3_N4
\IMM|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux8~0_combout\ = (\instruction[23]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[23]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux8~0_combout\);

-- Location: LCCOMB_X64_Y3_N26
\IMM|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux8~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux8~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux8~1_combout\);

-- Location: LCCOMB_X65_Y3_N14
\Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\IMM|Mux8~1_combout\ & ((\PC_inst|current_pc\(23) & (\Add0~45\ & VCC)) # (!\PC_inst|current_pc\(23) & (!\Add0~45\)))) # (!\IMM|Mux8~1_combout\ & ((\PC_inst|current_pc\(23) & (!\Add0~45\)) # (!\PC_inst|current_pc\(23) & ((\Add0~45\) # 
-- (GND)))))
-- \Add0~47\ = CARRY((\IMM|Mux8~1_combout\ & (!\PC_inst|current_pc\(23) & !\Add0~45\)) # (!\IMM|Mux8~1_combout\ & ((!\Add0~45\) # (!\PC_inst|current_pc\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux8~1_combout\,
	datab => \PC_inst|current_pc\(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X66_Y3_N13
\PC_inst|current_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[23]~72_combout\,
	asdata => \Add0~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(23));

-- Location: LCCOMB_X66_Y3_N14
\PC_inst|current_pc[24]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[24]~74_combout\ = (\PC_inst|current_pc\(24) & (\PC_inst|current_pc[23]~73\ $ (GND))) # (!\PC_inst|current_pc\(24) & (!\PC_inst|current_pc[23]~73\ & VCC))
-- \PC_inst|current_pc[24]~75\ = CARRY((\PC_inst|current_pc\(24) & !\PC_inst|current_pc[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(24),
	datad => VCC,
	cin => \PC_inst|current_pc[23]~73\,
	combout => \PC_inst|current_pc[24]~74_combout\,
	cout => \PC_inst|current_pc[24]~75\);

-- Location: LCCOMB_X63_Y4_N8
\IMM|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux7~0_combout\ = (\instruction[24]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[24]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux7~0_combout\);

-- Location: LCCOMB_X64_Y3_N20
\IMM|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux7~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux7~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux7~1_combout\);

-- Location: LCCOMB_X65_Y3_N16
\Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\IMM|Mux7~1_combout\ $ (\PC_inst|current_pc\(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\IMM|Mux7~1_combout\ & ((\PC_inst|current_pc\(24)) # (!\Add0~47\))) # (!\IMM|Mux7~1_combout\ & (\PC_inst|current_pc\(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux7~1_combout\,
	datab => \PC_inst|current_pc\(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X66_Y3_N15
\PC_inst|current_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[24]~74_combout\,
	asdata => \Add0~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(24));

-- Location: LCCOMB_X66_Y3_N16
\PC_inst|current_pc[25]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[25]~76_combout\ = (\PC_inst|current_pc\(25) & (!\PC_inst|current_pc[24]~75\)) # (!\PC_inst|current_pc\(25) & ((\PC_inst|current_pc[24]~75\) # (GND)))
-- \PC_inst|current_pc[25]~77\ = CARRY((!\PC_inst|current_pc[24]~75\) # (!\PC_inst|current_pc\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(25),
	datad => VCC,
	cin => \PC_inst|current_pc[24]~75\,
	combout => \PC_inst|current_pc[25]~76_combout\,
	cout => \PC_inst|current_pc[25]~77\);

-- Location: LCCOMB_X64_Y4_N28
\IMM|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux6~0_combout\ = (\instruction[25]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[25]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y3_N10
\IMM|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux6~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux6~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux6~1_combout\);

-- Location: LCCOMB_X65_Y3_N18
\Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\IMM|Mux6~1_combout\ & ((\PC_inst|current_pc\(25) & (\Add0~49\ & VCC)) # (!\PC_inst|current_pc\(25) & (!\Add0~49\)))) # (!\IMM|Mux6~1_combout\ & ((\PC_inst|current_pc\(25) & (!\Add0~49\)) # (!\PC_inst|current_pc\(25) & ((\Add0~49\) # 
-- (GND)))))
-- \Add0~51\ = CARRY((\IMM|Mux6~1_combout\ & (!\PC_inst|current_pc\(25) & !\Add0~49\)) # (!\IMM|Mux6~1_combout\ & ((!\Add0~49\) # (!\PC_inst|current_pc\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux6~1_combout\,
	datab => \PC_inst|current_pc\(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X66_Y3_N17
\PC_inst|current_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[25]~76_combout\,
	asdata => \Add0~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(25));

-- Location: LCCOMB_X66_Y3_N18
\PC_inst|current_pc[26]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[26]~78_combout\ = (\PC_inst|current_pc\(26) & (\PC_inst|current_pc[25]~77\ $ (GND))) # (!\PC_inst|current_pc\(26) & (!\PC_inst|current_pc[25]~77\ & VCC))
-- \PC_inst|current_pc[26]~79\ = CARRY((\PC_inst|current_pc\(26) & !\PC_inst|current_pc[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(26),
	datad => VCC,
	cin => \PC_inst|current_pc[25]~77\,
	combout => \PC_inst|current_pc[26]~78_combout\,
	cout => \PC_inst|current_pc[26]~79\);

-- Location: LCCOMB_X64_Y4_N30
\IMM|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux5~0_combout\ = (\instruction[26]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[26]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y3_N24
\IMM|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux5~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux5~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux5~1_combout\);

-- Location: LCCOMB_X65_Y3_N20
\Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\IMM|Mux5~1_combout\ $ (\PC_inst|current_pc\(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\IMM|Mux5~1_combout\ & ((\PC_inst|current_pc\(26)) # (!\Add0~51\))) # (!\IMM|Mux5~1_combout\ & (\PC_inst|current_pc\(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux5~1_combout\,
	datab => \PC_inst|current_pc\(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X66_Y3_N19
\PC_inst|current_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[26]~78_combout\,
	asdata => \Add0~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(26));

-- Location: LCCOMB_X66_Y3_N20
\PC_inst|current_pc[27]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[27]~80_combout\ = (\PC_inst|current_pc\(27) & (!\PC_inst|current_pc[26]~79\)) # (!\PC_inst|current_pc\(27) & ((\PC_inst|current_pc[26]~79\) # (GND)))
-- \PC_inst|current_pc[27]~81\ = CARRY((!\PC_inst|current_pc[26]~79\) # (!\PC_inst|current_pc\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(27),
	datad => VCC,
	cin => \PC_inst|current_pc[26]~79\,
	combout => \PC_inst|current_pc[27]~80_combout\,
	cout => \PC_inst|current_pc[27]~81\);

-- Location: LCCOMB_X64_Y4_N8
\IMM|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux4~0_combout\ = (\instruction[27]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[27]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y3_N18
\IMM|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux4~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux4~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux4~1_combout\);

-- Location: LCCOMB_X65_Y3_N22
\Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\PC_inst|current_pc\(27) & ((\IMM|Mux4~1_combout\ & (\Add0~53\ & VCC)) # (!\IMM|Mux4~1_combout\ & (!\Add0~53\)))) # (!\PC_inst|current_pc\(27) & ((\IMM|Mux4~1_combout\ & (!\Add0~53\)) # (!\IMM|Mux4~1_combout\ & ((\Add0~53\) # 
-- (GND)))))
-- \Add0~55\ = CARRY((\PC_inst|current_pc\(27) & (!\IMM|Mux4~1_combout\ & !\Add0~53\)) # (!\PC_inst|current_pc\(27) & ((!\Add0~53\) # (!\IMM|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(27),
	datab => \IMM|Mux4~1_combout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X66_Y3_N21
\PC_inst|current_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[27]~80_combout\,
	asdata => \Add0~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(27));

-- Location: LCCOMB_X66_Y3_N22
\PC_inst|current_pc[28]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[28]~82_combout\ = (\PC_inst|current_pc\(28) & (\PC_inst|current_pc[27]~81\ $ (GND))) # (!\PC_inst|current_pc\(28) & (!\PC_inst|current_pc[27]~81\ & VCC))
-- \PC_inst|current_pc[28]~83\ = CARRY((\PC_inst|current_pc\(28) & !\PC_inst|current_pc[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(28),
	datad => VCC,
	cin => \PC_inst|current_pc[27]~81\,
	combout => \PC_inst|current_pc[28]~82_combout\,
	cout => \PC_inst|current_pc[28]~83\);

-- Location: LCCOMB_X64_Y4_N18
\IMM|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux3~0_combout\ = (\instruction[28]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[28]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y3_N8
\IMM|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux3~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux3~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux3~1_combout\);

-- Location: LCCOMB_X65_Y3_N24
\Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\IMM|Mux3~1_combout\ $ (\PC_inst|current_pc\(28) $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\IMM|Mux3~1_combout\ & ((\PC_inst|current_pc\(28)) # (!\Add0~55\))) # (!\IMM|Mux3~1_combout\ & (\PC_inst|current_pc\(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux3~1_combout\,
	datab => \PC_inst|current_pc\(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X66_Y3_N23
\PC_inst|current_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[28]~82_combout\,
	asdata => \Add0~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(28));

-- Location: LCCOMB_X66_Y3_N24
\PC_inst|current_pc[29]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[29]~84_combout\ = (\PC_inst|current_pc\(29) & (!\PC_inst|current_pc[28]~83\)) # (!\PC_inst|current_pc\(29) & ((\PC_inst|current_pc[28]~83\) # (GND)))
-- \PC_inst|current_pc[29]~85\ = CARRY((!\PC_inst|current_pc[28]~83\) # (!\PC_inst|current_pc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC_inst|current_pc\(29),
	datad => VCC,
	cin => \PC_inst|current_pc[28]~83\,
	combout => \PC_inst|current_pc[29]~84_combout\,
	cout => \PC_inst|current_pc[29]~85\);

-- Location: LCCOMB_X64_Y4_N24
\IMM|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux2~0_combout\ = (\instruction[29]~input_o\ & \instruction[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[29]~input_o\,
	datad => \instruction[4]~input_o\,
	combout => \IMM|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y3_N2
\IMM|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux2~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux2~0_combout\,
	datad => \IMM|Mux11~0_combout\,
	combout => \IMM|Mux2~1_combout\);

-- Location: LCCOMB_X65_Y3_N26
\Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\IMM|Mux2~1_combout\ & ((\PC_inst|current_pc\(29) & (\Add0~57\ & VCC)) # (!\PC_inst|current_pc\(29) & (!\Add0~57\)))) # (!\IMM|Mux2~1_combout\ & ((\PC_inst|current_pc\(29) & (!\Add0~57\)) # (!\PC_inst|current_pc\(29) & ((\Add0~57\) # 
-- (GND)))))
-- \Add0~59\ = CARRY((\IMM|Mux2~1_combout\ & (!\PC_inst|current_pc\(29) & !\Add0~57\)) # (!\IMM|Mux2~1_combout\ & ((!\Add0~57\) # (!\PC_inst|current_pc\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux2~1_combout\,
	datab => \PC_inst|current_pc\(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X66_Y3_N25
\PC_inst|current_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[29]~84_combout\,
	asdata => \Add0~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(29));

-- Location: LCCOMB_X66_Y3_N26
\PC_inst|current_pc[30]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[30]~86_combout\ = (\PC_inst|current_pc\(30) & (\PC_inst|current_pc[29]~85\ $ (GND))) # (!\PC_inst|current_pc\(30) & (!\PC_inst|current_pc[29]~85\ & VCC))
-- \PC_inst|current_pc[30]~87\ = CARRY((\PC_inst|current_pc\(30) & !\PC_inst|current_pc[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC_inst|current_pc\(30),
	datad => VCC,
	cin => \PC_inst|current_pc[29]~85\,
	combout => \PC_inst|current_pc[30]~86_combout\,
	cout => \PC_inst|current_pc[30]~87\);

-- Location: LCCOMB_X64_Y4_N2
\IMM|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux1~0_combout\ = (\instruction[4]~input_o\ & \instruction[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[4]~input_o\,
	datad => \instruction[30]~input_o\,
	combout => \IMM|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y3_N12
\IMM|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux1~1_combout\ = (\IMM|Mux19~1_combout\) # ((\IMM|Mux11~0_combout\ & ((\IMM|Mux11~1_combout\) # (\IMM|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux11~1_combout\,
	datab => \IMM|Mux11~0_combout\,
	datac => \IMM|Mux1~0_combout\,
	datad => \IMM|Mux19~1_combout\,
	combout => \IMM|Mux1~1_combout\);

-- Location: LCCOMB_X65_Y3_N28
\Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\IMM|Mux1~1_combout\ $ (\PC_inst|current_pc\(30) $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\IMM|Mux1~1_combout\ & ((\PC_inst|current_pc\(30)) # (!\Add0~59\))) # (!\IMM|Mux1~1_combout\ & (\PC_inst|current_pc\(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|Mux1~1_combout\,
	datab => \PC_inst|current_pc\(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X66_Y3_N27
\PC_inst|current_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[30]~86_combout\,
	asdata => \Add0~60_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(30));

-- Location: LCCOMB_X66_Y3_N28
\PC_inst|current_pc[31]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC_inst|current_pc[31]~88_combout\ = \PC_inst|current_pc[30]~87\ $ (\PC_inst|current_pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC_inst|current_pc\(31),
	cin => \PC_inst|current_pc[30]~87\,
	combout => \PC_inst|current_pc[31]~88_combout\);

-- Location: LCCOMB_X63_Y2_N26
\IMM|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux0~4_combout\ = (\instruction[4]~input_o\) # ((\UC|Mux6~2_combout\ & ((\IMM|process_0~0_combout\) # (\instruction[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMM|process_0~0_combout\,
	datab => \instruction[4]~input_o\,
	datac => \instruction[3]~input_o\,
	datad => \UC|Mux6~2_combout\,
	combout => \IMM|Mux0~4_combout\);

-- Location: LCCOMB_X64_Y3_N30
\IMM|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IMM|Mux0~5_combout\ = (\IMM|Mux19~1_combout\) # ((\instruction[31]~input_o\ & (\IMM|Mux0~4_combout\ & \IMM|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[31]~input_o\,
	datab => \IMM|Mux19~1_combout\,
	datac => \IMM|Mux0~4_combout\,
	datad => \IMM|Mux11~0_combout\,
	combout => \IMM|Mux0~5_combout\);

-- Location: LCCOMB_X65_Y3_N30
\Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \IMM|Mux0~5_combout\ $ (\Add0~61\ $ (\PC_inst|current_pc\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMM|Mux0~5_combout\,
	datad => \PC_inst|current_pc\(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X66_Y3_N29
\PC_inst|current_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC_inst|current_pc[31]~88_combout\,
	asdata => \Add0~62_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \UC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_inst|current_pc\(31));

-- Location: LCCOMB_X64_Y2_N22
\UC|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \UC|Mux6~1_combout\ = (\UC|Mux6~0_combout\ & (!\instruction[4]~input_o\ & (\instruction[5]~input_o\ & \IMM|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|Mux6~0_combout\,
	datab => \instruction[4]~input_o\,
	datac => \instruction[5]~input_o\,
	datad => \IMM|Mux27~2_combout\,
	combout => \UC|Mux6~1_combout\);

-- Location: IOIBUF_X38_Y0_N8
\data_from_memory[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(0),
	o => \data_from_memory[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\data_from_memory[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(1),
	o => \data_from_memory[1]~input_o\);

-- Location: IOIBUF_X15_Y67_N22
\data_from_memory[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(2),
	o => \data_from_memory[2]~input_o\);

-- Location: IOIBUF_X26_Y67_N22
\data_from_memory[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(3),
	o => \data_from_memory[3]~input_o\);

-- Location: IOIBUF_X81_Y56_N1
\data_from_memory[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(4),
	o => \data_from_memory[4]~input_o\);

-- Location: IOIBUF_X63_Y67_N15
\data_from_memory[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(5),
	o => \data_from_memory[5]~input_o\);

-- Location: IOIBUF_X61_Y67_N8
\data_from_memory[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(6),
	o => \data_from_memory[6]~input_o\);

-- Location: IOIBUF_X58_Y67_N8
\data_from_memory[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(7),
	o => \data_from_memory[7]~input_o\);

-- Location: IOIBUF_X47_Y67_N8
\data_from_memory[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(8),
	o => \data_from_memory[8]~input_o\);

-- Location: IOIBUF_X17_Y0_N22
\data_from_memory[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(9),
	o => \data_from_memory[9]~input_o\);

-- Location: IOIBUF_X49_Y67_N15
\data_from_memory[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(10),
	o => \data_from_memory[10]~input_o\);

-- Location: IOIBUF_X81_Y61_N8
\data_from_memory[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(11),
	o => \data_from_memory[11]~input_o\);

-- Location: IOIBUF_X8_Y67_N15
\data_from_memory[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(12),
	o => \data_from_memory[12]~input_o\);

-- Location: IOIBUF_X15_Y0_N22
\data_from_memory[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(13),
	o => \data_from_memory[13]~input_o\);

-- Location: IOIBUF_X81_Y20_N1
\data_from_memory[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(14),
	o => \data_from_memory[14]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\data_from_memory[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(15),
	o => \data_from_memory[15]~input_o\);

-- Location: IOIBUF_X17_Y67_N1
\data_from_memory[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(16),
	o => \data_from_memory[16]~input_o\);

-- Location: IOIBUF_X63_Y67_N1
\data_from_memory[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(17),
	o => \data_from_memory[17]~input_o\);

-- Location: IOIBUF_X13_Y67_N1
\data_from_memory[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(18),
	o => \data_from_memory[18]~input_o\);

-- Location: IOIBUF_X81_Y65_N8
\data_from_memory[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(19),
	o => \data_from_memory[19]~input_o\);

-- Location: IOIBUF_X81_Y64_N8
\data_from_memory[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(20),
	o => \data_from_memory[20]~input_o\);

-- Location: IOIBUF_X81_Y42_N8
\data_from_memory[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(21),
	o => \data_from_memory[21]~input_o\);

-- Location: IOIBUF_X49_Y67_N8
\data_from_memory[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(22),
	o => \data_from_memory[22]~input_o\);

-- Location: IOIBUF_X26_Y67_N8
\data_from_memory[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(23),
	o => \data_from_memory[23]~input_o\);

-- Location: IOIBUF_X10_Y0_N22
\data_from_memory[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(24),
	o => \data_from_memory[24]~input_o\);

-- Location: IOIBUF_X58_Y67_N1
\data_from_memory[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(25),
	o => \data_from_memory[25]~input_o\);

-- Location: IOIBUF_X65_Y67_N1
\data_from_memory[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(26),
	o => \data_from_memory[26]~input_o\);

-- Location: IOIBUF_X10_Y67_N22
\data_from_memory[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(27),
	o => \data_from_memory[27]~input_o\);

-- Location: IOIBUF_X65_Y67_N8
\data_from_memory[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(28),
	o => \data_from_memory[28]~input_o\);

-- Location: IOIBUF_X70_Y67_N22
\data_from_memory[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(29),
	o => \data_from_memory[29]~input_o\);

-- Location: IOIBUF_X52_Y67_N1
\data_from_memory[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_from_memory(30),
	o => \data_from_memory[30]~input_o\);

-- Location: IOIBUF_X81_Y12_N8
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


