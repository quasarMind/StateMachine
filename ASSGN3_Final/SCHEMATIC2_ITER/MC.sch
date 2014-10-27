<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ALU_T_CarryIn" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4(7:0)" />
        <signal name="ALU_TCarryOut" />
        <signal name="ALU_T_OutPut(7:0)" />
        <signal name="XLXN_7(7:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9(7:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="CLK" />
        <signal name="FF_PRESET" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_22(7:0)" />
        <signal name="XLXN_23(7:0)" />
        <signal name="XLXN_24(7:0)" />
        <signal name="XLXN_28(7:0)" />
        <signal name="OutPort_A_Out(7:0)" />
        <signal name="OutPort_B_Out(7:0)" />
        <signal name="Dbg_En_A_PORT_A" />
        <signal name="Dbg_En_A_PORT_B" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95(1:0)" />
        <signal name="XLXN_96(1:0)">
        </signal>
        <signal name="XLXN_97(1:0)">
        </signal>
        <signal name="Programme_Start" />
        <signal name="Dbg_ROM_DATA(7:0)" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105(1:0)" />
        <signal name="ReRun" />
        <signal name="A_InPort(7:0)" />
        <signal name="B_InPort(7:0)" />
        <signal name="XLXN_117(5:0)" />
        <signal name="XLXN_119(1:0)">
        </signal>
        <port polarity="Input" name="ALU_T_CarryIn" />
        <port polarity="Output" name="ALU_TCarryOut" />
        <port polarity="Output" name="ALU_T_OutPut(7:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="FF_PRESET" />
        <port polarity="Output" name="OutPort_A_Out(7:0)" />
        <port polarity="Output" name="OutPort_B_Out(7:0)" />
        <port polarity="Output" name="Dbg_En_A_PORT_A" />
        <port polarity="Output" name="Dbg_En_A_PORT_B" />
        <port polarity="Input" name="Programme_Start" />
        <port polarity="Output" name="Dbg_ROM_DATA(7:0)" />
        <port polarity="Input" name="ReRun" />
        <port polarity="Input" name="A_InPort(7:0)" />
        <port polarity="Input" name="B_InPort(7:0)" />
        <blockdef name="ALU_T">
            <timestamp>2014-10-26T5:30:21</timestamp>
            <rect width="352" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="MUX4to1">
            <timestamp>2014-10-26T5:30:44</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
        </blockdef>
        <blockdef name="FLIPFLOP">
            <timestamp>2014-10-26T5:31:3</timestamp>
            <rect width="448" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="512" y="-236" height="24" />
            <line x2="576" y1="-224" y2="-224" x1="512" />
        </blockdef>
        <blockdef name="MUX1to4">
            <timestamp>2014-10-26T5:57:8</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="InputPort2X8bit">
            <timestamp>2014-10-26T5:55:20</timestamp>
            <rect width="432" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-492" height="24" />
            <line x2="560" y1="-480" y2="-480" x1="496" />
        </blockdef>
        <blockdef name="OutPort2X8bit">
            <timestamp>2014-10-26T6:1:28</timestamp>
            <rect width="336" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="ROMMSTEIN">
            <timestamp>2014-10-26T18:3:47</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
        </blockdef>
        <blockdef name="STATE_MACHINE">
            <timestamp>2014-10-27T9:8:25</timestamp>
            <line x2="576" y1="288" y2="288" x1="512" />
            <rect width="64" x="512" y="20" height="24" />
            <line x2="576" y1="32" y2="32" x1="512" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="576" y1="-736" y2="-736" x1="512" />
            <line x2="576" y1="-480" y2="-480" x1="512" />
            <line x2="576" y1="-416" y2="-416" x1="512" />
            <line x2="576" y1="-352" y2="-352" x1="512" />
            <rect width="64" x="512" y="-300" height="24" />
            <line x2="576" y1="-288" y2="-288" x1="512" />
            <rect width="64" x="512" y="-236" height="24" />
            <line x2="576" y1="-224" y2="-224" x1="512" />
            <rect width="64" x="512" y="-172" height="24" />
            <line x2="576" y1="-160" y2="-160" x1="512" />
            <rect width="64" x="512" y="-108" height="24" />
            <line x2="576" y1="-96" y2="-96" x1="512" />
            <rect width="64" x="512" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="512" />
            <rect width="448" x="64" y="-832" height="1152" />
        </blockdef>
        <block symbolname="ALU_T" name="XLXI_1">
            <blockpin signalname="XLXN_119(1:0)" name="MUX_Select(1:0)" />
            <blockpin signalname="ALU_T_CarryIn" name="Adder_CarryIn" />
            <blockpin signalname="XLXN_3(7:0)" name="Input1(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="Input2(7:0)" />
            <blockpin signalname="ALU_TCarryOut" name="Adder_CarryOut" />
            <blockpin signalname="ALU_T_OutPut(7:0)" name="OutPut(7:0)" />
        </block>
        <block symbolname="MUX4to1" name="XLXI_2">
            <blockpin signalname="XLXN_7(7:0)" name="MUX_PIN1(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="MUX_PIN2(7:0)" />
            <blockpin signalname="XLXN_9(7:0)" name="MUX_PIN3(7:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="MUX_PIN4(7:0)" />
            <blockpin signalname="XLXN_96(1:0)" name="MUX_SEL(1:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="MUX_OUT(7:0)" />
        </block>
        <block symbolname="MUX4to1" name="XLXI_3">
            <blockpin signalname="XLXN_7(7:0)" name="MUX_PIN1(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="MUX_PIN2(7:0)" />
            <blockpin signalname="XLXN_9(7:0)" name="MUX_PIN3(7:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="MUX_PIN4(7:0)" />
            <blockpin signalname="XLXN_97(1:0)" name="MUX_SEL(1:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="MUX_OUT(7:0)" />
        </block>
        <block symbolname="FLIPFLOP" name="XLXI_4">
            <blockpin signalname="XLXN_94" name="FLIPFLOP_RESET" />
            <blockpin signalname="FF_PRESET" name="FLIPFLOP_PRESET" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_21(7:0)" name="FLIPFLOP_IN(7:0)" />
            <blockpin signalname="XLXN_7(7:0)" name="FLIPFLOP_OUT(7:0)" />
        </block>
        <block symbolname="FLIPFLOP" name="XLXI_5">
            <blockpin signalname="XLXN_94" name="FLIPFLOP_RESET" />
            <blockpin signalname="FF_PRESET" name="FLIPFLOP_PRESET" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_22(7:0)" name="FLIPFLOP_IN(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="FLIPFLOP_OUT(7:0)" />
        </block>
        <block symbolname="FLIPFLOP" name="XLXI_6">
            <blockpin signalname="XLXN_94" name="FLIPFLOP_RESET" />
            <blockpin signalname="FF_PRESET" name="FLIPFLOP_PRESET" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_23(7:0)" name="FLIPFLOP_IN(7:0)" />
            <blockpin signalname="XLXN_9(7:0)" name="FLIPFLOP_OUT(7:0)" />
        </block>
        <block symbolname="FLIPFLOP" name="XLXI_7">
            <blockpin signalname="XLXN_94" name="FLIPFLOP_RESET" />
            <blockpin signalname="FF_PRESET" name="FLIPFLOP_PRESET" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_24(7:0)" name="FLIPFLOP_IN(7:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="FLIPFLOP_OUT(7:0)" />
        </block>
        <block symbolname="MUX1to4" name="XLXI_8">
            <blockpin signalname="XLXN_28(7:0)" name="MUX_In(7:0)" />
            <blockpin signalname="XLXN_95(1:0)" name="MUX_SEL(1:0)" />
            <blockpin signalname="XLXN_21(7:0)" name="MUX_OUT1(7:0)" />
            <blockpin signalname="XLXN_22(7:0)" name="MUX_OUT2(7:0)" />
            <blockpin signalname="XLXN_23(7:0)" name="MUX_OUT3(7:0)" />
            <blockpin signalname="XLXN_24(7:0)" name="MUX_OUT4(7:0)" />
        </block>
        <block symbolname="InputPort2X8bit" name="XLXI_9">
            <blockpin signalname="Dbg_En_A_PORT_A" name="ENABLE_PORT_A" />
            <blockpin signalname="Dbg_En_A_PORT_B" name="ENABLE_PORT_B" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_94" name="RESET" />
            <blockpin signalname="A_InPort(7:0)" name="A_PORT(7:0)" />
            <blockpin signalname="B_InPort(7:0)" name="B_PORT(7:0)" />
            <blockpin signalname="ALU_T_OutPut(7:0)" name="C_BUS_IN(7:0)" />
            <blockpin signalname="XLXN_105(1:0)" name="OUTPUT_SELECT(1:0)" />
            <blockpin signalname="XLXN_28(7:0)" name="C_BUS_OUT(7:0)" />
        </block>
        <block symbolname="OutPort2X8bit" name="XLXI_10">
            <blockpin signalname="Dbg_En_A_PORT_A" name="ENABLE_A_OUT" />
            <blockpin signalname="Dbg_En_A_PORT_B" name="ENABLE_B_OUT" />
            <blockpin signalname="XLXN_94" name="RESET_OUTPORT" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="A_InPort(7:0)" name="A_IN(7:0)" />
            <blockpin signalname="B_InPort(7:0)" name="B_IN(7:0)" />
            <blockpin signalname="OutPort_A_Out(7:0)" name="A_OUT(7:0)" />
            <blockpin signalname="OutPort_B_Out(7:0)" name="B_OUT(7:0)" />
        </block>
        <block symbolname="ROMMSTEIN" name="XLXI_31">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_104" name="ENABLE_ROM" />
            <blockpin signalname="XLXN_117(5:0)" name="ROM_ADDR(5:0)" />
            <blockpin signalname="Dbg_ROM_DATA(7:0)" name="ROM_DATA(7:0)" />
        </block>
        <block symbolname="STATE_MACHINE" name="XLXI_33">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ReRun" name="Re_Run_Programme" />
            <blockpin signalname="Programme_Start" name="Programme_Start" />
            <blockpin signalname="Dbg_ROM_DATA(7:0)" name="Data_From_ROM(7:0)" />
            <blockpin name="Programme_Status" />
            <blockpin signalname="XLXN_104" name="EN_OUT" />
            <blockpin signalname="Dbg_En_A_PORT_A" name="EN_A_Ports" />
            <blockpin signalname="Dbg_En_A_PORT_B" name="EN_B_Ports" />
            <blockpin signalname="XLXN_94" name="Reset" />
            <blockpin signalname="XLXN_117(5:0)" name="ADDR_To_ROM(5:0)" />
            <blockpin signalname="XLXN_95(1:0)" name="MUX_FF_Select(1:0)" />
            <blockpin signalname="XLXN_96(1:0)" name="MUX1_Select(1:0)" />
            <blockpin signalname="XLXN_97(1:0)" name="MUX2_Select(1:0)" />
            <blockpin signalname="XLXN_119(1:0)" name="ALU_Select(1:0)" />
            <blockpin signalname="XLXN_105(1:0)" name="BUS_Select(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="3024" y="576" name="XLXI_1" orien="R0">
        </instance>
        <branch name="ALU_T_CarryIn">
            <wire x2="3024" y1="416" y2="416" x1="2992" />
        </branch>
        <instance x="1968" y="768" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_3(7:0)">
            <wire x2="3024" y1="480" y2="480" x1="2432" />
        </branch>
        <instance x="1968" y="1184" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_4(7:0)">
            <wire x2="2480" y1="896" y2="896" x1="2432" />
            <wire x2="2480" y1="544" y2="896" x1="2480" />
            <wire x2="3024" y1="544" y2="544" x1="2480" />
        </branch>
        <branch name="ALU_TCarryOut">
            <wire x2="3536" y1="352" y2="352" x1="3504" />
        </branch>
        <branch name="ALU_T_OutPut(7:0)">
            <wire x2="3632" y1="2304" y2="2304" x1="2256" />
            <wire x2="3632" y1="544" y2="544" x1="3504" />
            <wire x2="3696" y1="544" y2="544" x1="3632" />
            <wire x2="3632" y1="544" y2="2304" x1="3632" />
        </branch>
        <branch name="XLXN_7(7:0)">
            <wire x2="1856" y1="480" y2="480" x1="1584" />
            <wire x2="1968" y1="480" y2="480" x1="1856" />
            <wire x2="1856" y1="480" y2="896" x1="1856" />
            <wire x2="1968" y1="896" y2="896" x1="1856" />
        </branch>
        <instance x="1008" y="704" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1008" y="1040" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1008" y="1376" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1008" y="1712" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_8(7:0)">
            <wire x2="1664" y1="816" y2="816" x1="1584" />
            <wire x2="1664" y1="544" y2="816" x1="1664" />
            <wire x2="1808" y1="544" y2="544" x1="1664" />
            <wire x2="1968" y1="544" y2="544" x1="1808" />
            <wire x2="1808" y1="544" y2="960" x1="1808" />
            <wire x2="1968" y1="960" y2="960" x1="1808" />
        </branch>
        <branch name="XLXN_9(7:0)">
            <wire x2="1712" y1="1152" y2="1152" x1="1584" />
            <wire x2="1968" y1="608" y2="608" x1="1712" />
            <wire x2="1712" y1="608" y2="1024" x1="1712" />
            <wire x2="1712" y1="1024" y2="1152" x1="1712" />
            <wire x2="1968" y1="1024" y2="1024" x1="1712" />
        </branch>
        <branch name="XLXN_10(7:0)">
            <wire x2="1760" y1="1488" y2="1488" x1="1584" />
            <wire x2="1968" y1="672" y2="672" x1="1760" />
            <wire x2="1760" y1="672" y2="1088" x1="1760" />
            <wire x2="1760" y1="1088" y2="1488" x1="1760" />
            <wire x2="1968" y1="1088" y2="1088" x1="1760" />
        </branch>
        <branch name="CLK">
            <wire x2="176" y1="2512" y2="3280" x1="176" />
            <wire x2="208" y1="3280" y2="3280" x1="176" />
            <wire x2="624" y1="2512" y2="2512" x1="176" />
            <wire x2="816" y1="2512" y2="2512" x1="624" />
            <wire x2="624" y1="176" y2="176" x1="592" />
            <wire x2="624" y1="176" y2="608" x1="624" />
            <wire x2="1008" y1="608" y2="608" x1="624" />
            <wire x2="624" y1="608" y2="944" x1="624" />
            <wire x2="1008" y1="944" y2="944" x1="624" />
            <wire x2="624" y1="944" y2="1280" x1="624" />
            <wire x2="1008" y1="1280" y2="1280" x1="624" />
            <wire x2="624" y1="1280" y2="1616" x1="624" />
            <wire x2="1008" y1="1616" y2="1616" x1="624" />
            <wire x2="624" y1="1616" y2="1776" x1="624" />
            <wire x2="2448" y1="1776" y2="1776" x1="624" />
            <wire x2="2448" y1="1776" y2="2048" x1="2448" />
            <wire x2="2448" y1="2048" y2="2096" x1="2448" />
            <wire x2="2576" y1="2096" y2="2096" x1="2448" />
            <wire x2="624" y1="1776" y2="2512" x1="624" />
            <wire x2="2448" y1="2048" y2="2048" x1="2256" />
        </branch>
        <branch name="FF_PRESET">
            <wire x2="768" y1="112" y2="112" x1="720" />
            <wire x2="768" y1="112" y2="544" x1="768" />
            <wire x2="1008" y1="544" y2="544" x1="768" />
            <wire x2="768" y1="544" y2="880" x1="768" />
            <wire x2="1008" y1="880" y2="880" x1="768" />
            <wire x2="768" y1="880" y2="1216" x1="768" />
            <wire x2="1008" y1="1216" y2="1216" x1="768" />
            <wire x2="768" y1="1216" y2="1552" x1="768" />
            <wire x2="1008" y1="1552" y2="1552" x1="768" />
        </branch>
        <instance x="1488" y="2144" name="XLXI_8" orien="M0">
        </instance>
        <branch name="XLXN_21(7:0)">
            <wire x2="944" y1="672" y2="1920" x1="944" />
            <wire x2="1024" y1="1920" y2="1920" x1="944" />
            <wire x2="1008" y1="672" y2="672" x1="944" />
        </branch>
        <branch name="XLXN_22(7:0)">
            <wire x2="912" y1="1008" y2="1984" x1="912" />
            <wire x2="1024" y1="1984" y2="1984" x1="912" />
            <wire x2="1008" y1="1008" y2="1008" x1="912" />
        </branch>
        <branch name="XLXN_23(7:0)">
            <wire x2="880" y1="1344" y2="2048" x1="880" />
            <wire x2="1024" y1="2048" y2="2048" x1="880" />
            <wire x2="1008" y1="1344" y2="1344" x1="880" />
        </branch>
        <branch name="XLXN_24(7:0)">
            <wire x2="848" y1="1680" y2="2112" x1="848" />
            <wire x2="1024" y1="2112" y2="2112" x1="848" />
            <wire x2="1008" y1="1680" y2="1680" x1="848" />
        </branch>
        <instance x="2256" y="2400" name="XLXI_9" orien="M0">
        </instance>
        <branch name="XLXN_28(7:0)">
            <wire x2="1696" y1="1920" y2="1920" x1="1488" />
        </branch>
        <instance x="2576" y="2256" name="XLXI_10" orien="R0">
        </instance>
        <branch name="OutPort_A_Out(7:0)">
            <wire x2="3072" y1="1904" y2="1904" x1="3040" />
        </branch>
        <branch name="OutPort_B_Out(7:0)">
            <wire x2="3072" y1="2224" y2="2224" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="2992" y="416" name="ALU_T_CarryIn" orien="R180" />
        <iomarker fontsize="28" x="3536" y="352" name="ALU_TCarryOut" orien="R0" />
        <iomarker fontsize="28" x="592" y="176" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="720" y="112" name="FF_PRESET" orien="R180" />
        <iomarker fontsize="28" x="3696" y="544" name="ALU_T_OutPut(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1904" name="OutPort_A_Out(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3072" y="2224" name="OutPort_B_Out(7:0)" orien="R0" />
        <instance x="816" y="3312" name="XLXI_33" orien="R0">
        </instance>
        <branch name="Dbg_En_A_PORT_A">
            <wire x2="2336" y1="2832" y2="2832" x1="1392" />
            <wire x2="2336" y1="1920" y2="1920" x1="2256" />
            <wire x2="2336" y1="1920" y2="2832" x1="2336" />
            <wire x2="2336" y1="1904" y2="1920" x1="2336" />
            <wire x2="2496" y1="1904" y2="1904" x1="2336" />
            <wire x2="2576" y1="1904" y2="1904" x1="2496" />
            <wire x2="2496" y1="1616" y2="1904" x1="2496" />
        </branch>
        <branch name="Dbg_En_A_PORT_B">
            <wire x2="2320" y1="2896" y2="2896" x1="1392" />
            <wire x2="2320" y1="1984" y2="1984" x1="2256" />
            <wire x2="2320" y1="1984" y2="2896" x1="2320" />
            <wire x2="2320" y1="1968" y2="1984" x1="2320" />
            <wire x2="2544" y1="1968" y2="1968" x1="2320" />
            <wire x2="2576" y1="1968" y2="1968" x1="2544" />
            <wire x2="2544" y1="1616" y2="1968" x1="2544" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1008" y1="480" y2="480" x1="704" />
            <wire x2="704" y1="480" y2="816" x1="704" />
            <wire x2="1008" y1="816" y2="816" x1="704" />
            <wire x2="704" y1="816" y2="1152" x1="704" />
            <wire x2="1008" y1="1152" y2="1152" x1="704" />
            <wire x2="704" y1="1152" y2="1488" x1="704" />
            <wire x2="1008" y1="1488" y2="1488" x1="704" />
            <wire x2="704" y1="1488" y2="2336" x1="704" />
            <wire x2="1408" y1="2336" y2="2336" x1="704" />
            <wire x2="1408" y1="2336" y2="2960" x1="1408" />
            <wire x2="2304" y1="2960" y2="2960" x1="1408" />
            <wire x2="1408" y1="2960" y2="2960" x1="1392" />
            <wire x2="2304" y1="2112" y2="2112" x1="2256" />
            <wire x2="2304" y1="2112" y2="2960" x1="2304" />
            <wire x2="2576" y1="2032" y2="2032" x1="2304" />
            <wire x2="2304" y1="2032" y2="2112" x1="2304" />
        </branch>
        <branch name="XLXN_95(1:0)">
            <wire x2="1552" y1="3344" y2="3344" x1="1392" />
            <wire x2="1552" y1="2112" y2="2112" x1="1488" />
            <wire x2="1552" y1="2112" y2="3344" x1="1552" />
        </branch>
        <branch name="Programme_Start">
            <wire x2="816" y1="3024" y2="3024" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="3024" name="Programme_Start" orien="R180" />
        <instance x="208" y="3440" name="XLXI_31" orien="R0">
        </instance>
        <branch name="Dbg_ROM_DATA(7:0)">
            <wire x2="768" y1="3104" y2="3104" x1="608" />
            <wire x2="768" y1="3104" y2="3280" x1="768" />
            <wire x2="816" y1="3280" y2="3280" x1="768" />
            <wire x2="768" y1="3280" y2="3280" x1="704" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="1488" y1="2256" y2="2256" x1="96" />
            <wire x2="1488" y1="2256" y2="2576" x1="1488" />
            <wire x2="96" y1="2256" y2="3344" x1="96" />
            <wire x2="208" y1="3344" y2="3344" x1="96" />
            <wire x2="1488" y1="2576" y2="2576" x1="1392" />
        </branch>
        <branch name="XLXN_105(1:0)">
            <wire x2="2288" y1="3280" y2="3280" x1="1392" />
            <wire x2="2288" y1="2368" y2="2368" x1="2256" />
            <wire x2="2288" y1="2368" y2="3280" x1="2288" />
        </branch>
        <branch name="ReRun">
            <wire x2="816" y1="2768" y2="2768" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="2768" name="ReRun" orien="R180" />
        <branch name="A_InPort(7:0)">
            <wire x2="2432" y1="2176" y2="2176" x1="2256" />
            <wire x2="2432" y1="2176" y2="2672" x1="2432" />
            <wire x2="2976" y1="2672" y2="2672" x1="2432" />
            <wire x2="2576" y1="2160" y2="2160" x1="2432" />
            <wire x2="2432" y1="2160" y2="2176" x1="2432" />
        </branch>
        <branch name="B_InPort(7:0)">
            <wire x2="2400" y1="2240" y2="2240" x1="2256" />
            <wire x2="2400" y1="2240" y2="2768" x1="2400" />
            <wire x2="2928" y1="2768" y2="2768" x1="2400" />
            <wire x2="2576" y1="2224" y2="2224" x1="2400" />
            <wire x2="2400" y1="2224" y2="2240" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2928" y="2768" name="B_InPort(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2976" y="2672" name="A_InPort(7:0)" orien="R0" />
        <branch name="XLXN_117(5:0)">
            <wire x2="208" y1="3408" y2="3408" x1="128" />
            <wire x2="128" y1="3408" y2="3472" x1="128" />
            <wire x2="1488" y1="3472" y2="3472" x1="128" />
            <wire x2="1488" y1="3024" y2="3024" x1="1392" />
            <wire x2="1488" y1="3024" y2="3472" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1616" name="Dbg_En_A_PORT_B" orien="R270" />
        <iomarker fontsize="28" x="2496" y="1616" name="Dbg_En_A_PORT_A" orien="R270" />
        <branch name="XLXN_96(1:0)">
            <wire x2="1680" y1="3088" y2="3088" x1="1392" />
            <wire x2="1968" y1="736" y2="736" x1="1680" />
            <wire x2="1680" y1="736" y2="3088" x1="1680" />
        </branch>
        <branch name="XLXN_97(1:0)">
            <wire x2="1568" y1="3152" y2="3152" x1="1392" />
            <wire x2="1744" y1="1840" y2="1840" x1="1568" />
            <wire x2="1568" y1="1840" y2="3152" x1="1568" />
            <wire x2="1968" y1="1152" y2="1152" x1="1744" />
            <wire x2="1744" y1="1152" y2="1840" x1="1744" />
        </branch>
        <branch name="XLXN_119(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="3216" type="branch" />
            <wire x2="1568" y1="3216" y2="3216" x1="1392" />
            <wire x2="1744" y1="3216" y2="3216" x1="1568" />
            <wire x2="1744" y1="3056" y2="3216" x1="1744" />
            <wire x2="1904" y1="3056" y2="3056" x1="1744" />
            <wire x2="4064" y1="3056" y2="3056" x1="1904" />
            <wire x2="2976" y1="176" y2="352" x1="2976" />
            <wire x2="3024" y1="352" y2="352" x1="2976" />
            <wire x2="4064" y1="176" y2="176" x1="2976" />
            <wire x2="4064" y1="176" y2="3056" x1="4064" />
        </branch>
        <iomarker fontsize="28" x="608" y="3104" name="Dbg_ROM_DATA(7:0)" orien="R180" />
    </sheet>
</drawing>