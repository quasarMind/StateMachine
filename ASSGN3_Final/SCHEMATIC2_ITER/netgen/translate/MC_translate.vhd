--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MC_translate.vhd
-- /___/   /\     Timestamp: Wed Oct 29 17:44:19 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm MC -w -dir netgen/translate -ofmt vhdl -sim MC.ngd MC_translate.vhd 
-- Device	: 3s500efg320-5
-- Input file	: MC.ngd
-- Output file	: D:\ASSGN3_Final\SCHEMATIC2_ITER\netgen\translate\MC_translate.vhd
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
  signal ALU_TCarryOut_OBUF_20 : STD_LOGIC; 
  signal ALU_T_CarryIn_IBUF_22 : STD_LOGIC; 
  signal ALU_T_OutPut_0_OBUF_31 : STD_LOGIC; 
  signal ALU_T_OutPut_1_OBUF_32 : STD_LOGIC; 
  signal ALU_T_OutPut_2_OBUF_33 : STD_LOGIC; 
  signal ALU_T_OutPut_3_OBUF_34 : STD_LOGIC; 
  signal ALU_T_OutPut_4_OBUF_35 : STD_LOGIC; 
  signal ALU_T_OutPut_5_OBUF_36 : STD_LOGIC; 
  signal ALU_T_OutPut_6_OBUF_37 : STD_LOGIC; 
  signal ALU_T_OutPut_7_OBUF_38 : STD_LOGIC; 
  signal A_InPort_0_IBUF_47 : STD_LOGIC; 
  signal A_InPort_1_IBUF_48 : STD_LOGIC; 
  signal A_InPort_2_IBUF_49 : STD_LOGIC; 
  signal A_InPort_3_IBUF_50 : STD_LOGIC; 
  signal A_InPort_4_IBUF_51 : STD_LOGIC; 
  signal A_InPort_5_IBUF_52 : STD_LOGIC; 
  signal A_InPort_6_IBUF_53 : STD_LOGIC; 
  signal A_InPort_7_IBUF_54 : STD_LOGIC; 
  signal B_InPort_0_IBUF_63 : STD_LOGIC; 
  signal B_InPort_1_IBUF_64 : STD_LOGIC; 
  signal B_InPort_2_IBUF_65 : STD_LOGIC; 
  signal B_InPort_3_IBUF_66 : STD_LOGIC; 
  signal B_InPort_4_IBUF_67 : STD_LOGIC; 
  signal B_InPort_5_IBUF_68 : STD_LOGIC; 
  signal B_InPort_6_IBUF_69 : STD_LOGIC; 
  signal B_InPort_7_IBUF_70 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal FF_PRESET_IBUF_84 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Programme_Start_IBUF_109 : STD_LOGIC; 
  signal ReRun_IBUF_111 : STD_LOGIC; 
  signal XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_1 : STD_LOGIC; 
  signal XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_11_113 : STD_LOGIC; 
  signal XLXI_1_XLXI_3_carry_or0000 : STD_LOGIC; 
  signal XLXI_1_XLXI_3_carry_or0001 : STD_LOGIC; 
  signal XLXI_1_XLXI_3_vsum_2_or0003 : STD_LOGIC; 
  signal XLXI_1_XLXI_3_vsum_5_or0001 : STD_LOGIC; 
  signal XLXI_1_XLXI_3_vsum_5_or0003 : STD_LOGIC; 
  signal XLXI_10_B_OUT_0_1_128 : STD_LOGIC; 
  signal XLXI_10_B_OUT_1_1_130 : STD_LOGIC; 
  signal XLXI_10_B_OUT_2_1_132 : STD_LOGIC; 
  signal XLXI_10_B_OUT_3_1_134 : STD_LOGIC; 
  signal XLXI_10_B_OUT_4_1_136 : STD_LOGIC; 
  signal XLXI_10_B_OUT_5_1_138 : STD_LOGIC; 
  signal XLXI_10_B_OUT_6_1_140 : STD_LOGIC; 
  signal XLXI_10_B_OUT_7_1_142 : STD_LOGIC; 
  signal XLXI_31_RDATA_0_Q : STD_LOGIC; 
  signal XLXI_31_RDATA_6_Q : STD_LOGIC; 
  signal XLXI_31_RDATA_7_Q : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_0_Q : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_6_Q : STD_LOGIC; 
  signal XLXI_31_ROM_DATA_7_Q : STD_LOGIC; 
  signal XLXI_33_ADDR_To_ROM_not0001 : STD_LOGIC; 
  signal XLXI_33_CLK_inv : STD_LOGIC; 
  signal XLXI_33_Counter_and0000_163 : STD_LOGIC; 
  signal XLXI_33_Counter_not0001 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_165 : STD_LOGIC; 
  signal XLXI_33_EN_OUT_mux0000 : STD_LOGIC; 
  signal XLXI_33_Next_State_mux0002_3_2 : STD_LOGIC; 
  signal XLXI_33_Result_3_bdd0 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_1_187 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_2_188 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_3_189 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_4_190 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_5_191 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_6_192 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_7_193 : STD_LOGIC; 
  signal XLXI_4_FLIPFLOP_OUT_7_8_194 : STD_LOGIC; 
  signal XLXI_31_Mrom_RDATA1011_SW0_O : STD_LOGIC; 
  signal XLXI_33_Next_State_mux0002_3_11_SW0_O : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_ADDR_To_ROM_5_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_ADDR_To_ROM_4_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_ADDR_To_ROM_3_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_ADDR_To_ROM_2_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_ADDR_To_ROM_1_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_ADDR_To_ROM_0_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_Next_State_3_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_Next_State_2_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_Next_State_1_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_EN_OUT_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_33_Next_State_0_C : STD_LOGIC; 
  signal XLXI_10_A_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_10_B_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_33_ADDR_To_ROM : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_33_Counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_33_Next_State : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_33_Next_State_mux0002 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_33_Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_33_State : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_4_FLIPFLOP_OUT : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal XLXI_5_FLIPFLOP_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_9_B_PORT_REG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  XST_VCC : X_ONE
    port map (
      O => N1
    );
  XLXI_5_FLIPFLOP_OUT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(7),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(7),
      CE => VCC
    );
  XLXI_5_FLIPFLOP_OUT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(6),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(6),
      CE => VCC
    );
  XLXI_5_FLIPFLOP_OUT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(5),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(5),
      CE => VCC
    );
  XLXI_5_FLIPFLOP_OUT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(4),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(4),
      CE => VCC
    );
  XLXI_5_FLIPFLOP_OUT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(3),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(3),
      CE => VCC
    );
  XLXI_5_FLIPFLOP_OUT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(2),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(2),
      CE => VCC
    );
  XLXI_5_FLIPFLOP_OUT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(1),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(1),
      CE => VCC
    );
  XLXI_5_FLIPFLOP_OUT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_9_B_PORT_REG(0),
      SET => FF_PRESET_IBUF_84,
      O => XLXI_5_FLIPFLOP_OUT(0),
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT(7),
      CE => VCC
    );
  XLXI_10_A_OUT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_7_IBUF_54,
      O => XLXI_10_A_OUT(7),
      SET => GND
    );
  XLXI_10_A_OUT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_6_IBUF_53,
      O => XLXI_10_A_OUT(6),
      SET => GND
    );
  XLXI_10_A_OUT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_5_IBUF_52,
      O => XLXI_10_A_OUT(5),
      SET => GND
    );
  XLXI_10_A_OUT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_4_IBUF_51,
      O => XLXI_10_A_OUT(4),
      SET => GND
    );
  XLXI_10_A_OUT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_3_IBUF_50,
      O => XLXI_10_A_OUT(3),
      SET => GND
    );
  XLXI_10_A_OUT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_2_IBUF_49,
      O => XLXI_10_A_OUT(2),
      SET => GND
    );
  XLXI_10_A_OUT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_1_IBUF_48,
      O => XLXI_10_A_OUT(1),
      SET => GND
    );
  XLXI_10_A_OUT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => A_InPort_0_IBUF_47,
      O => XLXI_10_A_OUT(0),
      SET => GND
    );
  XLXI_10_B_OUT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_7_IBUF_70,
      O => XLXI_10_B_OUT(7),
      SET => GND
    );
  XLXI_10_B_OUT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_6_IBUF_69,
      O => XLXI_10_B_OUT(6),
      SET => GND
    );
  XLXI_10_B_OUT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_5_IBUF_68,
      O => XLXI_10_B_OUT(5),
      SET => GND
    );
  XLXI_10_B_OUT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_4_IBUF_67,
      O => XLXI_10_B_OUT(4),
      SET => GND
    );
  XLXI_10_B_OUT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_3_IBUF_66,
      O => XLXI_10_B_OUT(3),
      SET => GND
    );
  XLXI_10_B_OUT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_2_IBUF_65,
      O => XLXI_10_B_OUT(2),
      SET => GND
    );
  XLXI_10_B_OUT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_1_IBUF_64,
      O => XLXI_10_B_OUT(1),
      SET => GND
    );
  XLXI_10_B_OUT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_0_IBUF_63,
      O => XLXI_10_B_OUT(0),
      SET => GND
    );
  XLXI_31_ROM_DATA_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => XLXI_33_EN_OUT_165,
      I => XLXI_31_RDATA_7_Q,
      O => XLXI_31_ROM_DATA_7_Q,
      SET => GND,
      RST => GND
    );
  XLXI_31_ROM_DATA_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => XLXI_33_EN_OUT_165,
      I => XLXI_31_RDATA_6_Q,
      O => XLXI_31_ROM_DATA_6_Q,
      SET => GND,
      RST => GND
    );
  XLXI_31_ROM_DATA_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => XLXI_33_EN_OUT_165,
      I => XLXI_31_RDATA_0_Q,
      O => XLXI_31_ROM_DATA_0_Q,
      SET => GND,
      RST => GND
    );
  XLXI_33_Counter_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_33_CLK_inv,
      CE => XLXI_33_Counter_not0001,
      I => XLXI_33_Result(5),
      SRST => XLXI_33_Counter_and0000_163,
      O => XLXI_33_Counter(5),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_Counter_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_33_CLK_inv,
      CE => XLXI_33_Counter_not0001,
      I => XLXI_33_Result(4),
      SRST => XLXI_33_Counter_and0000_163,
      O => XLXI_33_Counter(4),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_Counter_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_33_CLK_inv,
      CE => XLXI_33_Counter_not0001,
      I => XLXI_33_Result(3),
      SRST => XLXI_33_Counter_and0000_163,
      O => XLXI_33_Counter(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_Counter_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_33_CLK_inv,
      CE => XLXI_33_Counter_not0001,
      I => XLXI_33_Result(2),
      SRST => XLXI_33_Counter_and0000_163,
      O => XLXI_33_Counter(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_Counter_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_33_CLK_inv,
      CE => XLXI_33_Counter_not0001,
      I => XLXI_33_Result(1),
      SRST => XLXI_33_Counter_and0000_163,
      O => XLXI_33_Counter(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_Counter_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_33_CLK_inv,
      CE => XLXI_33_Counter_not0001,
      I => XLXI_33_Result(0),
      SRST => XLXI_33_Counter_and0000_163,
      O => XLXI_33_Counter(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_ADDR_To_ROM_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_ADDR_To_ROM_5_C,
      CE => XLXI_33_ADDR_To_ROM_not0001,
      I => XLXI_33_Counter(5),
      O => XLXI_33_ADDR_To_ROM(5),
      SET => GND,
      RST => GND
    );
  XLXI_33_ADDR_To_ROM_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_ADDR_To_ROM_4_C,
      CE => XLXI_33_ADDR_To_ROM_not0001,
      I => XLXI_33_Counter(4),
      O => XLXI_33_ADDR_To_ROM(4),
      SET => GND,
      RST => GND
    );
  XLXI_33_ADDR_To_ROM_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_ADDR_To_ROM_3_C,
      CE => XLXI_33_ADDR_To_ROM_not0001,
      I => XLXI_33_Counter(3),
      O => XLXI_33_ADDR_To_ROM(3),
      SET => GND,
      RST => GND
    );
  XLXI_33_ADDR_To_ROM_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_ADDR_To_ROM_2_C,
      CE => XLXI_33_ADDR_To_ROM_not0001,
      I => XLXI_33_Counter(2),
      O => XLXI_33_ADDR_To_ROM(2),
      SET => GND,
      RST => GND
    );
  XLXI_33_ADDR_To_ROM_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_ADDR_To_ROM_1_C,
      CE => XLXI_33_ADDR_To_ROM_not0001,
      I => XLXI_33_Counter(1),
      O => XLXI_33_ADDR_To_ROM(1),
      SET => GND,
      RST => GND
    );
  XLXI_33_ADDR_To_ROM_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_ADDR_To_ROM_0_C,
      CE => XLXI_33_ADDR_To_ROM_not0001,
      I => XLXI_33_Counter(0),
      O => XLXI_33_ADDR_To_ROM(0),
      SET => GND,
      RST => GND
    );
  XLXI_33_Next_State_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_Next_State_3_C,
      I => XLXI_33_Next_State_mux0002(0),
      O => XLXI_33_Next_State(3),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_33_Next_State_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_Next_State_2_C,
      I => XLXI_33_Next_State_mux0002(1),
      O => XLXI_33_Next_State(2),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_33_Next_State_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_Next_State_1_C,
      I => XLXI_33_Next_State_mux0002(2),
      O => XLXI_33_Next_State(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_33_EN_OUT : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_EN_OUT_C,
      CE => Programme_Start_IBUF_109,
      I => XLXI_33_EN_OUT_mux0000,
      O => XLXI_33_EN_OUT_165,
      SET => GND,
      RST => GND
    );
  XLXI_9_B_PORT_REG_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(7),
      O => XLXI_9_B_PORT_REG(7),
      CE => VCC,
      SET => GND
    );
  XLXI_9_B_PORT_REG_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(6),
      O => XLXI_9_B_PORT_REG(6),
      CE => VCC,
      SET => GND
    );
  XLXI_9_B_PORT_REG_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(5),
      O => XLXI_9_B_PORT_REG(5),
      CE => VCC,
      SET => GND
    );
  XLXI_9_B_PORT_REG_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(4),
      O => XLXI_9_B_PORT_REG(4),
      CE => VCC,
      SET => GND
    );
  XLXI_9_B_PORT_REG_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(3),
      O => XLXI_9_B_PORT_REG(3),
      CE => VCC,
      SET => GND
    );
  XLXI_9_B_PORT_REG_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(2),
      O => XLXI_9_B_PORT_REG(2),
      CE => VCC,
      SET => GND
    );
  XLXI_9_B_PORT_REG_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(1),
      O => XLXI_9_B_PORT_REG(1),
      CE => VCC,
      SET => GND
    );
  XLXI_9_B_PORT_REG_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => XLXI_10_B_OUT(0),
      O => XLXI_9_B_PORT_REG(0),
      CE => VCC,
      SET => GND
    );
  XLXI_33_Mcount_Counter_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => XLXI_33_Counter(1),
      ADR1 => XLXI_33_Counter(0),
      O => XLXI_33_Result(1)
    );
  XLXI_33_Mcount_Counter_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => XLXI_33_Counter(2),
      ADR1 => XLXI_33_Counter(1),
      ADR2 => XLXI_33_Counter(0),
      O => XLXI_33_Result(2)
    );
  XLXI_33_Result_3_11 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => XLXI_33_Counter(2),
      ADR1 => XLXI_33_Counter(1),
      ADR2 => XLXI_33_Counter(0),
      O => XLXI_33_Result_3_bdd0
    );
  XLXI_33_Result_4_1 : X_LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      ADR0 => XLXI_33_Result_3_bdd0,
      ADR1 => XLXI_33_Counter(4),
      ADR2 => XLXI_33_Counter(3),
      O => XLXI_33_Result(4)
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
  XLXI_33_Next_State_mux0002_2_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => Programme_Start_IBUF_109,
      ADR1 => XLXI_33_State(1),
      ADR2 => XLXI_33_State(0),
      O => XLXI_33_Next_State_mux0002(2)
    );
  XLXI_33_Next_State_mux0002_1_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => Programme_Start_IBUF_109,
      ADR1 => XLXI_33_State(2),
      ADR2 => XLXI_33_State(1),
      O => XLXI_33_Next_State_mux0002(1)
    );
  XLXI_33_Next_State_mux0002_0_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => Programme_Start_IBUF_109,
      ADR1 => XLXI_33_State(3),
      ADR2 => XLXI_33_State(2),
      O => XLXI_33_Next_State_mux0002(0)
    );
  XLXI_33_EN_OUT_mux00001 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => XLXI_33_EN_OUT_165,
      ADR1 => XLXI_33_State(0),
      ADR2 => XLXI_33_State(2),
      ADR3 => XLXI_33_State(1),
      O => XLXI_33_EN_OUT_mux0000
    );
  XLXI_1_XLXI_3_Mxor_xor0005_xo_0_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => ALU_T_CarryIn_IBUF_22,
      ADR1 => XLXI_4_FLIPFLOP_OUT(7),
      ADR2 => XLXI_5_FLIPFLOP_OUT(0),
      O => ALU_T_OutPut_0_OBUF_31
    );
  XLXI_33_ADDR_To_ROM_not00011 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Programme_Start_IBUF_109,
      ADR1 => XLXI_33_State(0),
      O => XLXI_33_ADDR_To_ROM_not0001
    );
  XLXI_31_Mrom_RDATA1011 : X_LUT4
    generic map(
      INIT => X"0015"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(5),
      ADR1 => XLXI_33_ADDR_To_ROM(1),
      ADR2 => XLXI_33_ADDR_To_ROM(2),
      ADR3 => N01,
      O => XLXI_31_RDATA_7_Q
    );
  XLXI_31_Mrom_RDATA811 : X_LUT4
    generic map(
      INIT => X"0021"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(2),
      ADR1 => XLXI_33_ADDR_To_ROM(1),
      ADR2 => XLXI_33_ADDR_To_ROM(0),
      ADR3 => N10,
      O => XLXI_31_RDATA_6_Q
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
  XLXI_33_Next_State_mux0002_3_11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Programme_Start_IBUF_109,
      ADR1 => XLXI_33_State(3),
      O => XLXI_33_Counter_not0001
    );
  XLXI_33_Counter_and0000_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => XLXI_33_Counter(5),
      ADR1 => XLXI_33_Counter(4),
      ADR2 => XLXI_33_Counter(3),
      O => N6
    );
  XLXI_1_XLXI_3_carry_or00011 : X_LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      ADR0 => XLXI_5_FLIPFLOP_OUT(5),
      ADR1 => XLXI_1_XLXI_3_vsum_5_or0003,
      ADR2 => XLXI_4_FLIPFLOP_OUT(7),
      O => XLXI_1_XLXI_3_carry_or0001
    );
  XLXI_1_XLXI_3_carry_or00001 : X_LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      ADR0 => XLXI_5_FLIPFLOP_OUT(2),
      ADR1 => XLXI_1_XLXI_3_vsum_2_or0003,
      ADR2 => XLXI_4_FLIPFLOP_OUT(7),
      O => XLXI_1_XLXI_3_carry_or0000
    );
  ReRun_IBUF : X_BUF
    port map (
      I => ReRun,
      O => ReRun_IBUF_111
    );
  FF_PRESET_IBUF : X_BUF
    port map (
      I => FF_PRESET,
      O => FF_PRESET_IBUF_84
    );
  Programme_Start_IBUF : X_BUF
    port map (
      I => Programme_Start,
      O => Programme_Start_IBUF_109
    );
  ALU_T_CarryIn_IBUF : X_BUF
    port map (
      I => ALU_T_CarryIn,
      O => ALU_T_CarryIn_IBUF_22
    );
  B_InPort_7_IBUF : X_BUF
    port map (
      I => B_InPort(7),
      O => B_InPort_7_IBUF_70
    );
  B_InPort_6_IBUF : X_BUF
    port map (
      I => B_InPort(6),
      O => B_InPort_6_IBUF_69
    );
  B_InPort_5_IBUF : X_BUF
    port map (
      I => B_InPort(5),
      O => B_InPort_5_IBUF_68
    );
  B_InPort_4_IBUF : X_BUF
    port map (
      I => B_InPort(4),
      O => B_InPort_4_IBUF_67
    );
  B_InPort_3_IBUF : X_BUF
    port map (
      I => B_InPort(3),
      O => B_InPort_3_IBUF_66
    );
  B_InPort_2_IBUF : X_BUF
    port map (
      I => B_InPort(2),
      O => B_InPort_2_IBUF_65
    );
  B_InPort_1_IBUF : X_BUF
    port map (
      I => B_InPort(1),
      O => B_InPort_1_IBUF_64
    );
  B_InPort_0_IBUF : X_BUF
    port map (
      I => B_InPort(0),
      O => B_InPort_0_IBUF_63
    );
  A_InPort_7_IBUF : X_BUF
    port map (
      I => A_InPort(7),
      O => A_InPort_7_IBUF_54
    );
  A_InPort_6_IBUF : X_BUF
    port map (
      I => A_InPort(6),
      O => A_InPort_6_IBUF_53
    );
  A_InPort_5_IBUF : X_BUF
    port map (
      I => A_InPort(5),
      O => A_InPort_5_IBUF_52
    );
  A_InPort_4_IBUF : X_BUF
    port map (
      I => A_InPort(4),
      O => A_InPort_4_IBUF_51
    );
  A_InPort_3_IBUF : X_BUF
    port map (
      I => A_InPort(3),
      O => A_InPort_3_IBUF_50
    );
  A_InPort_2_IBUF : X_BUF
    port map (
      I => A_InPort(2),
      O => A_InPort_2_IBUF_49
    );
  A_InPort_1_IBUF : X_BUF
    port map (
      I => A_InPort(1),
      O => A_InPort_1_IBUF_48
    );
  A_InPort_0_IBUF : X_BUF
    port map (
      I => A_InPort(0),
      O => A_InPort_0_IBUF_47
    );
  XLXI_33_State_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => XLXI_33_Next_State(3),
      SRST => ReRun_IBUF_111,
      O => XLXI_33_State(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_State_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => XLXI_33_Next_State(2),
      SRST => ReRun_IBUF_111,
      O => XLXI_33_State(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_State_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => XLXI_33_Next_State(1),
      SRST => ReRun_IBUF_111,
      O => XLXI_33_State(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_33_State_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => CLK_BUFGP,
      I => ReRun_IBUF_111,
      SSET => XLXI_33_Next_State(0),
      O => XLXI_33_State(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  XLXI_33_Next_State_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_33_Next_State_0_C,
      I => XLXI_33_Next_State_mux0002_3_2,
      SSET => XLXI_33_Counter_not0001,
      O => XLXI_33_Next_State(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  XLXI_33_Next_State_mux0002_3_21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_33_State(0),
      ADR1 => Programme_Start_IBUF_109,
      O => XLXI_33_Next_State_mux0002_3_2
    );
  XLXI_33_Counter_and0000 : X_LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      ADR0 => Programme_Start_IBUF_109,
      ADR1 => N6,
      ADR2 => N8,
      ADR3 => XLXI_33_State(3),
      O => XLXI_33_Counter_and0000_163
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
  XLXI_1_XLXI_3_Mxor_xor0004_xo_0_1 : X_LUT4
    generic map(
      INIT => X"9CC6"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(1),
      ADR2 => XLXI_5_FLIPFLOP_OUT(0),
      ADR3 => ALU_T_CarryIn_IBUF_22,
      O => ALU_T_OutPut_1_OBUF_32
    );
  XLXI_1_XLXI_3_Mxor_xor0003_xo_0_1 : X_LUT4
    generic map(
      INIT => X"9CC6"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(3),
      ADR2 => XLXI_5_FLIPFLOP_OUT(2),
      ADR3 => XLXI_1_XLXI_3_vsum_2_or0003,
      O => ALU_T_OutPut_3_OBUF_34
    );
  XLXI_1_XLXI_3_Mxor_xor0002_xo_0_1 : X_LUT4
    generic map(
      INIT => X"9CC6"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(4),
      ADR2 => XLXI_5_FLIPFLOP_OUT(3),
      ADR3 => XLXI_1_XLXI_3_carry_or0000,
      O => ALU_T_OutPut_4_OBUF_35
    );
  XLXI_1_XLXI_3_Mxor_vsum_5_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"9CC6"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(5),
      ADR2 => XLXI_5_FLIPFLOP_OUT(4),
      ADR3 => XLXI_1_XLXI_3_vsum_5_or0001,
      O => ALU_T_OutPut_5_OBUF_36
    );
  XLXI_1_XLXI_3_Adder_carryout1 : X_LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      ADR0 => XLXI_5_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(6),
      ADR2 => XLXI_1_XLXI_3_carry_or0001,
      ADR3 => XLXI_4_FLIPFLOP_OUT(7),
      O => ALU_TCarryOut_OBUF_20
    );
  XLXI_1_XLXI_3_Mxor_xor0001_xo_0_1 : X_LUT4
    generic map(
      INIT => X"9CC6"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(6),
      ADR2 => XLXI_5_FLIPFLOP_OUT(5),
      ADR3 => XLXI_1_XLXI_3_vsum_5_or0003,
      O => ALU_T_OutPut_6_OBUF_37
    );
  XLXI_1_XLXI_3_Mxor_xor0000_xo_0_1 : X_LUT4
    generic map(
      INIT => X"9CC6"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(7),
      ADR2 => XLXI_1_XLXI_3_carry_or0001,
      ADR3 => XLXI_5_FLIPFLOP_OUT(6),
      O => ALU_T_OutPut_7_OBUF_38
    );
  XLXI_1_XLXI_3_vsum_5_or00031 : X_LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      ADR0 => XLXI_5_FLIPFLOP_OUT(4),
      ADR1 => XLXI_5_FLIPFLOP_OUT(3),
      ADR2 => XLXI_1_XLXI_3_carry_or0000,
      ADR3 => XLXI_4_FLIPFLOP_OUT(7),
      O => XLXI_1_XLXI_3_vsum_5_or0003
    );
  XLXI_1_XLXI_3_vsum_2_or00031 : X_LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      ADR0 => XLXI_5_FLIPFLOP_OUT(1),
      ADR1 => XLXI_5_FLIPFLOP_OUT(0),
      ADR2 => ALU_T_CarryIn_IBUF_22,
      ADR3 => XLXI_4_FLIPFLOP_OUT(7),
      O => XLXI_1_XLXI_3_vsum_2_or0003
    );
  XLXI_1_XLXI_3_vsum_5_or00011 : X_LUT4
    generic map(
      INIT => X"FE80"
    )
    port map (
      ADR0 => XLXI_5_FLIPFLOP_OUT(3),
      ADR1 => XLXI_5_FLIPFLOP_OUT(2),
      ADR2 => XLXI_1_XLXI_3_vsum_2_or0003,
      ADR3 => XLXI_4_FLIPFLOP_OUT(7),
      O => XLXI_1_XLXI_3_vsum_5_or0001
    );
  XLXI_33_CLK_inv1_INV_0 : X_INV
    port map (
      I => CLK_BUFGP,
      O => XLXI_33_CLK_inv
    );
  XLXI_33_Mcount_Counter_xor_0_11_INV_0 : X_INV
    port map (
      I => XLXI_33_Counter(0),
      O => XLXI_33_Result(0)
    );
  XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_11 : X_LUT4
    generic map(
      INIT => X"BFFD"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(1),
      ADR2 => XLXI_5_FLIPFLOP_OUT(0),
      ADR3 => ALU_T_CarryIn_IBUF_22,
      O => XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_1
    );
  XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_12 : X_LUT4
    generic map(
      INIT => X"4002"
    )
    port map (
      ADR0 => XLXI_4_FLIPFLOP_OUT(7),
      ADR1 => XLXI_5_FLIPFLOP_OUT(1),
      ADR2 => XLXI_5_FLIPFLOP_OUT(0),
      ADR3 => ALU_T_CarryIn_IBUF_22,
      O => XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_11_113
    );
  XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_1_f5 : X_MUX2
    port map (
      IA => XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_11_113,
      IB => XLXI_1_XLXI_3_Mxor_vsum_2_xor0000_xo_0_1,
      SEL => XLXI_5_FLIPFLOP_OUT(2),
      O => ALU_T_OutPut_2_OBUF_33
    );
  XLXI_10_B_OUT_7_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_7_IBUF_70,
      O => XLXI_10_B_OUT_7_1_142,
      SET => GND
    );
  XLXI_10_B_OUT_6_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_6_IBUF_69,
      O => XLXI_10_B_OUT_6_1_140,
      SET => GND
    );
  XLXI_10_B_OUT_5_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_5_IBUF_68,
      O => XLXI_10_B_OUT_5_1_138,
      SET => GND
    );
  XLXI_10_B_OUT_4_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_4_IBUF_67,
      O => XLXI_10_B_OUT_4_1_136,
      SET => GND
    );
  XLXI_10_B_OUT_3_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_3_IBUF_66,
      O => XLXI_10_B_OUT_3_1_134,
      SET => GND
    );
  XLXI_10_B_OUT_2_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_2_IBUF_65,
      O => XLXI_10_B_OUT_2_1_132,
      SET => GND
    );
  XLXI_10_B_OUT_1_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_1_IBUF_64,
      O => XLXI_10_B_OUT_1_1_130,
      SET => GND
    );
  XLXI_10_B_OUT_0_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => N1,
      RST => N1,
      I => B_InPort_0_IBUF_63,
      O => XLXI_10_B_OUT_0_1_128,
      SET => GND
    );
  XLXI_4_FLIPFLOP_OUT_7_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_1_187,
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_2_188,
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_3_189,
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_4_190,
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_5_191,
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_6_192,
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_7_193,
      CE => VCC
    );
  XLXI_4_FLIPFLOP_OUT_7_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      RST => N1,
      I => N0,
      SET => FF_PRESET_IBUF_84,
      O => XLXI_4_FLIPFLOP_OUT_7_8_194,
      CE => VCC
    );
  XLXI_31_Mrom_RDATA1011_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => XLXI_31_Mrom_RDATA1011_SW0_O,
      O => N01
    );
  XLXI_31_Mrom_RDATA1011_SW0 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(3),
      ADR1 => XLXI_33_ADDR_To_ROM(0),
      ADR2 => XLXI_33_ADDR_To_ROM(4),
      O => XLXI_31_Mrom_RDATA1011_SW0_O
    );
  XLXI_31_Mrom_RDATA811_SW0_LUT3_D_BUF : X_BUF
    port map (
      I => N2,
      O => N10
    );
  XLXI_31_Mrom_RDATA811_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => XLXI_33_ADDR_To_ROM(5),
      ADR1 => XLXI_33_ADDR_To_ROM(4),
      ADR2 => XLXI_33_ADDR_To_ROM(3),
      O => N2
    );
  XLXI_33_Next_State_mux0002_3_11_SW0_LUT2_L_BUF : X_BUF
    port map (
      I => XLXI_33_Next_State_mux0002_3_11_SW0_O,
      O => N8
    );
  XLXI_33_Next_State_mux0002_3_11_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_33_Counter(2),
      ADR1 => XLXI_33_Counter(1),
      O => XLXI_33_Next_State_mux0002_3_11_SW0_O
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_2,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_2
    );
  ALU_IN1_0_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_8_194,
      O => ALU_IN1(0)
    );
  ALU_IN1_1_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_7_193,
      O => ALU_IN1(1)
    );
  ALU_IN1_2_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_6_192,
      O => ALU_IN1(2)
    );
  ALU_IN1_3_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_5_191,
      O => ALU_IN1(3)
    );
  ALU_IN1_4_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_4_190,
      O => ALU_IN1(4)
    );
  ALU_IN1_5_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_3_189,
      O => ALU_IN1(5)
    );
  ALU_IN1_6_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_2_188,
      O => ALU_IN1(6)
    );
  ALU_IN1_7_OBUF : X_OBUF
    port map (
      I => XLXI_4_FLIPFLOP_OUT_7_1_187,
      O => ALU_IN1(7)
    );
  ALU_IN2_0_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(0),
      O => ALU_IN2(0)
    );
  ALU_IN2_1_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(1),
      O => ALU_IN2(1)
    );
  ALU_IN2_2_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(2),
      O => ALU_IN2(2)
    );
  ALU_IN2_3_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(3),
      O => ALU_IN2(3)
    );
  ALU_IN2_4_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(4),
      O => ALU_IN2(4)
    );
  ALU_IN2_5_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(5),
      O => ALU_IN2(5)
    );
  ALU_IN2_6_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(6),
      O => ALU_IN2(6)
    );
  ALU_IN2_7_OBUF : X_OBUF
    port map (
      I => XLXI_5_FLIPFLOP_OUT(7),
      O => ALU_IN2(7)
    );
  ALU_TCarryOut_OBUF : X_OBUF
    port map (
      I => ALU_TCarryOut_OBUF_20,
      O => ALU_TCarryOut
    );
  ALU_T_OutPut_0_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_0_OBUF_31,
      O => ALU_T_OutPut(0)
    );
  ALU_T_OutPut_1_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_1_OBUF_32,
      O => ALU_T_OutPut(1)
    );
  ALU_T_OutPut_2_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_2_OBUF_33,
      O => ALU_T_OutPut(2)
    );
  ALU_T_OutPut_3_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_3_OBUF_34,
      O => ALU_T_OutPut(3)
    );
  ALU_T_OutPut_4_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_4_OBUF_35,
      O => ALU_T_OutPut(4)
    );
  ALU_T_OutPut_5_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_5_OBUF_36,
      O => ALU_T_OutPut(5)
    );
  ALU_T_OutPut_6_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_6_OBUF_37,
      O => ALU_T_OutPut(6)
    );
  ALU_T_OutPut_7_OBUF : X_OBUF
    port map (
      I => ALU_T_OutPut_7_OBUF_38,
      O => ALU_T_OutPut(7)
    );
  Dbg_En_A_PORT_A_OBUF : X_OBUF
    port map (
      I => N1,
      O => Dbg_En_A_PORT_A
    );
  Dbg_En_A_PORT_B_OBUF : X_OBUF
    port map (
      I => N1,
      O => Dbg_En_A_PORT_B
    );
  Dbg_ROM_DATA_0_OBUF : X_OBUF
    port map (
      I => XLXI_31_ROM_DATA_0_Q,
      O => Dbg_ROM_DATA(0)
    );
  Dbg_ROM_DATA_1_OBUF : X_OBUF
    port map (
      I => N0,
      O => Dbg_ROM_DATA(1)
    );
  Dbg_ROM_DATA_2_OBUF : X_OBUF
    port map (
      I => N0,
      O => Dbg_ROM_DATA(2)
    );
  Dbg_ROM_DATA_3_OBUF : X_OBUF
    port map (
      I => N0,
      O => Dbg_ROM_DATA(3)
    );
  Dbg_ROM_DATA_4_OBUF : X_OBUF
    port map (
      I => N0,
      O => Dbg_ROM_DATA(4)
    );
  Dbg_ROM_DATA_5_OBUF : X_OBUF
    port map (
      I => N0,
      O => Dbg_ROM_DATA(5)
    );
  Dbg_ROM_DATA_6_OBUF : X_OBUF
    port map (
      I => XLXI_31_ROM_DATA_6_Q,
      O => Dbg_ROM_DATA(6)
    );
  Dbg_ROM_DATA_7_OBUF : X_OBUF
    port map (
      I => XLXI_31_ROM_DATA_7_Q,
      O => Dbg_ROM_DATA(7)
    );
  OutPort_A_Out_0_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(0),
      O => OutPort_A_Out(0)
    );
  OutPort_A_Out_1_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(1),
      O => OutPort_A_Out(1)
    );
  OutPort_A_Out_2_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(2),
      O => OutPort_A_Out(2)
    );
  OutPort_A_Out_3_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(3),
      O => OutPort_A_Out(3)
    );
  OutPort_A_Out_4_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(4),
      O => OutPort_A_Out(4)
    );
  OutPort_A_Out_5_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(5),
      O => OutPort_A_Out(5)
    );
  OutPort_A_Out_6_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(6),
      O => OutPort_A_Out(6)
    );
  OutPort_A_Out_7_OBUF : X_OBUF
    port map (
      I => XLXI_10_A_OUT(7),
      O => OutPort_A_Out(7)
    );
  OutPort_B_Out_0_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_0_1_128,
      O => OutPort_B_Out(0)
    );
  OutPort_B_Out_1_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_1_1_130,
      O => OutPort_B_Out(1)
    );
  OutPort_B_Out_2_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_2_1_132,
      O => OutPort_B_Out(2)
    );
  OutPort_B_Out_3_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_3_1_134,
      O => OutPort_B_Out(3)
    );
  OutPort_B_Out_4_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_4_1_136,
      O => OutPort_B_Out(4)
    );
  OutPort_B_Out_5_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_5_1_138,
      O => OutPort_B_Out(5)
    );
  OutPort_B_Out_6_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_6_1_140,
      O => OutPort_B_Out(6)
    );
  OutPort_B_Out_7_OBUF : X_OBUF
    port map (
      I => XLXI_10_B_OUT_7_1_142,
      O => OutPort_B_Out(7)
    );
  NlwBlock_MC_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_MC_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_XLXI_33_ADDR_To_ROM_5_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_ADDR_To_ROM_5_C
    );
  NlwInverterBlock_XLXI_33_ADDR_To_ROM_4_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_ADDR_To_ROM_4_C
    );
  NlwInverterBlock_XLXI_33_ADDR_To_ROM_3_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_ADDR_To_ROM_3_C
    );
  NlwInverterBlock_XLXI_33_ADDR_To_ROM_2_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_ADDR_To_ROM_2_C
    );
  NlwInverterBlock_XLXI_33_ADDR_To_ROM_1_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_ADDR_To_ROM_1_C
    );
  NlwInverterBlock_XLXI_33_ADDR_To_ROM_0_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_ADDR_To_ROM_0_C
    );
  NlwInverterBlock_XLXI_33_Next_State_3_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_Next_State_3_C
    );
  NlwInverterBlock_XLXI_33_Next_State_2_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_Next_State_2_C
    );
  NlwInverterBlock_XLXI_33_Next_State_1_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_Next_State_1_C
    );
  NlwInverterBlock_XLXI_33_EN_OUT_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_EN_OUT_C
    );
  NlwInverterBlock_XLXI_33_Next_State_0_C : X_INV
    port map (
      I => CLK_BUFGP,
      O => NlwInverterSignal_XLXI_33_Next_State_0_C
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

