--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MC_map.vhd
-- /___/   /\     Timestamp: Wed Oct 29 17:29:21 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf MC.pcf -rpw 100 -tpw 0 -ar Structure -tm MC -w -dir netgen/map -ofmt vhdl -sim MC_map.ncd MC_map.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: MC_map.ncd
-- Output file	: D:\ASSGN3_Final\SCHEMATIC2_ITER\netgen\map\MC_map.vhd
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
  signal Programme_Start_IBUF_331 : STD_LOGIC; 
  signal ReRun_IBUF_332 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_334 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal XLXI_33_Next_State_mux0002_3_11_SW0_O : STD_LOGIC; 
  signal XLXI_33_Counter_and0000_0 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_342 : STD_LOGIC; 
  signal XLXI_31_Mrom_RDATA1011_SW0_O : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal XLXI_33_Counter_not0001 : STD_LOGIC; 
  signal XLXI_33_Result_3_bdd0 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_not0001_0 : STD_LOGIC; 
  signal ALU_TCarryOut_O : STD_LOGIC; 
  signal ALU_T_OutPut_0_O : STD_LOGIC; 
  signal ALU_T_OutPut_1_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_1_O : STD_LOGIC; 
  signal ALU_IN2_1_O : STD_LOGIC; 
  signal ALU_IN2_3_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_2_O : STD_LOGIC; 
  signal ALU_IN2_0_O : STD_LOGIC; 
  signal ALU_IN1_5_O : STD_LOGIC; 
  signal ALU_IN1_4_O : STD_LOGIC; 
  signal ALU_IN2_2_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_3_O : STD_LOGIC; 
  signal ALU_IN1_6_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_4_O : STD_LOGIC; 
  signal OutPort_A_Out_2_O : STD_LOGIC; 
  signal ALU_IN1_7_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_6_O : STD_LOGIC; 
  signal ALU_IN2_7_O : STD_LOGIC; 
  signal ALU_IN2_5_O : STD_LOGIC; 
  signal ALU_IN2_6_O : STD_LOGIC; 
  signal ALU_IN2_4_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_7_O : STD_LOGIC; 
  signal OutPort_A_Out_0_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_5_O : STD_LOGIC; 
  signal OutPort_A_Out_1_O : STD_LOGIC; 
  signal Programme_Start_INBUF : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_DXMUX_1257 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_DYMUX_1251 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_1_CEINV_1248 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal XLXI_33_Counter_5_DYMUX_977 : STD_LOGIC; 
  signal XLXI_33_Counter_5_SRINV_969 : STD_LOGIC; 
  signal XLXI_33_Counter_5_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_5_CEINV_967 : STD_LOGIC; 
  signal XLXI_33_State_1_DYMUX_1148 : STD_LOGIC; 
  signal XLXI_33_State_1_SRINV_1146 : STD_LOGIC; 
  signal XLXI_33_State_1_CLKINV_1145 : STD_LOGIC; 
  signal XLXI_33_State_0_DYMUX_1136 : STD_LOGIC; 
  signal XLXI_33_State_0_SRINV_1134 : STD_LOGIC; 
  signal XLXI_33_State_0_CLKINV_1133 : STD_LOGIC; 
  signal XLXI_33_State_3_DXMUX_1168 : STD_LOGIC; 
  signal XLXI_33_State_3_DYMUX_1162 : STD_LOGIC; 
  signal XLXI_33_State_3_SRINV_1160 : STD_LOGIC; 
  signal XLXI_33_State_3_CLKINV_1159 : STD_LOGIC; 
  signal XLXI_33_Counter_not0001_pack_2 : STD_LOGIC; 
  signal XLXI_33_Next_State_0_DYMUX_1043 : STD_LOGIC; 
  signal XLXI_33_Next_State_mux0002_3_2 : STD_LOGIC; 
  signal XLXI_33_Next_State_0_SRINV_1033 : STD_LOGIC; 
  signal XLXI_33_Next_State_0_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_DXMUX_1124 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_DYMUX_1118 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_5_CEINV_1115 : STD_LOGIC; 
  signal XLXI_33_Next_State_3_DXMUX_1105 : STD_LOGIC; 
  signal XLXI_33_Next_State_3_DYMUX_1093 : STD_LOGIC; 
  signal XLXI_33_Next_State_3_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_0_DXMUX_1200 : STD_LOGIC; 
  signal XLXI_33_Counter_0_DYMUX_1193 : STD_LOGIC; 
  signal XLXI_33_Counter_0_SRINV_1183 : STD_LOGIC; 
  signal XLXI_33_Counter_0_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_0_CEINV_1181 : STD_LOGIC; 
  signal XLXI_33_Next_State_1_DYMUX_1071 : STD_LOGIC; 
  signal XLXI_33_Next_State_1_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_4_DXMUX_1236 : STD_LOGIC; 
  signal XLXI_33_Result_3_bdd0_pack_2 : STD_LOGIC; 
  signal XLXI_33_Counter_4_SRINV_1219 : STD_LOGIC; 
  signal XLXI_33_Counter_4_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_4_CEINV_1217 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_not0001 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_DYMUX_1010 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_mux0000 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_EN_OUT_CEINV_1001 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_DXMUX_1277 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_DYMUX_1271 : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_3_CEINV_1268 : STD_LOGIC; 
  signal ALU_IN1_3_O : STD_LOGIC; 
  signal ALU_T_OutPut_2_O : STD_LOGIC; 
  signal ALU_T_OutPut_5_O : STD_LOGIC; 
  signal ALU_T_OutPut_3_O : STD_LOGIC; 
  signal ALU_T_CarryIn_INBUF : STD_LOGIC; 
  signal ALU_T_OutPut_4_O : STD_LOGIC; 
  signal ALU_IN1_0_O : STD_LOGIC; 
  signal ALU_T_OutPut_6_O : STD_LOGIC; 
  signal ALU_T_OutPut_7_O : STD_LOGIC; 
  signal ALU_IN1_1_O : STD_LOGIC; 
  signal ALU_IN1_2_O : STD_LOGIC; 
  signal Dbg_ROM_DATA_0_O : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_DXMUX_887 : STD_LOGIC; 
  signal XLXI_31_RDATA_6_Q : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_CLKINV_871 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_CEINV_870 : STD_LOGIC; 
  signal OutPort_B_Out_4_O : STD_LOGIC; 
  signal OutPort_B_Out_5_O : STD_LOGIC; 
  signal OutPort_A_Out_4_O : STD_LOGIC; 
  signal OutPort_A_Out_7_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal OutPort_B_Out_3_O : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal Dbg_En_A_PORT_B_O : STD_LOGIC; 
  signal OutPort_B_Out_0_O : STD_LOGIC; 
  signal OutPort_B_Out_6_O : STD_LOGIC; 
  signal OutPort_B_Out_2_O : STD_LOGIC; 
  signal OutPort_B_Out_7_O : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_DXMUX_854 : STD_LOGIC; 
  signal XLXI_31_RDATA_7_Q : STD_LOGIC; 
  signal XLXI_31_Mrom_RDATA1011_SW0_O_pack_1 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_CLKINV_838 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_CEINV_837 : STD_LOGIC; 
  signal OutPort_A_Out_5_O : STD_LOGIC; 
  signal OutPort_A_Out_6_O : STD_LOGIC; 
  signal OutPort_B_Out_1_O : STD_LOGIC; 
  signal XLXI_33_Counter_and0000_823 : STD_LOGIC; 
  signal XLXI_33_Next_State_mux0002_3_11_SW0_O_pack_1 : STD_LOGIC; 
  signal ReRun_INBUF : STD_LOGIC; 
  signal OutPort_A_Out_3_O : STD_LOGIC; 
  signal Dbg_En_A_PORT_A_O : STD_LOGIC; 
  signal XLXI_33_Counter_3_DXMUX_949 : STD_LOGIC; 
  signal XLXI_33_Counter_3_DYMUX_936 : STD_LOGIC; 
  signal XLXI_33_Counter_3_SRINV_927 : STD_LOGIC; 
  signal XLXI_33_Counter_3_CLKINVNOT : STD_LOGIC; 
  signal XLXI_33_Counter_3_CEINV_925 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_0_DYMUX_908 : STD_LOGIC; 
  signal XLXI_31_RDATA_0_Q : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_0_CLKINV_900 : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_0_CEINV_899 : STD_LOGIC; 
  signal ALU_TCarryOut_OUTPUT_OFF_O1INV_372 : STD_LOGIC; 
  signal ALU_T_OutPut_1_OUTPUT_OFF_O1INV_388 : STD_LOGIC; 
  signal Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV_490 : STD_LOGIC; 
  signal ALU_IN2_1_OUTPUT_OFF_O1INV_522 : STD_LOGIC; 
  signal ALU_IN2_3_OUTPUT_OFF_O1INV_570 : STD_LOGIC; 
  signal Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV_514 : STD_LOGIC; 
  signal ALU_IN2_0_OUTPUT_OFF_O1INV_498 : STD_LOGIC; 
  signal ALU_IN1_5_OUTPUT_OFF_O1INV_530 : STD_LOGIC; 
  signal ALU_IN1_4_OUTPUT_OFF_O1INV_506 : STD_LOGIC; 
  signal ALU_IN2_2_OUTPUT_OFF_O1INV_546 : STD_LOGIC; 
  signal Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV_538 : STD_LOGIC; 
  signal ALU_IN1_6_OUTPUT_OFF_O1INV_554 : STD_LOGIC; 
  signal Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV_562 : STD_LOGIC; 
  signal OutPort_A_Out_2_OUTPUT_OFF_O1INV_664 : STD_LOGIC; 
  signal ALU_IN1_7_OUTPUT_OFF_O1INV_578 : STD_LOGIC; 
  signal ALU_IN2_7_OUTPUT_OFF_O1INV_656 : STD_LOGIC; 
  signal ALU_IN2_5_OUTPUT_OFF_O1INV_610 : STD_LOGIC; 
  signal ALU_IN2_6_OUTPUT_OFF_O1INV_640 : STD_LOGIC; 
  signal ALU_IN2_4_OUTPUT_OFF_O1INV_594 : STD_LOGIC; 
  signal OutPort_A_Out_0_OUTPUT_OFF_O1INV_632 : STD_LOGIC; 
  signal Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV_586 : STD_LOGIC; 
  signal OutPort_A_Out_1_OUTPUT_OFF_O1INV_648 : STD_LOGIC; 
  signal ALU_IN1_3_OUTPUT_OFF_O1INV_482 : STD_LOGIC; 
  signal ALU_T_OutPut_2_OUTPUT_OFF_O1INV_396 : STD_LOGIC; 
  signal ALU_T_OutPut_5_OUTPUT_OFF_O1INV_420 : STD_LOGIC; 
  signal ALU_T_OutPut_3_OUTPUT_OFF_O1INV_404 : STD_LOGIC; 
  signal ALU_T_OutPut_4_OUTPUT_OFF_O1INV_412 : STD_LOGIC; 
  signal ALU_IN1_0_OUTPUT_OFF_O1INV_444 : STD_LOGIC; 
  signal ALU_T_OutPut_6_OUTPUT_OFF_O1INV_428 : STD_LOGIC; 
  signal ALU_T_OutPut_7_OUTPUT_OFF_O1INV_436 : STD_LOGIC; 
  signal ALU_IN1_1_OUTPUT_OFF_O1INV_458 : STD_LOGIC; 
  signal ALU_IN1_2_OUTPUT_OFF_O1INV_466 : STD_LOGIC; 
  signal OutPort_B_Out_4_OUTPUT_OFF_O1INV_772 : STD_LOGIC; 
  signal OutPort_B_Out_5_OUTPUT_OFF_O1INV_780 : STD_LOGIC; 
  signal OutPort_A_Out_4_OUTPUT_OFF_O1INV_686 : STD_LOGIC; 
  signal OutPort_A_Out_7_OUTPUT_OFF_O1INV_718 : STD_LOGIC; 
  signal OutPort_B_Out_3_OUTPUT_OFF_O1INV_758 : STD_LOGIC; 
  signal Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV_726 : STD_LOGIC; 
  signal OutPort_B_Out_0_OUTPUT_OFF_O1INV_734 : STD_LOGIC; 
  signal OutPort_B_Out_6_OUTPUT_OFF_O1INV_788 : STD_LOGIC; 
  signal OutPort_B_Out_2_OUTPUT_OFF_O1INV_750 : STD_LOGIC; 
  signal OutPort_B_Out_7_OUTPUT_OFF_O1INV_796 : STD_LOGIC; 
  signal OutPort_A_Out_5_OUTPUT_OFF_O1INV_694 : STD_LOGIC; 
  signal OutPort_A_Out_6_OUTPUT_OFF_O1INV_702 : STD_LOGIC; 
  signal OutPort_B_Out_1_OUTPUT_OFF_O1INV_742 : STD_LOGIC; 
  signal OutPort_A_Out_3_OUTPUT_OFF_O1INV_672 : STD_LOGIC; 
  signal Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV_710 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal XLXI_33_State : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_33_Counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_33_ADDR_To_ROM : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_33_Next_State : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_33_Result : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal XLXI_33_Next_State_mux0002 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  ALU_TCarryOut_OBUF : X_OBUF
    port map (
      I => ALU_TCarryOut_O,
      O => ALU_TCarryOut
    );
  ALU_T_OutPut_0_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_0_O,
      O => ALU_T_OutPut(0)
    );
  ALU_T_OutPut_1_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_1_O,
      O => ALU_T_OutPut(1)
    );
  Dbg_ROM_DATA_1_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_1_O,
      O => Dbg_ROM_DATA(1)
    );
  ALU_IN2_1_OBUF : X_OBUF
    port map (
      I => ALU_IN2_1_O,
      O => ALU_IN2(1)
    );
  ALU_IN2_3_OBUF : X_OBUF
    port map (
      I => ALU_IN2_3_O,
      O => ALU_IN2(3)
    );
  Dbg_ROM_DATA_2_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_2_O,
      O => Dbg_ROM_DATA(2)
    );
  ALU_IN2_0_OBUF : X_OBUF
    port map (
      I => ALU_IN2_0_O,
      O => ALU_IN2(0)
    );
  ALU_IN1_5_OBUF : X_OBUF
    port map (
      I => ALU_IN1_5_O,
      O => ALU_IN1(5)
    );
  ALU_IN1_4_OBUF : X_OBUF
    port map (
      I => ALU_IN1_4_O,
      O => ALU_IN1(4)
    );
  ALU_IN2_2_OBUF : X_OBUF
    port map (
      I => ALU_IN2_2_O,
      O => ALU_IN2(2)
    );
  Dbg_ROM_DATA_3_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_3_O,
      O => Dbg_ROM_DATA(3)
    );
  ALU_IN1_6_OBUF : X_OBUF
    port map (
      I => ALU_IN1_6_O,
      O => ALU_IN1(6)
    );
  Dbg_ROM_DATA_4_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_4_O,
      O => Dbg_ROM_DATA(4)
    );
  OutPort_A_Out_2_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_2_O,
      O => OutPort_A_Out(2)
    );
  ALU_IN1_7_OBUF : X_OBUF
    port map (
      I => ALU_IN1_7_O,
      O => ALU_IN1(7)
    );
  Dbg_ROM_DATA_6_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_6_O,
      O => Dbg_ROM_DATA(6)
    );
  ALU_IN2_7_OBUF : X_OBUF
    port map (
      I => ALU_IN2_7_O,
      O => ALU_IN2(7)
    );
  ALU_IN2_5_OBUF : X_OBUF
    port map (
      I => ALU_IN2_5_O,
      O => ALU_IN2(5)
    );
  ALU_IN2_6_OBUF : X_OBUF
    port map (
      I => ALU_IN2_6_O,
      O => ALU_IN2(6)
    );
  ALU_IN2_4_OBUF : X_OBUF
    port map (
      I => ALU_IN2_4_O,
      O => ALU_IN2(4)
    );
  Dbg_ROM_DATA_7_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_7_O,
      O => Dbg_ROM_DATA(7)
    );
  OutPort_A_Out_0_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_0_O,
      O => OutPort_A_Out(0)
    );
  Dbg_ROM_DATA_5_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_5_O,
      O => Dbg_ROM_DATA(5)
    );
  OutPort_A_Out_1_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_1_O,
      O => OutPort_A_Out(1)
    );
  Programme_Start_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Programme_Start,
      O => Programme_Start_INBUF
    );
  XLXI_33_ADDR_To_ROM_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(1),
      O => XLXI_33_ADDR_To_ROM_1_DXMUX_1257
    );
  XLXI_33_ADDR_To_ROM_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(0),
      O => XLXI_33_ADDR_To_ROM_1_DYMUX_1251
    );
  XLXI_33_ADDR_To_ROM_1_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_ADDR_To_ROM_1_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001_0,
      O => XLXI_33_ADDR_To_ROM_1_CEINV_1248
    );
  XLXI_33_Counter_5_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  XLXI_33_Counter_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(5),
      O => XLXI_33_Counter_5_DYMUX_977
    );
  XLXI_33_Counter_5_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_and0000_0,
      O => XLXI_33_Counter_5_SRINV_969
    );
  XLXI_33_Counter_5_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_5_CLKINVNOT
    );
  XLXI_33_Counter_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001,
      O => XLXI_33_Counter_5_CEINV_967
    );
  XLXI_33_State_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(1),
      O => XLXI_33_State_1_DYMUX_1148
    );
  XLXI_33_State_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_IBUF_332,
      O => XLXI_33_State_1_SRINV_1146
    );
  XLXI_33_State_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_State_1_CLKINV_1145
    );
  XLXI_33_State_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_IBUF_332,
      O => XLXI_33_State_0_DYMUX_1136
    );
  XLXI_33_State_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(0),
      O => XLXI_33_State_0_SRINV_1134
    );
  XLXI_33_State_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_State_0_CLKINV_1133
    );
  XLXI_33_State_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(3),
      O => XLXI_33_State_3_DXMUX_1168
    );
  XLXI_33_State_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State(2),
      O => XLXI_33_State_3_DYMUX_1162
    );
  XLXI_33_State_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_IBUF_332,
      O => XLXI_33_State_3_SRINV_1160
    );
  XLXI_33_State_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_State_3_CLKINV_1159
    );
  XLXI_33_Next_State_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001_pack_2,
      O => XLXI_33_Counter_not0001
    );
  XLXI_33_Next_State_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002_3_2,
      O => XLXI_33_Next_State_0_DYMUX_1043
    );
  XLXI_33_Next_State_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001,
      O => XLXI_33_Next_State_0_SRINV_1033
    );
  XLXI_33_Next_State_0_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Next_State_0_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(5),
      O => XLXI_33_ADDR_To_ROM_5_DXMUX_1124
    );
  XLXI_33_ADDR_To_ROM_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(4),
      O => XLXI_33_ADDR_To_ROM_5_DYMUX_1118
    );
  XLXI_33_ADDR_To_ROM_5_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_ADDR_To_ROM_5_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001_0,
      O => XLXI_33_ADDR_To_ROM_5_CEINV_1115
    );
  XLXI_33_Next_State_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002(0),
      O => XLXI_33_Next_State_3_DXMUX_1105
    );
  XLXI_33_Next_State_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002(1),
      O => XLXI_33_Next_State_3_DYMUX_1093
    );
  XLXI_33_Next_State_3_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Next_State_3_CLKINVNOT
    );
  XLXI_33_Counter_0_DXMUX : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(0),
      O => XLXI_33_Counter_0_DXMUX_1200
    );
  XLXI_33_Counter_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(1),
      O => XLXI_33_Counter_0_DYMUX_1193
    );
  XLXI_33_Counter_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_and0000_0,
      O => XLXI_33_Counter_0_SRINV_1183
    );
  XLXI_33_Counter_0_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_0_CLKINVNOT
    );
  XLXI_33_Counter_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001,
      O => XLXI_33_Counter_0_CEINV_1181
    );
  XLXI_33_Next_State_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002(2),
      O => XLXI_33_Next_State_1_DYMUX_1071
    );
  XLXI_33_Next_State_1_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Next_State_1_CLKINVNOT
    );
  XLXI_33_Counter_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(4),
      O => XLXI_33_Counter_4_DXMUX_1236
    );
  XLXI_33_Counter_4_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result_3_bdd0_pack_2,
      O => XLXI_33_Result_3_bdd0
    );
  XLXI_33_Counter_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_and0000_0,
      O => XLXI_33_Counter_4_SRINV_1219
    );
  XLXI_33_Counter_4_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_4_CLKINVNOT
    );
  XLXI_33_Counter_4_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001,
      O => XLXI_33_Counter_4_CEINV_1217
    );
  XLXI_33_EN_OUT_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001,
      O => XLXI_33_ADDR_To_ROM_not0001_0
    );
  XLXI_33_EN_OUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_mux0000,
      O => XLXI_33_EN_OUT_DYMUX_1010
    );
  XLXI_33_EN_OUT_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_EN_OUT_CLKINVNOT
    );
  XLXI_33_EN_OUT_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Programme_Start_IBUF_331,
      O => XLXI_33_EN_OUT_CEINV_1001
    );
  XLXI_33_ADDR_To_ROM_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(3),
      O => XLXI_33_ADDR_To_ROM_3_DXMUX_1277
    );
  XLXI_33_ADDR_To_ROM_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter(2),
      O => XLXI_33_ADDR_To_ROM_3_DYMUX_1271
    );
  XLXI_33_ADDR_To_ROM_3_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_ADDR_To_ROM_3_CLKINVNOT
    );
  XLXI_33_ADDR_To_ROM_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_not0001_0,
      O => XLXI_33_ADDR_To_ROM_3_CEINV_1268
    );
  ALU_IN1_3_OBUF : X_OBUF
    port map (
      I => ALU_IN1_3_O,
      O => ALU_IN1(3)
    );
  ALU_T_OutPut_2_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_2_O,
      O => ALU_T_OutPut(2)
    );
  ALU_T_OutPut_5_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_5_O,
      O => ALU_T_OutPut(5)
    );
  ALU_T_OutPut_3_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_3_O,
      O => ALU_T_OutPut(3)
    );
  ALU_T_CarryIn_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_CarryIn,
      O => ALU_T_CarryIn_INBUF
    );
  ALU_T_OutPut_4_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_4_O,
      O => ALU_T_OutPut(4)
    );
  ALU_IN1_0_OBUF : X_OBUF
    port map (
      I => ALU_IN1_0_O,
      O => ALU_IN1(0)
    );
  ALU_T_OutPut_6_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_6_O,
      O => ALU_T_OutPut(6)
    );
  ALU_T_OutPut_7_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_7_O,
      O => ALU_T_OutPut(7)
    );
  ALU_IN1_1_OBUF : X_OBUF
    port map (
      I => ALU_IN1_1_O,
      O => ALU_IN1(1)
    );
  ALU_IN1_2_OBUF : X_OBUF
    port map (
      I => ALU_IN1_2_O,
      O => ALU_IN1(2)
    );
  Dbg_ROM_DATA_0_OBUF : X_OBUF
    port map (
      I => Dbg_ROM_DATA_0_O,
      O => Dbg_ROM_DATA(0)
    );
  XLXI_31_ROM_DATA_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_RDATA_6_Q,
      O => XLXI_31_ROM_DATA_6_DXMUX_887
    );
  XLXI_31_ROM_DATA_6_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  XLXI_31_ROM_DATA_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_31_ROM_DATA_6_CLKINV_871
    );
  XLXI_31_ROM_DATA_6_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_342,
      O => XLXI_31_ROM_DATA_6_CEINV_870
    );
  OutPort_B_Out_4_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_4_O,
      O => OutPort_B_Out(4)
    );
  OutPort_B_Out_5_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_5_O,
      O => OutPort_B_Out(5)
    );
  OutPort_A_Out_4_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_4_O,
      O => OutPort_A_Out(4)
    );
  OutPort_A_Out_7_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_7_O,
      O => OutPort_A_Out(7)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  OutPort_B_Out_3_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_3_O,
      O => OutPort_B_Out(3)
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => CLK_BUFGP_IBUFG_334,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  Dbg_En_A_PORT_B_OBUF : X_OBUF
    port map (
      I => Dbg_En_A_PORT_B_O,
      O => Dbg_En_A_PORT_B
    );
  OutPort_B_Out_0_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_0_O,
      O => OutPort_B_Out(0)
    );
  CLK_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_IBUFG_334
    );
  OutPort_B_Out_6_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_6_O,
      O => OutPort_B_Out(6)
    );
  OutPort_B_Out_2_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_2_O,
      O => OutPort_B_Out(2)
    );
  OutPort_B_Out_7_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_7_O,
      O => OutPort_B_Out(7)
    );
  XLXI_31_ROM_DATA_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_RDATA_7_Q,
      O => XLXI_31_ROM_DATA_7_DXMUX_854
    );
  XLXI_31_ROM_DATA_7_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_Mrom_RDATA1011_SW0_O_pack_1,
      O => XLXI_31_Mrom_RDATA1011_SW0_O
    );
  XLXI_31_ROM_DATA_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_31_ROM_DATA_7_CLKINV_838
    );
  XLXI_31_ROM_DATA_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_342,
      O => XLXI_31_ROM_DATA_7_CEINV_837
    );
  OutPort_A_Out_5_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_5_O,
      O => OutPort_A_Out(5)
    );
  OutPort_A_Out_6_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_6_O,
      O => OutPort_A_Out(6)
    );
  OutPort_B_Out_1_OBUF : X_OBUF
    port map (
      I => OutPort_B_Out_1_O,
      O => OutPort_B_Out(1)
    );
  XLXI_33_Counter_and0000_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_and0000_823,
      O => XLXI_33_Counter_and0000_0
    );
  XLXI_33_Counter_and0000_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Next_State_mux0002_3_11_SW0_O_pack_1,
      O => XLXI_33_Next_State_mux0002_3_11_SW0_O
    );
  ReRun_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun_INBUF,
      O => ReRun_IBUF_332
    );
  ReRun_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ReRun,
      O => ReRun_INBUF
    );
  OutPort_A_Out_3_OBUF : X_OBUF
    port map (
      I => OutPort_A_Out_3_O,
      O => OutPort_A_Out(3)
    );
  Dbg_En_A_PORT_A_OBUF : X_OBUF
    port map (
      I => Dbg_En_A_PORT_A_O,
      O => Dbg_En_A_PORT_A
    );
  XLXI_33_Counter_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(3),
      O => XLXI_33_Counter_3_DXMUX_949
    );
  XLXI_33_Counter_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Result(2),
      O => XLXI_33_Counter_3_DYMUX_936
    );
  XLXI_33_Counter_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_and0000_0,
      O => XLXI_33_Counter_3_SRINV_927
    );
  XLXI_33_Counter_3_CLKINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_Counter_3_CLKINVNOT
    );
  XLXI_33_Counter_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_Counter_not0001,
      O => XLXI_33_Counter_3_CEINV_925
    );
  XLXI_31_ROM_DATA_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_RDATA_0_Q,
      O => XLXI_31_ROM_DATA_0_DYMUX_908
    );
  XLXI_31_ROM_DATA_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXI_31_ROM_DATA_0_CLKINV_900
    );
  XLXI_31_ROM_DATA_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_33_EN_OUT_342,
      O => XLXI_31_ROM_DATA_0_CEINV_899
    );
  Programme_Start_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Programme_Start_INBUF,
      O => Programme_Start_IBUF_331
    );
  XLXI_33_Next_State_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => XLXI_33_Next_State_0_DYMUX_1043,
      CE => VCC,
      CLK => XLXI_33_Next_State_0_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => XLXI_33_Next_State_0_SRINV_1033,
      SRST => GND,
      O => XLXI_33_Next_State(0)
    );
  XLXI_33_Next_State_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => Programme_Start_IBUF_331,
      ADR1 => XLXI_33_State(2),
      ADR2 => XLXI_33_State(1),
      ADR3 => VCC,
      O => XLXI_33_Next_State_mux0002(1)
    );
  XLXI_33_Next_State_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Next_State_3_DYMUX_1093,
      CE => VCC,
      CLK => XLXI_33_Next_State_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Next_State(2)
    );
  XLXI_33_EN_OUT_mux00001 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => XLXI_33_EN_OUT_342,
      ADR1 => XLXI_33_State(0),
      ADR2 => XLXI_33_State(2),
      ADR3 => XLXI_33_State(1),
      O => XLXI_33_EN_OUT_mux0000
    );
  XLXI_33_Next_State_mux0002_0_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => Programme_Start_IBUF_331,
      ADR1 => XLXI_33_State(3),
      ADR2 => XLXI_33_State(2),
      ADR3 => VCC,
      O => XLXI_33_Next_State_mux0002(0)
    );
  XLXI_33_Next_State_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => Programme_Start_IBUF_331,
      ADR1 => XLXI_33_State(1),
      ADR2 => XLXI_33_State(0),
      ADR3 => VCC,
      O => XLXI_33_Next_State_mux0002(2)
    );
  XLXI_33_Result_3_2 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => XLXI_33_Counter(3),
      ADR1 => XLXI_33_Counter(2),
      ADR2 => XLXI_33_Counter(1),
      ADR3 => XLXI_33_Counter(0),
      O => XLXI_33_Result(3)
    );
  XLXI_33_Next_State_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Next_State_1_DYMUX_1071,
      CE => VCC,
      CLK => XLXI_33_Next_State_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Next_State(1)
    );
  XLXI_33_ADDR_To_ROM_not00011 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => Programme_Start_IBUF_331,
      ADR1 => XLXI_33_State(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_33_ADDR_To_ROM_not0001
    );
  XLXI_33_Next_State_mux0002_3_11 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => Programme_Start_IBUF_331,
      ADR1 => XLXI_33_State(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_33_Counter_not0001_pack_2
    );
  XLXI_33_Counter_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_3_DXMUX_949,
      CE => XLXI_33_Counter_3_CEINV_925,
      CLK => XLXI_33_Counter_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_Counter_3_SRINV_927,
      O => XLXI_33_Counter(3)
    );
  XLXI_33_Counter_and0000_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE"
    )
    port map (
      ADR0 => XLXI_33_Counter(5),
      ADR1 => XLXI_33_Counter(4),
      ADR2 => XLXI_33_Counter(3),
      ADR3 => VCC,
      O => N6
    );
  XLXI_33_Counter_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_5_DYMUX_977,
      CE => XLXI_33_Counter_5_CEINV_967,
      CLK => XLXI_33_Counter_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_Counter_5_SRINV_969,
      O => XLXI_33_Counter(5)
    );
  XLXI_33_Result_5_1 : X_LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      ADR0 => XLXI_33_Counter(3),
      ADR1 => XLXI_33_Counter(5),
      ADR2 => XLXI_33_Counter(4),
      ADR3 => XLXI_33_Result_3_bdd0,
      O => XLXI_33_Result(5)
    );
  XLXI_33_Counter_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_3_DYMUX_936,
      CE => XLXI_33_Counter_3_CEINV_925,
      CLK => XLXI_33_Counter_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_Counter_3_SRINV_927,
      O => XLXI_33_Counter(2)
    );
  XLXI_33_EN_OUT : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_EN_OUT_DYMUX_1010,
      CE => XLXI_33_EN_OUT_CEINV_1001,
      CLK => XLXI_33_EN_OUT_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_EN_OUT_342
    );
  XLXI_33_Next_State_mux0002_3_21 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => XLXI_33_State(0),
      ADR1 => Programme_Start_IBUF_331,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_33_Next_State_mux0002_3_2
    );
  XLXI_33_State_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_State_1_DYMUX_1148,
      CE => VCC,
      CLK => XLXI_33_State_1_CLKINV_1145,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_State_1_SRINV_1146,
      O => XLXI_33_State(1)
    );
  XLXI_33_Result_3_11 : X_LUT4
    generic map(
      INIT => X"7F7F"
    )
    port map (
      ADR0 => XLXI_33_Counter(2),
      ADR1 => XLXI_33_Counter(1),
      ADR2 => XLXI_33_Counter(0),
      ADR3 => VCC,
      O => XLXI_33_Result_3_bdd0_pack_2
    );
  XLXI_33_Counter_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_0_DXMUX_1200,
      CE => XLXI_33_Counter_0_CEINV_1181,
      CLK => XLXI_33_Counter_0_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_Counter_0_SRINV_1183,
      O => XLXI_33_Counter(0)
    );
  XLXI_33_State_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_State_3_DXMUX_1168,
      CE => VCC,
      CLK => XLXI_33_State_3_CLKINV_1159,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_State_3_SRINV_1160,
      O => XLXI_33_State(3)
    );
  XLXI_33_Result_4_1 : X_LUT4
    generic map(
      INIT => X"9C9C"
    )
    port map (
      ADR0 => XLXI_33_Result_3_bdd0,
      ADR1 => XLXI_33_Counter(4),
      ADR2 => XLXI_33_Counter(3),
      ADR3 => VCC,
      O => XLXI_33_Result(4)
    );
  XLXI_33_State_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => XLXI_33_State_0_DYMUX_1136,
      CE => VCC,
      CLK => XLXI_33_State_0_CLKINV_1133,
      SET => GND,
      RST => GND,
      SSET => XLXI_33_State_0_SRINV_1134,
      SRST => GND,
      O => XLXI_33_State(0)
    );
  XLXI_33_Counter_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_4_DXMUX_1236,
      CE => XLXI_33_Counter_4_CEINV_1217,
      CLK => XLXI_33_Counter_4_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_Counter_4_SRINV_1219,
      O => XLXI_33_Counter(4)
    );
  XLXI_33_ADDR_To_ROM_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_5_DXMUX_1124,
      CE => XLXI_33_ADDR_To_ROM_5_CEINV_1115,
      CLK => XLXI_33_ADDR_To_ROM_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(5)
    );
  XLXI_33_ADDR_To_ROM_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_5_DYMUX_1118,
      CE => XLXI_33_ADDR_To_ROM_5_CEINV_1115,
      CLK => XLXI_33_ADDR_To_ROM_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(4)
    );
  XLXI_33_Mcount_Counter_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => XLXI_33_Counter(1),
      ADR1 => XLXI_33_Counter(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_33_Result(1)
    );
  XLXI_33_Counter_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Counter_0_DYMUX_1193,
      CE => XLXI_33_Counter_0_CEINV_1181,
      CLK => XLXI_33_Counter_0_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_Counter_0_SRINV_1183,
      O => XLXI_33_Counter(1)
    );
  XLXI_33_State_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_State_3_DYMUX_1162,
      CE => VCC,
      CLK => XLXI_33_State_3_CLKINV_1159,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_33_State_3_SRINV_1160,
      O => XLXI_33_State(2)
    );
  XLXI_33_Next_State_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_Next_State_3_DXMUX_1105,
      CE => VCC,
      CLK => XLXI_33_Next_State_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_Next_State(3)
    );
  XLXI_33_ADDR_To_ROM_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_3_DYMUX_1271,
      CE => XLXI_33_ADDR_To_ROM_3_CEINV_1268,
      CLK => XLXI_33_ADDR_To_ROM_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(2)
    );
  XLXI_33_ADDR_To_ROM_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_1_DXMUX_1257,
      CE => XLXI_33_ADDR_To_ROM_1_CEINV_1248,
      CLK => XLXI_33_ADDR_To_ROM_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(1)
    );
  XLXI_33_ADDR_To_ROM_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_3_DXMUX_1277,
      CE => XLXI_33_ADDR_To_ROM_3_CEINV_1268,
      CLK => XLXI_33_ADDR_To_ROM_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(3)
    );
  XLXI_33_ADDR_To_ROM_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_33_ADDR_To_ROM_1_DYMUX_1251,
      CE => XLXI_33_ADDR_To_ROM_1_CEINV_1248,
      CLK => XLXI_33_ADDR_To_ROM_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      O => XLXI_33_ADDR_To_ROM(0)
    );
  XLXI_31_Mrom_RDATA811 : X_LUT4
    generic map(
      INIT => X"0021"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(2),
      ADR1 => XLXI_33_ADDR_To_ROM(1),
      ADR2 => XLXI_33_ADDR_To_ROM(0),
      ADR3 => N2,
      O => XLXI_31_RDATA_6_Q
    );
  XLXI_31_ROM_DATA_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_31_ROM_DATA_6_DXMUX_887,
      CE => XLXI_31_ROM_DATA_6_CEINV_870,
      CLK => XLXI_31_ROM_DATA_6_CLKINV_871,
      SET => GND,
      RST => GND,
      O => XLXI_31_ROM_DATA_6_Q
    );
  XLXI_31_Mrom_RDATA121 : X_LUT4
    generic map(
      INIT => X"0042"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(2),
      ADR1 => XLXI_33_ADDR_To_ROM(1),
      ADR2 => XLXI_33_ADDR_To_ROM(0),
      ADR3 => N2,
      O => XLXI_31_RDATA_0_Q
    );
  XLXI_31_ROM_DATA_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_31_ROM_DATA_7_DXMUX_854,
      CE => XLXI_31_ROM_DATA_7_CEINV_837,
      CLK => XLXI_31_ROM_DATA_7_CLKINV_838,
      SET => GND,
      RST => GND,
      O => XLXI_31_ROM_DATA_7_Q
    );
  XLXI_33_Next_State_mux0002_3_11_SW0 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => XLXI_33_Counter(2),
      ADR1 => XLXI_33_Counter(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_33_Next_State_mux0002_3_11_SW0_O_pack_1
    );
  XLXI_31_Mrom_RDATA1011_SW0 : X_LUT4
    generic map(
      INIT => X"FBFB"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(3),
      ADR1 => XLXI_33_ADDR_To_ROM(0),
      ADR2 => XLXI_33_ADDR_To_ROM(4),
      ADR3 => VCC,
      O => XLXI_31_Mrom_RDATA1011_SW0_O_pack_1
    );
  XLXI_31_ROM_DATA_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => XLXI_31_ROM_DATA_0_DYMUX_908,
      CE => XLXI_31_ROM_DATA_0_CEINV_899,
      CLK => XLXI_31_ROM_DATA_0_CLKINV_900,
      SET => GND,
      RST => GND,
      O => XLXI_31_ROM_DATA_0_Q
    );
  XLXI_33_Counter_and0000 : X_LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      ADR0 => Programme_Start_IBUF_331,
      ADR1 => N6_0,
      ADR2 => XLXI_33_Next_State_mux0002_3_11_SW0_O,
      ADR3 => XLXI_33_State(3),
      O => XLXI_33_Counter_and0000_823
    );
  XLXI_31_Mrom_RDATA811_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(5),
      ADR1 => XLXI_33_ADDR_To_ROM(4),
      ADR2 => XLXI_33_ADDR_To_ROM(3),
      ADR3 => VCC,
      O => N2_pack_1
    );
  XLXI_31_Mrom_RDATA1011 : X_LUT4
    generic map(
      INIT => X"0015"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(5),
      ADR1 => XLXI_33_ADDR_To_ROM(1),
      ADR2 => XLXI_33_ADDR_To_ROM(2),
      ADR3 => XLXI_31_Mrom_RDATA1011_SW0_O,
      O => XLXI_31_RDATA_7_Q
    );
  XLXI_33_Mcount_Counter_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6A6A"
    )
    port map (
      ADR0 => XLXI_33_Counter(2),
      ADR1 => XLXI_33_Counter(1),
      ADR2 => XLXI_33_Counter(0),
      ADR3 => VCC,
      O => XLXI_33_Result(2)
    );
  ALU_TCarryOut_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_TCarryOut_OUTPUT_OFF_O1INV_372,
      O => ALU_TCarryOut_O
    );
  ALU_TCarryOut_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_TCarryOut_OUTPUT_OFF_O1INV_372
    );
  ALU_T_OutPut_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_CarryIn_INBUF,
      O => ALU_T_OutPut_0_O
    );
  ALU_T_OutPut_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_1_OUTPUT_OFF_O1INV_388,
      O => ALU_T_OutPut_1_O
    );
  ALU_T_OutPut_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_1_OUTPUT_OFF_O1INV_388
    );
  Dbg_ROM_DATA_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV_490,
      O => Dbg_ROM_DATA_1_O
    );
  Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_1_OUTPUT_OFF_O1INV_490
    );
  ALU_IN2_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_1_OUTPUT_OFF_O1INV_522,
      O => ALU_IN2_1_O
    );
  ALU_IN2_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_1_OUTPUT_OFF_O1INV_522
    );
  ALU_IN2_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_3_OUTPUT_OFF_O1INV_570,
      O => ALU_IN2_3_O
    );
  ALU_IN2_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_3_OUTPUT_OFF_O1INV_570
    );
  Dbg_ROM_DATA_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV_514,
      O => Dbg_ROM_DATA_2_O
    );
  Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_2_OUTPUT_OFF_O1INV_514
    );
  ALU_IN2_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_0_OUTPUT_OFF_O1INV_498,
      O => ALU_IN2_0_O
    );
  ALU_IN2_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_0_OUTPUT_OFF_O1INV_498
    );
  ALU_IN1_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_5_OUTPUT_OFF_O1INV_530,
      O => ALU_IN1_5_O
    );
  ALU_IN1_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_5_OUTPUT_OFF_O1INV_530
    );
  ALU_IN1_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_4_OUTPUT_OFF_O1INV_506,
      O => ALU_IN1_4_O
    );
  ALU_IN1_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_4_OUTPUT_OFF_O1INV_506
    );
  ALU_IN2_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_2_OUTPUT_OFF_O1INV_546,
      O => ALU_IN2_2_O
    );
  ALU_IN2_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_2_OUTPUT_OFF_O1INV_546
    );
  Dbg_ROM_DATA_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV_538,
      O => Dbg_ROM_DATA_3_O
    );
  Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_3_OUTPUT_OFF_O1INV_538
    );
  ALU_IN1_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_6_OUTPUT_OFF_O1INV_554,
      O => ALU_IN1_6_O
    );
  ALU_IN1_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_6_OUTPUT_OFF_O1INV_554
    );
  Dbg_ROM_DATA_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV_562,
      O => Dbg_ROM_DATA_4_O
    );
  Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_4_OUTPUT_OFF_O1INV_562
    );
  OutPort_A_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_2_OUTPUT_OFF_O1INV_664,
      O => OutPort_A_Out_2_O
    );
  OutPort_A_Out_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_2_OUTPUT_OFF_O1INV_664
    );
  ALU_IN1_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_7_OUTPUT_OFF_O1INV_578,
      O => ALU_IN1_7_O
    );
  ALU_IN1_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_7_OUTPUT_OFF_O1INV_578
    );
  Dbg_ROM_DATA_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_ROM_DATA_6_Q,
      O => Dbg_ROM_DATA_6_O
    );
  ALU_IN2_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_7_OUTPUT_OFF_O1INV_656,
      O => ALU_IN2_7_O
    );
  ALU_IN2_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_7_OUTPUT_OFF_O1INV_656
    );
  ALU_IN2_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_5_OUTPUT_OFF_O1INV_610,
      O => ALU_IN2_5_O
    );
  ALU_IN2_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_5_OUTPUT_OFF_O1INV_610
    );
  ALU_IN2_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_6_OUTPUT_OFF_O1INV_640,
      O => ALU_IN2_6_O
    );
  ALU_IN2_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_6_OUTPUT_OFF_O1INV_640
    );
  ALU_IN2_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN2_4_OUTPUT_OFF_O1INV_594,
      O => ALU_IN2_4_O
    );
  ALU_IN2_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN2_4_OUTPUT_OFF_O1INV_594
    );
  Dbg_ROM_DATA_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_ROM_DATA_7_Q,
      O => Dbg_ROM_DATA_7_O
    );
  OutPort_A_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_0_OUTPUT_OFF_O1INV_632,
      O => OutPort_A_Out_0_O
    );
  OutPort_A_Out_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_0_OUTPUT_OFF_O1INV_632
    );
  Dbg_ROM_DATA_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV_586,
      O => Dbg_ROM_DATA_5_O
    );
  Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => Dbg_ROM_DATA_5_OUTPUT_OFF_O1INV_586
    );
  OutPort_A_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_1_OUTPUT_OFF_O1INV_648,
      O => OutPort_A_Out_1_O
    );
  OutPort_A_Out_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_1_OUTPUT_OFF_O1INV_648
    );
  ALU_IN1_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_3_OUTPUT_OFF_O1INV_482,
      O => ALU_IN1_3_O
    );
  ALU_IN1_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_3_OUTPUT_OFF_O1INV_482
    );
  ALU_T_OutPut_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_2_OUTPUT_OFF_O1INV_396,
      O => ALU_T_OutPut_2_O
    );
  ALU_T_OutPut_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_2_OUTPUT_OFF_O1INV_396
    );
  ALU_T_OutPut_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_5_OUTPUT_OFF_O1INV_420,
      O => ALU_T_OutPut_5_O
    );
  ALU_T_OutPut_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_5_OUTPUT_OFF_O1INV_420
    );
  ALU_T_OutPut_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_3_OUTPUT_OFF_O1INV_404,
      O => ALU_T_OutPut_3_O
    );
  ALU_T_OutPut_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_3_OUTPUT_OFF_O1INV_404
    );
  ALU_T_OutPut_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_4_OUTPUT_OFF_O1INV_412,
      O => ALU_T_OutPut_4_O
    );
  ALU_T_OutPut_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_4_OUTPUT_OFF_O1INV_412
    );
  ALU_IN1_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_0_OUTPUT_OFF_O1INV_444,
      O => ALU_IN1_0_O
    );
  ALU_IN1_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_0_OUTPUT_OFF_O1INV_444
    );
  ALU_T_OutPut_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_6_OUTPUT_OFF_O1INV_428,
      O => ALU_T_OutPut_6_O
    );
  ALU_T_OutPut_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_6_OUTPUT_OFF_O1INV_428
    );
  ALU_T_OutPut_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_T_OutPut_7_OUTPUT_OFF_O1INV_436,
      O => ALU_T_OutPut_7_O
    );
  ALU_T_OutPut_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_T_OutPut_7_OUTPUT_OFF_O1INV_436
    );
  ALU_IN1_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_1_OUTPUT_OFF_O1INV_458,
      O => ALU_IN1_1_O
    );
  ALU_IN1_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_1_OUTPUT_OFF_O1INV_458
    );
  ALU_IN1_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ALU_IN1_2_OUTPUT_OFF_O1INV_466,
      O => ALU_IN1_2_O
    );
  ALU_IN1_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => ALU_IN1_2_OUTPUT_OFF_O1INV_466
    );
  Dbg_ROM_DATA_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => XLXI_31_ROM_DATA_0_Q,
      O => Dbg_ROM_DATA_0_O
    );
  OutPort_B_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_4_OUTPUT_OFF_O1INV_772,
      O => OutPort_B_Out_4_O
    );
  OutPort_B_Out_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_4_OUTPUT_OFF_O1INV_772
    );
  OutPort_B_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_5_OUTPUT_OFF_O1INV_780,
      O => OutPort_B_Out_5_O
    );
  OutPort_B_Out_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_5_OUTPUT_OFF_O1INV_780
    );
  OutPort_A_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_4_OUTPUT_OFF_O1INV_686,
      O => OutPort_A_Out_4_O
    );
  OutPort_A_Out_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_4_OUTPUT_OFF_O1INV_686
    );
  OutPort_A_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_7_OUTPUT_OFF_O1INV_718,
      O => OutPort_A_Out_7_O
    );
  OutPort_A_Out_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_7_OUTPUT_OFF_O1INV_718
    );
  OutPort_B_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_3_OUTPUT_OFF_O1INV_758,
      O => OutPort_B_Out_3_O
    );
  OutPort_B_Out_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_3_OUTPUT_OFF_O1INV_758
    );
  Dbg_En_A_PORT_B_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV_726,
      O => Dbg_En_A_PORT_B_O
    );
  Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => Dbg_En_A_PORT_B_OUTPUT_OFF_O1INV_726
    );
  OutPort_B_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_0_OUTPUT_OFF_O1INV_734,
      O => OutPort_B_Out_0_O
    );
  OutPort_B_Out_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_0_OUTPUT_OFF_O1INV_734
    );
  OutPort_B_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_6_OUTPUT_OFF_O1INV_788,
      O => OutPort_B_Out_6_O
    );
  OutPort_B_Out_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_6_OUTPUT_OFF_O1INV_788
    );
  OutPort_B_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_2_OUTPUT_OFF_O1INV_750,
      O => OutPort_B_Out_2_O
    );
  OutPort_B_Out_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_2_OUTPUT_OFF_O1INV_750
    );
  OutPort_B_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_7_OUTPUT_OFF_O1INV_796,
      O => OutPort_B_Out_7_O
    );
  OutPort_B_Out_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_7_OUTPUT_OFF_O1INV_796
    );
  OutPort_A_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_5_OUTPUT_OFF_O1INV_694,
      O => OutPort_A_Out_5_O
    );
  OutPort_A_Out_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_5_OUTPUT_OFF_O1INV_694
    );
  OutPort_A_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_6_OUTPUT_OFF_O1INV_702,
      O => OutPort_A_Out_6_O
    );
  OutPort_A_Out_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_6_OUTPUT_OFF_O1INV_702
    );
  OutPort_B_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_B_Out_1_OUTPUT_OFF_O1INV_742,
      O => OutPort_B_Out_1_O
    );
  OutPort_B_Out_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_B_Out_1_OUTPUT_OFF_O1INV_742
    );
  OutPort_A_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => OutPort_A_Out_3_OUTPUT_OFF_O1INV_672,
      O => OutPort_A_Out_3_O
    );
  OutPort_A_Out_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => OutPort_A_Out_3_OUTPUT_OFF_O1INV_672
    );
  Dbg_En_A_PORT_A_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV_710,
      O => Dbg_En_A_PORT_A_O
    );
  Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => Dbg_En_A_PORT_A_OUTPUT_OFF_O1INV_710
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

