<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959037e(jetbrains.mps.lang.dataFlow.generator.baseLanguage.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="7fa12e9c-b949-4976-b4fa-19accbc320b4" name="jetbrains.mps.lang.dataFlow" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp41" ref="r:00000000-0000-4000-0000-011c8959037d(jetbrains.mps.lang.dataFlow.structure)" />
    <import index="tpe8" ref="r:00000000-0000-4000-0000-011c895902cc(jetbrains.mps.baseLanguage.generator.java.conceptFunctionDefaults@generator)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="aplb" ref="r:a1d8bbbf-d4f0-431f-8dcd-a6badc777315(jetbrains.mps.lang.dataFlow)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="1fjm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework()" />
    <import index="dau9" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework.instructions()" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel()" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io()" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model()" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence()" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167088157977" name="createRootRule" index="2VS0gm" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167087469898" name="jetbrains.mps.lang.generator.structure.CreateRootRule" flags="lg" index="2VPoh5">
        <reference id="1167087469901" name="templateNode" index="2VPoh2" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1131073187192" name="jetbrains.mps.lang.generator.structure.MapSrcNodeMacro" flags="ln" index="1pdMLZ" />
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217004708011" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetInputModel" flags="nn" index="1r8y6K" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
    </language>
  </registry>
  <node concept="bUwia" id="hzAlK0a">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="hzAxxIo" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hz__QpZ" resolve="NodeParameter" />
      <node concept="j$656" id="hzAy6OU" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="hzArmmp" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hzAgYvJ" resolve="EmitCodeForStatement" />
      <node concept="j$656" id="hzAr$gc" role="1lVwrX">
        <ref role="v9R2y" node="hzArv$P" resolve="reduce_EmitCodeForStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hzAs2jK" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hz_JC5_" resolve="EmitJumpStatement" />
      <node concept="j$656" id="hzAs7xj" role="1lVwrX">
        <ref role="v9R2y" node="hzAs3U5" resolve="reduce_EmitJumpStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hzArSoT" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hz_J$v5" resolve="EmitIfJumpStatement" />
      <node concept="j$656" id="hzAs25$" role="1lVwrX">
        <ref role="v9R2y" node="hzArVrg" resolve="reduce_EmitIfJumpStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hzArLbh" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hz_DljO" resolve="EmitNopStatement" />
      <node concept="j$656" id="hzArQDz" role="1lVwrX">
        <ref role="v9R2y" node="hzArMzV" resolve="reduce_EmitNopStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hzAs888" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hz_DX0E" resolve="EmitReadStatement" />
      <node concept="j$656" id="hzAssHC" role="1lVwrX">
        <ref role="v9R2y" node="hzAsfa8" resolve="reduce_EmitReadStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hzAssSp" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hz_FXzu" resolve="EmitWriteStatement" />
      <node concept="j$656" id="hzAsuxD" role="1lVwrX">
        <ref role="v9R2y" node="hzAslgs" resolve="reduce_EmitWriteStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hzANAOQ" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hzAM$dR" resolve="EmitRetStatement" />
      <node concept="j$656" id="hzANCXA" role="1lVwrX">
        <ref role="v9R2y" node="hzANxCT" resolve="reduce_EmitRetStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="hzF7LhJ" role="3acgRq">
      <ref role="30HIoZ" to="tp41:hzF2QpO" resolve="EmitMayBeUnreachable" />
      <node concept="j$656" id="hzF8FxV" role="1lVwrX">
        <ref role="v9R2y" node="hzF8a4A" resolve="reduce_EmitMayBeUnreachableStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="h$4hmNq" role="3acgRq">
      <ref role="30HIoZ" to="tp41:h$4dLjP" resolve="EmitTryFinallyStatement" />
      <node concept="j$656" id="h$4hofJ" role="1lVwrX">
        <ref role="v9R2y" node="h$4gL71" resolve="reduce_EmitTryFinallyStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="h$a$Uah" role="3acgRq">
      <ref role="30HIoZ" to="tp41:h$axUQH" resolve="EmitLabelStatement" />
      <node concept="j$656" id="h$a$Xjd" role="1lVwrX">
        <ref role="v9R2y" node="h$a$qd2" resolve="reduce_EmitLabelStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="2E5u2r_i2fi" role="3acgRq">
      <ref role="30HIoZ" to="tp41:7n7cA7JTupy" resolve="InsertAfter" />
      <node concept="j$656" id="2E5u2r_i2fu" role="1lVwrX">
        <ref role="v9R2y" node="2E5u2r_hTkd" resolve="reduce_InsertAfterPosition" />
      </node>
    </node>
    <node concept="3aamgX" id="2E5u2r_i2fv" role="3acgRq">
      <ref role="30HIoZ" to="tp41:7n7cA7JTup$" resolve="InsertBefore" />
      <node concept="j$656" id="2E5u2r_i2fJ" role="1lVwrX">
        <ref role="v9R2y" node="2E5u2r_hTlX" resolve="reduce_InsertBeforePosition" />
      </node>
    </node>
    <node concept="3aamgX" id="7A5mqETniRN" role="3acgRq">
      <ref role="30HIoZ" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="gft3U" id="7A5mqETnowY" role="1lVwrX">
        <node concept="Xl_RD" id="7A5mqETnox0" role="gfFT$">
          <property role="Xl_RC" value="operation" />
          <node concept="29HgVG" id="7A5mqETnox1" role="lGtFl">
            <node concept="3NFfHV" id="7A5mqETnox2" role="3NFExx">
              <node concept="3clFbS" id="7A5mqETnox3" role="2VODD2">
                <node concept="3clFbF" id="7A5mqETnox4" role="3cqZAp">
                  <node concept="2OqwBi" id="7A5mqETnox5" role="3clFbG">
                    <node concept="30H73N" id="7A5mqETnox6" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7A5mqETnox7" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hqOqNr4" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7A5mqETnjjr" role="30HLyM">
        <node concept="3clFbS" id="7A5mqETnjjs" role="2VODD2">
          <node concept="3clFbF" id="7A5mqETnjjt" role="3cqZAp">
            <node concept="2OqwBi" id="7A5mqETnowR" role="3clFbG">
              <node concept="2OqwBi" id="7A5mqETnjjv" role="2Oq$k0">
                <node concept="30H73N" id="7A5mqETnjju" role="2Oq$k0" />
                <node concept="3TrEf2" id="7A5mqETnowQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" />
                </node>
              </node>
              <node concept="1mIQ4w" id="7A5mqETnowV" role="2OqNvi">
                <node concept="chp4Y" id="7A5mqETnowX" role="cj9EA">
                  <ref role="cht4Q" to="tp41:1_dIXlWBrH_" resolve="BaseInstructionOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3IIpNG1Vwfr" role="3acgRq">
      <ref role="30HIoZ" to="tp41:2$iKY2cjNc$" resolve="GetCodeForExpression" />
      <node concept="j$656" id="3IIpNG1VwF3" role="1lVwrX">
        <ref role="v9R2y" node="2$iKY2ck0PQ" resolve="reduce_GetCodeForExpression" />
      </node>
    </node>
    <node concept="3aamgX" id="1_dIXlWExzA" role="3acgRq">
      <ref role="30HIoZ" to="tp41:4jPTTYuoj20" resolve="InstructionType" />
      <node concept="j$656" id="1_dIXlWExZg" role="1lVwrX">
        <ref role="v9R2y" node="1_dIXlWBqXf" resolve="reduce_InstructionType" />
      </node>
    </node>
    <node concept="3aamgX" id="1_dIXlWExZe" role="3acgRq">
      <ref role="30HIoZ" to="tp41:1_dIXlWBrH$" resolve="InstructionGetSourceOperation" />
      <node concept="j$656" id="1_dIXlWExZh" role="1lVwrX">
        <ref role="v9R2y" node="1_dIXlWBrPQ" resolve="reduce_getSourceOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="6e$$c8H2r2e" role="3acgRq">
      <ref role="30HIoZ" to="tp41:6e$$c8H2kPs" resolve="InstructionIsNop" />
      <node concept="j$656" id="6e$$c8H2r2g" role="1lVwrX">
        <ref role="v9R2y" node="6e$$c8H2lnF" resolve="reduce_IsNopOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="6e$$c8H2r2h" role="3acgRq">
      <ref role="30HIoZ" to="tp41:6e$$c8H2kPt" resolve="InstructionIsRet" />
      <node concept="j$656" id="6e$$c8H2r2j" role="1lVwrX">
        <ref role="v9R2y" node="6e$$c8H2r1_" resolve="reduce_IsRetOperation" />
      </node>
    </node>
    <node concept="2rT7sh" id="hzAqEN8" role="2rTMjI">
      <property role="TrG5h" value="dataFlowBuilderConstructor" />
      <ref role="2rTdP9" to="tp41:hz_zdoP" resolve="DataFlowBuilderDeclaration" />
      <ref role="2rZz_L" to="tpee:fzclF84" resolve="ConstructorDeclaration" />
    </node>
    <node concept="3lhOvk" id="hzAmgDE" role="3lj3bC">
      <ref role="30HIoZ" to="tp41:hz_zdoP" resolve="DataFlowBuilderDeclaration" />
      <ref role="3lhOvi" node="hzApUj$" resolve="ConceptName_DataFlow" />
    </node>
    <node concept="2VPoh5" id="hzAm9oi" role="2VS0gm">
      <ref role="2VPoh2" node="hzAlXXe" resolve="DFABuilders" />
    </node>
    <node concept="3aamgX" id="7_ZEXY1jBFT" role="3acgRq">
      <ref role="30HIoZ" to="tp41:7_ZEXY1jBFP" resolve="InstructionIsJump" />
      <node concept="j$656" id="7_ZEXY1jBFV" role="1lVwrX">
        <ref role="v9R2y" node="7_ZEXY1jBFR" resolve="reduce_IsJumpOperation" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hzAlXXe">
    <property role="TrG5h" value="DFABuilders" />
    <node concept="3Tm1VV" id="hzAlXXf" role="1B3o_S" />
    <node concept="3uibUv" id="58JzOrw8lMS" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwe3" resolve="DataFlowBuilders" />
    </node>
    <node concept="n94m4" id="hHhdKn0" role="lGtFl" />
    <node concept="3clFb_" id="hzAm6m6" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="3cqZAl" id="hzAm6m7" role="3clF45" />
      <node concept="3Tm1VV" id="hzAm6m8" role="1B3o_S" />
      <node concept="3clFbS" id="hzAm6m9" role="3clF47">
        <node concept="3clFbF" id="hzAqko8" role="3cqZAp">
          <node concept="2OqwBi" id="hzAqkvt" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm7LA" role="2Oq$k0">
              <ref role="3cqZAo" node="hzAm7QQ" resolve="manager" />
            </node>
            <node concept="liA8E" id="hzAqkRN" role="2OqNvi">
              <ref role="37wK5l" to="aplb:3HJD4JbIwgZ" resolve="register" />
              <node concept="Xl_RD" id="hzAql6e" role="37wK5m">
                <property role="Xl_RC" value="concept.fq.name" />
                <node concept="17Uvod" id="hzAquWn" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="hzAquWo" role="3zH0cK">
                    <node concept="3clFbS" id="hzAquWp" role="2VODD2">
                      <node concept="3clFbF" id="hzAqv$W" role="3cqZAp">
                        <node concept="2OqwBi" id="hzAqBWF" role="3clFbG">
                          <node concept="2OqwBi" id="hzAqvEm" role="2Oq$k0">
                            <node concept="30H73N" id="hzAqv$X" role="2Oq$k0" />
                            <node concept="3TrEf2" id="hzAqBRL" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp41:hz_znqw" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="hzAqCGl" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="hGRi7G3" role="37wK5m">
                <node concept="1pGfFk" id="hGRi7G5" role="2ShVmc">
                  <ref role="37wK5l" node="hzAqhbI" resolve="ConceptName_DataFlow" />
                  <node concept="1ZhdrF" id="hzAqLaT" role="lGtFl">
                    <property role="2qtEX8" value="baseMethodDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                    <node concept="3$xsQk" id="hzAqLaU" role="3$ytzL">
                      <node concept="3clFbS" id="hzAqLaV" role="2VODD2">
                        <node concept="3clFbF" id="hzAqM7J" role="3cqZAp">
                          <node concept="2OqwBi" id="hHhdQkB" role="3clFbG">
                            <node concept="1iwH7S" id="hHiVlb_" role="2Oq$k0" />
                            <node concept="1iwH70" id="hHiVh4L" role="2OqNvi">
                              <ref role="1iwH77" node="hzAqEN8" resolve="dataFlowBuilderConstructor" />
                              <node concept="30H73N" id="hzAqM7K" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="hzAqqav" role="lGtFl">
            <node concept="3JmXsc" id="hzAqqaw" role="3Jn$fo">
              <node concept="3clFbS" id="hzAqqax" role="2VODD2">
                <node concept="3clFbF" id="hzAqssR" role="3cqZAp">
                  <node concept="2OqwBi" id="33pTLrPPXMX" role="3clFbG">
                    <node concept="2OqwBi" id="hzAqsy1" role="2Oq$k0">
                      <node concept="2OqwBi" id="hHs0HzZ" role="2Oq$k0">
                        <node concept="1iwH7S" id="hHs0H$1" role="2Oq$k0" />
                        <node concept="1r8y6K" id="hHs0H$2" role="2OqNvi" />
                      </node>
                      <node concept="2RRcyG" id="hzAqt31" role="2OqNvi">
                        <ref role="2RRcyH" to="tp41:hz_zdoP" resolve="DataFlowBuilderDeclaration" />
                      </node>
                    </node>
                    <node concept="2S7cBI" id="33pTLrPPXN3" role="2OqNvi">
                      <node concept="1bVj0M" id="33pTLrPPXN4" role="23t8la">
                        <node concept="3clFbS" id="33pTLrPPXN5" role="1bW5cS">
                          <node concept="3clFbF" id="33pTLrPPYBP" role="3cqZAp">
                            <node concept="2OqwBi" id="33pTLrPQ3PZ" role="3clFbG">
                              <node concept="2OqwBi" id="33pTLrPPYBT" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxghg1S" role="2Oq$k0">
                                  <ref role="3cqZAo" node="33pTLrPPXN6" resolve="it" />
                                </node>
                                <node concept="3TrEf2" id="33pTLrPQ3PQ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp41:hz_znqw" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="33pTLrPQ3Qa" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="33pTLrPPXN6" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1P4c1XrzTdU" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="1nlBCl" id="33pTLrPPXN8" role="2S7zOq">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hzAm7QQ" role="3clF46">
        <property role="TrG5h" value="manager" />
        <node concept="3uibUv" id="58JzOrw8lMT" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIwfM" resolve="DataFlowManager" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hzApUj$">
    <property role="TrG5h" value="ConceptName_DataFlow" />
    <node concept="3Tm1VV" id="hzApUj_" role="1B3o_S" />
    <node concept="n94m4" id="hzAq0Y7" role="lGtFl">
      <ref role="n9lRv" to="tp41:hz_zdoP" resolve="DataFlowBuilderDeclaration" />
    </node>
    <node concept="17Uvod" id="hzAq2cw" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="hzAq2cx" role="3zH0cK">
        <node concept="3clFbS" id="hzAq2cy" role="2VODD2">
          <node concept="3clFbF" id="hzAq8km" role="3cqZAp">
            <node concept="2OqwBi" id="hzAq8sc" role="3clFbG">
              <node concept="30H73N" id="hzAq8kn" role="2Oq$k0" />
              <node concept="3TrcHB" id="hzAq8Lu" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="58JzOrw8lMW" role="1zkMxy">
      <ref role="3uigEE" to="aplb:3HJD4JbIwf_" resolve="DataFlowBuilder" />
    </node>
    <node concept="3clFbW" id="hzAqhbI" role="jymVt">
      <node concept="3cqZAl" id="hzAqhbJ" role="3clF45" />
      <node concept="3Tm1VV" id="hzAqhbK" role="1B3o_S" />
      <node concept="3clFbS" id="hzAqhbL" role="3clF47" />
      <node concept="1pdMLZ" id="hzAqJh3" role="lGtFl">
        <ref role="2rW$FS" node="hzAqEN8" resolve="dataFlowBuilderConstructor" />
      </node>
    </node>
    <node concept="3clFb_" id="hzAqdfD" role="jymVt">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzAqdfE" role="1B3o_S" />
      <node concept="3cqZAl" id="hzAqdfF" role="3clF45" />
      <node concept="37vLTG" id="hzAqdfG" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="hzAqdfH" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzAqdfI" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="58JzOrw8lMX" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzAqdfK" role="3clF47">
        <node concept="29HgVG" id="hzAqXZx" role="lGtFl">
          <node concept="3NFfHV" id="hzAqXZy" role="3NFExx">
            <node concept="3clFbS" id="hzAqXZz" role="2VODD2">
              <node concept="3clFbF" id="hzAr4Fm" role="3cqZAp">
                <node concept="2OqwBi" id="hzAr55N" role="3clFbG">
                  <node concept="2OqwBi" id="hzAr4Me" role="2Oq$k0">
                    <node concept="30H73N" id="hzAr4Fn" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hzAr51S" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp41:hz_A6mB" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hzAr5xb" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzArv$P">
    <property role="TrG5h" value="reduce_EmitCodeForStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hzAgYvJ" resolve="EmitCodeForStatement" />
    <node concept="3clFb_" id="hzArCky" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzArCkz" role="1B3o_S" />
      <node concept="3cqZAl" id="hzArCk$" role="3clF45" />
      <node concept="37vLTG" id="hzArCk_" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzArCkA" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzArCkB" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN0" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzArD_Q" role="3clF47">
        <node concept="3clFbF" id="hzArDZ1" role="3cqZAp">
          <node concept="2OqwBi" id="hzArEYi" role="3clFbG">
            <node concept="2OqwBi" id="hzArE6n" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm_rp" role="2Oq$k0">
                <ref role="3cqZAo" node="hzArCkB" resolve="_context" />
              </node>
              <node concept="liA8E" id="hzArESD" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="hzArGjL" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.build(java.lang.Object):void" resolve="build" />
              <node concept="10QFUN" id="hFJjvFr" role="37wK5m">
                <node concept="10Nm6u" id="hFJjvFt" role="10QFUP">
                  <node concept="29HgVG" id="hFJjvFu" role="lGtFl">
                    <node concept="3NFfHV" id="hFJjvFv" role="3NFExx">
                      <node concept="3clFbS" id="hFJjvFw" role="2VODD2">
                        <node concept="3clFbF" id="hFJjvFx" role="3cqZAp">
                          <node concept="2OqwBi" id="hFJjvFy" role="3clFbG">
                            <node concept="30H73N" id="hFJjvFz" role="2Oq$k0" />
                            <node concept="3TrEf2" id="hFJjvF$" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp41:hzAh4UT" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="i2ssbS0" role="10QFUM" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="hzAyEvC" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzArMzV">
    <property role="TrG5h" value="reduce_EmitNopStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hz_DljO" resolve="EmitNopStatement" />
    <node concept="3clFb_" id="hzArMzW" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzArMzX" role="1B3o_S" />
      <node concept="3cqZAl" id="hzArMzY" role="3clF45" />
      <node concept="37vLTG" id="hzArMzZ" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzArM$0" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzArM$1" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN5" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzArM$3" role="3clF47">
        <node concept="3clFbF" id="hzArM$4" role="3cqZAp">
          <node concept="2OqwBi" id="hzArM$5" role="3clFbG">
            <node concept="liA8E" id="hzArPlM" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitNop(int,java.lang.String):void" resolve="emitNop" />
              <node concept="3cmrfG" id="2_nZjsdSTUT" role="37wK5m">
                <property role="3cmrfH" value="1" />
                <node concept="1W57fq" id="2_nZjsdSTUZ" role="lGtFl">
                  <node concept="3IZrLx" id="2_nZjsdSTV0" role="3IZSJc">
                    <node concept="3clFbS" id="2_nZjsdSTV1" role="2VODD2">
                      <node concept="3clFbF" id="2_nZjsdSTV6" role="3cqZAp">
                        <node concept="3y3z36" id="2_nZjsdSTV7" role="3clFbG">
                          <node concept="10Nm6u" id="2_nZjsdSTV8" role="3uHU7w" />
                          <node concept="2OqwBi" id="2_nZjsdSTV9" role="3uHU7B">
                            <node concept="30H73N" id="2_nZjsdSTVa" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2_nZjsdSTVb" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp41:4m2ztrU_46" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="29HgVG" id="2_nZjsdSTUW" role="lGtFl">
                  <node concept="3NFfHV" id="2_nZjsdSTUX" role="3NFExx">
                    <node concept="3clFbS" id="2_nZjsdSTUY" role="2VODD2">
                      <node concept="3clFbF" id="2_nZjsdSTV2" role="3cqZAp">
                        <node concept="2OqwBi" id="2_nZjsdSTV3" role="3clFbG">
                          <node concept="30H73N" id="2_nZjsdSTV4" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2_nZjsdSTV5" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:4m2ztrU_46" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1$NEetdVqfP" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="17Uvod" id="1$NEetdVqYI" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1$NEetdVqYJ" role="3zH0cK">
                    <node concept="3clFbS" id="1$NEetdVqYK" role="2VODD2">
                      <node concept="3clFbF" id="1$NEetdVsyP" role="3cqZAp">
                        <node concept="2OqwBi" id="1$NEetdVRnM" role="3clFbG">
                          <node concept="2OqwBi" id="1$NEetdVNjU" role="2Oq$k0">
                            <node concept="2JrnkZ" id="1$NEetdVMr2" role="2Oq$k0">
                              <node concept="2OqwBi" id="1$NEetdVtNu" role="2JrQYb">
                                <node concept="1iwH7S" id="1$NEetdVsyO" role="2Oq$k0" />
                                <node concept="12$id9" id="1$NEetdVvI0" role="2OqNvi">
                                  <node concept="30H73N" id="1$NEetdVxiN" role="12$y8L" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1$NEetdVPER" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1$NEetdVSyR" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hzArM$g" role="2Oq$k0">
              <node concept="liA8E" id="hzArM$h" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="2BHiRxglEtU" role="2Oq$k0">
                <ref role="3cqZAo" node="hzArM$1" resolve="_context" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="hzAyInJ" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzArVrg">
    <property role="TrG5h" value="reduce_EmitIfJumpStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hz_J$v5" resolve="EmitIfJumpStatement" />
    <node concept="3clFb_" id="hzArVrh" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzArVri" role="1B3o_S" />
      <node concept="3cqZAl" id="hzArVrj" role="3clF45" />
      <node concept="37vLTG" id="hzArVrk" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzArVrl" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzArVrm" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN1" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzArVro" role="3clF47">
        <node concept="3clFbF" id="hzArVrp" role="3cqZAp">
          <node concept="2OqwBi" id="hzArVrq" role="3clFbG">
            <node concept="2OqwBi" id="hzArVrs" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxghixy" role="2Oq$k0">
                <ref role="3cqZAo" node="hzArVrm" resolve="_context" />
              </node>
              <node concept="liA8E" id="hzArVru" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="hzArYy0" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitIfJump(jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position,int,java.lang.String):void" resolve="emitIfJump" />
              <node concept="10Nm6u" id="hzArZsn" role="37wK5m">
                <node concept="1sPUBX" id="1WfddY$XI1n" role="lGtFl">
                  <ref role="v9R2y" node="hzAsziS" resolve="Positions" />
                  <node concept="3NFfHV" id="hzAsZQD" role="1sPUBK">
                    <node concept="3clFbS" id="hzAsZQE" role="2VODD2">
                      <node concept="3clFbF" id="hzAt09Y" role="3cqZAp">
                        <node concept="2OqwBi" id="hzAt0h5" role="3clFbG">
                          <node concept="30H73N" id="hzAt09Z" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hzAt1nU" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:hz_JbE4" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="2_nZjsdSTF8" role="37wK5m">
                <property role="3cmrfH" value="1" />
                <node concept="1W57fq" id="2_nZjsdSTFe" role="lGtFl">
                  <node concept="3IZrLx" id="2_nZjsdSTFf" role="3IZSJc">
                    <node concept="3clFbS" id="2_nZjsdSTFg" role="2VODD2">
                      <node concept="3clFbF" id="2_nZjsdSTFh" role="3cqZAp">
                        <node concept="3y3z36" id="2_nZjsdSTFi" role="3clFbG">
                          <node concept="10Nm6u" id="2_nZjsdSTFj" role="3uHU7w" />
                          <node concept="2OqwBi" id="2_nZjsdSTFk" role="3uHU7B">
                            <node concept="30H73N" id="2_nZjsdSTFl" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2_nZjsdSTFm" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp41:4m2ztrU_46" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="29HgVG" id="2_nZjsdSTFb" role="lGtFl">
                  <node concept="3NFfHV" id="2_nZjsdSTFc" role="3NFExx">
                    <node concept="3clFbS" id="2_nZjsdSTFd" role="2VODD2">
                      <node concept="3clFbF" id="2_nZjsdSTFn" role="3cqZAp">
                        <node concept="2OqwBi" id="2_nZjsdSTFo" role="3clFbG">
                          <node concept="30H73N" id="2_nZjsdSTFp" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2_nZjsdSTFq" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:4m2ztrU_46" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1$NEetdWWwB" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="17Uvod" id="1$NEetdWWwC" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1$NEetdWWwD" role="3zH0cK">
                    <node concept="3clFbS" id="1$NEetdWWwE" role="2VODD2">
                      <node concept="3clFbF" id="1$NEetdWWwF" role="3cqZAp">
                        <node concept="2OqwBi" id="1$NEetdWWwG" role="3clFbG">
                          <node concept="2OqwBi" id="1$NEetdWWwH" role="2Oq$k0">
                            <node concept="2JrnkZ" id="1$NEetdWWwI" role="2Oq$k0">
                              <node concept="2OqwBi" id="1$NEetdWWwJ" role="2JrQYb">
                                <node concept="1iwH7S" id="1$NEetdWWwK" role="2Oq$k0" />
                                <node concept="12$id9" id="1$NEetdWWwL" role="2OqNvi">
                                  <node concept="30H73N" id="1$NEetdWWwM" role="12$y8L" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1$NEetdWWwN" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1$NEetdWWwO" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="hzAyFVs" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzAs3U5">
    <property role="TrG5h" value="reduce_EmitJumpStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hz_JC5_" resolve="EmitJumpStatement" />
    <node concept="3clFb_" id="hzAs3U6" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzAs3U7" role="1B3o_S" />
      <node concept="3cqZAl" id="hzAs3U8" role="3clF45" />
      <node concept="37vLTG" id="hzAs3U9" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzAs3Ua" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzAs3Ub" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN2" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzAs3Ud" role="3clF47">
        <node concept="3clFbF" id="hzAs3Ue" role="3cqZAp">
          <node concept="2OqwBi" id="hzAs3Uf" role="3clFbG">
            <node concept="liA8E" id="hzAs3Uh" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitJump(jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position,java.lang.String):void" resolve="emitJump" />
              <node concept="10Nm6u" id="hzAs3Ui" role="37wK5m">
                <node concept="1sPUBX" id="1WfddY$XI$b" role="lGtFl">
                  <ref role="v9R2y" node="hzAsziS" resolve="Positions" />
                  <node concept="3NFfHV" id="hzAt6FU" role="1sPUBK">
                    <node concept="3clFbS" id="hzAt6FV" role="2VODD2">
                      <node concept="3clFbF" id="hzAt77M" role="3cqZAp">
                        <node concept="2OqwBi" id="hzAt7cG" role="3clFbG">
                          <node concept="30H73N" id="hzAt77N" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hzAt7qa" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:hz_JbE4" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1$NEetdWS38" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="17Uvod" id="1$NEetdWS39" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1$NEetdWS3a" role="3zH0cK">
                    <node concept="3clFbS" id="1$NEetdWS3b" role="2VODD2">
                      <node concept="3clFbF" id="1$NEetdWS3c" role="3cqZAp">
                        <node concept="2OqwBi" id="1$NEetdWS3d" role="3clFbG">
                          <node concept="2OqwBi" id="1$NEetdWS3e" role="2Oq$k0">
                            <node concept="2JrnkZ" id="1$NEetdWS3f" role="2Oq$k0">
                              <node concept="2OqwBi" id="1$NEetdWS3g" role="2JrQYb">
                                <node concept="1iwH7S" id="1$NEetdWS3h" role="2Oq$k0" />
                                <node concept="12$id9" id="1$NEetdWS3i" role="2OqNvi">
                                  <node concept="30H73N" id="1$NEetdWS3j" role="12$y8L" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1$NEetdWS3k" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1$NEetdWS3l" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hzAs3Uj" role="2Oq$k0">
              <node concept="liA8E" id="hzAs3Uk" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="2BHiRxglI9L" role="2Oq$k0">
                <ref role="3cqZAo" node="hzAs3Ub" resolve="_context" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="hzAyHk_" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzAsfa8">
    <property role="TrG5h" value="reduce_EmitReadStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hz_DX0E" resolve="EmitReadStatement" />
    <node concept="3clFb_" id="hzAsfa9" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzAsfaa" role="1B3o_S" />
      <node concept="3cqZAl" id="hzAsfab" role="3clF45" />
      <node concept="37vLTG" id="hzAsfac" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzAsfad" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzAsfae" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN6" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzAsfag" role="3clF47">
        <node concept="3clFbF" id="hzAsfah" role="3cqZAp">
          <node concept="2OqwBi" id="hzAsfai" role="3clFbG">
            <node concept="2OqwBi" id="hzAsfak" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgkWgo" role="2Oq$k0">
                <ref role="3cqZAo" node="hzAsfae" resolve="_context" />
              </node>
              <node concept="liA8E" id="hzAsfam" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="hzAshTr" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitRead(java.lang.Object,java.lang.String):void" resolve="emitRead" />
              <node concept="10Nm6u" id="hzAsifb" role="37wK5m">
                <node concept="29HgVG" id="hzAsizH" role="lGtFl">
                  <node concept="3NFfHV" id="hzAsizI" role="3NFExx">
                    <node concept="3clFbS" id="hzAsizJ" role="2VODD2">
                      <node concept="3clFbF" id="hzAsiUH" role="3cqZAp">
                        <node concept="2OqwBi" id="hzAsiZ8" role="3clFbG">
                          <node concept="30H73N" id="hzAsiUI" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hzAsj$1" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:hz_H1WB" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1$NEetdWJhs" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="17Uvod" id="1$NEetdWJht" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1$NEetdWJhu" role="3zH0cK">
                    <node concept="3clFbS" id="1$NEetdWJhv" role="2VODD2">
                      <node concept="3clFbF" id="1$NEetdWJhw" role="3cqZAp">
                        <node concept="2OqwBi" id="1$NEetdWJhx" role="3clFbG">
                          <node concept="2OqwBi" id="1$NEetdWJhy" role="2Oq$k0">
                            <node concept="2JrnkZ" id="1$NEetdWJhz" role="2Oq$k0">
                              <node concept="2OqwBi" id="1$NEetdWJh$" role="2JrQYb">
                                <node concept="1iwH7S" id="1$NEetdWJh_" role="2Oq$k0" />
                                <node concept="12$id9" id="1$NEetdWJhA" role="2OqNvi">
                                  <node concept="30H73N" id="1$NEetdWJhB" role="12$y8L" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1$NEetdWJhC" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1$NEetdWJhD" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="hzAyJrB" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzAslgs">
    <property role="TrG5h" value="reduce_EmitWriteStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hz_FXzu" resolve="EmitWriteStatement" />
    <node concept="3clFb_" id="hzAslgt" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzAslgu" role="1B3o_S" />
      <node concept="3cqZAl" id="hzAslgv" role="3clF45" />
      <node concept="37vLTG" id="hzAslgw" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzAslgx" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzAslgy" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN9" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzAslg$" role="3clF47">
        <node concept="3clFbF" id="hzAslg_" role="3cqZAp">
          <node concept="2OqwBi" id="hzAslgA" role="3clFbG">
            <node concept="liA8E" id="hzAslgC" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitWrite(java.lang.Object,java.lang.Object,java.lang.String):void" resolve="emitWrite" />
              <node concept="10Nm6u" id="hzAslgD" role="37wK5m">
                <node concept="29HgVG" id="hzAslgE" role="lGtFl">
                  <node concept="3NFfHV" id="hzAslgF" role="3NFExx">
                    <node concept="3clFbS" id="hzAslgG" role="2VODD2">
                      <node concept="3clFbF" id="hzAslgH" role="3cqZAp">
                        <node concept="2OqwBi" id="hzAslgI" role="3clFbG">
                          <node concept="3TrEf2" id="hzAslgJ" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:hz_H1WB" />
                          </node>
                          <node concept="30H73N" id="hzAslgK" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="hTZhTCn" role="37wK5m">
                <node concept="29HgVG" id="hU2pt4e" role="lGtFl">
                  <node concept="3NFfHV" id="hU2pt4f" role="3NFExx">
                    <node concept="3clFbS" id="hU2pt4g" role="2VODD2">
                      <node concept="3clFbF" id="hU2pwT3" role="3cqZAp">
                        <node concept="2OqwBi" id="hU2pymb" role="3clFbG">
                          <node concept="30H73N" id="hU2pwT4" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hU2pz8K" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:hTXBRKV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1$NEetdWLsQ" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="17Uvod" id="1$NEetdWLsR" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1$NEetdWLsS" role="3zH0cK">
                    <node concept="3clFbS" id="1$NEetdWLsT" role="2VODD2">
                      <node concept="3clFbF" id="1$NEetdWLsU" role="3cqZAp">
                        <node concept="2OqwBi" id="1$NEetdWLsV" role="3clFbG">
                          <node concept="2OqwBi" id="1$NEetdWLsW" role="2Oq$k0">
                            <node concept="2JrnkZ" id="1$NEetdWLsX" role="2Oq$k0">
                              <node concept="2OqwBi" id="1$NEetdWLsY" role="2JrQYb">
                                <node concept="1iwH7S" id="1$NEetdWLsZ" role="2Oq$k0" />
                                <node concept="12$id9" id="1$NEetdWLt0" role="2OqNvi">
                                  <node concept="30H73N" id="1$NEetdWLt1" role="12$y8L" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1$NEetdWLt2" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1$NEetdWLt3" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hzAslgL" role="2Oq$k0">
              <node concept="liA8E" id="hzAslgM" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="2BHiRxgkWoY" role="2Oq$k0">
                <ref role="3cqZAo" node="hzAslgy" resolve="_context" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="hzAyKs_" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="hzAsziS">
    <property role="TrG5h" value="Positions" />
    <property role="3GE5qa" value="Positions" />
    <node concept="3aamgX" id="hzAs_Ni" role="3aUrZf">
      <ref role="30HIoZ" to="tp41:hz_IHex" resolve="BeforePosition" />
      <node concept="j$656" id="hzAsNMc" role="1lVwrX">
        <ref role="v9R2y" node="hzAsBU_" resolve="reduce_BeforePosition" />
      </node>
    </node>
    <node concept="3aamgX" id="hzAsOoM" role="3aUrZf">
      <ref role="30HIoZ" to="tp41:hz_IK$q" resolve="AfterPosition" />
      <node concept="j$656" id="hzAsVcg" role="1lVwrX">
        <ref role="v9R2y" node="hzAsQhF" resolve="reduce_AfterPosition" />
      </node>
    </node>
    <node concept="3aamgX" id="h$a$8jI" role="3aUrZf">
      <ref role="30HIoZ" to="tp41:h$ayLkA" resolve="LabelPosition" />
      <node concept="j$656" id="h$a$dca" role="1lVwrX">
        <ref role="v9R2y" node="h$azFgq" resolve="reduce_LabelPosition" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzAsBU_">
    <property role="TrG5h" value="reduce_BeforePosition" />
    <property role="3GE5qa" value="Positions" />
    <ref role="3gUMe" to="tp41:hz_IHex" resolve="BeforePosition" />
    <node concept="3clFb_" id="hzAsGP$" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzAsGP_" role="1B3o_S" />
      <node concept="3cqZAl" id="hzAsGPA" role="3clF45" />
      <node concept="37vLTG" id="hzAsGPB" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzAsGPC" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzAsGPD" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lNb" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzAsGPF" role="3clF47">
        <node concept="3clFbF" id="hzAsGPG" role="3cqZAp">
          <node concept="2OqwBi" id="hzAsGPH" role="3clFbG">
            <node concept="2OqwBi" id="hzAsGPI" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgkZZ2" role="2Oq$k0">
                <ref role="3cqZAo" node="hzAsGPD" resolve="_context" />
              </node>
              <node concept="liA8E" id="hzAsGPK" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="hzAsIkT" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.before(java.lang.Object):jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position" resolve="before" />
              <node concept="10Nm6u" id="hzAsIBu" role="37wK5m">
                <node concept="29HgVG" id="hzAsJpz" role="lGtFl">
                  <node concept="3NFfHV" id="hzAsJp$" role="3NFExx">
                    <node concept="3clFbS" id="hzAsJp_" role="2VODD2">
                      <node concept="3clFbF" id="hzAsJW1" role="3cqZAp">
                        <node concept="2OqwBi" id="hzAsK1U" role="3clFbG">
                          <node concept="30H73N" id="hzAsJW2" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hzAsLYW" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:hz_I9J2" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="hzAsGPU" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzAsQhF">
    <property role="TrG5h" value="reduce_AfterPosition" />
    <property role="3GE5qa" value="Positions" />
    <ref role="3gUMe" to="tp41:hz_IK$q" resolve="AfterPosition" />
    <node concept="3clFb_" id="hzAsQhG" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzAsQhH" role="1B3o_S" />
      <node concept="3cqZAl" id="hzAsQhI" role="3clF45" />
      <node concept="37vLTG" id="hzAsQhJ" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzAsQhK" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzAsQhL" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lNa" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzAsQhN" role="3clF47">
        <node concept="3clFbF" id="hzAsQhO" role="3cqZAp">
          <node concept="2OqwBi" id="hzAsQhP" role="3clFbG">
            <node concept="raruj" id="hzAsQhQ" role="lGtFl" />
            <node concept="liA8E" id="hzAsQhR" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.after(java.lang.Object):jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position" resolve="after" />
              <node concept="10Nm6u" id="hzAsQhS" role="37wK5m">
                <node concept="29HgVG" id="hzAsQhT" role="lGtFl">
                  <node concept="3NFfHV" id="hzAsQhU" role="3NFExx">
                    <node concept="3clFbS" id="hzAsQhV" role="2VODD2">
                      <node concept="3clFbF" id="hzAsQhW" role="3cqZAp">
                        <node concept="2OqwBi" id="hzAsQhX" role="3clFbG">
                          <node concept="3TrEf2" id="hzAsQhY" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:hz_I9J2" />
                          </node>
                          <node concept="30H73N" id="hzAsQhZ" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="hzAsQi0" role="2Oq$k0">
              <node concept="liA8E" id="hzAsQi1" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="2BHiRxghfM9" role="2Oq$k0">
                <ref role="3cqZAo" node="hzAsQhL" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzANxCT">
    <property role="TrG5h" value="reduce_EmitRetStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hzAM$dR" resolve="EmitRetStatement" />
    <node concept="3clFb_" id="hzANxCU" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzANxCV" role="1B3o_S" />
      <node concept="3cqZAl" id="hzANxCW" role="3clF45" />
      <node concept="37vLTG" id="hzANxCX" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzANxCY" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzANxCZ" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN7" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzANxD1" role="3clF47">
        <node concept="3clFbF" id="hzANxD2" role="3cqZAp">
          <node concept="raruj" id="hzANxD3" role="lGtFl" />
          <node concept="2OqwBi" id="hzANxD4" role="3clFbG">
            <node concept="2OqwBi" id="hzANxD5" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgmzsy" role="2Oq$k0">
                <ref role="3cqZAo" node="hzANxCZ" resolve="_context" />
              </node>
              <node concept="liA8E" id="hzANxD7" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="hzANxD8" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitRet(java.lang.String):void" resolve="emitRet" />
              <node concept="Xl_RD" id="1$NEetdWP8M" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="17Uvod" id="1$NEetdWP8N" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1$NEetdWP8O" role="3zH0cK">
                    <node concept="3clFbS" id="1$NEetdWP8P" role="2VODD2">
                      <node concept="3clFbF" id="1$NEetdWP8Q" role="3cqZAp">
                        <node concept="2OqwBi" id="1$NEetdWP8R" role="3clFbG">
                          <node concept="2OqwBi" id="1$NEetdWP8S" role="2Oq$k0">
                            <node concept="2JrnkZ" id="1$NEetdWP8T" role="2Oq$k0">
                              <node concept="2OqwBi" id="1$NEetdWP8U" role="2JrQYb">
                                <node concept="1iwH7S" id="1$NEetdWP8V" role="2Oq$k0" />
                                <node concept="12$id9" id="1$NEetdWP8W" role="2OqNvi">
                                  <node concept="30H73N" id="1$NEetdWP8X" role="12$y8L" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1$NEetdWP8Y" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1$NEetdWP8Z" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hzF8a4A">
    <property role="TrG5h" value="reduce_EmitMayBeUnreachableStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:hzF2QpO" resolve="EmitMayBeUnreachable" />
    <node concept="3clFb_" id="hzF8a4B" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="hzF8a4C" role="1B3o_S" />
      <node concept="3cqZAl" id="hzF8a4D" role="3clF45" />
      <node concept="37vLTG" id="hzF8a4E" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hzF8a4F" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="hzF8a4G" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN4" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hzF8a4I" role="3clF47">
        <node concept="3clFbF" id="hzF8a4J" role="3cqZAp">
          <node concept="raruj" id="hzF8a4K" role="lGtFl" />
          <node concept="2OqwBi" id="hzF8kky" role="3clFbG">
            <node concept="2OqwBi" id="hzF8jV_" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgmyyh" role="2Oq$k0">
                <ref role="3cqZAo" node="hzF8a4G" resolve="_context" />
              </node>
              <node concept="liA8E" id="hzF8kfS" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="hzF8lrw" role="2OqNvi">
              <ref role="37wK5l" to="aplb:3HJD4JbIvCy" resolve="emitMayBeUnreachable" />
              <node concept="2ShNRf" id="hzF8swd" role="37wK5m">
                <node concept="YeOm9" id="hzF8sW$" role="2ShVmc">
                  <node concept="1Y3b0j" id="hzF8sW_" role="YeSDq">
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="hzF8sWA" role="1B3o_S" />
                    <node concept="3clFb_" id="hzF8ua0" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="hzF8ua1" role="1B3o_S" />
                      <node concept="3cqZAl" id="hzF8ua2" role="3clF45" />
                      <node concept="3clFbS" id="hzF8ua3" role="3clF47">
                        <node concept="3clFbF" id="hzF8v_8" role="3cqZAp">
                          <node concept="2OqwBi" id="2_nZjsdSTUN" role="3clFbG">
                            <node concept="10M0yZ" id="2_nZjsdSTFr" role="2Oq$k0">
                              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                            </node>
                            <node concept="liA8E" id="2_nZjsdSTUR" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println():void" resolve="println" />
                            </node>
                          </node>
                          <node concept="29HgVG" id="hzF8w68" role="lGtFl">
                            <node concept="3NFfHV" id="hzF8w69" role="3NFExx">
                              <node concept="3clFbS" id="hzF8w6a" role="2VODD2">
                                <node concept="3clFbF" id="hzF8wIt" role="3cqZAp">
                                  <node concept="2OqwBi" id="hzF8wOA" role="3clFbG">
                                    <node concept="30H73N" id="hzF8wIu" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="hzF8x3h" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp41:hzF2SsG" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h$4gL71">
    <property role="TrG5h" value="reduce_EmitTryFinallyStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:h$4dLjP" resolve="EmitTryFinallyStatement" />
    <node concept="3clFb_" id="h$4gL72" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="h$4gL73" role="1B3o_S" />
      <node concept="3cqZAl" id="h$4gL74" role="3clF45" />
      <node concept="37vLTG" id="h$4gL75" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="h$4gL76" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="h$4gL77" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN8" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="h$4gL79" role="3clF47">
        <node concept="9aQIb" id="h$4gPEv" role="3cqZAp">
          <node concept="3clFbS" id="h$4gPEw" role="9aQI4">
            <node concept="3clFbF" id="h$4gQEJ" role="3cqZAp">
              <node concept="2OqwBi" id="h$4gR7R" role="3clFbG">
                <node concept="2OqwBi" id="h$4gQNz" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxglB7i" role="2Oq$k0">
                    <ref role="3cqZAo" node="h$4gL77" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="h$4gR4r" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="h$4gRvD" role="2OqNvi">
                  <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitTry(java.lang.String):void" resolve="emitTry" />
                  <node concept="Xl_RD" id="1$NEetdWZpp" role="37wK5m">
                    <property role="Xl_RC" value="" />
                    <node concept="17Uvod" id="1$NEetdWZpq" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="1$NEetdWZpr" role="3zH0cK">
                        <node concept="3clFbS" id="1$NEetdWZps" role="2VODD2">
                          <node concept="3clFbF" id="1$NEetdWZpt" role="3cqZAp">
                            <node concept="2OqwBi" id="1$NEetdWZpu" role="3clFbG">
                              <node concept="2OqwBi" id="1$NEetdWZpv" role="2Oq$k0">
                                <node concept="2JrnkZ" id="1$NEetdWZpw" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1$NEetdWZpx" role="2JrQYb">
                                    <node concept="1iwH7S" id="1$NEetdWZpy" role="2Oq$k0" />
                                    <node concept="12$id9" id="1$NEetdWZpz" role="2OqNvi">
                                      <node concept="30H73N" id="1$NEetdWZp$" role="12$y8L" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1$NEetdWZp_" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1$NEetdWZpA" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="h$4hd3V" role="3cqZAp">
              <node concept="3clFbS" id="h$4hd3W" role="9aQI4">
                <node concept="29HgVG" id="h$4hekO" role="lGtFl">
                  <node concept="3NFfHV" id="h$4hekP" role="3NFExx">
                    <node concept="3clFbS" id="h$4hekQ" role="2VODD2">
                      <node concept="3clFbF" id="h$4heO7" role="3cqZAp">
                        <node concept="2OqwBi" id="h$4heT1" role="3clFbG">
                          <node concept="30H73N" id="h$4heO8" role="2Oq$k0" />
                          <node concept="3TrEf2" id="h$4hftV" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:h$4dSSC" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="h$4gTvI" role="3cqZAp">
              <node concept="2OqwBi" id="h$4gTVp" role="3clFbG">
                <node concept="2OqwBi" id="h$4gT_8" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgmyWl" role="2Oq$k0">
                    <ref role="3cqZAo" node="h$4gL77" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="h$4gTQv" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="h$4gUjn" role="2OqNvi">
                  <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitFinally(java.lang.String):void" resolve="emitFinally" />
                  <node concept="Xl_RD" id="1$NEetdX0ow" role="37wK5m">
                    <property role="Xl_RC" value="" />
                    <node concept="17Uvod" id="1$NEetdX0ox" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="1$NEetdX0oy" role="3zH0cK">
                        <node concept="3clFbS" id="1$NEetdX0oz" role="2VODD2">
                          <node concept="3clFbF" id="1$NEetdX0o$" role="3cqZAp">
                            <node concept="2OqwBi" id="1$NEetdX0o_" role="3clFbG">
                              <node concept="2OqwBi" id="1$NEetdX0oA" role="2Oq$k0">
                                <node concept="2JrnkZ" id="1$NEetdX0oB" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1$NEetdX0oC" role="2JrQYb">
                                    <node concept="1iwH7S" id="1$NEetdX0oD" role="2Oq$k0" />
                                    <node concept="12$id9" id="1$NEetdX0oE" role="2OqNvi">
                                      <node concept="30H73N" id="1$NEetdX0oF" role="12$y8L" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1$NEetdX0oG" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1$NEetdX0oH" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="h$4hgyk" role="3cqZAp">
              <node concept="3clFbS" id="h$4hgyl" role="9aQI4">
                <node concept="29HgVG" id="h$4hhOE" role="lGtFl">
                  <node concept="3NFfHV" id="h$4hhOF" role="3NFExx">
                    <node concept="3clFbS" id="h$4hhOG" role="2VODD2">
                      <node concept="3clFbF" id="h$4hias" role="3cqZAp">
                        <node concept="2OqwBi" id="h$4hif7" role="3clFbG">
                          <node concept="30H73N" id="h$4hiat" role="2Oq$k0" />
                          <node concept="3TrEf2" id="h$4hipS" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:h$4dUEO" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="h$4gV$1" role="3cqZAp">
              <node concept="2OqwBi" id="h$4gVU$" role="3clFbG">
                <node concept="2OqwBi" id="h$4gVCG" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgmNGd" role="2Oq$k0">
                    <ref role="3cqZAo" node="h$4gL77" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="h$4gVR8" role="2OqNvi">
                    <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="h$4gWgk" role="2OqNvi">
                  <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitEndTry(java.lang.String):void" resolve="emitEndTry" />
                  <node concept="Xl_RD" id="1$NEetdX1$E" role="37wK5m">
                    <property role="Xl_RC" value="" />
                    <node concept="17Uvod" id="1$NEetdX1$F" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="1$NEetdX1$G" role="3zH0cK">
                        <node concept="3clFbS" id="1$NEetdX1$H" role="2VODD2">
                          <node concept="3clFbF" id="1$NEetdX1$I" role="3cqZAp">
                            <node concept="2OqwBi" id="1$NEetdX1$J" role="3clFbG">
                              <node concept="2OqwBi" id="1$NEetdX1$K" role="2Oq$k0">
                                <node concept="2JrnkZ" id="1$NEetdX1$L" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1$NEetdX1$M" role="2JrQYb">
                                    <node concept="1iwH7S" id="1$NEetdX1$N" role="2Oq$k0" />
                                    <node concept="12$id9" id="1$NEetdX1$O" role="2OqNvi">
                                      <node concept="30H73N" id="1$NEetdX1$P" role="12$y8L" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1$NEetdX1$Q" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1$NEetdX1$R" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="h$4gST7" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h$azFgq">
    <property role="TrG5h" value="reduce_LabelPosition" />
    <property role="3GE5qa" value="Positions" />
    <ref role="3gUMe" to="tp41:h$ayLkA" resolve="LabelPosition" />
    <node concept="3clFb_" id="h$azFgr" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="h$azFgs" role="1B3o_S" />
      <node concept="3cqZAl" id="h$azFgt" role="3clF45" />
      <node concept="37vLTG" id="h$azFgu" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="h$azFgv" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="h$azFgw" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lNc" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="h$azFgy" role="3clF47">
        <node concept="3clFbF" id="h$azFgz" role="3cqZAp">
          <node concept="2OqwBi" id="h$azFg$" role="3clFbG">
            <node concept="raruj" id="h$azFg_" role="lGtFl" />
            <node concept="2OqwBi" id="h$azFgA" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm9jf" role="2Oq$k0">
                <ref role="3cqZAo" node="h$azFgw" resolve="_context" />
              </node>
              <node concept="liA8E" id="h$azFgC" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="h$azFgD" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.label(java.lang.Object,java.lang.String):jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder$Position" resolve="label" />
              <node concept="2OqwBi" id="h$azURh" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgm7Ew" role="2Oq$k0">
                  <ref role="3cqZAo" node="h$azFgw" resolve="_context" />
                </node>
                <node concept="liA8E" id="h$azVUF" role="2OqNvi">
                  <ref role="37wK5l" to="aplb:3HJD4JbIvL3" resolve="getNode" />
                </node>
              </node>
              <node concept="Xl_RD" id="h$azYhl" role="37wK5m">
                <property role="Xl_RC" value="labelName" />
                <node concept="17Uvod" id="h$azYT9" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="h$azYTa" role="3zH0cK">
                    <node concept="3clFbS" id="h$azYTb" role="2VODD2">
                      <node concept="3clFbF" id="h$a$0Q0" role="3cqZAp">
                        <node concept="2OqwBi" id="h$a$1c4" role="3clFbG">
                          <node concept="2OqwBi" id="h$a$0Va" role="2Oq$k0">
                            <node concept="30H73N" id="h$a$0Q1" role="2Oq$k0" />
                            <node concept="3TrEf2" id="h$a$189" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp41:h$ayMVo" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="h$a$1re" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h$a$qd2">
    <property role="TrG5h" value="reduce_EmitLabelStatement" />
    <property role="3GE5qa" value="Instructions" />
    <ref role="3gUMe" to="tp41:h$axUQH" resolve="EmitLabelStatement" />
    <node concept="3clFb_" id="h$a$qd3" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="h$a$qd4" role="1B3o_S" />
      <node concept="3cqZAl" id="h$a$qd5" role="3clF45" />
      <node concept="37vLTG" id="h$a$qd6" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="h$a$qd7" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="h$a$qd8" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lN3" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="h$a$qda" role="3clF47">
        <node concept="3clFbF" id="h$a$qdb" role="3cqZAp">
          <node concept="raruj" id="h$a$qdc" role="lGtFl" />
          <node concept="2OqwBi" id="h$a$qdd" role="3clFbG">
            <node concept="2OqwBi" id="h$a$qde" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgkWwS" role="2Oq$k0">
                <ref role="3cqZAo" node="h$a$qd8" resolve="_context" />
              </node>
              <node concept="liA8E" id="h$a$qdg" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="h$a$t9Q" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.emitLabel(java.lang.String):void" resolve="emitLabel" />
              <node concept="Xl_RD" id="h$a$tqt" role="37wK5m">
                <property role="Xl_RC" value="labelName" />
                <node concept="17Uvod" id="h$a$u13" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="h$a$u14" role="3zH0cK">
                    <node concept="3clFbS" id="h$a$u15" role="2VODD2">
                      <node concept="3clFbF" id="h$a$vNb" role="3cqZAp">
                        <node concept="2OqwBi" id="h$a$vSP" role="3clFbG">
                          <node concept="30H73N" id="h$a$vNc" role="2Oq$k0" />
                          <node concept="3TrcHB" id="h$a$wwa" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="2E5u2r_hTkd">
    <property role="TrG5h" value="reduce_InsertAfterPosition" />
    <property role="3GE5qa" value="InsertPositions" />
    <ref role="3gUMe" to="tp41:7n7cA7JTupy" resolve="InsertAfter" />
    <node concept="3clFb_" id="2E5u2r_hTly" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="2E5u2r_hTlz" role="1B3o_S" />
      <node concept="3cqZAl" id="2E5u2r_hTl$" role="3clF45" />
      <node concept="37vLTG" id="2E5u2r_hTl_" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="2E5u2r_hTlA" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2E5u2r_hTlB" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lMY" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="2E5u2r_hTlD" role="3clF47">
        <node concept="3clFbF" id="2E5u2r_hTlE" role="3cqZAp">
          <node concept="2OqwBi" id="2E5u2r_hTlF" role="3clFbG">
            <node concept="raruj" id="2E5u2r_hTlG" role="lGtFl" />
            <node concept="liA8E" id="2E5u2r_hTlH" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.insertAfter(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction):int" resolve="insertAfter" />
              <node concept="10Nm6u" id="2E5u2r_hTlI" role="37wK5m">
                <node concept="29HgVG" id="2E5u2r_hTlJ" role="lGtFl">
                  <node concept="3NFfHV" id="2E5u2r_hTlK" role="3NFExx">
                    <node concept="3clFbS" id="2E5u2r_hTlL" role="2VODD2">
                      <node concept="3clFbF" id="2E5u2r_hTlM" role="3cqZAp">
                        <node concept="2OqwBi" id="2E5u2r_hTlN" role="3clFbG">
                          <node concept="3TrEf2" id="2E5u2r_hTlU" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:7n7cA7JTuq9" />
                          </node>
                          <node concept="30H73N" id="2E5u2r_hTlP" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2E5u2r_hTlQ" role="2Oq$k0">
              <node concept="liA8E" id="2E5u2r_hTlR" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm92L" role="2Oq$k0">
                <ref role="3cqZAo" node="2E5u2r_hTlB" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="2E5u2r_hTlX">
    <property role="TrG5h" value="reduce_InsertBeforePosition" />
    <property role="3GE5qa" value="InsertPositions" />
    <ref role="3gUMe" to="tp41:7n7cA7JTup$" resolve="InsertBefore" />
    <node concept="3clFb_" id="2E5u2r_hTm4" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="2E5u2r_hTm5" role="1B3o_S" />
      <node concept="3cqZAl" id="2E5u2r_hTm6" role="3clF45" />
      <node concept="37vLTG" id="2E5u2r_hTm7" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="2E5u2r_hTm8" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2E5u2r_hTm9" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lMZ" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="2E5u2r_hTmb" role="3clF47">
        <node concept="3clFbF" id="2E5u2r_hTmc" role="3cqZAp">
          <node concept="2OqwBi" id="2E5u2r_hTmd" role="3clFbG">
            <node concept="2OqwBi" id="2E5u2r_hTme" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgmtuJ" role="2Oq$k0">
                <ref role="3cqZAo" node="2E5u2r_hTm9" resolve="_context" />
              </node>
              <node concept="liA8E" id="2E5u2r_hTmg" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="2E5u2r_hTmh" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.insertBefore(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction):int" resolve="insertBefore" />
              <node concept="10Nm6u" id="2E5u2r_hTmi" role="37wK5m">
                <node concept="29HgVG" id="2E5u2r_hTmj" role="lGtFl">
                  <node concept="3NFfHV" id="2E5u2r_hTmk" role="3NFExx">
                    <node concept="3clFbS" id="2E5u2r_hTml" role="2VODD2">
                      <node concept="3clFbF" id="2E5u2r_hTmm" role="3cqZAp">
                        <node concept="2OqwBi" id="2E5u2r_hTmn" role="3clFbG">
                          <node concept="30H73N" id="2E5u2r_hTmo" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3zHJGFiwmVR" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:7n7cA7JTuq9" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="2E5u2r_hTmq" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="2$iKY2ck0PQ">
    <property role="TrG5h" value="reduce_GetCodeForExpression" />
    <ref role="3gUMe" to="tp41:2$iKY2cjNc$" resolve="GetCodeForExpression" />
    <node concept="3clFb_" id="2$iKY2ck13L" role="13RCb5">
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="2$iKY2ck13M" role="1B3o_S" />
      <node concept="3cqZAl" id="2$iKY2ck13N" role="3clF45" />
      <node concept="37vLTG" id="2$iKY2ck13O" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="2$iKY2ck13P" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2$iKY2ck13Q" role="3clF46">
        <property role="TrG5h" value="_context" />
        <node concept="3uibUv" id="58JzOrw8lNd" role="1tU5fm">
          <ref role="3uigEE" to="aplb:3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="2$iKY2ck13S" role="3clF47">
        <node concept="3clFbF" id="2$iKY2ck13T" role="3cqZAp">
          <node concept="2OqwBi" id="2$iKY2ck13U" role="3clFbG">
            <node concept="raruj" id="2$iKY2ck13V" role="lGtFl" />
            <node concept="liA8E" id="2$iKY2ck13W" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~StructuralProgramBuilder.getInstructionsFor(java.lang.Object):java.util.List" resolve="getInstructionsFor" />
              <node concept="10Nm6u" id="2$iKY2ck13X" role="37wK5m">
                <node concept="29HgVG" id="2$iKY2ck13Y" role="lGtFl">
                  <node concept="3NFfHV" id="2$iKY2ck13Z" role="3NFExx">
                    <node concept="3clFbS" id="2$iKY2ck140" role="2VODD2">
                      <node concept="3clFbF" id="2$iKY2ck141" role="3cqZAp">
                        <node concept="2OqwBi" id="2$iKY2ck142" role="3clFbG">
                          <node concept="3TrEf2" id="3IIpNG1U085" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp41:2$iKY2cjNc_" />
                          </node>
                          <node concept="30H73N" id="2$iKY2ck144" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2$iKY2ck145" role="2Oq$k0">
              <node concept="liA8E" id="2$iKY2ck146" role="2OqNvi">
                <ref role="37wK5l" to="aplb:3HJD4JbIvKV" resolve="getBuilder" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm_kw" role="2Oq$k0">
                <ref role="3cqZAo" node="2$iKY2ck13Q" resolve="_context" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1_dIXlWBqXf">
    <property role="TrG5h" value="reduce_InstructionType" />
    <node concept="2YIFZL" id="1_dIXlWBqXh" role="13RCb5">
      <property role="TrG5h" value="f" />
      <node concept="3cqZAl" id="1_dIXlWBqXi" role="3clF45" />
      <node concept="3Tm1VV" id="1_dIXlWBqXj" role="1B3o_S" />
      <node concept="3clFbS" id="1_dIXlWBqXk" role="3clF47">
        <node concept="3cpWs8" id="1_dIXlWBrHt" role="3cqZAp">
          <node concept="3cpWsn" id="1_dIXlWBrHu" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="3uibUv" id="1_dIXlWBrHv" role="1tU5fm">
              <ref role="3uigEE" to="dau9:~Instruction" resolve="Instruction" />
              <node concept="raruj" id="1_dIXlWBrHz" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1_dIXlWBrPQ">
    <property role="TrG5h" value="reduce_getSourceOperation" />
    <property role="3GE5qa" value="InstructionOperations" />
    <ref role="3gUMe" to="tp41:1_dIXlWBrH$" resolve="InstructionGetSourceOperation" />
    <node concept="2YIFZL" id="1_dIXlWBrPS" role="13RCb5">
      <property role="TrG5h" value="f" />
      <node concept="3cqZAl" id="1_dIXlWBrPT" role="3clF45" />
      <node concept="3Tm1VV" id="1_dIXlWBrPU" role="1B3o_S" />
      <node concept="3clFbS" id="1_dIXlWBrPV" role="3clF47">
        <node concept="3cpWs8" id="1_dIXlWBrPY" role="3cqZAp">
          <node concept="3cpWsn" id="1_dIXlWBrPZ" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="3uibUv" id="1_dIXlWBrQ0" role="1tU5fm">
              <ref role="3uigEE" to="dau9:~Instruction" resolve="Instruction" />
            </node>
            <node concept="2ShNRf" id="1_dIXlWBrQ2" role="33vP2m">
              <node concept="YeOm9" id="1_dIXlWBrQ4" role="2ShVmc">
                <node concept="1Y3b0j" id="1_dIXlWBrQ5" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="dau9:~Instruction" resolve="Instruction" />
                  <ref role="37wK5l" to="dau9:~Instruction.&lt;init&gt;()" resolve="Instruction" />
                  <node concept="3Tm1VV" id="1_dIXlWBrQ6" role="1B3o_S" />
                  <node concept="3clFb_" id="1_dIXlWBrQ7" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="commandPresentation" />
                    <node concept="3uibUv" id="1_dIXlWBrQ8" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3clFbS" id="1_dIXlWBrQ9" role="3clF47">
                      <node concept="3clFbF" id="1_dIXlWBrQa" role="3cqZAp">
                        <node concept="Xl_RD" id="1_dIXlWBrQb" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7A5mqETlRR4" role="3cqZAp">
          <node concept="3cpWsn" id="7A5mqETlRR5" role="3cpWs9">
            <property role="TrG5h" value="n" />
            <node concept="3uibUv" id="7A5mqETlRR6" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7A5mqETlQ5C" role="3cqZAp">
          <node concept="37vLTI" id="7A5mqETlQ5M" role="3clFbG">
            <node concept="10QFUN" id="7A5mqETlQ5I" role="37vLTx">
              <node concept="3uibUv" id="7A5mqETlQ5L" role="10QFUM">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2YIFZM" id="7A5mqETlQ5E" role="10QFUP">
                <ref role="37wK5l" to="1fjm:~InstructionUtil.getSource(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction):java.lang.Object" resolve="getSource" />
                <ref role="1Pybhc" to="1fjm:~InstructionUtil" resolve="InstructionUtil" />
                <node concept="37vLTw" id="3GM_nagTAof" role="37wK5m">
                  <ref role="3cqZAo" node="1_dIXlWBrPZ" resolve="i" />
                  <node concept="29HgVG" id="7A5mqETlRRa" role="lGtFl">
                    <node concept="3NFfHV" id="7A5mqETlRRb" role="3NFExx">
                      <node concept="3clFbS" id="7A5mqETlRRc" role="2VODD2">
                        <node concept="3clFbF" id="7A5mqETlRRd" role="3cqZAp">
                          <node concept="2OqwBi" id="7A5mqETlRRf" role="3clFbG">
                            <node concept="30H73N" id="7A5mqETlRRe" role="2Oq$k0" />
                            <node concept="2qgKlT" id="7A5mqETlX4A" role="2OqNvi">
                              <ref role="37wK5l" to="tpek:hEwIP$m" resolve="getOperand" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="7A5mqETlRR8" role="lGtFl" />
            </node>
            <node concept="37vLTw" id="3GM_nagTu3j" role="37vLTJ">
              <ref role="3cqZAo" node="7A5mqETlRR5" resolve="n" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6e$$c8H2lnF">
    <property role="TrG5h" value="reduce_IsNopOperation" />
    <property role="3GE5qa" value="InstructionOperations" />
    <ref role="3gUMe" to="tp41:6e$$c8H2kPs" resolve="InstructionIsNop" />
    <node concept="2YIFZL" id="6e$$c8H2lnJ" role="13RCb5">
      <property role="TrG5h" value="f" />
      <node concept="3cqZAl" id="6e$$c8H2lnK" role="3clF45" />
      <node concept="3Tm1VV" id="6e$$c8H2lnL" role="1B3o_S" />
      <node concept="3clFbS" id="6e$$c8H2lnM" role="3clF47">
        <node concept="3cpWs8" id="6e$$c8H2lnN" role="3cqZAp">
          <node concept="3cpWsn" id="6e$$c8H2lnO" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="3uibUv" id="6e$$c8H2lnP" role="1tU5fm">
              <ref role="3uigEE" to="dau9:~Instruction" resolve="Instruction" />
            </node>
            <node concept="2ShNRf" id="6e$$c8H2lnQ" role="33vP2m">
              <node concept="YeOm9" id="6e$$c8H2lnR" role="2ShVmc">
                <node concept="1Y3b0j" id="6e$$c8H2lnS" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="dau9:~Instruction" resolve="Instruction" />
                  <ref role="37wK5l" to="dau9:~Instruction.&lt;init&gt;()" resolve="Instruction" />
                  <node concept="3Tm1VV" id="6e$$c8H2lnT" role="1B3o_S" />
                  <node concept="3clFb_" id="6e$$c8H2lnU" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="commandPresentation" />
                    <node concept="3uibUv" id="6e$$c8H2lnV" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3clFbS" id="6e$$c8H2lnW" role="3clF47">
                      <node concept="3clFbF" id="6e$$c8H2lnX" role="3cqZAp">
                        <node concept="Xl_RD" id="6e$$c8H2lnY" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6e$$c8H2lO2" role="3cqZAp">
          <node concept="2YIFZM" id="6e$$c8H2lO4" role="3clFbG">
            <ref role="37wK5l" to="1fjm:~InstructionUtil.isNop(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction):boolean" resolve="isNop" />
            <ref role="1Pybhc" to="1fjm:~InstructionUtil" resolve="InstructionUtil" />
            <node concept="37vLTw" id="3GM_nagT$fC" role="37wK5m">
              <ref role="3cqZAo" node="6e$$c8H2lnO" resolve="i" />
              <node concept="29HgVG" id="6e$$c8H2lO8" role="lGtFl">
                <node concept="3NFfHV" id="6e$$c8H2lO9" role="3NFExx">
                  <node concept="3clFbS" id="6e$$c8H2lOa" role="2VODD2">
                    <node concept="3clFbF" id="6e$$c8H2lOb" role="3cqZAp">
                      <node concept="2OqwBi" id="6e$$c8H2lOd" role="3clFbG">
                        <node concept="30H73N" id="6e$$c8H2lOc" role="2Oq$k0" />
                        <node concept="2qgKlT" id="6e$$c8H2r1$" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIP$m" resolve="getOperand" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="6e$$c8H2lO6" role="lGtFl" />
          </node>
        </node>
        <node concept="3clFbH" id="6e$$c8H2lO0" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6e$$c8H2r1_">
    <property role="TrG5h" value="reduce_IsRetOperation" />
    <property role="3GE5qa" value="InstructionOperations" />
    <ref role="3gUMe" to="tp41:6e$$c8H2kPt" resolve="InstructionIsRet" />
    <node concept="2YIFZL" id="6e$$c8H2r1C" role="13RCb5">
      <property role="TrG5h" value="f" />
      <node concept="3cqZAl" id="6e$$c8H2r1D" role="3clF45" />
      <node concept="3Tm1VV" id="6e$$c8H2r1E" role="1B3o_S" />
      <node concept="3clFbS" id="6e$$c8H2r1F" role="3clF47">
        <node concept="3cpWs8" id="6e$$c8H2r1G" role="3cqZAp">
          <node concept="3cpWsn" id="6e$$c8H2r1H" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="3uibUv" id="6e$$c8H2r1I" role="1tU5fm">
              <ref role="3uigEE" to="dau9:~Instruction" resolve="Instruction" />
            </node>
            <node concept="2ShNRf" id="6e$$c8H2r1J" role="33vP2m">
              <node concept="YeOm9" id="6e$$c8H2r1K" role="2ShVmc">
                <node concept="1Y3b0j" id="6e$$c8H2r1L" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="dau9:~Instruction" resolve="Instruction" />
                  <ref role="37wK5l" to="dau9:~Instruction.&lt;init&gt;()" resolve="Instruction" />
                  <node concept="3Tm1VV" id="6e$$c8H2r1M" role="1B3o_S" />
                  <node concept="3clFb_" id="6e$$c8H2r1N" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="commandPresentation" />
                    <node concept="3uibUv" id="6e$$c8H2r1O" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3clFbS" id="6e$$c8H2r1P" role="3clF47">
                      <node concept="3clFbF" id="6e$$c8H2r1Q" role="3cqZAp">
                        <node concept="Xl_RD" id="6e$$c8H2r1R" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6e$$c8H2r1S" role="3cqZAp">
          <node concept="2YIFZM" id="6e$$c8H2r24" role="3clFbG">
            <ref role="37wK5l" to="1fjm:~InstructionUtil.isRet(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction):boolean" resolve="isRet" />
            <ref role="1Pybhc" to="1fjm:~InstructionUtil" resolve="InstructionUtil" />
            <node concept="37vLTw" id="3GM_nagT_Db" role="37wK5m">
              <ref role="3cqZAo" node="6e$$c8H2r1H" resolve="i" />
              <node concept="29HgVG" id="6e$$c8H2r26" role="lGtFl">
                <node concept="3NFfHV" id="6e$$c8H2r27" role="3NFExx">
                  <node concept="3clFbS" id="6e$$c8H2r28" role="2VODD2">
                    <node concept="3clFbF" id="6e$$c8H2r29" role="3cqZAp">
                      <node concept="2OqwBi" id="6e$$c8H2r2a" role="3clFbG">
                        <node concept="30H73N" id="6e$$c8H2r2b" role="2Oq$k0" />
                        <node concept="2qgKlT" id="6e$$c8H2r2c" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIP$m" resolve="getOperand" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="6e$$c8H2r2d" role="lGtFl" />
          </node>
        </node>
        <node concept="3clFbH" id="6e$$c8H2r23" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="7_ZEXY1jBFR">
    <property role="TrG5h" value="reduce_IsJumpOperation" />
    <property role="3GE5qa" value="InstructionOperations" />
    <ref role="3gUMe" to="tp41:7_ZEXY1jBFP" resolve="InstructionIsJump" />
    <node concept="2YIFZL" id="7_ZEXY1jBFX" role="13RCb5">
      <property role="TrG5h" value="f" />
      <node concept="3cqZAl" id="7_ZEXY1jBFY" role="3clF45" />
      <node concept="3Tm1VV" id="7_ZEXY1jBFZ" role="1B3o_S" />
      <node concept="3clFbS" id="7_ZEXY1jBG0" role="3clF47">
        <node concept="3cpWs8" id="7_ZEXY1jBG1" role="3cqZAp">
          <node concept="3cpWsn" id="7_ZEXY1jBG2" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="3uibUv" id="7_ZEXY1jBG3" role="1tU5fm">
              <ref role="3uigEE" to="dau9:~Instruction" resolve="Instruction" />
            </node>
            <node concept="2ShNRf" id="7_ZEXY1jBG4" role="33vP2m">
              <node concept="YeOm9" id="7_ZEXY1jBG5" role="2ShVmc">
                <node concept="1Y3b0j" id="7_ZEXY1jBG6" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="dau9:~Instruction" resolve="Instruction" />
                  <ref role="37wK5l" to="dau9:~Instruction.&lt;init&gt;()" resolve="Instruction" />
                  <node concept="3Tm1VV" id="7_ZEXY1jBG7" role="1B3o_S" />
                  <node concept="3clFb_" id="7_ZEXY1jBG8" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="commandPresentation" />
                    <node concept="3uibUv" id="7_ZEXY1jBG9" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3clFbS" id="7_ZEXY1jBGa" role="3clF47">
                      <node concept="3clFbF" id="7_ZEXY1jBGb" role="3cqZAp">
                        <node concept="Xl_RD" id="7_ZEXY1jBGc" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_ZEXY1jBGd" role="3cqZAp">
          <node concept="2YIFZM" id="uMIsSQMs2m" role="3clFbG">
            <ref role="37wK5l" to="1fjm:~InstructionUtil.isJump(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction):boolean" resolve="isJump" />
            <ref role="1Pybhc" to="1fjm:~InstructionUtil" resolve="InstructionUtil" />
            <node concept="37vLTw" id="3GM_nagT$zI" role="37wK5m">
              <ref role="3cqZAo" node="7_ZEXY1jBG2" resolve="i" />
              <node concept="29HgVG" id="uMIsSQMs2o" role="lGtFl">
                <node concept="3NFfHV" id="uMIsSQMs2p" role="3NFExx">
                  <node concept="3clFbS" id="uMIsSQMs2q" role="2VODD2">
                    <node concept="3clFbF" id="uMIsSQMs2r" role="3cqZAp">
                      <node concept="2OqwBi" id="uMIsSQMs2s" role="3clFbG">
                        <node concept="30H73N" id="uMIsSQMs2t" role="2Oq$k0" />
                        <node concept="2qgKlT" id="uMIsSQMs2u" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIP$m" resolve="getOperand" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="uMIsSQMs2v" role="lGtFl" />
          </node>
        </node>
        <node concept="3clFbH" id="7_ZEXY1jBGo" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

