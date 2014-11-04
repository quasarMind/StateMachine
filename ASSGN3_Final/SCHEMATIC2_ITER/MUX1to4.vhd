----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:24 10/03/2014 
-- Design Name: 
-- Module Name:    MUX1to4 - Behavioral 
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

entity MUX1to4 is

port (
MUX_OUT1 : out STD_LOGIC_VECTOR (7 downto 0);
MUX_OUT2 : out STD_LOGIC_VECTOR (7 downto 0);
MUX_OUT3 : out STD_LOGIC_VECTOR (7 downto 0);
MUX_OUT4 : out STD_LOGIC_VECTOR (7 downto 0);
MUX_In : in STD_LOGIC_VECTOR (7 downto 0);
MUX_SEL : in STD_LOGIC_VECTOR (1 downto 0));

end MUX1to4;

architecture Behavioral of MUX1to4 is

begin

process (MUX_In,MUX_SEL)
begin
case MUX_SEL is
when "00" => MUX_OUT1 <= MUX_In;
when "01" => MUX_OUT2 <= MUX_In;
when "10" => MUX_OUT3 <= MUX_In;
when "11" => MUX_OUT4 <= MUX_In;
when others => null;
end case;
end process;


end Behavioral;

