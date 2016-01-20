<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
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
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
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
<library name="esp8266modules">
<packages>
<package name="ESP12">
<description>ESP8266 Module 12</description>
<wire x1="7.9" y1="14.2" x2="7.9" y2="8.4" width="0.127" layer="22"/>
<wire x1="7.9" y1="-9.8" x2="-8.1" y2="-9.8" width="0.127" layer="22"/>
<wire x1="-8.1" y1="-9.8" x2="-8.1" y2="8.4" width="0.127" layer="22"/>
<wire x1="-8.1" y1="8.4" x2="-8.1" y2="14.2" width="0.127" layer="22"/>
<wire x1="-8.1" y1="14.2" x2="7.9" y2="14.2" width="0.127" layer="22"/>
<wire x1="-8.1" y1="8.4" x2="7.9" y2="8.4" width="0.127" layer="22"/>
<pad name="GND" x="6.9" y="-8.2" drill="0.7" shape="offset"/>
<wire x1="7.9" y1="8.4" x2="7.9" y2="-9.8" width="0.127" layer="22"/>
<pad name="GPIO15" x="6.9" y="-6.2" drill="0.7" shape="offset"/>
<pad name="GPIO2" x="6.9" y="-4.2" drill="0.7" shape="offset"/>
<pad name="GPIO0" x="6.9" y="-2.2" drill="0.7" shape="offset"/>
<pad name="GPIO5" x="6.9" y="-0.2" drill="0.7" shape="offset"/>
<pad name="GPIO4" x="6.9" y="1.8" drill="0.7" shape="offset"/>
<pad name="RX" x="6.9" y="3.8" drill="0.7" shape="offset"/>
<pad name="TX" x="6.9" y="5.8" drill="0.7" shape="offset"/>
<pad name="VCC" x="-7.1" y="-8.2" drill="0.7" shape="offset" rot="R180"/>
<pad name="GPIO13" x="-7.1" y="-6.2" drill="0.7" shape="offset" rot="R180"/>
<pad name="GPIO12" x="-7.1" y="-4.2" drill="0.7" shape="offset" rot="R180"/>
<pad name="GPIO14" x="-7.1" y="-2.2" drill="0.7" shape="offset" rot="R180"/>
<pad name="GPIO16" x="-7.1" y="-0.2" drill="0.7" shape="offset" rot="R180"/>
<pad name="CH_PD" x="-7.1" y="1.8" drill="0.7" shape="offset" rot="R180"/>
<pad name="ADC" x="-7.1" y="3.8" drill="0.7" shape="offset" rot="R180"/>
<pad name="RESET" x="-7.1" y="5.8" drill="0.7" shape="offset" rot="R180"/>
<wire x1="-4.9" y1="8.6" x2="-4.9" y2="13.5" width="0.6096" layer="21"/>
<wire x1="-4.9" y1="13.5" x2="-4" y2="13.5" width="0.6096" layer="21"/>
<wire x1="-4" y1="13.5" x2="-4" y2="9.8" width="0.6096" layer="21"/>
<wire x1="-4" y1="9.8" x2="-3" y2="9.8" width="0.6096" layer="21"/>
<wire x1="-3" y1="9.8" x2="-3" y2="13.4" width="0.6096" layer="21"/>
<wire x1="-3" y1="13.4" x2="-1.8" y2="13.4" width="0.6096" layer="21"/>
<wire x1="-1.8" y1="13.4" x2="-1.8" y2="9.8" width="0.6096" layer="21"/>
<wire x1="-1.8" y1="9.8" x2="-0.6" y2="9.8" width="0.6096" layer="21"/>
<wire x1="-0.6" y1="9.8" x2="-0.6" y2="13.4" width="0.6096" layer="21"/>
<wire x1="-0.6" y1="13.4" x2="0.5" y2="13.4" width="0.6096" layer="21"/>
<wire x1="0.5" y1="13.4" x2="0.5" y2="9.9" width="0.6096" layer="21"/>
<wire x1="0.5" y1="9.9" x2="1.6" y2="9.9" width="0.6096" layer="21"/>
<wire x1="1.6" y1="9.9" x2="1.6" y2="13.4" width="0.6096" layer="21"/>
<wire x1="1.6" y1="13.4" x2="5.6" y2="13.4" width="0.6096" layer="21"/>
<wire x1="-4.9" y1="8.5" x2="-4.9" y2="7.9" width="0.6096" layer="21"/>
<wire x1="-4.9" y1="7.9" x2="1.6" y2="7.9" width="0.6096" layer="21"/>
<text x="-4" y="2.6" size="1.4224" layer="21">ESP - 12</text>
<text x="-7.7" y="-11.9" size="1.4224" layer="27">&gt;Value</text>
<text x="-7.7" y="15.1" size="1.4224" layer="25">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="ESP12">
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-12.7" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<pin name="RESET" x="-17.78" y="7.62" visible="pin" length="middle"/>
<pin name="ADC" x="-17.78" y="5.08" visible="pin" length="middle"/>
<pin name="CH_PD" x="-17.78" y="2.54" visible="pin" length="middle"/>
<pin name="GPIO16" x="-17.78" y="0" visible="pin" length="middle"/>
<pin name="GPIO14" x="-17.78" y="-2.54" visible="pin" length="middle"/>
<pin name="GPIO12" x="-17.78" y="-5.08" visible="pin" length="middle"/>
<pin name="GPIO13" x="-17.78" y="-7.62" visible="pin" length="middle"/>
<pin name="VCC" x="-17.78" y="-10.16" visible="pin" length="middle"/>
<pin name="GND" x="15.24" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO15" x="15.24" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO2" x="15.24" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO0" x="15.24" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO5" x="15.24" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO4" x="15.24" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="RX" x="15.24" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="TX" x="15.24" y="7.62" visible="pin" length="middle" rot="R180"/>
<text x="-12.7" y="10.16" size="1.778" layer="95">&gt;Name</text>
<text x="-12.7" y="-15.24" size="1.778" layer="96">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP12">
<description>ESP8266 Wifi module 12</description>
<gates>
<gate name="G$1" symbol="ESP12" x="0" y="-5.08"/>
</gates>
<devices>
<device name="" package="ESP12">
<connects>
<connect gate="G$1" pin="ADC" pad="ADC"/>
<connect gate="G$1" pin="CH_PD" pad="CH_PD"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GPIO0" pad="GPIO0"/>
<connect gate="G$1" pin="GPIO12" pad="GPIO12"/>
<connect gate="G$1" pin="GPIO13" pad="GPIO13"/>
<connect gate="G$1" pin="GPIO14" pad="GPIO14"/>
<connect gate="G$1" pin="GPIO15" pad="GPIO15"/>
<connect gate="G$1" pin="GPIO16" pad="GPIO16"/>
<connect gate="G$1" pin="GPIO2" pad="GPIO2"/>
<connect gate="G$1" pin="GPIO4" pad="GPIO4"/>
<connect gate="G$1" pin="GPIO5" pad="GPIO5"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="battery">
<description>&lt;b&gt;Lithium Batteries and NC Accus&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="NC1M">
<description>&lt;b&gt;NC ACCU&lt;/b&gt; Sonnenschein&lt;p&gt;
Memo NC-M&lt;p&gt;
2.4 - 6.0, grid 17.5 mm</description>
<wire x1="-0.381" y1="-2.54" x2="-0.381" y2="0" width="0.254" layer="21"/>
<wire x1="2.794" y1="0" x2="0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.381" y2="2.54" width="0.254" layer="21"/>
<wire x1="-0.889" y1="-1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="-2.032" x2="-1.397" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="5.08" x2="0.635" y2="5.08" width="0.254" layer="21"/>
<wire x1="0" y1="5.715" x2="0" y2="4.445" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-7.62" x2="0.635" y2="-7.62" width="0.254" layer="21"/>
<wire x1="-1.4838" y1="-11.7174" x2="1.4838" y2="-11.7174" width="0.1524" layer="21" curve="-345.565847"/>
<wire x1="-1.524" y1="-12.065" x2="1.524" y2="-12.065" width="0.1524" layer="51"/>
<wire x1="-1.4838" y1="-11.7174" x2="1.4838" y2="-11.7174" width="0.1524" layer="51" curve="14.434153"/>
<wire x1="-2.54" y1="-12.065" x2="-1.524" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-12.065" x2="-2.54" y2="-11.535" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-12.065" x2="2.54" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-12.065" x2="2.54" y2="-11.535" width="0.1524" layer="21"/>
<pad name="+@1" x="-5.08" y="5.715" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="+" x="5.08" y="5.715" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="-" x="0" y="-12.065" drill="1.3208" diameter="2.54" shape="octagon"/>
<text x="-2.54" y="12.065" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-2.921" y="-10.16" size="1.27" layer="21" ratio="10">NC-M17</text>
<rectangle x1="0.254" y1="-1.27" x2="0.889" y2="1.27" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="6V0+2">
<wire x1="-5.715" y1="0.635" x2="-5.715" y2="0" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="0" x2="-5.715" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.715" y1="0" x2="-5.715" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="-4.445" y1="2.54" x2="-4.445" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-3.175" y1="0.635" x2="-3.175" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="5.715" y1="2.54" x2="5.715" y2="0" width="0.4064" layer="94"/>
<wire x1="5.715" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="5.715" y1="0" x2="5.715" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="2.54" x2="-1.905" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="0.635" y1="2.54" x2="0.635" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="4.445" y1="0.635" x2="4.445" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="3.175" y1="2.54" x2="3.175" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+" x="10.16" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="-" x="-10.16" y="0" visible="pad" length="short" direction="pas"/>
<pin name="+@1" x="7.62" y="0" visible="off" length="point" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NC1M" prefix="G">
<description>&lt;b&gt;NC ACCU Sonnenschein&lt;/b&gt;&lt;p&gt;
Memo NC-M&lt;p&gt;
6.0V, grid 17.5mm&lt;p&gt;
Sonnenschein</description>
<gates>
<gate name="G$1" symbol="6V0+2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NC1M">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="+@1" pad="+@1"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<library name="jonaslib">
<packages>
<package name="SCD0403T-220M-N">
<smd name="P$1" x="1.27" y="-0.635" dx="1.27" dy="0.635" layer="1" stop="no" cream="no"/>
<polygon width="0" layer="1">
<vertex x="0" y="0"/>
<vertex x="4.3" y="0" curve="-90"/>
<vertex x="2.15" y="-2.15" curve="-90"/>
</polygon>
<polygon width="0" layer="1">
<vertex x="4.3" y="1.2"/>
<vertex x="0" y="1.2" curve="-90"/>
<vertex x="2.15" y="3.35" curve="-90"/>
</polygon>
<wire x1="0.15" y1="-0.4" x2="0.15" y2="1.6" width="0.127" layer="51"/>
<wire x1="4.15" y1="-0.4" x2="4.15" y2="1.6" width="0.127" layer="51"/>
<wire x1="0.15" y1="1.6" x2="4.15" y2="1.6" width="0.127" layer="51" curve="-150"/>
<wire x1="0.15" y1="-0.4" x2="4.15" y2="-0.4" width="0.127" layer="51" curve="150"/>
<polygon width="0" layer="51">
<vertex x="1.85" y="3.1"/>
<vertex x="1.85" y="2.3"/>
<vertex x="2.45" y="2.3"/>
<vertex x="2.45" y="3.1"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="1.85" y="-1.1"/>
<vertex x="2.45" y="-1.1"/>
<vertex x="2.45" y="-1.9"/>
<vertex x="1.85" y="-1.9"/>
</polygon>
<polygon width="0" layer="31">
<vertex x="4.3" y="1.2"/>
<vertex x="0" y="1.2" curve="-90"/>
<vertex x="2.15" y="3.35" curve="-90"/>
</polygon>
<polygon width="0" layer="31">
<vertex x="0" y="0"/>
<vertex x="4.3" y="0" curve="-90"/>
<vertex x="2.15" y="-2.15" curve="-90"/>
</polygon>
<polygon width="0" layer="29">
<vertex x="4.4" y="1.1"/>
<vertex x="-0.1" y="1.1" curve="-90"/>
<vertex x="2.15" y="3.45" curve="-90"/>
</polygon>
<polygon width="0" layer="29">
<vertex x="-0.1" y="0.1"/>
<vertex x="4.4" y="0.1" curve="-90"/>
<vertex x="2.15" y="-2.25" curve="-90"/>
</polygon>
<text x="5" y="2" size="1.6764" layer="29">&gt;NAME</text>
<text x="5" y="-2" size="1.6764" layer="29">&gt;VALUE</text>
<smd name="P$2" x="2.54" y="2.54" dx="1.27" dy="0.635" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="SCD0403T-220M-N">
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<pin name="2" x="15.24" y="0" visible="pad" length="middle" rot="R180"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="7.62" y1="0" x2="10.16" y2="0" width="0.254" layer="94" curve="-180"/>
<text x="0" y="2.54" size="1.27" layer="94">&gt;NAME</text>
<text x="0" y="-2.54" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="INDUCTOR" uservalue="yes">
<gates>
<gate name="G$1" symbol="SCD0403T-220M-N" x="-5.08" y="0"/>
</gates>
<devices>
<device name="" package="SCD0403T-220M-N">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="generic_h-bridge">
<packages>
<package name="H-BRIDGE">
<pad name="1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="2" x="2.54" y="0" drill="0.8" shape="square"/>
<pad name="3" x="5.08" y="0" drill="0.8" shape="square"/>
<pad name="4" x="7.62" y="0" drill="0.8" shape="square"/>
<pad name="5" x="10.16" y="0" drill="0.8" shape="square"/>
<pad name="6" x="12.7" y="0" drill="0.8" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="H-BRIDGE">
<wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94"/>
<wire x1="20.32" y1="0" x2="20.32" y2="17.78" width="0.254" layer="94"/>
<wire x1="20.32" y1="17.78" x2="0" y2="17.78" width="0.254" layer="94"/>
<wire x1="0" y1="17.78" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="+IN" x="-5.08" y="8.89" length="middle"/>
<pin name="+OUT" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="P$2" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="GND" x="10.16" y="-5.08" length="middle" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="H-BRIDGE">
<gates>
<gate name="G$1" symbol="H-BRIDGE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="H-BRIDGE">
<connects>
<connect gate="G$1" pin="+IN" pad="1"/>
<connect gate="G$1" pin="+OUT" pad="2"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="P$2" pad="4"/>
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
<part name="U$1" library="esp8266modules" deviceset="ESP12" device=""/>
<part name="G1" library="battery" deviceset="NC1M" device=""/>
<part name="G2" library="battery" deviceset="NC1M" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="U$3" library="jonaslib" deviceset="INDUCTOR" device=""/>
<part name="U$2" library="generic_h-bridge" deviceset="H-BRIDGE" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="33.02" y="25.4" smashed="yes">
<attribute name="VALUE" x="20.32" y="10.16" size="1.778" layer="96"/>
</instance>
<instance part="G1" gate="G$1" x="-17.78" y="25.4" smashed="yes" rot="R90"/>
<instance part="G2" gate="G$1" x="-17.78" y="45.72" smashed="yes" rot="R90"/>
<instance part="GND1" gate="1" x="-17.78" y="-2.54"/>
<instance part="U$3" gate="G$1" x="106.68" y="17.78" smashed="yes">
<attribute name="NAME" x="106.68" y="20.32" size="1.27" layer="94"/>
<attribute name="VALUE" x="106.68" y="15.24" size="1.27" layer="94"/>
</instance>
<instance part="U$2" gate="G$1" x="71.12" y="15.24"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="G1" gate="G$1" pin="+"/>
<pinref part="G2" gate="G$1" pin="-"/>
<wire x1="-17.78" y1="35.56" x2="5.08" y2="35.56" width="0.1524" layer="91"/>
<junction x="-17.78" y="35.56"/>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="5.08" y1="35.56" x2="5.08" y2="15.24" width="0.1524" layer="91"/>
<wire x1="5.08" y1="15.24" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO4"/>
<wire x1="48.26" y1="27.94" x2="58.42" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="+IN"/>
<wire x1="58.42" y1="27.94" x2="58.42" y2="24.13" width="0.1524" layer="91"/>
<wire x1="58.42" y1="24.13" x2="66.04" y2="24.13" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="G1" gate="G$1" pin="-"/>
<wire x1="-17.78" y1="15.24" x2="-17.78" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="5.08" x2="53.34" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="53.34" y1="5.08" x2="81.28" y2="5.08" width="0.1524" layer="91"/>
<wire x1="81.28" y1="5.08" x2="121.92" y2="5.08" width="0.1524" layer="91"/>
<wire x1="48.26" y1="15.24" x2="53.34" y2="15.24" width="0.1524" layer="91"/>
<wire x1="53.34" y1="15.24" x2="53.34" y2="5.08" width="0.1524" layer="91"/>
<junction x="53.34" y="5.08"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-17.78" y1="5.08" x2="-17.78" y2="0" width="0.1524" layer="91"/>
<junction x="-17.78" y="5.08"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="81.28" y1="10.16" x2="81.28" y2="5.08" width="0.1524" layer="91"/>
<junction x="81.28" y="5.08"/>
<pinref part="U$3" gate="G$1" pin="2"/>
<wire x1="121.92" y1="17.78" x2="121.92" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P$2"/>
<pinref part="G2" gate="G$1" pin="+"/>
<wire x1="96.52" y1="30.48" x2="96.52" y2="55.88" width="0.1524" layer="91"/>
<wire x1="96.52" y1="55.88" x2="-17.78" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="+OUT"/>
<pinref part="U$3" gate="G$1" pin="1"/>
<wire x1="101.6" y1="17.78" x2="96.52" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
