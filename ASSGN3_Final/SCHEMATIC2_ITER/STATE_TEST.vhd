--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:05:51 10/29/2014
-- Design Name:   
-- Module Name:   D:/ASSGN3_Final/SCHEMATIC2_ITER/STATE_TEST.vhd
-- Project Name:  SCHEMATIC2_ITER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: STATE_MACHINE
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY STATE_TEST IS
END STATE_TEST;
 
ARCHITECTURE behavior OF STATE_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT STATE_MACHINE
    PORT(
         CLK : IN  std_logic;
         Re_Run_Programme : IN  std_logic;
         Programme_Start : IN  std_logic;
         Data_From_ROM : IN  std_logic_vector(7 downto 0);
         ADDR_To_ROM : OUT  std_logic_vector(5 downto 0);
         Programme_Status : OUT  std_logic;
         EN_OUT : OUT  std_logic;
         MUX_FF_Select : OUT  std_logic_vector(1 downto 0);
         MUX1_Select : OUT  std_logic_vector(1 downto 0);
         MUX2_Select : OUT  std_logic_vector(1 downto 0);
         ALU_Select : OUT  std_logic_vector(1 downto 0);
         EN_A_Ports : OUT  std_logic;
         EN_B_Ports : OUT  std_logic;
         BUS_Select : OUT  std_logic_vector(1 downto 0);
         Reset : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Re_Run_Programme : std_logic := '0';
   signal Programme_Start : std_logic := '0';
   signal Data_From_ROM : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ADDR_To_ROM : std_logic_vector(5 downto 0);
   signal Programme_Status : std_logic;
   signal EN_OUT : std_logic;
   signal MUX_FF_Select : std_logic_vector(1 downto 0);
   signal MUX1_Select : std_logic_vector(1 downto 0);
   signal MUX2_Select : std_logic_vector(1 downto 0);
   signal ALU_Select : std_logic_vector(1 downto 0);
   signal EN_A_Ports : std_logic;
   signal EN_B_Ports : std_logic;
   signal BUS_Select : std_logic_vector(1 downto 0);
   signal Reset : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: STATE_MACHINE PORT MAP (
          CLK => CLK,
          Re_Run_Programme => Re_Run_Programme,
          Programme_Start => Programme_Start,
          Data_From_ROM => Data_From_ROM,
          ADDR_To_ROM => ADDR_To_ROM,
          Programme_Status => Programme_Status,
          EN_OUT => EN_OUT,
          MUX_FF_Select => MUX_FF_Select,
          MUX1_Select => MUX1_Select,
          MUX2_Select => MUX2_Select,
          ALU_Select => ALU_Select,
          EN_A_Ports => EN_A_Ports,
          EN_B_Ports => EN_B_Ports,
          BUS_Select => BUS_Select,
          Reset => Reset
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 


		Programme_Start <= '1';
			wait for 100 ns;
			Data_From_ROM <= "01000000";
			wait for 100 ns;
			Data_From_ROM <= "10000000";
			wait for 100 ns;
			Data_From_ROM <= "00000000";
			wait for 100 ns;
			Data_From_ROM <= "10000001";
			wait for 100 ns;
			Data_From_ROM <= "00000001";
			wait for 100 ns;
			Data_From_ROM <= "11000000";

      wait;
   end process;

END;
