/// 
Class cshs.rrEpicORMToMeditech Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="cshs.csegp2Production">
<ruleSet name="MDR Meditech Router" effectiveBegin="" effectiveEnd="">
<rule name="Epic Orders" disabled="false">
<constraint name="docCategory" value="EPIC_ORM_231"></constraint>
<when condition="1">
<send transform="link2003.dtLink1408ToLink2003" target="ejoh2003"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
