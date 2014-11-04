----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:24 10/03/2014 
-- Design Name: 
-- Module Name:    MUX4to1 - Behavioral 
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

entity MUX4to1 is

port (
MUX_PIN1 : in STD_LOGIC_VECTOR (7 downto 0);
MUX_PIN2 : in STD_LOGIC_VECTOR (7 downto 0);
MUX_PIN3 : in STD_LOGIC_VECTOR (7 downto 0);
MUX_PIN4 : in STD_LOGIC_VECTOR (7 downto 0);
MUX_OUT : out STD_LOGIC_VECTOR (7 downto 0);
MUX_SEL : in STD_LOGIC_VECTOR (1 downto 0));

end MUX4to1;

architecture Behavioral of MUX4to1 is

begin

process (MUX_PIN1,MUX_PIN2,MUX_PIN3,MUX_PIN4,MUX_SEL)
begin
case MUX_SEL is
when "00" => MUX_OUT <= MUX_PIN1;
when "01" => MUX_OUT <= MUX_PIN2;
when "10" => MUX_OUT <= MUX_PIN3;
when "11" => MUX_OUT <= MUX_PIN4;
when others => null;
end case;
end process;


end Behavioral;

