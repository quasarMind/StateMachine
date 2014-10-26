--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : MC.vhf
-- /___/   /\     Timestamp : 10/26/2014 19:06:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/ASSGN3_Final/SCHEMATIC2_ITER/MC.vhf -w D:/ASSGN3_Final/SCHEMATIC2_ITER/MC.sch
--Design Name: MC
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_T_MUSER_MC is
   port ( Adder_CarryIn  : in    std_logic; 
          Input1         : in    std_logic_vector (7 downto 0); 
          Input2         : in    std_logic_vector (7 downto 0); 
          MUX_Select     : in    std_logic_vector (1 downto 0); 
          Adder_CarryOut : out   std_logic; 
          OutPut         : out   std_logic_vector (7 downto 0));
end ALU_T_MUSER_MC;

architecture BEHAVIORAL of ALU_T_MUSER_MC is
   signal XLXN_1         : std_logic_vector (7 downto 0);
   signal XLXN_2         : std_logic_vector (7 downto 0);
   signal XLXN_3         : std_logic_vector (7 downto 0);
   signal XLXN_4         : std_logic_vector (7 downto 0);
   component ALU
      port ( ALU_IN1  : in    std_logic_vector (7 downto 0); 
             ALU_IN2  : in    std_logic_vector (7 downto 0); 
             ALU_OUT1 : out   std_logic_vector (7 downto 0); 
             ALU_OUT2 : out   std_logic_vector (7 downto 0); 
             ALU_OUT3 : out   std_logic_vector (7 downto 0));
   end component;
   
   component MUX4to1
      port ( MUX_PIN1 : in    std_logic_vector (7 downto 0); 
             MUX_PIN2 : in    std_logic_vector (7 downto 0); 
             MUX_PIN3 : in    std_logic_vector (7 downto 0); 
             MUX_PIN4 : in    std_logic_vector (7 downto 0); 
             MUX_SEL  : in    std_logic_vector (1 downto 0); 
             MUX_OUT  : out   std_logic_vector (7 downto 0));
   end component;
   
   component Adder
      port ( Adder_carryin  : in    std_logic; 
             Adder_in1      : in    std_logic_vector (7 downto 0); 
             Adder_in2      : in    std_logic_vector (7 downto 0); 
             Adder_carryout : out   std_logic; 
             Adder_sum      : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : ALU
      port map (ALU_IN1(7 downto 0)=>Input1(7 downto 0),
                ALU_IN2(7 downto 0)=>Input2(7 downto 0),
                ALU_OUT1(7 downto 0)=>XLXN_2(7 downto 0),
                ALU_OUT2(7 downto 0)=>XLXN_3(7 downto 0),
                ALU_OUT3(7 downto 0)=>XLXN_4(7 downto 0));
   
   XLXI_2 : MUX4to1
      port map (MUX_PIN1(7 downto 0)=>XLXN_1(7 downto 0),
                MUX_PIN2(7 downto 0)=>XLXN_2(7 downto 0),
                MUX_PIN3(7 downto 0)=>XLXN_3(7 downto 0),
                MUX_PIN4(7 downto 0)=>XLXN_4(7 downto 0),
                MUX_SEL(1 downto 0)=>MUX_Select(1 downto 0),
                MUX_OUT(7 downto 0)=>OutPut(7 downto 0));
   
   XLXI_3 : Adder
      port map (Adder_carryin=>Adder_CarryIn,
                Adder_in1(7 downto 0)=>Input1(7 downto 0),
                Adder_in2(7 downto 0)=>Input2(7 downto 0),
                Adder_carryout=>Adder_CarryOut,
                Adder_sum(7 downto 0)=>XLXN_1(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MC is
   port ( ALU_T_CarryIn   : in    std_logic; 
          A_InPort        : in    std_logic_vector (7 downto 0); 
          B_InPort        : in    std_logic_vector (7 downto 0); 
          CLK             : in    std_logic; 
          FF_PRESET       : in    std_logic; 
          Programme_Start : in    std_logic; 
          ReRun           : in    std_logic; 
          ALU_TCarryOut   : out   std_logic; 
          ALU_T_OutPut    : out   std_logic_vector (7 downto 0); 
          OutPort_A_Out   : out   std_logic_vector (7 downto 0); 
          OutPort_B_Out   : out   std_logic_vector (7 downto 0));
end MC;

architecture BEHAVIORAL of MC is
   signal XLXN_3             : std_logic_vector (7 downto 0);
   signal XLXN_4             : std_logic_vector (7 downto 0);
   signal XLXN_7             : std_logic_vector (7 downto 0);
   signal XLXN_8             : std_logic_vector (7 downto 0);
   signal XLXN_9             : std_logic_vector (7 downto 0);
   signal XLXN_10            : std_logic_vector (7 downto 0);
   signal XLXN_21            : std_logic_vector (7 downto 0);
   signal XLXN_22            : std_logic_vector (7 downto 0);
   signal XLXN_23            : std_logic_vector (7 downto 0);
   signal XLXN_24            : std_logic_vector (7 downto 0);
   signal XLXN_28            : std_logic_vector (7 downto 0);
   signal XLXN_87            : std_logic;
   signal XLXN_89            : std_logic;
   signal XLXN_94            : std_logic;
   signal XLXN_95            : std_logic_vector (1 downto 0);
   signal XLXN_96            : std_logic_vector (1 downto 0);
   signal XLXN_97            : std_logic_vector (1 downto 0);
   signal XLXN_98            : std_logic_vector (1 downto 0);
   signal XLXN_102           : std_logic_vector (7 downto 0);
   signal XLXN_104           : std_logic;
   signal XLXN_105           : std_logic_vector (1 downto 0);
   signal XLXN_117           : std_logic_vector (5 downto 0);
   signal ALU_T_OutPut_DUMMY : std_logic_vector (7 downto 0);
   component ALU_T_MUSER_MC
      port ( MUX_Select     : in    std_logic_vector (1 downto 0); 
             Adder_CarryIn  : in    std_logic; 
             Input1         : in    std_logic_vector (7 downto 0); 
             Input2         : in    std_logic_vector (7 downto 0); 
             Adder_CarryOut : out   std_logic; 
             OutPut         : out   std_logic_vector (7 downto 0));
   end component;
   
   component MUX4to1
      port ( MUX_PIN1 : in    std_logic_vector (7 downto 0); 
             MUX_PIN2 : in    std_logic_vector (7 downto 0); 
             MUX_PIN3 : in    std_logic_vector (7 downto 0); 
             MUX_PIN4 : in    std_logic_vector (7 downto 0); 
             MUX_SEL  : in    std_logic_vector (1 downto 0); 
             MUX_OUT  : out   std_logic_vector (7 downto 0));
   end component;
   
   component FLIPFLOP
      port ( FLIPFLOP_RESET  : in    std_logic; 
             FLIPFLOP_PRESET : in    std_logic; 
             CLK             : in    std_logic; 
             FLIPFLOP_IN     : in    std_logic_vector (7 downto 0); 
             FLIPFLOP_OUT    : out   std_logic_vector (7 downto 0));
   end component;
   
   component MUX1to4
      port ( MUX_In   : in    std_logic_vector (7 downto 0); 
             MUX_SEL  : in    std_logic_vector (1 downto 0); 
             MUX_OUT1 : out   std_logic_vector (7 downto 0); 
             MUX_OUT2 : out   std_logic_vector (7 downto 0); 
             MUX_OUT3 : out   std_logic_vector (7 downto 0); 
             MUX_OUT4 : out   std_logic_vector (7 downto 0));
   end component;
   
   component InputPort2X8bit
      port ( ENABLE_PORT_A : in    std_logic; 
             ENABLE_PORT_B : in    std_logic; 
             CLK           : in    std_logic; 
             RESET         : in    std_logic; 
             A_PORT        : in    std_logic_vector (7 downto 0); 
             B_PORT        : in    std_logic_vector (7 downto 0); 
             C_BUS_IN      : in    std_logic_vector (7 downto 0); 
             OUTPUT_SELECT : in    std_logic_vector (1 downto 0); 
             C_BUS_OUT     : out   std_logic_vector (7 downto 0));
   end component;
   
   component OutPort2X8bit
      port ( ENABLE_A_OUT  : in    std_logic; 
             ENABLE_B_OUT  : in    std_logic; 
             RESET_OUTPORT : in    std_logic; 
             CLK           : in    std_logic; 
             A_IN          : in    std_logic_vector (7 downto 0); 
             B_IN          : in    std_logic_vector (7 downto 0); 
             A_OUT         : out   std_logic_vector (7 downto 0); 
             B_OUT         : out   std_logic_vector (7 downto 0));
   end component;
   
   component ROMMSTEIN
      port ( CLK        : in    std_logic; 
             ENABLE_ROM : in    std_logic; 
             ROM_ADDR   : in    std_logic_vector (5 downto 0); 
             ROM_DATA   : out   std_logic_vector (7 downto 0));
   end component;
   
   component STATE_MACHINE
      port ( CLK              : in    std_logic; 
             Re_Run_Programme : in    std_logic; 
             Programme_Start  : in    std_logic; 
             Data_From_ROM    : in    std_logic_vector (7 downto 0); 
             EN_OUT           : out   std_logic; 
             EN_A_Ports       : out   std_logic; 
             EN_B_Ports       : out   std_logic; 
             Reset            : out   std_logic; 
             ADDR_To_ROM      : out   std_logic_vector (5 downto 0); 
             MUX_FF_Select    : out   std_logic_vector (1 downto 0); 
             MUX1_Select      : out   std_logic_vector (1 downto 0); 
             MUX2_Select      : out   std_logic_vector (1 downto 0); 
             ALU_Select       : out   std_logic_vector (1 downto 0); 
             BUS_Select       : out   std_logic_vector (1 downto 0); 
             Programme_Status : out   std_logic);
   end component;
   
begin
   ALU_T_OutPut(7 downto 0) <= ALU_T_OutPut_DUMMY(7 downto 0);
   XLXI_1 : ALU_T_MUSER_MC
      port map (Adder_CarryIn=>ALU_T_CarryIn,
                Input1(7 downto 0)=>XLXN_3(7 downto 0),
                Input2(7 downto 0)=>XLXN_4(7 downto 0),
                MUX_Select(1 downto 0)=>XLXN_98(1 downto 0),
                Adder_CarryOut=>ALU_TCarryOut,
                OutPut(7 downto 0)=>ALU_T_OutPut_DUMMY(7 downto 0));
   
   XLXI_2 : MUX4to1
      port map (MUX_PIN1(7 downto 0)=>XLXN_7(7 downto 0),
                MUX_PIN2(7 downto 0)=>XLXN_8(7 downto 0),
                MUX_PIN3(7 downto 0)=>XLXN_9(7 downto 0),
                MUX_PIN4(7 downto 0)=>XLXN_10(7 downto 0),
                MUX_SEL(1 downto 0)=>XLXN_96(1 downto 0),
                MUX_OUT(7 downto 0)=>XLXN_3(7 downto 0));
   
   XLXI_3 : MUX4to1
      port map (MUX_PIN1(7 downto 0)=>XLXN_7(7 downto 0),
                MUX_PIN2(7 downto 0)=>XLXN_8(7 downto 0),
                MUX_PIN3(7 downto 0)=>XLXN_9(7 downto 0),
                MUX_PIN4(7 downto 0)=>XLXN_10(7 downto 0),
                MUX_SEL(1 downto 0)=>XLXN_97(1 downto 0),
                MUX_OUT(7 downto 0)=>XLXN_4(7 downto 0));
   
   XLXI_4 : FLIPFLOP
      port map (CLK=>CLK,
                FLIPFLOP_IN(7 downto 0)=>XLXN_21(7 downto 0),
                FLIPFLOP_PRESET=>FF_PRESET,
                FLIPFLOP_RESET=>XLXN_94,
                FLIPFLOP_OUT(7 downto 0)=>XLXN_7(7 downto 0));
   
   XLXI_5 : FLIPFLOP
      port map (CLK=>CLK,
                FLIPFLOP_IN(7 downto 0)=>XLXN_22(7 downto 0),
                FLIPFLOP_PRESET=>FF_PRESET,
                FLIPFLOP_RESET=>XLXN_94,
                FLIPFLOP_OUT(7 downto 0)=>XLXN_8(7 downto 0));
   
   XLXI_6 : FLIPFLOP
      port map (CLK=>CLK,
                FLIPFLOP_IN(7 downto 0)=>XLXN_23(7 downto 0),
                FLIPFLOP_PRESET=>FF_PRESET,
                FLIPFLOP_RESET=>XLXN_94,
                FLIPFLOP_OUT(7 downto 0)=>XLXN_9(7 downto 0));
   
   XLXI_7 : FLIPFLOP
      port map (CLK=>CLK,
                FLIPFLOP_IN(7 downto 0)=>XLXN_24(7 downto 0),
                FLIPFLOP_PRESET=>FF_PRESET,
                FLIPFLOP_RESET=>XLXN_94,
                FLIPFLOP_OUT(7 downto 0)=>XLXN_10(7 downto 0));
   
   XLXI_8 : MUX1to4
      port map (MUX_In(7 downto 0)=>XLXN_28(7 downto 0),
                MUX_SEL(1 downto 0)=>XLXN_95(1 downto 0),
                MUX_OUT1(7 downto 0)=>XLXN_21(7 downto 0),
                MUX_OUT2(7 downto 0)=>XLXN_22(7 downto 0),
                MUX_OUT3(7 downto 0)=>XLXN_23(7 downto 0),
                MUX_OUT4(7 downto 0)=>XLXN_24(7 downto 0));
   
   XLXI_9 : InputPort2X8bit
      port map (A_PORT(7 downto 0)=>A_InPort(7 downto 0),
                B_PORT(7 downto 0)=>B_InPort(7 downto 0),
                CLK=>CLK,
                C_BUS_IN(7 downto 0)=>ALU_T_OutPut_DUMMY(7 downto 0),
                ENABLE_PORT_A=>XLXN_87,
                ENABLE_PORT_B=>XLXN_89,
                OUTPUT_SELECT(1 downto 0)=>XLXN_105(1 downto 0),
                RESET=>XLXN_94,
                C_BUS_OUT(7 downto 0)=>XLXN_28(7 downto 0));
   
   XLXI_10 : OutPort2X8bit
      port map (A_IN(7 downto 0)=>A_InPort(7 downto 0),
                B_IN(7 downto 0)=>B_InPort(7 downto 0),
                CLK=>CLK,
                ENABLE_A_OUT=>XLXN_87,
                ENABLE_B_OUT=>XLXN_89,
                RESET_OUTPORT=>XLXN_94,
                A_OUT(7 downto 0)=>OutPort_A_Out(7 downto 0),
                B_OUT(7 downto 0)=>OutPort_B_Out(7 downto 0));
   
   XLXI_31 : ROMMSTEIN
      port map (CLK=>CLK,
                ENABLE_ROM=>XLXN_104,
                ROM_ADDR(5 downto 0)=>XLXN_117(5 downto 0),
                ROM_DATA(7 downto 0)=>XLXN_102(7 downto 0));
   
   XLXI_33 : STATE_MACHINE
      port map (CLK=>CLK,
                Data_From_ROM(7 downto 0)=>XLXN_102(7 downto 0),
                Programme_Start=>Programme_Start,
                Re_Run_Programme=>ReRun,
                ADDR_To_ROM(5 downto 0)=>XLXN_117(5 downto 0),
                ALU_Select(1 downto 0)=>XLXN_98(1 downto 0),
                BUS_Select(1 downto 0)=>XLXN_105(1 downto 0),
                EN_A_Ports=>XLXN_87,
                EN_B_Ports=>XLXN_89,
                EN_OUT=>XLXN_104,
                MUX_FF_Select(1 downto 0)=>XLXN_95(1 downto 0),
                MUX1_Select(1 downto 0)=>XLXN_96(1 downto 0),
                MUX2_Select(1 downto 0)=>XLXN_97(1 downto 0),
                Programme_Status=>open,
                Reset=>XLXN_94);
   
end BEHAVIORAL;


