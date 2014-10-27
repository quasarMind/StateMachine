--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU_T.vhf
-- /___/   /\     Timestamp : 10/27/2014 10:44:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/ASSGN3_Final/SCHEMATIC2_ITER/ALU_T.vhf -w D:/ASSGN3_Final/SCHEMATIC2_ITER/ALU_T.sch
--Design Name: ALU_T
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

entity ALU_T is
   port ( Adder_CarryIn  : in    std_logic; 
          Input1         : in    std_logic_vector (7 downto 0); 
          Input2         : in    std_logic_vector (7 downto 0); 
          MUX_Select     : in    std_logic_vector (1 downto 0); 
          Adder_CarryOut : out   std_logic; 
          OutPut         : out   std_logic_vector (7 downto 0));
end ALU_T;

architecture BEHAVIORAL of ALU_T is
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


