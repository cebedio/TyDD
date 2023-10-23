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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/22/2023 22:50:20"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	velocimetro IS
    PORT (
	enable : OUT std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	V : IN std_logic_vector(3 DOWNTO 0);
	Stop : IN std_logic
	);
END velocimetro;

-- Design Ports Information
-- enable	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Stop	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF velocimetro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_V : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Stop : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Z[0]~5_combout\ : std_logic;
SIGNAL \V[0]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~output_o\ : std_logic;
SIGNAL \inst|reg_fstate.state6~0_combout\ : std_logic;
SIGNAL \inst|fstate.state6~q\ : std_logic;
SIGNAL \inst|reg_fstate.state7~0_combout\ : std_logic;
SIGNAL \inst|fstate.state7~q\ : std_logic;
SIGNAL \inst|reg_fstate.state8~0_combout\ : std_logic;
SIGNAL \inst|fstate.state8~q\ : std_logic;
SIGNAL \inst|reg_fstate.state9~0_combout\ : std_logic;
SIGNAL \inst|fstate.state9~q\ : std_logic;
SIGNAL \inst|reg_fstate.state10~0_combout\ : std_logic;
SIGNAL \inst|fstate.state10~q\ : std_logic;
SIGNAL \inst|reg_fstate.state11~0_combout\ : std_logic;
SIGNAL \inst|fstate.state11~q\ : std_logic;
SIGNAL \inst|reg_fstate.state12~0_combout\ : std_logic;
SIGNAL \inst|fstate.state12~q\ : std_logic;
SIGNAL \inst|reg_fstate.state13~0_combout\ : std_logic;
SIGNAL \inst|fstate.state13~q\ : std_logic;
SIGNAL \inst|reg_fstate.state14~0_combout\ : std_logic;
SIGNAL \inst|fstate.state14~q\ : std_logic;
SIGNAL \inst|reg_fstate.state15~0_combout\ : std_logic;
SIGNAL \inst|fstate.state15~q\ : std_logic;
SIGNAL \inst|reg_fstate.state16~0_combout\ : std_logic;
SIGNAL \inst|fstate.state16~q\ : std_logic;
SIGNAL \inst|reg_fstate.state1~0_combout\ : std_logic;
SIGNAL \inst|fstate.state1~q\ : std_logic;
SIGNAL \inst|reg_fstate.state2~0_combout\ : std_logic;
SIGNAL \inst|fstate.state2~q\ : std_logic;
SIGNAL \inst|reg_fstate.state3~0_combout\ : std_logic;
SIGNAL \inst|fstate.state3~q\ : std_logic;
SIGNAL \inst|reg_fstate.state4~0_combout\ : std_logic;
SIGNAL \inst|fstate.state4~q\ : std_logic;
SIGNAL \inst|reg_fstate.state5~0_combout\ : std_logic;
SIGNAL \inst|fstate.state5~q\ : std_logic;
SIGNAL \inst|Z[3]~7_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|Z[0]~0_combout\ : std_logic;
SIGNAL \inst|Z[2]~1_combout\ : std_logic;
SIGNAL \inst3~3_combout\ : std_logic;
SIGNAL \Stop~input_o\ : std_logic;
SIGNAL \inst|Z[2]~2_combout\ : std_logic;
SIGNAL \V[2]~input_o\ : std_logic;
SIGNAL \inst|Z[0]~3_combout\ : std_logic;
SIGNAL \inst|Z[0]~4_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \V[1]~input_o\ : std_logic;
SIGNAL \inst|Z[1]~6_combout\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \V[3]~input_o\ : std_logic;
SIGNAL \inst3~4_combout\ : std_logic;

BEGIN

enable <= ww_enable;
ww_reset <= reset;
ww_clock <= clock;
ww_V <= V;
ww_Stop <= Stop;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: LCCOMB_X35_Y1_N12
\inst|Z[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[0]~5_combout\ = (\inst|Z[0]~3_combout\ & !\inst|fstate.state13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Z[0]~3_combout\,
	datad => \inst|fstate.state13~q\,
	combout => \inst|Z[0]~5_combout\);

-- Location: IOIBUF_X36_Y0_N22
\V[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(0),
	o => \V[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X34_Y0_N2
\enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~4_combout\,
	devoe => ww_devoe,
	o => \enable~output_o\);

-- Location: LCCOMB_X36_Y1_N28
\inst|reg_fstate.state6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state6~0_combout\ = (!\reset~input_o\ & \inst|fstate.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state5~q\,
	combout => \inst|reg_fstate.state6~0_combout\);

-- Location: FF_X36_Y1_N29
\inst|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state6~q\);

-- Location: LCCOMB_X36_Y1_N12
\inst|reg_fstate.state7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state7~0_combout\ = (!\reset~input_o\ & \inst|fstate.state6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state6~q\,
	combout => \inst|reg_fstate.state7~0_combout\);

-- Location: FF_X36_Y1_N13
\inst|fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state7~q\);

-- Location: LCCOMB_X36_Y1_N20
\inst|reg_fstate.state8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state8~0_combout\ = (!\reset~input_o\ & \inst|fstate.state7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state7~q\,
	combout => \inst|reg_fstate.state8~0_combout\);

-- Location: FF_X36_Y1_N21
\inst|fstate.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state8~q\);

-- Location: LCCOMB_X36_Y1_N24
\inst|reg_fstate.state9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state9~0_combout\ = (!\reset~input_o\ & \inst|fstate.state8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state8~q\,
	combout => \inst|reg_fstate.state9~0_combout\);

-- Location: FF_X36_Y1_N25
\inst|fstate.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state9~q\);

-- Location: LCCOMB_X36_Y1_N18
\inst|reg_fstate.state10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state10~0_combout\ = (!\reset~input_o\ & \inst|fstate.state9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state9~q\,
	combout => \inst|reg_fstate.state10~0_combout\);

-- Location: FF_X36_Y1_N19
\inst|fstate.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state10~q\);

-- Location: LCCOMB_X36_Y1_N8
\inst|reg_fstate.state11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state11~0_combout\ = (!\reset~input_o\ & \inst|fstate.state10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state10~q\,
	combout => \inst|reg_fstate.state11~0_combout\);

-- Location: FF_X36_Y1_N9
\inst|fstate.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state11~q\);

-- Location: LCCOMB_X36_Y1_N14
\inst|reg_fstate.state12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state12~0_combout\ = (!\reset~input_o\ & \inst|fstate.state11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.state11~q\,
	combout => \inst|reg_fstate.state12~0_combout\);

-- Location: FF_X36_Y1_N15
\inst|fstate.state12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state12~q\);

-- Location: LCCOMB_X36_Y1_N16
\inst|reg_fstate.state13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state13~0_combout\ = (!\reset~input_o\ & \inst|fstate.state12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.state12~q\,
	combout => \inst|reg_fstate.state13~0_combout\);

-- Location: FF_X36_Y1_N17
\inst|fstate.state13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state13~q\);

-- Location: LCCOMB_X36_Y1_N10
\inst|reg_fstate.state14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state14~0_combout\ = (!\reset~input_o\ & \inst|fstate.state13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state13~q\,
	combout => \inst|reg_fstate.state14~0_combout\);

-- Location: FF_X36_Y1_N11
\inst|fstate.state14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state14~q\);

-- Location: LCCOMB_X36_Y1_N26
\inst|reg_fstate.state15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state15~0_combout\ = (!\reset~input_o\ & \inst|fstate.state14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state14~q\,
	combout => \inst|reg_fstate.state15~0_combout\);

-- Location: FF_X36_Y1_N27
\inst|fstate.state15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state15~q\);

-- Location: LCCOMB_X36_Y1_N22
\inst|reg_fstate.state16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state16~0_combout\ = (!\reset~input_o\ & \inst|fstate.state15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.state15~q\,
	combout => \inst|reg_fstate.state16~0_combout\);

-- Location: FF_X36_Y1_N23
\inst|fstate.state16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state16~q\);

-- Location: LCCOMB_X36_Y1_N4
\inst|reg_fstate.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state1~0_combout\ = (!\reset~input_o\ & !\inst|fstate.state16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.state16~q\,
	combout => \inst|reg_fstate.state1~0_combout\);

-- Location: FF_X36_Y1_N5
\inst|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state1~q\);

-- Location: LCCOMB_X36_Y1_N0
\inst|reg_fstate.state2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state2~0_combout\ = (!\reset~input_o\ & !\inst|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.state1~q\,
	combout => \inst|reg_fstate.state2~0_combout\);

-- Location: FF_X36_Y1_N1
\inst|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state2~q\);

-- Location: LCCOMB_X36_Y1_N30
\inst|reg_fstate.state3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state3~0_combout\ = (!\reset~input_o\ & \inst|fstate.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state2~q\,
	combout => \inst|reg_fstate.state3~0_combout\);

-- Location: FF_X36_Y1_N31
\inst|fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state3~q\);

-- Location: LCCOMB_X36_Y1_N2
\inst|reg_fstate.state4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state4~0_combout\ = (!\reset~input_o\ & \inst|fstate.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.state3~q\,
	combout => \inst|reg_fstate.state4~0_combout\);

-- Location: FF_X36_Y1_N3
\inst|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state4~q\);

-- Location: LCCOMB_X36_Y1_N6
\inst|reg_fstate.state5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.state5~0_combout\ = (!\reset~input_o\ & \inst|fstate.state4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|fstate.state4~q\,
	combout => \inst|reg_fstate.state5~0_combout\);

-- Location: FF_X36_Y1_N7
\inst|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.state5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.state5~q\);

-- Location: LCCOMB_X35_Y1_N8
\inst|Z[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[3]~7_combout\ = (!\inst|fstate.state6~q\ & (!\inst|fstate.state5~q\ & (!\inst|fstate.state7~q\ & !\inst|fstate.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.state6~q\,
	datab => \inst|fstate.state5~q\,
	datac => \inst|fstate.state7~q\,
	datad => \inst|fstate.state8~q\,
	combout => \inst|Z[3]~7_combout\);

-- Location: IOIBUF_X36_Y0_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X35_Y1_N16
\inst|Z[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[0]~0_combout\ = (\inst|fstate.state1~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.state1~q\,
	datac => \reset~input_o\,
	combout => \inst|Z[0]~0_combout\);

-- Location: LCCOMB_X35_Y1_N10
\inst|Z[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[2]~1_combout\ = (!\inst|fstate.state4~q\ & (!\inst|fstate.state2~q\ & (!\inst|fstate.state3~q\ & \inst|Z[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.state4~q\,
	datab => \inst|fstate.state2~q\,
	datac => \inst|fstate.state3~q\,
	datad => \inst|Z[0]~0_combout\,
	combout => \inst|Z[2]~1_combout\);

-- Location: LCCOMB_X35_Y1_N26
\inst3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~3_combout\ = (\inst|Z[3]~7_combout\ & \inst|Z[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Z[3]~7_combout\,
	datad => \inst|Z[2]~1_combout\,
	combout => \inst3~3_combout\);

-- Location: IOIBUF_X36_Y0_N15
\Stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Stop,
	o => \Stop~input_o\);

-- Location: LCCOMB_X35_Y1_N20
\inst|Z[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[2]~2_combout\ = (!\inst|fstate.state12~q\ & (!\inst|fstate.state9~q\ & (!\inst|fstate.state11~q\ & !\inst|fstate.state10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.state12~q\,
	datab => \inst|fstate.state9~q\,
	datac => \inst|fstate.state11~q\,
	datad => \inst|fstate.state10~q\,
	combout => \inst|Z[2]~2_combout\);

-- Location: IOIBUF_X34_Y0_N15
\V[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(2),
	o => \V[2]~input_o\);

-- Location: LCCOMB_X35_Y1_N30
\inst|Z[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[0]~3_combout\ = (\inst|fstate.state1~q\ & (!\inst|fstate.state5~q\ & (!\reset~input_o\ & !\inst|fstate.state9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.state1~q\,
	datab => \inst|fstate.state5~q\,
	datac => \reset~input_o\,
	datad => \inst|fstate.state9~q\,
	combout => \inst|Z[0]~3_combout\);

-- Location: LCCOMB_X35_Y1_N0
\inst|Z[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[0]~4_combout\ = (!\inst|fstate.state3~q\ & (!\inst|fstate.state11~q\ & (!\inst|fstate.state7~q\ & !\inst|fstate.state15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.state3~q\,
	datab => \inst|fstate.state11~q\,
	datac => \inst|fstate.state7~q\,
	datad => \inst|fstate.state15~q\,
	combout => \inst|Z[0]~4_combout\);

-- Location: LCCOMB_X35_Y1_N18
\inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\V[0]~input_o\ & ((\inst|fstate.state13~q\) # ((!\inst|Z[0]~4_combout\) # (!\inst|Z[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V[0]~input_o\,
	datab => \inst|fstate.state13~q\,
	datac => \inst|Z[0]~3_combout\,
	datad => \inst|Z[0]~4_combout\,
	combout => \inst3~0_combout\);

-- Location: IOIBUF_X34_Y0_N22
\V[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(1),
	o => \V[1]~input_o\);

-- Location: LCCOMB_X35_Y1_N2
\inst|Z[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Z[1]~6_combout\ = (!\inst|fstate.state6~q\ & (!\inst|fstate.state14~q\ & (!\inst|fstate.state2~q\ & !\inst|fstate.state10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.state6~q\,
	datab => \inst|fstate.state14~q\,
	datac => \inst|fstate.state2~q\,
	datad => \inst|fstate.state10~q\,
	combout => \inst|Z[1]~6_combout\);

-- Location: LCCOMB_X35_Y1_N24
\inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\inst3~0_combout\ & (((\V[1]~input_o\) # (!\inst|Z[1]~6_combout\)) # (!\inst|Z[0]~5_combout\))) # (!\inst3~0_combout\ & (\V[1]~input_o\ & ((!\inst|Z[1]~6_combout\) # (!\inst|Z[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Z[0]~5_combout\,
	datab => \inst3~0_combout\,
	datac => \V[1]~input_o\,
	datad => \inst|Z[1]~6_combout\,
	combout => \inst3~1_combout\);

-- Location: LCCOMB_X35_Y1_N22
\inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\V[2]~input_o\ & (((\inst3~1_combout\) # (!\inst|Z[2]~2_combout\)) # (!\inst|Z[2]~1_combout\))) # (!\V[2]~input_o\ & (\inst3~1_combout\ & ((!\inst|Z[2]~2_combout\) # (!\inst|Z[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Z[2]~1_combout\,
	datab => \inst|Z[2]~2_combout\,
	datac => \V[2]~input_o\,
	datad => \inst3~1_combout\,
	combout => \inst3~2_combout\);

-- Location: IOIBUF_X38_Y0_N1
\V[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(3),
	o => \V[3]~input_o\);

-- Location: LCCOMB_X35_Y1_N28
\inst3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~4_combout\ = (\Stop~input_o\ & ((\inst3~3_combout\ & (\inst3~2_combout\ & \V[3]~input_o\)) # (!\inst3~3_combout\ & ((\inst3~2_combout\) # (\V[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~3_combout\,
	datab => \Stop~input_o\,
	datac => \inst3~2_combout\,
	datad => \V[3]~input_o\,
	combout => \inst3~4_combout\);

ww_enable <= \enable~output_o\;
END structure;


