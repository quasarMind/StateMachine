--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MC_timesim.vhd
-- /___/   /\     Timestamp: Sun Oct 26 08:46:53 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf MC.pcf -rpw 100 -tpw 0 -ar Structure -tm MC -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim MC.ncd MC_timesim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: MC.ncd
-- Output file	: D:\ASSGN3_Final\SCHEMATIC2_ITER\netgen\par\MC_timesim.vhd
-- # of Entities	: 1
-- Design Name	: MC
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity MC is
  port (
    CLK : in STD_LOGIC := 'X'; 
    ReRun : in STD_LOGIC := 'X'; 
    FF_PRESET : in STD_LOGIC := 'X'; 
    ALU_TCarryOut : out STD_LOGIC; 
    Programme_Start : in STD_LOGIC := 'X'; 
    Programme_Status : out STD_LOGIC; 
    ALU_T_CarryIn : in STD_LOGIC := 'X'; 
    ALU_T_OutPut : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    OutPort_A_Out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    OutPort_B_Out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    B_InPort : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    A_InPort : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end MC;

architecture Structure of MC is
  signal ALU_T_OutPut_1_O : STD_LOGIC; 
  signal ALU_T_OutPut_2_O : STD_LOGIC; 
  signal ALU_T_OutPut_0_O : STD_LOGIC; 
  signal ALU_TCarryOut_O : STD_LOGIC; 
  signal OutPort_A_Out_0_O : STD_LOGIC; 
  signal ALU_T_OutPut_7_O : STD_LOGIC; 
  signal ALU_T_CarryIn_INBUF : STD_LOGIC; 
  signal ALU_T_OutPut_4_O : STD_LOGIC; 
  signal ALU_T_OutPut_6_O : STD_LOGIC; 
  signal OutPort_A_Out_2_O : STD_LOGIC; 
  signal OutPort_A_Out_3_O : STD_LOGIC; 
  signal OutPort_A_Out_4_O : STD_LOGIC; 
  signal OutPort_A_Out_5_O : STD_LOGIC; 
  signal ALU_T_OutPut_3_O : STD_LOGIC; 
  signal ALU_T_OutPut_5_O : STD_LOGIC; 
  signal OutPort_A_Out_1_O : STD_LOGIC; 
  signal OutPort_B_Out_6_O : STD_LOGIC; 
  signal OutPort_B_Out_7_O : STD_LOGIC; 
  signal OutPort_B_Out_0_O : STD_LOGIC; 
  signal OutPort_B_Out_5_O : STD_LOGIC; 
  signal OutPort_B_Out_4_O : STD_LOGIC; 
  signal OutPort_B_Out_1_O : STD_LOGIC; 
  signal OutPort_B_Out_3_O : STD_LOGIC; 
  signal OutPort_B_Out_2_O : STD_LOGIC; 
  signal OutPort_A_Out_7_O : STD_LOGIC; 
  signal OutPort_A_Out_6_O : STD_LOGIC; 
  signal ALU_T_OutPut_1_OUTPUT_OFF_O1INV_103 : STD_LOGIC; 
  signal ALU_T_OutPut_2_OUTPUT_OFF_O1INV_111 : STD_LOGIC; 
  signal ALU_TCarryOut_OUTPUT_OFF_O1INV_87 : STD_LOGIC; 
  signal OutPort_A_Out_0_OUTPUT_OFF_O1INV_165 : STD_LOGIC; 
  signal ALU_T_OutPut_7_OUTPUT_OFF_O1INV_151 : STD_LOGIC; 
  signal ALU_T_OutPut_4_OUTPUT_OFF_O1INV_127 : STD_LOGIC; 
  signal ALU_T_OutPut_6_OUTPUT_OFF_O1INV_143 : STD_LOGIC; 
  signal OutPort_A_Out_2_OUTPUT_OFF_O1INV_181 : STD_LOGIC; 
  signal OutPort_A_Out_3_OUTPUT_OFF_O1INV_189 : STD_LOGIC; 
  signal OutPort_A_Out_4_OUTPUT_OFF_O1INV_197 : STD_LOGIC; 
  signal OutPort_A_Out_5_OUTPUT_OFF_O1INV_205 : STD_LOGIC; 
  signal ALU_T_OutPut_3_OUTPUT_OFF_O1INV_119 : STD_LOGIC; 
  signal ALU_T_OutPut_5_OUTPUT_OFF_O1INV_135 : STD_LOGIC; 
  signal OutPort_A_Out_1_OUTPUT_OFF_O1INV_173 : STD_LOGIC; 
  signal OutPort_B_Out_6_OUTPUT_OFF_O1INV_277 : STD_LOGIC; 
  signal OutPort_B_Out_7_OUTPUT_OFF_O1INV_285 : STD_LOGIC; 
  signal OutPort_B_Out_0_OUTPUT_OFF_O1INV_229 : STD_LOGIC; 
  signal OutPort_B_Out_5_OUTPUT_OFF_O1INV_269 : STD_LOGIC; 
  signal OutPort_B_Out_4_OUTPUT_OFF_O1INV_261 : STD_LOGIC; 
  signal OutPort_B_Out_1_OUTPUT_OFF_O1INV_237 : STD_LOGIC; 
  signal OutPort_B_Out_3_OUTPUT_OFF_O1INV_253 : STD_LOGIC; 
  signal OutPort_B_Out_2_OUTPUT_OFF_O1INV_245 : STD_LOGIC; 
  signal OutPort_A_Out_7_OUTPUT_OFF_O1INV_221 : STD_LOGIC; 
  signal OutPort_A_Out_6_OUTPUT_OFF_O1INV_213 : STD_LOGIC; 
begin
  ALU_T_OutPut_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD56"
    )
    port map (
      I => ALU_T_OutPut_1_O,
      O => ALU_T_OutPut(1)
    );
  ALU_T_OutPut_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => ALU_T_OutPut_2_O,
      O => ALU_T_OutPut(2)
    );
  ALU_T_OutPut_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => ALU_T_OutPut_0_O,
      O => ALU_T_OutPut(0)
    );
  ALU_TCarryOut_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => ALU_TCarryOut_O,
      O => ALU_TCarryOut
    );
  OutPort_A_Out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => OutPort_A_Out_0_O,
      O => OutPort_A_Out(0)
    );
  ALU_T_OutPut_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => ALU_T_OutPut_7_O,
      O => ALU_T_OutPut(7)
    );
  ALU_T_CarryIn_IBUF : X_BUF
    generic map(
      LOC => "IPAD58",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_CarryIn,
      O => ALU_T_CarryIn_INBUF
    );
  ALU_T_OutPut_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => ALU_T_OutPut_4_O,
      O => ALU_T_OutPut(4)
    );
  ALU_T_OutPut_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => ALU_T_OutPut_6_O,
      O => ALU_T_OutPut(6)
    );
  OutPort_A_Out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => OutPort_A_Out_2_O,
      O => OutPort_A_Out(2)
    );
  OutPort_A_Out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD41"
    )
    port map (
      I => OutPort_A_Out_3_O,
      O => OutPort_A_Out(3)
    );
  OutPort_A_Out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => OutPort_A_Out_4_O,
      O => OutPort_A_Out(4)
    );
  OutPort_A_Out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => OutPort_A_Out_5_O,
      O => OutPort_A_Out(5)
    );
  ALU_T_OutPut_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => ALU_T_OutPut_3_O,
      O => ALU_T_OutPut(3)
    );
  ALU_T_OutPut_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD50"
    )
    port map (
      I => ALU_T_OutPut_5_O,
      O => ALU_T_OutPut(5)
    );
  OutPort_A_Out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => OutPort_A_Out_1_O,
      O => OutPort_A_Out(1)
    );
  OutPort_B_Out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => OutPort_B_Out_6_O,
      O => OutPort_B_Out(6)
    );
  OutPort_B_Out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => OutPort_B_Out_7_O,
      O => OutPort_B_Out(7)
    );
  OutPort_B_Out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => OutPort_B_Out_0_O,
      O => OutPort_B_Out(0)
    );
  OutPort_B_Out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => OutPort_B_Out_5_O,
      O => OutPort_B_Out(5)
    );
  OutPort_B_Out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => OutPort_B_Out_4_O,
      O => OutPort_B_Out(4)
    );
  OutPort_B_Out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => OutPort_B_Out_1_O,
      O => OutPort_B_Out(1)
    );
  OutPort_B_Out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => OutPort_B_Out_3_O,
      O => OutPort_B_Out(3)
    );
  OutPort_B_Out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => OutPort_B_Out_2_O,
      O => OutPort_B_Out(2)
    );
  OutPort_A_Out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => OutPort_A_Out_7_O,
      O => OutPort_A_Out(7)
    );
  OutPort_A_Out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => OutPort_A_Out_6_O,
      O => OutPort_A_Out(6)
    );
  ALU_T_OutPut_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_OutPut_1_OUTPUT_OFF_O1INV_103,
      O => ALU_T_OutPut_1_O
    );
  ALU_T_OutPut_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_1_OUTPUT_OFF_O1INV_103
    );
  ALU_T_OutPut_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_OutPut_2_OUTPUT_OFF_O1INV_111,
      O => ALU_T_OutPut_2_O
    );
  ALU_T_OutPut_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_2_OUTPUT_OFF_O1INV_111
    );
  ALU_T_OutPut_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_CarryIn_INBUF,
      O => ALU_T_OutPut_0_O
    );
  ALU_TCarryOut_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_TCarryOut_OUTPUT_OFF_O1INV_87,
      O => ALU_TCarryOut_O
    );
  ALU_TCarryOut_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_TCarryOut_OUTPUT_OFF_O1INV_87
    );
  OutPort_A_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_0_OUTPUT_OFF_O1INV_165,
      O => OutPort_A_Out_0_O
    );
  OutPort_A_Out_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_0_OUTPUT_OFF_O1INV_165
    );
  ALU_T_OutPut_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_OutPut_7_OUTPUT_OFF_O1INV_151,
      O => ALU_T_OutPut_7_O
    );
  ALU_T_OutPut_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_7_OUTPUT_OFF_O1INV_151
    );
  ALU_T_OutPut_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_OutPut_4_OUTPUT_OFF_O1INV_127,
      O => ALU_T_OutPut_4_O
    );
  ALU_T_OutPut_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_4_OUTPUT_OFF_O1INV_127
    );
  ALU_T_OutPut_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_OutPut_6_OUTPUT_OFF_O1INV_143,
      O => ALU_T_OutPut_6_O
    );
  ALU_T_OutPut_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_6_OUTPUT_OFF_O1INV_143
    );
  OutPort_A_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_2_OUTPUT_OFF_O1INV_181,
      O => OutPort_A_Out_2_O
    );
  OutPort_A_Out_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_2_OUTPUT_OFF_O1INV_181
    );
  OutPort_A_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_3_OUTPUT_OFF_O1INV_189,
      O => OutPort_A_Out_3_O
    );
  OutPort_A_Out_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_3_OUTPUT_OFF_O1INV_189
    );
  OutPort_A_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_4_OUTPUT_OFF_O1INV_197,
      O => OutPort_A_Out_4_O
    );
  OutPort_A_Out_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_4_OUTPUT_OFF_O1INV_197
    );
  OutPort_A_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_5_OUTPUT_OFF_O1INV_205,
      O => OutPort_A_Out_5_O
    );
  OutPort_A_Out_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_5_OUTPUT_OFF_O1INV_205
    );
  ALU_T_OutPut_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_OutPut_3_OUTPUT_OFF_O1INV_119,
      O => ALU_T_OutPut_3_O
    );
  ALU_T_OutPut_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_3_OUTPUT_OFF_O1INV_119
    );
  ALU_T_OutPut_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 694 ps
    )
    port map (
      I => ALU_T_OutPut_5_OUTPUT_OFF_O1INV_135,
      O => ALU_T_OutPut_5_O
    );
  ALU_T_OutPut_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_5_OUTPUT_OFF_O1INV_135
    );
  OutPort_A_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_1_OUTPUT_OFF_O1INV_173,
      O => OutPort_A_Out_1_O
    );
  OutPort_A_Out_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_1_OUTPUT_OFF_O1INV_173
    );
  OutPort_B_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_6_OUTPUT_OFF_O1INV_277,
      O => OutPort_B_Out_6_O
    );
  OutPort_B_Out_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_6_OUTPUT_OFF_O1INV_277
    );
  OutPort_B_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_7_OUTPUT_OFF_O1INV_285,
      O => OutPort_B_Out_7_O
    );
  OutPort_B_Out_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_7_OUTPUT_OFF_O1INV_285
    );
  OutPort_B_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_0_OUTPUT_OFF_O1INV_229,
      O => OutPort_B_Out_0_O
    );
  OutPort_B_Out_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_0_OUTPUT_OFF_O1INV_229
    );
  OutPort_B_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_5_OUTPUT_OFF_O1INV_269,
      O => OutPort_B_Out_5_O
    );
  OutPort_B_Out_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_5_OUTPUT_OFF_O1INV_269
    );
  OutPort_B_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_4_OUTPUT_OFF_O1INV_261,
      O => OutPort_B_Out_4_O
    );
  OutPort_B_Out_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_4_OUTPUT_OFF_O1INV_261
    );
  OutPort_B_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_1_OUTPUT_OFF_O1INV_237,
      O => OutPort_B_Out_1_O
    );
  OutPort_B_Out_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_1_OUTPUT_OFF_O1INV_237
    );
  OutPort_B_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_3_OUTPUT_OFF_O1INV_253,
      O => OutPort_B_Out_3_O
    );
  OutPort_B_Out_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_3_OUTPUT_OFF_O1INV_253
    );
  OutPort_B_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_B_Out_2_OUTPUT_OFF_O1INV_245,
      O => OutPort_B_Out_2_O
    );
  OutPort_B_Out_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_2_OUTPUT_OFF_O1INV_245
    );
  OutPort_A_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_7_OUTPUT_OFF_O1INV_221,
      O => OutPort_A_Out_7_O
    );
  OutPort_A_Out_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_7_OUTPUT_OFF_O1INV_221
    );
  OutPort_A_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 694 ps
    )
    port map (
      I => OutPort_A_Out_6_OUTPUT_OFF_O1INV_213,
      O => OutPort_A_Out_6_O
    );
  OutPort_A_Out_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 694 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_6_OUTPUT_OFF_O1INV_213
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

