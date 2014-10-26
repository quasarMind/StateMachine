----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:54:11 10/26/2014 
-- Design Name: 
-- Module Name:    OutPort2X8bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OutPort2X8bit is
port (

		A_IN : in STD_LOGIC_VECTOR (7 downto 0);
		B_IN : in STD_LOGIC_VECTOR (7 downto 0);
		
		A_OUT: out STD_LOGIC_VECTOR (7 downto 0);
		B_OUT: out STD_LOGIC_VECTOR (7 downto 0);	

		ENABLE_A_OUT : in STD_LOGIC;
		ENABLE_B_OUT : in STD_LOGIC;
		
		RESET_OUTPORT : in STD_LOGIC;
		CLK : in STD_LOGIC

);
end OutPort2X8bit;

architecture Behavioral of OutPort2X8bit is

begin

process(CLK,RESET_OUTPORT) is
begin

if RESET_OUTPORT = '1' then
	A_OUT <= "00000000";
	B_OUT <= "00000000";
	
	else 
		if rising_edge(CLK) then
			if ENABLE_A_OUT = '1' then
				A_OUT <= A_IN;
			end if;
			
			if ENABLE_B_OUT = '1' then
			B_OUT <= B_IN;
			end if;
		end if;
end if;
end process;

end Behavioral;

