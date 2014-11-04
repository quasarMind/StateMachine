-- Vhdl test bench created from schematic D:\ASSGN3_Final\SCHEMATIC2_ITER\MC.sch - Wed Oct 29 17:52:30 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY MC_MC_sch_tb IS
END MC_MC_sch_tb;
ARCHITECTURE behavioral OF MC_MC_sch_tb IS 

   COMPONENT MC
   PORT( ALU_T_CarryIn	:	IN	STD_LOGIC; 
          ALU_IN1	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          ALU_IN2	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          ALU_TCarryOut	:	OUT	STD_LOGIC; 
          ALU_T_OutPut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC; 
          FF_PRESET	:	IN	STD_LOGIC; 
          OutPort_A_Out	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          OutPort_B_Out	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Dbg_En_A_PORT_A	:	OUT	STD_LOGIC; 
          Dbg_En_A_PORT_B	:	OUT	STD_LOGIC; 
          Programme_Start	:	IN	STD_LOGIC; 
          Dbg_ROM_DATA	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          ReRun	:	IN	STD_LOGIC; 
          A_InPort	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          B_InPort	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL ALU_T_CarryIn	:	STD_LOGIC;
   SIGNAL ALU_IN1	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL ALU_IN2	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL ALU_TCarryOut	:	STD_LOGIC;
   SIGNAL ALU_T_OutPut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL FF_PRESET	:	STD_LOGIC;
   SIGNAL OutPort_A_Out	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL OutPort_B_Out	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Dbg_En_A_PORT_A	:	STD_LOGIC;
   SIGNAL Dbg_En_A_PORT_B	:	STD_LOGIC;
   SIGNAL Programme_Start	:	STD_LOGIC;
   SIGNAL Dbg_ROM_DATA	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL ReRun	:	STD_LOGIC;
   SIGNAL A_InPort	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL B_InPort	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
 -- Clock period definitions
   constant CLK_period : time := 10 ns;
BEGIN

   UUT: MC PORT MAP(
		ALU_T_CarryIn => ALU_T_CarryIn, 
		ALU_IN1 => ALU_IN1, 
		ALU_IN2 => ALU_IN2, 
		ALU_TCarryOut => ALU_TCarryOut, 
		ALU_T_OutPut => ALU_T_OutPut, 
		CLK => CLK, 
		FF_PRESET => FF_PRESET, 
		OutPort_A_Out => OutPort_A_Out, 
		OutPort_B_Out => OutPort_B_Out, 
		Dbg_En_A_PORT_A => Dbg_En_A_PORT_A, 
		Dbg_En_A_PORT_B => Dbg_En_A_PORT_B, 
		Programme_Start => Programme_Start, 
		Dbg_ROM_DATA => Dbg_ROM_DATA, 
		ReRun => ReRun, 
		A_InPort => A_InPort, 
		B_InPort => B_InPort
   );
	-- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
	
	FF_PRESET <= '0';
	ALU_T_CarryIn <= '0';
	A_InPort <= "00000001";
	B_InPort <= "00000010";
	ReRun <= '0';
	
	wait for 50 ns;
	Programme_Start <= '1';
	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
