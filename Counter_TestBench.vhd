----------------------------------------------------------------------------------
-- Company: University of Arkansas
-- Engineer: Baker Jones
--
-- Create Date:06Feb2026
-- Last Updated:06Feb2026
-- Design Name:Simple Counter
-- Module Name:SimpleCnt - Behavioral
-- Project Name:SimpleCnt
-- Target Devices:LCMXO3D-9400HC-5BG256C (MachXO3D_BreakoutBrd)
-- Tool versions:Lattice Diamond_x64 Build 3.12.0.240.2
-- Description:
-- This Project was developed to demonstrate a simple 8-bit counter design with inputs and outputs.
-- A Testbench for this project was created and demonstrates base functionality.
--
--
---- PinOut:
-- Signal	CPLD_Pin	Description
-- nClk		B3			Clk_In			(Input)			[Onboard Pushbutton]
-- RSTn		R1			Reset			(Input)			[Onboard DIP_SW4]
-- INCn		P2			INC				(Input)			[Onboard DIP_SW1]
-- LED_0	H11			LED0			(Output)		[Onboard LED]
-- LED_1	J13			LED1			(Output)		[Onboard LED]
-- LED_2	J11			LED2			(Output)		[Onboard LED]
-- LED_3	L12			LED3			(Output)		[Onboard LED]
-- LED_4	K11			LED4			(Output)		[Onboard LED]
-- LED_5	L13			LED5			(Output)		[Onboard LED]
-- LED_6	N15			LED6			(Output)		[Onboard LED]
-- LED_7	P16			LED7			(Output)		[Onboard LED]
--
-- Revisions:--
--
-- Revision 0.01 -
-- File Created; Basic\Classical Operation Implemented
--
--
-- Additional Comments:
--
--
----------------------------------------------------------------------------------

Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;





