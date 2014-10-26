----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:42:08 10/03/2014 
-- Design Name: 
-- Module Name:    FLIPFLOP - Behavioral 
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

entity FLIPFLOP is

Port(
		FLIPFLOP_IN : in STD_LOGIC_VECTOR (7 downto 0);
		FLIPFLOP_OUT : out STD_LOGIC_VECTOR(7 downto 0);
		FLIPFLOP_RESET : in STD_LOGIC;
		FLIPFLOP_PRESET : in STD_LOGIC;
		CLK : in STD_LOGIC

);
end FLIPFLOP;

architecture Behavioral of FLIPFLOP is

begin

process ( FLIPFLOP_RESET,FLIPFLOP_PRESET,CLK)
begin

if (FLIPFLOP_RESET = '1') then
FLIPFLOP_OUT <="00000000";
elsif (FLIPFLOP_PRESET = '1') then
FLIPFLOP_OUT <= "11111111";
elsif (CLK' event and CLK ='1') then
FLIPFLOP_OUT <= FLIPFLOP_IN;
end if;


end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:42:08 10/03/2014 
-- Design Name: 
-- Module Name:    FLIPFLOP - Behavioral 
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

entity FLIPFLOP is

Port(
		FLIPFLOP_IN : in STD_LOGIC_VECTOR (7 downto 0);
		FLIPFLOP_OUT : out STD_LOGIC_VECTOR(7 downto 0);
		FLIPFLOP_RESET : in STD_LOGIC;
		FLIPFLOP_PRESET : in STD_LOGIC;
		CLK : in STD_LOGIC

);
end FLIPFLOP;

architecture Behavioral of FLIPFLOP is

begin

process ( FLIPFLOP_RESET,FLIPFLOP_PRESET,CLK)
begin

if (FLIPFLOP_RESET = '1') then
FLIPFLOP_OUT <="00000000";
elsif (FLIPFLOP_PRESET = '1') then
FLIPFLOP_OUT <= "11111111";
elsif (CLK' event and CLK ='1') then
FLIPFLOP_OUT <= FLIPFLOP_IN;
end if;


end process;
end Behavioral;

