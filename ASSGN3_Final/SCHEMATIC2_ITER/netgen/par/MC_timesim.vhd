--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MC_timesim.vhd
-- /___/   /\     Timestamp: Wed Oct 29 17:54:38 2014
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
    Dbg_En_A_PORT_A : out STD_LOGIC; 
    Dbg_En_A_PORT_B : out STD_LOGIC; 
    ReRun : in STD_LOGIC := 'X'; 
    FF_PRESET : in STD_LOGIC := 'X'; 
    ALU_TCarryOut : out STD_LOGIC; 
    Programme_Start : in STD_LOGIC := 'X'; 
    ALU_T_CarryIn : in STD_LOGIC := 'X'; 
    ALU_T_OutPut : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    OutPort_A_Out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    OutPort_B_Out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ALU_IN1 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ALU_IN2 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Dbg_ROM_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    B_InPort : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    A_InPort : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end MC;

architecture Structure of MC is
  signal XLXI_31_ROM_DATA_0_Q : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_Q : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_Q : STD_LOGIC; 
  signal Programme_Start_IBUF_314 : STD_LOGIC; 
  signal ReRun_IBUF_315 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal XLXI_33_EN_OUT_319 : STD_LOGIC; 
  signal XLXI_31_Mrom_RDATA1011_SW0_O : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal XLXI_33_Counter_not0001_0 : STD_LOGIC; 
  signal XLXI_33_N2 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_not0001_0 : STD_LOGIC; 
  signal ALU_T_OutPut_1_O : STD_LOGIC; 
  signal ALU_TCarryOut_O : STD_LOGIC; 
  signal ALU_T_OutPut_0_O : STD_LOGIC; 
  signal OutPort_B_Out_1_O : STD_LOGIC; 
  signal OutPort_B_Out_3_O : STD_LOGIC; 
  signal OutPort_B_Out_4_O : STD_LOGIC; 
  signal OutPort_A_Out_4_O : STD_LOGIC; 
  signal Dbg_En_A_PORT_B_O : STD_LOGIC; 
  signal OutPort_B_Out_7_O : STD_LOGIC; 
  signal Dbg_En_A_PORT_A_O : STD_LOGIC; 
  signal OutPort_A_Out_3_O : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal OutPort_B_Out_0_O : STD_LOGIC; 
  signal OutPort_A_Out_6_O : STD_LOGIC; 
  signal OutPort_B_Out_2_O : STD_LOGIC; 
  signal OutPort_B_Out_6_O : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_DXMUX_843 : STD_LOGIC; 
  signal XLXI_31_RDATA_6_Q : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_CLKINV_827 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_CEINV_826 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_DXMUX_810 : STD_LOGIC; 
  signal XLXI_31_RDATA_7_Q : STD_LOGIC; 
  signal XLXI_31_Mrom_RDATA1011_SW0_O_pack_1 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_CLKINV_794 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_CEINV_793 : STD_LOGIC; 
  signal OutPort_A_Out_5_O : STD_LOGIC; 
  signal OutPort_A_Out_7_O : STD_LOGIC; 
  signal OutPort_B_Out_5_O : STD_LOGIC; 
  signal ReRun_INBUF : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_0_DYMUX_864 : STD_LOGIC; 
  signal XLXI_31_RDATA_0_Q : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_0_CLKINV_856 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_0_CEINV_855 : STD_LOGIC; 
  signal XLXI_33_Counter_3_DXMUX_902 : STD_LOGIC; 
  signal XLXI_33_Counter_3_DYMUX_890 : STD_LOGIC; 
  signal XLXI_33_Counter_3_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_3_CEINV_880 : STD_LOGIC; 
  signal XLXI_33_Counter_not0001 : STD_LOGIC; 
  signal XLXI_33_Next_State_1_DXMUX_991 : STD_LOGIC; 
  signal XLXI_33_Next_State_1_DYMUX_979 : STD_LOGIC; 
  signal XLXI_33_Next_State_1_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_State_1_DYMUX_1068 : STD_LOGIC; 
  signal XLXI_33_State_1_SRINV_1066 : STD_LOGIC; 
  signal XLXI_33_State_1_CLKINV_1065 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_DXMUX_1202 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_DYMUX_1196 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_CEINV_1193 : STD_LOGIC; 
  signal XLXI_33_State_3_DXMUX_1100 : STD_LOGIC; 
  signal XLXI_33_State_3_DYMUX_1094 : STD_LOGIC; 
  signal XLXI_33_State_3_SRINV_1092 : STD_LOGIC; 
  signal XLXI_33_State_3_CLKINV_1091 : STD_LOGIC; 
  signal XLXI_33_Counter_0_DXMUX_1162 : STD_LOGIC; 
  signal XLXI_33_Counter_0_DYMUX_1156 : STD_LOGIC; 
  signal XLXI_33_Counter_0_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_0_CEINV_1145 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_DXMUX_1182 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_DYMUX_1176 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_CEINV_1173 : STD_LOGIC; 
  signal XLXI_33_State_0_DYMUX_1056 : STD_LOGIC; 
  signal XLXI_33_State_0_SRINV_1054 : STD_LOGIC; 
  signal XLXI_33_State_0_CLKINV_1053 : STD_LOGIC; 
  signal XLXI_33_Next_State_3_DXMUX_1025 : STD_LOGIC; 
  signal XLXI_33_Next_State_3_DYMUX_1013 : STD_LOGIC; 
  signal XLXI_33_Next_State_3_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_DXMUX_1044 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_DYMUX_1038 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_CEINV_1035 : STD_LOGIC; 
  signal XLXI_33_Counter_5_DYMUX_923 : STD_LOGIC; 
  signal XLXI_33_Counter_5_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_5_CEINV_914 : STD_LOGIC; 
  signal XLXI_33_Counter_4_DXMUX_1133 : STD_LOGIC; 
  signal XLXI_33_N2_pack_2 : STD_LOGIC; 
  signal XLXI_33_Counter_4_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_4_CEINV_1115 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_not0001 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_DYMUX_947 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_mux0000 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_EN_OUT_CEINV_938 : STD_LOGIC; 
  signal Programme_Start_INBUF : STD_LOGIC; 
  signal OutPort_A_Out_1_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_6_O : STD_LOGIC; 
  signal ALU_IN1_7_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_7_O : STD_LOGIC; 
  signal OutPort_A_Out_0_O : STD_LOGIC; 
  signal ALU_IN2_6_O : STD_LOGIC; 
  signal ALU_IN2_7_O : STD_LOGIC; 
  signal ALU_IN2_4_O : STD_LOGIC; 
  signal OutPort_A_Out_2_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_5_O : STD_LOGIC; 
  signal ALU_IN2_5_O : STD_LOGIC; 
  signal ALU_T_OutPut_6_O : STD_LOGIC; 
  signal ALU_IN1_1_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_0_O : STD_LOGIC; 
  signal ALU_T_OutPut_7_O : STD_LOGIC; 
  signal ALU_T_OutPut_2_O : STD_LOGIC; 
  signal ALU_IN1_3_O : STD_LOGIC; 
  signal ALU_T_CarryIn_INBUF : STD_LOGIC; 
  signal ALU_T_OutPut_4_O : STD_LOGIC; 
  signal ALU_T_OutPut_3_O : STD_LOGIC; 
  signal ALU_IN1_2_O : STD_LOGIC; 
  signal ALU_T_OutPut_5_O : STD_LOGIC; 
  signal ALU_IN1_0_O : STD_LOGIC; 
  signal ALU_IN2_2_O : STD_LOGIC; 
  signal ALU_IN2_3_O : STD_LOGIC; 
  signal ALU_IN1_6_O : STD_LOGIC; 
  signal ALU_IN1_5_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_2_O : STD_LOGIC; 
  signal ALU_IN2_1_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_1_O : STD_LOGIC; 
  signal ALU_IN2_0_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_3_O : STD_LOGIC; 
  signal ALU_IN1_4_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_4_O : STD_LOGIC; 
  signal ALU_T_OutPut_1_OUTPUT_OFF_O1INV_368 : STD_LOGIC; 
  signal ALU_TCarryOut_OUTPUT_OFF_O1INV_352 : STD_LOGIC; 
  signal OutPort_B_Out_1_OUTPUT_OFF_O1INV_722 : STD_LOGIC; 
  signal OutPort_B_Out_3_OUTPUT_OFF_O1INV_738 : STD_LOGIC; 
  signal OutPort_B_Out_4_OUTPUT_OFF_O1INV_752 : STD_LOGIC; 
  signal OutPort_A_Out_4_OUTPUT_OFF_O1INV_666 : STD_LOGIC; 
  signal Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV_706 : STD_LOGIC; 
  signal OutPort_B_Out_7_OUTPUT_OFF_O1INV_776 : STD_LOGIC; 
  signal Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV_690 : STD_LOGIC; 
  signal OutPort_A_Out_3_OUTPUT_OFF_O1INV_652 : STD_LOGIC; 
  signal OutPort_B_Out_0_OUTPUT_OFF_O1INV_714 : STD_LOGIC; 
  signal OutPort_A_Out_6_OUTPUT_OFF_O1INV_682 : STD_LOGIC; 
  signal OutPort_B_Out_2_OUTPUT_OFF_O1INV_730 : STD_LOGIC; 
  signal OutPort_B_Out_6_OUTPUT_OFF_O1INV_768 : STD_LOGIC; 
  signal OutPort_A_Out_5_OUTPUT_OFF_O1INV_674 : STD_LOGIC; 
  signal OutPort_A_Out_7_OUTPUT_OFF_O1INV_698 : STD_LOGIC; 
  signal OutPort_B_Out_5_OUTPUT_OFF_O1INV_760 : STD_LOGIC; 
  signal OutPort_A_Out_1_OUTPUT_OFF_O1INV_628 : STD_LOGIC; 
  signal ALU_IN1_7_OUTPUT_OFF_O1INV_558 : STD_LOGIC; 
  signal OutPort_A_Out_0_OUTPUT_OFF_O1INV_612 : STD_LOGIC; 
  signal ALU_IN2_6_OUTPUT_OFF_O1INV_620 : STD_LOGIC; 
  signal ALU_IN2_7_OUTPUT_OFF_O1INV_636 : STD_LOGIC; 
  signal ALU_IN2_4_OUTPUT_OFF_O1INV_574 : STD_LOGIC; 
  signal OutPort_A_Out_2_OUTPUT_OFF_O1INV_644 : STD_LOGIC; 
  signal Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV_566 : STD_LOGIC; 
  signal ALU_IN2_5_OUTPUT_OFF_O1INV_590 : STD_LOGIC; 
  signal ALU_T_OutPut_6_OUTPUT_OFF_O1INV_408 : STD_LOGIC; 
  signal ALU_IN1_1_OUTPUT_OFF_O1INV_438 : STD_LOGIC; 
  signal ALU_T_OutPut_7_OUTPUT_OFF_O1INV_416 : STD_LOGIC; 
  signal ALU_T_OutPut_2_OUTPUT_OFF_O1INV_376 : STD_LOGIC; 
  signal ALU_IN1_3_OUTPUT_OFF_O1INV_462 : STD_LOGIC; 
  signal ALU_T_OutPut_4_OUTPUT_OFF_O1INV_392 : STD_LOGIC; 
  signal ALU_T_OutPut_3_OUTPUT_OFF_O1INV_384 : STD_LOGIC; 
  signal ALU_IN1_2_OUTPUT_OFF_O1INV_446 : STD_LOGIC; 
  signal ALU_T_OutPut_5_OUTPUT_OFF_O1INV_400 : STD_LOGIC; 
  signal ALU_IN1_0_OUTPUT_OFF_O1INV_424 : STD_LOGIC; 
  signal ALU_IN2_2_OUTPUT_OFF_O1INV_526 : STD_LOGIC; 
  signal ALU_IN2_3_OUTPUT_OFF_O1INV_550 : STD_LOGIC; 
  signal ALU_IN1_6_OUTPUT_OFF_O1INV_534 : STD_LOGIC; 
  signal ALU_IN1_5_OUTPUT_OFF_O1INV_510 : STD_LOGIC; 
  signal Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV_494 : STD_LOGIC; 
  signal ALU_IN2_1_OUTPUT_OFF_O1INV_502 : STD_LOGIC; 
  signal Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV_470 : STD_LOGIC; 
  signal ALU_IN2_0_OUTPUT_OFF_O1INV_478 : STD_LOGIC; 
  signal Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV_518 : STD_LOGIC; 
  signal ALU_IN1_4_OUTPUT_OFF_O1INV_486 : STD_LOGIC; 
  signal Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV_542 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_33_Counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_33_State : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_33_Next_State : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_33_Result : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal XLXI_33_Next_State_mux0002 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  ALU_T_OutPut_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD230"
    )
    port map (
      I => ALU_T_OutPut_1_O,
      O => ALU_T_OutPut(1)
    );
  ALU_TCarryOut_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => ALU_TCarryOut_O,
      O => ALU_TCarryOut
    );
  ALU_T_OutPut_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => ALU_T_OutPut_0_O,
      O => ALU_T_OutPut(0)
    );
  OutPort_B_Out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD41"
    )
    port map (
      I => OutPort_B_Out_1_O,
      O => OutPort_B_Out(1)
    );
  OutPort_B_Out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => OutPort_B_Out_3_O,
      O => OutPort_B_Out(3)
    );
  OutPort_B_Out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => OutPort_B_Out_4_O,
      O => OutPort_B_Out(4)
    );
  OutPort_A_Out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => OutPort_A_Out_4_O,
      O => OutPort_A_Out(4)
    );
  Dbg_En_A_PORT_B_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => Dbg_En_A_PORT_B_O,
      O => Dbg_En_A_PORT_B
    );
  OutPort_B_Out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => OutPort_B_Out_7_O,
      O => OutPort_B_Out(7)
    );
  Dbg_En_A_PORT_A_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => Dbg_En_A_PORT_A_O,
      O => Dbg_En_A_PORT_A
    );
  OutPort_A_Out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => OutPort_A_Out_3_O,
      O => OutPort_A_Out(3)
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  OutPort_B_Out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => OutPort_B_Out_0_O,
      O => OutPort_B_Out(0)
    );
  OutPort_A_Out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => OutPort_A_Out_6_O,
      O => OutPort_A_Out(6)
    );
  OutPort_B_Out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => OutPort_B_Out_2_O,
      O => OutPort_B_Out(2)
    );
  OutPort_B_Out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => OutPort_B_Out_6_O,
      O => OutPort_B_Out(6)
    );
  XLXI_31_ROM_DATA_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_RDATA_6_Q,
      O => XLXI_31_ROM_DATA_6_DXMUX_843
    );
  XLXI_31_ROM_DATA_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  XLXI_31_ROM_DATA_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_31_ROM_DATA_6_CLKINV_827
    );
  XLXI_31_ROM_DATA_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_319,
      O => XLXI_31_ROM_DATA_6_CEINV_826
    );
  XLXI_31_Mrom_RDATA1011_SW0 : X_LUT4
    generic map(
      INIT => X"FFBB",
      LOC => "SLICE_X52Y91"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(3),
      ADR1 => XLXI_33_ADDR_To_ROM(0),
      ADR2 => VCC,
      ADR3 => XLXI_33_ADDR_To_ROM(4),
      O => XLXI_31_Mrom_RDATA1011_SW0_O_pack_1
    );
  XLXI_31_ROM_DATA_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_RDATA_7_Q,
      O => XLXI_31_ROM_DATA_7_DXMUX_810
    );
  XLXI_31_ROM_DATA_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_Mrom_RDATA1011_SW0_O_pack_1,
      O => XLXI_31_Mrom_RDATA1011_SW0_O
    );
  XLXI_31_ROM_DATA_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_31_ROM_DATA_7_CLKINV_794
    );
  XLXI_31_ROM_DATA_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_319,
      O => XLXI_31_ROM_DATA_7_CEINV_793
    );
  OutPort_A_Out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => OutPort_A_Out_5_O,
      O => OutPort_A_Out(5)
    );
  OutPort_A_Out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => OutPort_A_Out_7_O,
      O => OutPort_A_Out(7)
    );
  OutPort_B_Out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => OutPort_B_Out_5_O,
      O => OutPort_B_Out(5)
    );
  ReRun_IBUF : X_BUF
    generic map(
      LOC => "IPAD55",
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun,
      O => ReRun_INBUF
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD28",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  XLXI_31_ROM_DATA_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_RDATA_0_Q,
      O => XLXI_31_ROM_DATA_0_DYMUX_864
    );
  XLXI_31_ROM_DATA_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_31_ROM_DATA_0_CLKINV_856
    );
  XLXI_31_ROM_DATA_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_319,
      O => XLXI_31_ROM_DATA_0_CEINV_855
    );
  XLXI_33_Counter_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(3),
      O => XLXI_33_Counter_3_DXMUX_902
    );
  XLXI_33_Counter_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(2),
      O => XLXI_33_Counter_3_DYMUX_890
    );
  XLXI_33_Counter_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X51Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_3_CLKINVNOT
    );
  XLXI_33_Counter_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001_0,
      O => XLXI_33_Counter_3_CEINV_880
    );
  XLXI_33_Counter_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001,
      O => XLXI_33_Counter_not0001_0
    );
  XLXI_33_Next_State_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002(2),
      O => XLXI_33_Next_State_1_DXMUX_991
    );
  XLXI_33_Next_State_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002(3),
      O => XLXI_33_Next_State_1_DYMUX_979
    );
  XLXI_33_Next_State_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X54Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Next_State_1_CLKINVNOT
    );
  XLXI_33_State_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(1),
      O => XLXI_33_State_1_DYMUX_1068
    );
  XLXI_33_State_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_IBUF_315,
      O => XLXI_33_State_1_SRINV_1066
    );
  XLXI_33_State_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_State_1_CLKINV_1065
    );
  XLXI_33_ADDR_To_ROM_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(3),
      O => XLXI_33_ADDR_To_ROM_3_DXMUX_1202
    );
  XLXI_33_ADDR_To_ROM_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(2),
      O => XLXI_33_ADDR_To_ROM_3_DYMUX_1196
    );
  XLXI_33_ADDR_To_ROM_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X52Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_ADDR_To_ROM_3_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001_0,
      O => XLXI_33_ADDR_To_ROM_3_CEINV_1193
    );
  XLXI_33_State_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(3),
      O => XLXI_33_State_3_DXMUX_1100
    );
  XLXI_33_State_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(2),
      O => XLXI_33_State_3_DYMUX_1094
    );
  XLXI_33_State_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_IBUF_315,
      O => XLXI_33_State_3_SRINV_1092
    );
  XLXI_33_State_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_State_3_CLKINV_1091
    );
  XLXI_33_Counter_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X50Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(0),
      O => XLXI_33_Counter_0_DXMUX_1162
    );
  XLXI_33_Counter_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(1),
      O => XLXI_33_Counter_0_DYMUX_1156
    );
  XLXI_33_Counter_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X50Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_0_CLKINVNOT
    );
  XLXI_33_Counter_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001_0,
      O => XLXI_33_Counter_0_CEINV_1145
    );
  XLXI_33_ADDR_To_ROM_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(1),
      O => XLXI_33_ADDR_To_ROM_1_DXMUX_1182
    );
  XLXI_33_ADDR_To_ROM_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(0),
      O => XLXI_33_ADDR_To_ROM_1_DYMUX_1176
    );
  XLXI_33_ADDR_To_ROM_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X54Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_ADDR_To_ROM_1_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001_0,
      O => XLXI_33_ADDR_To_ROM_1_CEINV_1173
    );
  XLXI_33_State_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_IBUF_315,
      O => XLXI_33_State_0_DYMUX_1056
    );
  XLXI_33_State_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(0),
      O => XLXI_33_State_0_SRINV_1054
    );
  XLXI_33_State_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_State_0_CLKINV_1053
    );
  XLXI_33_Next_State_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002(0),
      O => XLXI_33_Next_State_3_DXMUX_1025
    );
  XLXI_33_Next_State_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002(1),
      O => XLXI_33_Next_State_3_DYMUX_1013
    );
  XLXI_33_Next_State_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X53Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Next_State_3_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(5),
      O => XLXI_33_ADDR_To_ROM_5_DXMUX_1044
    );
  XLXI_33_ADDR_To_ROM_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(4),
      O => XLXI_33_ADDR_To_ROM_5_DYMUX_1038
    );
  XLXI_33_ADDR_To_ROM_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X53Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_ADDR_To_ROM_5_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001_0,
      O => XLXI_33_ADDR_To_ROM_5_CEINV_1035
    );
  XLXI_33_Counter_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(5),
      O => XLXI_33_Counter_5_DYMUX_923
    );
  XLXI_33_Counter_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X51Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_5_CLKINVNOT
    );
  XLXI_33_Counter_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001_0,
      O => XLXI_33_Counter_5_CEINV_914
    );
  XLXI_33_Counter_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(4),
      O => XLXI_33_Counter_4_DXMUX_1133
    );
  XLXI_33_Counter_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_N2_pack_2,
      O => XLXI_33_N2
    );
  XLXI_33_Counter_4_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X50Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_4_CLKINVNOT
    );
  XLXI_33_Counter_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001_0,
      O => XLXI_33_Counter_4_CEINV_1115
    );
  XLXI_33_EN_OUT_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001,
      O => XLXI_33_ADDR_To_ROM_not0001_0
    );
  XLXI_33_EN_OUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_mux0000,
      O => XLXI_33_EN_OUT_DYMUX_947
    );
  XLXI_33_EN_OUT_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X54Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_EN_OUT_CLKINVNOT
    );
  XLXI_33_EN_OUT_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => Programme_Start_IBUF_314,
      O => XLXI_33_EN_OUT_CEINV_938
    );
  Programme_Start_IBUF : X_BUF
    generic map(
      LOC => "IPAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => Programme_Start,
      O => Programme_Start_INBUF
    );
  OutPort_A_Out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => OutPort_A_Out_1_O,
      O => OutPort_A_Out(1)
    );
  Dbg_ROM_DATA_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => Dbg_ROM_DATA_6_O,
      O => Dbg_ROM_DATA(6)
    );
  ALU_IN1_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => ALU_IN1_7_O,
      O => ALU_IN1(7)
    );
  Dbg_ROM_DATA_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => Dbg_ROM_DATA_7_O,
      O => Dbg_ROM_DATA(7)
    );
  OutPort_A_Out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => OutPort_A_Out_0_O,
      O => OutPort_A_Out(0)
    );
  ALU_IN2_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => ALU_IN2_6_O,
      O => ALU_IN2(6)
    );
  ALU_IN2_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => ALU_IN2_7_O,
      O => ALU_IN2(7)
    );
  ALU_IN2_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => ALU_IN2_4_O,
      O => ALU_IN2(4)
    );
  OutPort_A_Out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => OutPort_A_Out_2_O,
      O => OutPort_A_Out(2)
    );
  Dbg_ROM_DATA_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => Dbg_ROM_DATA_5_O,
      O => Dbg_ROM_DATA(5)
    );
  ALU_IN2_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => ALU_IN2_5_O,
      O => ALU_IN2(5)
    );
  XLXI_31_Mrom_RDATA1011 : X_LUT4
    generic map(
      INIT => X"0103",
      LOC => "SLICE_X52Y91"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(2),
      ADR1 => XLXI_33_ADDR_To_ROM(5),
      ADR2 => XLXI_31_Mrom_RDATA1011_SW0_O,
      ADR3 => XLXI_33_ADDR_To_ROM(1),
      O => XLXI_31_RDATA_7_Q
    );
  ALU_T_OutPut_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => ALU_T_OutPut_6_O,
      O => ALU_T_OutPut(6)
    );
  ALU_IN1_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD23"
    )
    port map (
      I => ALU_IN1_1_O,
      O => ALU_IN1(1)
    );
  Dbg_ROM_DATA_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD50"
    )
    port map (
      I => Dbg_ROM_DATA_0_O,
      O => Dbg_ROM_DATA(0)
    );
  ALU_T_OutPut_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => ALU_T_OutPut_7_O,
      O => ALU_T_OutPut(7)
    );
  ALU_T_OutPut_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => ALU_T_OutPut_2_O,
      O => ALU_T_OutPut(2)
    );
  ALU_IN1_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => ALU_IN1_3_O,
      O => ALU_IN1(3)
    );
  ALU_T_CarryIn_IBUF : X_BUF
    generic map(
      LOC => "IPAD58",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_CarryIn,
      O => ALU_T_CarryIn_INBUF
    );
  ALU_T_OutPut_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD226"
    )
    port map (
      I => ALU_T_OutPut_4_O,
      O => ALU_T_OutPut(4)
    );
  ALU_T_OutPut_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD227"
    )
    port map (
      I => ALU_T_OutPut_3_O,
      O => ALU_T_OutPut(3)
    );
  ALU_IN1_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => ALU_IN1_2_O,
      O => ALU_IN1(2)
    );
  ALU_T_OutPut_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => ALU_T_OutPut_5_O,
      O => ALU_T_OutPut(5)
    );
  ALU_IN1_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => ALU_IN1_0_O,
      O => ALU_IN1(0)
    );
  ALU_IN2_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => ALU_IN2_2_O,
      O => ALU_IN2(2)
    );
  ALU_IN2_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => ALU_IN2_3_O,
      O => ALU_IN2(3)
    );
  ALU_IN1_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => ALU_IN1_6_O,
      O => ALU_IN1(6)
    );
  ALU_IN1_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => ALU_IN1_5_O,
      O => ALU_IN1(5)
    );
  Dbg_ROM_DATA_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => Dbg_ROM_DATA_2_O,
      O => Dbg_ROM_DATA(2)
    );
  ALU_IN2_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => ALU_IN2_1_O,
      O => ALU_IN2(1)
    );
  ReRun_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD55",
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_INBUF,
      O => ReRun_IBUF_315
    );
  Dbg_ROM_DATA_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD56"
    )
    port map (
      I => Dbg_ROM_DATA_1_O,
      O => Dbg_ROM_DATA(1)
    );
  ALU_IN2_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD231"
    )
    port map (
      I => ALU_IN2_0_O,
      O => ALU_IN2(0)
    );
  Dbg_ROM_DATA_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => Dbg_ROM_DATA_3_O,
      O => Dbg_ROM_DATA(3)
    );
  ALU_IN1_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => ALU_IN1_4_O,
      O => ALU_IN1(4)
    );
  Dbg_ROM_DATA_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => Dbg_ROM_DATA_4_O,
      O => Dbg_ROM_DATA(4)
    );
  Programme_Start_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => Programme_Start_INBUF,
      O => Programme_Start_IBUF_314
    );
  XLXI_31_ROM_DATA_7 : X_FF
    generic map(
      LOC => "SLICE_X52Y91",
      INIT => '0'
    )
    port map (
      I => XLXI_31_ROM_DATA_7_DXMUX_810,
      CE => XLXI_31_ROM_DATA_7_CEINV_793,
      CLK => XLXI_31_ROM_DATA_7_CLKINV_794,
      SET => GND,
      RST => GND,
      O => XLXI_31_ROM_DATA_7_Q
    );
  XLXI_31_Mrom_RDATA811_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X53Y91"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(4),
      ADR1 => VCC,
      ADR2 => XLXI_33_ADDR_To_ROM(5),
      ADR3 => XLXI_33_ADDR_To_ROM(3),
      O => N2_pack_1
    );
  XLXI_33_Counter_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_3_DXMUX_902,
      CE => XLXI_33_Counter_3_CEINV_880,
      CLK => XLXI_33_Counter_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Counter(3)
    );
  XLXI_33_EN_OUT_mux00001 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X54Y88"
    )
    port map (
      ADR0 => XLXI_33_EN_OUT_319,
      ADR1 => XLXI_33_State(0),
      ADR2 => XLXI_33_State(2),
      ADR3 => XLXI_33_State(1),
      O => XLXI_33_EN_OUT_mux0000
    );
  XLXI_33_Mcount_Counter_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C",
      LOC => "SLICE_X51Y90"
    )
    port map (
      ADR0 => XLXI_33_Counter(0),
      ADR1 => XLXI_33_Counter(2),
      ADR2 => XLXI_33_Counter(1),
      ADR3 => VCC,
      O => XLXI_33_Result(2)
    );
  XLXI_31_ROM_DATA_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_31_ROM_DATA_0_DYMUX_864,
      CE => XLXI_31_ROM_DATA_0_CEINV_855,
      CLK => XLXI_31_ROM_DATA_0_CLKINV_856,
      SET => GND,
      RST => GND,
      O => XLXI_31_ROM_DATA_0_Q
    );
  XLXI_33_EN_OUT : X_FF
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => '0'
    )
    port map (
      I => XLXI_33_EN_OUT_DYMUX_947,
      CE => XLXI_33_EN_OUT_CEINV_938,
      CLK => XLXI_33_EN_OUT_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_EN_OUT_319
    );
  XLXI_31_Mrom_RDATA811 : X_LUT4
    generic map(
      INIT => X"0041",
      LOC => "SLICE_X53Y91"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(1),
      ADR1 => XLXI_33_ADDR_To_ROM(2),
      ADR2 => XLXI_33_ADDR_To_ROM(0),
      ADR3 => N2,
      O => XLXI_31_RDATA_6_Q
    );
  XLXI_33_Mcount_Counter_xor_5_11 : X_LUT4
    generic map(
      INIT => X"DF20",
      LOC => "SLICE_X51Y91"
    )
    port map (
      ADR0 => XLXI_33_Counter(4),
      ADR1 => XLXI_33_N2,
      ADR2 => XLXI_33_Counter(3),
      ADR3 => XLXI_33_Counter(5),
      O => XLXI_33_Result(5)
    );
  XLXI_33_Counter_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_3_DYMUX_890,
      CE => XLXI_33_Counter_3_CEINV_880,
      CLK => XLXI_33_Counter_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Counter(2)
    );
  XLXI_33_Mcount_Counter_xor_3_12 : X_LUT4
    generic map(
      INIT => X"6AAA",
      LOC => "SLICE_X51Y90"
    )
    port map (
      ADR0 => XLXI_33_Counter(3),
      ADR1 => XLXI_33_Counter(2),
      ADR2 => XLXI_33_Counter(1),
      ADR3 => XLXI_33_Counter(0),
      O => XLXI_33_Result(3)
    );
  XLXI_33_ADDR_To_ROM_not00011 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X54Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Programme_Start_IBUF_314,
      ADR2 => VCC,
      ADR3 => XLXI_33_State(0),
      O => XLXI_33_ADDR_To_ROM_not0001
    );
  XLXI_33_Counter_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y91",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_5_DYMUX_923,
      CE => XLXI_33_Counter_5_CEINV_914,
      CLK => XLXI_33_Counter_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Counter(5)
    );
  XLXI_31_ROM_DATA_6 : X_FF
    generic map(
      LOC => "SLICE_X53Y91",
      INIT => '0'
    )
    port map (
      I => XLXI_31_ROM_DATA_6_DXMUX_843,
      CE => XLXI_31_ROM_DATA_6_CEINV_826,
      CLK => XLXI_31_ROM_DATA_6_CLKINV_827,
      SET => GND,
      RST => GND,
      O => XLXI_31_ROM_DATA_6_Q
    );
  XLXI_33_Next_State_mux0002_3_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X54Y89"
    )
    port map (
      ADR0 => Programme_Start_IBUF_314,
      ADR1 => XLXI_33_State(3),
      ADR2 => VCC,
      ADR3 => XLXI_33_State(0),
      O => XLXI_33_Next_State_mux0002(3)
    );
  XLXI_31_Mrom_RDATA121 : X_LUT4
    generic map(
      INIT => X"0120",
      LOC => "SLICE_X55Y90"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(1),
      ADR1 => N2,
      ADR2 => XLXI_33_ADDR_To_ROM(0),
      ADR3 => XLXI_33_ADDR_To_ROM(2),
      O => XLXI_31_RDATA_0_Q
    );
  XLXI_33_ADDR_To_ROM_5 : X_FF
    generic map(
      LOC => "SLICE_X53Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_5_DXMUX_1044,
      CE => XLXI_33_ADDR_To_ROM_5_CEINV_1035,
      CLK => XLXI_33_ADDR_To_ROM_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(5)
    );
  XLXI_33_Next_State_2 : X_FF
    generic map(
      LOC => "SLICE_X53Y88",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Next_State_3_DYMUX_1013,
      CE => VCC,
      CLK => XLXI_33_Next_State_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Next_State(2)
    );
  XLXI_33_Next_State_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X53Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_33_State(2),
      ADR2 => XLXI_33_State(1),
      ADR3 => Programme_Start_IBUF_314,
      O => XLXI_33_Next_State_mux0002(1)
    );
  XLXI_33_Next_State_3 : X_FF
    generic map(
      LOC => "SLICE_X53Y88",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Next_State_3_DXMUX_1025,
      CE => VCC,
      CLK => XLXI_33_Next_State_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Next_State(3)
    );
  XLXI_33_Next_State_mux0002_0_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X53Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_33_State(2),
      ADR2 => Programme_Start_IBUF_314,
      ADR3 => XLXI_33_State(3),
      O => XLXI_33_Next_State_mux0002(0)
    );
  XLXI_33_Next_State_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Next_State_1_DXMUX_991,
      CE => VCC,
      CLK => XLXI_33_Next_State_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Next_State(1)
    );
  XLXI_33_Next_State_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => '1'
    )
    port map (
      I => XLXI_33_Next_State_1_DYMUX_979,
      CE => VCC,
      CLK => XLXI_33_Next_State_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Next_State(0)
    );
  XLXI_33_ADDR_To_ROM_4 : X_FF
    generic map(
      LOC => "SLICE_X53Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_5_DYMUX_1038,
      CE => XLXI_33_ADDR_To_ROM_5_CEINV_1035,
      CLK => XLXI_33_ADDR_To_ROM_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(4)
    );
  XLXI_33_State_0 : X_SFF
    generic map(
      LOC => "SLICE_X55Y89",
      INIT => '1'
    )
    port map (
      I => XLXI_33_State_0_DYMUX_1056,
      CE => VCC,
      CLK => XLXI_33_State_0_CLKINV_1053,
      SET => GND,
      RST => GND,
      SSET => XLXI_33_State_0_SRINV_1054,
      SRST => GND,
      O => XLXI_33_State(0)
    );
  XLXI_33_State_1 : X_SFF
    generic map(
      LOC => "SLICE_X55Y88",
      INIT => '0'
    )
    port map (
      I => XLXI_33_State_1_DYMUX_1068,
      CE => VCC,
      CLK => XLXI_33_State_1_CLKINV_1065,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_State_1_SRINV_1066,
      O => XLXI_33_State(1)
    );
  XLXI_33_State_2 : X_SFF
    generic map(
      LOC => "SLICE_X52Y88",
      INIT => '0'
    )
    port map (
      I => XLXI_33_State_3_DYMUX_1094,
      CE => VCC,
      CLK => XLXI_33_State_3_CLKINV_1091,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_State_3_SRINV_1092,
      O => XLXI_33_State(2)
    );
  XLXI_33_State_3 : X_SFF
    generic map(
      LOC => "SLICE_X52Y88",
      INIT => '0'
    )
    port map (
      I => XLXI_33_State_3_DXMUX_1100,
      CE => VCC,
      CLK => XLXI_33_State_3_CLKINV_1091,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_State_3_SRINV_1092,
      O => XLXI_33_State(3)
    );
  XLXI_33_Counter_not00011 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X50Y88"
    )
    port map (
      ADR0 => Programme_Start_IBUF_314,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_33_State(3),
      O => XLXI_33_Counter_not0001
    );
  XLXI_33_Next_State_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X54Y89"
    )
    port map (
      ADR0 => Programme_Start_IBUF_314,
      ADR1 => XLXI_33_State(0),
      ADR2 => VCC,
      ADR3 => XLXI_33_State(1),
      O => XLXI_33_Next_State_mux0002(2)
    );
  XLXI_33_Mcount_Counter_xor_3_111 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "SLICE_X50Y91"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_33_Counter(1),
      ADR2 => XLXI_33_Counter(2),
      ADR3 => XLXI_33_Counter(0),
      O => XLXI_33_N2_pack_2
    );
  XLXI_33_ADDR_To_ROM_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_1_DXMUX_1182,
      CE => XLXI_33_ADDR_To_ROM_1_CEINV_1173,
      CLK => XLXI_33_ADDR_To_ROM_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(1)
    );
  XLXI_33_Counter_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_0_DXMUX_1162,
      CE => XLXI_33_Counter_0_CEINV_1145,
      CLK => XLXI_33_Counter_0_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Counter(0)
    );
  XLXI_33_ADDR_To_ROM_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_1_DYMUX_1176,
      CE => XLXI_33_ADDR_To_ROM_1_CEINV_1173,
      CLK => XLXI_33_ADDR_To_ROM_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(0)
    );
  XLXI_33_ADDR_To_ROM_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_3_DXMUX_1202,
      CE => XLXI_33_ADDR_To_ROM_3_CEINV_1193,
      CLK => XLXI_33_ADDR_To_ROM_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(3)
    );
  XLXI_33_ADDR_To_ROM_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_3_DYMUX_1196,
      CE => XLXI_33_ADDR_To_ROM_3_CEINV_1193,
      CLK => XLXI_33_ADDR_To_ROM_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(2)
    );
  XLXI_33_Counter_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y91",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_4_DXMUX_1133,
      CE => XLXI_33_Counter_4_CEINV_1115,
      CLK => XLXI_33_Counter_4_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Counter(4)
    );
  XLXI_33_Counter_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y90",
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_0_DYMUX_1156,
      CE => XLXI_33_Counter_0_CEINV_1145,
      CLK => XLXI_33_Counter_0_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Counter(1)
    );
  XLXI_33_Mcount_Counter_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X50Y90"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_33_Counter(1),
      ADR2 => VCC,
      ADR3 => XLXI_33_Counter(0),
      O => XLXI_33_Result(1)
    );
  XLXI_33_Mcount_Counter_xor_4_11 : X_LUT4
    generic map(
      INIT => X"A6A6",
      LOC => "SLICE_X50Y91"
    )
    port map (
      ADR0 => XLXI_33_Counter(4),
      ADR1 => XLXI_33_Counter(3),
      ADR2 => XLXI_33_N2,
      ADR3 => VCC,
      O => XLXI_33_Result(4)
    );
  ALU_T_OutPut_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_1_OUTPUT_OFF_O1INV_368,
      O => ALU_T_OutPut_1_O
    );
  ALU_T_OutPut_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_1_OUTPUT_OFF_O1INV_368
    );
  ALU_TCarryOut_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_TCarryOut_OUTPUT_OFF_O1INV_352,
      O => ALU_TCarryOut_O
    );
  ALU_TCarryOut_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_TCarryOut_OUTPUT_OFF_O1INV_352
    );
  ALU_T_OutPut_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_CarryIn_INBUF,
      O => ALU_T_OutPut_0_O
    );
  OutPort_B_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_1_OUTPUT_OFF_O1INV_722,
      O => OutPort_B_Out_1_O
    );
  OutPort_B_Out_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_1_OUTPUT_OFF_O1INV_722
    );
  OutPort_B_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_3_OUTPUT_OFF_O1INV_738,
      O => OutPort_B_Out_3_O
    );
  OutPort_B_Out_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_3_OUTPUT_OFF_O1INV_738
    );
  OutPort_B_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_4_OUTPUT_OFF_O1INV_752,
      O => OutPort_B_Out_4_O
    );
  OutPort_B_Out_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_4_OUTPUT_OFF_O1INV_752
    );
  OutPort_A_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_4_OUTPUT_OFF_O1INV_666,
      O => OutPort_A_Out_4_O
    );
  OutPort_A_Out_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_4_OUTPUT_OFF_O1INV_666
    );
  Dbg_En_A_PORT_B_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV_706,
      O => Dbg_En_A_PORT_B_O
    );
  Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV_706
    );
  OutPort_B_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_7_OUTPUT_OFF_O1INV_776,
      O => OutPort_B_Out_7_O
    );
  OutPort_B_Out_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_7_OUTPUT_OFF_O1INV_776
    );
  Dbg_En_A_PORT_A_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV_690,
      O => Dbg_En_A_PORT_A_O
    );
  Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV_690
    );
  OutPort_A_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_3_OUTPUT_OFF_O1INV_652,
      O => OutPort_A_Out_3_O
    );
  OutPort_A_Out_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_3_OUTPUT_OFF_O1INV_652
    );
  OutPort_B_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_0_OUTPUT_OFF_O1INV_714,
      O => OutPort_B_Out_0_O
    );
  OutPort_B_Out_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_0_OUTPUT_OFF_O1INV_714
    );
  OutPort_A_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_6_OUTPUT_OFF_O1INV_682,
      O => OutPort_A_Out_6_O
    );
  OutPort_A_Out_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_6_OUTPUT_OFF_O1INV_682
    );
  OutPort_B_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_2_OUTPUT_OFF_O1INV_730,
      O => OutPort_B_Out_2_O
    );
  OutPort_B_Out_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_2_OUTPUT_OFF_O1INV_730
    );
  OutPort_B_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_6_OUTPUT_OFF_O1INV_768,
      O => OutPort_B_Out_6_O
    );
  OutPort_B_Out_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_6_OUTPUT_OFF_O1INV_768
    );
  OutPort_A_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_5_OUTPUT_OFF_O1INV_674,
      O => OutPort_A_Out_5_O
    );
  OutPort_A_Out_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_5_OUTPUT_OFF_O1INV_674
    );
  OutPort_A_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_7_OUTPUT_OFF_O1INV_698,
      O => OutPort_A_Out_7_O
    );
  OutPort_A_Out_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_7_OUTPUT_OFF_O1INV_698
    );
  OutPort_B_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_5_OUTPUT_OFF_O1INV_760,
      O => OutPort_B_Out_5_O
    );
  OutPort_B_Out_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_5_OUTPUT_OFF_O1INV_760
    );
  OutPort_A_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_1_OUTPUT_OFF_O1INV_628,
      O => OutPort_A_Out_1_O
    );
  OutPort_A_Out_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_1_OUTPUT_OFF_O1INV_628
    );
  Dbg_ROM_DATA_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_ROM_DATA_6_Q,
      O => Dbg_ROM_DATA_6_O
    );
  ALU_IN1_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_7_OUTPUT_OFF_O1INV_558,
      O => ALU_IN1_7_O
    );
  ALU_IN1_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_7_OUTPUT_OFF_O1INV_558
    );
  Dbg_ROM_DATA_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_ROM_DATA_7_Q,
      O => Dbg_ROM_DATA_7_O
    );
  OutPort_A_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_0_OUTPUT_OFF_O1INV_612,
      O => OutPort_A_Out_0_O
    );
  OutPort_A_Out_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_0_OUTPUT_OFF_O1INV_612
    );
  ALU_IN2_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_6_OUTPUT_OFF_O1INV_620,
      O => ALU_IN2_6_O
    );
  ALU_IN2_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_6_OUTPUT_OFF_O1INV_620
    );
  ALU_IN2_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_7_OUTPUT_OFF_O1INV_636,
      O => ALU_IN2_7_O
    );
  ALU_IN2_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_7_OUTPUT_OFF_O1INV_636
    );
  ALU_IN2_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_4_OUTPUT_OFF_O1INV_574,
      O => ALU_IN2_4_O
    );
  ALU_IN2_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_4_OUTPUT_OFF_O1INV_574
    );
  OutPort_A_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_2_OUTPUT_OFF_O1INV_644,
      O => OutPort_A_Out_2_O
    );
  OutPort_A_Out_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_2_OUTPUT_OFF_O1INV_644
    );
  Dbg_ROM_DATA_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV_566,
      O => Dbg_ROM_DATA_5_O
    );
  Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV_566
    );
  ALU_IN2_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_5_OUTPUT_OFF_O1INV_590,
      O => ALU_IN2_5_O
    );
  ALU_IN2_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_5_OUTPUT_OFF_O1INV_590
    );
  ALU_T_OutPut_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_6_OUTPUT_OFF_O1INV_408,
      O => ALU_T_OutPut_6_O
    );
  ALU_T_OutPut_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_6_OUTPUT_OFF_O1INV_408
    );
  ALU_IN1_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_1_OUTPUT_OFF_O1INV_438,
      O => ALU_IN1_1_O
    );
  ALU_IN1_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_1_OUTPUT_OFF_O1INV_438
    );
  Dbg_ROM_DATA_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_ROM_DATA_0_Q,
      O => Dbg_ROM_DATA_0_O
    );
  ALU_T_OutPut_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_7_OUTPUT_OFF_O1INV_416,
      O => ALU_T_OutPut_7_O
    );
  ALU_T_OutPut_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_7_OUTPUT_OFF_O1INV_416
    );
  ALU_T_OutPut_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_2_OUTPUT_OFF_O1INV_376,
      O => ALU_T_OutPut_2_O
    );
  ALU_T_OutPut_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_2_OUTPUT_OFF_O1INV_376
    );
  ALU_IN1_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_3_OUTPUT_OFF_O1INV_462,
      O => ALU_IN1_3_O
    );
  ALU_IN1_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_3_OUTPUT_OFF_O1INV_462
    );
  ALU_T_OutPut_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_4_OUTPUT_OFF_O1INV_392,
      O => ALU_T_OutPut_4_O
    );
  ALU_T_OutPut_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_4_OUTPUT_OFF_O1INV_392
    );
  ALU_T_OutPut_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_3_OUTPUT_OFF_O1INV_384,
      O => ALU_T_OutPut_3_O
    );
  ALU_T_OutPut_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_3_OUTPUT_OFF_O1INV_384
    );
  ALU_IN1_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_2_OUTPUT_OFF_O1INV_446,
      O => ALU_IN1_2_O
    );
  ALU_IN1_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_2_OUTPUT_OFF_O1INV_446
    );
  ALU_T_OutPut_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_5_OUTPUT_OFF_O1INV_400,
      O => ALU_T_OutPut_5_O
    );
  ALU_T_OutPut_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_5_OUTPUT_OFF_O1INV_400
    );
  ALU_IN1_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_0_OUTPUT_OFF_O1INV_424,
      O => ALU_IN1_0_O
    );
  ALU_IN1_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_0_OUTPUT_OFF_O1INV_424
    );
  ALU_IN2_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_2_OUTPUT_OFF_O1INV_526,
      O => ALU_IN2_2_O
    );
  ALU_IN2_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_2_OUTPUT_OFF_O1INV_526
    );
  ALU_IN2_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_3_OUTPUT_OFF_O1INV_550,
      O => ALU_IN2_3_O
    );
  ALU_IN2_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_3_OUTPUT_OFF_O1INV_550
    );
  ALU_IN1_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_6_OUTPUT_OFF_O1INV_534,
      O => ALU_IN1_6_O
    );
  ALU_IN1_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_6_OUTPUT_OFF_O1INV_534
    );
  ALU_IN1_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_5_OUTPUT_OFF_O1INV_510,
      O => ALU_IN1_5_O
    );
  ALU_IN1_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_5_OUTPUT_OFF_O1INV_510
    );
  Dbg_ROM_DATA_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV_494,
      O => Dbg_ROM_DATA_2_O
    );
  Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV_494
    );
  ALU_IN2_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_1_OUTPUT_OFF_O1INV_502,
      O => ALU_IN2_1_O
    );
  ALU_IN2_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_1_OUTPUT_OFF_O1INV_502
    );
  Dbg_ROM_DATA_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV_470,
      O => Dbg_ROM_DATA_1_O
    );
  Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV_470
    );
  ALU_IN2_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_0_OUTPUT_OFF_O1INV_478,
      O => ALU_IN2_0_O
    );
  ALU_IN2_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD231",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_0_OUTPUT_OFF_O1INV_478
    );
  Dbg_ROM_DATA_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV_518,
      O => Dbg_ROM_DATA_3_O
    );
  Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV_518
    );
  ALU_IN1_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_4_OUTPUT_OFF_O1INV_486,
      O => ALU_IN1_4_O
    );
  ALU_IN1_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_4_OUTPUT_OFF_O1INV_486
    );
  Dbg_ROM_DATA_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV_542,
      O => Dbg_ROM_DATA_4_O
    );
  Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV_542
    );
  NlwBlock_MC_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_MC_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

