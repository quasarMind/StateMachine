----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:52 10/03/2014 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is

port (
ALU_IN1 : in STD_LOGIC_VECTOR (7 downto 0);
ALU_IN2 : in STD_LOGIC_VECTOR (7 downto 0);
ALU_OUT1 : out STD_LOGIC_VECTOR (7 downto 0);
ALU_OUT2 : out STD_LOGIC_VECTOR (7 downto 0);
ALU_OUT3 : out STD_LOGIC_VECTOR (7 downto 0));

end ALU;

architecture Behavioral of ALU is

begin

ALU_OUT1 <= ALU_IN1 and ALU_IN2;
ALU_OUT2 <= ALU_IN1 or ALU_IN2;
ALU_OUT3 <= not ALU_IN1;

end Behavioral;

