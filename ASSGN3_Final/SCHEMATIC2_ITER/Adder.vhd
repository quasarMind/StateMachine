----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:40:56 10/03/2014 
-- Design Name: 
-- Module Name:    Adder - Behavioral 
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

entity Adder is

Port (
Adder_in1 : in STD_LOGIC_VECTOR (7 downto 0);
Adder_in2 : in STD_LOGIC_VECTOR (7 downto 0 );
Adder_carryin : in STD_LOGIC;
Adder_carryout : out STD_LOGIC;
Adder_sum : out STD_LOGIC_VECTOR (7 downto 0));

end Adder;

architecture Behavioral of Adder is

begin

process (Adder_in1,Adder_in2,Adder_carryin)
variable vsum : STD_LOGIC_VECTOR (7 downto 0);
variable carry : STD_LOGIC;

begin
carry := Adder_carryin;

for i in 0 to 7 loop
vsum(i) := (Adder_in1(i) xor Adder_in2(i)) xor carry;
carry := (Adder_in1(i) and Adder_in2(i)) or (carry and (Adder_in1(i) or Adder_in2(i)));
end loop;

Adder_sum <= vsum;
Adder_carryout <= carry;

end process;

end Behavioral;

