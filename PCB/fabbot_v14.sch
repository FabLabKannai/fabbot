<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply">
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="0.635" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND">
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V">
<gates>
<gate name="G$1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="fabbot">
<packages>
<package name="LED3MM">
<wire x1="1.5748" y1="1.27" x2="1.5748" y2="1" width="0.254" layer="21"/>
<wire x1="-0.1" y1="1.624" x2="1.1401" y2="0.9858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="1.0144" x2="-0.1" y2="1.624" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.103" y2="-1.0356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-1.0356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.6764"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.6764"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="1.5748" y1="-1" x2="1.5748" y2="-1.3" width="0.254" layer="21"/>
<text x="-1.5" y="1" size="1.4224" layer="21" font="vector" ratio="10" rot="R90">+</text>
</package>
<package name="0207/10">
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" diameter="1.6764"/>
<pad name="2" x="5.08" y="0" drill="0.8128" diameter="1.6764"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="-3.2606" y="-2.635" size="1.27" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="2X03/90">
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-2.54" y="-3.81" drill="1.016" diameter="1.778"/>
<pad name="4" x="0" y="-3.81" drill="1.016" diameter="1.778"/>
<pad name="6" x="2.54" y="-3.81" drill="1.016" diameter="1.778"/>
<pad name="1" x="-2.54" y="-6.35" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="3" x="0" y="-6.35" drill="1.016" diameter="1.778"/>
<pad name="5" x="2.54" y="-6.35" drill="1.016" diameter="1.778"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" font="vector" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" font="vector" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="-2.794" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.794" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-5.334" x2="-2.159" y2="-4.826" layer="21"/>
<rectangle x1="-2.921" y1="-4.699" x2="-2.159" y2="-2.921" layer="51"/>
<rectangle x1="-0.381" y1="-4.699" x2="0.381" y2="-2.921" layer="51"/>
<rectangle x1="-0.381" y1="-5.334" x2="0.381" y2="-4.826" layer="21"/>
<rectangle x1="2.159" y1="-2.794" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-5.334" x2="2.921" y2="-4.826" layer="21"/>
<rectangle x1="2.159" y1="-4.699" x2="2.921" y2="-2.921" layer="51"/>
</package>
<package name="PINHEAD1X2">
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="2.54" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="1.778" x2="-3.429" y2="0.381" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="0.635" x2="-3.302" y2="-0.762" width="0.1524" layer="94"/>
<text x="3.556" y="-2.032" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-2.032" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="0.381"/>
<vertex x="-3.048" y="1.27"/>
<vertex x="-2.54" y="0.762"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-0.762"/>
<vertex x="-2.921" y="0.127"/>
<vertex x="-2.413" y="-0.381"/>
</polygon>
</symbol>
<symbol name="R-EU">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="PINHD-2X3">
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<text x="-7.62" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-3.81" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="3.81" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-3.81" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="3.81" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-3.81" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="3.81" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
<symbol name="HINHD-2X1">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED3MM" prefix="LED">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0207/10" prefix="R">
<gates>
<gate name="G$1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD_2X3" prefix="CN">
<gates>
<gate name="G$1" symbol="PINHD-2X3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X03/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD_1X2" prefix="CN">
<gates>
<gate name="G$1" symbol="HINHD-2X1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PINHEAD1X2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="supply" deviceset="GND" device=""/>
<part name="U$2" library="supply" deviceset="GND" device=""/>
<part name="U$3" library="supply" deviceset="GND" device=""/>
<part name="U$4" library="supply" deviceset="GND" device=""/>
<part name="U$5" library="supply" deviceset="GND" device=""/>
<part name="U$6" library="supply" deviceset="GND" device=""/>
<part name="LED1" library="fabbot" deviceset="LED3MM" device=""/>
<part name="LED2" library="fabbot" deviceset="LED3MM" device=""/>
<part name="LED3" library="fabbot" deviceset="LED3MM" device=""/>
<part name="U$7" library="supply" deviceset="+5V" device=""/>
<part name="U$8" library="supply" deviceset="+5V" device=""/>
<part name="U$9" library="supply" deviceset="+5V" device=""/>
<part name="R1" library="fabbot" deviceset="0207/10" device=""/>
<part name="R2" library="fabbot" deviceset="0207/10" device=""/>
<part name="SERVO" library="fabbot" deviceset="PINHD_2X3" device=""/>
<part name="ARDUINO" library="fabbot" deviceset="PINHD_2X3" device=""/>
<part name="U$10" library="supply" deviceset="+5V" device=""/>
<part name="U$11" library="supply" deviceset="GND" device=""/>
<part name="CN1" library="fabbot" deviceset="PINHD_1X2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="20.32" y="15.24"/>
<instance part="U$2" gate="G$1" x="43.18" y="15.24"/>
<instance part="U$3" gate="G$1" x="63.5" y="15.24"/>
<instance part="U$4" gate="G$1" x="137.16" y="22.86"/>
<instance part="U$5" gate="G$1" x="121.92" y="71.12"/>
<instance part="U$6" gate="G$1" x="99.06" y="71.12"/>
<instance part="LED1" gate="G$1" x="20.32" y="27.94"/>
<instance part="LED2" gate="G$1" x="43.18" y="30.48"/>
<instance part="LED3" gate="G$1" x="63.5" y="30.48"/>
<instance part="U$7" gate="G$1" x="93.98" y="78.74" rot="R90"/>
<instance part="U$8" gate="G$1" x="129.54" y="78.74" rot="R270"/>
<instance part="U$9" gate="G$1" x="109.22" y="40.64"/>
<instance part="R1" gate="G$1" x="43.18" y="50.8" rot="R90"/>
<instance part="R2" gate="G$1" x="63.5" y="50.8" rot="R90"/>
<instance part="SERVO" gate="G$1" x="110.49" y="78.74"/>
<instance part="ARDUINO" gate="G$1" x="123.19" y="33.02"/>
<instance part="U$10" gate="G$1" x="33.02" y="99.06"/>
<instance part="U$11" gate="G$1" x="33.02" y="86.36"/>
<instance part="CN1" gate="G$1" x="45.72" y="91.44"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="A"/>
<wire x1="20.32" y1="33.02" x2="20.32" y2="40.64" width="0.1524" layer="91"/>
<wire x1="20.32" y1="40.64" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<wire x1="43.18" y1="40.64" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
<pinref part="LED2" gate="G$1" pin="A"/>
<wire x1="43.18" y1="35.56" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<junction x="43.18" y="40.64"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="LED2" gate="G$1" pin="C"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="43.18" y1="27.94" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<pinref part="LED3" gate="G$1" pin="C"/>
<wire x1="63.5" y1="17.78" x2="63.5" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="106.68" y1="76.2" x2="99.06" y2="76.2" width="0.1524" layer="91"/>
<wire x1="99.06" y1="76.2" x2="99.06" y2="73.66" width="0.1524" layer="91"/>
<pinref part="SERVO" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="114.3" y1="76.2" x2="121.92" y2="76.2" width="0.1524" layer="91"/>
<wire x1="121.92" y1="76.2" x2="121.92" y2="73.66" width="0.1524" layer="91"/>
<pinref part="SERVO" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="GND"/>
<wire x1="137.16" y1="25.4" x2="137.16" y2="30.48" width="0.1524" layer="91"/>
<wire x1="137.16" y1="30.48" x2="127" y2="30.48" width="0.1524" layer="91"/>
<pinref part="ARDUINO" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="LED1" gate="G$1" pin="C"/>
<wire x1="20.32" y1="17.78" x2="20.32" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="GND"/>
<wire x1="33.02" y1="88.9" x2="33.02" y2="91.44" width="0.1524" layer="91"/>
<wire x1="33.02" y1="91.44" x2="43.18" y2="91.44" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="EYE" class="0">
<segment>
<wire x1="43.18" y1="55.88" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<label x="43.18" y="71.12" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="127" y1="35.56" x2="139.7" y2="35.56" width="0.1524" layer="91"/>
<label x="139.7" y="35.56" size="1.778" layer="95" xref="yes"/>
<pinref part="ARDUINO" gate="G$1" pin="2"/>
</segment>
</net>
<net name="MOUTH" class="0">
<segment>
<wire x1="63.5" y1="55.88" x2="63.5" y2="71.12" width="0.1524" layer="91"/>
<label x="63.5" y="71.12" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="127" y1="33.02" x2="147.32" y2="33.02" width="0.1524" layer="91"/>
<label x="147.32" y="33.02" size="1.778" layer="95" xref="yes"/>
<pinref part="ARDUINO" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LED3" gate="G$1" pin="A"/>
<wire x1="63.5" y1="35.56" x2="63.5" y2="45.72" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="+5V"/>
<wire x1="93.98" y1="78.74" x2="106.68" y2="78.74" width="0.1524" layer="91"/>
<pinref part="SERVO" gate="G$1" pin="3"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="+5V"/>
<wire x1="129.54" y1="78.74" x2="114.3" y2="78.74" width="0.1524" layer="91"/>
<pinref part="SERVO" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="+5V"/>
<wire x1="109.22" y1="40.64" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
<wire x1="109.22" y1="35.56" x2="119.38" y2="35.56" width="0.1524" layer="91"/>
<pinref part="ARDUINO" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="+5V"/>
<wire x1="33.02" y1="99.06" x2="33.02" y2="93.98" width="0.1524" layer="91"/>
<wire x1="33.02" y1="93.98" x2="43.18" y2="93.98" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="SERVO_PITCH" class="0">
<segment>
<wire x1="106.68" y1="81.28" x2="88.9" y2="81.28" width="0.1524" layer="91"/>
<label x="88.9" y="81.28" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="SERVO" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="119.38" y1="33.02" x2="96.52" y2="33.02" width="0.1524" layer="91"/>
<label x="96.52" y="33.02" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="ARDUINO" gate="G$1" pin="3"/>
</segment>
</net>
<net name="SERVO_YAW" class="0">
<segment>
<wire x1="114.3" y1="81.28" x2="134.62" y2="81.28" width="0.1524" layer="91"/>
<label x="134.62" y="81.28" size="1.778" layer="95" xref="yes"/>
<pinref part="SERVO" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="119.38" y1="30.48" x2="114.3" y2="30.48" width="0.1524" layer="91"/>
<label x="114.3" y="30.48" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="ARDUINO" gate="G$1" pin="5"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
