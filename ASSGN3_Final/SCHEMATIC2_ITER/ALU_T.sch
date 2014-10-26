<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4(7:0)" />
        <signal name="MUX_Select(1:0)" />
        <signal name="Adder_CarryIn" />
        <signal name="Adder_CarryOut" />
        <signal name="OutPut(7:0)" />
        <signal name="Input1(7:0)" />
        <signal name="Input2(7:0)" />
        <port polarity="Input" name="MUX_Select(1:0)" />
        <port polarity="Input" name="Adder_CarryIn" />
        <port polarity="Output" name="Adder_CarryOut" />
        <port polarity="Output" name="OutPut(7:0)" />
        <port polarity="Input" name="Input1(7:0)" />
        <port polarity="Input" name="Input2(7:0)" />
        <blockdef name="ALU">
            <timestamp>2014-10-26T5:21:55</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
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
        <blockdef name="Adder">
            <timestamp>2014-10-26T5:23:0</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="ALU" name="XLXI_1">
            <blockpin signalname="Input1(7:0)" name="ALU_IN1(7:0)" />
            <blockpin signalname="Input2(7:0)" name="ALU_IN2(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="ALU_OUT1(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="ALU_OUT2(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="ALU_OUT3(7:0)" />
        </block>
        <block symbolname="MUX4to1" name="XLXI_2">
            <blockpin signalname="XLXN_1(7:0)" name="MUX_PIN1(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="MUX_PIN2(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="MUX_PIN3(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="MUX_PIN4(7:0)" />
            <blockpin signalname="MUX_Select(1:0)" name="MUX_SEL(1:0)" />
            <blockpin signalname="OutPut(7:0)" name="MUX_OUT(7:0)" />
        </block>
        <block symbolname="Adder" name="XLXI_3">
            <blockpin signalname="Adder_CarryIn" name="Adder_carryin" />
            <blockpin signalname="Input1(7:0)" name="Adder_in1(7:0)" />
            <blockpin signalname="Input2(7:0)" name="Adder_in2(7:0)" />
            <blockpin signalname="Adder_CarryOut" name="Adder_carryout" />
            <blockpin signalname="XLXN_1(7:0)" name="Adder_sum(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1264" y="1760" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1232" y="1360" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2128" y="1616" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="2128" y1="1328" y2="1328" x1="1696" />
        </branch>
        <branch name="XLXN_2(7:0)">
            <wire x2="1920" y1="1600" y2="1600" x1="1712" />
            <wire x2="1920" y1="1392" y2="1600" x1="1920" />
            <wire x2="2128" y1="1392" y2="1392" x1="1920" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1936" y1="1664" y2="1664" x1="1712" />
            <wire x2="1936" y1="1456" y2="1664" x1="1936" />
            <wire x2="2128" y1="1456" y2="1456" x1="1936" />
        </branch>
        <branch name="XLXN_4(7:0)">
            <wire x2="1952" y1="1728" y2="1728" x1="1712" />
            <wire x2="1952" y1="1520" y2="1728" x1="1952" />
            <wire x2="2128" y1="1520" y2="1520" x1="1952" />
        </branch>
        <branch name="MUX_Select(1:0)">
            <wire x2="2112" y1="1824" y2="1824" x1="1952" />
            <wire x2="2128" y1="1584" y2="1584" x1="2112" />
            <wire x2="2112" y1="1584" y2="1824" x1="2112" />
        </branch>
        <branch name="Adder_CarryIn">
            <wire x2="1232" y1="1200" y2="1200" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1200" name="Adder_CarryIn" orien="R180" />
        <branch name="Adder_CarryOut">
            <wire x2="1728" y1="1200" y2="1200" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1200" name="Adder_CarryOut" orien="R0" />
        <branch name="OutPut(7:0)">
            <wire x2="2624" y1="1328" y2="1328" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1328" name="OutPut(7:0)" orien="R0" />
        <branch name="Input1(7:0)">
            <wire x2="1152" y1="1264" y2="1264" x1="1008" />
            <wire x2="1216" y1="1264" y2="1264" x1="1152" />
            <wire x2="1232" y1="1264" y2="1264" x1="1216" />
            <wire x2="1152" y1="1264" y2="1600" x1="1152" />
            <wire x2="1264" y1="1600" y2="1600" x1="1152" />
        </branch>
        <branch name="Input2(7:0)">
            <wire x2="1104" y1="1328" y2="1328" x1="1024" />
            <wire x2="1216" y1="1328" y2="1328" x1="1104" />
            <wire x2="1232" y1="1328" y2="1328" x1="1216" />
            <wire x2="1104" y1="1328" y2="1728" x1="1104" />
            <wire x2="1264" y1="1728" y2="1728" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1264" name="Input1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1328" name="Input2(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1952" y="1824" name="MUX_Select(1:0)" orien="R180" />
    </sheet>
</drawing>