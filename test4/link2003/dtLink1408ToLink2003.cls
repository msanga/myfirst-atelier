Class link2003.dtLink1408ToLink2003 Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.3:ORM_O01' targetDocType='2.3:ORM_O01' create='new' language='objectscript' >
<code>
<![CDATA[                              
       //-------- MSH SEGMENTS
]]></code>
<assign value='source.{MSH:1}' property='target.{MSH:1}' action='set' />
<assign value='source.{MSH:2}' property='target.{MSH:2}' action='set' />
<assign value='"EPIC"' property='target.{MSH:3}' action='set' />
<assign value='"CSHS"' property='target.{MSH:4}' action='set' />
<assign value='"IETEST"' property='target.{MSH:5}' action='set' />
<assign value='"CSHS"' property='target.{MSH:6}' action='set' />
<assign value='source.{MSH:7}' property='target.{MSH:7}' action='set' />
<assign value='source.{MSH:8}' property='target.{MSH:8}' action='set' />
<assign value='"ORM"' property='target.{MSH:9.1}' action='set' />
<assign value='"O01"' property='target.{MSH:9.2}' action='set' />
<assign value='source.{MSH:10}' property='target.{MSH:10}' action='set' />
<assign value='##class(Cedars.Utility).GetMsgProcId()' property='target.{MSH:11}' action='set' />
<assign value='"2.3"' property='target.{MSH:12}' action='set' />
<assign value='"AL"' property='target.{MSH:15}' action='set' />
<code>
<![CDATA[                              
       //-------- PID SEGMENTS 
]]></code>
<if condition='source.{PIDgrp.PID}&apos;=""'>
<true>
<assign value='"1"' property='target.{PIDgrp.PID:1}' action='set' />
<assign value='""' property='target.{PIDgrp.PID:2}' action='clear' />
<assign value='##class(Cedars.MDRHUtils).GetMDRH(source.{PIDgrp.PID:3})' property='target.{PIDgrp.PID:3}' action='set' />
<if condition='target.{PIDgrp.PID:3.5}="MDRHMRN"'>
<true>
<assign value='"M"_target.{PIDgrp.PID:3.1}' property='target.{PIDgrp.PID:3.1}' action='set' />
</true>
<false>
<if condition='target.{PIDgrp.PID:3.5}="CSMRN"'>
<true>
<assign value='"E"_target.{PIDgrp.PID:3.1}' property='target.{PIDgrp.PID:3.1}' action='set' />
</true>
</if>
</false>
</if>
<foreach property='source.{PIDgrp.PID:3()}' key='PID3key'>
<assign value='source.{PIDgrp.PID:3(PID3key).1}' property='target.{PIDgrp.PID:3(PID3key).1}' action='set' />
<assign value='source.{PIDgrp.PID:3(PID3key).4}' property='target.{PIDgrp.PID:3(PID3key).4}' action='set' />
<assign value='source.{PIDgrp.PID:3(PID3key).5}' property='target.{PIDgrp.PID:3(PID3key).5}' action='set' />
</foreach>
<assign value='""' property='target.{PIDgrp.PID:4}' action='clear' />
<assign value='##class(Cedars.Utility).GetPatientDisplayName(source.{PIDgrp.PID:5})' property='target.{PIDgrp.PID:5}' action='set' />
<assign value='source.{PIDgrp.PID:6.1}' property='target.{PIDgrp.PID:6.1}'/>
<assign value='source.{PIDgrp.PID:6.2}' property='target.{PIDgrp.PID:6.2}'/>
<assign value='source.{PIDgrp.PID:6.3}' property='target.{PIDgrp.PID:6.3}'/>
<assign value='source.{PIDgrp.PID:6.4}' property='target.{PIDgrp.PID:6.4}'/>
<assign value='..SubString(source.{PIDgrp.PID:7},1,8)' property='target.{PIDgrp.PID:7}' action='set' />
<assign value='source.{PIDgrp.PID:8}' property='target.{PIDgrp.PID:8}'/>
<assign value='source.{PIDgrp.PID:9.1}' property='target.{PIDgrp.PID:9.1}'/>
<assign value='source.{PIDgrp.PID:9.2}' property='target.{PIDgrp.PID:9.2}'/>
<assign value='source.{PIDgrp.PID:9.3}' property='target.{PIDgrp.PID:9.3}'/>
<assign value='source.{PIDgrp.PID:10}' property='target.{PIDgrp.PID:10}' action='set' />
<if condition='source.{PIDgrp.PID:11(*)}&apos;=""'>
<true>
<foreach property='source.{PIDgrp.PID:11()}' key='PID11key'>
<if condition='source.{PIDgrp.PID:11(PID11key).7}="P"'>
<true>
<assign value='source.{PIDgrp.PID:11(PID11key).1}' property='target.{PIDgrp.PID:11(1).1}' action='set'/> 
<assign value='source.{PIDgrp.PID:11(PID11key).3}' property='target.{PIDgrp.PID:11(1).3}' action='set'/> 
<assign value='source.{PIDgrp.PID:11(PID11key).4}' property='target.{PIDgrp.PID:11(1).4}' action='set'/> 
<assign value='source.{PIDgrp.PID:11(PID11key).5}' property='target.{PIDgrp.PID:11(1).5}' action='set'/> 
<assign value='source.{PIDgrp.PID:11(PID11key).6}' property='target.{PIDgrp.PID:11(1).6}' action='set'/>
<assign value='source.{PIDgrp.PID:11(PID11key).7}' property='target.{PIDgrp.PID:11(1).7}' action='set'/> 
<assign value='source.{PIDgrp.PID:11(PID11key).9}' property='target.{PIDgrp.PID:11(1).9}' action='set'/> 
</true>
</if>
</foreach>
</true>
</if>
<assign value='source.{PIDgrp.PID:12}' property='target.{PIDgrp.PID:12}' action='set' />
<assign value='""' property='target.{PIDgrp.PID:13(1)}' action='set'/>
<if condition='source.{PIDgrp.PID:13(*)}&apos;=""'>
<true>
<assign value='0' property='ind' action='set'/>
<foreach property='source.{PIDgrp.PID:13()}' key='PID13key'>
<if condition='source.{PIDgrp.PID:13(PID13key).3}="PH"'>
<true>
<if condition='ind=0'>
<true>
<assign value='1' property='ind' action='set'/>
<assign value='source.{PIDgrp.PID:13(PID13key)}' property='target.{PIDgrp.PID:13(1)}' action='set'/>
<assign value='99' property='PID13key' action='set'/>
</true>
</if>
</true>
</if>
</foreach>
</true>
</if>
<assign value='""' property='target.{PIDgrp.PID:14(1)}' action='set'/> 
<if condition='source.{PIDgrp.PID:14(*)}&apos;=""'>
<true>
<assign value='source.{PIDgrp.PID:14(1).1}' property='target.{PIDgrp.PID:14(1).1}' action='set'/>
<assign value='source.{PIDgrp.PID:14(1).6}' property='target.{PIDgrp.PID:14(1).6}' action='set'/>
<assign value='source.{PIDgrp.PID:14(1).7}' property='target.{PIDgrp.PID:14(1).7}' action='set'/>
</true>
</if>
<assign value='""' property='target.{PIDgrp.PID:15}' action='clear' />
<assign value='source.{PIDgrp.PID:16}' property='target.{PIDgrp.PID:16}' action='set' />
<assign value='""' property='target.{PIDgrp.PID:17}' action='clear' />
<assign value='source.{PIDgrp.PID:18}' property='target.{PIDgrp.PID:18}' action='set' />
<assign value='source.{PIDgrp.PID:19}' property='target.{PIDgrp.PID:19}' action='set' />
<assign value='source.{PIDgrp.PID:20.1}' property='target.{PIDgrp.PID:20.1}' action='set' />
<assign value='source.{PIDgrp.PID:20.2}' property='target.{PIDgrp.PID:20.2}' action='set' />
<assign value='source.{PIDgrp.PID:21.1}' property='target.{PIDgrp.PID:21.1}' action='set' />
<assign value='source.{PIDgrp.PID:21.2}' property='target.{PIDgrp.PID:21.2}' action='set' />
<assign value='source.{PIDgrp.PID:21.3}' property='target.{PIDgrp.PID:21.3}' action='set' />
<assign value='""' property='target.{PIDgrp.PID:21.5}' action='clear' />
<assign value='""' property='target.{PIDgrp.PID:22}' action='clear' />
<assign value='source.{PIDgrp.PID:23.3}' property='target.{PIDgrp.PID:23.3}' action='set' />
</true>
</if>
<code>
<![CDATA[                              
       //-------- PV1 SEGMENTS
]]></code>
<if condition='source.{PIDgrp.PV1}&apos;=""'>
<true>
<assign value='""' property='target.{PIDgrp.PV1:1}' action='clear' />
<assign value='source.{PIDgrp.PV1:2}' property='target.{PIDgrp.PV1:2}' action='set' />
<assign value='source.{PIDgrp.PV1:3.1}' property='target.{PIDgrp.PV1:3.1}' action='set' />
<assign value='source.{PIDgrp.PV1:3.2}' property='target.{PIDgrp.PV1:3.2}' action='set' />
<assign value='source.{PIDgrp.PV1:3.3}' property='target.{PIDgrp.PV1:3.3}' action='set' />
<assign value='source.{PIDgrp.PV1:3.4}' property='target.{PIDgrp.PV1:3.4}' action='set' />
<assign value='source.{PIDgrp.PV1:3.5}' property='target.{PIDgrp.PV1:3.5}' action='set' />
<assign value='source.{PIDgrp.PV1:3.7}' property='target.{PIDgrp.PV1:3.7}' action='set' />
<assign value='source.{PIDgrp.PV1:3.8}' property='target.{PIDgrp.PV1:3.8}' action='set' />
<assign value='source.{PIDgrp.PV1:4}' property='target.{PIDgrp.PV1:4}' action='set' />
<assign value='""' property='target.{PIDgrp.PV1:5}' action='clear' />
<assign value='source.{PIDgrp.PV1:6}' property='target.{PIDgrp.PV1:6}' action='set' />
<assign value='""' property='target.{PIDgrp.PV1:7}' action='clear' />
<if condition='source.{PIDgrp.PV1:7(*)}&apos;=""'>
<true>
<foreach property='source.{PIDgrp.PV1:7()}' key='PV17key'>
<assign value='source.{PIDgrp.PV1:7(PV17key).1}' property='target.{PIDgrp.PV1:7(PV17key).1}' action='set' />
<assign value='source.{PIDgrp.PV1:7(PV17key).2}' property='target.{PIDgrp.PV1:7(PV17key).2}' action='set' />
<assign value='source.{PIDgrp.PV1:7(PV17key).3}' property='target.{PIDgrp.PV1:7(PV17key).3}' action='set' />
<assign value='source.{PIDgrp.PV1:7(PV17key).4}' property='target.{PIDgrp.PV1:7(PV17key).4}' action='set' />
<assign value='source.{PIDgrp.PV1:7(PV17key).9}' property='target.{PIDgrp.PV1:7(PV17key).9}' action='set' />
<assign value='source.{PIDgrp.PV1:7(PV17key).13}' property='target.{PIDgrp.PV1:7(PV17key).13}' action='set' />
</foreach>
</true>
</if>
<if condition='source.{PIDgrp.PV1:8(*)}&apos;=""'>
<true>
<foreach property='source.{PIDgrp.PV1:8()}' key='PV18key'>
<assign value='source.{PIDgrp.PV1:8(PV18key).1}' property='target.{PIDgrp.PV1:8(PV18key).1}' action='set' />
<assign value='source.{PIDgrp.PV1:8(PV18key).2}' property='target.{PIDgrp.PV1:8(PV18key).2}' action='set' />
<assign value='source.{PIDgrp.PV1:8(PV18key).3}' property='target.{PIDgrp.PV1:8(PV18key).3}' action='set' />
<assign value='source.{PIDgrp.PV1:8(PV18key).4}' property='target.{PIDgrp.PV1:8(PV18key).4}' action='set' />
<assign value='source.{PIDgrp.PV1:8(PV18key).9}' property='target.{PIDgrp.PV1:8(PV18key).9}' action='set' />
<assign value='source.{PIDgrp.PV1:8(PV18key).13}' property='target.{PIDgrp.PV1:8(PV18key).13}' action='set' />
</foreach>
</true>
</if>
<if condition='source.{PIDgrp.PV1:9(*)}&apos;=""'>
<true>
<foreach property='source.{PIDgrp.PV1:9()}' key='PV19key'>
<assign value='source.{PIDgrp.PV1:9(PV19key).1}' property='target.{PIDgrp.PV1:9(PV19key).1}' action='set' />
<assign value='source.{PIDgrp.PV1:9(PV19key).2}' property='target.{PIDgrp.PV1:9(PV19key).2}' action='set' />
<assign value='source.{PIDgrp.PV1:9(PV19key).3}' property='target.{PIDgrp.PV1:9(PV19key).3}' action='set' />
<assign value='source.{PIDgrp.PV1:9(PV19key).4}' property='target.{PIDgrp.PV1:9(PV19key).4}' action='set' />
<assign value='source.{PIDgrp.PV1:9(PV19key).9}' property='target.{PIDgrp.PV1:9(PV19key).9}' action='set' />
<assign value='source.{PIDgrp.PV1:9(PV19key).13}' property='target.{PIDgrp.PV1:9(PV19key).13}' action='set' />
</foreach>
</true>
</if>
<assign value='source.{PIDgrp.PV1:10}' property='target.{PIDgrp.PV1:10}' action='set' />
<assign value='""' property='target.{PIDgrp.PV1:11}' action='clear' />
<if condition='source.{PIDgrp.PV1:17(*)}&apos;=""'>
<true>
<foreach property='source.{PIDgrp.PV1:17()}' key='PV117key'>
<assign value='source.{PIDgrp.PV1:17(PV117key).1}' property='target.{PIDgrp.PV1:17(PV117key).1}' action='set' />
<assign value='source.{PIDgrp.PV1:17(PV117key).2.1}' property='target.{PIDgrp.PV1:17(PV117key).2.1}' action='set' />
<assign value='source.{PIDgrp.PV1:17(PV117key).3}' property='target.{PIDgrp.PV1:17(PV117key).3}' action='set' />
<assign value='source.{PIDgrp.PV1:17(PV117key).4}' property='target.{PIDgrp.PV1:17(PV117key).4}' action='set' />
<assign value='source.{PIDgrp.PV1:17(PV117key).9.1}' property='target.{PIDgrp.PV1:17(PV117key).9.1}' action='set' />
<assign value='source.{PIDgrp.PV1:17(PV117key).13}' property='target.{PIDgrp.PV1:17(PV117key).13}' action='set' />
</foreach>
</true>
</if>
<assign value='source.{PIDgrp.PV1:18}' property='target.{PIDgrp.PV1:18}' action='set' />
<assign value='""' property='target.{PIDgrp.PV1:19}' action='clear' />
<if condition='source.{PIDgrp.PV1:20(*)}&apos;=""'>
<true>
<foreach property='source.{PIDgrp.PV1:20()}' key='PV120key'>
<assign value='source.{PIDgrp.PV1:20(PV120key)}' property='target.{PIDgrp.PV1:20(PV120key)}' action='set' />
</foreach>
</true>
</if>
<assign value='source.{PIDgrp.PV1:44}' property='target.{PIDgrp.PV1:44}' action='set' />
<assign value='""' property='target.{PIDgrp.PV1:45}' action='clear' />
<assign value='source.{PIDgrp.PV1:50}' property='target.{PIDgrp.PV1:50}' action='set' />
</true>
</if>
<code>
<![CDATA[                              
       //-------- ORC SEGMENTS
]]></code>
<foreach property='source.{ORCgrp()}' key='ORCgrpkey'>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:1}' property='target.{ORCgrp(ORCgrpkey).ORC:1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:2.1}' property='target.{ORCgrp(ORCgrpkey).ORC:2.1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:2.2}' property='target.{ORCgrp(ORCgrpkey).ORC:2.2}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:3}' action='clear'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:4}' action='clear'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:5}' action='clear'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:6}' action='clear'/>
<if condition='source.{ORCgrp(ORCgrpkey).ORC:7(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).ORC:7()}' key='ORC7key'>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).1}' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).2}' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).2}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).3}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).4}' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).4}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).5}' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).5}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).6}' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).6}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).7}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).8}' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).8}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).12}' property='target.{ORCgrp(ORCgrpkey).ORC:7(ORC7key).12}' action='set'/>
</foreach>
</true>
</if>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:8.1}' property='target.{ORCgrp(ORCgrpkey).ORC:8.1}' action='set'/>
<assign value='"EPC"' property='target.{ORCgrp(ORCgrpkey).ORC:8.2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:9}' property='target.{ORCgrp(ORCgrpkey).ORC:9}' action='set'/>
<if condition='source.{ORCgrp(ORCgrpkey).ORC:10(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).ORC:10()}' key='ORC10key'>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).1}' property='target.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).2}' property='target.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).3}' property='target.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).3}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).4}' property='target.{ORCgrp(ORCgrpkey).ORC:10(ORC10key).4}' action='set'/>
</foreach>
</true>
</if>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:11()}' action='clear'/>
<if condition='source.{ORCgrp(ORCgrpkey).ORC:12(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).ORC:12()}' key='ORC12key'>
<if condition='source.{ORCgrp(ORCgrpkey).ORC:12(ORC12key).13}="PRN"'>
<true>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:12(ORC12key).1}' property='target.{ORCgrp(ORCgrpkey).ORC:12(1).1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:12(ORC12key).2}' property='target.{ORCgrp(ORCgrpkey).ORC:12(1).2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:12(ORC12key).3}' property='target.{ORCgrp(ORCgrpkey).ORC:12(1).3}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:12(ORC12key).4}' property='target.{ORCgrp(ORCgrpkey).ORC:12(1).4}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:12(ORC12key).9}' property='target.{ORCgrp(ORCgrpkey).ORC:12(1).9}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:12(ORC12key).13}' property='target.{ORCgrp(ORCgrpkey).ORC:12(1).13}' action='set'/>
</true>
</if>
</foreach>
</true>
</if>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:13.1}' property='target.{ORCgrp(ORCgrpkey).ORC:13.1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:13.4}' property='target.{ORCgrp(ORCgrpkey).ORC:13.4}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:13.9}' property='target.{ORCgrp(ORCgrpkey).ORC:13.9}' action='set'/>
<if condition='source.{ORCgrp(ORCgrpkey).ORC:14(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).ORC:14()}' key='ORC14key'>
<if condition='source.{ORCgrp(ORCgrpkey).ORC:14(ORC14key).2}="WPN"'>
<true>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:14(ORC14key)}' property='target.{ORCgrp(ORCgrpkey).ORC:14(1)}' action='set'/>
</true>
</if>
</foreach>
</true>
</if>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:15}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:16}' property='target.{ORCgrp(ORCgrpkey).ORC:16}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:17}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:19}' property='target.{ORCgrp(ORCgrpkey).ORC:19}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).ORC:19}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:29}' property='target.{ORCgrp(ORCgrpkey).ORC:29}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).ORC:30}' property='target.{ORCgrp(ORCgrpkey).ORC:30}' action='set'/>
<code>
<![CDATA[                              
       //-------- OBRgrp.OBR SEGMENTS
]]></code>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR}&apos;=""'>
<true>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:2.1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:2.1}' action='set'/>
<assign value='"EPC"' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:2.2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:3.1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:3.1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:3.2}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:3.2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.2}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.3}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.3}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.5}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:4.5}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:5}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:6}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:6}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:7}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:7}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:8}' action='clear'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:9}' action='clear'/>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:10(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:10()}' key='OBR10key'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:10(OBR10key)}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:10(OBR10key)}' action='set'/>
</foreach>
</true>
</if>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:11}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:11}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:12}' action='clear'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:13}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:14}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:14}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:15.1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:15.1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:15.2}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:15.2}' action='set'/>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16()}' key='OBR16key'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).2}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).3}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).3}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).4}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).4}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).5}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).5}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).9}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).9}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).13}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:16(OBR16key).13}' action='set'/>
</foreach>
</true>
</if>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17()}' key='OBR17key'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17(OBR17key).1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17(OBR17key).1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17(OBR17key).6}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17(OBR17key).6}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17(OBR17key).7}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:17(OBR17key).7}' action='set'/>
</foreach>
</true>
</if>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:18}' action='clear'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:19}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:20}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:20}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:21}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:21}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:24}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:24}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:25}' action='clear'/>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27()}' key='OBR27key'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).2}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).4}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).4}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).6}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).6}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).8}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).8}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).12}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:27(OBR27key).12}' action='set'/>
</foreach>
</true>
</if>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:28(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:28()}' key='OBR28key'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:28(OBR28key)}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:28(OBR28key).1}' action='set'/>
</foreach>
</true>
</if>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:30}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:30}' action='set'/>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:31(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:31()}' key='OBR31key'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:31(OBR31key)}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:31(OBR31key).1}' action='set'/>
</foreach>
</true>
</if>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:36}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:36}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:44}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:44}' action='set'/>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:45(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:45()}' key='OBR45key'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBR:45(OBR45key)}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBR:45(OBR45key).1}' action='set'/>
</foreach>
</true>
</if>
</true>
</if>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.NTE(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.NTE()}' key='OBRNTEkey'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.NTE(OBRNTEkey):1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.NTE(OBRNTEkey):1}' action='set'/>
<assign value='""' property='target.{ORCgrp(ORCgrpkey).OBRgrp.NTE(OBRNTEkey):2}' action='clear'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.NTE(OBRNTEkey):3}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.NTE(OBRNTEkey):3}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.NTE(OBRNTEkey):4}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.NTE(OBRNTEkey):4}' action='set'/>
</foreach>
</true>
</if>
<if condition='source.{ORCgrp(ORCgrpkey).OBRgrp.OBX(*)}&apos;=""'>
<true>
<foreach property='source.{ORCgrp(ORCgrpkey).OBRgrp.OBX()}' key='OBXkey'>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):1}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):1}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):2}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):2}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):3}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):3}' action='set'/>
<assign value='source.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):5}' property='target.{ORCgrp(ORCgrpkey).OBRgrp.OBX(OBXkey):5}' action='set'/>
</foreach>
</true>
</if>
</foreach>
</transform>
}

}
