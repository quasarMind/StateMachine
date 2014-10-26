----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:43:48 10/26/2014 
-- Design Name: 
-- Module Name:    ROMMSTEIN - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROMMSTEIN is
port (

	CLK : in STD_LOGIC;
	ENABLE_ROM : in STD_LOGIC;
	
	ROM_ADDR : in STD_LOGIC_VECTOR (5 downto 0);
	ROM_DATA : out STD_LOGIC_VECTOR (7 downto 0)
);

end ROMMSTEIN;

architecture Behavioral of ROMMSTEIN is

type ROM_TYPE is array(0 to 63) of STD_LOGIC_VECTOR (7 downto 0);
signal ROM_SIGNAL: ROM_TYPE :=(	
												X"40",X"80",X"00",X"80",X"00",X"C0",X"00",X"00", --1---8
												X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00", --9--16
												X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00", --17-24
												X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00", --25-32 
												X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00", --33-40
												X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00", --41-48
												X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00", --49-56
												X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00"  --57-64
												
											);
											
signal RDATA:STD_LOGIC_VECTOR(7 downto 0);

begin
RDATA <= ROM_SIGNAL(conv_integer(ROM_ADDR));

process(CLK)
	begin
	
		if (CLK'event and CLK = '1') then
		
			if ENABLE_ROM = '1' then
				ROM_DATA <= RDATA;
			end if;
		end if;
	end process;

end Behavioral;


