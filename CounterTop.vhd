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

library machxo3d;
use machxo3d.all;

entity SimCnt_Top is
	Port (
			--Board Inputs
			nClk : in STD_LOGIC;  --clock is active low 
			RSTn : in STD_LOGIC;  --global reset
			INCn : in STD_LOGIC;  --Increment signal
			--Board Outputs
			LED_0 : out STD_LOGIC;
			LED_1 : out STD_LOGIC;
			LED_2 : out STD_LOGIC;
			LED_3 : out STD_LOGIC;
			LED_4 : out STD_LOGIC;
			LED_5 : out STD_LOGIC;
			LED_6 : out STD_LOGIC;
			LED_7 : out STD_LOGIC;	--LED Output Block
			);
end SimCnt_Top;

architecture Behavioral of SimCnt_Top is
	signal temp: STD_LOGIC_VECTOR (7 down to 0);
	
	Counter_behav: process
	begin
		wait until nCLK'event and nCLK = "0";
		if RSTn='0' then
			temp<=(Others =>'0';
		elsif INCn = '0' then
			temp<=temp+1;
		else
			null;
		end if;
		
		count<=temp;
		
	end process;
	
	
		 











