----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:52:12 10/26/2014 
-- Design Name: 
-- Module Name:    InPort2X8bit - Behavioral 
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

entity InputPort2X8bit is
port (

	A_PORT : in STD_LOGIC_VECTOR (7 downto 0);
	B_PORT : in STD_LOGIC_VECTOR (7 downto 0);
	C_BUS_IN : in STD_LOGIC_VECTOR (7 downto 0);
	C_BUS_OUT : out STD_LOGIC_VECTOR (7 downto 0);
	ENABLE_PORT_A : in STD_LOGIC;
	ENABLE_PORT_B : in STD_LOGIC;
	OUTPUT_SELECT : in STD_LOGIC_VECTOR (1 downto 0);
	CLK : in STD_LOGIC;
	RESET : in STD_LOGIC );

end InputPort2X8bit;



architecture Behavioral of InputPort2X8bit is
signal SYNC_REG_A : STD_LOGIC_VECTOR(A_PORT'range);
signal A_PORT_REG : STD_LOGIC_VECTOR(A_PORT'range);

signal SYNC_REG_B : STD_LOGIC_VECTOR(B_PORT'range);
signal B_PORT_REG : STD_LOGIC_VECTOR(B_PORT'range);

begin
--PORT A PROCESS ********************************************

PORT_A: process(CLK,RESET)

begin

if RESET = '1' then
	SYNC_REG_A <= "00000000";
	A_PORT_REG <= "00000000";
else

	if rising_edge(CLK) then
		if ENABLE_PORT_A = '1' then
			SYNC_REG_A <= A_PORT;
		end if;
	A_PORT_REG <= SYNC_REG_A;
	end if;
end if;

end process;


--PORT B PROCESS *************************************************

PORT_B: process(CLK,RESET)

begin

--Normal RESET functioning here,
if RESET = '1' then
	SYNC_REG_B <= "00000000";
	B_PORT_REG <= "00000000";
else
	--Synchronising the Inputs with the clock signal
	if rising_edge(CLK) then
		if ENABLE_PORT_B = '1' then -- enable check >> passes TSA .
			SYNC_REG_B <= B_PORT;    -- passing of data block from B_PORT to SYNC_REG_B.
		end if;
	B_PORT_REG <= SYNC_REG_B;      --passing of data block from  SYNC_REG_B to B_PORT_REG
	end if;
end if;  -- DATA FLOW : B_PORT >>(1st clk rise)>>SYNC_REG_B >> (2nd clk rise) >> B_PORT_REG

end process;

-- MUX process ***************************************************
MUX: process(OUTPUT_SELECT,C_BUS_IN,A_PORT_REG,B_PORT_REG)

begin

case OUTPUT_SELECT is

	when "00" => C_BUS_OUT <= C_BUS_IN;
	when "01" => C_BUS_OUT <= A_PORT_REG;
	when "10" => C_BUS_OUT <= B_PORT_REG;
	when others => null;
end case;
end process;

end Behavioral;

