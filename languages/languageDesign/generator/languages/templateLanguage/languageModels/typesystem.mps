<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902e4(jetbrains.mps.lang.generator.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" />
    <import index="tpd5" ref="r:00000000-0000-4000-0000-011c895902b5(jetbrains.mps.lang.typesystem.dependencies)" />
    <import index="tpfh" ref="r:00000000-0000-4000-0000-011c895902e1(jetbrains.mps.lang.generator.behavior)" />
    <import index="iwwu" ref="r:2c4d9270-b6d6-44af-aecd-e01a223680db(jetbrains.mps.kernel.model)" />
    <import index="75ov" ref="r:cdd4fc54-626c-4040-b1f7-5bc8bfd2ee53(jetbrains.mps.lang.generator.helper)" />
    <import index="cttk" ref="r:5ff047e0-2953-4750-806a-bdc16824aa89(jetbrains.mps.smodel)" />
    <import index="pjrh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1179479408386" name="jetbrains.mps.lang.typesystem.structure.JoinType" flags="ng" index="2usRSg">
        <child id="1179479418730" name="argument" index="2usUpS" />
      </concept>
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1179832490862" name="jetbrains.mps.lang.typesystem.structure.CreateStrongLessThanInequationStatement" flags="nn" index="2NvLDW" />
      <concept id="1212056081426" name="jetbrains.mps.lang.typesystem.structure.AbstractInequationStatement" flags="ng" index="Ob1k8">
        <property id="1212056105818" name="inequationPriority" index="Ob790" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <property id="1195213689297" name="overrides" index="18ip37" />
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1176543928247" name="jetbrains.mps.lang.typesystem.structure.IsSubtypeExpression" flags="nn" index="3JuTUA">
        <child id="1176543945045" name="subtypeExpression" index="3JuY14" />
        <child id="1176543950311" name="supertypeExpression" index="3JuZjQ" />
      </concept>
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <property id="1195058053095" name="skipDependencyOnCurrent" index="Z0FVL" />
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
      <concept id="1174663239020" name="jetbrains.mps.lang.typesystem.structure.CreateGreaterThanInequationStatement" flags="nn" index="1ZoDhX" />
      <concept id="1174665551739" name="jetbrains.mps.lang.typesystem.structure.TypeVarDeclaration" flags="ng" index="1ZxtTE" />
      <concept id="1174666260556" name="jetbrains.mps.lang.typesystem.structure.TypeVarReference" flags="nn" index="1Z$b5t">
        <reference id="1174666276259" name="typeVarDeclaration" index="1Z$eMM" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5820409030208923287" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingLinkOperation" flags="nn" index="25OxAV" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="8866923313515890008" name="jetbrains.mps.lang.smodel.structure.AsNodeOperation" flags="nn" index="FGMqu" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145572800087" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingsOperation" flags="nn" index="2Ttrtt" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="6407023681583040688" name="jetbrains.mps.lang.smodel.structure.AllAttributeQualifier" flags="ng" index="3CFTEB" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3THzug" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
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
      <concept id="1224451845108" name="jetbrains.mps.baseLanguage.collections.structure.StopStatement" flags="nn" index="n16FD" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="h9BOXJg">
    <property role="18ip37" value="true" />
    <property role="TrG5h" value="typeof_TemplateFunctionParameter_sourceNode" />
    <node concept="3clFbS" id="h9BOXJh" role="18ibNy">
      <node concept="3clFbF" id="hzsh$0e" role="3cqZAp">
        <node concept="2YIFZM" id="hzsh$gn" role="3clFbG">
          <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
          <ref role="37wK5l" node="h9S_yF0" resolve="equate_templateFunction_inputNodeType" />
          <node concept="1YBJjd" id="hzsh$go" role="37wK5m">
            <ref role="1YBMHb" node="h9BOXJc" resolve="sourceNode" />
          </node>
          <node concept="1Z2H0r" id="hzsh_nd" role="37wK5m">
            <node concept="1YBJjd" id="hzsh_Ei" role="1Z2MuG">
              <ref role="1YBMHb" node="h9BOXJc" resolve="sourceNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="h9BOXJc" role="1YuTPh">
      <property role="TrG5h" value="sourceNode" />
      <ref role="1YaFvo" to="tpf8:gZ0H77W" resolve="TemplateFunctionParameter_sourceNode" />
    </node>
  </node>
  <node concept="1YbPZF" id="h9BOXJC">
    <property role="TrG5h" value="typeof_ITemplateCall" />
    <property role="3GE5qa" value="rule.argument" />
    <node concept="3clFbS" id="h9BOXJD" role="18ibNy">
      <node concept="3cpWs8" id="1vDgt48NGNk" role="3cqZAp">
        <node concept="3cpWsn" id="1vDgt48NGNl" role="3cpWs9">
          <property role="TrG5h" value="templateDeclaration" />
          <node concept="3Tqbb2" id="1vDgt48NGNm" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:QzR6ThdYAL" resolve="IParameterizedTemplate" />
          </node>
          <node concept="2OqwBi" id="1vDgt48NGNn" role="33vP2m">
            <node concept="1YBJjd" id="1vDgt48NGOM" role="2Oq$k0">
              <ref role="1YBMHb" node="h9BOXJf" resolve="iTemplateCall" />
            </node>
            <node concept="3TrEf2" id="1vDgt48NGON" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1vDgt48NGNu" role="3cqZAp">
        <node concept="3y3z36" id="1vDgt48NGNv" role="3clFbw">
          <node concept="37vLTw" id="3GM_nagT$By" role="3uHU7B">
            <ref role="3cqZAo" node="1vDgt48NGNl" resolve="templateDeclaration" />
          </node>
          <node concept="10Nm6u" id="1vDgt48NGNx" role="3uHU7w" />
        </node>
        <node concept="3clFbS" id="1vDgt48NGNy" role="3clFbx">
          <node concept="3cpWs8" id="1vDgt48NGNz" role="3cqZAp">
            <node concept="3cpWsn" id="1vDgt48NGN$" role="3cpWs9">
              <property role="TrG5h" value="parameterDeclarations" />
              <node concept="2I9FWS" id="1vDgt48NGN_" role="1tU5fm">
                <ref role="2I9WkF" to="tpf8:1$dcvTE2mbA" resolve="TemplateParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="1vDgt48NGNA" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTxRO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vDgt48NGNl" resolve="templateDeclaration" />
                </node>
                <node concept="3Tsc0h" id="QzR6Thj1N4" role="2OqNvi">
                  <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1vDgt48NGND" role="3cqZAp">
            <node concept="3cpWsn" id="1vDgt48NGNE" role="3cpWs9">
              <property role="TrG5h" value="actualArguments" />
              <node concept="2I9FWS" id="1vDgt48NGNF" role="1tU5fm">
                <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
              </node>
              <node concept="2OqwBi" id="1vDgt48NGNG" role="33vP2m">
                <node concept="1YBJjd" id="1vDgt48NGOZ" role="2Oq$k0">
                  <ref role="1YBMHb" node="h9BOXJf" resolve="iTemplateCall" />
                </node>
                <node concept="3Tsc0h" id="1vDgt48NGP7" role="2OqNvi">
                  <ref role="3TtcxE" to="tpf8:1vDgt48Nz4_" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1vDgt48NGOx" role="3cqZAp">
            <node concept="3clFbS" id="1vDgt48NGOy" role="3clFbx">
              <node concept="2MkqsV" id="1vDgt48NGOz" role="3cqZAp">
                <node concept="1YBJjd" id="1vDgt48NGPs" role="2OEOjV">
                  <ref role="1YBMHb" node="h9BOXJf" resolve="iTemplateCall" />
                </node>
                <node concept="Xl_RD" id="1vDgt48NGO_" role="2MkJ7o">
                  <property role="Xl_RC" value="wrong number of parameters" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="42YwEPgfHf0" role="3clFbw">
              <node concept="2OqwBi" id="42YwEPgfHf1" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTwgx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vDgt48NGN$" resolve="parameterDeclarations" />
                </node>
                <node concept="34oBXx" id="42YwEPgfHf3" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="42YwEPgfHf4" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTvxs" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vDgt48NGNE" resolve="actualArguments" />
                </node>
                <node concept="34oBXx" id="42YwEPgfHf6" role="2OqNvi" />
              </node>
            </node>
            <node concept="9aQIb" id="42YwEPgfHf9" role="9aQIa">
              <node concept="3clFbS" id="42YwEPgfHfa" role="9aQI4">
                <node concept="1Dw8fO" id="42YwEPgfHUi" role="3cqZAp">
                  <node concept="3cpWsn" id="42YwEPgfHUj" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="42YwEPgfHUm" role="1tU5fm" />
                    <node concept="3cmrfG" id="42YwEPgfKOB" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="42YwEPgfHUl" role="2LFqv$">
                    <node concept="1ZobV4" id="42YwEPgfKP0" role="3cqZAp">
                      <property role="Ob790" value="0" />
                      <node concept="mw_s8" id="42YwEPgfSf4" role="1ZfhKB">
                        <node concept="2OqwBi" id="42YwEPgfSf6" role="mwGJk">
                          <node concept="1y4W85" id="42YwEPgfSfb" role="2Oq$k0">
                            <node concept="37vLTw" id="3GM_nagTBOg" role="1y58nS">
                              <ref role="3cqZAo" node="42YwEPgfHUj" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTu4e" role="1y566C">
                              <ref role="3cqZAo" node="1vDgt48NGN$" resolve="parameterDeclarations" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="42YwEPgfSfi" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:1$dcvTE2mFf" />
                          </node>
                        </node>
                      </node>
                      <node concept="mw_s8" id="42YwEPgfKP4" role="1ZfhK$">
                        <node concept="1Z2H0r" id="42YwEPgfSeR" role="mwGJk">
                          <node concept="1y4W85" id="42YwEPgfSeU" role="1Z2MuG">
                            <node concept="37vLTw" id="3GM_nagT_Up" role="1y58nS">
                              <ref role="3cqZAo" node="42YwEPgfHUj" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTABd" role="1y566C">
                              <ref role="3cqZAo" node="1vDgt48NGNE" resolve="actualArguments" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="42YwEPgfKOD" role="1Dwp0S">
                    <node concept="37vLTw" id="3GM_nagTwpD" role="3uHU7B">
                      <ref role="3cqZAo" node="42YwEPgfHUj" resolve="i" />
                    </node>
                    <node concept="2OqwBi" id="42YwEPgfKOH" role="3uHU7w">
                      <node concept="37vLTw" id="3GM_nagTALN" role="2Oq$k0">
                        <ref role="3cqZAo" node="1vDgt48NGN$" resolve="parameterDeclarations" />
                      </node>
                      <node concept="34oBXx" id="42YwEPgfKOL" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="42YwEPgfKOO" role="1Dwrff">
                    <node concept="37vLTw" id="3GM_nagTu3N" role="2$L3a6">
                      <ref role="3cqZAo" node="42YwEPgfHUj" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="h9BOXJf" role="1YuTPh">
      <property role="TrG5h" value="iTemplateCall" />
      <ref role="1YaFvo" to="tpf8:1vDgt48Nz4w" resolve="ITemplateCall" />
    </node>
  </node>
  <node concept="312cEu" id="h9HYf0$">
    <property role="TrG5h" value="QueriesUtil" />
    <node concept="3clFbW" id="2jDADqBQCi2" role="jymVt">
      <node concept="3cqZAl" id="2jDADqBQCi3" role="3clF45" />
      <node concept="3Tm1VV" id="2jDADqBQCi4" role="1B3o_S" />
      <node concept="3clFbS" id="2jDADqBQCi5" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="h9S_yF0" role="jymVt">
      <property role="TrG5h" value="equate_templateFunction_inputNodeType" />
      <node concept="3cqZAl" id="hzshaQN" role="3clF45" />
      <node concept="37vLTG" id="h9SAjh0" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="h9SAjh1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="hzsgDL6" role="3clF46">
        <property role="TrG5h" value="InputNodeType" />
        <node concept="3Tqbb2" id="hzsgGbb" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="hus2B$u" role="1B3o_S" />
      <node concept="2AHcQZ" id="htXKGP7" role="2AJF6D">
        <ref role="2AI5Lk" to="tpd5:hq1Hpmb" resolve="InferenceMethod" />
      </node>
      <node concept="3clFbS" id="h9S_yF3" role="3clF47">
        <node concept="3cpWs8" id="h9Wp72i" role="3cqZAp">
          <node concept="3cpWsn" id="h9Wp72j" role="3cpWs9">
            <property role="TrG5h" value="enclosingMacro" />
            <node concept="3Tqbb2" id="h9Wp72k" role="1tU5fm" />
            <node concept="2OqwBi" id="hxx$Wgz" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxghfa2" role="2Oq$k0">
                <ref role="3cqZAo" node="h9SAjh0" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="h9Wp72n" role="2OqNvi">
                <node concept="3gmYPX" id="h9Wp72o" role="1xVPHs">
                  <node concept="3gn64h" id="h9Wp72p" role="3gmYPZ">
                    <ref role="3gnhBz" to="tpf8:fP7UvrK" resolve="PropertyMacro" />
                  </node>
                  <node concept="3gn64h" id="h9Wp72q" role="3gmYPZ">
                    <ref role="3gnhBz" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
                  </node>
                  <node concept="3gn64h" id="h9Wp72r" role="3gmYPZ">
                    <ref role="3gnhBz" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="h9Wp72s" role="3cqZAp">
          <node concept="3clFbS" id="h9Wp72t" role="3clFbx">
            <node concept="3clFbJ" id="hfr_zY0" role="3cqZAp">
              <node concept="3clFbS" id="hfr_zY1" role="3clFbx">
                <node concept="3SKdUt" id="6pumIWoCG5r" role="3cqZAp">
                  <node concept="3SKdUq" id="6pumIWoCG5s" role="3SKWNk">
                    <property role="3SKdUp" value="inside mapper func or post-mapper function?" />
                  </node>
                </node>
                <node concept="3clFbJ" id="hwvk3cW" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$FVs" role="3clFbw">
                    <node concept="2OqwBi" id="hxx$YSu" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxgm_67" role="2Oq$k0">
                        <ref role="3cqZAo" node="h9SAjh0" resolve="contextNode" />
                      </node>
                      <node concept="2Xjw5R" id="hwvkiG2" role="2OqNvi">
                        <node concept="1xIGOp" id="hwvkjPi" role="1xVPHs" />
                        <node concept="3gmYPX" id="hWSBJUg" role="1xVPHs">
                          <node concept="3gn64h" id="hWSBJUh" role="3gmYPZ">
                            <ref role="3gnhBz" to="tpf8:h2kFOSo" resolve="MapSrcMacro_MapperFunction" />
                          </node>
                          <node concept="3gn64h" id="hWSBMiq" role="3gmYPZ">
                            <ref role="3gnhBz" to="tpf8:hP5lBiZ" resolve="MapSrcMacro_PostMapperFunction" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3x8VRR" id="hwvk_2H" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="hwvk3cX" role="3clFbx">
                    <node concept="3cpWs8" id="hwvkGTb" role="3cqZAp">
                      <node concept="3cpWsn" id="hwvkGTc" role="3cpWs9">
                        <property role="TrG5h" value="query" />
                        <node concept="3Tqbb2" id="hwvkGTd" role="1tU5fm">
                          <ref role="ehGHo" to="tpf8:gZNFfDO" resolve="SourceSubstituteMacro_SourceNodeQuery" />
                        </node>
                        <node concept="2OqwBi" id="hxx$YoP" role="33vP2m">
                          <node concept="1PxgMI" id="hwvkGTg" role="2Oq$k0">
                            <ref role="1PxNhF" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
                            <node concept="37vLTw" id="3GM_nagTxIZ" role="1PxMeX">
                              <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="hwvkGTf" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:h031$YD" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="hwvkGTi" role="3cqZAp">
                      <node concept="3y3z36" id="hwvkGTj" role="3clFbw">
                        <node concept="10Nm6u" id="hwvkGTk" role="3uHU7w" />
                        <node concept="37vLTw" id="3GM_nagT_wY" role="3uHU7B">
                          <ref role="3cqZAo" node="hwvkGTc" resolve="query" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="hwvkGTm" role="3clFbx">
                        <node concept="3clFbF" id="hzshezG" role="3cqZAp">
                          <node concept="2YIFZM" id="hzsheNA" role="3clFbG">
                            <ref role="37wK5l" node="hfrF22W" resolve="equate_outputNodeType_fromSourceQuery" />
                            <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                            <node concept="37vLTw" id="3GM_nagTsif" role="37wK5m">
                              <ref role="3cqZAo" node="hwvkGTc" resolve="query" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxgm7f_" role="37wK5m">
                              <ref role="3cqZAo" node="hzsgDL6" resolve="InputNodeType" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="hwvkGTn" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hxx_3hc" role="3clFbw">
                <node concept="1mIQ4w" id="hfr_Flk" role="2OqNvi">
                  <node concept="chp4Y" id="hfr_KLg" role="cj9EA">
                    <ref role="cht4Q" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTt$F" role="2Oq$k0">
                  <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="hfrBx5K" role="3cqZAp">
              <node concept="2OqwBi" id="hxx_0re" role="3clFbw">
                <node concept="1mIQ4w" id="hfrBx62" role="2OqNvi">
                  <node concept="chp4Y" id="hfrB$b7" role="cj9EA">
                    <ref role="cht4Q" to="tpf8:gvejVYo" resolve="MapSrcListMacro" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTx$V" role="2Oq$k0">
                  <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
                </node>
              </node>
              <node concept="3clFbS" id="hfrBx5L" role="3clFbx">
                <node concept="3SKdUt" id="6pumIWoCFVx" role="3cqZAp">
                  <node concept="3SKdUq" id="6pumIWoCFVy" role="3SKWNk">
                    <property role="3SKdUp" value="inside mapper func or post-mapper function?" />
                  </node>
                </node>
                <node concept="3clFbJ" id="hwvkOeF" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$DMs" role="3clFbw">
                    <node concept="2OqwBi" id="hxx$WH9" role="2Oq$k0">
                      <node concept="2Xjw5R" id="hwvkOeZ" role="2OqNvi">
                        <node concept="1xIGOp" id="hwvkOf0" role="1xVPHs" />
                        <node concept="3gmYPX" id="hWSBQ9Y" role="1xVPHs">
                          <node concept="3gn64h" id="hWSBQ9Z" role="3gmYPZ">
                            <ref role="3gnhBz" to="tpf8:h2kFOSo" resolve="MapSrcMacro_MapperFunction" />
                          </node>
                          <node concept="3gn64h" id="hWSBS1T" role="3gmYPZ">
                            <ref role="3gnhBz" to="tpf8:hP5lBiZ" resolve="MapSrcMacro_PostMapperFunction" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2BHiRxgm68B" role="2Oq$k0">
                        <ref role="3cqZAo" node="h9SAjh0" resolve="contextNode" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="hwvkOeX" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="hwvkOeG" role="3clFbx">
                    <node concept="3cpWs8" id="hwvkQir" role="3cqZAp">
                      <node concept="3cpWsn" id="hwvkQis" role="3cpWs9">
                        <property role="TrG5h" value="query" />
                        <node concept="2OqwBi" id="hxx_1AK" role="33vP2m">
                          <node concept="3TrEf2" id="hwvkQiv" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:h03_Rp0" />
                          </node>
                          <node concept="1PxgMI" id="hwvkQiw" role="2Oq$k0">
                            <ref role="1PxNhF" to="tpf8:gvejVYo" resolve="MapSrcListMacro" />
                            <node concept="37vLTw" id="3GM_nagTzBv" role="1PxMeX">
                              <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
                            </node>
                          </node>
                        </node>
                        <node concept="3Tqbb2" id="hwvkQit" role="1tU5fm">
                          <ref role="ehGHo" to="tpf8:gZJmXo3" resolve="SourceSubstituteMacro_SourceNodesQuery" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="hwvkQiy" role="3cqZAp">
                      <node concept="3y3z36" id="hwvkQiz" role="3clFbw">
                        <node concept="37vLTw" id="3GM_nagTzPV" role="3uHU7B">
                          <ref role="3cqZAo" node="hwvkQis" resolve="query" />
                        </node>
                        <node concept="10Nm6u" id="hwvkQi$" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="hwvkQiA" role="3clFbx">
                        <node concept="3clFbF" id="hzsh6GN" role="3cqZAp">
                          <node concept="2YIFZM" id="hzsh6UK" role="3clFbG">
                            <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                            <ref role="37wK5l" node="hfrF22W" resolve="equate_outputNodeType_fromSourceQuery" />
                            <node concept="37vLTw" id="3GM_nagTB5V" role="37wK5m">
                              <ref role="3cqZAo" node="hwvkQis" resolve="query" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxglD3h" role="37wK5m">
                              <ref role="3cqZAo" node="hzsgDL6" resolve="InputNodeType" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="hwvkQiB" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="heKAtcP" role="3cqZAp">
              <node concept="3cpWsn" id="heKAtcQ" role="3cpWs9">
                <property role="TrG5h" value="enclosingNodeMacro" />
                <node concept="3K4zz7" id="heKA$yZ" role="33vP2m">
                  <node concept="2OqwBi" id="hxx_1l6" role="3K4Cdx">
                    <node concept="37vLTw" id="3GM_nagTtzS" role="2Oq$k0">
                      <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
                    </node>
                    <node concept="1mIQ4w" id="heKAyub" role="2OqNvi">
                      <node concept="chp4Y" id="heKAzbg" role="cj9EA">
                        <ref role="cht4Q" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTuJf" role="3K4E3e">
                    <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
                  </node>
                  <node concept="10Nm6u" id="heKAABS" role="3K4GZi" />
                </node>
                <node concept="3Tqbb2" id="heKAtcR" role="1tU5fm" />
              </node>
            </node>
            <node concept="3cpWs8" id="h9Wp72u" role="3cqZAp">
              <node concept="3cpWsn" id="h9Wp72v" role="3cpWs9">
                <property role="TrG5h" value="macroOwner" />
                <node concept="2OqwBi" id="hxx_1Nz" role="33vP2m">
                  <node concept="1mfA1w" id="h9Wp72z" role="2OqNvi" />
                  <node concept="37vLTw" id="3GM_nagTtKl" role="2Oq$k0">
                    <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="h9Wp72w" role="1tU5fm" />
              </node>
            </node>
            <node concept="3cpWs8" id="h9Wp72$" role="3cqZAp">
              <node concept="3cpWsn" id="h9Wp72_" role="3cpWs9">
                <property role="TrG5h" value="prevSourceSubstituteMacro" />
                <node concept="2YIFZM" id="h9Wp72B" role="33vP2m">
                  <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                  <ref role="37wK5l" node="h9I1Ov9" resolve="getEnclosing_SourceSubstituteMacro" />
                  <node concept="37vLTw" id="3GM_nagT_KS" role="37wK5m">
                    <ref role="3cqZAo" node="h9Wp72v" resolve="macroOwner" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTv_C" role="37wK5m">
                    <ref role="3cqZAo" node="heKAtcQ" resolve="enclosingNodeMacro" />
                  </node>
                </node>
                <node concept="3Tqbb2" id="h9Wp72A" role="1tU5fm">
                  <ref role="ehGHo" to="tpf8:gZJkJnJ" resolve="SourceSubstituteMacro" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="h9Wp72E" role="3cqZAp">
              <node concept="3clFbS" id="h9Wp72F" role="3clFbx">
                <node concept="3cpWs8" id="h9Wp72G" role="3cqZAp">
                  <node concept="3cpWsn" id="h9Wp72H" role="3cpWs9">
                    <property role="TrG5h" value="query" />
                    <node concept="2YIFZM" id="h9Wp72J" role="33vP2m">
                      <ref role="1Pybhc" to="75ov:6DGMsbSrHyP" resolve="QueriesUtil" />
                      <ref role="37wK5l" to="75ov:h9I5uuw" resolve="getQueryFunction_fromSourceSubstituteMacro" />
                      <node concept="37vLTw" id="3GM_nagTz6k" role="37wK5m">
                        <ref role="3cqZAo" node="h9Wp72_" resolve="prevSourceSubstituteMacro" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="h9Wp72I" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hzsh14_" role="3cqZAp">
                  <node concept="2YIFZM" id="hzsh1hN" role="3clFbG">
                    <ref role="37wK5l" node="hfrF22W" resolve="equate_outputNodeType_fromSourceQuery" />
                    <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                    <node concept="37vLTw" id="3GM_nagT$Fv" role="37wK5m">
                      <ref role="3cqZAo" node="h9Wp72H" resolve="query" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxghiR1" role="37wK5m">
                      <ref role="3cqZAo" node="hzsgDL6" resolve="InputNodeType" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="h9Wp72T" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="h9Wp72U" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTzzi" role="3uHU7B">
                  <ref role="3cqZAo" node="h9Wp72_" resolve="prevSourceSubstituteMacro" />
                </node>
                <node concept="10Nm6u" id="h9Wp72V" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="h9Wp72X" role="3clFbw">
            <node concept="10Nm6u" id="h9Wp72Y" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTutv" role="3uHU7B">
              <ref role="3cqZAo" node="h9Wp72j" resolve="enclosingMacro" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6pumIWoCFSz" role="3cqZAp">
          <node concept="3SKdUq" id="6pumIWoCFS$" role="3SKWNk">
            <property role="3SKdUp" value="===============" />
          </node>
        </node>
        <node concept="3cpWs8" id="h9Wp731" role="3cqZAp">
          <node concept="3cpWsn" id="h9Wp732" role="3cpWs9">
            <property role="TrG5h" value="applicableConcept" />
            <node concept="3THzug" id="h9Wp733" role="1tU5fm" />
            <node concept="2YIFZM" id="h9Wp734" role="33vP2m">
              <ref role="1Pybhc" to="75ov:6DGMsbSrHyP" resolve="QueriesUtil" />
              <ref role="37wK5l" to="75ov:h9IdQSx" resolve="getApplicableConcept_fromEnvironment" />
              <node concept="37vLTw" id="2BHiRxghh7N" role="37wK5m">
                <ref role="3cqZAo" node="h9SAjh0" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Z5TYs" id="hzshlkS" role="3cqZAp">
          <node concept="mw_s8" id="hzshlkV" role="1ZfhK$">
            <node concept="2c44tf" id="hr5iofO" role="mwGJk">
              <node concept="3Tqbb2" id="hr5iofP" role="2c44tc">
                <node concept="2c44tb" id="hr5iofS" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="37vLTw" id="3GM_nagTBHf" role="2c44t1">
                    <ref role="3cqZAo" node="h9Wp732" resolve="applicableConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="mw_s8" id="hzshmED" role="1ZfhKB">
            <node concept="37vLTw" id="2BHiRxgm7Ey" role="mwGJk">
              <ref role="3cqZAo" node="hzsgDL6" resolve="InputNodeType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="h9I1Ov9" role="jymVt">
      <property role="TrG5h" value="getEnclosing_SourceSubstituteMacro" />
      <node concept="3Tm1VV" id="1HXMiUdoR6L" role="1B3o_S" />
      <node concept="3clFbS" id="h9I1Ovc" role="3clF47">
        <node concept="3clFbJ" id="h9I4$by" role="3cqZAp">
          <node concept="3clFbC" id="h9I4_e_" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxghfmv" role="3uHU7B">
              <ref role="3cqZAo" node="h9I1R4N" resolve="node" />
            </node>
            <node concept="10Nm6u" id="h9I4_S2" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="h9I4$bz" role="3clFbx">
            <node concept="3cpWs6" id="h9I4Ant" role="3cqZAp">
              <node concept="10Nm6u" id="h9I4AP5" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1qgBwexeol6" role="3cqZAp">
          <node concept="22lmx$" id="7I5RuObTIps" role="3clFbw">
            <node concept="2OqwBi" id="7I5RuObTIpw" role="3uHU7w">
              <node concept="1mIQ4w" id="7I5RuObTIp$" role="2OqNvi">
                <node concept="chp4Y" id="7I5RuObTIpA" role="cj9EA">
                  <ref role="cht4Q" to="tpf8:7I5RuObTjPG" resolve="InlineTemplateWithContext_RuleConsequence" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm9SX" role="2Oq$k0">
                <ref role="3cqZAo" node="h9I1R4N" resolve="node" />
              </node>
            </node>
            <node concept="2OqwBi" id="1qgBwexeolb" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxglRM3" role="2Oq$k0">
                <ref role="3cqZAo" node="h9I1R4N" resolve="node" />
              </node>
              <node concept="1mIQ4w" id="1qgBwexeolf" role="2OqNvi">
                <node concept="chp4Y" id="1qgBwexeolh" role="cj9EA">
                  <ref role="cht4Q" to="tpf8:h8gft7C" resolve="InlineTemplate_RuleConsequence" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1qgBwexeol7" role="3clFbx">
            <node concept="3cpWs8" id="4xO1y5LhFH1" role="3cqZAp">
              <node concept="3cpWsn" id="4xO1y5LhFH2" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3Tqbb2" id="4xO1y5LhFH3" role="1tU5fm" />
                <node concept="2OqwBi" id="4xO1y5LhFH6" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxglMHW" role="2Oq$k0">
                    <ref role="3cqZAo" node="h9I1R4N" resolve="node" />
                  </node>
                  <node concept="1mfA1w" id="4xO1y5LhFHa" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xO1y5LhFHc" role="3cqZAp">
              <node concept="22lmx$" id="4xO1y5LhPqv" role="3clFbw">
                <node concept="3y3z36" id="4xO1y5LhPqy" role="3uHU7w">
                  <node concept="2OqwBi" id="4xO1y5LhPqz" role="3uHU7B">
                    <node concept="3TrEf2" id="4xO1y5LhPqA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:hoUU_w3" />
                    </node>
                    <node concept="1PxgMI" id="4xO1y5LhPq$" role="2Oq$k0">
                      <ref role="1PxNhF" to="tpf8:ghW57bu" resolve="IfMacro" />
                      <node concept="37vLTw" id="3GM_nagTw7C" role="1PxMeX">
                        <ref role="3cqZAo" node="4xO1y5LhFH2" resolve="parent" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm9u5" role="3uHU7w">
                    <ref role="3cqZAo" node="h9I1R4N" resolve="node" />
                  </node>
                </node>
                <node concept="22lmx$" id="4xO1y5LhFHm" role="3uHU7B">
                  <node concept="3fqX7Q" id="4xO1y5LhHsw" role="3uHU7w">
                    <node concept="2OqwBi" id="4xO1y5LhHsz" role="3fr31v">
                      <node concept="37vLTw" id="3GM_nagT_Pl" role="2Oq$k0">
                        <ref role="3cqZAo" node="4xO1y5LhFH2" resolve="parent" />
                      </node>
                      <node concept="1mIQ4w" id="4xO1y5LhHsB" role="2OqNvi">
                        <node concept="chp4Y" id="4xO1y5LhHsD" role="cj9EA">
                          <ref role="cht4Q" to="tpf8:ghW57bu" resolve="IfMacro" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4xO1y5LhFHh" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTwSt" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xO1y5LhFH2" resolve="parent" />
                    </node>
                    <node concept="3w_OXm" id="4xO1y5LhFHl" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4xO1y5LhFHd" role="3clFbx">
                <node concept="3cpWs6" id="4xO1y5LhPqs" role="3cqZAp">
                  <node concept="10Nm6u" id="4xO1y5LhPqu" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="h9I2oFS" role="3cqZAp">
          <node concept="3cpWsn" id="h9I2oFT" role="3cpWs9">
            <property role="TrG5h" value="attributes" />
            <node concept="3K4zz7" id="Dv6a8Bs$_o" role="33vP2m">
              <node concept="2OqwBi" id="Dv6a8Bs_5c" role="3K4E3e">
                <node concept="37vLTw" id="Dv6a8Bs_0R" role="2Oq$k0">
                  <ref role="3cqZAo" node="h9I1R4N" resolve="node" />
                </node>
                <node concept="3CFZ6_" id="Dv6a8Bs_T4" role="2OqNvi">
                  <node concept="3CFTEB" id="Dv6a8Bs_Vb" role="3CFYIz" />
                </node>
              </node>
              <node concept="2OqwBi" id="Dv6a8BsDMz" role="3K4GZi">
                <node concept="37vLTw" id="Dv6a8Bs_WF" role="2Oq$k0">
                  <ref role="3cqZAo" node="h9I31Oe" resolve="currMacroNode" />
                </node>
                <node concept="2Ttrtt" id="Dv6a8BsEZL" role="2OqNvi" />
              </node>
              <node concept="3clFbC" id="Dv6a8BszvC" role="3K4Cdx">
                <node concept="10Nm6u" id="Dv6a8Bs$19" role="3uHU7w" />
                <node concept="37vLTw" id="Dv6a8BsyB2" role="3uHU7B">
                  <ref role="3cqZAo" node="h9I31Oe" resolve="currMacroNode" />
                </node>
              </node>
            </node>
            <node concept="2I9FWS" id="h9I2qBK" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="h9I2vRH" role="3cqZAp">
          <node concept="3cpWsn" id="h9I2vRI" role="3cpWs9">
            <property role="TrG5h" value="prevMacro" />
            <node concept="1PxgMI" id="56bBCaWRqV4" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <ref role="1PxNhF" to="tpf8:gZJkJnJ" resolve="SourceSubstituteMacro" />
              <node concept="2OqwBi" id="56bBCaWR8n_" role="1PxMeX">
                <node concept="2OqwBi" id="56bBCaWPyGq" role="2Oq$k0">
                  <node concept="37vLTw" id="Dv6a8BsG_M" role="2Oq$k0">
                    <ref role="3cqZAo" node="h9I2oFT" resolve="attributes" />
                  </node>
                  <node concept="3zZkjj" id="56bBCaWP$er" role="2OqNvi">
                    <node concept="1bVj0M" id="56bBCaWP$et" role="23t8la">
                      <node concept="3clFbS" id="56bBCaWP$eu" role="1bW5cS">
                        <node concept="3clFbJ" id="4qYevLpT877" role="3cqZAp">
                          <node concept="3clFbS" id="4qYevLpT87a" role="3clFbx">
                            <node concept="3cpWs6" id="4qYevLpTdap" role="3cqZAp">
                              <node concept="3clFbT" id="4qYevLpTeG7" role="3cqZAk">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="4qYevLpTcF1" role="3clFbw">
                            <node concept="2OqwBi" id="4qYevLpTcF3" role="3fr31v">
                              <node concept="37vLTw" id="4qYevLpTcF4" role="2Oq$k0">
                                <ref role="3cqZAo" node="56bBCaWP$ev" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="4qYevLpTcF5" role="2OqNvi">
                                <node concept="chp4Y" id="4qYevLpTcF6" role="cj9EA">
                                  <ref role="cht4Q" to="tpf8:gZJkJnJ" resolve="SourceSubstituteMacro" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="Dv6a8BtOvk" role="3cqZAp">
                          <node concept="3SKdUq" id="Dv6a8BtOYG" role="3SKWNk">
                            <property role="3SKdUp" value="macros can change source, skip those that do not change it due to missing optional query" />
                          </node>
                          <node concept="3SKdUq" id="Dv6a8BuQMX" role="3SKWNk">
                            <property role="3SKdUp" value=" " />
                          </node>
                        </node>
                        <node concept="3clFbJ" id="56bBCaWP$WY" role="3cqZAp">
                          <node concept="3clFbS" id="56bBCaWP$WZ" role="3clFbx">
                            <node concept="3cpWs6" id="56bBCaWQDCr" role="3cqZAp">
                              <node concept="3clFbT" id="56bBCaWQ55J" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="1Wc70l" id="56bBCaWPF3t" role="3clFbw">
                            <node concept="2OqwBi" id="56bBCaWPZRm" role="3uHU7w">
                              <node concept="2OqwBi" id="56bBCaWPQ9g" role="2Oq$k0">
                                <node concept="1PxgMI" id="56bBCaWPQ9h" role="2Oq$k0">
                                  <ref role="1PxNhF" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
                                  <node concept="37vLTw" id="56bBCaWPQ9i" role="1PxMeX">
                                    <ref role="3cqZAo" node="56bBCaWP$ev" resolve="it" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="56bBCaWPQ9j" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpf8:h031$YD" />
                                </node>
                              </node>
                              <node concept="3w_OXm" id="56bBCaWQ4fG" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="56bBCaWPAC0" role="3uHU7B">
                              <node concept="37vLTw" id="56bBCaWP_Fj" role="2Oq$k0">
                                <ref role="3cqZAo" node="56bBCaWP$ev" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="56bBCaWPCwY" role="2OqNvi">
                                <node concept="chp4Y" id="56bBCaWPDfW" role="cj9EA">
                                  <ref role="cht4Q" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="56bBCaWQ70V" role="3cqZAp">
                          <node concept="3clFbS" id="56bBCaWQ70Y" role="3clFbx">
                            <node concept="3cpWs6" id="56bBCaWQC5C" role="3cqZAp">
                              <node concept="3clFbT" id="56bBCaWQC5Z" role="3cqZAk">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="56bBCaWQlQu" role="3clFbw">
                            <node concept="2OqwBi" id="56bBCaWQy4I" role="3uHU7w">
                              <node concept="2OqwBi" id="56bBCaWQsQm" role="2Oq$k0">
                                <node concept="1PxgMI" id="56bBCaWQqqV" role="2Oq$k0">
                                  <ref role="1PxNhF" to="tpf8:gcjY4Rm" resolve="SwitchMacro" />
                                  <node concept="37vLTw" id="56bBCaWQmHJ" role="1PxMeX">
                                    <ref role="3cqZAo" node="56bBCaWP$ev" resolve="it" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="56bBCaWQvvP" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpf8:h08TvVo" />
                                </node>
                              </node>
                              <node concept="3w_OXm" id="56bBCaWQAzr" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="56bBCaWQ8R3" role="3uHU7B">
                              <node concept="37vLTw" id="56bBCaWQ7RC" role="2Oq$k0">
                                <ref role="3cqZAo" node="56bBCaWP$ev" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="56bBCaWQj0E" role="2OqNvi">
                                <node concept="chp4Y" id="56bBCaWQjQa" role="cj9EA">
                                  <ref role="cht4Q" to="tpf8:gcjY4Rm" resolve="SwitchMacro" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="56bBCaWQFz6" role="3cqZAp">
                          <node concept="3clFbS" id="56bBCaWQFz9" role="3clFbx">
                            <node concept="3cpWs6" id="56bBCaWR3Iv" role="3cqZAp">
                              <node concept="3clFbT" id="56bBCaWR4ov" role="3cqZAk">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="56bBCaWQM_A" role="3clFbw">
                            <node concept="2OqwBi" id="56bBCaWQY0z" role="3uHU7w">
                              <node concept="2OqwBi" id="56bBCaWQSby" role="2Oq$k0">
                                <node concept="1PxgMI" id="56bBCaWQPqn" role="2Oq$k0">
                                  <ref role="1PxNhF" to="tpf8:QzR6Tht7mj" resolve="TemplateSwitchMacro" />
                                  <node concept="37vLTw" id="56bBCaWQN_j" role="1PxMeX">
                                    <ref role="3cqZAo" node="56bBCaWP$ev" resolve="it" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="56bBCaWQUZa" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpf8:QzR6Tht7mu" />
                                </node>
                              </node>
                              <node concept="3w_OXm" id="56bBCaWR2CE" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="56bBCaWQHeD" role="3uHU7B">
                              <node concept="37vLTw" id="56bBCaWQGwS" role="2Oq$k0">
                                <ref role="3cqZAo" node="56bBCaWP$ev" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="56bBCaWQJmw" role="2OqNvi">
                                <node concept="chp4Y" id="56bBCaWQKke" role="cj9EA">
                                  <ref role="cht4Q" to="tpf8:QzR6Tht7mj" resolve="TemplateSwitchMacro" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="56bBCaWQhAl" role="3cqZAp">
                          <node concept="3clFbT" id="56bBCaWQhAk" role="3clFbG">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="56bBCaWP$ev" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="56bBCaWP$ew" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1yVyf7" id="56bBCaWRbvH" role="2OqNvi" />
              </node>
            </node>
            <node concept="3Tqbb2" id="h9I2vRJ" role="1tU5fm">
              <ref role="ehGHo" to="tpf8:gZJkJnJ" resolve="SourceSubstituteMacro" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6pumIWoCFU_" role="3cqZAp">
          <node concept="3SKdUq" id="6pumIWoCFUA" role="3SKWNk">
            <property role="3SKdUp" value="========" />
          </node>
        </node>
        <node concept="3clFbJ" id="h9I4d_D" role="3cqZAp">
          <node concept="3y3z36" id="h9I4g8D" role="3clFbw">
            <node concept="10Nm6u" id="h9I4g_D" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTAZj" role="3uHU7B">
              <ref role="3cqZAo" node="h9I2vRI" resolve="prevMacro" />
            </node>
          </node>
          <node concept="3clFbS" id="h9I4d_E" role="3clFbx">
            <node concept="3cpWs6" id="h9I4ifL" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagT$bM" role="3cqZAk">
                <ref role="3cqZAo" node="h9I2vRI" resolve="prevMacro" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="h9I4Cxd" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqysi2O" role="3cqZAk">
            <ref role="37wK5l" node="h9I1Ov9" resolve="getEnclosing_SourceSubstituteMacro" />
            <node concept="2OqwBi" id="hxx$XOm" role="37wK5m">
              <node concept="1mfA1w" id="h9I4Cxh" role="2OqNvi" />
              <node concept="37vLTw" id="2BHiRxgm6I4" role="2Oq$k0">
                <ref role="3cqZAo" node="h9I1R4N" resolve="node" />
              </node>
            </node>
            <node concept="10Nm6u" id="h9I4EJA" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="h9I1R4N" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="h9I1R4O" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="h9I1TT0" role="3clF45">
        <ref role="ehGHo" to="tpf8:gZJkJnJ" resolve="SourceSubstituteMacro" />
      </node>
      <node concept="37vLTG" id="h9I31Oe" role="3clF46">
        <property role="TrG5h" value="currMacroNode" />
        <node concept="3Tqbb2" id="h9I32DN" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="hPJpaHQ" role="jymVt">
      <property role="TrG5h" value="getEnclosing_TemplateFragment" />
      <node concept="3Tm1VV" id="hPJpaHS" role="1B3o_S" />
      <node concept="3clFbS" id="hPJpaHT" role="3clF47">
        <node concept="3SKdUt" id="6pumIWoCFMj" role="3cqZAp">
          <node concept="3SKdUq" id="6pumIWoCFMk" role="3SKWNk">
            <property role="3SKdUp" value=" find first ancestor (inclusive) which has a template fragment attribute" />
          </node>
        </node>
        <node concept="3cpWs8" id="hPJsYru" role="3cqZAp">
          <node concept="3cpWsn" id="hPJsYrv" role="3cpWs9">
            <property role="TrG5h" value="TFs" />
            <node concept="A3Dl8" id="hPJsYrw" role="1tU5fm">
              <node concept="3Tqbb2" id="hPJsYrx" role="A3Ik2">
                <ref role="ehGHo" to="tpf8:fWrartG" resolve="TemplateFragment" />
              </node>
            </node>
            <node concept="2OqwBi" id="hPJsYry" role="33vP2m">
              <node concept="3goQfb" id="hPJsYrB" role="2OqNvi">
                <node concept="1bVj0M" id="hPJsYrC" role="23t8la">
                  <node concept="3clFbS" id="hPJsYrD" role="1bW5cS">
                    <node concept="3cpWs8" id="hPJsYrE" role="3cqZAp">
                      <node concept="3cpWsn" id="hPJsYrF" role="3cpWs9">
                        <property role="TrG5h" value="TF" />
                        <node concept="3Tqbb2" id="hPJsYrG" role="1tU5fm">
                          <ref role="ehGHo" to="tpf8:fWrartG" resolve="TemplateFragment" />
                        </node>
                        <node concept="2OqwBi" id="hPJsYrI" role="33vP2m">
                          <node concept="1eOMI4" id="hPJsYrJ" role="2Oq$k0">
                            <node concept="10QFUN" id="hPJsYrK" role="1eOMHV">
                              <node concept="37vLTw" id="2BHiRxglWMi" role="10QFUP">
                                <ref role="3cqZAo" node="hPJsYs7" resolve="it" />
                              </node>
                              <node concept="3Tqbb2" id="hPJsYrM" role="10QFUM" />
                            </node>
                          </node>
                          <node concept="3CFZ6_" id="2EuZkDRzIog" role="2OqNvi">
                            <node concept="3CFYIy" id="2EuZkDRzIoh" role="3CFYIz">
                              <ref role="3CFYIx" to="tpf8:fWrartG" resolve="TemplateFragment" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="hPJsYrZ" role="3cqZAp">
                      <node concept="3clFbS" id="hPJsYs0" role="3clFbx">
                        <node concept="2n63Yl" id="hPJsYs1" role="3cqZAp">
                          <node concept="37vLTw" id="3GM_nagTxwl" role="2n6tg2">
                            <ref role="3cqZAo" node="hPJsYrF" resolve="TF" />
                          </node>
                        </node>
                        <node concept="n16FD" id="hPJsYs3" role="3cqZAp" />
                      </node>
                      <node concept="3y3z36" id="hPJsYs4" role="3clFbw">
                        <node concept="10Nm6u" id="hPJsYs5" role="3uHU7w" />
                        <node concept="37vLTw" id="3GM_nagTwnL" role="3uHU7B">
                          <ref role="3cqZAo" node="hPJsYrF" resolve="TF" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="hPJsYs7" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1P4c1XrzTc9" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hPJsYrz" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxglhey" role="2Oq$k0">
                  <ref role="3cqZAo" node="hPJpkLI" resolve="node" />
                </node>
                <node concept="z$bX8" id="hPJsYr_" role="2OqNvi">
                  <node concept="1xIGOp" id="hPJsYrA" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hPJt0ZD" role="3cqZAp">
          <node concept="2OqwBi" id="hPJt7nT" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagT$62" role="2Oq$k0">
              <ref role="3cqZAo" node="hPJsYrv" resolve="TFs" />
            </node>
            <node concept="1uHKPH" id="hPJt89J" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hPJpkLI" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="hPJpkLJ" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="hPJpcWY" role="3clF45">
        <ref role="ehGHo" to="tpf8:fWrartG" resolve="TemplateFragment" />
      </node>
    </node>
    <node concept="2YIFZL" id="hfrF22W" role="jymVt">
      <property role="TrG5h" value="equate_outputNodeType_fromSourceQuery" />
      <node concept="3cqZAl" id="hzs78LH" role="3clF45" />
      <node concept="2AHcQZ" id="htXKtJw" role="2AJF6D">
        <ref role="2AI5Lk" to="tpd5:hq1Hpmb" resolve="InferenceMethod" />
      </node>
      <node concept="37vLTG" id="hfrF23Y" role="3clF46">
        <property role="TrG5h" value="query" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="hfrF23Z" role="1tU5fm">
          <ref role="ehGHo" to="tpee:gyVMwX8" resolve="ConceptFunction" />
        </node>
      </node>
      <node concept="37vLTG" id="hzs6nMO" role="3clF46">
        <property role="TrG5h" value="TypeToEquate" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="hzs6psN" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="hfrF22Z" role="3clF47">
        <node concept="3clFbJ" id="hfrF230" role="3cqZAp">
          <node concept="3clFbS" id="hfrF231" role="3clFbx">
            <node concept="1Z5TYs" id="hzsgQ1C" role="3cqZAp">
              <node concept="mw_s8" id="hzsgQ1F" role="1ZfhK$">
                <node concept="37vLTw" id="2BHiRxgmbzI" role="mwGJk">
                  <ref role="3cqZAo" node="hzs6nMO" resolve="TypeToEquate" />
                </node>
              </node>
              <node concept="mw_s8" id="hzsgRXX" role="1ZfhKB">
                <node concept="2c44tf" id="hzsgSrz" role="mwGJk">
                  <node concept="3Tqbb2" id="hzsgSr$" role="2c44tc" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="hfrF232" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="hfrF235" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgma7i" role="3uHU7B">
              <ref role="3cqZAo" node="hfrF23Y" resolve="query" />
            </node>
            <node concept="10Nm6u" id="hfrF236" role="3uHU7w" />
          </node>
        </node>
        <node concept="1ZxtTE" id="hQrlGmD" role="3cqZAp">
          <property role="TrG5h" value="Concept" />
        </node>
        <node concept="1ZoDhX" id="2egxe8my2_r" role="3cqZAp">
          <property role="Ob790" value="0" />
          <property role="3wDh2S" value="false" />
          <node concept="mw_s8" id="hQrl$2y" role="1ZfhK$">
            <node concept="2c44tf" id="hQrl$2z" role="mwGJk">
              <node concept="2usRSg" id="hQrnmBu" role="2c44tc">
                <node concept="A3Dl8" id="hQrnnwR" role="2usUpS">
                  <node concept="3Tqbb2" id="hQrnnwS" role="A3Ik2">
                    <node concept="2c44tb" id="hQrnnwT" role="lGtFl">
                      <property role="2qtEX8" value="concept" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                      <node concept="1Z$b5t" id="hQrnnwU" role="2c44t1">
                        <ref role="1Z$eMM" node="hQrlGmD" resolve="Concept" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="hQrnoFa" role="2usUpS">
                  <node concept="2c44tb" id="hQrnp61" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="1Z$b5t" id="hQrnqbs" role="2c44t1">
                      <ref role="1Z$eMM" node="hQrlGmD" resolve="Concept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="mw_s8" id="hQrlydO" role="1ZfhKB">
            <node concept="1Z2H0r" id="hQrlvz4" role="mwGJk">
              <property role="Z0FVL" value="true" />
              <node concept="37vLTw" id="2BHiRxgmKH$" role="1Z2MuG">
                <ref role="3cqZAo" node="hfrF23Y" resolve="query" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Z5TYs" id="hQrlNgH" role="3cqZAp">
          <node concept="mw_s8" id="hQrlOrX" role="1ZfhKB">
            <node concept="2c44tf" id="hQrlOrY" role="mwGJk">
              <node concept="3Tqbb2" id="hQrlPJZ" role="2c44tc">
                <node concept="2c44tb" id="hQrlQgf" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="1Z$b5t" id="hQrlR4$" role="2c44t1">
                    <ref role="1Z$eMM" node="hQrlGmD" resolve="Concept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="mw_s8" id="hQrlNgZ" role="1ZfhK$">
            <node concept="37vLTw" id="2BHiRxgmzEX" role="mwGJk">
              <ref role="3cqZAo" node="hzs6nMO" resolve="TypeToEquate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="hQqOS1L" role="jymVt">
      <property role="TrG5h" value="getOutputNodeType_fromSourceQuery" />
      <node concept="3Tm1VV" id="hQqOS1N" role="1B3o_S" />
      <node concept="3clFbS" id="hQqOS1O" role="3clF47">
        <node concept="3clFbJ" id="hQqP6Wz" role="3cqZAp">
          <node concept="3clFbS" id="hQqP6W_" role="3clFbx">
            <node concept="3cpWs6" id="hQqP8VC" role="3cqZAp">
              <node concept="2c44tf" id="hQqP9HX" role="3cqZAk">
                <node concept="3Tqbb2" id="hQqPbVP" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="hQqP85n" role="3clFbw">
            <node concept="10Nm6u" id="hQqP8s7" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgm9bb" role="3uHU7B">
              <ref role="3cqZAo" node="hQqP1zy" resolve="query" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="hQqPeFa" role="3cqZAp">
          <node concept="3cpWsn" id="hQqPeFb" role="3cpWs9">
            <property role="TrG5h" value="OutputType" />
            <node concept="2OqwBi" id="hQqPjrc" role="33vP2m">
              <node concept="3JvlWi" id="hQqPjEB" role="2OqNvi" />
              <node concept="37vLTw" id="2BHiRxglfQG" role="2Oq$k0">
                <ref role="3cqZAo" node="hQqP1zy" resolve="query" />
              </node>
            </node>
            <node concept="3Tqbb2" id="hQqPeFc" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="hQqPqJd" role="3cqZAp">
          <node concept="3clFbS" id="hQqPqJe" role="3clFbx">
            <node concept="3cpWs6" id="hQqPyJJ" role="3cqZAp">
              <node concept="2c44tf" id="hQqPCmk" role="3cqZAk">
                <node concept="3Tqbb2" id="hQqPCml" role="2c44tc">
                  <node concept="2c44tb" id="hQqPCmm" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="2OqwBi" id="hQqPCmn" role="2c44t1">
                      <node concept="3TrEf2" id="hQqPCmq" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp25:gEI9Wgx" />
                      </node>
                      <node concept="1PxgMI" id="hQqPCmo" role="2Oq$k0">
                        <ref role="1PxNhF" to="tp25:gEI9FSM" resolve="SNodeListType" />
                        <node concept="37vLTw" id="3GM_nagTzT7" role="1PxMeX">
                          <ref role="3cqZAo" node="hQqPeFb" resolve="OutputType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hQqPqJq" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTr4B" role="2Oq$k0">
              <ref role="3cqZAo" node="hQqPeFb" resolve="OutputType" />
            </node>
            <node concept="1mIQ4w" id="hQqPqJs" role="2OqNvi">
              <node concept="chp4Y" id="hQqPqJt" role="cj9EA">
                <ref role="cht4Q" to="tp25:gEI9FSM" resolve="SNodeListType" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hQqPqJu" role="9aQIa">
            <node concept="3clFbS" id="hQqPqJv" role="9aQI4">
              <node concept="3cpWs8" id="hQqPqJw" role="3cqZAp">
                <node concept="3cpWsn" id="hQqPqJx" role="3cpWs9">
                  <property role="TrG5h" value="outputSNodeType" />
                  <node concept="1UaxmW" id="hQqPqJz" role="33vP2m">
                    <node concept="1YaCAy" id="hQqPqJ$" role="1Ub_4A">
                      <property role="TrG5h" value="v" />
                      <ref role="1YaFvo" to="tp25:gzTqbfa" resolve="SNodeType" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagT$45" role="1Ub_4B">
                      <ref role="3cqZAo" node="hQqPeFb" resolve="OutputType" />
                    </node>
                  </node>
                  <node concept="3Tqbb2" id="hQqPqJy" role="1tU5fm">
                    <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hQqPqJA" role="3cqZAp">
                <node concept="3y3z36" id="hQqPqJH" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagT_zh" role="3uHU7B">
                    <ref role="3cqZAo" node="hQqPqJx" resolve="outputSNodeType" />
                  </node>
                  <node concept="10Nm6u" id="hQqPqJI" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="hQqPqJB" role="3clFbx">
                  <node concept="3cpWs6" id="hQqPte_" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTAQa" role="3cqZAk">
                      <ref role="3cqZAo" node="hQqPqJx" resolve="outputSNodeType" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="hQqPqJK" role="9aQIa">
                  <node concept="3clFbS" id="hQqPqJL" role="9aQI4">
                    <node concept="3cpWs8" id="hQqPqJM" role="3cqZAp">
                      <node concept="3cpWsn" id="hQqPqJN" role="3cpWs9">
                        <property role="TrG5h" value="outputSequenceType" />
                        <node concept="3Tqbb2" id="hQqPqJO" role="1tU5fm">
                          <ref role="ehGHo" to="tp2q:gKA3Dh4" resolve="SequenceType" />
                        </node>
                        <node concept="1UaxmW" id="hQqPqJP" role="33vP2m">
                          <node concept="1YaCAy" id="hQqPqJQ" role="1Ub_4A">
                            <property role="TrG5h" value="v" />
                            <ref role="1YaFvo" to="tp2q:gKA3Dh4" resolve="SequenceType" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTsw7" role="1Ub_4B">
                            <ref role="3cqZAo" node="hQqPeFb" resolve="OutputType" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="hQqPqJS" role="3cqZAp">
                      <node concept="3clFbS" id="hQqPqJT" role="3clFbx">
                        <node concept="3cpWs8" id="hQqPqJU" role="3cqZAp">
                          <node concept="3cpWsn" id="hQqPqJV" role="3cpWs9">
                            <property role="TrG5h" value="elementType" />
                            <node concept="3Tqbb2" id="hQqPqJW" role="1tU5fm">
                              <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                            </node>
                            <node concept="2OqwBi" id="hQqPqJX" role="33vP2m">
                              <node concept="37vLTw" id="3GM_nagTAib" role="2Oq$k0">
                                <ref role="3cqZAo" node="hQqPqJN" resolve="outputSequenceType" />
                              </node>
                              <node concept="3TrEf2" id="hQqPqJZ" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp2q:gKA3Ige" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="hQqPqK0" role="3cqZAp">
                          <node concept="3cpWsn" id="hQqPqK1" role="3cpWs9">
                            <property role="TrG5h" value="outputSNodeType2" />
                            <node concept="3Tqbb2" id="hQqPqK2" role="1tU5fm">
                              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                            </node>
                            <node concept="1UaxmW" id="hQqPqK3" role="33vP2m">
                              <node concept="1YaCAy" id="hQqPqK4" role="1Ub_4A">
                                <property role="TrG5h" value="v" />
                                <ref role="1YaFvo" to="tp25:gzTqbfa" resolve="SNodeType" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTxeT" role="1Ub_4B">
                                <ref role="3cqZAo" node="hQqPqJV" resolve="elementType" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="hQqPqK6" role="3cqZAp">
                          <node concept="3y3z36" id="hQqPqKd" role="3clFbw">
                            <node concept="10Nm6u" id="hQqPqKe" role="3uHU7w" />
                            <node concept="37vLTw" id="3GM_nagTszf" role="3uHU7B">
                              <ref role="3cqZAo" node="hQqPqK1" resolve="outputSNodeType2" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="hQqPqK7" role="3clFbx">
                            <node concept="3cpWs6" id="hQqPvLf" role="3cqZAp">
                              <node concept="37vLTw" id="3GM_nagTsok" role="3cqZAk">
                                <ref role="3cqZAo" node="hQqPqK1" resolve="outputSNodeType2" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="hQqPqKg" role="3clFbw">
                        <node concept="10Nm6u" id="hQqPqKh" role="3uHU7w" />
                        <node concept="37vLTw" id="3GM_nagTz2l" role="3uHU7B">
                          <ref role="3cqZAo" node="hQqPqJN" resolve="outputSequenceType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hQqRMba" role="3cqZAp">
          <node concept="2c44tf" id="hQqRN8e" role="3cqZAk">
            <node concept="3Tqbb2" id="hQqRONc" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hQqP1zy" role="3clF46">
        <property role="TrG5h" value="query" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tqbb2" id="hQqP1zz" role="1tU5fm">
          <ref role="ehGHo" to="tpee:gyVMwX8" resolve="ConceptFunction" />
        </node>
      </node>
      <node concept="3Tqbb2" id="hQqOTDE" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="h9HYf0_" role="1B3o_S" />
  </node>
  <node concept="18kY7G" id="hpvo2T1">
    <property role="TrG5h" value="check_MappingConfiguration" />
    <node concept="3clFbS" id="hpvo2T2" role="18ibNy">
      <node concept="2Gpval" id="hpvoDJX" role="3cqZAp">
        <node concept="2GrKxI" id="hpvoDJY" role="2Gsz3X">
          <property role="TrG5h" value="scriptReference" />
        </node>
        <node concept="3clFbS" id="hpvoDK0" role="2LFqv$">
          <node concept="2Mj0R9" id="hpvoPNk" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$VON" role="2MkoU_">
              <node concept="2OqwBi" id="hxx$Fnu" role="2Oq$k0">
                <node concept="2OqwBi" id="hxx$FTi" role="2Oq$k0">
                  <node concept="2GrUjf" id="hpvoTDu" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="hpvoDJY" resolve="scriptReference" />
                  </node>
                  <node concept="3TrEf2" id="hpvoVr3" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hppuQoU" />
                  </node>
                </node>
                <node concept="3TrcHB" id="hpvoWu1" role="2OqNvi">
                  <ref role="3TsBF5" to="tpf8:hpv3f6E" resolve="scriptKind" />
                </node>
              </node>
              <node concept="3t7uKx" id="hpvoXHb" role="2OqNvi">
                <node concept="uoxfO" id="hpvoXHc" role="3t7uKA">
                  <ref role="uo_Cq" to="tpf8:hpv1Zf2" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="hpvp0eP" role="2MkJ7o">
              <property role="Xl_RC" value="pre-processing script kind is expected" />
            </node>
            <node concept="2GrUjf" id="hpvp8xB" role="2OEOjV">
              <ref role="2Gs0qQ" node="hpvoDJY" resolve="scriptReference" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="hxx$Fs8" role="2GsD0m">
          <node concept="1YBJjd" id="hpvoM_0" role="2Oq$k0">
            <ref role="1YBMHb" node="hpvo6j6" resolve="mc" />
          </node>
          <node concept="3Tsc0h" id="hpvoM$Z" role="2OqNvi">
            <ref role="3TtcxE" to="tpf8:hppuA4d" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6pumIWoCFXF" role="3cqZAp">
        <node concept="3SKdUq" id="6pumIWoCFXG" role="3SKWNk">
          <property role="3SKdUp" value="--" />
        </node>
      </node>
      <node concept="2Gpval" id="hpvpbYA" role="3cqZAp">
        <node concept="2GrKxI" id="hpvpbYB" role="2Gsz3X">
          <property role="TrG5h" value="scriptReference" />
        </node>
        <node concept="3clFbS" id="hpvpbYC" role="2LFqv$">
          <node concept="2Mj0R9" id="hpvpbYD" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$D7V" role="2MkoU_">
              <node concept="2OqwBi" id="hxx_0xS" role="2Oq$k0">
                <node concept="2OqwBi" id="hxx_6A7" role="2Oq$k0">
                  <node concept="2GrUjf" id="hpvpbYL" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="hpvpbYB" resolve="scriptReference" />
                  </node>
                  <node concept="3TrEf2" id="hpvpbYK" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:hppuQoU" />
                  </node>
                </node>
                <node concept="3TrcHB" id="hpvpbYI" role="2OqNvi">
                  <ref role="3TsBF5" to="tpf8:hpv3f6E" resolve="scriptKind" />
                </node>
              </node>
              <node concept="3t7uKx" id="hpvpbYF" role="2OqNvi">
                <node concept="uoxfO" id="hpvpbYG" role="3t7uKA">
                  <ref role="uo_Cq" to="tpf8:hpv2rSO" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="hpvpbYM" role="2MkJ7o">
              <property role="Xl_RC" value="post-processing script kind is expected" />
            </node>
            <node concept="2GrUjf" id="hpvpbYN" role="2OEOjV">
              <ref role="2Gs0qQ" node="hpvpbYB" resolve="scriptReference" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="hxx$G59" role="2GsD0m">
          <node concept="1YBJjd" id="hpvpbYQ" role="2Oq$k0">
            <ref role="1YBMHb" node="hpvo6j6" resolve="mc" />
          </node>
          <node concept="3Tsc0h" id="hpvpdBA" role="2OqNvi">
            <ref role="3TtcxE" to="tpf8:hppvy2_" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hpvo6j6" role="1YuTPh">
      <property role="TrG5h" value="mc" />
      <ref role="1YaFvo" to="tpf8:fWbUwhP" resolve="MappingConfiguration" />
    </node>
  </node>
  <node concept="1YbPZF" id="husvyg4">
    <property role="TrG5h" value="typeof_BaseMappingRule" />
    <property role="3GE5qa" value="rule" />
    <node concept="3clFbS" id="husvyg5" role="18ibNy">
      <node concept="3clFbJ" id="husvHdQ" role="3cqZAp">
        <node concept="3y3z36" id="husvHTc" role="3clFbw">
          <node concept="10Nm6u" id="husvIha" role="3uHU7w" />
          <node concept="2OqwBi" id="hG04_gg" role="3uHU7B">
            <node concept="2OqwBi" id="hxx$DaV" role="2Oq$k0">
              <node concept="1YBJjd" id="husvHqA" role="2Oq$k0">
                <ref role="1YBMHb" node="husvyg6" resolve="nodeToCheck" />
              </node>
              <node concept="3TrEf2" id="husvHK9" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:husgKN8" />
              </node>
            </node>
            <node concept="3TrEf2" id="hG04BgI" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:hurTdLu" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="husvHdS" role="3clFbx">
          <node concept="3clFbJ" id="hwT$1_V" role="3cqZAp">
            <node concept="3fqX7Q" id="hwT$1_W" role="3clFbw">
              <node concept="2OqwBi" id="73yVtVm05Nm" role="3fr31v">
                <node concept="2OqwBi" id="hwT$aAG" role="2Oq$k0">
                  <node concept="1YBJjd" id="hwT$9tV" role="2Oq$k0">
                    <ref role="1YBMHb" node="husvyg6" resolve="nodeToCheck" />
                  </node>
                  <node concept="3TrEf2" id="1oFmEVza4Kn" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:gZ0HIsK" />
                  </node>
                </node>
                <node concept="2qgKlT" id="73yVtVm06i7" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                  <node concept="2OqwBi" id="hxx$RqF" role="37wK5m">
                    <node concept="2OqwBi" id="hxx$XCb" role="2Oq$k0">
                      <node concept="3TrEf2" id="hwT$1A5" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:husgKN8" />
                      </node>
                      <node concept="1YBJjd" id="hwT$1A6" role="2Oq$k0">
                        <ref role="1YBMHb" node="husvyg6" resolve="nodeToCheck" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="hwT$1A3" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:hurTdLu" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="hwT$1A7" role="3clFbx">
              <node concept="2MkqsV" id="hwT$1A8" role="3cqZAp">
                <node concept="Xl_RD" id="hwT$1A9" role="2MkJ7o">
                  <property role="Xl_RC" value="Label has incorrect type" />
                </node>
                <node concept="1YBJjd" id="hwT$1Aa" role="2OEOjV">
                  <ref role="1YBMHb" node="husvyg6" resolve="nodeToCheck" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2NvLDW" id="husy1jr" role="3cqZAp">
            <property role="Ob790" value="0" />
            <node concept="mw_s8" id="husywC8" role="1ZfhK$">
              <node concept="2c44tf" id="husywC9" role="mwGJk">
                <node concept="3Tqbb2" id="husywWV" role="2c44tc">
                  <node concept="2c44tb" id="husyxkS" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="2OqwBi" id="hxx_2w3" role="2c44t1">
                      <node concept="1YBJjd" id="husyxZ9" role="2Oq$k0">
                        <ref role="1YBMHb" node="husvyg6" resolve="nodeToCheck" />
                      </node>
                      <node concept="2qgKlT" id="husyy_i" role="2OqNvi">
                        <ref role="37wK5l" to="tpfh:hEwJbaf" resolve="getTemplateType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="husy2sI" role="1ZfhKB">
              <node concept="2c44tf" id="husy2sJ" role="mwGJk">
                <node concept="3Tqbb2" id="husy2HR" role="2c44tc">
                  <node concept="2c44tb" id="husy33Q" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="2OqwBi" id="hxx_09n" role="2c44t1">
                      <node concept="2OqwBi" id="hxx$Opx" role="2Oq$k0">
                        <node concept="1YBJjd" id="husy3qm" role="2Oq$k0">
                          <ref role="1YBMHb" node="husvyg6" resolve="nodeToCheck" />
                        </node>
                        <node concept="3TrEf2" id="husyt_X" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:husgKN8" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="husyv6H" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:hurZzxA" />
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
    <node concept="1YaCAy" id="husvyg6" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tpf8:gZ0H$p7" resolve="BaseMappingRule" />
    </node>
  </node>
  <node concept="1YbPZF" id="husC_r$">
    <property role="TrG5h" value="typeof_CreateRootRule" />
    <property role="3GE5qa" value="rule" />
    <node concept="3clFbS" id="husC_r_" role="18ibNy">
      <node concept="3clFbJ" id="husCD4r" role="3cqZAp">
        <node concept="3y3z36" id="husCDI3" role="3clFbw">
          <node concept="10Nm6u" id="husCDXv" role="3uHU7w" />
          <node concept="2OqwBi" id="hxx_2yt" role="3uHU7B">
            <node concept="1YBJjd" id="husCDhb" role="2Oq$k0">
              <ref role="1YBMHb" node="husC_rA" resolve="nodeToCheck" />
            </node>
            <node concept="3TrEf2" id="husCD$h" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:husBCMG" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="husCD4t" role="3clFbx">
          <node concept="2NvLDW" id="husCE4_" role="3cqZAp">
            <property role="Ob790" value="0" />
            <node concept="mw_s8" id="husCE4A" role="1ZfhK$">
              <node concept="2c44tf" id="husCE4B" role="mwGJk">
                <node concept="3Tqbb2" id="husCH$h" role="2c44tc">
                  <node concept="2c44tb" id="husCHKZ" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="2OqwBi" id="hxx$PhP" role="2c44t1">
                      <node concept="2OqwBi" id="hxx$KkP" role="2Oq$k0">
                        <node concept="1YBJjd" id="husCI2A" role="2Oq$k0">
                          <ref role="1YBMHb" node="husC_rA" resolve="nodeToCheck" />
                        </node>
                        <node concept="3TrEf2" id="husCIxb" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:gYVPold" />
                        </node>
                      </node>
                      <node concept="3NT_Vc" id="husCJXx" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="husCE4D" role="1ZfhKB">
              <node concept="2c44tf" id="husCE4E" role="mwGJk">
                <node concept="3Tqbb2" id="husCFjz" role="2c44tc">
                  <node concept="2c44tb" id="husCFOi" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="2OqwBi" id="hxx$UCs" role="2c44t1">
                      <node concept="2OqwBi" id="hxx_3vu" role="2Oq$k0">
                        <node concept="1YBJjd" id="husCG1v" role="2Oq$k0">
                          <ref role="1YBMHb" node="husC_rA" resolve="nodeToCheck" />
                        </node>
                        <node concept="3TrEf2" id="husCGhF" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:husBCMG" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="husCGXc" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:hurZzxA" />
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
    <node concept="1YaCAy" id="husC_rA" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tpf8:gYVPola" resolve="CreateRootRule" />
    </node>
  </node>
  <node concept="1YbPZF" id="hLiqEeT">
    <property role="TrG5h" value="typeof_TemplateFunctionParameter_outputNode" />
    <property role="3GE5qa" value="functionParameter" />
    <node concept="3clFbS" id="hLiqEeU" role="18ibNy">
      <node concept="3cpWs8" id="hP5Eya4" role="3cqZAp">
        <node concept="3cpWsn" id="hP5Eya5" role="3cpWs9">
          <property role="TrG5h" value="parentMacro" />
          <node concept="3Tqbb2" id="hP5Eya6" role="1tU5fm" />
          <node concept="2OqwBi" id="hP5Eya7" role="33vP2m">
            <node concept="1YBJjd" id="hP5Eya8" role="2Oq$k0">
              <ref role="1YBMHb" node="hLiqEeV" resolve="node" />
            </node>
            <node concept="2Xjw5R" id="hP5Eya9" role="2OqNvi">
              <node concept="3gmYPX" id="hP5Eyaa" role="1xVPHs">
                <node concept="3gn64h" id="hP5Eyab" role="3gmYPZ">
                  <ref role="3gnhBz" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
                </node>
                <node concept="3gn64h" id="hP5Eyac" role="3gmYPZ">
                  <ref role="3gnhBz" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
                </node>
                <node concept="3gn64h" id="hP5Eyad" role="3gmYPZ">
                  <ref role="3gnhBz" to="tpf8:gvejVYo" resolve="MapSrcListMacro" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="hP5EAk8" role="3cqZAp">
        <node concept="3clFbS" id="hP5EAk9" role="3clFbx">
          <node concept="1Z5TYs" id="hQOO7xN" role="3cqZAp">
            <node concept="mw_s8" id="hQOO7xR" role="1ZfhK$">
              <node concept="1Z2H0r" id="hQOO5Mr" role="mwGJk">
                <node concept="1YBJjd" id="hQOO6Q$" role="1Z2MuG">
                  <ref role="1YBMHb" node="hLiqEeV" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="hQOO8vv" role="1ZfhKB">
              <node concept="2c44tf" id="hQOO8vw" role="mwGJk">
                <node concept="3Tqbb2" id="hQOO9cm" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="hP5F24W" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="hP5EBnP" role="3clFbw">
          <node concept="37vLTw" id="3GM_nagTrpA" role="2Oq$k0">
            <ref role="3cqZAo" node="hP5Eya5" resolve="parentMacro" />
          </node>
          <node concept="1mIQ4w" id="hP5EHNL" role="2OqNvi">
            <node concept="chp4Y" id="hP5EIYZ" role="cj9EA">
              <ref role="cht4Q" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="hP5FhfL" role="3cqZAp">
        <node concept="3cpWsn" id="hP5FhfM" role="3cpWs9">
          <property role="TrG5h" value="mapperFunc" />
          <node concept="3Tqbb2" id="hP5FUOG" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:h2kFOSo" resolve="MapSrcMacro_MapperFunction" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="hP5F3Fw" role="3cqZAp">
        <node concept="3clFbS" id="hP5F3Fx" role="3clFbx">
          <node concept="3clFbF" id="hP5F_hq" role="3cqZAp">
            <node concept="37vLTI" id="hP5FBp2" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagTwk$" role="37vLTJ">
                <ref role="3cqZAo" node="hP5FhfM" resolve="mapperFunc" />
              </node>
              <node concept="2OqwBi" id="hP5FFzv" role="37vLTx">
                <node concept="1PxgMI" id="hP5FD8E" role="2Oq$k0">
                  <ref role="1PxNhF" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
                  <node concept="37vLTw" id="3GM_nagT$j$" role="1PxMeX">
                    <ref role="3cqZAo" node="hP5Eya5" resolve="parentMacro" />
                  </node>
                </node>
                <node concept="3TrEf2" id="hP5FGhF" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:h2kGFpj" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="hP5FnQd" role="3clFbw">
          <node concept="37vLTw" id="3GM_nagTu6J" role="2Oq$k0">
            <ref role="3cqZAo" node="hP5Eya5" resolve="parentMacro" />
          </node>
          <node concept="1mIQ4w" id="hP5Foor" role="2OqNvi">
            <node concept="chp4Y" id="hP5Fq9v" role="cj9EA">
              <ref role="cht4Q" to="tpf8:gtpdMPS" resolve="MapSrcNodeMacro" />
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="hP5G2UL" role="9aQIa">
          <node concept="3clFbS" id="hP5G2UM" role="9aQI4">
            <node concept="3clFbF" id="hP5G4bn" role="3cqZAp">
              <node concept="37vLTI" id="hP5G4bo" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTwCb" role="37vLTJ">
                  <ref role="3cqZAo" node="hP5FhfM" resolve="mapperFunc" />
                </node>
                <node concept="2OqwBi" id="hP5G4bq" role="37vLTx">
                  <node concept="1PxgMI" id="hP5G4br" role="2Oq$k0">
                    <ref role="1PxNhF" to="tpf8:gvejVYo" resolve="MapSrcListMacro" />
                    <node concept="37vLTw" id="3GM_nagTx2A" role="1PxMeX">
                      <ref role="3cqZAo" node="hP5Eya5" resolve="parentMacro" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hP5G7it" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:h2tnRFT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6pumIWoCG5L" role="3cqZAp">
        <node concept="3SKdUq" id="6pumIWoCG5M" role="3SKWNk">
          <property role="3SKdUp" value=" ----" />
        </node>
      </node>
      <node concept="3clFbJ" id="hP5Gaiq" role="3cqZAp">
        <node concept="3clFbS" id="hP5Gair" role="3clFbx">
          <node concept="1Z5TYs" id="hP5Gh0j" role="3cqZAp">
            <node concept="mw_s8" id="hP5GiNQ" role="1ZfhKB">
              <node concept="1Z2H0r" id="hP5GiNR" role="mwGJk">
                <property role="Z0FVL" value="true" />
                <node concept="37vLTw" id="3GM_nagTwar" role="1Z2MuG">
                  <ref role="3cqZAo" node="hP5FhfM" resolve="mapperFunc" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="hP5Gh0m" role="1ZfhK$">
              <node concept="1Z2H0r" id="hP5GeGj" role="mwGJk">
                <node concept="1YBJjd" id="hP5GfMD" role="1Z2MuG">
                  <ref role="1YBMHb" node="hLiqEeV" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="hP5Gcjp" role="3clFbw">
          <node concept="10Nm6u" id="hP5Gc_h" role="3uHU7w" />
          <node concept="37vLTw" id="3GM_nagTsSa" role="3uHU7B">
            <ref role="3cqZAo" node="hP5FhfM" resolve="mapperFunc" />
          </node>
        </node>
        <node concept="9aQIb" id="hP5GocS" role="9aQIa">
          <node concept="3clFbS" id="hP5GocT" role="9aQI4">
            <node concept="3SKdUt" id="6pumIWoCG0T" role="3cqZAp">
              <node concept="3SKdUq" id="6pumIWoCG0U" role="3SKWNk">
                <property role="3SKdUp" value=" concept of the wrapped template code" />
              </node>
            </node>
            <node concept="3cpWs8" id="hP5Gtkz" role="3cqZAp">
              <node concept="3cpWsn" id="hP5Gtk$" role="3cpWs9">
                <property role="TrG5h" value="concept" />
                <node concept="3THzug" id="hP5Gtk_" role="1tU5fm" />
                <node concept="2OqwBi" id="hP5GtkA" role="33vP2m">
                  <node concept="2OqwBi" id="hP5GtkB" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagT_HI" role="2Oq$k0">
                      <ref role="3cqZAo" node="hP5Eya5" resolve="parentMacro" />
                    </node>
                    <node concept="1mfA1w" id="hP5GtkE" role="2OqNvi" />
                  </node>
                  <node concept="3NT_Vc" id="hP5GtkF" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="1Z5TYs" id="hP5GtkG" role="3cqZAp">
              <node concept="mw_s8" id="hP5GtkH" role="1ZfhK$">
                <node concept="1Z2H0r" id="hP5GtkI" role="mwGJk">
                  <node concept="1YBJjd" id="hP5GtkJ" role="1Z2MuG">
                    <ref role="1YBMHb" node="hLiqEeV" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="hP5GtkK" role="1ZfhKB">
                <node concept="2c44tf" id="hP5GtkL" role="mwGJk">
                  <node concept="3Tqbb2" id="hP5GtkM" role="2c44tc">
                    <node concept="2c44tb" id="hP5GtkN" role="lGtFl">
                      <property role="2qtEX8" value="concept" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                      <node concept="37vLTw" id="3GM_nagTz2b" role="2c44t1">
                        <ref role="3cqZAo" node="hP5Gtk$" resolve="concept" />
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
    <node concept="1YaCAy" id="hLiqEeV" role="1YuTPh">
      <property role="TrG5h" value="node" />
      <ref role="1YaFvo" to="tpf8:hfl3mJA" resolve="TemplateFunctionParameter_outputNode" />
    </node>
  </node>
  <node concept="18kY7G" id="hPJopU4">
    <property role="TrG5h" value="check_PropertyMacro" />
    <node concept="3clFbS" id="hPJopU5" role="18ibNy">
      <node concept="3clFbJ" id="hPJoTmX" role="3cqZAp">
        <node concept="3clFbS" id="hPJoTmY" role="3clFbx">
          <node concept="3clFbJ" id="hPJuo55" role="3cqZAp">
            <node concept="3clFbS" id="hPJuo56" role="3clFbx">
              <node concept="2MkqsV" id="hPJurdE" role="3cqZAp">
                <node concept="Xl_RD" id="hPJutmU" role="2MkJ7o">
                  <property role="Xl_RC" value="Macro is outside a Template Fragment" />
                </node>
                <node concept="1YBJjd" id="hPJuzv1" role="2OEOjV">
                  <ref role="1YBMHb" node="hPJouj0" resolve="macro" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="hPJu_T$" role="3clFbw">
              <node concept="10Nm6u" id="hPJuAmU" role="3uHU7w" />
              <node concept="2YIFZM" id="hPJu9IM" role="3uHU7B">
                <ref role="37wK5l" node="hPJpaHQ" resolve="getEnclosing_TemplateFragment" />
                <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                <node concept="2OqwBi" id="hPJujef" role="37wK5m">
                  <node concept="1YBJjd" id="hPJui7E" role="2Oq$k0">
                    <ref role="1YBMHb" node="hPJouj0" resolve="macro" />
                  </node>
                  <node concept="1mfA1w" id="hPJujsG" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="hPJoYes" role="3clFbw">
          <node concept="10Nm6u" id="hPJoYyh" role="3uHU7w" />
          <node concept="2OqwBi" id="hPJoUUb" role="3uHU7B">
            <node concept="1YBJjd" id="hPJoUAS" role="2Oq$k0">
              <ref role="1YBMHb" node="hPJouj0" resolve="macro" />
            </node>
            <node concept="2Xjw5R" id="hPJoWin" role="2OqNvi">
              <node concept="1xMEDy" id="hPJoWio" role="1xVPHs">
                <node concept="chp4Y" id="hPJoX$s" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hPJouj0" role="1YuTPh">
      <property role="TrG5h" value="macro" />
      <ref role="1YaFvo" to="tpf8:fP7UvrK" resolve="PropertyMacro" />
    </node>
  </node>
  <node concept="18kY7G" id="hQ7VN0m">
    <property role="TrG5h" value="check_ReferenceMacro" />
    <node concept="3clFbS" id="hQ7VN0n" role="18ibNy">
      <node concept="3clFbJ" id="hQ7VN0o" role="3cqZAp">
        <node concept="3clFbS" id="hQ7VN0p" role="3clFbx">
          <node concept="3clFbJ" id="hQ7VN0q" role="3cqZAp">
            <node concept="3clFbS" id="hQ7VN0r" role="3clFbx">
              <node concept="2MkqsV" id="hQ7VN0s" role="3cqZAp">
                <node concept="Xl_RD" id="hQ7VN0t" role="2MkJ7o">
                  <property role="Xl_RC" value="Macro is outside a Template Fragment" />
                </node>
                <node concept="1YBJjd" id="hQ7VN0u" role="2OEOjV">
                  <ref role="1YBMHb" node="hQ7VN0G" resolve="macro" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="hQ7VN0v" role="3clFbw">
              <node concept="10Nm6u" id="hQ7VN0w" role="3uHU7w" />
              <node concept="2YIFZM" id="hQ7VN0x" role="3uHU7B">
                <ref role="37wK5l" node="hPJpaHQ" resolve="getEnclosing_TemplateFragment" />
                <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                <node concept="2OqwBi" id="hQ7VN0y" role="37wK5m">
                  <node concept="1YBJjd" id="hQ7VN0z" role="2Oq$k0">
                    <ref role="1YBMHb" node="hQ7VN0G" resolve="macro" />
                  </node>
                  <node concept="1mfA1w" id="hQ7VN0$" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="hQ7VN0_" role="3clFbw">
          <node concept="10Nm6u" id="hQ7VN0A" role="3uHU7w" />
          <node concept="2OqwBi" id="hQ7VN0B" role="3uHU7B">
            <node concept="1YBJjd" id="hQ7VN0C" role="2Oq$k0">
              <ref role="1YBMHb" node="hQ7VN0G" resolve="macro" />
            </node>
            <node concept="2Xjw5R" id="hQ7VN0D" role="2OqNvi">
              <node concept="1xMEDy" id="hQ7VN0E" role="1xVPHs">
                <node concept="chp4Y" id="hQ7VN0F" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hQ7VN0G" role="1YuTPh">
      <property role="TrG5h" value="macro" />
      <ref role="1YaFvo" to="tpf8:fPZhdom" resolve="ReferenceMacro" />
    </node>
  </node>
  <node concept="18kY7G" id="hQ7VYio">
    <property role="TrG5h" value="check_NodeMacro" />
    <node concept="3clFbS" id="hQ7VYip" role="18ibNy">
      <node concept="3clFbJ" id="hQ7VYiq" role="3cqZAp">
        <node concept="3clFbS" id="hQ7VYir" role="3clFbx">
          <node concept="3clFbJ" id="hQ7VYis" role="3cqZAp">
            <node concept="3clFbS" id="hQ7VYit" role="3clFbx">
              <node concept="2MkqsV" id="hQ7VYiu" role="3cqZAp">
                <node concept="Xl_RD" id="hQ7VYiv" role="2MkJ7o">
                  <property role="Xl_RC" value="Macro is outside a Template Fragment" />
                </node>
                <node concept="1YBJjd" id="hQ7VYiw" role="2OEOjV">
                  <ref role="1YBMHb" node="hQ7VYiI" resolve="macro" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="hQ7VYix" role="3clFbw">
              <node concept="10Nm6u" id="hQ7VYiy" role="3uHU7w" />
              <node concept="2YIFZM" id="hQ7VYiz" role="3uHU7B">
                <ref role="37wK5l" node="hPJpaHQ" resolve="getEnclosing_TemplateFragment" />
                <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                <node concept="2OqwBi" id="hQ7VYi$" role="37wK5m">
                  <node concept="1YBJjd" id="hQ7VYi_" role="2Oq$k0">
                    <ref role="1YBMHb" node="hQ7VYiI" resolve="macro" />
                  </node>
                  <node concept="1mfA1w" id="hQ7VYiA" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="hQ7VYiB" role="3clFbw">
          <node concept="10Nm6u" id="hQ7VYiC" role="3uHU7w" />
          <node concept="2OqwBi" id="hQ7VYiD" role="3uHU7B">
            <node concept="1YBJjd" id="hQ7VYiE" role="2Oq$k0">
              <ref role="1YBMHb" node="hQ7VYiI" resolve="macro" />
            </node>
            <node concept="2Xjw5R" id="hQ7VYiF" role="2OqNvi">
              <node concept="1xMEDy" id="hQ7VYiG" role="1xVPHs">
                <node concept="chp4Y" id="hQ7VYiH" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hQ7VYiI" role="1YuTPh">
      <property role="TrG5h" value="macro" />
      <ref role="1YaFvo" to="tpf8:fP7Vmt2" resolve="NodeMacro" />
    </node>
  </node>
  <node concept="18kY7G" id="hQqRX_u">
    <property role="TrG5h" value="check_WeaveEach_RuleConsequence" />
    <node concept="3clFbS" id="hQqRX_v" role="18ibNy">
      <node concept="3cpWs8" id="uktU6AWHOR" role="3cqZAp">
        <node concept="3cpWsn" id="uktU6AWHOS" role="3cpWs9">
          <property role="TrG5h" value="template" />
          <node concept="3Tqbb2" id="uktU6AWHOT" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
          </node>
          <node concept="2OqwBi" id="uktU6AWHOW" role="33vP2m">
            <node concept="1YBJjd" id="uktU6AWHOV" role="2Oq$k0">
              <ref role="1YBMHb" node="hQqS6Vc" resolve="weaveEach" />
            </node>
            <node concept="3TrEf2" id="uktU6AWHP0" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:h1fMUV2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="uktU6AWHel" role="3cqZAp">
        <node concept="3clFbS" id="uktU6AWHem" role="3clFbx">
          <node concept="2MkqsV" id="uktU6AWHen" role="3cqZAp">
            <node concept="Xl_RD" id="uktU6AWHeo" role="2MkJ7o">
              <property role="Xl_RC" value="No template" />
            </node>
            <node concept="1YBJjd" id="uktU6AWHP2" role="2OEOjV">
              <ref role="1YBMHb" node="hQqS6Vc" resolve="weaveEach" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="uktU6AWHeq" role="3clFbw">
          <node concept="37vLTw" id="3GM_nagTr1T" role="2Oq$k0">
            <ref role="3cqZAo" node="uktU6AWHOS" resolve="template" />
          </node>
          <node concept="3w_OXm" id="uktU6AWHes" role="2OqNvi" />
        </node>
        <node concept="3eNFk2" id="uktU6AWHet" role="3eNLev">
          <node concept="3clFbS" id="uktU6AWHex" role="3eOfB_">
            <node concept="2MkqsV" id="uktU6AWHPg" role="3cqZAp">
              <node concept="Xl_RD" id="uktU6AWHPh" role="2MkJ7o">
                <property role="Xl_RC" value="Cannot weave template with arguments" />
              </node>
              <node concept="1YBJjd" id="uktU6AWHPj" role="2OEOjV">
                <ref role="1YBMHb" node="hQqS6Vc" resolve="weaveEach" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="uktU6AWHPa" role="3eO9$A">
            <node concept="2OqwBi" id="uktU6AWHPb" role="3fr31v">
              <node concept="2OqwBi" id="uktU6AWHPc" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTzZy" role="2Oq$k0">
                  <ref role="3cqZAo" node="uktU6AWHOS" resolve="template" />
                </node>
                <node concept="3Tsc0h" id="QzR6ThiXWr" role="2OqNvi">
                  <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" />
                </node>
              </node>
              <node concept="1v1jN8" id="uktU6AWHPf" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="uktU6AWHPk" role="9aQIa">
          <node concept="3clFbS" id="uktU6AWHPl" role="9aQI4">
            <node concept="3cpWs8" id="uktU6AWHPq" role="3cqZAp">
              <node concept="3cpWsn" id="uktU6AWHPr" role="3cpWs9">
                <property role="TrG5h" value="templateApplicableConcept" />
                <property role="3TUv4t" value="true" />
                <node concept="3Tqbb2" id="uktU6AWHPs" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
                <node concept="2OqwBi" id="uktU6AWHPt" role="33vP2m">
                  <node concept="3TrEf2" id="uktU6AWHQ7" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTwse" role="2Oq$k0">
                    <ref role="3cqZAo" node="uktU6AWHOS" resolve="template" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="uktU6AWHPy" role="3cqZAp">
              <node concept="3clFbS" id="uktU6AWHPz" role="3clFbx">
                <node concept="3cpWs6" id="uktU6AWHP$" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="uktU6AWHP_" role="3clFbw">
                <node concept="10Nm6u" id="uktU6AWHPA" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTtA0" role="3uHU7B">
                  <ref role="3cqZAo" node="uktU6AWHPr" resolve="templateApplicableConcept" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="uktU6AWHPC" role="3cqZAp">
              <node concept="3cpWsn" id="uktU6AWHPD" role="3cpWs9">
                <property role="TrG5h" value="query" />
                <node concept="3Tqbb2" id="uktU6AWHPE" role="1tU5fm">
                  <ref role="ehGHo" to="tpf8:gZJmXo3" resolve="SourceSubstituteMacro_SourceNodesQuery" />
                </node>
                <node concept="2OqwBi" id="uktU6AWHPF" role="33vP2m">
                  <node concept="1YBJjd" id="uktU6AWHPG" role="2Oq$k0">
                    <ref role="1YBMHb" node="hQqS6Vc" resolve="weaveEach" />
                  </node>
                  <node concept="3TrEf2" id="uktU6AWHPH" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:h1fNfX3" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="uktU6AWHPI" role="3cqZAp">
              <node concept="3cpWsn" id="uktU6AWHPJ" role="3cpWs9">
                <property role="TrG5h" value="NT" />
                <node concept="3Tqbb2" id="uktU6AWHPK" role="1tU5fm" />
                <node concept="2YIFZM" id="uktU6AWHPL" role="33vP2m">
                  <ref role="37wK5l" node="hQqOS1L" resolve="getOutputNodeType_fromSourceQuery" />
                  <ref role="1Pybhc" node="h9HYf0$" resolve="QueriesUtil" />
                  <node concept="37vLTw" id="3GM_nagTBN_" role="37wK5m">
                    <ref role="3cqZAo" node="uktU6AWHPD" resolve="query" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="uktU6AWHPN" role="3cqZAp">
              <node concept="3cpWsn" id="uktU6AWHPO" role="3cpWs9">
                <property role="TrG5h" value="nodeConcept" />
                <node concept="3Tqbb2" id="uktU6AWHPP" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
                <node concept="2OqwBi" id="uktU6AWHPQ" role="33vP2m">
                  <node concept="1PxgMI" id="uktU6AWHPR" role="2Oq$k0">
                    <ref role="1PxNhF" to="tp25:gzTqbfa" resolve="SNodeType" />
                    <node concept="37vLTw" id="3GM_nagTyo6" role="1PxMeX">
                      <ref role="3cqZAo" node="uktU6AWHPJ" resolve="NT" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="uktU6AWHPT" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp25:g$ehGDh" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="uktU6AWHPU" role="3cqZAp">
              <node concept="3clFbS" id="uktU6AWHPV" role="3clFbx">
                <node concept="2MkqsV" id="uktU6AWHPW" role="3cqZAp">
                  <node concept="3cpWs3" id="uktU6AWHPX" role="2MkJ7o">
                    <node concept="37vLTw" id="3GM_nagTtNy" role="3uHU7w">
                      <ref role="3cqZAo" node="uktU6AWHPJ" resolve="NT" />
                    </node>
                    <node concept="Xl_RD" id="uktU6AWHPZ" role="3uHU7B">
                      <property role="Xl_RC" value="template is not applicable to " />
                    </node>
                  </node>
                  <node concept="1YBJjd" id="uktU6AWHQ0" role="2OEOjV">
                    <ref role="1YBMHb" node="hQqS6Vc" resolve="weaveEach" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="uktU6AWHQ1" role="3clFbw">
                <node concept="2OqwBi" id="4wG2MBHCYVH" role="3fr31v">
                  <node concept="2YIFZM" id="4wG2MBHCYUr" role="2Oq$k0">
                    <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                    <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                    <node concept="37vLTw" id="4wG2MBHCYU_" role="37wK5m">
                      <ref role="3cqZAo" node="uktU6AWHPO" resolve="nodeConcept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4wG2MBHCZ3t" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept):boolean" resolve="isSubConceptOf" />
                    <node concept="2YIFZM" id="4wG2MBHCZ6O" role="37wK5m">
                      <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                      <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                      <node concept="37vLTw" id="4wG2MBHCZaq" role="37wK5m">
                        <ref role="3cqZAo" node="uktU6AWHPr" resolve="templateApplicableConcept" />
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
    <node concept="1YaCAy" id="hQqS6Vc" role="1YuTPh">
      <property role="TrG5h" value="weaveEach" />
      <ref role="1YaFvo" to="tpf8:h1fMGeL" resolve="WeaveEach_RuleConsequence" />
    </node>
  </node>
  <node concept="1YbPZF" id="i3MpUh4">
    <property role="TrG5h" value="check_Weaving_MappingRule" />
    <property role="3GE5qa" value="rule" />
    <node concept="3clFbS" id="i3MpUh5" role="18ibNy">
      <node concept="3clFbJ" id="i3MpWq$" role="3cqZAp">
        <node concept="3clFbS" id="i3MpWq_" role="3clFbx">
          <node concept="3cpWs8" id="i3MpWqJ" role="3cqZAp">
            <node concept="3cpWsn" id="i3MpWqK" role="3cpWs9">
              <property role="TrG5h" value="template" />
              <node concept="3Tqbb2" id="i3MpWqL" role="1tU5fm">
                <ref role="ehGHo" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
              </node>
              <node concept="2OqwBi" id="i3MpWqM" role="33vP2m">
                <node concept="1PxgMI" id="i3MpWqN" role="2Oq$k0">
                  <ref role="1PxNhF" to="tpf8:h0j$61m" resolve="TemplateDeclarationReference" />
                  <node concept="2OqwBi" id="i3MpWqO" role="1PxMeX">
                    <node concept="1YBJjd" id="i3MpYXQ" role="2Oq$k0">
                      <ref role="1YBMHb" node="i3MpUh6" resolve="rule" />
                    </node>
                    <node concept="3TrEf2" id="i3MpWqQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:h1fOSCs" />
                    </node>
                  </node>
                </node>
                <node concept="2qgKlT" id="QzR6ThxH4r" role="2OqNvi">
                  <ref role="37wK5l" to="tpfh:QzR6ThtRo7" resolve="getTemplate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="i3Mqbrn" role="3cqZAp">
            <node concept="3cpWsn" id="i3Mqbro" role="3cpWs9">
              <property role="TrG5h" value="useRootTemplateFragment" />
              <node concept="10P_77" id="i3Mqbrp" role="1tU5fm" />
              <node concept="3clFbT" id="i3MqdQW" role="33vP2m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="i3MpWqS" role="3cqZAp">
            <node concept="3clFbS" id="i3MpWqT" role="2LFqv$">
              <node concept="3clFbJ" id="i3MpWqU" role="3cqZAp">
                <node concept="2OqwBi" id="i3MpWqV" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTumk" role="2Oq$k0">
                    <ref role="3cqZAo" node="i3MpWr2" resolve="child" />
                  </node>
                  <node concept="1mIQ4w" id="i3MpWqX" role="2OqNvi">
                    <node concept="chp4Y" id="i3MpWqY" role="cj9EA">
                      <ref role="cht4Q" to="tpf8:fWrartG" resolve="TemplateFragment" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="i3MpWqZ" role="3clFbx">
                  <node concept="3clFbF" id="i3Mqf6N" role="3cqZAp">
                    <node concept="37vLTI" id="i3MqfDv" role="3clFbG">
                      <node concept="3clFbT" id="i3Mqg6m" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTxXc" role="37vLTJ">
                        <ref role="3cqZAo" node="i3Mqbro" resolve="useRootTemplateFragment" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="i3MpWr2" role="1Duv9x">
              <property role="TrG5h" value="child" />
              <node concept="3Tqbb2" id="i3MpWr3" role="1tU5fm" />
            </node>
            <node concept="2OqwBi" id="i3MpWr4" role="1DdaDG">
              <node concept="2OqwBi" id="i3MpWr5" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTAxd" role="2Oq$k0">
                  <ref role="3cqZAo" node="i3MpWqK" resolve="template" />
                </node>
                <node concept="3TrEf2" id="i3MpWr7" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:fT3RC8V" />
                </node>
              </node>
              <node concept="32TBzR" id="i3MpWr8" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbJ" id="i3MqodW" role="3cqZAp">
            <node concept="3clFbS" id="i3MqodX" role="3clFbx">
              <node concept="2MkqsV" id="i3MqpeY" role="3cqZAp">
                <node concept="Xl_RD" id="i3Mqy7x" role="2MkJ7o">
                  <property role="Xl_RC" value="Weaving Template can't include Template Fragment as root" />
                </node>
                <node concept="2OqwBi" id="i3MrCAu" role="2OEOjV">
                  <node concept="1YBJjd" id="i3Mqxs3" role="2Oq$k0">
                    <ref role="1YBMHb" node="i3MpUh6" resolve="rule" />
                  </node>
                  <node concept="3TrEf2" id="i3MrD7w" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:h1fOSCs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagT$5V" role="3clFbw">
              <ref role="3cqZAo" node="i3Mqbro" resolve="useRootTemplateFragment" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="i3MpWqD" role="3clFbw">
          <node concept="2OqwBi" id="i3MpWqE" role="2Oq$k0">
            <node concept="1YBJjd" id="i3MpY3f" role="2Oq$k0">
              <ref role="1YBMHb" node="i3MpUh6" resolve="rule" />
            </node>
            <node concept="3TrEf2" id="i3MpWqG" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:h1fOSCs" />
            </node>
          </node>
          <node concept="1mIQ4w" id="i3MpWqH" role="2OqNvi">
            <node concept="chp4Y" id="i3MpWqI" role="cj9EA">
              <ref role="cht4Q" to="tpf8:h0j$61m" resolve="TemplateDeclarationReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="i3MpUh6" role="1YuTPh">
      <property role="TrG5h" value="rule" />
      <ref role="1YaFvo" to="tpf8:gZ0QclN" resolve="Weaving_MappingRule" />
    </node>
  </node>
  <node concept="1YbPZF" id="1$dcvTE6OGZ">
    <property role="TrG5h" value="typeof_PatternReduction_MappingRule" />
    <property role="3GE5qa" value="rule" />
    <node concept="3clFbS" id="1$dcvTE6OH0" role="18ibNy">
      <node concept="3cpWs8" id="1$dcvTE731t" role="3cqZAp">
        <node concept="3cpWsn" id="1$dcvTE731u" role="3cpWs9">
          <property role="TrG5h" value="applicableConcept" />
          <node concept="3THzug" id="1$dcvTE731v" role="1tU5fm" />
          <node concept="2OqwBi" id="1$dcvTE731w" role="33vP2m">
            <node concept="1YBJjd" id="1$dcvTE731x" role="2Oq$k0">
              <ref role="1YBMHb" node="1$dcvTE6OH1" resolve="rule" />
            </node>
            <node concept="2qgKlT" id="1$dcvTE731y" role="2OqNvi">
              <ref role="37wK5l" to="tpfh:1$dcvTE6OGV" resolve="getConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1$dcvTE6OH2" role="3cqZAp">
        <node concept="1Wc70l" id="1$dcvTE731z" role="3clFbw">
          <node concept="2OqwBi" id="1$dcvTE731F" role="3uHU7w">
            <node concept="37vLTw" id="3GM_nagT$8A" role="2Oq$k0">
              <ref role="3cqZAo" node="1$dcvTE731u" resolve="applicableConcept" />
            </node>
            <node concept="3x8VRR" id="1$dcvTE731J" role="2OqNvi" />
          </node>
          <node concept="3y3z36" id="1$dcvTE6OH3" role="3uHU7B">
            <node concept="2OqwBi" id="1$dcvTE6OH5" role="3uHU7B">
              <node concept="2OqwBi" id="1$dcvTE6OH6" role="2Oq$k0">
                <node concept="1YBJjd" id="1$dcvTE7311" role="2Oq$k0">
                  <ref role="1YBMHb" node="1$dcvTE6OH1" resolve="rule" />
                </node>
                <node concept="3TrEf2" id="1$dcvTE7317" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:1$dcvTE4IIU" />
                </node>
              </node>
              <node concept="3TrEf2" id="1$dcvTE7318" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:hurTdLu" />
              </node>
            </node>
            <node concept="10Nm6u" id="1$dcvTE6OH4" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbS" id="1$dcvTE6OHa" role="3clFbx">
          <node concept="3clFbJ" id="1$dcvTE6OHb" role="3cqZAp">
            <node concept="3fqX7Q" id="1$dcvTE6OHc" role="3clFbw">
              <node concept="2OqwBi" id="73yVtVm07eC" role="3fr31v">
                <node concept="2OqwBi" id="3p8IqUIG1Vg" role="2Oq$k0">
                  <node concept="37vLTw" id="1oFmEVza8A9" role="2Oq$k0">
                    <ref role="3cqZAo" node="1$dcvTE731u" resolve="applicableConcept" />
                  </node>
                  <node concept="FGMqu" id="3p8IqUIG26Q" role="2OqNvi" />
                </node>
                <node concept="2qgKlT" id="73yVtVm0jTH" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                  <node concept="2OqwBi" id="1$dcvTE6OHe" role="37wK5m">
                    <node concept="2OqwBi" id="1$dcvTE6OHf" role="2Oq$k0">
                      <node concept="1YBJjd" id="1$dcvTE7312" role="2Oq$k0">
                        <ref role="1YBMHb" node="1$dcvTE6OH1" resolve="rule" />
                      </node>
                      <node concept="3TrEf2" id="1$dcvTE7319" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:1$dcvTE4IIU" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1$dcvTE6OHi" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:hurTdLu" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1$dcvTE6OHo" role="3clFbx">
              <node concept="2MkqsV" id="1$dcvTE6OHp" role="3cqZAp">
                <node concept="Xl_RD" id="1$dcvTE6OHq" role="2MkJ7o">
                  <property role="Xl_RC" value="Label has incorrect type" />
                </node>
                <node concept="1YBJjd" id="1$dcvTE731f" role="2OEOjV">
                  <ref role="1YBMHb" node="1$dcvTE6OH1" resolve="rule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2NvLDW" id="1$dcvTE6OHs" role="3cqZAp">
            <property role="Ob790" value="0" />
            <node concept="mw_s8" id="1$dcvTE6OHt" role="1ZfhK$">
              <node concept="2c44tf" id="1$dcvTE6OHu" role="mwGJk">
                <node concept="3Tqbb2" id="1$dcvTE6OHv" role="2c44tc">
                  <node concept="2c44tb" id="1$dcvTE6OHw" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="2OqwBi" id="1$dcvTE6OHx" role="2c44t1">
                      <node concept="1YBJjd" id="1$dcvTE7316" role="2Oq$k0">
                        <ref role="1YBMHb" node="1$dcvTE6OH1" resolve="rule" />
                      </node>
                      <node concept="2qgKlT" id="1$dcvTE731T" role="2OqNvi">
                        <ref role="37wK5l" to="tpfh:1$dcvTE731L" resolve="getTemplateType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="1$dcvTE6OH$" role="1ZfhKB">
              <node concept="2c44tf" id="1$dcvTE6OH_" role="mwGJk">
                <node concept="3Tqbb2" id="1$dcvTE6OHA" role="2c44tc">
                  <node concept="2c44tb" id="1$dcvTE6OHB" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="2OqwBi" id="1$dcvTE6OHC" role="2c44t1">
                      <node concept="2OqwBi" id="1$dcvTE6OHD" role="2Oq$k0">
                        <node concept="1YBJjd" id="1$dcvTE7314" role="2Oq$k0">
                          <ref role="1YBMHb" node="1$dcvTE6OH1" resolve="rule" />
                        </node>
                        <node concept="3TrEf2" id="1$dcvTE7315" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpf8:1$dcvTE4IIU" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1$dcvTE6OHG" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:hurZzxA" />
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
    <node concept="1YaCAy" id="1$dcvTE6OH1" role="1YuTPh">
      <property role="TrG5h" value="rule" />
      <ref role="1YaFvo" to="tpf8:1$dcvTE4IIO" resolve="PatternReduction_MappingRule" />
    </node>
  </node>
  <node concept="1YbPZF" id="1vDgt48NGPy">
    <property role="TrG5h" value="typeof_TemplateDeclarationReference" />
    <property role="3GE5qa" value="rule.consequence" />
    <node concept="3clFbS" id="1vDgt48NGPz" role="18ibNy">
      <node concept="3cpWs8" id="1vDgt48NGPC" role="3cqZAp">
        <node concept="3cpWsn" id="1vDgt48NGPD" role="3cpWs9">
          <property role="TrG5h" value="rule" />
          <node concept="3Tqbb2" id="1vDgt48NGPE" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:gZ0H$p7" resolve="BaseMappingRule" />
          </node>
          <node concept="2OqwBi" id="1vDgt48NGPF" role="33vP2m">
            <node concept="1YBJjd" id="1vDgt48NGPG" role="2Oq$k0">
              <ref role="1YBMHb" node="1vDgt48NGP$" resolve="templateDeclRef" />
            </node>
            <node concept="2Xjw5R" id="1vDgt48NGPH" role="2OqNvi">
              <node concept="1xMEDy" id="1vDgt48NGPI" role="1xVPHs">
                <node concept="chp4Y" id="1vDgt48NGPJ" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:gZ0H$p7" resolve="BaseMappingRule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1vDgt48NGPK" role="3cqZAp">
        <node concept="3clFbS" id="1vDgt48NGPL" role="3clFbx">
          <node concept="3cpWs8" id="1vDgt48NGPM" role="3cqZAp">
            <node concept="3cpWsn" id="1vDgt48NGPN" role="3cpWs9">
              <property role="TrG5h" value="templateApplicableConcept" />
              <node concept="3Tqbb2" id="27AGqGE$DCZ" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="1vDgt48NGPP" role="33vP2m">
                <node concept="2OqwBi" id="1vDgt48NGPQ" role="2Oq$k0">
                  <node concept="1YBJjd" id="1vDgt48NGPR" role="2Oq$k0">
                    <ref role="1YBMHb" node="1vDgt48NGP$" resolve="templateDeclRef" />
                  </node>
                  <node concept="2qgKlT" id="QzR6ThxNzG" role="2OqNvi">
                    <ref role="37wK5l" to="tpfh:QzR6ThtRo7" resolve="getTemplate" />
                  </node>
                </node>
                <node concept="3TrEf2" id="1vDgt48NGPT" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1vDgt48NGPU" role="3cqZAp">
            <node concept="3cpWsn" id="1vDgt48NGPV" role="3cpWs9">
              <property role="TrG5h" value="ruleApplicableConcept" />
              <node concept="3Tqbb2" id="27AGqGE$DYE" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="1vDgt48NGPX" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTtq8" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vDgt48NGPD" resolve="rule" />
                </node>
                <node concept="3TrEf2" id="1vDgt48NGPZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:gZ0HIsK" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1vDgt48NGQ0" role="3cqZAp">
            <node concept="3clFbS" id="1vDgt48NGQ1" role="3clFbx">
              <node concept="3clFbJ" id="1vDgt48NGQ2" role="3cqZAp">
                <node concept="3clFbS" id="1vDgt48NGQ3" role="3clFbx">
                  <node concept="2MkqsV" id="1vDgt48NGQ4" role="3cqZAp">
                    <node concept="3cpWs3" id="1vDgt48NGQ5" role="2MkJ7o">
                      <node concept="Xl_RD" id="1vDgt48NGQ6" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="1vDgt48NGQ7" role="3uHU7B">
                        <node concept="Xl_RD" id="1vDgt48NGQ8" role="3uHU7B">
                          <property role="Xl_RC" value="template is not applicable to the rule concept '" />
                        </node>
                        <node concept="2OqwBi" id="1vDgt48NGQ9" role="3uHU7w">
                          <node concept="37vLTw" id="3GM_nagTwtd" role="2Oq$k0">
                            <ref role="3cqZAo" node="1vDgt48NGPV" resolve="ruleApplicableConcept" />
                          </node>
                          <node concept="3TrcHB" id="1vDgt48NGQb" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1YBJjd" id="1vDgt48NGQc" role="2OEOjV">
                      <ref role="1YBMHb" node="1vDgt48NGP$" resolve="templateDeclRef" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="1vDgt48NGQd" role="3clFbw">
                  <node concept="2OqwBi" id="73yVtVm0vHw" role="3fr31v">
                    <node concept="37vLTw" id="27AGqGE$Dn6" role="2Oq$k0">
                      <ref role="3cqZAo" node="1vDgt48NGPV" resolve="ruleApplicableConcept" />
                    </node>
                    <node concept="2qgKlT" id="73yVtVm0w7q" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                      <node concept="37vLTw" id="73yVtVm0wgL" role="37wK5m">
                        <ref role="3cqZAo" node="1vDgt48NGPN" resolve="templateApplicableConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1vDgt48NGQj" role="3clFbw">
              <node concept="3y3z36" id="1vDgt48NGQk" role="3uHU7w">
                <node concept="10Nm6u" id="1vDgt48NGQl" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTuy1" role="3uHU7B">
                  <ref role="3cqZAo" node="1vDgt48NGPN" resolve="templateApplicableConcept" />
                </node>
              </node>
              <node concept="3y3z36" id="1vDgt48NGQn" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTrvr" role="3uHU7B">
                  <ref role="3cqZAo" node="1vDgt48NGPV" resolve="ruleApplicableConcept" />
                </node>
                <node concept="10Nm6u" id="1vDgt48NGQp" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="1vDgt48NGQq" role="3clFbw">
          <node concept="10Nm6u" id="1vDgt48NGQr" role="3uHU7w" />
          <node concept="37vLTw" id="3GM_nagT$h6" role="3uHU7B">
            <ref role="3cqZAo" node="1vDgt48NGPD" resolve="rule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1vDgt48NGP$" role="1YuTPh">
      <property role="TrG5h" value="templateDeclRef" />
      <ref role="1YaFvo" to="tpf8:h0j$61m" resolve="TemplateDeclarationReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="42YwEPgeQbE">
    <property role="TrG5h" value="typeof_TemplateArgumentPatternVarRefExpression" />
    <property role="3GE5qa" value="rule.argument" />
    <node concept="3clFbS" id="42YwEPgeQbF" role="18ibNy">
      <node concept="1Z5TYs" id="42YwEPgeQbH" role="3cqZAp">
        <node concept="mw_s8" id="42YwEPgeQbI" role="1ZfhKB">
          <node concept="1Z2H0r" id="42YwEPgeQbJ" role="mwGJk">
            <node concept="2OqwBi" id="42YwEPgeQbK" role="1Z2MuG">
              <node concept="1YBJjd" id="42YwEPgeQQW" role="2Oq$k0">
                <ref role="1YBMHb" node="42YwEPgeQbG" resolve="templateArgumentPatternVarRefExpression" />
              </node>
              <node concept="3TrEf2" id="42YwEPgeWop" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:42YwEPgeNV4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="42YwEPgeQbN" role="1ZfhK$">
          <node concept="1Z2H0r" id="42YwEPgeQbO" role="mwGJk">
            <node concept="1YBJjd" id="42YwEPgeQQV" role="1Z2MuG">
              <ref role="1YBMHb" node="42YwEPgeQbG" resolve="templateArgumentPatternVarRefExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="42YwEPgeQbG" role="1YuTPh">
      <property role="TrG5h" value="templateArgumentPatternVarRefExpression" />
      <ref role="1YaFvo" to="tpf8:42YwEPgeNM8" resolve="TemplateArgumentPatternVarRefExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="4bn6ZJF6_TK">
    <property role="TrG5h" value="typeof_TemplateArgumentPropertyPatternRefExpression" />
    <node concept="3clFbS" id="4bn6ZJF6_TL" role="18ibNy">
      <node concept="1Z5TYs" id="4bn6ZJF6ArB" role="3cqZAp">
        <node concept="mw_s8" id="4bn6ZJF6ArF" role="1ZfhKB">
          <node concept="1Z2H0r" id="4bn6ZJF6ArG" role="mwGJk">
            <node concept="2OqwBi" id="4bn6ZJF6ArJ" role="1Z2MuG">
              <node concept="1YBJjd" id="4bn6ZJF6ArI" role="2Oq$k0">
                <ref role="1YBMHb" node="4bn6ZJF6_TM" resolve="templateArgumentPropertyPatternRefExpression" />
              </node>
              <node concept="3TrEf2" id="4bn6ZJF6AJW" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:4bn6ZJF6_RD" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4bn6ZJF6ArE" role="1ZfhK$">
          <node concept="1Z2H0r" id="4bn6ZJF6Arw" role="mwGJk">
            <node concept="1YBJjd" id="4bn6ZJF6Ary" role="1Z2MuG">
              <ref role="1YBMHb" node="4bn6ZJF6_TM" resolve="templateArgumentPropertyPatternRefExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4bn6ZJF6_TM" role="1YuTPh">
      <property role="TrG5h" value="templateArgumentPropertyPatternRefExpression" />
      <ref role="1YaFvo" to="tpf8:4bn6ZJF6_RB" resolve="TemplateArgumentPropertyPatternRefExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="4bn6ZJF6AJX">
    <property role="TrG5h" value="typeof_TemplateArgumentLinkPatternRefExpression" />
    <node concept="3clFbS" id="4bn6ZJF6AJY" role="18ibNy">
      <node concept="1Z5TYs" id="4bn6ZJF6AK4" role="3cqZAp">
        <node concept="mw_s8" id="4bn6ZJF6AK8" role="1ZfhKB">
          <node concept="1Z2H0r" id="4bn6ZJF6AK9" role="mwGJk">
            <node concept="2OqwBi" id="4bn6ZJF6AKc" role="1Z2MuG">
              <node concept="1YBJjd" id="4bn6ZJF6AKb" role="2Oq$k0">
                <ref role="1YBMHb" node="4bn6ZJF6AJZ" resolve="templateArgumentLinkPatternRefExpression" />
              </node>
              <node concept="3TrEf2" id="4bn6ZJF6AKg" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:4bn6ZJF6_RE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4bn6ZJF6AK7" role="1ZfhK$">
          <node concept="1Z2H0r" id="4bn6ZJF6AK1" role="mwGJk">
            <node concept="1YBJjd" id="4bn6ZJF6AK3" role="1Z2MuG">
              <ref role="1YBMHb" node="4bn6ZJF6AJZ" resolve="templateArgumentLinkPatternRefExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4bn6ZJF6AJZ" role="1YuTPh">
      <property role="TrG5h" value="templateArgumentLinkPatternRefExpression" />
      <ref role="1YaFvo" to="tpf8:4bn6ZJF6_RC" resolve="TemplateArgumentLinkPatternRefExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="6C$BydUUvYt">
    <property role="TrG5h" value="check_LoopMacro" />
    <node concept="3clFbS" id="6C$BydUUvYu" role="18ibNy">
      <node concept="3cpWs8" id="6C$BydUUPyp" role="3cqZAp">
        <node concept="3cpWsn" id="6C$BydUUPyq" role="3cpWs9">
          <property role="TrG5h" value="attributedNode" />
          <node concept="3Tqbb2" id="6C$BydUUPyr" role="1tU5fm" />
          <node concept="2OqwBi" id="6C$BydUUPyu" role="33vP2m">
            <node concept="1YBJjd" id="6C$BydUUPyt" role="2Oq$k0">
              <ref role="1YBMHb" node="6C$BydUUvYw" resolve="loopMacro" />
            </node>
            <node concept="1mfA1w" id="6C$BydUUPyy" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6C$BydUUwf1" role="3cqZAp">
        <node concept="3clFbS" id="6C$BydUUwf2" role="3clFbx">
          <node concept="3cpWs8" id="WXiImLvzqZ" role="3cqZAp">
            <node concept="3cpWsn" id="WXiImLvzr0" role="3cpWs9">
              <property role="TrG5h" value="linkdecl" />
              <node concept="3Tqbb2" id="WXiImLvzr1" role="1tU5fm">
                <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
              </node>
              <node concept="2OqwBi" id="WXiImLvzr3" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTz9G" role="2Oq$k0">
                  <ref role="3cqZAo" node="6C$BydUUPyq" resolve="attributedNode" />
                </node>
                <node concept="25OxAV" id="WXiImLvzr5" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="WXiImLv_xD" role="3cqZAp">
            <node concept="3clFbS" id="WXiImLv_xE" role="3clFbx">
              <node concept="3clFbJ" id="WXiImLvEJg" role="3cqZAp">
                <node concept="3clFbS" id="WXiImLvEJi" role="3clFbx">
                  <node concept="2MkqsV" id="WXiImLvEJJ" role="3cqZAp">
                    <node concept="3cpWs3" id="WXiImLvEJW" role="2MkJ7o">
                      <node concept="3cpWs3" id="WXiImLvEJN" role="3uHU7B">
                        <node concept="Xl_RD" id="WXiImLvEJK" role="3uHU7B">
                          <property role="Xl_RC" value="Node under $LOOP$ macro should have multiple cardinality (role: " />
                        </node>
                        <node concept="2OqwBi" id="WXiImLvEJR" role="3uHU7w">
                          <node concept="37vLTw" id="3GM_nagTz6l" role="2Oq$k0">
                            <ref role="3cqZAo" node="WXiImLvzr0" resolve="linkdecl" />
                          </node>
                          <node concept="3TrcHB" id="WXiImLvEJV" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="WXiImLvEJZ" role="3uHU7w">
                        <property role="Xl_RC" value=")" />
                      </node>
                    </node>
                    <node concept="1YBJjd" id="WXiImLvEJM" role="2OEOjV">
                      <ref role="1YBMHb" node="6C$BydUUvYw" resolve="loopMacro" />
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="WXiImLvEJw" role="3clFbw">
                  <node concept="2OqwBi" id="WXiImLvEJD" role="3uHU7w">
                    <node concept="2OqwBi" id="WXiImLvEJ$" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTBxX" role="2Oq$k0">
                        <ref role="3cqZAo" node="WXiImLvzr0" resolve="linkdecl" />
                      </node>
                      <node concept="3TrcHB" id="WXiImLvEJC" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0lbG4" resolve="sourceCardinality" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="WXiImLvEJH" role="2OqNvi">
                      <node concept="uoxfO" id="WXiImLvEJI" role="3t7uKA">
                        <ref role="uo_Cq" to="tpce:fLJekj4" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="WXiImLvEJq" role="3uHU7B">
                    <node concept="2OqwBi" id="WXiImLvEJl" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTBUd" role="2Oq$k0">
                        <ref role="3cqZAo" node="WXiImLvzr0" resolve="linkdecl" />
                      </node>
                      <node concept="3TrcHB" id="WXiImLvEJp" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0lbG4" resolve="sourceCardinality" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="WXiImLvEJu" role="2OqNvi">
                      <node concept="uoxfO" id="WXiImLvEJv" role="3t7uKA">
                        <ref role="uo_Cq" to="tpce:fLJekj3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="WXiImLvEJ3" role="3clFbw">
              <node concept="2OqwBi" id="WXiImLv_xH" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTAun" role="2Oq$k0">
                  <ref role="3cqZAo" node="WXiImLvzr0" resolve="linkdecl" />
                </node>
                <node concept="3x8VRR" id="WXiImLv_xJ" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="WXiImLvEJ6" role="3uHU7w">
                <node concept="2OqwBi" id="WXiImLvEJ7" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTsx1" role="2Oq$k0">
                    <ref role="3cqZAo" node="WXiImLvzr0" resolve="linkdecl" />
                  </node>
                  <node concept="3TrcHB" id="WXiImLvEJ9" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:fA0lm$B" resolve="metaClass" />
                  </node>
                </node>
                <node concept="3t7uKx" id="WXiImLvEJa" role="2OqNvi">
                  <node concept="uoxfO" id="WXiImLvEJb" role="3t7uKA">
                    <ref role="uo_Cq" to="tpce:fLJjDmT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="6C$BydUUPy_" role="3clFbw">
          <node concept="37vLTw" id="3GM_nagTscF" role="2Oq$k0">
            <ref role="3cqZAo" node="6C$BydUUPyq" resolve="attributedNode" />
          </node>
          <node concept="3x8VRR" id="6C$BydUUPyD" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6C$BydUUvYw" role="1YuTPh">
      <property role="TrG5h" value="loopMacro" />
      <ref role="1YaFvo" to="tpf8:ghWS0B3" resolve="LoopMacro" />
    </node>
  </node>
  <node concept="1YbPZF" id="4lQlo5qup81">
    <property role="TrG5h" value="typeof_TemplateArgumentParameterExpression" />
    <property role="3GE5qa" value="rule.argument" />
    <node concept="3clFbS" id="4lQlo5qup82" role="18ibNy">
      <node concept="1Z5TYs" id="4lQlo5qup88" role="3cqZAp">
        <node concept="mw_s8" id="4UbAqfvMANI" role="1ZfhKB">
          <node concept="1Z2H0r" id="4UbAqfvMANJ" role="mwGJk">
            <node concept="2OqwBi" id="4UbAqfvMANM" role="1Z2MuG">
              <node concept="1YBJjd" id="4UbAqfvMANL" role="2Oq$k0">
                <ref role="1YBMHb" node="4lQlo5qup83" resolve="arg" />
              </node>
              <node concept="3TrEf2" id="4UbAqfvMIk8" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:4lQlo5qukTU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4lQlo5qup8b" role="1ZfhK$">
          <node concept="1Z2H0r" id="4lQlo5qup85" role="mwGJk">
            <node concept="1YBJjd" id="4lQlo5qup87" role="1Z2MuG">
              <ref role="1YBMHb" node="4lQlo5qup83" resolve="arg" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4lQlo5qup83" role="1YuTPh">
      <property role="TrG5h" value="arg" />
      <ref role="1YaFvo" to="tpf8:4lQlo5qukTT" resolve="TemplateArgumentParameterExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="4UbAqfvMIk9">
    <property role="TrG5h" value="typeof_TemplateParameterDeclaration" />
    <property role="3GE5qa" value="template" />
    <node concept="3clFbS" id="4UbAqfvMIka" role="18ibNy">
      <node concept="1Z5TYs" id="4UbAqfvMLgv" role="3cqZAp">
        <node concept="mw_s8" id="4UbAqfvMLgz" role="1ZfhKB">
          <node concept="2OqwBi" id="4UbAqfvMLg_" role="mwGJk">
            <node concept="1YBJjd" id="4UbAqfvMLg$" role="2Oq$k0">
              <ref role="1YBMHb" node="4UbAqfvMIkb" resolve="tpd" />
            </node>
            <node concept="3TrEf2" id="4UbAqfvMLgD" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:1$dcvTE2mFf" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4UbAqfvMLgy" role="1ZfhK$">
          <node concept="1Z2H0r" id="4UbAqfvMIkd" role="mwGJk">
            <node concept="1YBJjd" id="4UbAqfvMLgs" role="1Z2MuG">
              <ref role="1YBMHb" node="4UbAqfvMIkb" resolve="tpd" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4UbAqfvMIkb" role="1YuTPh">
      <property role="TrG5h" value="tpd" />
      <ref role="1YaFvo" to="tpf8:1$dcvTE2mbA" resolve="TemplateParameterDeclaration" />
    </node>
  </node>
  <node concept="18kY7G" id="6TsFynOhsd0">
    <property role="TrG5h" value="check_TemplateDeclaration" />
    <property role="3GE5qa" value="template" />
    <node concept="3clFbS" id="6TsFynOhsd1" role="18ibNy">
      <node concept="3clFbJ" id="6TsFynOhsQH" role="3cqZAp">
        <node concept="1Wc70l" id="8AYOKVCCZh" role="3clFbw">
          <node concept="2OqwBi" id="8AYOKVCF$Q" role="3uHU7w">
            <node concept="2OqwBi" id="8AYOKVCDwO" role="2Oq$k0">
              <node concept="1YBJjd" id="8AYOKVCDs5" role="2Oq$k0">
                <ref role="1YBMHb" node="6TsFynOhsd2" resolve="td" />
              </node>
              <node concept="2Rf3mk" id="8AYOKVCE_o" role="2OqNvi">
                <node concept="1xMEDy" id="8AYOKVCE_q" role="1xVPHs">
                  <node concept="chp4Y" id="8AYOKVCESJ" role="ri$Ld">
                    <ref role="cht4Q" to="tpck:8AYOKVCAP5" resolve="IStubForAnotherConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1v1jN8" id="8AYOKVCKRu" role="2OqNvi" />
          </node>
          <node concept="1Wc70l" id="6TsFynOh$I6" role="3uHU7B">
            <node concept="2OqwBi" id="6TsFynOhsQL" role="3uHU7B">
              <node concept="2OqwBi" id="6TsFynOh$Hy" role="2Oq$k0">
                <node concept="1YBJjd" id="6TsFynOhsQK" role="2Oq$k0">
                  <ref role="1YBMHb" node="6TsFynOhsd2" resolve="td" />
                </node>
                <node concept="3TrEf2" id="6TsFynOh$HA" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:fT3RC8V" />
                </node>
              </node>
              <node concept="3x8VRR" id="6TsFynOh$HL" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="6TsFynOh$I1" role="3uHU7w">
              <node concept="2OqwBi" id="6TsFynOh$HS" role="2Oq$k0">
                <node concept="1YBJjd" id="6TsFynOh$HR" role="2Oq$k0">
                  <ref role="1YBMHb" node="6TsFynOhsd2" resolve="td" />
                </node>
                <node concept="2Rf3mk" id="6TsFynOh$HW" role="2OqNvi">
                  <node concept="1xMEDy" id="6TsFynOh$HX" role="1xVPHs">
                    <node concept="chp4Y" id="6TsFynOh$I0" role="ri$Ld">
                      <ref role="cht4Q" to="tpf8:fWrartG" resolve="TemplateFragment" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1v1jN8" id="6TsFynOh$I5" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6TsFynOhsQJ" role="3clFbx">
          <node concept="2MkqsV" id="6TsFynOh$Ia" role="3cqZAp">
            <node concept="Xl_RD" id="6TsFynOh$Id" role="2MkJ7o">
              <property role="Xl_RC" value="No template fragments found" />
            </node>
            <node concept="2OqwBi" id="58$__1noXir" role="2OEOjV">
              <node concept="1YBJjd" id="6TsFynOh$Ie" role="2Oq$k0">
                <ref role="1YBMHb" node="6TsFynOhsd2" resolve="td" />
              </node>
              <node concept="3TrEf2" id="58$__1noYNY" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:fT3RC8V" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6TsFynOhsd2" role="1YuTPh">
      <property role="TrG5h" value="td" />
      <ref role="1YaFvo" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
    </node>
  </node>
  <node concept="18kY7G" id="6TsFynOhEnI">
    <property role="TrG5h" value="check_TemplateDeclarationReference" />
    <property role="3GE5qa" value="rule.consequence" />
    <node concept="3clFbS" id="6TsFynOhEnJ" role="18ibNy">
      <node concept="3clFbJ" id="6TsFynOhEnL" role="3cqZAp">
        <node concept="1Wc70l" id="6TsFynOhEnZ" role="3clFbw">
          <node concept="2OqwBi" id="6TsFynOhEod" role="3uHU7w">
            <node concept="2OqwBi" id="6TsFynOhEo8" role="2Oq$k0">
              <node concept="2OqwBi" id="6TsFynOhEo3" role="2Oq$k0">
                <node concept="1YBJjd" id="6TsFynOhEo2" role="2Oq$k0">
                  <ref role="1YBMHb" node="6TsFynOhEnK" resolve="tdr" />
                </node>
                <node concept="2qgKlT" id="QzR6ThxqmH" role="2OqNvi">
                  <ref role="37wK5l" to="tpfh:QzR6ThtRo7" resolve="getTemplate" />
                </node>
              </node>
              <node concept="3TrEf2" id="6TsFynOhEoc" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:fT3RC8V" />
              </node>
            </node>
            <node concept="3x8VRR" id="6TsFynOhEoh" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="6TsFynOhEnU" role="3uHU7B">
            <node concept="2OqwBi" id="6TsFynOhEnP" role="2Oq$k0">
              <node concept="1YBJjd" id="6TsFynOhEnO" role="2Oq$k0">
                <ref role="1YBMHb" node="6TsFynOhEnK" resolve="tdr" />
              </node>
              <node concept="3TrEf2" id="6TsFynOhEnT" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:1vDgt48Nz5N" />
              </node>
            </node>
            <node concept="3x8VRR" id="6TsFynOhEnY" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="6TsFynOhEnN" role="3clFbx">
          <node concept="3cpWs8" id="6TsFynOhEol" role="3cqZAp">
            <node concept="3cpWsn" id="6TsFynOhEom" role="3cpWs9">
              <property role="TrG5h" value="content" />
              <node concept="3Tqbb2" id="6TsFynOhEon" role="1tU5fm" />
              <node concept="2OqwBi" id="6TsFynOhEop" role="33vP2m">
                <node concept="2OqwBi" id="6TsFynOhEoq" role="2Oq$k0">
                  <node concept="1YBJjd" id="6TsFynOhEor" role="2Oq$k0">
                    <ref role="1YBMHb" node="6TsFynOhEnK" resolve="tdr" />
                  </node>
                  <node concept="2qgKlT" id="QzR6Thxtmk" role="2OqNvi">
                    <ref role="37wK5l" to="tpfh:QzR6ThtRo7" resolve="getTemplate" />
                  </node>
                </node>
                <node concept="3TrEf2" id="6TsFynOhEot" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpf8:fT3RC8V" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6TsFynOhEov" role="3cqZAp">
            <node concept="3clFbS" id="6TsFynOhEow" role="3clFbx">
              <node concept="2MkqsV" id="6TsFynOhEoM" role="3cqZAp">
                <node concept="Xl_RD" id="6TsFynOhEoN" role="2MkJ7o">
                  <property role="Xl_RC" value="No template fragments found in referenced template declaration" />
                </node>
                <node concept="1YBJjd" id="6TsFynOhEoP" role="2OEOjV">
                  <ref role="1YBMHb" node="6TsFynOhEnK" resolve="tdr" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6TsFynOhEoH" role="3clFbw">
              <node concept="2OqwBi" id="6TsFynOhEo$" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTuQm" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TsFynOhEom" resolve="content" />
                </node>
                <node concept="2Rf3mk" id="6TsFynOhEoC" role="2OqNvi">
                  <node concept="1xMEDy" id="6TsFynOhEoD" role="1xVPHs">
                    <node concept="chp4Y" id="6TsFynOhEoG" role="ri$Ld">
                      <ref role="cht4Q" to="tpf8:fWrartG" resolve="TemplateFragment" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1v1jN8" id="6TsFynOhEoL" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6TsFynOhEnK" role="1YuTPh">
      <property role="TrG5h" value="tdr" />
      <ref role="1YaFvo" to="tpf8:h0j$61m" resolve="TemplateDeclarationReference" />
    </node>
  </node>
  <node concept="18kY7G" id="2VIsbeKiNAo">
    <property role="TrG5h" value="check_BaseMappingRule" />
    <property role="3GE5qa" value="rule" />
    <node concept="3clFbS" id="2VIsbeKiNJK" role="18ibNy">
      <node concept="3clFbJ" id="2VIsbeKiPF$" role="3cqZAp">
        <node concept="3clFbS" id="2VIsbeKiPF_" role="3clFbx">
          <node concept="3cpWs6" id="2VIsbeKiVk3" role="3cqZAp" />
        </node>
        <node concept="22lmx$" id="2VIsbeKiT$a" role="3clFbw">
          <node concept="2OqwBi" id="2VIsbeKiT$d" role="3uHU7B">
            <node concept="1YBJjd" id="2VIsbeKiT$e" role="2Oq$k0">
              <ref role="1YBMHb" node="2VIsbeKiNJM" resolve="bmr" />
            </node>
            <node concept="3TrcHB" id="2VIsbeKiT$f" role="2OqNvi">
              <ref role="3TsBF5" to="tpf8:gZ6QfpO" resolve="applyToConceptInheritors" />
            </node>
          </node>
          <node concept="2OqwBi" id="2VIsbeKiT$g" role="3uHU7w">
            <node concept="2OqwBi" id="2VIsbeKiT$h" role="2Oq$k0">
              <node concept="1YBJjd" id="2VIsbeKiT$i" role="2Oq$k0">
                <ref role="1YBMHb" node="2VIsbeKiNJM" resolve="bmr" />
              </node>
              <node concept="3TrEf2" id="2VIsbeKiT$j" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:gZ0HIsK" />
              </node>
            </node>
            <node concept="3w_OXm" id="2VIsbeKiVgN" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="2VIsbeKiVmf" role="3cqZAp">
        <node concept="3clFbS" id="2VIsbeKiVmi" role="3clFbx">
          <node concept="a7r0C" id="2VIsbeKiZWO" role="3cqZAp">
            <node concept="Xl_RD" id="2VIsbeKj09t" role="a7wSD">
              <property role="Xl_RC" value="Rule for an abstract concept with disabled inheritors won't apply ever. Pick non-abstract concept or enable rule for concept inheritors as well" />
            </node>
            <node concept="1YBJjd" id="2VIsbeKj05C" role="2OEOjV">
              <ref role="1YBMHb" node="2VIsbeKiNJM" resolve="bmr" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="2VIsbeKiWEl" role="3clFbw">
          <node concept="2OqwBi" id="2VIsbeKiVuy" role="2Oq$k0">
            <node concept="1YBJjd" id="2VIsbeKiVpK" role="2Oq$k0">
              <ref role="1YBMHb" node="2VIsbeKiNJM" resolve="bmr" />
            </node>
            <node concept="3TrEf2" id="2VIsbeKiWb5" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:gZ0HIsK" />
            </node>
          </node>
          <node concept="3TrcHB" id="2VIsbeKiYmj" role="2OqNvi">
            <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2VIsbeKiNJM" role="1YuTPh">
      <property role="TrG5h" value="bmr" />
      <ref role="1YaFvo" to="tpf8:gZ0H$p7" resolve="BaseMappingRule" />
    </node>
  </node>
  <node concept="1YbPZF" id="3PJ9groBR9M">
    <property role="TrG5h" value="typeof_TemplateArgumentVariableRefExpression" />
    <property role="3GE5qa" value="rule.argument" />
    <node concept="3clFbS" id="3PJ9groBR9N" role="18ibNy">
      <node concept="1Z5TYs" id="3PJ9groBRQJ" role="3cqZAp">
        <node concept="mw_s8" id="3PJ9groBRR6" role="1ZfhKB">
          <node concept="1Z2H0r" id="3PJ9groBRR2" role="mwGJk">
            <node concept="2OqwBi" id="3PJ9groBRTj" role="1Z2MuG">
              <node concept="1YBJjd" id="3PJ9groBRRz" role="2Oq$k0">
                <ref role="1YBMHb" node="3PJ9groBR9P" resolve="arg" />
              </node>
              <node concept="3TrEf2" id="3PJ9groBS3g" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:2n6lsTIwfRq" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3PJ9groBRQM" role="1ZfhK$">
          <node concept="1Z2H0r" id="3PJ9groBRNf" role="mwGJk">
            <node concept="1YBJjd" id="3PJ9groBRNC" role="1Z2MuG">
              <ref role="1YBMHb" node="3PJ9groBR9P" resolve="arg" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3PJ9groBR9P" role="1YuTPh">
      <property role="TrG5h" value="arg" />
      <ref role="1YaFvo" to="tpf8:3PJ9groyE0C" resolve="TemplateArgumentVariableRefExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="7ITVRipDeOL">
    <property role="TrG5h" value="typeof_ExportLabelParameter_outputNode" />
    <property role="3GE5qa" value="crossmodel" />
    <node concept="3clFbS" id="7ITVRipDi09" role="18ibNy">
      <node concept="3cpWs8" id="7ITVRipDjuj" role="3cqZAp">
        <node concept="3cpWsn" id="7ITVRipDjum" role="3cpWs9">
          <property role="TrG5h" value="label" />
          <node concept="3Tqbb2" id="7ITVRipDjuh" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:rrptlDYrFa" resolve="ExportLabel" />
          </node>
          <node concept="2OqwBi" id="7ITVRipDjz3" role="33vP2m">
            <node concept="1YBJjd" id="7ITVRipDjv9" role="2Oq$k0">
              <ref role="1YBMHb" node="7ITVRipDi0b" resolve="outputNodeParameter" />
            </node>
            <node concept="2Xjw5R" id="7ITVRipDtYW" role="2OqNvi">
              <node concept="1xMEDy" id="7ITVRipDtYY" role="1xVPHs">
                <node concept="chp4Y" id="7ITVRipDtZT" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:rrptlDYrFa" resolve="ExportLabel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="7ITVRipDu5_" role="3cqZAp">
        <node concept="mw_s8" id="7ITVRipDu7s" role="1ZfhKB">
          <node concept="2c44tf" id="7ITVRipDu7o" role="mwGJk">
            <node concept="3Tqbb2" id="7ITVRipDu85" role="2c44tc">
              <node concept="2c44tb" id="7ITVRipDu8W" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="7ITVRipDuc9" role="2c44t1">
                  <node concept="37vLTw" id="7ITVRipDua0" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ITVRipDjum" resolve="label" />
                  </node>
                  <node concept="3TrEf2" id="1yjqjC7KD6t" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:1yjqjC7KnP6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7ITVRipDu5C" role="1ZfhK$">
          <node concept="1Z2H0r" id="7ITVRipDu1N" role="mwGJk">
            <node concept="1YBJjd" id="7ITVRipDu3c" role="1Z2MuG">
              <ref role="1YBMHb" node="7ITVRipDi0b" resolve="outputNodeParameter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7ITVRipDi0b" role="1YuTPh">
      <property role="TrG5h" value="outputNodeParameter" />
      <ref role="1YaFvo" to="tpf8:6mBZfICXe_$" resolve="ExportLabelParameter_outputNode" />
    </node>
  </node>
  <node concept="1YbPZF" id="2aNIkj9NbMl">
    <property role="TrG5h" value="typeof_ExportLabelParameter_inputNode" />
    <property role="3GE5qa" value="crossmodel" />
    <node concept="3clFbS" id="2aNIkj9NbRP" role="18ibNy">
      <node concept="3cpWs8" id="2aNIkj9Nciz" role="3cqZAp">
        <node concept="3cpWsn" id="2aNIkj9NciA" role="3cpWs9">
          <property role="TrG5h" value="label" />
          <node concept="3Tqbb2" id="2aNIkj9Nciy" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:rrptlDYrFa" resolve="ExportLabel" />
          </node>
          <node concept="2OqwBi" id="2aNIkj9Ncn4" role="33vP2m">
            <node concept="1YBJjd" id="2aNIkj9Ncja" role="2Oq$k0">
              <ref role="1YBMHb" node="2aNIkj9NbRR" resolve="inputNodeParameter" />
            </node>
            <node concept="2Xjw5R" id="2aNIkj9Nmx$" role="2OqNvi">
              <node concept="1xMEDy" id="2aNIkj9NmxA" role="1xVPHs">
                <node concept="chp4Y" id="2aNIkj9Nmyx" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:rrptlDYrFa" resolve="ExportLabel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="2aNIkj9NmCM" role="3cqZAp">
        <node concept="mw_s8" id="2aNIkj9NmCP" role="1ZfhK$">
          <node concept="1Z2H0r" id="2aNIkj9Nm$r" role="mwGJk">
            <node concept="1YBJjd" id="2aNIkj9Nm_O" role="1Z2MuG">
              <ref role="1YBMHb" node="2aNIkj9NbRR" resolve="inputNodeParameter" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2aNIkj9NoTr" role="1ZfhKB">
          <node concept="2c44tf" id="2aNIkj9NoTn" role="mwGJk">
            <node concept="3Tqbb2" id="2aNIkj9Npg4" role="2c44tc">
              <node concept="2c44tb" id="2aNIkj9NpXJ" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="2aNIkj9Nq25" role="2c44t1">
                  <node concept="37vLTw" id="2aNIkj9NpYF" role="2Oq$k0">
                    <ref role="3cqZAo" node="2aNIkj9NciA" resolve="label" />
                  </node>
                  <node concept="3TrEf2" id="1yjqjC7KCnv" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:1yjqjC7KnP5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2aNIkj9NbRR" role="1YuTPh">
      <property role="TrG5h" value="inputNodeParameter" />
      <ref role="1YaFvo" to="tpf8:6mBZfICX1Ju" resolve="ExportLabelParameter_inputNode" />
    </node>
  </node>
  <node concept="1YbPZF" id="7ITVRipDRNq">
    <property role="TrG5h" value="typeof_ExportLabelParameter_keeper" />
    <property role="3GE5qa" value="crossmodel" />
    <node concept="3clFbS" id="7ITVRipDRNr" role="18ibNy">
      <node concept="3cpWs8" id="7ITVRipDRNX" role="3cqZAp">
        <node concept="3cpWsn" id="7ITVRipDRO0" role="3cpWs9">
          <property role="TrG5h" value="label" />
          <node concept="3Tqbb2" id="7ITVRipDRNW" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:rrptlDYrFa" resolve="ExportLabel" />
          </node>
          <node concept="2OqwBi" id="7ITVRipDRSu" role="33vP2m">
            <node concept="1YBJjd" id="7ITVRipDRO$" role="2Oq$k0">
              <ref role="1YBMHb" node="7ITVRipDRNt" resolve="keeperParameter" />
            </node>
            <node concept="2Xjw5R" id="7ITVRipDSjY" role="2OqNvi">
              <node concept="1xMEDy" id="7ITVRipDSk0" role="1xVPHs">
                <node concept="chp4Y" id="7ITVRipDSkV" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:rrptlDYrFa" resolve="ExportLabel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="7ITVRipDSqP" role="3cqZAp">
        <node concept="mw_s8" id="7ITVRipDSqS" role="1ZfhK$">
          <node concept="1Z2H0r" id="7ITVRipDSmP" role="mwGJk">
            <node concept="1YBJjd" id="7ITVRipDSoe" role="1Z2MuG">
              <ref role="1YBMHb" node="7ITVRipDRNt" resolve="keeperParameter" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7ITVRipDV21" role="1ZfhKB">
          <node concept="2c44tf" id="7ITVRipDV1X" role="mwGJk">
            <node concept="3Tqbb2" id="7ITVRipDV2E" role="2c44tc">
              <node concept="2c44tb" id="7ITVRipDV3x" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="7ITVRipDV6I" role="2c44t1">
                  <node concept="37vLTw" id="7ITVRipDV4_" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ITVRipDRO0" resolve="label" />
                  </node>
                  <node concept="3TrEf2" id="1yjqjC7KCIY" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpf8:rrptlDYXfu" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7ITVRipDRNt" role="1YuTPh">
      <property role="TrG5h" value="keeperParameter" />
      <ref role="1YaFvo" to="tpf8:7ITVRipDRN2" resolve="ExportLabelParameter_keeper" />
    </node>
  </node>
  <node concept="18kY7G" id="6j1nfBdBOc7">
    <property role="18ip37" value="false" />
    <property role="TrG5h" value="check_IncludeMacro" />
    <node concept="3clFbS" id="6j1nfBdBOca" role="18ibNy">
      <node concept="3cpWs8" id="6j1nfBdBOcb" role="3cqZAp">
        <node concept="3cpWsn" id="6j1nfBdBOcc" role="3cpWs9">
          <property role="TrG5h" value="containingTemplate" />
          <node concept="3Tqbb2" id="6j1nfBdBOcd" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
          </node>
          <node concept="2OqwBi" id="6j1nfBdBOce" role="33vP2m">
            <node concept="1YBJjd" id="6j1nfBdBOcf" role="2Oq$k0">
              <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
            </node>
            <node concept="2Xjw5R" id="6j1nfBdBOcg" role="2OqNvi">
              <node concept="1xMEDy" id="6j1nfBdBOch" role="1xVPHs">
                <node concept="chp4Y" id="6j1nfBdBOci" role="ri$Ld">
                  <ref role="cht4Q" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6j1nfBdBOcj" role="3cqZAp">
        <node concept="3cpWsn" id="6j1nfBdBOck" role="3cpWs9">
          <property role="TrG5h" value="includedTemplate" />
          <node concept="3Tqbb2" id="6j1nfBdBOcl" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
          </node>
          <node concept="2OqwBi" id="6j1nfBdBOcm" role="33vP2m">
            <node concept="1YBJjd" id="6j1nfBdBOcn" role="2Oq$k0">
              <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
            </node>
            <node concept="3TrEf2" id="6j1nfBdBOco" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:hoxH3iB" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6j1nfBdBOcp" role="3cqZAp" />
      <node concept="3clFbJ" id="6j1nfBdBOcq" role="3cqZAp">
        <node concept="3clFbS" id="6j1nfBdBOcr" role="3clFbx">
          <node concept="2MkqsV" id="6j1nfBdBOcs" role="3cqZAp">
            <node concept="Xl_RD" id="6j1nfBdBOct" role="2MkJ7o">
              <property role="Xl_RC" value="No template" />
            </node>
            <node concept="1YBJjd" id="6j1nfBdBOcu" role="2OEOjV">
              <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="6j1nfBdBOcv" role="3clFbw">
          <node concept="37vLTw" id="6j1nfBdBOcw" role="2Oq$k0">
            <ref role="3cqZAo" node="6j1nfBdBOck" resolve="includedTemplate" />
          </node>
          <node concept="3w_OXm" id="6j1nfBdBOcx" role="2OqNvi" />
        </node>
        <node concept="3eNFk2" id="6j1nfBdBOcy" role="3eNLev">
          <node concept="2OqwBi" id="6j1nfBdBOcz" role="3eO9$A">
            <node concept="37vLTw" id="6j1nfBdBOc$" role="2Oq$k0">
              <ref role="3cqZAo" node="6j1nfBdBOcc" resolve="containingTemplate" />
            </node>
            <node concept="3w_OXm" id="6j1nfBdBOc_" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6j1nfBdBOcA" role="3eOfB_">
            <node concept="3clFbJ" id="6j1nfBdBOcB" role="3cqZAp">
              <node concept="3fqX7Q" id="6j1nfBdBOcC" role="3clFbw">
                <node concept="2OqwBi" id="6j1nfBdBOcD" role="3fr31v">
                  <node concept="2OqwBi" id="6j1nfBdBOcE" role="2Oq$k0">
                    <node concept="37vLTw" id="6j1nfBdBOcF" role="2Oq$k0">
                      <ref role="3cqZAo" node="6j1nfBdBOck" resolve="includedTemplate" />
                    </node>
                    <node concept="3Tsc0h" id="6j1nfBdBOcG" role="2OqNvi">
                      <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="6j1nfBdBOcH" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbS" id="6j1nfBdBOcI" role="3clFbx">
                <node concept="2MkqsV" id="6j1nfBdBOcJ" role="3cqZAp">
                  <node concept="Xl_RD" id="6j1nfBdBOcK" role="2MkJ7o">
                    <property role="Xl_RC" value="Cannot include template with arguments" />
                  </node>
                  <node concept="1YBJjd" id="6j1nfBdBOcL" role="2OEOjV">
                    <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="6j1nfBdBOcM" role="9aQIa">
          <node concept="3clFbS" id="6j1nfBdBOcN" role="9aQI4">
            <node concept="3cpWs8" id="6j1nfBdBOcO" role="3cqZAp">
              <node concept="3cpWsn" id="6j1nfBdBOcP" role="3cpWs9">
                <property role="TrG5h" value="available" />
                <node concept="3rvAFt" id="6j1nfBdBOcQ" role="1tU5fm">
                  <node concept="17QB3L" id="6j1nfBdBOcR" role="3rvQeY" />
                  <node concept="3Tqbb2" id="6j1nfBdBOcS" role="3rvSg0">
                    <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6j1nfBdBOcT" role="33vP2m">
                  <node concept="3rGOSV" id="6j1nfBdBOcU" role="2ShVmc">
                    <node concept="17QB3L" id="6j1nfBdBOcV" role="3rHrn6" />
                    <node concept="3Tqbb2" id="6j1nfBdBOcW" role="3rHtpV">
                      <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6j1nfBdBOcX" role="3cqZAp">
              <node concept="2GrKxI" id="6j1nfBdBOcY" role="2Gsz3X">
                <property role="TrG5h" value="param" />
              </node>
              <node concept="2OqwBi" id="6j1nfBdBOcZ" role="2GsD0m">
                <node concept="37vLTw" id="6j1nfBdBOd0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6j1nfBdBOcc" resolve="containingTemplate" />
                </node>
                <node concept="3Tsc0h" id="6j1nfBdBOd1" role="2OqNvi">
                  <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" />
                </node>
              </node>
              <node concept="3clFbS" id="6j1nfBdBOd2" role="2LFqv$">
                <node concept="3clFbF" id="6j1nfBdBOd3" role="3cqZAp">
                  <node concept="37vLTI" id="6j1nfBdBOd4" role="3clFbG">
                    <node concept="3EllGN" id="6j1nfBdBOd5" role="37vLTJ">
                      <node concept="2OqwBi" id="6j1nfBdBOd6" role="3ElVtu">
                        <node concept="2GrUjf" id="6j1nfBdBOd7" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6j1nfBdBOcY" resolve="param" />
                        </node>
                        <node concept="3TrcHB" id="6j1nfBdBOd8" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6j1nfBdBOd9" role="3ElQJh">
                        <ref role="3cqZAo" node="6j1nfBdBOcP" resolve="available" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6j1nfBdBOda" role="37vLTx">
                      <node concept="2GrUjf" id="6j1nfBdBOdb" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6j1nfBdBOcY" resolve="param" />
                      </node>
                      <node concept="3TrEf2" id="6j1nfBdBOdc" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpf8:1$dcvTE2mFf" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6j1nfBdBOdd" role="3cqZAp">
              <node concept="2GrKxI" id="6j1nfBdBOde" role="2Gsz3X">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2OqwBi" id="6j1nfBdBOdf" role="2GsD0m">
                <node concept="37vLTw" id="6j1nfBdBOdg" role="2Oq$k0">
                  <ref role="3cqZAo" node="6j1nfBdBOck" resolve="includedTemplate" />
                </node>
                <node concept="3Tsc0h" id="6j1nfBdBOdh" role="2OqNvi">
                  <ref role="3TtcxE" to="tpf8:QzR6ThdYDm" />
                </node>
              </node>
              <node concept="3clFbS" id="6j1nfBdBOdi" role="2LFqv$">
                <node concept="3clFbJ" id="6j1nfBdBOdj" role="3cqZAp">
                  <node concept="3clFbS" id="6j1nfBdBOdk" role="3clFbx">
                    <node concept="2MkqsV" id="6j1nfBdBOdl" role="3cqZAp">
                      <node concept="3cpWs3" id="6j1nfBdBOdm" role="2MkJ7o">
                        <node concept="3cpWs3" id="6j1nfBdBOdn" role="3uHU7B">
                          <node concept="Xl_RD" id="6j1nfBdBOdo" role="3uHU7B">
                            <property role="Xl_RC" value="no `" />
                          </node>
                          <node concept="2OqwBi" id="6j1nfBdBOdp" role="3uHU7w">
                            <node concept="2GrUjf" id="6j1nfBdBOdq" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6j1nfBdBOde" resolve="p" />
                            </node>
                            <node concept="3TrcHB" id="6j1nfBdBOdr" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6j1nfBdBOds" role="3uHU7w">
                          <property role="Xl_RC" value="' parameter" />
                        </node>
                      </node>
                      <node concept="1YBJjd" id="6j1nfBdBOdt" role="2OEOjV">
                        <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6j1nfBdBOdu" role="3clFbw">
                    <node concept="2OqwBi" id="6j1nfBdBOdv" role="3fr31v">
                      <node concept="37vLTw" id="6j1nfBdBOdw" role="2Oq$k0">
                        <ref role="3cqZAo" node="6j1nfBdBOcP" resolve="available" />
                      </node>
                      <node concept="2Nt0df" id="6j1nfBdBOdx" role="2OqNvi">
                        <node concept="2OqwBi" id="6j1nfBdBOdy" role="38cxEo">
                          <node concept="2GrUjf" id="6j1nfBdBOdz" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6j1nfBdBOde" resolve="p" />
                          </node>
                          <node concept="3TrcHB" id="6j1nfBdBOd$" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6j1nfBdBOd_" role="3eNLev">
                    <node concept="3fqX7Q" id="6j1nfBdBOdA" role="3eO9$A">
                      <node concept="3JuTUA" id="6j1nfBdBOdB" role="3fr31v">
                        <node concept="3EllGN" id="6j1nfBdBOdC" role="3JuY14">
                          <node concept="2OqwBi" id="6j1nfBdBOdD" role="3ElVtu">
                            <node concept="2GrUjf" id="6j1nfBdBOdE" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6j1nfBdBOde" resolve="p" />
                            </node>
                            <node concept="3TrcHB" id="6j1nfBdBOdF" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6j1nfBdBOdG" role="3ElQJh">
                            <ref role="3cqZAo" node="6j1nfBdBOcP" resolve="available" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6j1nfBdBOdH" role="3JuZjQ">
                          <node concept="2GrUjf" id="6j1nfBdBOdI" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6j1nfBdBOde" resolve="p" />
                          </node>
                          <node concept="3TrEf2" id="6j1nfBdBOdJ" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:1$dcvTE2mFf" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6j1nfBdBOdK" role="3eOfB_">
                      <node concept="2MkqsV" id="6j1nfBdBOdL" role="3cqZAp">
                        <node concept="3cpWs3" id="6j1nfBdBOdM" role="2MkJ7o">
                          <node concept="3cpWs3" id="6j1nfBdBOdN" role="3uHU7B">
                            <node concept="Xl_RD" id="6j1nfBdBOdO" role="3uHU7B">
                              <property role="Xl_RC" value="bad type of `" />
                            </node>
                            <node concept="2OqwBi" id="6j1nfBdBOdP" role="3uHU7w">
                              <node concept="2GrUjf" id="6j1nfBdBOdQ" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6j1nfBdBOde" resolve="p" />
                              </node>
                              <node concept="3TrcHB" id="6j1nfBdBOdR" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6j1nfBdBOdS" role="3uHU7w">
                            <property role="Xl_RC" value="' parameter" />
                          </node>
                        </node>
                        <node concept="1YBJjd" id="6j1nfBdBOdT" role="2OEOjV">
                          <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
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
      <node concept="3clFbJ" id="3lJIBUNck$z" role="3cqZAp">
        <node concept="3clFbS" id="3lJIBUNck$_" role="3clFbx">
          <node concept="3cpWs8" id="3lJIBUNcmXE" role="3cqZAp">
            <node concept="3cpWsn" id="3lJIBUNcmXF" role="3cpWs9">
              <property role="TrG5h" value="inputNodeConcept" />
              <node concept="3THzug" id="3lJIBUNcmXG" role="1tU5fm" />
              <node concept="2OqwBi" id="3lJIBUNcmXH" role="33vP2m">
                <node concept="1YBJjd" id="3lJIBUNcmXI" role="2Oq$k0">
                  <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
                </node>
                <node concept="2qgKlT" id="3lJIBUNcmXJ" role="2OqNvi">
                  <ref role="37wK5l" to="tpfh:hEwIosJ" resolve="getInputNodeTypeInsideOfMacro" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3lJIBUNcmXK" role="3cqZAp">
            <node concept="3clFbS" id="3lJIBUNcmXL" role="3clFbx">
              <node concept="3clFbJ" id="3lJIBUNcmXM" role="3cqZAp">
                <node concept="3clFbS" id="3lJIBUNcmXN" role="3clFbx">
                  <node concept="3cpWs8" id="3lJIBUNcmXO" role="3cqZAp">
                    <node concept="3cpWsn" id="3lJIBUNcmXP" role="3cpWs9">
                      <property role="TrG5h" value="msg" />
                      <node concept="17QB3L" id="3lJIBUNcmXQ" role="1tU5fm" />
                      <node concept="2YIFZM" id="3lJIBUNcmXR" role="33vP2m">
                        <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="Xl_RD" id="3lJIBUNcmXS" role="37wK5m">
                          <property role="Xl_RC" value="Input node (%s) is not an instance of template's expected concept (%s)" />
                        </node>
                        <node concept="2OqwBi" id="3lJIBUNcmXT" role="37wK5m">
                          <node concept="37vLTw" id="3lJIBUNcmXU" role="2Oq$k0">
                            <ref role="3cqZAo" node="3lJIBUNcmXF" resolve="inputNodeConcept" />
                          </node>
                          <node concept="3TrcHB" id="3lJIBUNcmXV" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3lJIBUNcmXW" role="37wK5m">
                          <node concept="2OqwBi" id="3lJIBUNcmXX" role="2Oq$k0">
                            <node concept="37vLTw" id="3lJIBUNcne_" role="2Oq$k0">
                              <ref role="3cqZAo" node="6j1nfBdBOck" resolve="includedTemplate" />
                            </node>
                            <node concept="3TrEf2" id="3lJIBUNcmXZ" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3lJIBUNcmY0" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2MkqsV" id="3lJIBUNcmY1" role="3cqZAp">
                    <node concept="1YBJjd" id="3lJIBUNcmY2" role="2OEOjV">
                      <ref role="1YBMHb" node="6j1nfBdBOdU" resolve="macro" />
                    </node>
                    <node concept="37vLTw" id="3lJIBUNcmY3" role="2MkJ7o">
                      <ref role="3cqZAo" node="3lJIBUNcmXP" resolve="msg" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3lJIBUNcmY4" role="3clFbw">
                  <node concept="2OqwBi" id="3lJIBUNcmY5" role="3fr31v">
                    <node concept="2YIFZM" id="3lJIBUNcmY6" role="2Oq$k0">
                      <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                      <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                      <node concept="37vLTw" id="3lJIBUNcmY7" role="37wK5m">
                        <ref role="3cqZAo" node="3lJIBUNcmXF" resolve="inputNodeConcept" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3lJIBUNcmY8" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept):boolean" resolve="isSubConceptOf" />
                      <node concept="2YIFZM" id="3lJIBUNcmY9" role="37wK5m">
                        <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                        <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                        <node concept="2OqwBi" id="3lJIBUNcmYa" role="37wK5m">
                          <node concept="3TrEf2" id="3lJIBUNcmYc" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                          </node>
                          <node concept="37vLTw" id="3lJIBUNcncu" role="2Oq$k0">
                            <ref role="3cqZAo" node="6j1nfBdBOck" resolve="includedTemplate" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3lJIBUNcmYe" role="3clFbw">
              <node concept="37vLTw" id="3lJIBUNcmYf" role="2Oq$k0">
                <ref role="3cqZAo" node="3lJIBUNcmXF" resolve="inputNodeConcept" />
              </node>
              <node concept="3x8VRR" id="3lJIBUNcmYg" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="3lJIBUNclaI" role="3clFbw">
          <node concept="2OqwBi" id="3lJIBUNclJg" role="3uHU7w">
            <node concept="2OqwBi" id="3lJIBUNclf_" role="2Oq$k0">
              <node concept="37vLTw" id="3lJIBUNclcf" role="2Oq$k0">
                <ref role="3cqZAo" node="6j1nfBdBOck" resolve="includedTemplate" />
              </node>
              <node concept="3TrEf2" id="3lJIBUNcltS" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:h03gUQu" />
              </node>
            </node>
            <node concept="3x8VRR" id="3lJIBUNcmbg" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="3lJIBUNckDG" role="3uHU7B">
            <node concept="37vLTw" id="3lJIBUNckAx" role="2Oq$k0">
              <ref role="3cqZAo" node="6j1nfBdBOck" resolve="includedTemplate" />
            </node>
            <node concept="3x8VRR" id="3lJIBUNcl3A" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6j1nfBdBOdU" role="1YuTPh">
      <property role="TrG5h" value="macro" />
      <ref role="1YaFvo" to="tpf8:hoxERsl" resolve="IncludeMacro" />
    </node>
  </node>
  <node concept="18kY7G" id="6j1nfBdBOIN">
    <property role="18ip37" value="false" />
    <property role="TrG5h" value="check_TemplateCallMacro" />
    <node concept="3clFbS" id="6j1nfBdBOIQ" role="18ibNy">
      <node concept="3cpWs8" id="6j1nfBdBOIR" role="3cqZAp">
        <node concept="3cpWsn" id="6j1nfBdBOIS" role="3cpWs9">
          <property role="TrG5h" value="template" />
          <node concept="3Tqbb2" id="6j1nfBdBOIT" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
          </node>
          <node concept="2OqwBi" id="6j1nfBdBOIU" role="33vP2m">
            <node concept="1YBJjd" id="6j1nfBdBOIV" role="2Oq$k0">
              <ref role="1YBMHb" node="6j1nfBdBOJ6" resolve="macro" />
            </node>
            <node concept="2qgKlT" id="6j1nfBdBOIW" role="2OqNvi">
              <ref role="37wK5l" to="tpfh:QzR6ThtTpS" resolve="getTemplate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6j1nfBdBOIX" role="3cqZAp" />
      <node concept="3clFbJ" id="6j1nfBdBOIY" role="3cqZAp">
        <node concept="3clFbS" id="6j1nfBdBOIZ" role="3clFbx">
          <node concept="2MkqsV" id="6j1nfBdBOJ0" role="3cqZAp">
            <node concept="Xl_RD" id="6j1nfBdBOJ1" role="2MkJ7o">
              <property role="Xl_RC" value="No template" />
            </node>
            <node concept="1YBJjd" id="6j1nfBdBOJ2" role="2OEOjV">
              <ref role="1YBMHb" node="6j1nfBdBOJ6" resolve="macro" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="6j1nfBdBOJ3" role="3clFbw">
          <node concept="37vLTw" id="6j1nfBdBOJ4" role="2Oq$k0">
            <ref role="3cqZAo" node="6j1nfBdBOIS" resolve="template" />
          </node>
          <node concept="3w_OXm" id="6j1nfBdBOJ5" role="2OqNvi" />
        </node>
        <node concept="9aQIb" id="6j1nfBdBPCC" role="9aQIa">
          <node concept="3clFbS" id="6j1nfBdBPCD" role="9aQI4">
            <node concept="3cpWs8" id="6j1nfBdCeY8" role="3cqZAp">
              <node concept="3cpWsn" id="6j1nfBdCeY9" role="3cpWs9">
                <property role="TrG5h" value="inputNodeConcept" />
                <node concept="3THzug" id="6j1nfBdCeY7" role="1tU5fm" />
                <node concept="2OqwBi" id="6j1nfBdCeYa" role="33vP2m">
                  <node concept="1YBJjd" id="6j1nfBdCeYb" role="2Oq$k0">
                    <ref role="1YBMHb" node="6j1nfBdBOJ6" resolve="macro" />
                  </node>
                  <node concept="2qgKlT" id="6j1nfBdCeYc" role="2OqNvi">
                    <ref role="37wK5l" to="tpfh:hEwIosJ" resolve="getInputNodeTypeInsideOfMacro" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6j1nfBdC4XV" role="3cqZAp">
              <node concept="3clFbS" id="6j1nfBdC4XX" role="3clFbx">
                <node concept="3clFbJ" id="6j1nfBdCfi1" role="3cqZAp">
                  <node concept="3clFbS" id="6j1nfBdCfi3" role="3clFbx">
                    <node concept="3cpWs8" id="6j1nfBdCgWd" role="3cqZAp">
                      <node concept="3cpWsn" id="6j1nfBdCgWe" role="3cpWs9">
                        <property role="TrG5h" value="msg" />
                        <node concept="17QB3L" id="6j1nfBdCgWc" role="1tU5fm" />
                        <node concept="2YIFZM" id="6j1nfBdCh4T" role="33vP2m">
                          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="Xl_RD" id="6j1nfBdCgWf" role="37wK5m">
                            <property role="Xl_RC" value="Input node (%s) is not an instance of template's expected concept (%s)" />
                          </node>
                          <node concept="2OqwBi" id="6j1nfBdChmr" role="37wK5m">
                            <node concept="37vLTw" id="6j1nfBdChhX" role="2Oq$k0">
                              <ref role="3cqZAo" node="6j1nfBdCeY9" resolve="inputNodeConcept" />
                            </node>
                            <node concept="3TrcHB" id="6j1nfBdChsa" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6j1nfBdCj3M" role="37wK5m">
                            <node concept="2OqwBi" id="6j1nfBdCinc" role="2Oq$k0">
                              <node concept="37vLTw" id="6j1nfBdCiin" role="2Oq$k0">
                                <ref role="3cqZAo" node="6j1nfBdBOIS" resolve="template" />
                              </node>
                              <node concept="3TrEf2" id="6j1nfBdCiMI" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="6j1nfBdCjjd" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2MkqsV" id="6j1nfBdCgDT" role="3cqZAp">
                      <node concept="1YBJjd" id="6j1nfBdCgKk" role="2OEOjV">
                        <ref role="1YBMHb" node="6j1nfBdBOJ6" resolve="macro" />
                      </node>
                      <node concept="37vLTw" id="6j1nfBdCgWg" role="2MkJ7o">
                        <ref role="3cqZAo" node="6j1nfBdCgWe" resolve="msg" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6j1nfBdCgBE" role="3clFbw">
                    <node concept="2OqwBi" id="6j1nfBdCgBG" role="3fr31v">
                      <node concept="2YIFZM" id="6j1nfBdCgBH" role="2Oq$k0">
                        <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                        <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                        <node concept="37vLTw" id="6j1nfBdCgBI" role="37wK5m">
                          <ref role="3cqZAo" node="6j1nfBdCeY9" resolve="inputNodeConcept" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6j1nfBdCgBJ" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept):boolean" resolve="isSubConceptOf" />
                        <node concept="2YIFZM" id="6j1nfBdCgBK" role="37wK5m">
                          <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                          <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                          <node concept="2OqwBi" id="6j1nfBdCgBL" role="37wK5m">
                            <node concept="37vLTw" id="6j1nfBdCgBM" role="2Oq$k0">
                              <ref role="3cqZAo" node="6j1nfBdBOIS" resolve="template" />
                            </node>
                            <node concept="3TrEf2" id="6j1nfBdCgBN" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6j1nfBdCftK" role="3clFbw">
                <node concept="2OqwBi" id="6j1nfBdCfD3" role="3uHU7w">
                  <node concept="37vLTw" id="6j1nfBdCfyw" role="2Oq$k0">
                    <ref role="3cqZAo" node="6j1nfBdCeY9" resolve="inputNodeConcept" />
                  </node>
                  <node concept="3x8VRR" id="6j1nfBdCfPV" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="6j1nfBdC5Oj" role="3uHU7B">
                  <node concept="2OqwBi" id="6j1nfBdC54c" role="2Oq$k0">
                    <node concept="37vLTw" id="6j1nfBdC511" role="2Oq$k0">
                      <ref role="3cqZAo" node="6j1nfBdBOIS" resolve="template" />
                    </node>
                    <node concept="3TrEf2" id="6j1nfBdC5hk" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="6j1nfBdC6ga" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6j1nfBdBOJ6" role="1YuTPh">
      <property role="TrG5h" value="macro" />
      <ref role="1YaFvo" to="tpf8:1jRYachIf5f" resolve="TemplateCallMacro" />
    </node>
  </node>
  <node concept="18kY7G" id="6j1nfBdBP1h">
    <property role="18ip37" value="false" />
    <property role="TrG5h" value="check_Root_MappingRule" />
    <node concept="3clFbS" id="6j1nfBdBP1k" role="18ibNy">
      <node concept="3cpWs8" id="6j1nfBdBP1l" role="3cqZAp">
        <node concept="3cpWsn" id="6j1nfBdBP1m" role="3cpWs9">
          <property role="TrG5h" value="template" />
          <node concept="3Tqbb2" id="6j1nfBdBP1n" role="1tU5fm">
            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
          <node concept="2OqwBi" id="6j1nfBdBP1o" role="33vP2m">
            <node concept="1YBJjd" id="6j1nfBdBP1p" role="2Oq$k0">
              <ref role="1YBMHb" node="6j1nfBdBP2i" resolve="rule" />
            </node>
            <node concept="3TrEf2" id="6j1nfBdBP1q" role="2OqNvi">
              <ref role="3Tt5mk" to="tpf8:gZlhOrt" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6j1nfBdBP1r" role="3cqZAp">
        <node concept="3clFbS" id="6j1nfBdBP1s" role="3clFbx">
          <node concept="3cpWs8" id="6j1nfBdBP1t" role="3cqZAp">
            <node concept="3cpWsn" id="6j1nfBdBP1u" role="3cpWs9">
              <property role="TrG5h" value="attrib" />
              <node concept="3Tqbb2" id="6j1nfBdBP1v" role="1tU5fm" />
              <node concept="2OqwBi" id="6j1nfBdBP1w" role="33vP2m">
                <node concept="37vLTw" id="6j1nfBdBP1x" role="2Oq$k0">
                  <ref role="3cqZAo" node="6j1nfBdBP1m" resolve="template" />
                </node>
                <node concept="3CFZ6_" id="6j1nfBdBP1y" role="2OqNvi">
                  <node concept="3CFYIy" id="6j1nfBdBP1z" role="3CFYIz">
                    <ref role="3CFYIx" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6j1nfBdBP1$" role="3cqZAp">
            <node concept="3clFbS" id="6j1nfBdBP1_" role="3clFbx">
              <node concept="3cpWs8" id="6j1nfBdBP1A" role="3cqZAp">
                <node concept="3cpWsn" id="6j1nfBdBP1B" role="3cpWs9">
                  <property role="TrG5h" value="templateApplicableConcept" />
                  <node concept="3Tqbb2" id="6j1nfBdBP1C" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="6j1nfBdBP1D" role="33vP2m">
                    <node concept="1PxgMI" id="6j1nfBdBP1E" role="2Oq$k0">
                      <ref role="1PxNhF" to="tpf8:h0n94ik" resolve="RootTemplateAnnotation" />
                      <node concept="37vLTw" id="6j1nfBdBP1F" role="1PxMeX">
                        <ref role="3cqZAo" node="6j1nfBdBP1u" resolve="attrib" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6j1nfBdBP1G" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:h0n9lNf" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6j1nfBdBP1H" role="3cqZAp">
                <node concept="3cpWsn" id="6j1nfBdBP1I" role="3cpWs9">
                  <property role="TrG5h" value="ruleApplicableConcept" />
                  <node concept="3Tqbb2" id="6j1nfBdBP1J" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="6j1nfBdBP1K" role="33vP2m">
                    <node concept="1YBJjd" id="6j1nfBdBP1L" role="2Oq$k0">
                      <ref role="1YBMHb" node="6j1nfBdBP2i" resolve="rule" />
                    </node>
                    <node concept="3TrEf2" id="6j1nfBdBP1M" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:gZ0HIsK" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6j1nfBdBP1N" role="3cqZAp">
                <node concept="3clFbS" id="6j1nfBdBP1O" role="3clFbx">
                  <node concept="3clFbJ" id="6j1nfBdBP1P" role="3cqZAp">
                    <node concept="3clFbS" id="6j1nfBdBP1Q" role="3clFbx">
                      <node concept="2MkqsV" id="6j1nfBdBP1R" role="3cqZAp">
                        <node concept="3cpWs3" id="6j1nfBdBP1S" role="2MkJ7o">
                          <node concept="3cpWs3" id="6j1nfBdBP1T" role="3uHU7B">
                            <node concept="Xl_RD" id="6j1nfBdBP1U" role="3uHU7B">
                              <property role="Xl_RC" value="template is not applicable to the rule concept '" />
                            </node>
                            <node concept="2OqwBi" id="6j1nfBdBP1V" role="3uHU7w">
                              <node concept="37vLTw" id="6j1nfBdBP1W" role="2Oq$k0">
                                <ref role="3cqZAo" node="6j1nfBdBP1I" resolve="ruleApplicableConcept" />
                              </node>
                              <node concept="3TrcHB" id="6j1nfBdBP1X" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6j1nfBdBP1Y" role="3uHU7w">
                            <property role="Xl_RC" value="'" />
                          </node>
                        </node>
                        <node concept="1YBJjd" id="6j1nfBdBP1Z" role="2OEOjV">
                          <ref role="1YBMHb" node="6j1nfBdBP2i" resolve="rule" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="6j1nfBdBP20" role="3clFbw">
                      <node concept="2OqwBi" id="6j1nfBdBP21" role="3fr31v">
                        <node concept="37vLTw" id="6j1nfBdBP22" role="2Oq$k0">
                          <ref role="3cqZAo" node="6j1nfBdBP1I" resolve="ruleApplicableConcept" />
                        </node>
                        <node concept="2qgKlT" id="6j1nfBdBP23" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                          <node concept="37vLTw" id="6j1nfBdBP24" role="37wK5m">
                            <ref role="3cqZAo" node="6j1nfBdBP1B" resolve="templateApplicableConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="6j1nfBdBP25" role="3clFbw">
                  <node concept="2OqwBi" id="6j1nfBdBP26" role="3uHU7w">
                    <node concept="37vLTw" id="6j1nfBdBP27" role="2Oq$k0">
                      <ref role="3cqZAo" node="6j1nfBdBP1B" resolve="templateApplicableConcept" />
                    </node>
                    <node concept="3x8VRR" id="6j1nfBdBP28" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="6j1nfBdBP29" role="3uHU7B">
                    <node concept="37vLTw" id="6j1nfBdBP2a" role="2Oq$k0">
                      <ref role="3cqZAo" node="6j1nfBdBP1I" resolve="ruleApplicableConcept" />
                    </node>
                    <node concept="3x8VRR" id="6j1nfBdBP2b" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6j1nfBdBP2c" role="3clFbw">
              <node concept="37vLTw" id="6j1nfBdBP2d" role="2Oq$k0">
                <ref role="3cqZAo" node="6j1nfBdBP1u" resolve="attrib" />
              </node>
              <node concept="3x8VRR" id="6j1nfBdBP2e" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="6j1nfBdBP2f" role="3clFbw">
          <node concept="37vLTw" id="6j1nfBdBP2g" role="2Oq$k0">
            <ref role="3cqZAo" node="6j1nfBdBP1m" resolve="template" />
          </node>
          <node concept="3x8VRR" id="6j1nfBdBP2h" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6j1nfBdBP2i" role="1YuTPh">
      <property role="TrG5h" value="rule" />
      <ref role="1YaFvo" to="tpf8:gZlhOrr" resolve="Root_MappingRule" />
    </node>
  </node>
  <node concept="18kY7G" id="3lJIBUNcgGQ">
    <property role="TrG5h" value="check_WeaveMacro" />
    <property role="3GE5qa" value="macro" />
    <node concept="3clFbS" id="3lJIBUNcgGR" role="18ibNy">
      <node concept="3cpWs8" id="3lJIBUNcjU2" role="3cqZAp">
        <node concept="3cpWsn" id="3lJIBUNcjU3" role="3cpWs9">
          <property role="TrG5h" value="template" />
          <node concept="3Tqbb2" id="3lJIBUNcjTZ" role="1tU5fm">
            <ref role="ehGHo" to="tpf8:fT3MO7g" resolve="TemplateDeclaration" />
          </node>
          <node concept="2OqwBi" id="3lJIBUNcjU4" role="33vP2m">
            <node concept="2OqwBi" id="3lJIBUNcjU5" role="2Oq$k0">
              <node concept="1YBJjd" id="3lJIBUNcjU6" role="2Oq$k0">
                <ref role="1YBMHb" node="3lJIBUNcgGT" resolve="macro" />
              </node>
              <node concept="3TrEf2" id="3lJIBUNcjU7" role="2OqNvi">
                <ref role="3Tt5mk" to="tpf8:30c0HY8gA7H" />
              </node>
            </node>
            <node concept="2qgKlT" id="3lJIBUNcjU8" role="2OqNvi">
              <ref role="37wK5l" to="tpfh:QzR6ThtRo7" resolve="getTemplate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3lJIBUNcgRF" role="3cqZAp">
        <node concept="3clFbS" id="3lJIBUNcgRG" role="3clFbx">
          <node concept="2MkqsV" id="3lJIBUNck6$" role="3cqZAp">
            <node concept="1YBJjd" id="3lJIBUNck7g" role="2OEOjV">
              <ref role="1YBMHb" node="3lJIBUNcgGT" resolve="macro" />
            </node>
            <node concept="Xl_RD" id="3lJIBUNck6K" role="2MkJ7o">
              <property role="Xl_RC" value="No template" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3lJIBUNchvT" role="3clFbw">
          <node concept="37vLTw" id="3lJIBUNcjZu" role="2Oq$k0">
            <ref role="3cqZAo" node="3lJIBUNcjU3" resolve="template" />
          </node>
          <node concept="3w_OXm" id="3lJIBUNchXQ" role="2OqNvi" />
        </node>
        <node concept="9aQIb" id="3lJIBUNck5r" role="9aQIa">
          <node concept="3clFbS" id="3lJIBUNck5s" role="9aQI4">
            <node concept="3cpWs8" id="3lJIBUNck9k" role="3cqZAp">
              <node concept="3cpWsn" id="3lJIBUNck9l" role="3cpWs9">
                <property role="TrG5h" value="inputNodeConcept" />
                <node concept="3THzug" id="3lJIBUNck9m" role="1tU5fm" />
                <node concept="2OqwBi" id="3lJIBUNck9n" role="33vP2m">
                  <node concept="1YBJjd" id="3lJIBUNck9o" role="2Oq$k0">
                    <ref role="1YBMHb" node="3lJIBUNcgGT" resolve="macro" />
                  </node>
                  <node concept="2qgKlT" id="3lJIBUNck9p" role="2OqNvi">
                    <ref role="37wK5l" to="tpfh:hEwIosJ" resolve="getInputNodeTypeInsideOfMacro" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3lJIBUNck9q" role="3cqZAp">
              <node concept="3clFbS" id="3lJIBUNck9r" role="3clFbx">
                <node concept="3clFbJ" id="3lJIBUNck9s" role="3cqZAp">
                  <node concept="3clFbS" id="3lJIBUNck9t" role="3clFbx">
                    <node concept="3cpWs8" id="3lJIBUNck9u" role="3cqZAp">
                      <node concept="3cpWsn" id="3lJIBUNck9v" role="3cpWs9">
                        <property role="TrG5h" value="msg" />
                        <node concept="17QB3L" id="3lJIBUNck9w" role="1tU5fm" />
                        <node concept="2YIFZM" id="3lJIBUNck9x" role="33vP2m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                          <node concept="Xl_RD" id="3lJIBUNck9y" role="37wK5m">
                            <property role="Xl_RC" value="Input node (%s) is not an instance of template's expected concept (%s)" />
                          </node>
                          <node concept="2OqwBi" id="3lJIBUNck9z" role="37wK5m">
                            <node concept="37vLTw" id="3lJIBUNck9$" role="2Oq$k0">
                              <ref role="3cqZAo" node="3lJIBUNck9l" resolve="inputNodeConcept" />
                            </node>
                            <node concept="3TrcHB" id="3lJIBUNck9_" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3lJIBUNck9A" role="37wK5m">
                            <node concept="2OqwBi" id="3lJIBUNck9B" role="2Oq$k0">
                              <node concept="37vLTw" id="3lJIBUNck9C" role="2Oq$k0">
                                <ref role="3cqZAo" node="3lJIBUNcjU3" resolve="template" />
                              </node>
                              <node concept="3TrEf2" id="3lJIBUNck9D" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="3lJIBUNck9E" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2MkqsV" id="3lJIBUNck9F" role="3cqZAp">
                      <node concept="1YBJjd" id="3lJIBUNck9G" role="2OEOjV">
                        <ref role="1YBMHb" node="3lJIBUNcgGT" resolve="macro" />
                      </node>
                      <node concept="37vLTw" id="3lJIBUNck9H" role="2MkJ7o">
                        <ref role="3cqZAo" node="3lJIBUNck9v" resolve="msg" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="3lJIBUNck9I" role="3clFbw">
                    <node concept="2OqwBi" id="3lJIBUNck9J" role="3fr31v">
                      <node concept="2YIFZM" id="3lJIBUNck9K" role="2Oq$k0">
                        <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                        <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                        <node concept="37vLTw" id="3lJIBUNck9L" role="37wK5m">
                          <ref role="3cqZAo" node="3lJIBUNck9l" resolve="inputNodeConcept" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3lJIBUNck9M" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept):boolean" resolve="isSubConceptOf" />
                        <node concept="2YIFZM" id="3lJIBUNck9N" role="37wK5m">
                          <ref role="37wK5l" to="pjrh:~MetaAdapterByDeclaration.getConcept(org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.language.SAbstractConcept" resolve="getConcept" />
                          <ref role="1Pybhc" to="pjrh:~MetaAdapterByDeclaration" resolve="MetaAdapterByDeclaration" />
                          <node concept="2OqwBi" id="3lJIBUNck9O" role="37wK5m">
                            <node concept="37vLTw" id="3lJIBUNck9P" role="2Oq$k0">
                              <ref role="3cqZAo" node="3lJIBUNcjU3" resolve="template" />
                            </node>
                            <node concept="3TrEf2" id="3lJIBUNck9Q" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="3lJIBUNck9R" role="3clFbw">
                <node concept="2OqwBi" id="3lJIBUNck9S" role="3uHU7w">
                  <node concept="37vLTw" id="3lJIBUNck9T" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lJIBUNck9l" resolve="inputNodeConcept" />
                  </node>
                  <node concept="3x8VRR" id="3lJIBUNck9U" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="3lJIBUNck9V" role="3uHU7B">
                  <node concept="2OqwBi" id="3lJIBUNck9W" role="2Oq$k0">
                    <node concept="37vLTw" id="3lJIBUNck9X" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lJIBUNcjU3" resolve="template" />
                    </node>
                    <node concept="3TrEf2" id="3lJIBUNck9Y" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpf8:h03gUQu" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="3lJIBUNck9Z" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3lJIBUNcgGT" role="1YuTPh">
      <property role="TrG5h" value="macro" />
      <ref role="1YaFvo" to="tpf8:30c0HY8gznj" resolve="WeaveMacro" />
    </node>
  </node>
</model>

