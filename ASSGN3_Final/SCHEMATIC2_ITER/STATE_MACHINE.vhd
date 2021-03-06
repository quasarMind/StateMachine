----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:48:47 10/26/2014 
-- Design Name: 
-- Module Name:    STATE_MACHINE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity STATE_MACHINE is
port (
		--General Ports
		CLK : in STD_LOGIC;
		Re_Run_Programme : in STD_LOGIC;
		--Process A parts
		Programme_Start : in STD_LOGIC;
		Data_From_ROM 	: in STD_LOGIC_VECTOR(7 downto 0);
		ADDR_To_ROM : out STD_LOGIC_VECTOR (5 downto 0);
		Programme_Status: out STD_LOGIC;
		EN_OUT : out STD_LOGIC;
		--Process B Part
		--Process C Parts
		MUX_FF_Select : out STD_LOGIC_VECTOR (1 downto 0);
		MUX1_Select : out STD_LOGIC_VECTOR(1 downto 0);  
		MUX2_Select : out STD_LOGIC_VECTOR(1 downto 0);
		ALU_Select  : out STD_LOGIC_VECTOR(1 downto 0);
		EN_A_Ports : out STD_LOGIC;-- := '1'; DEBUGGER
		EN_B_Ports : out STD_LOGIC;-- := '1'; DEBUGGER
		BUS_Select : out STD_LOGIC_VECTOR (1 downto 0);
		Reset 	   : out STD_LOGIC
	); 
end STATE_MACHINE;

architecture Behavioral of STATE_MACHINE is

type State_Type is (State_A,State_B,State_C,State_D);

signal State,Next_State : State_Type;
signal Counter : STD_LOGIC_VECTOR(5 downto 0) := "000000";
signal FF_Instruction : STD_LOGIC_VECTOR (7 downto 0); 			-- 00
signal MUX_ALU_Instruction : STD_LOGIC_VECTOR (7 downto 0); 		-- 01
signal BUS_A_B_Ports_Instruction : STD_LOGIC_VECTOR (7 downto 0); 	-- 10
signal Reset_Instruction : STD_LOGIC_VECTOR (7 downto 0); 
signal FF_Path1 : STD_LOGIC;
signal FF_Path2 : STD_LOGIC;
signal MUX_ALU_Path : STD_LOGIC;
signal BUS_A_B_Ports_Path1 : STD_LOGIC;
signal BUS_A_B_Ports_Path2 : STD_LOGIC;
signal Reset_Path : STD_LOGIC;
signal EN_OUT_reg : STD_LOGIC;
signal Instruction_Finder : STD_LOGIC_VECTOR (7 downto 0);
signal Instruction_Identifier : STD_LOGIC_VECTOR(7 downto 0);
signal Instruction : STD_LOGIC_VECTOR(7 downto 0);
signal Call_Next_Instruction : STD_LOGIC_VECTOR(5 downto 0);

begin
FF_Instruction 		  <= "00000000";
MUX_ALU_Instruction 	  <= "01000000";
BUS_A_B_Ports_Instruction <= "10000000";
Reset_Instruction		  <= "11000000";
Instruction_Finder <= "11000000";
--Counter <= "000000";
--Call_Next_Instruction <= "000000";
--Re Run the programme
Process(CLK)
begin
	if rising_edge(CLK) then
		if (Re_Run_Programme = '1') then
			--Counter <= "000000";
			State <= State_A;
			else 
			--EN_A_Ports <= '1'; -- DEBUGGER
		   --EN_B_Ports <= '1'; -- DEBUGGER
			--Counter <= "000000";
			State <= Next_State;
		end if;
	end if;
end Process;

--next state 
Process(CLK,State)
begin


if falling_edge(CLK) then
Next_State <= State;
if Programme_Start = '1' then
case State is
--#### STATE A #####
	when State_A =>
			ADDR_To_ROM <= Counter;--"000000";
			Next_State <= State_B;
--#### STATE B #####
	when State_B =>
		EN_OUT <= '1';
		Instruction <= DATA_From_ROM;
		--Instruction_Identifier <= (Instruction and Instruction_Finder);
		case (Instruction) is --_Identifier
			when "00000000" => FF_Path1 <= '1';
			when "00000001" => FF_Path2 <= '1';
			when "01000000" => MUX_ALU_Path <= '1';		
			when "10000000" => BUS_A_B_Ports_Path1 <= '1';
			when "10000001" => BUS_A_B_Ports_Path2 <= '1';
			when "11000000" => Reset_Path <= '1';
			when others => null;
		end case;
		Next_State <= State_C;
--#### STATE C #####
	when State_C =>
		
		--########
		if (FF_Path1 = '1') then -- and (Counter = 2)) 
			MUX_FF_Select <= "00";
		end if;
		if (FF_Path2 = '1' ) then --) and (Counter = 4))
			MUX_FF_Select <= "01";
		end if;
		--########
		if MUX_ALU_Path = '1' then --(falling_edge(CLK) and 
			MUX1_Select <= "00";
			MUX2_Select <= "01";
			ALU_Select <= "00";
		end if;
		--########
		if BUS_A_B_Ports_Path1 = '1' then --( rising_edge(CLK) and 
			--if Counter = 1 then
				BUS_Select <= "01";
		end if;
			--if Counter = 3 then
		if BUS_A_B_Ports_Path2 = '1' then
				BUS_Select <= "10";
			--end if;
   		EN_A_Ports <= '1';
 			EN_B_Ports <= '1';
		end if;
		--########
		if Reset_Path = '1' then -- ( rising_edge(CLK) and 
		Reset <= '1';
		end if;
		--	EN_A_Ports <= '1'; -- DEBUGGER
		--	EN_B_Ports <= '1'; -- DEBUGGER
		Next_State <= State_D;
--#### STATE D #####
	when State_D =>		
		EN_OUT <= '0';
		Counter <= Counter + 1;
		if Counter > 5 then	
				Next_State <= State_D;
				--Counter <= "000000";
		end if;
		Call_Next_Instruction <= Counter;	
		Next_State <= State_A;
	end case;
end if;
end if;
end process;
end Behavioral;

