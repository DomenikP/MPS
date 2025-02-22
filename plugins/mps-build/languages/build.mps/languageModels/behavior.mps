<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2c8fa2a8-11a0-4729-bd56-47f702d30278(jetbrains.mps.build.mps.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
    <import index="tken" ref="r:38bad86e-d92c-4ea7-ad52-a111dc6c2457(jetbrains.mps.build.mps.util)" />
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="vbkb" ref="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.build.behavior)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="8xvf" ref="r:ed179f4d-7cf2-479d-8348-50c1fc63b96a(jetbrains.mps.build.workflow.structure)" />
    <import index="zwni" ref="r:4c16a3e9-db56-4447-9b0d-14adce23db0d(jetbrains.mps.build.mps.accessories)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util()" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel()" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model()" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472833" name="isPrivate" index="13i0is" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709614739" name="jetbrains.mps.lang.quotation.structure.NodeBuilderRef" flags="nn" index="36bGnv">
        <reference id="8182547171709614741" name="target" index="36bGnp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5253134957341697434" name="jetbrains.mps.lang.smodel.structure.LinkNameRefExpression" flags="nn" index="prKvN">
        <reference id="5253134957341833005" name="conceptDeclaration" index="prhl4" />
        <reference id="5253134957341833006" name="linkDeclaration" index="prhl7" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1143512015885" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" flags="nn" index="YCak7" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptTypeSConcept" flags="in" index="3bZ5Sz" />
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="13h7C7" id="7gAtt1ju6Jv">
    <property role="3GE5qa" value="Project" />
    <ref role="13h7C2" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
    <node concept="13i0hz" id="7gAtt1ju6Jy" role="13h7CS">
      <property role="TrG5h" value="isCompact" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="7gAtt1ju6Jz" role="1B3o_S" />
      <node concept="10P_77" id="7gAtt1ju6JA" role="3clF45" />
      <node concept="3clFbS" id="7gAtt1ju6J_" role="3clF47">
        <node concept="3clFbF" id="7gAtt1juezJ" role="3cqZAp">
          <node concept="2OqwBi" id="7gAtt1jueBe" role="3clFbG">
            <node concept="13iPFW" id="7gAtt1jueAX" role="2Oq$k0" />
            <node concept="3TrcHB" id="7gAtt1jueBk" role="2OqNvi">
              <ref role="3TsBF5" to="kdzh:7gAtt1jueAd" resolve="compact" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="41K1b4v5ZCB" role="13h7CS">
      <property role="TrG5h" value="getModuleReference" />
      <node concept="3Tm1VV" id="41K1b4v5ZCC" role="1B3o_S" />
      <node concept="17QB3L" id="41K1b4v5ZCF" role="3clF45" />
      <node concept="3clFbS" id="41K1b4v5ZCE" role="3clF47">
        <node concept="3clFbF" id="41K1b4v5ZCG" role="3cqZAp">
          <node concept="3cpWs3" id="41K1b4v5ZE9" role="3clFbG">
            <node concept="3cpWs3" id="41K1b4v5ZDm" role="3uHU7B">
              <node concept="3cpWs3" id="41K1b4v5ZD8" role="3uHU7B">
                <node concept="2OqwBi" id="41K1b4v5ZD2" role="3uHU7B">
                  <node concept="13iPFW" id="41K1b4v5ZCH" role="2Oq$k0" />
                  <node concept="3TrcHB" id="41K1b4v5ZD7" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:hS0KzPOSqb" resolve="uuid" />
                  </node>
                </node>
                <node concept="Xl_RD" id="41K1b4v5ZDb" role="3uHU7w">
                  <property role="Xl_RC" value="(" />
                </node>
              </node>
              <node concept="2OqwBi" id="41K1b4v5ZDI" role="3uHU7w">
                <node concept="13iPFW" id="41K1b4v5ZDp" role="2Oq$k0" />
                <node concept="3TrcHB" id="41K1b4v5ZDN" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="41K1b4v5ZEc" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7gAtt1ju6Jw" role="13h7CW">
      <node concept="3clFbS" id="7gAtt1ju6Jx" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="16hzwWwBkZF">
    <property role="3GE5qa" value="Layout" />
    <ref role="13h7C2" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
    <node concept="13i0hz" id="7a7y9hgby$q" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="unpack" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:6bGbH3Svq6g" resolve="unpack" />
      <node concept="3Tm1VV" id="7a7y9hgby$r" role="1B3o_S" />
      <node concept="3clFbS" id="7a7y9hgby$s" role="3clF47">
        <node concept="3cpWs8" id="5FtnUVJQe2A" role="3cqZAp">
          <node concept="3cpWsn" id="5FtnUVJQe2B" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="5FtnUVJQe2C" role="1tU5fm">
              <ref role="ehGHo" to="3ior:6bGbH3Svq63" resolve="BuildLayout_PathElement" />
            </node>
            <node concept="2OqwBi" id="5FtnUVJQe2D" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxglf5O" role="2Oq$k0">
                <ref role="3cqZAo" node="7a7y9hgby$t" resolve="helper" />
              </node>
              <node concept="liA8E" id="5FtnUVJQe2F" role="2OqNvi">
                <ref role="37wK5l" to="o3n2:6bGbH3Svthg" resolve="parent" />
                <node concept="13iPFW" id="5FtnUVJQe2G" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FtnUVJQe2H" role="3cqZAp">
          <node concept="3cpWsn" id="5FtnUVJQe2I" role="3cpWs9">
            <property role="TrG5h" value="parentLocation" />
            <node concept="17QB3L" id="5FtnUVJQe2J" role="1tU5fm" />
            <node concept="2OqwBi" id="5FtnUVJQe2K" role="33vP2m">
              <node concept="2OqwBi" id="5FtnUVJQe2L" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgmOfv" role="2Oq$k0">
                  <ref role="3cqZAo" node="7a7y9hgby$t" resolve="helper" />
                </node>
                <node concept="liA8E" id="5FtnUVJQe2N" role="2OqNvi">
                  <ref role="37wK5l" to="o3n2:41__iZjkZlc" resolve="contentLocations" />
                </node>
              </node>
              <node concept="liA8E" id="5FtnUVJQe2O" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="3GM_nagTyya" role="37wK5m">
                  <ref role="3cqZAo" node="5FtnUVJQe2B" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FtnUVJQe2Q" role="3cqZAp">
          <node concept="3cpWsn" id="5FtnUVJQe2R" role="3cpWs9">
            <property role="TrG5h" value="languageLocation" />
            <node concept="17QB3L" id="5FtnUVJQe2S" role="1tU5fm" />
            <node concept="3cpWs3" id="2d0qgmCd0kE" role="33vP2m">
              <node concept="3cpWs3" id="7a7y9hgb$kC" role="3uHU7B">
                <node concept="3cpWs3" id="5FtnUVJQe2U" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagT_1t" role="3uHU7B">
                    <ref role="3cqZAo" node="5FtnUVJQe2I" resolve="parentLocation" />
                  </node>
                  <node concept="Xl_RD" id="5FtnUVJQe2W" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2d0qgmCd0k$" role="3uHU7w">
                  <node concept="2OqwBi" id="2d0qgmCd0ke" role="2Oq$k0">
                    <node concept="13iPFW" id="7a7y9hgb$kL" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2d0qgmCd0kk" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:16hzwWwASfD" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2d0qgmCd0kD" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2d0qgmCd0kH" role="3uHU7w">
                <property role="Xl_RC" value=".jar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FtnUVJQe33" role="3cqZAp">
          <node concept="2OqwBi" id="5FtnUVJQe34" role="3clFbG">
            <node concept="2OqwBi" id="5FtnUVJQe35" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgmKqX" role="2Oq$k0">
                <ref role="3cqZAo" node="7a7y9hgby$t" resolve="helper" />
              </node>
              <node concept="liA8E" id="5FtnUVJQe37" role="2OqNvi">
                <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
              </node>
            </node>
            <node concept="liA8E" id="5FtnUVJQe38" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="13iPFW" id="5FtnUVJQe39" role="37wK5m" />
              <node concept="37vLTw" id="3GM_nagTsJp" role="37wK5m">
                <ref role="3cqZAo" node="5FtnUVJQe2R" resolve="languageLocation" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7a7y9hgby$t" role="3clF46">
        <property role="TrG5h" value="helper" />
        <node concept="3uibUv" id="7a7y9hgby$u" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:2fLy7QGT29I" resolve="UnpackHelper" />
        </node>
      </node>
      <node concept="37vLTG" id="1GEzjKC9eec" role="3clF46">
        <property role="TrG5h" value="artifacts" />
        <node concept="3uibUv" id="1SFCUA31XxD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1SFCUA31XxE" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7a7y9hgby$v" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7YI57w6ZENU" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="location" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:6b4RkXS8sT2" resolve="location" />
      <node concept="3Tm1VV" id="7YI57w6ZENV" role="1B3o_S" />
      <node concept="37vLTG" id="7YI57w6ZEO4" role="3clF46">
        <property role="TrG5h" value="helper" />
        <node concept="3uibUv" id="7YI57w6ZEO5" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:41__iZjkZ0W" resolve="DependenciesHelper" />
        </node>
      </node>
      <node concept="37vLTG" id="7YI57w6ZEO6" role="3clF46">
        <property role="TrG5h" value="artifactId" />
        <node concept="3uibUv" id="7YI57w6ZEO7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="17QB3L" id="7YI57w6ZEO8" role="3clF45" />
      <node concept="3clFbS" id="7YI57w6ZEO9" role="3clF47">
        <node concept="3clFbJ" id="7YI57w71SG1" role="3cqZAp">
          <node concept="2ZW3vV" id="7YI57w71T5q" role="3clFbw">
            <node concept="3uibUv" id="7YI57w71T5z" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="7YI57w71T1l" role="2ZW6bz">
              <ref role="3cqZAo" node="7YI57w6ZEO6" resolve="artifactId" />
            </node>
          </node>
          <node concept="3clFbS" id="7YI57w71SG4" role="3clFbx">
            <node concept="3cpWs8" id="7YI57w71T7D" role="3cqZAp">
              <node concept="3cpWsn" id="7YI57w71T7E" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="7YI57w71T7F" role="1tU5fm" />
                <node concept="10QFUN" id="7YI57w71T7G" role="33vP2m">
                  <node concept="37vLTw" id="7YI57w71U$a" role="10QFUP">
                    <ref role="3cqZAo" node="7YI57w6ZEO6" resolve="artifactId" />
                  </node>
                  <node concept="3Tqbb2" id="7YI57w71T7H" role="10QFUM" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7YI57w72c1B" role="3cqZAp">
              <node concept="3cpWsn" id="7YI57w72c1E" role="3cpWs9">
                <property role="TrG5h" value="languageLocation" />
                <node concept="17QB3L" id="7YI57w72c1_" role="1tU5fm" />
                <node concept="2OqwBi" id="7YI57w72cD9" role="33vP2m">
                  <node concept="2OqwBi" id="7YI57w72cDa" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxglbnY" role="2Oq$k0">
                      <ref role="3cqZAo" node="7YI57w6ZEO4" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="7YI57w72cDc" role="2OqNvi">
                      <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7YI57w72cDd" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                    <node concept="13iPFW" id="7YI57w72cDe" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7YI57w71Yoo" role="3cqZAp" />
            <node concept="3clFbJ" id="7YI57w71T7J" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="2OqwBi" id="7YI57w71T7K" role="3clFbw">
                <node concept="1mIQ4w" id="7YI57w71T7L" role="2OqNvi">
                  <node concept="chp4Y" id="7YI57w71T7M" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                  </node>
                </node>
                <node concept="37vLTw" id="7YI57w71T7N" role="2Oq$k0">
                  <ref role="3cqZAo" node="7YI57w71T7E" resolve="node" />
                </node>
              </node>
              <node concept="3clFbS" id="7YI57w71T7O" role="3clFbx">
                <node concept="3cpWs6" id="7YI57w71T7P" role="3cqZAp">
                  <node concept="3cpWs3" id="7YI57w72t0G" role="3cqZAk">
                    <node concept="Xl_RD" id="7YI57w72t0J" role="3uHU7w">
                      <property role="Xl_RC" value="-generator.jar" />
                    </node>
                    <node concept="2OqwBi" id="7YI57w72gmJ" role="3uHU7B">
                      <node concept="liA8E" id="7YI57w72jH_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                        <node concept="3cmrfG" id="7YI57w72l87" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cpWsd" id="7YI57w72qoi" role="37wK5m">
                          <node concept="2OqwBi" id="7YI57w72qDk" role="3uHU7w">
                            <node concept="liA8E" id="7YI57w72sps" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                            </node>
                            <node concept="Xl_RD" id="7YI57w72qow" role="2Oq$k0">
                              <property role="Xl_RC" value=".jar" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7YI57w72lUF" role="3uHU7B">
                            <node concept="liA8E" id="7YI57w72pid" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                            </node>
                            <node concept="37vLTw" id="7YI57w72lDQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="7YI57w72c1E" resolve="languageLocation" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="7YI57w72g5U" role="2Oq$k0">
                        <ref role="3cqZAo" node="7YI57w72c1E" resolve="languageLocation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7YI57w71T7Y" role="3cqZAp">
              <node concept="3clFbS" id="7YI57w71T7Z" role="3clFbx">
                <node concept="3cpWs6" id="7YI57w71T80" role="3cqZAp">
                  <node concept="37vLTw" id="7YI57w72uvg" role="3cqZAk">
                    <ref role="3cqZAo" node="7YI57w72c1E" resolve="languageLocation" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7YI57w71T86" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTtxh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7YI57w71T7E" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="7YI57w71T88" role="2OqNvi">
                  <node concept="chp4Y" id="7YI57w71T89" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7YI57w6ZEOf" role="3cqZAp">
          <node concept="2OqwBi" id="7YI57w6ZEOc" role="3clFbG">
            <node concept="13iAh5" id="7YI57w6ZEOd" role="2Oq$k0" />
            <node concept="2qgKlT" id="7YI57w6ZEOe" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:6b4RkXS8sT2" resolve="location" />
              <node concept="37vLTw" id="2BHiRxglboC" role="37wK5m">
                <ref role="3cqZAo" node="7YI57w6ZEO4" resolve="helper" />
              </node>
              <node concept="37vLTw" id="2BHiRxglkfX" role="37wK5m">
                <ref role="3cqZAo" node="7YI57w6ZEO6" resolve="artifactId" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7a7y9hgby$e" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="exports" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:5FtnUVJQES1" resolve="exports" />
      <node concept="3Tm1VV" id="7a7y9hgby$f" role="1B3o_S" />
      <node concept="3clFbS" id="7a7y9hgby$g" role="3clF47">
        <node concept="3clFbJ" id="5FtnUVJQJqk" role="3cqZAp">
          <node concept="3clFbS" id="5FtnUVJQJql" role="3clFbx">
            <node concept="3cpWs8" id="5FtnUVJQJqt" role="3cqZAp">
              <node concept="3cpWsn" id="5FtnUVJQJqu" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="5FtnUVJQJqv" role="1tU5fm" />
                <node concept="10QFUN" id="5FtnUVJQJqx" role="33vP2m">
                  <node concept="3Tqbb2" id="5FtnUVJQJqy" role="10QFUM" />
                  <node concept="37vLTw" id="2BHiRxgmb_4" role="10QFUP">
                    <ref role="3cqZAo" node="7a7y9hgby$h" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7YI57w71Jia" role="3cqZAp">
              <node concept="2OqwBi" id="7YI57w71Jnz" role="3clFbw">
                <node concept="1mIQ4w" id="7YI57w71Kas" role="2OqNvi">
                  <node concept="chp4Y" id="7YI57w71Kax" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                  </node>
                </node>
                <node concept="37vLTw" id="7YI57w71JiA" role="2Oq$k0">
                  <ref role="3cqZAo" node="5FtnUVJQJqu" resolve="node" />
                </node>
              </node>
              <node concept="3clFbS" id="7YI57w71Jid" role="3clFbx">
                <node concept="3cpWs6" id="7YI57w71Kaz" role="3cqZAp">
                  <node concept="3clFbC" id="7YI57w71MrG" role="3cqZAk">
                    <node concept="2OqwBi" id="7YI57w71NCC" role="3uHU7w">
                      <node concept="2qgKlT" id="7YI57w71RG1" role="2OqNvi">
                        <ref role="37wK5l" node="7YI57w6ZMdZ" resolve="getSourceLanguage" />
                      </node>
                      <node concept="1PxgMI" id="7YI57w71Nrb" role="2Oq$k0">
                        <ref role="1PxNhF" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                        <node concept="37vLTw" id="7YI57w71Mt_" role="1PxMeX">
                          <ref role="3cqZAo" node="5FtnUVJQJqu" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7YI57w71KhQ" role="3uHU7B">
                      <node concept="3TrEf2" id="7YI57w71LhJ" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:16hzwWwASfD" />
                      </node>
                      <node concept="13iPFW" id="7YI57w71KaC" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5FtnUVJQJr0" role="3cqZAp">
              <node concept="3clFbS" id="5FtnUVJQJr1" role="3clFbx">
                <node concept="3cpWs6" id="7a7y9hgb$lQ" role="3cqZAp">
                  <node concept="3clFbC" id="7a7y9hgb$mj" role="3cqZAk">
                    <node concept="2OqwBi" id="7a7y9hgb$md" role="3uHU7B">
                      <node concept="13iPFW" id="7a7y9hgb$lS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7a7y9hgb$mi" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:16hzwWwASfD" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTrNU" role="3uHU7w">
                      <ref role="3cqZAo" node="5FtnUVJQJqu" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5FtnUVJQJrl" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTtq$" role="2Oq$k0">
                  <ref role="3cqZAo" node="5FtnUVJQJqu" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="5FtnUVJQJrq" role="2OqNvi">
                  <node concept="chp4Y" id="7a7y9hgb$kU" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5FtnUVJQJqp" role="3clFbw">
            <node concept="3uibUv" id="2r8mubEFa5p" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm9S9" role="2ZW6bz">
              <ref role="3cqZAo" node="7a7y9hgby$h" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7a7y9hgb$kS" role="3cqZAp">
          <node concept="3clFbT" id="7a7y9hgb$kT" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7a7y9hgby$h" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="7a7y9hgby$i" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="7a7y9hgby$j" role="3clF45" />
    </node>
    <node concept="13hLZK" id="16hzwWwBkZG" role="13h7CW">
      <node concept="3clFbS" id="16hzwWwBkZH" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2eDSGe9clkr">
    <property role="3GE5qa" value="Project" />
    <ref role="13h7C2" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
    <node concept="13hLZK" id="2eDSGe9clks" role="13h7CW">
      <node concept="3clFbS" id="2eDSGe9clkt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6tOCIA6_7jg" role="13h7CS">
      <property role="TrG5h" value="isCompilable" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="6tOCIA6_7jh" role="1B3o_S" />
      <node concept="10P_77" id="6tOCIA6_7jk" role="3clF45" />
      <node concept="3clFbS" id="6tOCIA6_7jj" role="3clF47">
        <node concept="3clFbF" id="6tOCIA6_7jl" role="3cqZAp">
          <node concept="3clFbC" id="1jjYQYSiWhw" role="3clFbG">
            <node concept="2OqwBi" id="1jjYQYSiWh5" role="3uHU7B">
              <node concept="13iPFW" id="6tOCIA6_f00" role="2Oq$k0" />
              <node concept="3TrcHB" id="1jjYQYSiWhb" role="2OqNvi">
                <ref role="3TsBF5" to="kdzh:1jjYQYSiGok" resolve="doNotCompile" />
              </node>
            </node>
            <node concept="3clFbT" id="1jjYQYSiWhz" role="3uHU7w" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="57YmpYyL8LP" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="fetchDependencies" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:57YmpYyL8F1" resolve="fetchDependencies" />
      <node concept="3Tm1VV" id="57YmpYyL8LQ" role="1B3o_S" />
      <node concept="3clFbS" id="57YmpYyL8LR" role="3clF47">
        <node concept="3cpWs8" id="6xJrZo0GWcl" role="3cqZAp">
          <node concept="3cpWsn" id="6xJrZo0GWcm" role="3cpWs9">
            <property role="TrG5h" value="closure" />
            <node concept="2OqwBi" id="6xJrZo0GWco" role="33vP2m">
              <node concept="2ShNRf" id="6xJrZo0GWcp" role="2Oq$k0">
                <node concept="1pGfFk" id="6xJrZo0GWcq" role="2ShVmc">
                  <ref role="37wK5l" to="tken:1jjYQYSjidB" resolve="MPSModulesClosure" />
                  <node concept="13iPFW" id="4egE2DStoE1" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="6xJrZo0GWcu" role="2OqNvi">
                <ref role="37wK5l" to="tken:6xJrZo0GWab" resolve="closure" />
              </node>
            </node>
            <node concept="3uibUv" id="6xJrZo0GWcn" role="1tU5fm">
              <ref role="3uigEE" to="tken:1jjYQYSjid_" resolve="MPSModulesClosure" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2eDSGe9clkB" role="3cqZAp" />
        <node concept="3cpWs8" id="1GEzjKC9gpj" role="3cqZAp">
          <node concept="3cpWsn" id="1GEzjKC9gpk" role="3cpWs9">
            <property role="TrG5h" value="needsFetch" />
            <node concept="10P_77" id="1GEzjKC9gpl" role="1tU5fm" />
            <node concept="3clFbT" id="1GEzjKC9gpn" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3PtN$74IyXo" role="3cqZAp">
          <node concept="3cpWsn" id="3PtN$74IyXp" role="3cpWs9">
            <property role="TrG5h" value="requiredJars" />
            <node concept="2I9FWS" id="3PtN$74IyXq" role="1tU5fm">
              <ref role="2I9WkF" to="3ior:6qcrfIJFdKY" resolve="BuildSourcePath" />
            </node>
            <node concept="2ShNRf" id="3PtN$74IyXs" role="33vP2m">
              <node concept="2T8Vx0" id="3PtN$74IyXu" role="2ShVmc">
                <node concept="2I9FWS" id="3PtN$74IyXv" role="2T96Bj">
                  <ref role="2I9WkF" to="3ior:6qcrfIJFdKY" resolve="BuildSourcePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2eDSGe9czlr" role="3cqZAp">
          <node concept="2GrKxI" id="2eDSGe9czls" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
          <node concept="2OqwBi" id="5WMFzVNv4$M" role="2GsD0m">
            <node concept="37vLTw" id="3GM_nagTAqi" role="2Oq$k0">
              <ref role="3cqZAo" node="6xJrZo0GWcm" resolve="closure" />
            </node>
            <node concept="liA8E" id="5WMFzVNv4$O" role="2OqNvi">
              <ref role="37wK5l" to="tken:6xJrZo0GWb0" resolve="getModules" />
            </node>
          </node>
          <node concept="3clFbS" id="2eDSGe9czlu" role="2LFqv$">
            <node concept="3cpWs8" id="6PrCok1LsAm" role="3cqZAp">
              <node concept="3cpWsn" id="6PrCok1LsAn" role="3cpWs9">
                <property role="TrG5h" value="artifact" />
                <node concept="3Tqbb2" id="6PrCok1LsAo" role="1tU5fm">
                  <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2eDSGe9c_a2" role="3cqZAp">
              <node concept="3clFbS" id="2eDSGe9c_a3" role="3clFbx">
                <node concept="3clFbF" id="1zt79TvPqku" role="3cqZAp">
                  <node concept="37vLTI" id="1zt79TvPqkw" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTxD9" role="37vLTJ">
                      <ref role="3cqZAo" node="6PrCok1LsAn" resolve="artifact" />
                    </node>
                    <node concept="1PxgMI" id="6PrCok1LsAp" role="37vLTx">
                      <property role="1BlNFB" value="true" />
                      <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                      <node concept="2OqwBi" id="6PrCok1LsAq" role="1PxMeX">
                        <node concept="37vLTw" id="2BHiRxgm6Ii" role="2Oq$k0">
                          <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                        </node>
                        <node concept="liA8E" id="6PrCok1LsAs" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                          <node concept="2GrUjf" id="2zmyMeTmV1X" role="37wK5m">
                            <ref role="2Gs0qQ" node="2eDSGe9czls" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6PrCok1L_JD" role="3cqZAp">
                  <node concept="3clFbS" id="6PrCok1L_JE" role="3clFbx">
                    <node concept="3clFbF" id="6PrCok1L_K0" role="3cqZAp">
                      <node concept="2OqwBi" id="6PrCok1L_Kg" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxghfn6" role="2Oq$k0">
                          <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="1GEzjKC9gps" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                          <node concept="37vLTw" id="3GM_nagTAwq" role="37wK5m">
                            <ref role="3cqZAo" node="6PrCok1LsAn" resolve="artifact" />
                          </node>
                          <node concept="2GrUjf" id="6b4RkXS7u9z" role="37wK5m">
                            <ref role="2Gs0qQ" node="2eDSGe9czls" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1GEzjKC9gpD" role="3cqZAp">
                      <node concept="37vLTI" id="1GEzjKC9gpZ" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTuT0" role="37vLTJ">
                          <ref role="3cqZAo" node="1GEzjKC9gpk" resolve="needsFetch" />
                        </node>
                        <node concept="3clFbT" id="1GEzjKC9gq2" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="6PrCok1L_JW" role="3clFbw">
                    <node concept="10Nm6u" id="6PrCok1L_JZ" role="3uHU7w" />
                    <node concept="37vLTw" id="3GM_nagTuph" role="3uHU7B">
                      <ref role="3cqZAo" node="6PrCok1LsAn" resolve="artifact" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="5bqm540P_qC" role="3clFbw">
                <node concept="2OqwBi" id="5bqm540P_r0" role="3uHU7w">
                  <node concept="2GrUjf" id="5bqm540P_qF" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2eDSGe9czls" resolve="m" />
                  </node>
                  <node concept="2qgKlT" id="5bqm540P_r6" role="2OqNvi">
                    <ref role="37wK5l" node="6tOCIA6_7jg" resolve="isCompilable" />
                  </node>
                </node>
                <node concept="3y3z36" id="1zt79TvPqkl" role="3uHU7B">
                  <node concept="2OqwBi" id="1zt79TvPqkm" role="3uHU7B">
                    <node concept="2GrUjf" id="1zt79TvPqkn" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2eDSGe9czls" resolve="m" />
                    </node>
                    <node concept="2Rxl7S" id="1zt79TvPqko" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="1zt79TvPqkp" role="3uHU7w">
                    <node concept="13iPFW" id="1zt79TvPqkq" role="2Oq$k0" />
                    <node concept="2Rxl7S" id="1zt79TvPqkr" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3PtN$74IyWk" role="3cqZAp" />
            <node concept="2Gpval" id="bgY2XVZ6tR" role="3cqZAp">
              <node concept="2GrKxI" id="bgY2XVZ6tS" role="2Gsz3X">
                <property role="TrG5h" value="dep" />
              </node>
              <node concept="3clFbS" id="bgY2XVZ6tU" role="2LFqv$">
                <node concept="3clFbJ" id="bgY2XVZ6yi" role="3cqZAp">
                  <node concept="3clFbS" id="bgY2XVZ6yj" role="3clFbx">
                    <node concept="3cpWs8" id="4VmJU8hx36y" role="3cqZAp">
                      <node concept="3cpWsn" id="4VmJU8hx36z" role="3cpWs9">
                        <property role="TrG5h" value="dependencyTarget" />
                        <node concept="1LlUBW" id="4VmJU8hx36$" role="1tU5fm">
                          <node concept="3Tqbb2" id="4VmJU8hx36_" role="1Lm7xW">
                            <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                          </node>
                          <node concept="10P_77" id="4VmJU8hx36A" role="1Lm7xW" />
                        </node>
                        <node concept="2OqwBi" id="4VmJU8hx36B" role="33vP2m">
                          <node concept="2OqwBi" id="4VmJU8hx36C" role="2Oq$k0">
                            <node concept="2GrUjf" id="4VmJU8hx36D" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="bgY2XVZ6tS" resolve="dep" />
                            </node>
                            <node concept="3TrEf2" id="4VmJU8hx36E" role="2OqNvi">
                              <ref role="3Tt5mk" to="kdzh:2rlufiQSRlZ" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4VmJU8hx36F" role="2OqNvi">
                            <ref role="37wK5l" to="vbkb:4RsV8qJGJqY" resolve="getDependencyTarget" />
                            <node concept="37vLTw" id="2BHiRxghgqo" role="37wK5m">
                              <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="bgY2XVZ6u8" role="3cqZAp">
                      <node concept="3clFbS" id="bgY2XVZ6u9" role="3clFbx">
                        <node concept="3clFbJ" id="4VmJU8hx379" role="3cqZAp">
                          <node concept="3clFbS" id="4VmJU8hx37a" role="3clFbx">
                            <node concept="3clFbF" id="1GEzjKC9gq5" role="3cqZAp">
                              <node concept="2OqwBi" id="1GEzjKC9gqr" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxghfMA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="1GEzjKC9gqw" role="2OqNvi">
                                  <ref role="37wK5l" to="o3n2:57YmpYyL8Fv" resolve="addWithContent" />
                                  <node concept="1LFfDK" id="4VmJU8hx374" role="37wK5m">
                                    <node concept="3cmrfG" id="4VmJU8hx377" role="1LF_Uc">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTA03" role="1LFl5Q">
                                      <ref role="3cqZAo" node="4VmJU8hx36z" resolve="dependencyTarget" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1LFfDK" id="4VmJU8hx37d" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTyW8" role="1LFl5Q">
                              <ref role="3cqZAo" node="4VmJU8hx36z" resolve="dependencyTarget" />
                            </node>
                            <node concept="3cmrfG" id="4VmJU8hx37g" role="1LF_Uc">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                          <node concept="9aQIb" id="4VmJU8hx37h" role="9aQIa">
                            <node concept="3clFbS" id="4VmJU8hx37i" role="9aQI4">
                              <node concept="3clFbF" id="4VmJU8hx37j" role="3cqZAp">
                                <node concept="2OqwBi" id="4VmJU8hx37k" role="3clFbG">
                                  <node concept="37vLTw" id="2BHiRxgm_zc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                                  </node>
                                  <node concept="liA8E" id="4VmJU8hx37m" role="2OqNvi">
                                    <ref role="37wK5l" to="o3n2:57YmpYyL8Fh" resolve="add" />
                                    <node concept="1LFfDK" id="4VmJU8hx37n" role="37wK5m">
                                      <node concept="3cmrfG" id="4VmJU8hx37o" role="1LF_Uc">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="37vLTw" id="3GM_nagTumX" role="1LFl5Q">
                                        <ref role="3cqZAo" node="4VmJU8hx36z" resolve="dependencyTarget" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1GEzjKC9gqH" role="3cqZAp">
                          <node concept="37vLTI" id="1GEzjKC9gqJ" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTtJ2" role="37vLTJ">
                              <ref role="3cqZAo" node="1GEzjKC9gpk" resolve="needsFetch" />
                            </node>
                            <node concept="3clFbT" id="1GEzjKC9gqM" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="bgY2XVZ6ux" role="3clFbw">
                        <node concept="10Nm6u" id="bgY2XVZ6u$" role="3uHU7w" />
                        <node concept="37vLTw" id="3GM_nagTy5F" role="3uHU7B">
                          <ref role="3cqZAo" node="4VmJU8hx36z" resolve="dependencyTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="bgY2XVZ6z7" role="3clFbw">
                    <node concept="2OqwBi" id="bgY2XVZ6yF" role="2Oq$k0">
                      <node concept="2GrUjf" id="bgY2XVZ6ym" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="bgY2XVZ6tS" resolve="dep" />
                      </node>
                      <node concept="3TrEf2" id="bgY2XVZ6yL" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:2rlufiQSRlZ" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="bgY2XVZ6zc" role="2OqNvi" />
                  </node>
                  <node concept="9aQIb" id="bgY2XVZ6zd" role="9aQIa">
                    <node concept="3clFbS" id="bgY2XVZ6ze" role="9aQI4">
                      <node concept="3clFbJ" id="1zt79TvPuc1" role="3cqZAp">
                        <node concept="3clFbS" id="1zt79TvPuc2" role="3clFbx">
                          <node concept="3N13vt" id="1zt79TvPuc3" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="1zt79TvPuc4" role="3clFbw">
                          <node concept="2OqwBi" id="1zt79TvPuc5" role="3uHU7w">
                            <node concept="13iPFW" id="1zt79TvPuc6" role="2Oq$k0" />
                            <node concept="2Rxl7S" id="1zt79TvPuc7" role="2OqNvi" />
                          </node>
                          <node concept="2OqwBi" id="1zt79TvPuc8" role="3uHU7B">
                            <node concept="2Rxl7S" id="1zt79TvPuc9" role="2OqNvi" />
                            <node concept="2GrUjf" id="1zt79TvPucb" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2eDSGe9czls" resolve="m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1zt79TvPuc0" role="3cqZAp" />
                      <node concept="3clFbF" id="bgY2XVZ6zi" role="3cqZAp">
                        <node concept="2OqwBi" id="bgY2XVZ6zj" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagT_Hr" role="2Oq$k0">
                            <ref role="3cqZAo" node="3PtN$74IyXp" resolve="requiredJars" />
                          </node>
                          <node concept="TSZUe" id="bgY2XVZ6zl" role="2OqNvi">
                            <node concept="2OqwBi" id="bgY2XVZ6zm" role="25WWJ7">
                              <node concept="3TrEf2" id="bgY2XVZ6zr" role="2OqNvi">
                                <ref role="3Tt5mk" to="kdzh:3HwLahs6nSq" />
                              </node>
                              <node concept="2GrUjf" id="bgY2XVZ6zp" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="bgY2XVZ6tS" resolve="dep" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="bgY2XVZ6zt" role="2GsD0m">
                <node concept="2OqwBi" id="bgY2XVZ6zu" role="2Oq$k0">
                  <node concept="2OqwBi" id="bgY2XVZ6zv" role="2Oq$k0">
                    <node concept="2GrUjf" id="bgY2XVZ6zw" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2eDSGe9czls" resolve="m" />
                    </node>
                    <node concept="3Tsc0h" id="bgY2XVZ6zx" role="2OqNvi">
                      <ref role="3TtcxE" to="kdzh:4zCbl23d1MS" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="bgY2XVZ6zy" role="2OqNvi">
                    <node concept="1bVj0M" id="bgY2XVZ6zz" role="23t8la">
                      <node concept="3clFbS" id="bgY2XVZ6z$" role="1bW5cS">
                        <node concept="3clFbF" id="bgY2XVZ6z_" role="3cqZAp">
                          <node concept="3K4zz7" id="bgY2XVZ6zA" role="3clFbG">
                            <node concept="2OqwBi" id="bgY2XVZ6zB" role="3K4E3e">
                              <node concept="1PxgMI" id="bgY2XVZ6zC" role="2Oq$k0">
                                <ref role="1PxNhF" to="kdzh:6iXh2SsXUFI" resolve="BuildMps_ExtractedModuleDependency" />
                                <node concept="37vLTw" id="2BHiRxglB7r" role="1PxMeX">
                                  <ref role="3cqZAo" node="bgY2XVZ6zK" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="bgY2XVZ6zE" role="2OqNvi">
                                <ref role="3Tt5mk" to="kdzh:6iXh2SsXUFJ" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="bgY2XVZ6zF" role="3K4Cdx">
                              <node concept="37vLTw" id="2BHiRxgmdLm" role="2Oq$k0">
                                <ref role="3cqZAo" node="bgY2XVZ6zK" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="bgY2XVZ6zH" role="2OqNvi">
                                <node concept="chp4Y" id="bgY2XVZ6zI" role="cj9EA">
                                  <ref role="cht4Q" to="kdzh:6iXh2SsXUFI" resolve="BuildMps_ExtractedModuleDependency" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="2BHiRxgm8PZ" role="3K4GZi">
                              <ref role="3cqZAo" node="bgY2XVZ6zK" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="bgY2XVZ6zK" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="bgY2XVZ6zL" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="v3k3i" id="4fCiNXDNX6i" role="2OqNvi">
                  <node concept="chp4Y" id="4fCiNXDNXSC" role="v3oSu">
                    <ref role="cht4Q" to="kdzh:3HwLahs6nSp" resolve="BuildMps_ModuleDependencyJar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5WMFzVNv4$P" role="3cqZAp" />
        <node concept="2Gpval" id="5WMFzVNv4$R" role="3cqZAp">
          <node concept="2GrKxI" id="5WMFzVNv4$S" role="2Gsz3X">
            <property role="TrG5h" value="lr" />
          </node>
          <node concept="2OqwBi" id="5WMFzVNv4_g" role="2GsD0m">
            <node concept="37vLTw" id="3GM_nagTAsk" role="2Oq$k0">
              <ref role="3cqZAo" node="6xJrZo0GWcm" resolve="closure" />
            </node>
            <node concept="liA8E" id="5WMFzVNv4_m" role="2OqNvi">
              <ref role="37wK5l" to="tken:6xJrZo0GWb7" resolve="getLanguagesWithRuntime" />
            </node>
          </node>
          <node concept="3clFbS" id="5WMFzVNv4$U" role="2LFqv$">
            <node concept="1DcWWT" id="5WMFzVNuTqp" role="3cqZAp">
              <node concept="3clFbS" id="5WMFzVNuTqq" role="2LFqv$">
                <node concept="3clFbJ" id="5WMFzVNuTqr" role="3cqZAp">
                  <node concept="3fqX7Q" id="5WMFzVNuTqs" role="3clFbw">
                    <node concept="2OqwBi" id="5WMFzVNuTqt" role="3fr31v">
                      <node concept="37vLTw" id="3GM_nagT$DN" role="2Oq$k0">
                        <ref role="3cqZAo" node="5WMFzVNuTqH" resolve="runtime" />
                      </node>
                      <node concept="1mIQ4w" id="5WMFzVNuTqv" role="2OqNvi">
                        <node concept="chp4Y" id="5WMFzVNuTqw" role="cj9EA">
                          <ref role="cht4Q" to="kdzh:3HwLahs6iyg" resolve="BuildMps_ModuleJarRuntime" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5WMFzVNuTqx" role="3clFbx">
                    <node concept="3N13vt" id="5WMFzVNuTqy" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbH" id="bgY2XVZ6vc" role="3cqZAp" />
                <node concept="3cpWs8" id="bgY2XVZ6vi" role="3cqZAp">
                  <node concept="3cpWsn" id="bgY2XVZ6vj" role="3cpWs9">
                    <property role="TrG5h" value="jarRuntime" />
                    <node concept="3Tqbb2" id="bgY2XVZ6vk" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:3HwLahs6iyg" resolve="BuildMps_ModuleJarRuntime" />
                    </node>
                    <node concept="1PxgMI" id="bgY2XVZ6vl" role="33vP2m">
                      <ref role="1PxNhF" to="kdzh:3HwLahs6iyg" resolve="BuildMps_ModuleJarRuntime" />
                      <node concept="37vLTw" id="3GM_nagT$vp" role="1PxMeX">
                        <ref role="3cqZAo" node="5WMFzVNuTqH" resolve="runtime" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="bgY2XVZ6ve" role="3cqZAp">
                  <node concept="3clFbS" id="bgY2XVZ6vf" role="3clFbx">
                    <node concept="3cpWs8" id="4VmJU8hx37v" role="3cqZAp">
                      <node concept="3cpWsn" id="4VmJU8hx37w" role="3cpWs9">
                        <property role="TrG5h" value="dependencyTarget" />
                        <node concept="1LlUBW" id="4VmJU8hx37x" role="1tU5fm">
                          <node concept="3Tqbb2" id="4VmJU8hx37y" role="1Lm7xW">
                            <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                          </node>
                          <node concept="10P_77" id="4VmJU8hx37z" role="1Lm7xW" />
                        </node>
                        <node concept="2OqwBi" id="4VmJU8hx37$" role="33vP2m">
                          <node concept="2OqwBi" id="4VmJU8hx37_" role="2Oq$k0">
                            <node concept="37vLTw" id="3GM_nagTuXq" role="2Oq$k0">
                              <ref role="3cqZAo" node="bgY2XVZ6vj" resolve="jarRuntime" />
                            </node>
                            <node concept="3TrEf2" id="4VmJU8hx38a" role="2OqNvi">
                              <ref role="3Tt5mk" to="kdzh:2rlufiQSRlY" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4VmJU8hx37C" role="2OqNvi">
                            <ref role="37wK5l" to="vbkb:4RsV8qJGJqY" resolve="getDependencyTarget" />
                            <node concept="37vLTw" id="2BHiRxgh9Yy" role="37wK5m">
                              <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4VmJU8hx37E" role="3cqZAp">
                      <node concept="3clFbS" id="4VmJU8hx37F" role="3clFbx">
                        <node concept="3clFbJ" id="4VmJU8hx37G" role="3cqZAp">
                          <node concept="3clFbS" id="4VmJU8hx37H" role="3clFbx">
                            <node concept="3clFbF" id="4VmJU8hx37I" role="3cqZAp">
                              <node concept="2OqwBi" id="4VmJU8hx37J" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgm_qt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="4VmJU8hx37L" role="2OqNvi">
                                  <ref role="37wK5l" to="o3n2:57YmpYyL8Fv" resolve="addWithContent" />
                                  <node concept="1LFfDK" id="4VmJU8hx37M" role="37wK5m">
                                    <node concept="3cmrfG" id="4VmJU8hx37N" role="1LF_Uc">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTska" role="1LFl5Q">
                                      <ref role="3cqZAo" node="4VmJU8hx37w" resolve="dependencyTarget" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1LFfDK" id="4VmJU8hx37P" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTwPh" role="1LFl5Q">
                              <ref role="3cqZAo" node="4VmJU8hx37w" resolve="dependencyTarget" />
                            </node>
                            <node concept="3cmrfG" id="4VmJU8hx37R" role="1LF_Uc">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                          <node concept="9aQIb" id="4VmJU8hx37S" role="9aQIa">
                            <node concept="3clFbS" id="4VmJU8hx37T" role="9aQI4">
                              <node concept="3clFbF" id="4VmJU8hx37U" role="3cqZAp">
                                <node concept="2OqwBi" id="4VmJU8hx37V" role="3clFbG">
                                  <node concept="37vLTw" id="2BHiRxgmv9P" role="2Oq$k0">
                                    <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                                  </node>
                                  <node concept="liA8E" id="4VmJU8hx37X" role="2OqNvi">
                                    <ref role="37wK5l" to="o3n2:57YmpYyL8Fh" resolve="add" />
                                    <node concept="1LFfDK" id="4VmJU8hx37Y" role="37wK5m">
                                      <node concept="3cmrfG" id="4VmJU8hx37Z" role="1LF_Uc">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="37vLTw" id="3GM_nagTua7" role="1LFl5Q">
                                        <ref role="3cqZAo" node="4VmJU8hx37w" resolve="dependencyTarget" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4VmJU8hx381" role="3cqZAp">
                          <node concept="37vLTI" id="4VmJU8hx382" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTAjX" role="37vLTJ">
                              <ref role="3cqZAo" node="1GEzjKC9gpk" resolve="needsFetch" />
                            </node>
                            <node concept="3clFbT" id="4VmJU8hx384" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="4VmJU8hx385" role="3clFbw">
                        <node concept="10Nm6u" id="4VmJU8hx386" role="3uHU7w" />
                        <node concept="37vLTw" id="3GM_nagTslQ" role="3uHU7B">
                          <ref role="3cqZAo" node="4VmJU8hx37w" resolve="dependencyTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="bgY2XVZ6w8" role="3clFbw">
                    <node concept="2OqwBi" id="bgY2XVZ6vH" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTz5O" role="2Oq$k0">
                        <ref role="3cqZAo" node="bgY2XVZ6vj" resolve="jarRuntime" />
                      </node>
                      <node concept="3TrEf2" id="bgY2XVZ6vM" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:2rlufiQSRlY" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="bgY2XVZ6we" role="2OqNvi" />
                  </node>
                  <node concept="9aQIb" id="bgY2XVZ6wf" role="9aQIa">
                    <node concept="3clFbS" id="bgY2XVZ6wg" role="9aQI4">
                      <node concept="3clFbJ" id="5WMFzVNv4_s" role="3cqZAp">
                        <node concept="3clFbS" id="5WMFzVNv4_t" role="3clFbx">
                          <node concept="3N13vt" id="5WMFzVNv4_u" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="5WMFzVNv4_v" role="3clFbw">
                          <node concept="2OqwBi" id="5WMFzVNv4_w" role="3uHU7w">
                            <node concept="13iPFW" id="5WMFzVNv4_x" role="2Oq$k0" />
                            <node concept="2Rxl7S" id="5WMFzVNv4_y" role="2OqNvi" />
                          </node>
                          <node concept="2OqwBi" id="5WMFzVNv4_z" role="3uHU7B">
                            <node concept="2Rxl7S" id="5WMFzVNv4__" role="2OqNvi" />
                            <node concept="2GrUjf" id="5WMFzVNv4_A" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="5WMFzVNv4$S" resolve="lr" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1zt79TvPubX" role="3cqZAp" />
                      <node concept="3clFbF" id="3PtN$74IyY0" role="3cqZAp">
                        <node concept="2OqwBi" id="3PtN$74IyYm" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTBb4" role="2Oq$k0">
                            <ref role="3cqZAo" node="3PtN$74IyXp" resolve="requiredJars" />
                          </node>
                          <node concept="TSZUe" id="3PtN$74IyYs" role="2OqNvi">
                            <node concept="2OqwBi" id="bgY2XVZ6zf" role="25WWJ7">
                              <node concept="37vLTw" id="3GM_nagTAVW" role="2Oq$k0">
                                <ref role="3cqZAo" node="bgY2XVZ6vj" resolve="jarRuntime" />
                              </node>
                              <node concept="3TrEf2" id="bgY2XVZ6zh" role="2OqNvi">
                                <ref role="3Tt5mk" to="kdzh:3HwLahs6iyk" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5WMFzVNuTqH" role="1Duv9x">
                <property role="TrG5h" value="runtime" />
                <node concept="3Tqbb2" id="5WMFzVNuTqI" role="1tU5fm">
                  <ref role="ehGHo" to="kdzh:2L4pT56gSBR" resolve="BuildMps_ModuleRuntime" />
                </node>
              </node>
              <node concept="2OqwBi" id="5WMFzVNuTqJ" role="1DdaDG">
                <node concept="2GrUjf" id="5WMFzVNv4_D" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5WMFzVNv4$S" resolve="lr" />
                </node>
                <node concept="3Tsc0h" id="5WMFzVNuTqL" role="2OqNvi">
                  <ref role="3TtcxE" to="kdzh:2L4pT56gVS$" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3PtN$74IyYv" role="3cqZAp" />
        <node concept="2Gpval" id="3PtN$74IyYx" role="3cqZAp">
          <node concept="2GrKxI" id="3PtN$74IyYy" role="2Gsz3X">
            <property role="TrG5h" value="path" />
          </node>
          <node concept="37vLTw" id="3GM_nagT_J8" role="2GsD0m">
            <ref role="3cqZAo" node="3PtN$74IyXp" resolve="requiredJars" />
          </node>
          <node concept="3clFbS" id="3PtN$74IyY$" role="2LFqv$">
            <node concept="3cpWs8" id="5_Qf$NeTgby" role="3cqZAp">
              <node concept="3cpWsn" id="5_Qf$NeTgbz" role="3cpWs9">
                <property role="TrG5h" value="resource" />
                <node concept="1LlUBW" id="5_Qf$NeTgb$" role="1tU5fm">
                  <node concept="3Tqbb2" id="5_Qf$NeTgb_" role="1Lm7xW">
                    <ref role="ehGHo" to="3ior:6bGbH3Svq63" resolve="BuildLayout_PathElement" />
                  </node>
                  <node concept="17QB3L" id="5_Qf$NeTgbA" role="1Lm7xW" />
                </node>
                <node concept="2OqwBi" id="5_Qf$NeTgbB" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxglG9v" role="2Oq$k0">
                    <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                  </node>
                  <node concept="liA8E" id="5_Qf$NeTgbD" role="2OqNvi">
                    <ref role="37wK5l" to="o3n2:7zkpphtGydj" resolve="getResource" />
                    <node concept="1PxgMI" id="3BUsTklM62d" role="37wK5m">
                      <ref role="1PxNhF" to="3ior:6qcrfIJFdKY" resolve="BuildSourcePath" />
                      <node concept="2OqwBi" id="3BUsTklM2Nr" role="1PxMeX">
                        <node concept="37vLTw" id="3BUsTklM1de" role="2Oq$k0">
                          <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                        </node>
                        <node concept="liA8E" id="3BUsTklM3Vi" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:450ejGzgOyP" resolve="toOriginalNode" />
                          <node concept="2GrUjf" id="3BUsTklM4Y0" role="37wK5m">
                            <ref role="2Gs0qQ" node="3PtN$74IyYy" resolve="path" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5WMFzVNv4_N" role="3cqZAp">
              <node concept="3cpWsn" id="5WMFzVNv4_O" role="3cpWs9">
                <property role="TrG5h" value="artifact" />
                <node concept="3Tqbb2" id="5WMFzVNv4_P" role="1tU5fm">
                  <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                </node>
                <node concept="1PxgMI" id="5WMFzVNv4_Q" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                  <node concept="1LFfDK" id="j1Y_zp$Af9" role="1PxMeX">
                    <node concept="3cmrfG" id="j1Y_zp$Afc" role="1LF_Uc">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTsUV" role="1LFl5Q">
                      <ref role="3cqZAo" node="5_Qf$NeTgbz" resolve="resource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5WMFzVNv4_V" role="3cqZAp">
              <node concept="3clFbS" id="5WMFzVNv4_W" role="3clFbx">
                <node concept="3clFbJ" id="4VmJU8hx38c" role="3cqZAp">
                  <node concept="3clFbS" id="4VmJU8hx38d" role="3clFbx">
                    <node concept="3clFbF" id="4VmJU8hx393" role="3cqZAp">
                      <node concept="2OqwBi" id="4VmJU8hx39p" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm6aa" role="2Oq$k0">
                          <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="4VmJU8hx39v" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:57YmpYyL8Fv" resolve="addWithContent" />
                          <node concept="37vLTw" id="3GM_nagTtYd" role="37wK5m">
                            <ref role="3cqZAo" node="5WMFzVNv4_O" resolve="artifact" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4VmJU8hx38X" role="3clFbw">
                    <node concept="1LFfDK" id="4VmJU8hx38_" role="2Oq$k0">
                      <node concept="3cmrfG" id="4VmJU8hx38C" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTBq_" role="1LFl5Q">
                        <ref role="3cqZAo" node="5_Qf$NeTgbz" resolve="resource" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="4VmJU8hx392" role="2OqNvi" />
                  </node>
                  <node concept="9aQIb" id="4VmJU8hx39Q" role="9aQIa">
                    <node concept="3clFbS" id="4VmJU8hx39R" role="9aQI4">
                      <node concept="3clFbF" id="1GEzjKC9grR" role="3cqZAp">
                        <node concept="2OqwBi" id="1GEzjKC9gsd" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgmpLH" role="2Oq$k0">
                            <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                          </node>
                          <node concept="liA8E" id="1GEzjKC9gsi" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:57YmpYyL8Fh" resolve="add" />
                            <node concept="37vLTw" id="3GM_nagTs$D" role="37wK5m">
                              <ref role="3cqZAo" node="5WMFzVNv4_O" resolve="artifact" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1GEzjKC9gsv" role="3cqZAp">
                  <node concept="37vLTI" id="1GEzjKC9gsP" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTBTD" role="37vLTJ">
                      <ref role="3cqZAo" node="1GEzjKC9gpk" resolve="needsFetch" />
                    </node>
                    <node concept="3clFbT" id="1GEzjKC9gsS" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5WMFzVNvsXP" role="3cqZAp">
                  <node concept="3clFbS" id="5WMFzVNvsXQ" role="3clFbx">
                    <node concept="3cpWs8" id="5WMFzVNvt35" role="3cqZAp">
                      <node concept="3cpWsn" id="5WMFzVNvt36" role="3cpWs9">
                        <property role="TrG5h" value="file" />
                        <node concept="3Tqbb2" id="5WMFzVNvt37" role="1tU5fm">
                          <ref role="ehGHo" to="3ior:4zlO3QT8$mm" resolve="BuildInputSingleFile" />
                        </node>
                        <node concept="1PxgMI" id="5WMFzVNvt4B" role="33vP2m">
                          <property role="1BlNFB" value="true" />
                          <ref role="1PxNhF" to="3ior:4zlO3QT8$mm" resolve="BuildInputSingleFile" />
                          <node concept="2OqwBi" id="5WMFzVNvt4w" role="1PxMeX">
                            <node concept="1PxgMI" id="5WMFzVNvt3M" role="2Oq$k0">
                              <ref role="1PxNhF" to="3ior:7XQqoCTjpIh" resolve="BuildLayout_AbstractCopy" />
                              <node concept="37vLTw" id="3GM_nagT_xE" role="1PxMeX">
                                <ref role="3cqZAo" node="5WMFzVNv4_O" resolve="artifact" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="5WMFzVNvt4A" role="2OqNvi">
                              <ref role="3Tt5mk" to="3ior:4zlO3QT8NAU" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5WMFzVNvt4E" role="3cqZAp">
                      <node concept="3clFbS" id="5WMFzVNvt4F" role="3clFbx">
                        <node concept="3SKdUt" id="5WMFzVNvt6z" role="3cqZAp">
                          <node concept="3SKdUq" id="5WMFzVNvt6_" role="3SKWNk">
                            <property role="3SKdUp" value="again, register real path here to enable &quot;import jar ....&quot; construction" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="5WMFzVNvt5_" role="3cqZAp">
                          <node concept="2OqwBi" id="5WMFzVNvt5V" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxgls0L" role="2Oq$k0">
                              <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                            </node>
                            <node concept="liA8E" id="5WMFzVNvt65" role="2OqNvi">
                              <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                              <node concept="2OqwBi" id="5WMFzVNvt6r" role="37wK5m">
                                <node concept="37vLTw" id="3GM_nagTsc2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5WMFzVNvt36" resolve="file" />
                                </node>
                                <node concept="3TrEf2" id="5WMFzVNvt6x" role="2OqNvi">
                                  <ref role="3Tt5mk" to="3ior:4zlO3QT8$mq" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5WMFzVNvt5q" role="3clFbw">
                        <node concept="37vLTw" id="3GM_nagTsq8" role="2Oq$k0">
                          <ref role="3cqZAo" node="5WMFzVNvt36" resolve="file" />
                        </node>
                        <node concept="3x8VRR" id="5WMFzVNvt5w" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5WMFzVNvsYe" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagT_k3" role="2Oq$k0">
                      <ref role="3cqZAo" node="5WMFzVNv4_O" resolve="artifact" />
                    </node>
                    <node concept="1mIQ4w" id="5WMFzVNvsYk" role="2OqNvi">
                      <node concept="chp4Y" id="7XQqoCTjpOi" role="cj9EA">
                        <ref role="cht4Q" to="3ior:7XQqoCTjpIh" resolve="BuildLayout_AbstractCopy" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5WMFzVNv4A2" role="3clFbw">
                <node concept="10Nm6u" id="5WMFzVNv4A3" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTwP7" role="3uHU7B">
                  <ref role="3cqZAo" node="5WMFzVNv4_O" resolve="artifact" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7a7y9hgc3Xx" role="3cqZAp" />
        <node concept="3cpWs8" id="5WtSFRWv6W8" role="3cqZAp">
          <node concept="3cpWsn" id="5WtSFRWv6W9" role="3cpWs9">
            <property role="TrG5h" value="requiredJava" />
            <node concept="3uibUv" id="5WtSFRWv6Wa" role="1tU5fm">
              <ref role="3uigEE" to="tken:75uV$1s1tso" resolve="MPSModulesClosure.RequiredJavaModules" />
            </node>
            <node concept="2OqwBi" id="5WtSFRWv6Wb" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTvhI" role="2Oq$k0">
                <ref role="3cqZAo" node="6xJrZo0GWcm" resolve="closure" />
              </node>
              <node concept="liA8E" id="5WtSFRWv6Wd" role="2OqNvi">
                <ref role="37wK5l" to="tken:6xJrZo0HFQO" resolve="getRequiredJava" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2eDSGe9c_8g" role="3cqZAp">
          <node concept="2GrKxI" id="2eDSGe9c_8h" role="2Gsz3X">
            <property role="TrG5h" value="jm" />
          </node>
          <node concept="2OqwBi" id="5WtSFRWv6WA" role="2GsD0m">
            <node concept="37vLTw" id="3GM_nagTuVu" role="2Oq$k0">
              <ref role="3cqZAo" node="5WtSFRWv6W9" resolve="requiredJava" />
            </node>
            <node concept="liA8E" id="5WtSFRWv6WF" role="2OqNvi">
              <ref role="37wK5l" to="tken:75uV$1s1tt1" resolve="getModules" />
            </node>
          </node>
          <node concept="3clFbS" id="2eDSGe9c_8j" role="2LFqv$">
            <node concept="3clFbJ" id="5WtSFRWv6V3" role="3cqZAp">
              <node concept="3clFbS" id="5WtSFRWv6V4" role="3clFbx">
                <node concept="3clFbF" id="1GEzjKC9goD" role="3cqZAp">
                  <node concept="2YIFZM" id="5WtSFRWv6Ui" role="3clFbG">
                    <ref role="1Pybhc" to="o3n2:2eDSGe9c50Q" resolve="JavaExportUtil" />
                    <ref role="37wK5l" to="o3n2:2eDSGe9bCBS" resolve="requireModule" />
                    <node concept="37vLTw" id="2BHiRxghemB" role="37wK5m">
                      <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                    </node>
                    <node concept="2GrUjf" id="5WtSFRWv6Ul" role="37wK5m">
                      <ref role="2Gs0qQ" node="2eDSGe9c_8h" resolve="jm" />
                    </node>
                    <node concept="13iPFW" id="5WtSFRWv6Un" role="37wK5m" />
                    <node concept="37vLTw" id="2BHiRxgmanO" role="37wK5m">
                      <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5WtSFRWv6Vs" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTznz" role="2Oq$k0">
                  <ref role="3cqZAo" node="5WtSFRWv6W9" resolve="requiredJava" />
                </node>
                <node concept="liA8E" id="5WtSFRWv6WH" role="2OqNvi">
                  <ref role="37wK5l" to="tken:75uV$1s1tt8" resolve="isReexported" />
                  <node concept="2GrUjf" id="5WtSFRWv6WI" role="37wK5m">
                    <ref role="2Gs0qQ" node="2eDSGe9c_8h" resolve="jm" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="5WtSFRWv6WJ" role="9aQIa">
                <node concept="3clFbS" id="5WtSFRWv6WK" role="9aQI4">
                  <node concept="3clFbJ" id="2eDSGe9c_bo" role="3cqZAp">
                    <node concept="3clFbS" id="2eDSGe9c_bp" role="3clFbx">
                      <node concept="3N13vt" id="2eDSGe9c_bq" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="2eDSGe9c_br" role="3clFbw">
                      <node concept="2OqwBi" id="2eDSGe9c_bs" role="3uHU7w">
                        <node concept="13iPFW" id="2eDSGe9c_bt" role="2Oq$k0" />
                        <node concept="2Rxl7S" id="2eDSGe9c_bu" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="2eDSGe9c_bv" role="3uHU7B">
                        <node concept="2GrUjf" id="2eDSGe9c_by" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2eDSGe9c_8h" resolve="jm" />
                        </node>
                        <node concept="2Rxl7S" id="2eDSGe9c_bx" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5xa9wY2vebH" role="3cqZAp" />
                  <node concept="3cpWs8" id="2eDSGe9c_8l" role="3cqZAp">
                    <node concept="3cpWsn" id="2eDSGe9c_8m" role="3cpWs9">
                      <property role="TrG5h" value="artifact" />
                      <node concept="3Tqbb2" id="2eDSGe9c_8n" role="1tU5fm">
                        <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                      </node>
                      <node concept="1PxgMI" id="2eDSGe9c_8o" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                        <node concept="2OqwBi" id="2eDSGe9c_8p" role="1PxMeX">
                          <node concept="37vLTw" id="2BHiRxgmyXS" role="2Oq$k0">
                            <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                          </node>
                          <node concept="liA8E" id="2eDSGe9c_8r" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                            <node concept="2GrUjf" id="2eDSGe9c_8B" role="37wK5m">
                              <ref role="2Gs0qQ" node="2eDSGe9c_8h" resolve="jm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2eDSGe9c_8t" role="3cqZAp">
                    <node concept="3clFbS" id="2eDSGe9c_8u" role="3clFbx">
                      <node concept="3clFbF" id="1SFCUA32nkq" role="3cqZAp">
                        <node concept="37vLTI" id="1SFCUA32nlc" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTBOp" role="37vLTJ">
                            <ref role="3cqZAo" node="1GEzjKC9gpk" resolve="needsFetch" />
                          </node>
                          <node concept="3clFbT" id="1SFCUA32nlf" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1GEzjKC9goF" role="3cqZAp">
                        <node concept="2OqwBi" id="1GEzjKC9gp1" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgmrZj" role="2Oq$k0">
                            <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                          </node>
                          <node concept="liA8E" id="1GEzjKC9gp6" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                            <node concept="37vLTw" id="3GM_nagTz$J" role="37wK5m">
                              <ref role="3cqZAo" node="2eDSGe9c_8m" resolve="artifact" />
                            </node>
                            <node concept="2GrUjf" id="6b4RkXS7upi" role="37wK5m">
                              <ref role="2Gs0qQ" node="2eDSGe9c_8h" resolve="jm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="2eDSGe9c_8$" role="3clFbw">
                      <node concept="10Nm6u" id="2eDSGe9c_8_" role="3uHU7w" />
                      <node concept="37vLTw" id="3GM_nagT_e2" role="3uHU7B">
                        <ref role="3cqZAo" node="2eDSGe9c_8m" resolve="artifact" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5bqm540MqiR" role="3cqZAp" />
        <node concept="3SKdUt" id="5bqm540MqiT" role="3cqZAp">
          <node concept="3SKdUq" id="5bqm540MqiV" role="3SKWNk">
            <property role="3SKdUp" value="fetch generation time dependencies" />
          </node>
        </node>
        <node concept="3cpWs8" id="5bqm540MqiX" role="3cqZAp">
          <node concept="3cpWsn" id="5bqm540MqiY" role="3cpWs9">
            <property role="TrG5h" value="genClosure" />
            <node concept="2OqwBi" id="5bqm540Mqjw" role="33vP2m">
              <node concept="2OqwBi" id="5bqm540MqiZ" role="2Oq$k0">
                <node concept="2OqwBi" id="6qlcPcv9WBT" role="2Oq$k0">
                  <node concept="2ShNRf" id="5bqm540Mqj0" role="2Oq$k0">
                    <node concept="1pGfFk" id="5bqm540Mqj1" role="2ShVmc">
                      <ref role="37wK5l" to="tken:1jjYQYSjidB" resolve="MPSModulesClosure" />
                      <node concept="13iPFW" id="5bqm540Mqj5" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6qlcPcv9WC6" role="2OqNvi">
                    <ref role="37wK5l" to="tken:6qlcPcv9UhQ" resolve="trackDevkits" />
                  </node>
                </node>
                <node concept="liA8E" id="5bqm540Mqj6" role="2OqNvi">
                  <ref role="37wK5l" to="tken:5bXKZTgq2AH" resolve="runtimeClosure" />
                </node>
              </node>
              <node concept="liA8E" id="5bqm540MqjI" role="2OqNvi">
                <ref role="37wK5l" to="tken:5D0zVz81aDF" resolve="generationDependenciesClosure" />
              </node>
            </node>
            <node concept="3uibUv" id="5bqm540Mqj7" role="1tU5fm">
              <ref role="3uigEE" to="tken:1jjYQYSjid_" resolve="MPSModulesClosure" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5bqm540MqjK" role="3cqZAp">
          <node concept="2GrKxI" id="5bqm540MqjL" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
          <node concept="2OqwBi" id="5bqm540MqjM" role="2GsD0m">
            <node concept="37vLTw" id="3GM_nagTyjp" role="2Oq$k0">
              <ref role="3cqZAo" node="5bqm540MqiY" resolve="genClosure" />
            </node>
            <node concept="liA8E" id="6qlcPcv9UMO" role="2OqNvi">
              <ref role="37wK5l" to="tken:2pk5iwY3SS_" resolve="getAllModules" />
            </node>
          </node>
          <node concept="3clFbS" id="5bqm540MqjP" role="2LFqv$">
            <node concept="3cpWs8" id="5bqm540MqjQ" role="3cqZAp">
              <node concept="3cpWsn" id="5bqm540MqjR" role="3cpWs9">
                <property role="TrG5h" value="artifact" />
                <node concept="3Tqbb2" id="5bqm540MqjS" role="1tU5fm">
                  <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5bqm540MqjT" role="3cqZAp">
              <node concept="3clFbS" id="5bqm540MqjU" role="3clFbx">
                <node concept="3clFbF" id="5bqm540MqjV" role="3cqZAp">
                  <node concept="37vLTI" id="5bqm540MqjW" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTBCL" role="37vLTJ">
                      <ref role="3cqZAo" node="5bqm540MqjR" resolve="artifact" />
                    </node>
                    <node concept="1PxgMI" id="5bqm540MqjY" role="37vLTx">
                      <property role="1BlNFB" value="true" />
                      <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                      <node concept="2OqwBi" id="5bqm540MqjZ" role="1PxMeX">
                        <node concept="37vLTw" id="2BHiRxgheWC" role="2Oq$k0">
                          <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                        </node>
                        <node concept="liA8E" id="5bqm540Mqk1" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                          <node concept="2GrUjf" id="1RpjEsetwRV" role="37wK5m">
                            <ref role="2Gs0qQ" node="5bqm540MqjL" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5bqm540Mqk3" role="3cqZAp">
                  <node concept="3eNFk2" id="1RpjEsetwRW" role="3eNLev">
                    <node concept="3clFbS" id="1RpjEsetwRY" role="3eOfB_">
                      <node concept="3clFbF" id="1RpjEsetwRZ" role="3cqZAp">
                        <node concept="37vLTI" id="1RpjEsetwS0" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTwgV" role="37vLTJ">
                            <ref role="3cqZAo" node="5bqm540MqjR" resolve="artifact" />
                          </node>
                          <node concept="1PxgMI" id="1RpjEsetwS2" role="37vLTx">
                            <property role="1BlNFB" value="true" />
                            <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                            <node concept="2OqwBi" id="1RpjEsetwS3" role="1PxMeX">
                              <node concept="37vLTw" id="2BHiRxgm8VP" role="2Oq$k0">
                                <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                              </node>
                              <node concept="liA8E" id="1RpjEsetwS5" role="2OqNvi">
                                <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                                <node concept="2OqwBi" id="1RpjEsetwSN" role="37wK5m">
                                  <node concept="1PxgMI" id="1RpjEsetwSt" role="2Oq$k0">
                                    <ref role="1PxNhF" to="kdzh:hS0KzPOwoe" resolve="BuildMps_DevKit" />
                                    <node concept="2GrUjf" id="1RpjEsetwS6" role="1PxMeX">
                                      <ref role="2Gs0qQ" node="5bqm540MqjL" resolve="m" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1RpjEsetwST" role="2OqNvi">
                                    <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1RpjEsetwSV" role="3cqZAp">
                        <node concept="3clFbS" id="1RpjEsetwSW" role="3clFbx">
                          <node concept="3clFbF" id="1RpjEsetwTo" role="3cqZAp">
                            <node concept="2OqwBi" id="1RpjEsetwTp" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxglLF3" role="2Oq$k0">
                                <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                              </node>
                              <node concept="liA8E" id="1RpjEsetwTr" role="2OqNvi">
                                <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                                <node concept="37vLTw" id="3GM_nagTreY" role="37wK5m">
                                  <ref role="3cqZAo" node="5bqm540MqjR" resolve="artifact" />
                                </node>
                                <node concept="2GrUjf" id="1RpjEsetwTt" role="37wK5m">
                                  <ref role="2Gs0qQ" node="5bqm540MqjL" resolve="m" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="1RpjEsetwTk" role="3clFbw">
                          <node concept="10Nm6u" id="1RpjEsetwTn" role="3uHU7w" />
                          <node concept="37vLTw" id="3GM_nagTrcT" role="3uHU7B">
                            <ref role="3cqZAo" node="5bqm540MqjR" resolve="artifact" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6qlcPcvap87" role="3eO9$A">
                      <node concept="2GrUjf" id="5bqm540Mqk2" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5bqm540MqjL" resolve="m" />
                      </node>
                      <node concept="1mIQ4w" id="6qlcPcvap8h" role="2OqNvi">
                        <node concept="chp4Y" id="6qlcPcvap8j" role="cj9EA">
                          <ref role="cht4Q" to="kdzh:hS0KzPOwoe" resolve="BuildMps_DevKit" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5bqm540Mqk4" role="3clFbx">
                    <node concept="3clFbF" id="5bqm540Mqk5" role="3cqZAp">
                      <node concept="2OqwBi" id="5bqm540Mqk6" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm9vU" role="2Oq$k0">
                          <ref role="3cqZAo" node="57YmpYyL8LU" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="5bqm540Mqk8" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                          <node concept="37vLTw" id="3GM_nagTsqP" role="37wK5m">
                            <ref role="3cqZAo" node="5bqm540MqjR" resolve="artifact" />
                          </node>
                          <node concept="2GrUjf" id="5bqm540Mqka" role="37wK5m">
                            <ref role="2Gs0qQ" node="5bqm540MqjL" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5bqm540Mqkf" role="3clFbw">
                    <node concept="10Nm6u" id="5bqm540Mqkg" role="3uHU7w" />
                    <node concept="37vLTw" id="3GM_nagTx8f" role="3uHU7B">
                      <ref role="3cqZAo" node="5bqm540MqjR" resolve="artifact" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5bqm540Mqki" role="3clFbw">
                <node concept="2OqwBi" id="5bqm540Mqkj" role="3uHU7B">
                  <node concept="2GrUjf" id="5bqm540Mqkk" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5bqm540MqjL" resolve="m" />
                  </node>
                  <node concept="2Rxl7S" id="5bqm540Mqkl" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="5bqm540Mqkm" role="3uHU7w">
                  <node concept="13iPFW" id="5bqm540Mqkn" role="2Oq$k0" />
                  <node concept="2Rxl7S" id="5bqm540Mqko" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2eDSGe9c_8e" role="3cqZAp" />
        <node concept="3clFbJ" id="6PrCok1L_Ho" role="3cqZAp">
          <node concept="3clFbS" id="6PrCok1L_Hp" role="3clFbx">
            <node concept="3clFbF" id="6PrCok1LsAw" role="3cqZAp">
              <node concept="2OqwBi" id="6PrCok1LsAx" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm8wV" role="2Oq$k0">
                  <ref role="3cqZAo" node="57YmpYyL8LS" resolve="artifacts" />
                </node>
                <node concept="liA8E" id="6PrCok1LsAz" role="2OqNvi">
                  <ref role="37wK5l" to="o3n2:5DY7s5F3YQa" resolve="needsFetch" />
                  <node concept="13iPFW" id="2eDSGe9czlA" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTs0a" role="3clFbw">
            <ref role="3cqZAo" node="1GEzjKC9gpk" resolve="needsFetch" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="57YmpYyL8LS" role="3clF46">
        <property role="TrG5h" value="artifacts" />
        <node concept="3uibUv" id="57YmpYyL8LT" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:450ejGzgHe7" resolve="VisibleArtifacts" />
        </node>
      </node>
      <node concept="37vLTG" id="57YmpYyL8LU" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="57YmpYyL8LV" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:57YmpYyL8Fe" resolve="RequiredDependenciesBuilder" />
        </node>
      </node>
      <node concept="3cqZAl" id="57YmpYyL8LW" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5HVSRHdVMJK">
    <property role="3GE5qa" value="Layout" />
    <ref role="13h7C2" to="kdzh:5HVSRHdUrHI" resolve="BuildMpsLayout_Plugin" />
    <node concept="13i0hz" id="1bWeed$owqF" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="appendName" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:1bWeed$ownT" resolve="appendName" />
      <node concept="3Tm1VV" id="1bWeed$owqG" role="1B3o_S" />
      <node concept="3clFbS" id="1bWeed$owqH" role="3clF47">
        <node concept="3clFbJ" id="1bWeed$oGXX" role="3cqZAp">
          <node concept="3clFbS" id="1bWeed$oGXY" role="3clFbx">
            <node concept="3clFbF" id="1bWeed$owsi" role="3cqZAp">
              <node concept="2OqwBi" id="1bWeed$ows$" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgheHy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bWeed$owqI" resolve="sb" />
                </node>
                <node concept="liA8E" id="1bWeed$owsE" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="1bWeed$owsF" role="37wK5m">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1bWeed$oGYi" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm7dv" role="2Oq$k0">
              <ref role="3cqZAo" node="1bWeed$oGXU" resolve="parent" />
            </node>
            <node concept="1mIQ4w" id="1bWeed$oGYr" role="2OqNvi">
              <node concept="chp4Y" id="1bWeed$oGYt" role="cj9EA">
                <ref role="cht4Q" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bWeed$owqV" role="3cqZAp">
          <node concept="2OqwBi" id="1bWeed$owrd" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmNFV" role="2Oq$k0">
              <ref role="3cqZAo" node="1bWeed$owqI" resolve="sb" />
            </node>
            <node concept="liA8E" id="1bWeed$owrj" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="1bWeed$ows3" role="37wK5m">
                <node concept="2OqwBi" id="1bWeed$owrB" role="2Oq$k0">
                  <node concept="2OqwBi" id="5HVSRHdVMMR" role="2Oq$k0">
                    <node concept="13iPFW" id="1bWeed$owrk" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5HVSRHdVMMX" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5HVSRHdVMN3" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:5HVSRHdVMMm" />
                  </node>
                </node>
                <node concept="2qgKlT" id="1bWeed$owsb" role="2OqNvi">
                  <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                  <node concept="10Nm6u" id="1bWeed$owse" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1bWeed$oGXU" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="1bWeed$oGXV" role="1tU5fm">
          <ref role="ehGHo" to="3ior:6bGbH3Svq63" resolve="BuildLayout_PathElement" />
        </node>
      </node>
      <node concept="37vLTG" id="1bWeed$owqI" role="3clF46">
        <property role="TrG5h" value="sb" />
        <node concept="3uibUv" id="1bWeed$owqJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="3cqZAl" id="1bWeed$owqK" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6bGbH3SvRrf" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="unpack" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:6bGbH3Svq6g" resolve="unpack" />
      <node concept="3Tm1VV" id="6bGbH3SvRrg" role="1B3o_S" />
      <node concept="3clFbS" id="6bGbH3SvRrh" role="3clF47">
        <node concept="3SKdUt" id="5HVSRHdXHdI" role="3cqZAp">
          <node concept="3SKdUq" id="5HVSRHdXHdJ" role="3SKWNk">
            <property role="3SKdUp" value="TODO extract! (it is a copy of Folder behavior)" />
          </node>
        </node>
        <node concept="3cpWs8" id="6bGbH3SvRrr" role="3cqZAp">
          <node concept="3cpWsn" id="6bGbH3SvRrs" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="6bGbH3SvRrt" role="1tU5fm">
              <ref role="ehGHo" to="3ior:6bGbH3Svq63" resolve="BuildLayout_PathElement" />
            </node>
            <node concept="2OqwBi" id="6bGbH3SvRrK" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmcmB" role="2Oq$k0">
                <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
              </node>
              <node concept="liA8E" id="6bGbH3SvRrP" role="2OqNvi">
                <ref role="37wK5l" to="o3n2:6bGbH3Svthg" resolve="parent" />
                <node concept="13iPFW" id="6bGbH3SvRrQ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bGbH3SvTLH" role="3cqZAp">
          <node concept="3cpWsn" id="6bGbH3SvTLI" role="3cpWs9">
            <property role="TrG5h" value="parentLocation" />
            <node concept="17QB3L" id="6bGbH3SvTLJ" role="1tU5fm" />
            <node concept="2OqwBi" id="41__iZjl72t" role="33vP2m">
              <node concept="2OqwBi" id="41__iZjl726" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxghiCc" role="2Oq$k0">
                  <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
                </node>
                <node concept="liA8E" id="41__iZjl72c" role="2OqNvi">
                  <ref role="37wK5l" to="o3n2:41__iZjkZlc" resolve="contentLocations" />
                </node>
              </node>
              <node concept="liA8E" id="41__iZjl72z" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="3GM_nagTtbQ" role="37wK5m">
                  <ref role="3cqZAo" node="6bGbH3SvRrs" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5FtnUVJQbz_" role="3cqZAp">
          <node concept="3cpWsn" id="5FtnUVJQbzA" role="3cpWs9">
            <property role="TrG5h" value="folderLocation" />
            <node concept="17QB3L" id="5FtnUVJQbzB" role="1tU5fm" />
            <node concept="3cpWs3" id="1bWeed$oUjS" role="33vP2m">
              <node concept="3cpWs3" id="5FtnUVJQbzD" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTyzV" role="3uHU7B">
                  <ref role="3cqZAo" node="6bGbH3SvTLI" resolve="parentLocation" />
                </node>
                <node concept="Xl_RD" id="5FtnUVJQbzF" role="3uHU7w">
                  <property role="Xl_RC" value="/" />
                </node>
              </node>
              <node concept="2OqwBi" id="1bWeed$oUkc" role="3uHU7w">
                <node concept="2OqwBi" id="5FtnUVJQbzJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="5HVSRHdXHdt" role="2Oq$k0">
                    <node concept="13iPFW" id="5FtnUVJQbzK" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5HVSRHdXHd_" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5HVSRHdXHdB" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:5HVSRHdVMMm" />
                  </node>
                </node>
                <node concept="2qgKlT" id="1bWeed$oUki" role="2OqNvi">
                  <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                  <node concept="2OqwBi" id="1bWeed$oUk$" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxgmad1" role="2Oq$k0">
                      <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="1bWeed$oUkD" role="2OqNvi">
                      <ref role="37wK5l" to="o3n2:1bWeed$oUju" resolve="getMacroHelper" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6bGbH3SvTLQ" role="3cqZAp">
          <node concept="2OqwBi" id="6bGbH3SvTM8" role="3clFbG">
            <node concept="2OqwBi" id="41__iZjl74n" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxghf_l" role="2Oq$k0">
                <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
              </node>
              <node concept="liA8E" id="41__iZjl74t" role="2OqNvi">
                <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
              </node>
            </node>
            <node concept="liA8E" id="6bGbH3SvTMd" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="13iPFW" id="6bGbH3SvTMe" role="37wK5m" />
              <node concept="37vLTw" id="3GM_nagTxbE" role="37wK5m">
                <ref role="3cqZAo" node="5FtnUVJQbzA" resolve="folderLocation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FtnUVJQbzN" role="3cqZAp">
          <node concept="2OqwBi" id="5FtnUVJQbzO" role="3clFbG">
            <node concept="2OqwBi" id="5FtnUVJQbzP" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm6wu" role="2Oq$k0">
                <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
              </node>
              <node concept="liA8E" id="5FtnUVJQbzR" role="2OqNvi">
                <ref role="37wK5l" to="o3n2:41__iZjkZlc" resolve="contentLocations" />
              </node>
            </node>
            <node concept="liA8E" id="5FtnUVJQbzS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="13iPFW" id="5FtnUVJQbzT" role="37wK5m" />
              <node concept="37vLTw" id="3GM_nagTyCc" role="37wK5m">
                <ref role="3cqZAo" node="5FtnUVJQbzA" resolve="folderLocation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1VeJpqZpQOm" role="3cqZAp">
          <node concept="2GrKxI" id="1VeJpqZpQOn" role="2Gsz3X">
            <property role="TrG5h" value="ic" />
          </node>
          <node concept="2OqwBi" id="1VeJpqZpQSE" role="2GsD0m">
            <node concept="2OqwBi" id="1VeJpqZpQPb" role="2Oq$k0">
              <node concept="2OqwBi" id="1VeJpqZpQOJ" role="2Oq$k0">
                <node concept="13iPFW" id="1VeJpqZpQOq" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1VeJpqZpQOP" role="2OqNvi">
                  <ref role="3TtcxE" to="3ior:6qcrfIJF4Me" />
                </node>
              </node>
              <node concept="3zZkjj" id="1VeJpqZpQPh" role="2OqNvi">
                <node concept="1bVj0M" id="1VeJpqZpQPi" role="23t8la">
                  <node concept="3clFbS" id="1VeJpqZpQPj" role="1bW5cS">
                    <node concept="3clFbF" id="1VeJpqZpQPm" role="3cqZAp">
                      <node concept="2OqwBi" id="1VeJpqZpQPG" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxglJQT" role="2Oq$k0">
                          <ref role="3cqZAo" node="1VeJpqZpQPk" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="1VeJpqZpQPM" role="2OqNvi">
                          <node concept="chp4Y" id="1VeJpqZpQPO" role="cj9EA">
                            <ref role="cht4Q" to="3ior:4RsV8qJBXHj" resolve="BuildLayout_ImportContent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1VeJpqZpQPk" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1VeJpqZpQPl" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$u5V9" id="1VeJpqZpQSK" role="2OqNvi">
              <node concept="1bVj0M" id="1VeJpqZpQSL" role="23t8la">
                <node concept="3clFbS" id="1VeJpqZpQSM" role="1bW5cS">
                  <node concept="3clFbF" id="1VeJpqZpQSP" role="3cqZAp">
                    <node concept="1PxgMI" id="1VeJpqZpQTb" role="3clFbG">
                      <ref role="1PxNhF" to="3ior:4RsV8qJBXHj" resolve="BuildLayout_ImportContent" />
                      <node concept="37vLTw" id="2BHiRxgm8ze" role="1PxMeX">
                        <ref role="3cqZAo" node="1VeJpqZpQSN" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1VeJpqZpQSN" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1VeJpqZpQSO" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1VeJpqZpQOp" role="2LFqv$">
            <node concept="3cpWs8" id="1VeJpqZpTaP" role="3cqZAp">
              <node concept="3cpWsn" id="1VeJpqZpTaQ" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1VeJpqZpTaR" role="1tU5fm">
                  <ref role="ehGHo" to="3ior:6bGbH3Svq63" resolve="BuildLayout_PathElement" />
                </node>
                <node concept="1PxgMI" id="1VeJpqZpTaX" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <ref role="1PxNhF" to="3ior:6bGbH3Svq63" resolve="BuildLayout_PathElement" />
                  <node concept="2OqwBi" id="1VeJpqZpTaT" role="1PxMeX">
                    <node concept="2GrUjf" id="1VeJpqZpTaU" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1VeJpqZpQOn" resolve="ic" />
                    </node>
                    <node concept="3TrEf2" id="1VeJpqZpTaV" role="2OqNvi">
                      <ref role="3Tt5mk" to="3ior:4RsV8qJBXHl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1VeJpqZpTb0" role="3cqZAp">
              <node concept="3clFbS" id="1VeJpqZpTb1" role="3clFbx">
                <node concept="3SKdUt" id="1VeJpqZqiVO" role="3cqZAp">
                  <node concept="3SKdUq" id="1VeJpqZqiVP" role="3SKWNk">
                    <property role="3SKdUp" value="note: if node is imported directly - do not override its original location" />
                  </node>
                </node>
                <node concept="3clFbJ" id="1VeJpqZqiTM" role="3cqZAp">
                  <node concept="3clFbS" id="1VeJpqZqiTN" role="3clFbx">
                    <node concept="3clFbF" id="1VeJpqZpQTh" role="3cqZAp">
                      <node concept="2OqwBi" id="1VeJpqZpQU1" role="3clFbG">
                        <node concept="2OqwBi" id="1VeJpqZpQTB" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxgm8c8" role="2Oq$k0">
                            <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
                          </node>
                          <node concept="liA8E" id="1VeJpqZpQTG" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1VeJpqZpQU7" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                          <node concept="37vLTw" id="3GM_nagT$eR" role="37wK5m">
                            <ref role="3cqZAo" node="1VeJpqZpTaQ" resolve="node" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTswE" role="37wK5m">
                            <ref role="3cqZAo" node="5FtnUVJQbzA" resolve="folderLocation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1VeJpqZqiUI" role="3clFbw">
                    <node concept="2OqwBi" id="1VeJpqZqiUJ" role="3fr31v">
                      <node concept="2OqwBi" id="1VeJpqZqiUK" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxgmiZL" role="2Oq$k0">
                          <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
                        </node>
                        <node concept="liA8E" id="1VeJpqZqiUM" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1VeJpqZqiUN" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                        <node concept="37vLTw" id="3GM_nagTzKW" role="37wK5m">
                          <ref role="3cqZAo" node="1VeJpqZpTaQ" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1VeJpqZqiUQ" role="3cqZAp">
                  <node concept="3clFbS" id="1VeJpqZqiUR" role="3clFbx">
                    <node concept="3clFbF" id="1VeJpqZpTbx" role="3cqZAp">
                      <node concept="2OqwBi" id="1VeJpqZpTch" role="3clFbG">
                        <node concept="2OqwBi" id="1VeJpqZpTbR" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxglQzu" role="2Oq$k0">
                            <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
                          </node>
                          <node concept="liA8E" id="1VeJpqZpTbW" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:41__iZjkZlc" resolve="contentLocations" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1VeJpqZpTcm" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                          <node concept="37vLTw" id="3GM_nagTrFn" role="37wK5m">
                            <ref role="3cqZAo" node="1VeJpqZpTaQ" resolve="node" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTrHk" role="37wK5m">
                            <ref role="3cqZAo" node="5FtnUVJQbzA" resolve="folderLocation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1VeJpqZqiUU" role="3clFbw">
                    <node concept="2OqwBi" id="1VeJpqZqiVF" role="3fr31v">
                      <node concept="2OqwBi" id="1VeJpqZqiVh" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxglMIb" role="2Oq$k0">
                          <ref role="3cqZAo" node="6bGbH3SvRri" resolve="helper" />
                        </node>
                        <node concept="liA8E" id="1VeJpqZqiVm" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:41__iZjkZlc" resolve="contentLocations" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1VeJpqZqiVL" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                        <node concept="37vLTw" id="3GM_nagTsjf" role="37wK5m">
                          <ref role="3cqZAo" node="1VeJpqZpTaQ" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1VeJpqZpTbp" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT$aF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1VeJpqZpTaQ" resolve="node" />
                </node>
                <node concept="3x8VRR" id="1VeJpqZpTbv" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6bGbH3SvRri" role="3clF46">
        <property role="TrG5h" value="helper" />
        <node concept="3uibUv" id="6bGbH3SvRrj" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:2fLy7QGT29I" resolve="UnpackHelper" />
        </node>
      </node>
      <node concept="37vLTG" id="1SFCUA31XxL" role="3clF46">
        <property role="TrG5h" value="artifacts" />
        <node concept="3uibUv" id="1SFCUA31XxM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1SFCUA31XxN" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6bGbH3SvRrk" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6b4RkXS8Dnn" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="location" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:6b4RkXS8sT2" resolve="location" />
      <node concept="3Tm1VV" id="6b4RkXS8Dno" role="1B3o_S" />
      <node concept="3clFbS" id="6b4RkXS8Dnp" role="3clF47">
        <node concept="3clFbJ" id="6b4RkXS8Doq" role="3cqZAp">
          <node concept="3clFbS" id="6b4RkXS8Dor" role="3clFbx">
            <node concept="3cpWs8" id="6b4RkXS8Dos" role="3cqZAp">
              <node concept="3cpWsn" id="6b4RkXS8Dot" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="6b4RkXS8Dou" role="1tU5fm" />
                <node concept="10QFUN" id="6b4RkXS8Dov" role="33vP2m">
                  <node concept="3Tqbb2" id="6b4RkXS8Dow" role="10QFUM" />
                  <node concept="37vLTw" id="2BHiRxgkWop" role="10QFUP">
                    <ref role="3cqZAo" node="6b4RkXS8Dns" resolve="artifactId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6b4RkXS8DoY" role="3cqZAp">
              <node concept="3clFbS" id="6b4RkXS8DoZ" role="3clFbx">
                <node concept="3cpWs8" id="5MsCDTLLUUZ" role="3cqZAp">
                  <node concept="3cpWsn" id="5MsCDTLLUV0" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="3Tqbb2" id="5MsCDTLLUV1" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                    </node>
                    <node concept="1PxgMI" id="5MsCDTLLUVo" role="33vP2m">
                      <ref role="1PxNhF" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                      <node concept="37vLTw" id="3GM_nagTxch" role="1PxMeX">
                        <ref role="3cqZAo" node="6b4RkXS8Dot" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="347AdIRN2XD" role="3cqZAp">
                  <node concept="3cpWsn" id="347AdIRN2XG" role="3cpWs9">
                    <property role="TrG5h" value="isGenerator" />
                    <node concept="2OqwBi" id="347AdIRN3yY" role="33vP2m">
                      <node concept="1mIQ4w" id="347AdIRN5M4" role="2OqNvi">
                        <node concept="chp4Y" id="347AdIRN5M9" role="cj9EA">
                          <ref role="cht4Q" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="347AdIRN3jY" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                      </node>
                    </node>
                    <node concept="10P_77" id="347AdIRN2XB" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3clFbJ" id="347AdIRN6j1" role="3cqZAp">
                  <node concept="37vLTw" id="347AdIRN6EK" role="3clFbw">
                    <ref role="3cqZAo" node="347AdIRN2XG" resolve="isGenerator" />
                  </node>
                  <node concept="3clFbS" id="347AdIRN6j4" role="3clFbx">
                    <node concept="3clFbF" id="347AdIRN7ai" role="3cqZAp">
                      <node concept="37vLTI" id="347AdIRN7hO" role="3clFbG">
                        <node concept="2OqwBi" id="347AdIRN7WW" role="37vLTx">
                          <node concept="2qgKlT" id="347AdIRNcoG" role="2OqNvi">
                            <ref role="37wK5l" node="7YI57w6ZMdZ" resolve="getSourceLanguage" />
                          </node>
                          <node concept="1PxgMI" id="347AdIRN7J1" role="2Oq$k0">
                            <ref role="1PxNhF" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                            <node concept="37vLTw" id="347AdIRN7Bx" role="1PxMeX">
                              <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="347AdIRN7ah" role="37vLTJ">
                          <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1RpjEsetwet" role="3cqZAp">
                  <node concept="3cpWsn" id="1RpjEsetweu" role="3cpWs9">
                    <property role="TrG5h" value="container" />
                    <node concept="3Tqbb2" id="1RpjEsetwev" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:5HVSRHdUrJF" resolve="BuildMps_IdeaPluginContent" />
                    </node>
                    <node concept="2OqwBi" id="1RpjEsetwew" role="33vP2m">
                      <node concept="2OqwBi" id="1RpjEsetwex" role="2Oq$k0">
                        <node concept="2OqwBi" id="1RpjEsetwey" role="2Oq$k0">
                          <node concept="13iPFW" id="1RpjEsetwez" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1RpjEsetwe$" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="1RpjEsetwe_" role="2OqNvi">
                          <ref role="3TtcxE" to="kdzh:5HVSRHdUrJE" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="1RpjEsetweA" role="2OqNvi">
                        <node concept="1bVj0M" id="1RpjEsetweB" role="23t8la">
                          <node concept="3clFbS" id="1RpjEsetweC" role="1bW5cS">
                            <node concept="3clFbF" id="1RpjEsetweD" role="3cqZAp">
                              <node concept="2OqwBi" id="1RpjEsetweE" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgmbAE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1RpjEsetweI" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="1RpjEsetweG" role="2OqNvi">
                                  <ref role="37wK5l" node="5FtnUVJQES1" resolve="exports" />
                                  <node concept="37vLTw" id="20z9IKS0a8A" role="37wK5m">
                                    <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1RpjEsetweI" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1RpjEsetweJ" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6b4RkXS8Dq9" role="3cqZAp">
                  <node concept="2OqwBi" id="1RpjEsetwf6" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagT$ju" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RpjEsetweu" resolve="container" />
                    </node>
                    <node concept="3x8VRR" id="1RpjEsetwfc" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="6b4RkXS8Dqa" role="3clFbx">
                    <node concept="3SKdUt" id="7cOEBlPTsyd" role="3cqZAp">
                      <node concept="3SKdUq" id="7cOEBlPTsye" role="3SKWNk">
                        <property role="3SKdUp" value="todo: seems to be rather messy" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5MsCDTLLUUu" role="3cqZAp">
                      <node concept="3cpWsn" id="5MsCDTLLUUv" role="3cpWs9">
                        <property role="TrG5h" value="group" />
                        <node concept="1PxgMI" id="1RpjEsetwff" role="33vP2m">
                          <property role="1BlNFB" value="true" />
                          <ref role="1PxNhF" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                          <node concept="37vLTw" id="3GM_nagTsoL" role="1PxMeX">
                            <ref role="3cqZAo" node="1RpjEsetweu" resolve="container" />
                          </node>
                        </node>
                        <node concept="3Tqbb2" id="5MsCDTLLUUw" role="1tU5fm">
                          <ref role="ehGHo" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7cOEBlPS4vD" role="3cqZAp">
                      <node concept="3clFbS" id="7cOEBlPS4vE" role="3clFbx">
                        <node concept="3cpWs6" id="7cOEBlPT2gx" role="3cqZAp">
                          <node concept="10Nm6u" id="7cOEBlPT2gz" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="1Wc70l" id="7cOEBlPT2hk" role="3clFbw">
                        <node concept="2OqwBi" id="7cOEBlPT2hG" role="3uHU7B">
                          <node concept="37vLTw" id="3GM_nagTt48" role="2Oq$k0">
                            <ref role="3cqZAo" node="5MsCDTLLUUv" resolve="group" />
                          </node>
                          <node concept="3x8VRR" id="7cOEBlPT2hM" role="2OqNvi" />
                        </node>
                        <node concept="2OqwBi" id="7cOEBlPRF52" role="3uHU7w">
                          <node concept="2qgKlT" id="7cOEBlPTrI_" role="2OqNvi">
                            <ref role="37wK5l" node="7cOEBlPTrI3" resolve="isCustomPackaging" />
                            <node concept="37vLTw" id="3GM_nagTvSS" role="37wK5m">
                              <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTvM5" role="2Oq$k0">
                            <ref role="3cqZAo" node="5MsCDTLLUUv" resolve="group" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4VGsF6KN0yD" role="3cqZAp">
                      <node concept="3clFbS" id="4VGsF6KN0yG" role="3clFbx">
                        <node concept="3cpWs6" id="4VGsF6KN4Eb" role="3cqZAp">
                          <node concept="10Nm6u" id="4VGsF6KN4Eg" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="1Wc70l" id="4VGsF6KN2JD" role="3clFbw">
                        <node concept="2OqwBi" id="4VGsF6KN30A" role="3uHU7w">
                          <node concept="1PxgMI" id="4VGsF6KN2S3" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1PxNhF" to="kdzh:5HVSRHdUrJs" resolve="BuildMps_IdeaPluginModule" />
                            <node concept="37vLTw" id="4VGsF6KN2KY" role="1PxMeX">
                              <ref role="3cqZAo" node="1RpjEsetweu" resolve="container" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="4VGsF6KN4E9" role="2OqNvi">
                            <ref role="3TsBF5" to="kdzh:3vXGXT8bfbv" resolve="customPackaging" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4VGsF6KN0GE" role="3uHU7B">
                          <node concept="37vLTw" id="4VGsF6KN0zD" role="2Oq$k0">
                            <ref role="3cqZAo" node="1RpjEsetweu" resolve="container" />
                          </node>
                          <node concept="1mIQ4w" id="4VGsF6KN2oi" role="2OqNvi">
                            <node concept="chp4Y" id="4VGsF6KN2on" role="cj9EA">
                              <ref role="cht4Q" to="kdzh:5HVSRHdUrJs" resolve="BuildMps_IdeaPluginModule" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5Y_X_gYZnVj" role="3cqZAp">
                      <node concept="3cpWsn" id="5Y_X_gYZnVm" role="3cpWs9">
                        <property role="TrG5h" value="baseLocation" />
                        <node concept="17QB3L" id="5Y_X_gYZnVh" role="1tU5fm" />
                        <node concept="3cpWs3" id="5Y_X_gYZqLC" role="33vP2m">
                          <node concept="3cpWs3" id="5Y_X_gYZqLD" role="3uHU7B">
                            <node concept="2OqwBi" id="5Y_X_gYZqLE" role="3uHU7B">
                              <node concept="2OqwBi" id="5Y_X_gYZqLF" role="2Oq$k0">
                                <node concept="37vLTw" id="5Y_X_gYZqLG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6b4RkXS8Dnq" resolve="helper" />
                                </node>
                                <node concept="liA8E" id="5Y_X_gYZqLH" role="2OqNvi">
                                  <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5Y_X_gYZqLI" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                <node concept="13iPFW" id="5Y_X_gYZqLJ" role="37wK5m" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5Y_X_gYZqLK" role="3uHU7w">
                              <property role="Xl_RC" value="/languages/" />
                            </node>
                          </node>
                          <node concept="1eOMI4" id="5Y_X_gYZqLL" role="3uHU7w">
                            <node concept="3K4zz7" id="5Y_X_gYZqLM" role="1eOMHV">
                              <node concept="3cpWs3" id="5Y_X_gYZqLN" role="3K4E3e">
                                <node concept="Xl_RD" id="5Y_X_gYZqLO" role="3uHU7w">
                                  <property role="Xl_RC" value="/" />
                                </node>
                                <node concept="2OqwBi" id="5Y_X_gYZqLP" role="3uHU7B">
                                  <node concept="2OqwBi" id="5Y_X_gYZqLQ" role="2Oq$k0">
                                    <node concept="37vLTw" id="5Y_X_gYZqLR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5MsCDTLLUUv" resolve="group" />
                                    </node>
                                    <node concept="3TrEf2" id="5Y_X_gYZqLS" role="2OqNvi">
                                      <ref role="3Tt5mk" to="kdzh:5HVSRHdUL82" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="5Y_X_gYZqLT" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="5Y_X_gYZqLU" role="3K4GZi">
                                <property role="Xl_RC" value="" />
                              </node>
                              <node concept="3y3z36" id="5Y_X_gYZqLV" role="3K4Cdx">
                                <node concept="37vLTw" id="5Y_X_gYZqLW" role="3uHU7B">
                                  <ref role="3cqZAo" node="5MsCDTLLUUv" resolve="group" />
                                </node>
                                <node concept="10Nm6u" id="5Y_X_gYZqLX" role="3uHU7w" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5Y_X_gYZuwl" role="3cqZAp">
                      <node concept="3clFbS" id="5Y_X_gYZuwo" role="3clFbx">
                        <node concept="3SKdUt" id="5Y_X_gZ12JS" role="3cqZAp">
                          <node concept="3SKdUq" id="5Y_X_gZ15_N" role="3SKWNk">
                            <property role="3SKdUp" value="devkits are just copied to languages/ from source" />
                          </node>
                        </node>
                        <node concept="3cpWs6" id="5Y_X_gYZEaW" role="3cqZAp">
                          <node concept="3cpWs3" id="5Y_X_gYZIwe" role="3cqZAk">
                            <node concept="2OqwBi" id="5Y_X_gZ0j7s" role="3uHU7w">
                              <node concept="2OqwBi" id="5Y_X_gYZOXM" role="2Oq$k0">
                                <node concept="1PxgMI" id="5Y_X_gYZMFh" role="2Oq$k0">
                                  <ref role="1PxNhF" to="kdzh:hS0KzPOwoe" resolve="BuildMps_DevKit" />
                                  <node concept="37vLTw" id="5Y_X_gYZJvY" role="1PxMeX">
                                    <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="5Y_X_gYZRs5" role="2OqNvi">
                                  <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="5Y_X_gZ0l9L" role="2OqNvi">
                                <ref role="37wK5l" to="vbkb:1bWeed$oUb5" resolve="getLastSegment" />
                                <node concept="10Nm6u" id="5Y_X_gZ0okc" role="37wK5m" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5Y_X_gYZFgU" role="3uHU7B">
                              <ref role="3cqZAo" node="5Y_X_gYZnVm" resolve="baseLocation" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5Y_X_gYZ$39" role="3clFbw">
                        <node concept="37vLTw" id="5Y_X_gYZxvI" role="2Oq$k0">
                          <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                        </node>
                        <node concept="1mIQ4w" id="5Y_X_gYZ_af" role="2OqNvi">
                          <node concept="chp4Y" id="5Y_X_gYZBDJ" role="cj9EA">
                            <ref role="cht4Q" to="kdzh:hS0KzPOwoe" resolve="BuildMps_DevKit" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="5Y_X_gZ0sOO" role="9aQIa">
                        <node concept="3clFbS" id="5Y_X_gZ0sOP" role="9aQI4">
                          <node concept="3cpWs6" id="5Y_X_gZ0tYf" role="3cqZAp">
                            <node concept="3cpWs3" id="5Y_X_gZ0RY0" role="3cqZAk">
                              <node concept="Xl_RD" id="5Y_X_gZ0GvR" role="3uHU7w">
                                <property role="Xl_RC" value=".jar" />
                              </node>
                              <node concept="3cpWs3" id="5Y_X_gZ0GvO" role="3uHU7B">
                                <node concept="3cpWs3" id="5Y_X_gZ0yw3" role="3uHU7B">
                                  <node concept="37vLTw" id="5Y_X_gZ0v7d" role="3uHU7B">
                                    <ref role="3cqZAo" node="5Y_X_gYZnVm" resolve="baseLocation" />
                                  </node>
                                  <node concept="2OqwBi" id="5Y_X_gZ0AXu" role="3uHU7w">
                                    <node concept="37vLTw" id="5Y_X_gZ0zCD" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5MsCDTLLUV0" resolve="module" />
                                    </node>
                                    <node concept="3TrcHB" id="5Y_X_gZ0Cup" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="1eOMI4" id="5Y_X_gZ0TuA" role="3uHU7w">
                                  <node concept="3K4zz7" id="5Y_X_gZ0TuB" role="1eOMHV">
                                    <node concept="Xl_RD" id="5Y_X_gZ0TuC" role="3K4GZi">
                                      <property role="Xl_RC" value="" />
                                    </node>
                                    <node concept="Xl_RD" id="5Y_X_gZ0TuD" role="3K4E3e">
                                      <property role="Xl_RC" value="-generator" />
                                    </node>
                                    <node concept="37vLTw" id="5Y_X_gZ0TuE" role="3K4Cdx">
                                      <ref role="3cqZAo" node="347AdIRN2XG" resolve="isGenerator" />
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
                <node concept="3cpWs6" id="6b4RkXS8Dp0" role="3cqZAp">
                  <node concept="10Nm6u" id="6b4RkXS8Dqg" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="6b4RkXS8Dph" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTrNF" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b4RkXS8Dot" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="6b4RkXS8Dpj" role="2OqNvi">
                  <node concept="chp4Y" id="6b4RkXS8DrO" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7cOEBlPPwhD" role="3cqZAp">
              <node concept="3clFbS" id="7cOEBlPPwhE" role="3clFbx">
                <node concept="3cpWs6" id="7cOEBlPPwib" role="3cqZAp">
                  <node concept="2OqwBi" id="7cOEBlPPwid" role="3cqZAk">
                    <node concept="2OqwBi" id="7cOEBlPPwie" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxgmr6N" role="2Oq$k0">
                        <ref role="3cqZAo" node="6b4RkXS8Dnq" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="7cOEBlPPwig" role="2OqNvi">
                        <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7cOEBlPPwih" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="13iPFW" id="7cOEBlPPwii" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7cOEBlPPwi2" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT$_T" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b4RkXS8Dot" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="7cOEBlPPwi8" role="2OqNvi">
                  <node concept="chp4Y" id="7cOEBlPPwia" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6b4RkXS8Dpl" role="3clFbw">
            <node concept="3uibUv" id="6b4RkXS8Dpm" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmLqI" role="2ZW6bz">
              <ref role="3cqZAo" node="6b4RkXS8Dns" resolve="artifactId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6b4RkXS8Dnv" role="3cqZAp">
          <node concept="2OqwBi" id="6b4RkXS8Dnw" role="3clFbG">
            <node concept="13iAh5" id="6b4RkXS8Dnx" role="2Oq$k0" />
            <node concept="2qgKlT" id="6b4RkXS8Dny" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:6b4RkXS8sT2" resolve="location" />
              <node concept="37vLTw" id="2BHiRxglawU" role="37wK5m">
                <ref role="3cqZAo" node="6b4RkXS8Dnq" resolve="helper" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm9Oh" role="37wK5m">
                <ref role="3cqZAo" node="6b4RkXS8Dns" resolve="artifactId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6b4RkXS8Dnq" role="3clF46">
        <property role="TrG5h" value="helper" />
        <node concept="3uibUv" id="6b4RkXS8Dnr" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:41__iZjkZ0W" resolve="DependenciesHelper" />
        </node>
      </node>
      <node concept="37vLTG" id="6b4RkXS8Dns" role="3clF46">
        <property role="TrG5h" value="artifactId" />
        <node concept="3uibUv" id="6b4RkXS8Dnt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="17QB3L" id="6b4RkXS8Dnu" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6Vg2dzyJ6j4" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="exports" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:5FtnUVJQES1" resolve="exports" />
      <node concept="3Tm1VV" id="6Vg2dzyJ6j5" role="1B3o_S" />
      <node concept="3clFbS" id="6Vg2dzyJ6j6" role="3clF47">
        <node concept="3SKdUt" id="5HVSRHdXHdQ" role="3cqZAp">
          <node concept="3SKdUq" id="5HVSRHdXHdR" role="3SKWNk">
            <property role="3SKdUp" value="TODO extract! (it is a copy of Folder behavior)" />
          </node>
        </node>
        <node concept="3clFbJ" id="6Vg2dzyL2PZ" role="3cqZAp">
          <node concept="3clFbS" id="6Vg2dzyL2Q0" role="3clFbx">
            <node concept="3cpWs8" id="6Vg2dzyL2QU" role="3cqZAp">
              <node concept="3cpWsn" id="6Vg2dzyL2QV" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="6Vg2dzyL2QW" role="1tU5fm" />
                <node concept="10QFUN" id="6Vg2dzyL2QY" role="33vP2m">
                  <node concept="3Tqbb2" id="6Vg2dzyL2QZ" role="10QFUM" />
                  <node concept="37vLTw" id="2BHiRxglguE" role="10QFUP">
                    <ref role="3cqZAo" node="6Vg2dzyJ6j7" resolve="artifactId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7cOEBlPPrgp" role="3cqZAp">
              <node concept="3clFbS" id="7cOEBlPPrgq" role="3clFbx">
                <node concept="3cpWs6" id="7cOEBlPPrgV" role="3cqZAp">
                  <node concept="3clFbC" id="7cOEBlPPwh$" role="3cqZAk">
                    <node concept="37vLTw" id="3GM_nagTAiF" role="3uHU7w">
                      <ref role="3cqZAo" node="6Vg2dzyL2QV" resolve="node" />
                    </node>
                    <node concept="2OqwBi" id="7cOEBlPPrhi" role="3uHU7B">
                      <node concept="13iPFW" id="7cOEBlPPrgX" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7cOEBlPPrho" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7cOEBlPPrgM" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTvFY" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Vg2dzyL2QV" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="7cOEBlPPrgS" role="2OqNvi">
                  <node concept="chp4Y" id="7cOEBlPPrgU" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6Vg2dzyL2R3" role="3cqZAp">
              <node concept="3clFbS" id="6Vg2dzyL2R4" role="3clFbx">
                <node concept="3cpWs6" id="6Vg2dzyL2RC" role="3cqZAp">
                  <node concept="2OqwBi" id="6Vg2dzyL2Sr" role="3cqZAk">
                    <node concept="2OqwBi" id="6Vg2dzyL2RZ" role="2Oq$k0">
                      <node concept="13iPFW" id="6Vg2dzyL2RE" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="6Vg2dzyL2S5" role="2OqNvi">
                        <ref role="3TtcxE" to="3ior:6qcrfIJF4Me" />
                      </node>
                    </node>
                    <node concept="2HwmR7" id="6Vg2dzyL2Sx" role="2OqNvi">
                      <node concept="1bVj0M" id="6Vg2dzyL2Sy" role="23t8la">
                        <node concept="3clFbS" id="6Vg2dzyL2Sz" role="1bW5cS">
                          <node concept="3clFbF" id="6Vg2dzyL2SA" role="3cqZAp">
                            <node concept="1Wc70l" id="6Vg2dzyL2Tf" role="3clFbG">
                              <node concept="3clFbC" id="6Vg2dzyL2U4" role="3uHU7w">
                                <node concept="37vLTw" id="3GM_nagT$pg" role="3uHU7w">
                                  <ref role="3cqZAo" node="6Vg2dzyL2QV" resolve="node" />
                                </node>
                                <node concept="2OqwBi" id="6Vg2dzyL2TX" role="3uHU7B">
                                  <node concept="1PxgMI" id="6Vg2dzyL2TB" role="2Oq$k0">
                                    <ref role="1PxNhF" to="3ior:4RsV8qJBXHj" resolve="BuildLayout_ImportContent" />
                                    <node concept="37vLTw" id="2BHiRxgm7YW" role="1PxMeX">
                                      <ref role="3cqZAo" node="6Vg2dzyL2S$" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="6Vg2dzyL2U3" role="2OqNvi">
                                    <ref role="3Tt5mk" to="3ior:4RsV8qJBXHl" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="6Vg2dzyL2SW" role="3uHU7B">
                                <node concept="37vLTw" id="2BHiRxgmliz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6Vg2dzyL2S$" resolve="it" />
                                </node>
                                <node concept="1mIQ4w" id="6Vg2dzyL2T2" role="2OqNvi">
                                  <node concept="chp4Y" id="6Vg2dzyL2T4" role="cj9EA">
                                    <ref role="cht4Q" to="3ior:4RsV8qJBXHj" resolve="BuildLayout_ImportContent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6Vg2dzyL2S$" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6Vg2dzyL2S_" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6Vg2dzyL2Rs" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT$Vk" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Vg2dzyL2QV" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="6Vg2dzyL2Rx" role="2OqNvi">
                  <node concept="chp4Y" id="6Vg2dzyL2Rz" role="cj9EA">
                    <ref role="cht4Q" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1GEzjKC95oK" role="3cqZAp">
              <node concept="3clFbS" id="1GEzjKC95oL" role="3clFbx">
                <node concept="3cpWs8" id="7cOEBlPT2iD" role="3cqZAp">
                  <node concept="3cpWsn" id="7cOEBlPT2iE" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="3Tqbb2" id="7cOEBlPT2iF" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                    </node>
                    <node concept="1PxgMI" id="7cOEBlPT2iG" role="33vP2m">
                      <ref role="1PxNhF" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                      <node concept="37vLTw" id="3GM_nagTsRo" role="1PxMeX">
                        <ref role="3cqZAo" node="6Vg2dzyL2QV" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="347AdIRML7p" role="3cqZAp">
                  <node concept="2OqwBi" id="347AdIRMMPL" role="3clFbw">
                    <node concept="1mIQ4w" id="347AdIRMOWJ" role="2OqNvi">
                      <node concept="chp4Y" id="347AdIRMOWO" role="cj9EA">
                        <ref role="cht4Q" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="347AdIRMMIh" role="2Oq$k0">
                      <ref role="3cqZAo" node="7cOEBlPT2iE" resolve="module" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="347AdIRML7s" role="3clFbx">
                    <node concept="3clFbF" id="347AdIRMOWR" role="3cqZAp">
                      <node concept="37vLTI" id="347AdIRMP4p" role="3clFbG">
                        <node concept="2OqwBi" id="347AdIRMXTR" role="37vLTx">
                          <node concept="2qgKlT" id="347AdIRN2dY" role="2OqNvi">
                            <ref role="37wK5l" node="7YI57w6ZMdZ" resolve="getSourceLanguage" />
                          </node>
                          <node concept="1PxgMI" id="347AdIRMXFW" role="2Oq$k0">
                            <ref role="1PxNhF" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                            <node concept="37vLTw" id="347AdIRMPjb" role="1PxMeX">
                              <ref role="3cqZAo" node="7cOEBlPT2iE" resolve="module" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="347AdIRMOWQ" role="37vLTJ">
                          <ref role="3cqZAo" node="7cOEBlPT2iE" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4VGsF6KN4Mh" role="3cqZAp">
                  <node concept="3cpWsn" id="4VGsF6KN4Mi" role="3cpWs9">
                    <property role="TrG5h" value="container" />
                    <node concept="3Tqbb2" id="4VGsF6KN4Mj" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:5HVSRHdUrJF" resolve="BuildMps_IdeaPluginContent" />
                    </node>
                    <node concept="2OqwBi" id="4VGsF6KN4Mk" role="33vP2m">
                      <node concept="2OqwBi" id="4VGsF6KN4Ml" role="2Oq$k0">
                        <node concept="2OqwBi" id="4VGsF6KN4Mm" role="2Oq$k0">
                          <node concept="13iPFW" id="4VGsF6KN4Mn" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4VGsF6KN4Mo" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="4VGsF6KN4Mp" role="2OqNvi">
                          <ref role="3TtcxE" to="kdzh:5HVSRHdUrJE" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="4VGsF6KN4Mq" role="2OqNvi">
                        <node concept="1bVj0M" id="4VGsF6KN4Mr" role="23t8la">
                          <node concept="3clFbS" id="4VGsF6KN4Ms" role="1bW5cS">
                            <node concept="3clFbF" id="4VGsF6KN4Mt" role="3cqZAp">
                              <node concept="2OqwBi" id="4VGsF6KN4Mu" role="3clFbG">
                                <node concept="37vLTw" id="4VGsF6KN4Mv" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4VGsF6KN4My" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="4VGsF6KN4Mw" role="2OqNvi">
                                  <ref role="37wK5l" node="5FtnUVJQES1" resolve="exports" />
                                  <node concept="37vLTw" id="4VGsF6KN4Mx" role="37wK5m">
                                    <ref role="3cqZAo" node="7cOEBlPT2iE" resolve="module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="4VGsF6KN4My" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4VGsF6KN4Mz" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4VGsF6KN4P_" role="3cqZAp">
                  <node concept="3cpWsn" id="4VGsF6KN4PA" role="3cpWs9">
                    <property role="TrG5h" value="group" />
                    <node concept="1PxgMI" id="4VGsF6KN4PB" role="33vP2m">
                      <property role="1BlNFB" value="true" />
                      <ref role="1PxNhF" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                      <node concept="37vLTw" id="4VGsF6KN4PC" role="1PxMeX">
                        <ref role="3cqZAo" node="4VGsF6KN4Mi" resolve="container" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="4VGsF6KN4PD" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4VGsF6KN4PE" role="3cqZAp">
                  <node concept="3clFbS" id="4VGsF6KN4PF" role="3clFbx">
                    <node concept="3cpWs6" id="4VGsF6KN4PG" role="3cqZAp">
                      <node concept="3clFbT" id="4VGsF6KN4S6" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="4VGsF6KN4PI" role="3clFbw">
                    <node concept="2OqwBi" id="4VGsF6KN4PJ" role="3uHU7B">
                      <node concept="37vLTw" id="4VGsF6KN4PK" role="2Oq$k0">
                        <ref role="3cqZAo" node="4VGsF6KN4PA" resolve="group" />
                      </node>
                      <node concept="3x8VRR" id="4VGsF6KN4PL" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="4VGsF6KN4PM" role="3uHU7w">
                      <node concept="2qgKlT" id="4VGsF6KN4PN" role="2OqNvi">
                        <ref role="37wK5l" node="7cOEBlPTrI3" resolve="isCustomPackaging" />
                        <node concept="37vLTw" id="4VGsF6KN4PO" role="37wK5m">
                          <ref role="3cqZAo" node="7cOEBlPT2iE" resolve="module" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4VGsF6KN4PP" role="2Oq$k0">
                        <ref role="3cqZAo" node="4VGsF6KN4PA" resolve="group" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4VGsF6KN4PQ" role="3cqZAp">
                  <node concept="3clFbS" id="4VGsF6KN4PR" role="3clFbx">
                    <node concept="3cpWs6" id="4VGsF6KN4PS" role="3cqZAp">
                      <node concept="3clFbT" id="4VGsF6KN5h$" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="4VGsF6KN4PU" role="3clFbw">
                    <node concept="2OqwBi" id="4VGsF6KN4PV" role="3uHU7w">
                      <node concept="1PxgMI" id="4VGsF6KN4PW" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <ref role="1PxNhF" to="kdzh:5HVSRHdUrJs" resolve="BuildMps_IdeaPluginModule" />
                        <node concept="37vLTw" id="4VGsF6KN4PX" role="1PxMeX">
                          <ref role="3cqZAo" node="4VGsF6KN4Mi" resolve="container" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4VGsF6KN4PY" role="2OqNvi">
                        <ref role="3TsBF5" to="kdzh:3vXGXT8bfbv" resolve="customPackaging" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4VGsF6KN4PZ" role="3uHU7B">
                      <node concept="37vLTw" id="4VGsF6KN4Q0" role="2Oq$k0">
                        <ref role="3cqZAo" node="4VGsF6KN4Mi" resolve="container" />
                      </node>
                      <node concept="1mIQ4w" id="4VGsF6KN4Q1" role="2OqNvi">
                        <node concept="chp4Y" id="4VGsF6KN4Q2" role="cj9EA">
                          <ref role="cht4Q" to="kdzh:5HVSRHdUrJs" resolve="BuildMps_IdeaPluginModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4VGsF6KN5Gp" role="3cqZAp">
                  <node concept="3y3z36" id="4VGsF6KN6ad" role="3cqZAk">
                    <node concept="10Nm6u" id="4VGsF6KN6ak" role="3uHU7w" />
                    <node concept="37vLTw" id="4VGsF6KN67m" role="3uHU7B">
                      <ref role="3cqZAo" node="4VGsF6KN4Mi" resolve="container" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1GEzjKC95p9" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTwyq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Vg2dzyL2QV" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="1GEzjKC95pe" role="2OqNvi">
                  <node concept="chp4Y" id="6b4RkXS8DrR" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6Vg2dzyL2QL" role="3clFbw">
            <node concept="3uibUv" id="6Vg2dzyL2QO" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmkhe" role="2ZW6bz">
              <ref role="3cqZAo" node="6Vg2dzyJ6j7" resolve="artifactId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Vg2dzyJ6ja" role="3cqZAp">
          <node concept="2OqwBi" id="6Vg2dzyJ6jb" role="3clFbG">
            <node concept="13iAh5" id="6Vg2dzyJ6jc" role="2Oq$k0" />
            <node concept="2qgKlT" id="6Vg2dzyJ6jd" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:5FtnUVJQES1" resolve="exports" />
              <node concept="37vLTw" id="2BHiRxgm63Y" role="37wK5m">
                <ref role="3cqZAo" node="6Vg2dzyJ6j7" resolve="artifactId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Vg2dzyJ6j7" role="3clF46">
        <property role="TrG5h" value="artifactId" />
        <node concept="3uibUv" id="6Vg2dzyJ6j8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="6Vg2dzyJ6j9" role="3clF45" />
    </node>
    <node concept="13i0hz" id="4Q0JLeVv6N0" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getChildrenOutputDir_WithMacro" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:450ejGzh8bb" resolve="getChildrenOutputDir_WithMacro" />
      <node concept="3Tm1VV" id="4Q0JLeVv6N1" role="1B3o_S" />
      <node concept="3clFbS" id="4Q0JLeVv6N2" role="3clF47">
        <node concept="3clFbF" id="4Q0JLeVv6NS" role="3cqZAp">
          <node concept="BsUDl" id="4Q0JLeVv6NT" role="3clFbG">
            <ref role="37wK5l" node="fzIHCHip1Q" resolve="getOutputPath_WithMacro" />
            <node concept="37vLTw" id="2BHiRxgm6Rx" role="37wK5m">
              <ref role="3cqZAo" node="4Q0JLeVvAbu" resolve="context" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4Q0JLeVv6N3" role="3clF45" />
      <node concept="37vLTG" id="4Q0JLeVvAbu" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4Q0JLeVvAbv" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:4jjtc7WZOAv" resolve="Context" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="fzIHCHip1Q" role="13h7CS">
      <property role="TrG5h" value="getOutputPath_WithMacro" />
      <node concept="3Tm1VV" id="fzIHCHip1R" role="1B3o_S" />
      <node concept="17QB3L" id="fzIHCHip1U" role="3clF45" />
      <node concept="3clFbS" id="fzIHCHip1T" role="3clF47">
        <node concept="3clFbJ" id="4Q0JLeVv6NW" role="3cqZAp">
          <node concept="3clFbS" id="4Q0JLeVv6NX" role="3clFbx">
            <node concept="3cpWs8" id="3DDoTVA59A3" role="3cqZAp">
              <node concept="3cpWsn" id="3DDoTVA59A4" role="3cpWs9">
                <property role="TrG5h" value="parentChildrenTargetDir" />
                <node concept="17QB3L" id="3DDoTVA59A5" role="1tU5fm" />
                <node concept="2OqwBi" id="3DDoTVA59A6" role="33vP2m">
                  <node concept="1PxgMI" id="3DDoTVA59A7" role="2Oq$k0">
                    <ref role="1PxNhF" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
                    <node concept="2OqwBi" id="3DDoTVA59A8" role="1PxMeX">
                      <node concept="13iPFW" id="3DDoTVA59A9" role="2Oq$k0" />
                      <node concept="1mfA1w" id="3DDoTVA59Aa" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3DDoTVA59Ab" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:450ejGzh8bb" resolve="getChildrenOutputDir_WithMacro" />
                    <node concept="37vLTw" id="2BHiRxglf8e" role="37wK5m">
                      <ref role="3cqZAo" node="4Q0JLeVvAbr" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4Q0JLeVv6OI" role="3cqZAp">
              <node concept="3cpWs3" id="3DDoTVA59_L" role="3cqZAk">
                <node concept="2OqwBi" id="5DY7s5F3uRu" role="3uHU7w">
                  <node concept="2OqwBi" id="3DDoTVA59_R" role="2Oq$k0">
                    <node concept="2OqwBi" id="5HVSRHdVMNo" role="2Oq$k0">
                      <node concept="13iPFW" id="3DDoTVA59_O" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5HVSRHdVMNt" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5HVSRHdVMNv" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5HVSRHdVMMm" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="5DY7s5F3uR$" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="2OqwBi" id="5DY7s5F3vhr" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxgmeqU" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Q0JLeVvAbr" resolve="context" />
                      </node>
                      <node concept="liA8E" id="5DY7s5F3vhx" role="2OqNvi">
                        <ref role="37wK5l" to="o3n2:5DY7s5F3vd2" resolve="getMacros" />
                        <node concept="13iPFW" id="5DY7s5F3vhy" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="3DDoTVA59_Z" role="3uHU7B">
                  <node concept="Xl_RD" id="3DDoTVA59A2" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTBaq" role="3uHU7B">
                    <ref role="3cqZAo" node="3DDoTVA59A4" resolve="parentChildrenTargetDir" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4Q0JLeVv6Om" role="3clFbw">
            <node concept="2OqwBi" id="4Q0JLeVv6O_" role="3uHU7w">
              <node concept="2OqwBi" id="4Q0JLeVv6Os" role="2Oq$k0">
                <node concept="13iPFW" id="4Q0JLeVv6Op" role="2Oq$k0" />
                <node concept="1mfA1w" id="4Q0JLeVv6Ox" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="4Q0JLeVv6OF" role="2OqNvi">
                <node concept="chp4Y" id="450ejGzh8bp" role="cj9EA">
                  <ref role="cht4Q" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4Q0JLeVv6Oc" role="3uHU7B">
              <node concept="2OqwBi" id="4Q0JLeVv6O3" role="2Oq$k0">
                <node concept="13iPFW" id="4Q0JLeVv6O0" role="2Oq$k0" />
                <node concept="1mfA1w" id="4Q0JLeVv6O8" role="2OqNvi" />
              </node>
              <node concept="3x8VRR" id="4Q0JLeVv6Oi" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Q0JLeVv6Pn" role="3cqZAp">
          <node concept="10Nm6u" id="4Q0JLeVv6Pp" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4Q0JLeVvAbr" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4Q0JLeVvAbs" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:4jjtc7WZOAv" resolve="Context" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4RsV8qJH_BY" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getApproximateName" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:4RsV8qJH_Br" resolve="getApproximateName" />
      <node concept="3Tm1VV" id="4RsV8qJH_BZ" role="1B3o_S" />
      <node concept="3clFbS" id="4RsV8qJH_C0" role="3clF47">
        <node concept="3clFbF" id="3NagsOfU4Gv" role="3cqZAp">
          <node concept="2OqwBi" id="3NagsOfU4GH" role="3clFbG">
            <node concept="2OqwBi" id="3NagsOfU4Gz" role="2Oq$k0">
              <node concept="2OqwBi" id="5HVSRHdVMNO" role="2Oq$k0">
                <node concept="13iPFW" id="4RsV8qJH_C2" role="2Oq$k0" />
                <node concept="3TrEf2" id="5HVSRHdVMNT" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                </node>
              </node>
              <node concept="3TrEf2" id="5HVSRHdVMNV" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:5HVSRHdVMMm" />
              </node>
            </node>
            <node concept="2qgKlT" id="3NagsOfU4GN" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
              <node concept="10Nm6u" id="5DY7s5F3uR1" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4RsV8qJH_C1" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5FtnUVJQe22" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="isFolder" />
      <property role="13i0it" value="false" />
      <property role="DiZV1" value="false" />
      <ref role="13i0hy" to="vbkb:1bWeed$oPYW" resolve="isFolder" />
      <node concept="3Tm1VV" id="5FtnUVJQe23" role="1B3o_S" />
      <node concept="3clFbS" id="5FtnUVJQe24" role="3clF47">
        <node concept="3clFbF" id="5FtnUVJQe26" role="3cqZAp">
          <node concept="3clFbT" id="5FtnUVJQe2b" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5FtnUVJQe25" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7cOEBlPT2gC" role="13h7CS">
      <property role="TrG5h" value="findGroup" />
      <node concept="3Tm6S6" id="7cOEBlPT2gD" role="1B3o_S" />
      <node concept="3Tqbb2" id="7cOEBlPT2gE" role="3clF45">
        <ref role="ehGHo" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
      </node>
      <node concept="37vLTG" id="7cOEBlPT2gB" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3Tqbb2" id="7cOEBlPT2gF" role="1tU5fm">
          <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
        </node>
      </node>
      <node concept="3clFbS" id="7cOEBlPT2gG" role="3clF47">
        <node concept="3cpWs6" id="7cOEBlPT2gH" role="3cqZAp">
          <node concept="1PxgMI" id="7cOEBlPT2gI" role="3cqZAk">
            <property role="1BlNFB" value="true" />
            <ref role="1PxNhF" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
            <node concept="2OqwBi" id="7cOEBlPT2gJ" role="1PxMeX">
              <node concept="2OqwBi" id="7cOEBlPT2gK" role="2Oq$k0">
                <node concept="2OqwBi" id="7cOEBlPT2gL" role="2Oq$k0">
                  <node concept="2OqwBi" id="7cOEBlPT2gM" role="2Oq$k0">
                    <node concept="13iPFW" id="7cOEBlPT2gN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7cOEBlPT2gO" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5HVSRHdV_$p" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7cOEBlPT2gP" role="2OqNvi">
                    <ref role="3TtcxE" to="kdzh:5HVSRHdUrJE" />
                  </node>
                </node>
                <node concept="3zZkjj" id="7cOEBlPT2gQ" role="2OqNvi">
                  <node concept="1bVj0M" id="7cOEBlPT2gR" role="23t8la">
                    <node concept="3clFbS" id="7cOEBlPT2gS" role="1bW5cS">
                      <node concept="3clFbF" id="7cOEBlPT2gT" role="3cqZAp">
                        <node concept="1Wc70l" id="7cOEBlPT2gU" role="3clFbG">
                          <node concept="2OqwBi" id="7cOEBlPT2gV" role="3uHU7B">
                            <node concept="37vLTw" id="2BHiRxgm64o" role="2Oq$k0">
                              <ref role="3cqZAo" node="7cOEBlPT2gA" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="7cOEBlPT2gX" role="2OqNvi">
                              <node concept="chp4Y" id="7cOEBlPT2gY" role="cj9EA">
                                <ref role="cht4Q" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7cOEBlPT2gZ" role="3uHU7w">
                            <node concept="2OqwBi" id="7cOEBlPT2h0" role="2Oq$k0">
                              <node concept="2OqwBi" id="7cOEBlPT2h1" role="2Oq$k0">
                                <node concept="1PxgMI" id="7cOEBlPT2h2" role="2Oq$k0">
                                  <ref role="1PxNhF" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                                  <node concept="37vLTw" id="2BHiRxglfpr" role="1PxMeX">
                                    <ref role="3cqZAo" node="7cOEBlPT2gA" resolve="it" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="7cOEBlPT2h4" role="2OqNvi">
                                  <ref role="3Tt5mk" to="kdzh:5HVSRHdUL82" />
                                </node>
                              </node>
                              <node concept="3Tsc0h" id="7cOEBlPT2h5" role="2OqNvi">
                                <ref role="3TtcxE" to="kdzh:1jjYQYSgYJu" />
                              </node>
                            </node>
                            <node concept="3JPx81" id="7cOEBlPT2h6" role="2OqNvi">
                              <node concept="37vLTw" id="2BHiRxgkX4_" role="25WWJ7">
                                <ref role="3cqZAo" node="7cOEBlPT2gB" resolve="module" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7cOEBlPT2gA" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7cOEBlPT2h8" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1uHKPH" id="7cOEBlPT2h9" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5HVSRHdVMJL" role="13h7CW">
      <node concept="3clFbS" id="5HVSRHdVMJM" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5HVSRHdVWPn">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="13h7C2" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
    <node concept="13hLZK" id="5HVSRHdVWPo" role="13h7CW">
      <node concept="3clFbS" id="5HVSRHdVWPp" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5HVSRHdVWPy" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="isValidPart" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:7XQqoCTkVIS" resolve="isValidPart" />
      <node concept="3Tm1VV" id="5HVSRHdVWPz" role="1B3o_S" />
      <node concept="3clFbS" id="5HVSRHdVWP$" role="3clF47">
        <node concept="3clFbJ" id="5HVSRHdVWPH" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="5HVSRHdVWPI" role="3clFbx">
            <node concept="3cpWs6" id="5HVSRHdVWRb" role="3cqZAp">
              <node concept="3fqX7Q" id="7XQqoCTkVIy" role="3cqZAk">
                <node concept="1eOMI4" id="3$myXoLqlgh" role="3fr31v">
                  <node concept="22lmx$" id="7XQqoCTkVIz" role="1eOMHV">
                    <node concept="2OqwBi" id="7XQqoCTkVI$" role="3uHU7w">
                      <node concept="37vLTw" id="2BHiRxglr$w" role="2Oq$k0">
                        <ref role="3cqZAo" node="5HVSRHdVWP_" resolve="propertyValue" />
                      </node>
                      <node concept="liA8E" id="7XQqoCTkVIA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                        <node concept="Xl_RD" id="7XQqoCTkVIB" role="37wK5m">
                          <property role="Xl_RC" value="\\" />
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="7XQqoCTkVIC" role="3uHU7B">
                      <node concept="2OqwBi" id="7XQqoCTkVID" role="3uHU7B">
                        <node concept="37vLTw" id="2BHiRxghfml" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HVSRHdVWP_" resolve="propertyValue" />
                        </node>
                        <node concept="liA8E" id="7XQqoCTkVIF" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                          <node concept="Xl_RD" id="7XQqoCTkVIG" role="37wK5m">
                            <property role="Xl_RC" value="$" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7XQqoCTkVIH" role="3uHU7w">
                        <node concept="37vLTw" id="2BHiRxgm7WZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HVSRHdVWP_" resolve="propertyValue" />
                        </node>
                        <node concept="liA8E" id="7XQqoCTkVIJ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                          <node concept="Xl_RD" id="7XQqoCTkVIK" role="37wK5m">
                            <property role="Xl_RC" value="/" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5HVSRHdVWR3" role="3clFbw">
            <node concept="Xl_RD" id="5HVSRHdVWQI" role="2Oq$k0">
              <property role="Xl_RC" value="containerName" />
            </node>
            <node concept="liA8E" id="5HVSRHdVWR9" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="2BHiRxgmFzk" role="37wK5m">
                <ref role="3cqZAo" node="5HVSRHdVWPB" resolve="role" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5HVSRHdVWPN" role="3cqZAp">
          <node concept="3fqX7Q" id="5HVSRHdVWPO" role="3clFbG">
            <node concept="2OqwBi" id="5HVSRHdVWQb" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxgmL8P" role="2Oq$k0">
                <ref role="3cqZAo" node="5HVSRHdVWP_" resolve="propertyValue" />
              </node>
              <node concept="liA8E" id="5HVSRHdVWQh" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                <node concept="Xl_RD" id="5HVSRHdVWQi" role="37wK5m">
                  <property role="Xl_RC" value="$" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5HVSRHdVWP_" role="3clF46">
        <property role="TrG5h" value="propertyValue" />
        <node concept="17QB3L" id="5HVSRHdVWPA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5HVSRHdVWPB" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="5HVSRHdVWPC" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="5HVSRHdVWPD" role="3clF45" />
    </node>
    <node concept="13i0hz" id="13YBgBBSCja" role="13h7CS">
      <property role="TrG5h" value="getProject" />
      <node concept="3Tm6S6" id="13YBgBBSCje" role="1B3o_S" />
      <node concept="3Tqbb2" id="13YBgBBSCjf" role="3clF45">
        <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
      </node>
      <node concept="3clFbS" id="13YBgBBSCjd" role="3clF47">
        <node concept="3clFbF" id="13YBgBBSClc" role="3cqZAp">
          <node concept="1PxgMI" id="13YBgBBSCl9" role="3clFbG">
            <property role="1BlNFB" value="true" />
            <ref role="1PxNhF" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
            <node concept="2OqwBi" id="13YBgBBSCjK" role="1PxMeX">
              <node concept="13iPFW" id="13YBgBBSCjL" role="2Oq$k0" />
              <node concept="2Rxl7S" id="13YBgBBSCjM" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="13YBgBBScH4">
    <ref role="13h7C2" to="kdzh:KbRDZ75DBp" resolve="BuildMPSPlugin" />
    <node concept="13hLZK" id="13YBgBBScH5" role="13h7CW">
      <node concept="3clFbS" id="13YBgBBScH6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="13YBgBBScH7" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getLayoutScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:13YBgBBRSOA" resolve="getLayoutScope" />
      <node concept="3Tm1VV" id="13YBgBBScH8" role="1B3o_S" />
      <node concept="3clFbS" id="13YBgBBScH9" role="3clF47">
        <node concept="3clFbJ" id="13YBgBBRX81" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="13YBgBBRX83" role="3clFbx">
            <node concept="3cpWs6" id="13YBgBBS7e4" role="3cqZAp">
              <node concept="2YIFZM" id="13YBgBBS7e7" role="3cqZAk">
                <ref role="1Pybhc" to="o3n2:13YBgBBS5VR" resolve="DescendantsScope" />
                <ref role="37wK5l" to="o3n2:_dGddVGbND" resolve="forNamedElements" />
                <node concept="2OqwBi" id="13YBgBBS7et" role="37wK5m">
                  <node concept="13iPFW" id="13YBgBBS7e8" role="2Oq$k0" />
                  <node concept="2qgKlT" id="13YBgBBS7f7" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:13YBgBBS7ex" resolve="getProject" />
                  </node>
                </node>
                <node concept="359W_D" id="1GLgM0B3u2d" role="37wK5m">
                  <ref role="359W_F" to="3ior:6qcrfIJFfrM" />
                  <ref role="359W_E" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm7q3" role="37wK5m">
                  <ref role="3cqZAo" node="13YBgBBScHa" resolve="kind" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="13YBgBBSDck" role="3clFbw">
            <node concept="22lmx$" id="13YBgBBSDbp" role="3uHU7B">
              <node concept="2OqwBi" id="13YBgBBRX8Q" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgm7kz" role="2Oq$k0">
                  <ref role="3cqZAo" node="13YBgBBScHa" resolve="kind" />
                </node>
                <node concept="2Zo12i" id="13YBgBBRX8W" role="2OqNvi">
                  <node concept="chp4Y" id="13YBgBBScHo" role="2Zo12j">
                    <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="13YBgBBSDbL" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxgmyWp" role="2Oq$k0">
                  <ref role="3cqZAo" node="13YBgBBScHa" resolve="kind" />
                </node>
                <node concept="2Zo12i" id="13YBgBBSDbX" role="2OqNvi">
                  <node concept="chp4Y" id="13YBgBBSDbZ" role="2Zo12j">
                    <ref role="cht4Q" to="kdzh:1jjYQYSgYJt" resolve="BuildMps_Group" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="13YBgBBSDcn" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxglJT_" role="2Oq$k0">
                <ref role="3cqZAo" node="13YBgBBScHa" resolve="kind" />
              </node>
              <node concept="2Zo12i" id="13YBgBBSDcp" role="2OqNvi">
                <node concept="chp4Y" id="13YBgBBSDcr" role="2Zo12j">
                  <ref role="cht4Q" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="13YBgBBS7fm" role="3cqZAp" />
        <node concept="3clFbF" id="13YBgBBScHm" role="3cqZAp">
          <node concept="10Nm6u" id="13YBgBBScHn" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="13YBgBBScHa" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="1GLgM0B3Fgo" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="13YBgBBScHj" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="27eOSzOUT_P" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="fetchDependencies" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:57YmpYyL8F1" resolve="fetchDependencies" />
      <node concept="3Tm1VV" id="27eOSzOUT_Q" role="1B3o_S" />
      <node concept="3clFbS" id="27eOSzOUT_R" role="3clF47">
        <node concept="3cpWs8" id="2TqXzNe$YQD" role="3cqZAp">
          <node concept="3cpWsn" id="2TqXzNe$YQE" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3Tqbb2" id="2TqXzNe$YQF" role="1tU5fm">
              <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
            </node>
            <node concept="2OqwBi" id="2TqXzNe$YQG" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm9nd" role="2Oq$k0">
                <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
              </node>
              <node concept="liA8E" id="2TqXzNe$YQI" role="2OqNvi">
                <ref role="37wK5l" to="o3n2:2fLy7QGT4hw" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="57Nqmbchhp0" role="3cqZAp" />
        <node concept="3SKdUt" id="57Nqmbchhp6" role="3cqZAp">
          <node concept="3SKdUq" id="57Nqmbchhp9" role="3SKWNk">
            <property role="3SKdUp" value="fetch required plugins" />
          </node>
        </node>
        <node concept="3cpWs8" id="57NqmbchhoM" role="3cqZAp">
          <node concept="3cpWsn" id="57NqmbchhoN" role="3cpWs9">
            <property role="TrG5h" value="plugins" />
            <node concept="3uibUv" id="57NqmbchhoO" role="1tU5fm">
              <ref role="3uigEE" to="tken:7cOEBlPPAXF" resolve="RequiredPlugins" />
            </node>
            <node concept="2ShNRf" id="57NqmbchhoP" role="33vP2m">
              <node concept="1pGfFk" id="57NqmbchhoQ" role="2ShVmc">
                <ref role="37wK5l" to="tken:7cOEBlPPAXP" resolve="RequiredPlugins" />
                <node concept="37vLTw" id="3GM_nagTs2p" role="37wK5m">
                  <ref role="3cqZAo" node="2TqXzNe$YQE" resolve="project" />
                </node>
                <node concept="2OqwBi" id="57NqmbchhoR" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgm9Q7" role="2Oq$k0">
                    <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                  </node>
                  <node concept="liA8E" id="57NqmbchhoT" role="2OqNvi">
                    <ref role="37wK5l" to="o3n2:75uV$1s08Ae" resolve="getGenContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57NqmbchhoV" role="3cqZAp">
          <node concept="2OqwBi" id="57NqmbchhoW" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTAFm" role="2Oq$k0">
              <ref role="3cqZAo" node="57NqmbchhoN" resolve="plugins" />
            </node>
            <node concept="liA8E" id="57NqmbchhoY" role="2OqNvi">
              <ref role="37wK5l" to="tken:7cOEBlPPGLg" resolve="collectDependencies" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="57Nqmbchhpw" role="3cqZAp">
          <node concept="2GrKxI" id="57Nqmbchhpx" role="2Gsz3X">
            <property role="TrG5h" value="plugin" />
          </node>
          <node concept="2OqwBi" id="57Nqmbchhpy" role="2GsD0m">
            <node concept="2OqwBi" id="57Nqmbchhpz" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTBAn" role="2Oq$k0">
                <ref role="3cqZAo" node="57NqmbchhoN" resolve="plugins" />
              </node>
              <node concept="liA8E" id="57Nqmbchhp_" role="2OqNvi">
                <ref role="37wK5l" to="tken:7cOEBlPPAZH" resolve="getDependency" />
              </node>
            </node>
            <node concept="3zZkjj" id="57NqmbchhpA" role="2OqNvi">
              <node concept="1bVj0M" id="57NqmbchhpB" role="23t8la">
                <node concept="3clFbS" id="57NqmbchhpC" role="1bW5cS">
                  <node concept="3clFbF" id="57NqmbchhpD" role="3cqZAp">
                    <node concept="3y3z36" id="57Nqmbchhqu" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagT$aZ" role="3uHU7w">
                        <ref role="3cqZAo" node="2TqXzNe$YQE" resolve="project" />
                      </node>
                      <node concept="2OqwBi" id="57NqmbchhpI" role="3uHU7B">
                        <node concept="37vLTw" id="2BHiRxghi$P" role="2Oq$k0">
                          <ref role="3cqZAo" node="57NqmbchhpL" resolve="it" />
                        </node>
                        <node concept="2Rxl7S" id="57NqmbchhpK" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="57NqmbchhpL" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="57NqmbchhpM" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="57NqmbchhpN" role="2LFqv$">
            <node concept="3cpWs8" id="57NqmbchhpO" role="3cqZAp">
              <node concept="3cpWsn" id="57NqmbchhpP" role="3cpWs9">
                <property role="TrG5h" value="pluginArtifact" />
                <node concept="3Tqbb2" id="57NqmbchhpQ" role="1tU5fm">
                  <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                </node>
                <node concept="1PxgMI" id="57NqmbchhpR" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                  <node concept="2OqwBi" id="57NqmbchhpS" role="1PxMeX">
                    <node concept="37vLTw" id="2BHiRxgm8e$" role="2Oq$k0">
                      <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                    </node>
                    <node concept="liA8E" id="57NqmbchhpU" role="2OqNvi">
                      <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                      <node concept="2GrUjf" id="2zmyMeTmX_x" role="37wK5m">
                        <ref role="2Gs0qQ" node="57Nqmbchhpx" resolve="plugin" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="57NqmbchhpW" role="3cqZAp">
              <node concept="3clFbS" id="57NqmbchhpX" role="3clFbx">
                <node concept="3clFbF" id="57NqmbchhpY" role="3cqZAp">
                  <node concept="2OqwBi" id="57NqmbchhpZ" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgm8uG" role="2Oq$k0">
                      <ref role="3cqZAo" node="27eOSzOUT_U" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="57Nqmbchhq1" role="2OqNvi">
                      <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                      <node concept="37vLTw" id="3GM_nagTs1S" role="37wK5m">
                        <ref role="3cqZAo" node="57NqmbchhpP" resolve="pluginArtifact" />
                      </node>
                      <node concept="2GrUjf" id="57Nqmbchhq3" role="37wK5m">
                        <ref role="2Gs0qQ" node="57Nqmbchhpx" resolve="plugin" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="57Nqmbchhq4" role="3clFbw">
                <node concept="10Nm6u" id="57Nqmbchhq5" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTBd3" role="3uHU7B">
                  <ref role="3cqZAo" node="57NqmbchhpP" resolve="pluginArtifact" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="57NqmbchhoB" role="3cqZAp" />
        <node concept="3SKdUt" id="57NqmbchhoC" role="3cqZAp">
          <node concept="3SKdUq" id="57NqmbchhoD" role="3SKWNk">
            <property role="3SKdUp" value="fetch stuff for ant task classpath" />
          </node>
        </node>
        <node concept="3cpWs8" id="3ag$5R8Sr$l" role="3cqZAp">
          <node concept="3cpWsn" id="3ag$5R8SrzL" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="3ag$5R8Sr$m" role="1tU5fm">
              <ref role="3uigEE" to="o3n2:41__iZjkZ0W" resolve="DependenciesHelper" />
            </node>
            <node concept="2ShNRf" id="3ag$5R8Sr$n" role="33vP2m">
              <node concept="1pGfFk" id="3ag$5R8Sr$o" role="2ShVmc">
                <ref role="37wK5l" to="o3n2:41__iZjkZ0Y" resolve="DependenciesHelper" />
                <node concept="2OqwBi" id="3ag$5R8Sr$p" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxglf8m" role="2Oq$k0">
                    <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                  </node>
                  <node concept="liA8E" id="3ag$5R8Sr$r" role="2OqNvi">
                    <ref role="37wK5l" to="o3n2:75uV$1s08Ae" resolve="getGenContext" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3ag$5R8Sr$s" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgmx3k" role="2Oq$k0">
                    <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                  </node>
                  <node concept="liA8E" id="3ag$5R8Sr$u" role="2OqNvi">
                    <ref role="37wK5l" to="o3n2:2fLy7QGT4hw" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2TqXzNe_JWW" role="3cqZAp">
          <node concept="3cpWsn" id="2TqXzNe_JWX" role="3cpWs9">
            <property role="TrG5h" value="originalProject" />
            <node concept="3Tqbb2" id="2TqXzNe_JWY" role="1tU5fm">
              <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
            </node>
            <node concept="1PxgMI" id="2TqXzNe_JYh" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <ref role="1PxNhF" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
              <node concept="2YIFZM" id="2TqXzNe_JXu" role="1PxMeX">
                <ref role="37wK5l" to="o3n2:5FtnUVJQfvo" resolve="getOriginalNode" />
                <ref role="1Pybhc" to="o3n2:41__iZjkZ0W" resolve="DependenciesHelper" />
                <node concept="37vLTw" id="3GM_nagTypM" role="37wK5m">
                  <ref role="3cqZAo" node="2TqXzNe$YQE" resolve="project" />
                </node>
                <node concept="2OqwBi" id="2TqXzNe_JXQ" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxglons" role="2Oq$k0">
                    <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                  </node>
                  <node concept="liA8E" id="2TqXzNe_JXW" role="2OqNvi">
                    <ref role="37wK5l" to="o3n2:75uV$1s08Ae" resolve="getGenContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2TqXzNe_6HN" role="3cqZAp">
          <node concept="3cpWsn" id="2TqXzNe_6HO" role="3cpWs9">
            <property role="TrG5h" value="antMpsModule" />
            <node concept="3Tqbb2" id="2TqXzNe_6HP" role="1tU5fm">
              <ref role="ehGHo" to="3ior:6qcrfIJFdKS" resolve="BuildSource_JavaModule" />
            </node>
            <node concept="1PxgMI" id="2TqXzNe_6LK" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <ref role="1PxNhF" to="3ior:6qcrfIJFdKS" resolve="BuildSource_JavaModule" />
              <node concept="2OqwBi" id="2TqXzNe_6HQ" role="1PxMeX">
                <node concept="2OqwBi" id="2TqXzNe_6HR" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTAnL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2TqXzNe_JWX" resolve="originalProject" />
                  </node>
                  <node concept="2qgKlT" id="2TqXzNe_6HT" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:6GEzh_Hz_wK" resolve="getScope" />
                    <node concept="3TUQnm" id="2TqXzNe_6HU" role="37wK5m">
                      <ref role="3TV0OU" to="3ior:6qcrfIJFdKS" resolve="BuildSource_JavaModule" />
                    </node>
                    <node concept="prKvN" id="13YBgBBRTDE" role="37wK5m">
                      <ref role="prhl7" to="3ior:6qcrfIJFfrM" />
                      <ref role="prhl4" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    </node>
                    <node concept="3cmrfG" id="2TqXzNe_HOq" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2TqXzNe_6HW" role="2OqNvi">
                  <ref role="37wK5l" to="o8zo:3fifI_xCtP3" resolve="resolve" />
                  <node concept="37vLTw" id="3GM_nagTB6j" role="37wK5m">
                    <ref role="3cqZAo" node="2TqXzNe_JWX" resolve="originalProject" />
                  </node>
                  <node concept="Xl_RD" id="2TqXzNe_6HY" role="37wK5m">
                    <property role="Xl_RC" value="ant-mps" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2TqXzNe_6I1" role="3cqZAp">
          <node concept="3clFbS" id="2TqXzNe_6I2" role="3clFbx">
            <node concept="3cpWs8" id="2TqXzNe_6JG" role="3cqZAp">
              <node concept="3cpWsn" id="2TqXzNe_6JH" role="3cpWs9">
                <property role="TrG5h" value="antMpsJar" />
                <node concept="3Tqbb2" id="2TqXzNe_6JI" role="1tU5fm">
                  <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                </node>
                <node concept="1PxgMI" id="2TqXzNe_6JJ" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                  <node concept="2OqwBi" id="2TqXzNe_6JK" role="1PxMeX">
                    <node concept="37vLTw" id="2BHiRxgkWCZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                    </node>
                    <node concept="liA8E" id="2TqXzNe_6JM" role="2OqNvi">
                      <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                      <node concept="37vLTw" id="3GM_nagTAvC" role="37wK5m">
                        <ref role="3cqZAo" node="2TqXzNe_6HO" resolve="antMpsModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2TqXzNe_M6X" role="3cqZAp">
              <node concept="3clFbS" id="2TqXzNe_M6Y" role="3clFbx">
                <node concept="3clFbF" id="2TqXzNe_6K0" role="3cqZAp">
                  <node concept="2OqwBi" id="2TqXzNe_6KL" role="3clFbG">
                    <node concept="2OqwBi" id="2TqXzNe_6Km" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTAUU" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ag$5R8SrzL" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="2TqXzNe_6Ks" role="2OqNvi">
                        <ref role="37wK5l" to="o3n2:5FtnUVJQGEG" resolve="artifacts" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2TqXzNe_6KR" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                      <node concept="Xl_RD" id="2TqXzNe_6KS" role="37wK5m">
                        <property role="Xl_RC" value="ant-mps" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTupQ" role="37wK5m">
                        <ref role="3cqZAo" node="2TqXzNe_6JH" resolve="antMpsJar" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2TqXzNe_6KW" role="3cqZAp">
                  <node concept="2OqwBi" id="2TqXzNe_6Li" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglV7T" role="2Oq$k0">
                      <ref role="3cqZAo" node="27eOSzOUT_U" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="2TqXzNe_6Lo" role="2OqNvi">
                      <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                      <node concept="37vLTw" id="3GM_nagTyJE" role="37wK5m">
                        <ref role="3cqZAo" node="2TqXzNe_6JH" resolve="antMpsJar" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTwBD" role="37wK5m">
                        <ref role="3cqZAo" node="2TqXzNe_6HO" resolve="antMpsModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2TqXzNe_M7m" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTyJg" role="2Oq$k0">
                  <ref role="3cqZAo" node="2TqXzNe_6JH" resolve="antMpsJar" />
                </node>
                <node concept="3x8VRR" id="2TqXzNe_M7s" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="4ue92wT4Wri" role="3cqZAp" />
            <node concept="3cpWs8" id="4ue92wT4WsR" role="3cqZAp">
              <node concept="3cpWsn" id="4ue92wT4WsS" role="3cpWs9">
                <property role="TrG5h" value="mpsCore" />
                <node concept="3Tqbb2" id="4ue92wT4WsT" role="1tU5fm">
                  <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                </node>
                <node concept="1PxgMI" id="4ue92wT4WsU" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <ref role="1PxNhF" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                  <node concept="2OqwBi" id="4ue92wT4WsV" role="1PxMeX">
                    <node concept="37vLTw" id="3GM_nagTyWS" role="2Oq$k0">
                      <ref role="3cqZAo" node="2TqXzNe_6HO" resolve="antMpsModule" />
                    </node>
                    <node concept="2Rxl7S" id="4ue92wT4WsX" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4ue92wT4Wrb" role="3cqZAp">
              <node concept="3cpWsn" id="4ue92wT4Wrc" role="3cpWs9">
                <property role="TrG5h" value="visibleJarsScope" />
                <node concept="3uibUv" id="4ue92wT4Wrd" role="1tU5fm">
                  <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                </node>
                <node concept="2YIFZM" id="4ue92wT4Wre" role="33vP2m">
                  <ref role="37wK5l" to="o3n2:5WMFzVNueXI" resolve="getVisibleJarsScope" />
                  <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                  <node concept="37vLTw" id="3GM_nagTvWa" role="37wK5m">
                    <ref role="3cqZAo" node="4ue92wT4WsS" resolve="mpsCore" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2TqXzNeAA_N" role="3cqZAp">
              <node concept="3cpWsn" id="2TqXzNeAA_O" role="3cpWs9">
                <property role="TrG5h" value="jdom" />
                <node concept="3Tqbb2" id="2TqXzNeAA_P" role="1tU5fm" />
                <node concept="2OqwBi" id="2TqXzNeAA_Q" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTycc" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ue92wT4Wrc" resolve="visibleJarsScope" />
                  </node>
                  <node concept="liA8E" id="2TqXzNeAA_T" role="2OqNvi">
                    <ref role="37wK5l" to="o8zo:3fifI_xCtP3" resolve="resolve" />
                    <node concept="37vLTw" id="3GM_nagTwXG" role="37wK5m">
                      <ref role="3cqZAo" node="4ue92wT4WsS" resolve="mpsCore" />
                    </node>
                    <node concept="Xl_RD" id="2TqXzNeAA_V" role="37wK5m">
                      <property role="Xl_RC" value="IDEA::lib/jdom.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2TqXzNe_6M1" role="3cqZAp">
              <node concept="3clFbS" id="2TqXzNe_6M2" role="3clFbx">
                <node concept="3cpWs8" id="2TqXzNe_6M3" role="3cqZAp">
                  <node concept="3cpWsn" id="2TqXzNe_6M4" role="3cpWs9">
                    <property role="TrG5h" value="jdomJar" />
                    <node concept="3Tqbb2" id="2TqXzNe_6M5" role="1tU5fm">
                      <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                    </node>
                    <node concept="1PxgMI" id="2TqXzNe_6M6" role="33vP2m">
                      <property role="1BlNFB" value="true" />
                      <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                      <node concept="2OqwBi" id="2TqXzNe_6M7" role="1PxMeX">
                        <node concept="37vLTw" id="2BHiRxgkZZF" role="2Oq$k0">
                          <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                        </node>
                        <node concept="liA8E" id="2TqXzNe_6M9" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                          <node concept="37vLTw" id="3GM_nagT$Uv" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNeAA_O" resolve="jdom" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2TqXzNe_M7u" role="3cqZAp">
                  <node concept="3clFbS" id="2TqXzNe_M7v" role="3clFbx">
                    <node concept="3clFbF" id="2TqXzNe_6Mb" role="3cqZAp">
                      <node concept="2OqwBi" id="2TqXzNe_6Mc" role="3clFbG">
                        <node concept="2OqwBi" id="2TqXzNe_6Md" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagTwa4" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ag$5R8SrzL" resolve="helper" />
                          </node>
                          <node concept="liA8E" id="2TqXzNe_6Mf" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:5FtnUVJQGEG" resolve="artifacts" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2TqXzNe_6Mg" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                          <node concept="Xl_RD" id="2TqXzNe_6Mh" role="37wK5m">
                            <property role="Xl_RC" value="jdom" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTueU" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNe_6M4" resolve="jdomJar" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2TqXzNe_6Mj" role="3cqZAp">
                      <node concept="2OqwBi" id="2TqXzNe_6Mk" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm7vH" role="2Oq$k0">
                          <ref role="3cqZAo" node="27eOSzOUT_U" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="2TqXzNe_6Mm" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                          <node concept="37vLTw" id="3GM_nagTsHC" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNe_6M4" resolve="jdomJar" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTyA2" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNeAA_O" resolve="jdom" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2TqXzNe_M7S" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagT_A_" role="2Oq$k0">
                      <ref role="3cqZAo" node="2TqXzNe_6M4" resolve="jdomJar" />
                    </node>
                    <node concept="3x8VRR" id="2TqXzNe_M7Y" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2TqXzNe_6Mp" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTrFe" role="2Oq$k0">
                  <ref role="3cqZAo" node="2TqXzNeAA_O" resolve="jdom" />
                </node>
                <node concept="3x8VRR" id="2TqXzNe_6Mr" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs8" id="2TqXzNeAA_X" role="3cqZAp">
              <node concept="3cpWsn" id="2TqXzNeAA_Y" role="3cpWs9">
                <property role="TrG5h" value="log4j" />
                <node concept="3Tqbb2" id="2TqXzNeAA_Z" role="1tU5fm" />
                <node concept="2OqwBi" id="2TqXzNeAAA0" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTsl4" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ue92wT4Wrc" resolve="visibleJarsScope" />
                  </node>
                  <node concept="liA8E" id="2TqXzNeAAA3" role="2OqNvi">
                    <ref role="37wK5l" to="o8zo:3fifI_xCtP3" resolve="resolve" />
                    <node concept="37vLTw" id="3GM_nagTtJd" role="37wK5m">
                      <ref role="3cqZAo" node="4ue92wT4WsS" resolve="mpsCore" />
                    </node>
                    <node concept="Xl_RD" id="2TqXzNeAAA5" role="37wK5m">
                      <property role="Xl_RC" value="IDEA::lib/log4j.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2TqXzNeAAA8" role="3cqZAp">
              <node concept="3clFbS" id="2TqXzNeAAA9" role="3clFbx">
                <node concept="3cpWs8" id="2TqXzNeAAAa" role="3cqZAp">
                  <node concept="3cpWsn" id="2TqXzNeAAAb" role="3cpWs9">
                    <property role="TrG5h" value="log4jJar" />
                    <node concept="3Tqbb2" id="2TqXzNeAAAc" role="1tU5fm">
                      <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                    </node>
                    <node concept="1PxgMI" id="2TqXzNeAAAd" role="33vP2m">
                      <property role="1BlNFB" value="true" />
                      <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                      <node concept="2OqwBi" id="2TqXzNeAAAe" role="1PxMeX">
                        <node concept="37vLTw" id="2BHiRxgm6IW" role="2Oq$k0">
                          <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                        </node>
                        <node concept="liA8E" id="2TqXzNeAAAg" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                          <node concept="37vLTw" id="3GM_nagTsGo" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNeAA_Y" resolve="log4j" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2TqXzNeAAAi" role="3cqZAp">
                  <node concept="3clFbS" id="2TqXzNeAAAj" role="3clFbx">
                    <node concept="3clFbF" id="2TqXzNeAAAk" role="3cqZAp">
                      <node concept="2OqwBi" id="2TqXzNeAAAl" role="3clFbG">
                        <node concept="2OqwBi" id="2TqXzNeAAAm" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagTutF" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ag$5R8SrzL" resolve="helper" />
                          </node>
                          <node concept="liA8E" id="2TqXzNeAAAo" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:5FtnUVJQGEG" resolve="artifacts" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2TqXzNeAAAp" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                          <node concept="Xl_RD" id="2TqXzNeAAAq" role="37wK5m">
                            <property role="Xl_RC" value="log4j" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTw2b" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNeAAAb" resolve="log4jJar" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2TqXzNeAAAs" role="3cqZAp">
                      <node concept="2OqwBi" id="2TqXzNeAAAt" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm6Lq" role="2Oq$k0">
                          <ref role="3cqZAo" node="27eOSzOUT_U" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="2TqXzNeAAAv" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                          <node concept="37vLTw" id="3GM_nagT_s$" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNeAAAb" resolve="log4jJar" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTBVT" role="37wK5m">
                            <ref role="3cqZAo" node="2TqXzNeAA_Y" resolve="log4j" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2TqXzNeAAAy" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagT_oh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2TqXzNeAAAb" resolve="log4jJar" />
                    </node>
                    <node concept="3x8VRR" id="2TqXzNeAAA$" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2TqXzNeAAA_" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTyTZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2TqXzNeAA_Y" resolve="log4j" />
                </node>
                <node concept="3x8VRR" id="2TqXzNeAAAB" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2TqXzNe_6Iq" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTyn2" role="2Oq$k0">
              <ref role="3cqZAo" node="2TqXzNe_6HO" resolve="antMpsModule" />
            </node>
            <node concept="3x8VRR" id="2TqXzNe_6Iw" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="5YheE7ibtS7" role="3cqZAp" />
        <node concept="3SKdUt" id="5YheE7ibG5R" role="3cqZAp">
          <node concept="3SKdUq" id="5YheE7ibGEs" role="3SKWNk">
            <property role="3SKdUp" value="fetch gentest language" />
          </node>
        </node>
        <node concept="3cpWs8" id="50RHf4RGXF1" role="3cqZAp">
          <node concept="3cpWsn" id="50RHf4RGXF2" role="3cpWs9">
            <property role="TrG5h" value="visibleModules" />
            <node concept="3uibUv" id="50RHf4RGXF3" role="1tU5fm">
              <ref role="3uigEE" to="tken:50RHf4RGVPk" resolve="VisibleModules" />
            </node>
            <node concept="2ShNRf" id="50RHf4RGXF5" role="33vP2m">
              <node concept="1pGfFk" id="50RHf4RGXF7" role="2ShVmc">
                <ref role="37wK5l" to="tken:50RHf4RGVPm" resolve="VisibleModules" />
                <node concept="2OqwBi" id="27eOSzOUTyk" role="37wK5m">
                  <node concept="37vLTw" id="5YheE7ibOcy" role="2Oq$k0">
                    <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                  </node>
                  <node concept="liA8E" id="27eOSzOUTyq" role="2OqNvi">
                    <ref role="37wK5l" to="o3n2:2fLy7QGT4hw" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50RHf4RGXFg" role="3cqZAp">
          <node concept="2OqwBi" id="50RHf4RGXFw" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTB9V" role="2Oq$k0">
              <ref role="3cqZAo" node="50RHf4RGXF2" resolve="visibleModules" />
            </node>
            <node concept="liA8E" id="50RHf4RGXF_" role="2OqNvi">
              <ref role="37wK5l" to="tken:50RHf4RGXFc" resolve="collect" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="27eOSzOUT$5" role="3cqZAp">
          <node concept="3cpWsn" id="27eOSzOUT$6" role="3cpWs9">
            <property role="TrG5h" value="gentest" />
            <node concept="3Tqbb2" id="27eOSzOUT$7" role="1tU5fm">
              <ref role="ehGHo" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
            </node>
            <node concept="1PxgMI" id="7MPX9wYAi5N" role="33vP2m">
              <ref role="1PxNhF" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
              <node concept="2OqwBi" id="27eOSzOUT$8" role="1PxMeX">
                <node concept="37vLTw" id="3GM_nagTs3z" role="2Oq$k0">
                  <ref role="3cqZAo" node="50RHf4RGXF2" resolve="visibleModules" />
                </node>
                <node concept="liA8E" id="27eOSzOUT$a" role="2OqNvi">
                  <ref role="37wK5l" to="tken:50RHf4RGXG2" resolve="resolve" />
                  <node concept="Xl_RD" id="27eOSzOUT$b" role="37wK5m">
                    <property role="Xl_RC" value="jetbrains.mps.tool.gentest" />
                  </node>
                  <node concept="Xl_RD" id="27eOSzOUT$c" role="37wK5m">
                    <property role="Xl_RC" value="3ba7b7cf-6a5a-4981-ba0b-3302e59ffef7" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7MPX9wYAgiN" role="3cqZAp" />
        <node concept="3clFbJ" id="27eOSzOUT$f" role="3cqZAp">
          <node concept="3clFbS" id="27eOSzOUT$g" role="3clFbx">
            <node concept="3clFbJ" id="27eOSzOUT_a" role="3cqZAp">
              <node concept="3clFbS" id="27eOSzOUT_b" role="3clFbx">
                <node concept="3cpWs8" id="7MPX9wYkRdc" role="3cqZAp">
                  <node concept="3cpWsn" id="7MPX9wYkRdd" role="3cpWs9">
                    <property role="TrG5h" value="closure" />
                    <node concept="3uibUv" id="7MPX9wYkRde" role="1tU5fm">
                      <ref role="3uigEE" to="tken:1jjYQYSjid_" resolve="MPSModulesClosure" />
                    </node>
                    <node concept="2ShNRf" id="7MPX9wYkSdI" role="33vP2m">
                      <node concept="1pGfFk" id="7MPX9wYkTkm" role="2ShVmc">
                        <ref role="37wK5l" to="tken:1jjYQYSjidB" resolve="MPSModulesClosure" />
                        <node concept="37vLTw" id="7MPX9wYD9om" role="37wK5m">
                          <ref role="3cqZAo" node="27eOSzOUT$6" resolve="gentest" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7MPX9wYD9x3" role="3cqZAp">
                  <node concept="3cpWsn" id="7MPX9wYD9x4" role="3cpWs9">
                    <property role="TrG5h" value="gentestDeps" />
                    <node concept="A3Dl8" id="7MPX9wYD9wF" role="1tU5fm">
                      <node concept="3Tqbb2" id="7MPX9wYD9wI" role="A3Ik2">
                        <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2_rBL61$Mi0" role="33vP2m">
                      <node concept="2OqwBi" id="7MPX9wYD9x5" role="2Oq$k0">
                        <node concept="2OqwBi" id="7MPX9wYD9x6" role="2Oq$k0">
                          <node concept="37vLTw" id="7MPX9wYD9x7" role="2Oq$k0">
                            <ref role="3cqZAo" node="7MPX9wYkRdd" resolve="closure" />
                          </node>
                          <node concept="liA8E" id="7MPX9wYD9x8" role="2OqNvi">
                            <ref role="37wK5l" to="tken:5bXKZTgq2AH" resolve="runtimeClosure" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7MPX9wYD9x9" role="2OqNvi">
                          <ref role="37wK5l" to="tken:2pk5iwY3SS_" resolve="getAllModules" />
                        </node>
                      </node>
                      <node concept="4Tj9Z" id="2_rBL61$MSt" role="2OqNvi">
                        <node concept="2ShNRf" id="2_rBL61$X4x" role="576Qk">
                          <node concept="2HTt$P" id="2_rBL61$XOu" role="2ShVmc">
                            <node concept="37vLTw" id="2_rBL61_0xT" role="2HTEbv">
                              <ref role="3cqZAo" node="27eOSzOUT$6" resolve="gentest" />
                            </node>
                            <node concept="3Tqbb2" id="2_rBL61$Y6m" role="2HTBi0">
                              <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7MPX9wYAiPK" role="3cqZAp" />
                <node concept="2Gpval" id="7MPX9wYDljx" role="3cqZAp">
                  <node concept="2GrKxI" id="7MPX9wYDljz" role="2Gsz3X">
                    <property role="TrG5h" value="gentestDep" />
                  </node>
                  <node concept="3clFbS" id="7MPX9wYDlj_" role="2LFqv$">
                    <node concept="3cpWs8" id="27eOSzOUT_7" role="3cqZAp">
                      <node concept="3cpWsn" id="27eOSzOUT_8" role="3cpWs9">
                        <property role="TrG5h" value="depLayoutNode" />
                        <node concept="3Tqbb2" id="27eOSzOUT_9" role="1tU5fm">
                          <ref role="ehGHo" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                        </node>
                        <node concept="1PxgMI" id="27eOSzOUT_f" role="33vP2m">
                          <property role="1BlNFB" value="true" />
                          <ref role="1PxNhF" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                          <node concept="2OqwBi" id="27eOSzOUT_g" role="1PxMeX">
                            <node concept="37vLTw" id="5YheE7ibPjw" role="2Oq$k0">
                              <ref role="3cqZAo" node="27eOSzOUT_S" resolve="artifacts" />
                            </node>
                            <node concept="liA8E" id="27eOSzOUT_i" role="2OqNvi">
                              <ref role="37wK5l" to="o3n2:6PrCok1LkPV" resolve="findArtifact" />
                              <node concept="2GrUjf" id="7MPX9wYDoxH" role="37wK5m">
                                <ref role="2Gs0qQ" node="7MPX9wYDljz" resolve="gentestDep" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="27eOSzOUT_k" role="3cqZAp">
                      <node concept="3clFbS" id="27eOSzOUT_l" role="3clFbx">
                        <node concept="3clFbF" id="27eOSzOW3hE" role="3cqZAp">
                          <node concept="2OqwBi" id="27eOSzOW3iq" role="3clFbG">
                            <node concept="2OqwBi" id="27eOSzOW3i0" role="2Oq$k0">
                              <node concept="37vLTw" id="3GM_nagTABE" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ag$5R8SrzL" resolve="helper" />
                              </node>
                              <node concept="liA8E" id="27eOSzOW3i5" role="2OqNvi">
                                <ref role="37wK5l" to="o3n2:5FtnUVJQGEG" resolve="artifacts" />
                              </node>
                            </node>
                            <node concept="liA8E" id="27eOSzOW3iw" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                              <node concept="2OqwBi" id="27eOSzOW3iR" role="37wK5m">
                                <node concept="2GrUjf" id="7MPX9wYDoA_" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7MPX9wYDljz" resolve="gentestDep" />
                                </node>
                                <node concept="3TrcHB" id="27eOSzOW3iX" role="2OqNvi">
                                  <ref role="3TsBF5" to="kdzh:hS0KzPOSqb" resolve="uuid" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3GM_nagTxjT" role="37wK5m">
                                <ref role="3cqZAo" node="27eOSzOUT_8" resolve="depLayoutNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="27eOSzOUT_m" role="3cqZAp">
                          <node concept="2OqwBi" id="27eOSzOUT_n" role="3clFbG">
                            <node concept="37vLTw" id="5YheE7idKi7" role="2Oq$k0">
                              <ref role="3cqZAo" node="27eOSzOUT_U" resolve="builder" />
                            </node>
                            <node concept="liA8E" id="27eOSzOUT_p" role="2OqNvi">
                              <ref role="37wK5l" to="o3n2:6b4RkXS7ms7" resolve="add" />
                              <node concept="37vLTw" id="3GM_nagTzI1" role="37wK5m">
                                <ref role="3cqZAo" node="27eOSzOUT_8" resolve="depLayoutNode" />
                              </node>
                              <node concept="2GrUjf" id="7MPX9wYDoIn" role="37wK5m">
                                <ref role="2Gs0qQ" node="7MPX9wYDljz" resolve="gentestDep" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="27eOSzOUT_s" role="3clFbw">
                        <node concept="10Nm6u" id="27eOSzOUT_t" role="3uHU7w" />
                        <node concept="37vLTw" id="3GM_nagTrZt" role="3uHU7B">
                          <ref role="3cqZAo" node="27eOSzOUT_8" resolve="depLayoutNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7MPX9wYDly$" role="2GsD0m">
                    <ref role="3cqZAo" node="7MPX9wYD9x4" resolve="gentestDeps" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="27eOSzOUT_v" role="3clFbw">
                <node concept="2OqwBi" id="27eOSzOUT_w" role="3uHU7B">
                  <node concept="2Rxl7S" id="27eOSzOUT_y" role="2OqNvi" />
                  <node concept="37vLTw" id="3GM_nagTsc6" role="2Oq$k0">
                    <ref role="3cqZAo" node="27eOSzOUT$6" resolve="gentest" />
                  </node>
                </node>
                <node concept="2OqwBi" id="27eOSzOUT_z" role="3uHU7w">
                  <node concept="13iPFW" id="27eOSzOUT_$" role="2Oq$k0" />
                  <node concept="2Rxl7S" id="27eOSzOUT__" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="27eOSzOUT$C" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTvok" role="2Oq$k0">
              <ref role="3cqZAo" node="27eOSzOUT$6" resolve="gentest" />
            </node>
            <node concept="3x8VRR" id="27eOSzOUT$J" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="27eOSzOUT_S" role="3clF46">
        <property role="TrG5h" value="artifacts" />
        <node concept="3uibUv" id="27eOSzOUT_T" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:450ejGzgHe7" resolve="VisibleArtifacts" />
        </node>
      </node>
      <node concept="37vLTG" id="27eOSzOUT_U" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="27eOSzOUT_V" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:57YmpYyL8Fe" resolve="RequiredDependenciesBuilder" />
        </node>
      </node>
      <node concept="3cqZAl" id="27eOSzOUT_W" role="3clF45" />
    </node>
    <node concept="13i0hz" id="13YBgBBSiJK" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getProjectStructureScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:3fifI_xCJOQ" resolve="getProjectStructureScope" />
      <node concept="3Tm1VV" id="13YBgBBSiJL" role="1B3o_S" />
      <node concept="3clFbS" id="13YBgBBSiJM" role="3clF47">
        <node concept="3clFbJ" id="13YBgBBSiJW" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="13YBgBBSiJX" role="3clFbx">
            <node concept="3cpWs8" id="6Lvy_K1QEQs" role="3cqZAp">
              <node concept="3cpWsn" id="6Lvy_K1QEQt" role="3cpWs9">
                <property role="TrG5h" value="forAllVisible" />
                <node concept="A3Dl8" id="6Lvy_K1QEQ1" role="1tU5fm">
                  <node concept="3uibUv" id="6Lvy_K1QEQ4" role="A3Ik2">
                    <ref role="3uigEE" to="o3n2:13YBgBBS5VR" resolve="DescendantsScope" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Lvy_K1QEQu" role="33vP2m">
                  <node concept="2OqwBi" id="6Lvy_K1QEQv" role="2Oq$k0">
                    <node concept="2OqwBi" id="6Lvy_K1QEQw" role="2Oq$k0">
                      <node concept="13iPFW" id="6Lvy_K1QEQx" role="2Oq$k0" />
                      <node concept="2qgKlT" id="6Lvy_K1QEQy" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:13YBgBBS7ex" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6Lvy_K1QEQz" role="2OqNvi">
                      <ref role="37wK5l" to="vbkb:13YBgBBRSOL" resolve="getVisibleProjects" />
                      <node concept="3clFbT" id="6Lvy_K1QEQ$" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="6Lvy_K1QEQ_" role="2OqNvi">
                    <node concept="1bVj0M" id="6Lvy_K1QEQA" role="23t8la">
                      <node concept="3clFbS" id="6Lvy_K1QEQB" role="1bW5cS">
                        <node concept="3clFbF" id="6Lvy_K1QEQC" role="3cqZAp">
                          <node concept="2YIFZM" id="6Lvy_K1QEQD" role="3clFbG">
                            <ref role="1Pybhc" to="o3n2:13YBgBBS5VR" resolve="DescendantsScope" />
                            <ref role="37wK5l" to="o3n2:_dGddVGbND" resolve="forNamedElements" />
                            <node concept="37vLTw" id="6Lvy_K1QEQE" role="37wK5m">
                              <ref role="3cqZAo" node="6Lvy_K1QEQH" resolve="it" />
                            </node>
                            <node concept="359W_D" id="1GLgM0B3FEr" role="37wK5m">
                              <ref role="359W_F" to="3ior:6qcrfIJFfrM" />
                              <ref role="359W_E" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            </node>
                            <node concept="37vLTw" id="6Lvy_K1QEQG" role="37wK5m">
                              <ref role="3cqZAo" node="13YBgBBSiJN" resolve="kind" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6Lvy_K1QEQH" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6Lvy_K1QEQI" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6Lvy_K1QBjm" role="3cqZAp">
              <node concept="3cpWsn" id="6Lvy_K1QBjn" role="3cpWs9">
                <property role="TrG5h" value="forThis" />
                <node concept="A3Dl8" id="6Lvy_K1QBja" role="1tU5fm">
                  <node concept="3uibUv" id="6Lvy_K1QBjd" role="A3Ik2">
                    <ref role="3uigEE" to="o3n2:13YBgBBS5VR" resolve="DescendantsScope" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6Lvy_K1QBjo" role="33vP2m">
                  <node concept="2HTt$P" id="6Lvy_K1QBjp" role="2ShVmc">
                    <node concept="3uibUv" id="6Lvy_K1QBjq" role="2HTBi0">
                      <ref role="3uigEE" to="o3n2:13YBgBBS5VR" resolve="DescendantsScope" />
                    </node>
                    <node concept="2YIFZM" id="6Lvy_K1QBjr" role="2HTEbv">
                      <ref role="1Pybhc" to="o3n2:13YBgBBS5VR" resolve="DescendantsScope" />
                      <ref role="37wK5l" to="o3n2:_dGddVGbND" resolve="forNamedElements" />
                      <node concept="2OqwBi" id="6Lvy_K1QBjs" role="37wK5m">
                        <node concept="13iPFW" id="6Lvy_K1QBjt" role="2Oq$k0" />
                        <node concept="2qgKlT" id="6Lvy_K1QBju" role="2OqNvi">
                          <ref role="37wK5l" to="vbkb:13YBgBBS7ex" resolve="getProject" />
                        </node>
                      </node>
                      <node concept="359W_D" id="1GLgM0B3FOr" role="37wK5m">
                        <ref role="359W_F" to="3ior:6qcrfIJFfrM" />
                        <ref role="359W_E" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                      </node>
                      <node concept="37vLTw" id="6Lvy_K1QBjw" role="37wK5m">
                        <ref role="3cqZAo" node="13YBgBBSiJN" resolve="kind" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="13YBgBBSjnB" role="3cqZAp">
              <node concept="2ShNRf" id="13YBgBBSiMf" role="3cqZAk">
                <node concept="1pGfFk" id="13YBgBBSiMh" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:7ipADkTevLv" resolve="CompositeScope" />
                  <node concept="2OqwBi" id="13YBgBBSiMB" role="37wK5m">
                    <node concept="2OqwBi" id="13YBgBBSiLZ" role="2Oq$k0">
                      <node concept="37vLTw" id="6Lvy_K1QEQJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6Lvy_K1QEQt" resolve="forAllVisible" />
                      </node>
                      <node concept="3QWeyG" id="13YBgBBSiM5" role="2OqNvi">
                        <node concept="37vLTw" id="6Lvy_K1QBjx" role="576Qk">
                          <ref role="3cqZAo" node="6Lvy_K1QBjn" resolve="forThis" />
                        </node>
                      </node>
                    </node>
                    <node concept="3_kTaI" id="13YBgBBSiMH" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4k71ibbKNdg" role="3clFbw">
            <node concept="22lmx$" id="13YBgBBSDcK" role="3uHU7B">
              <node concept="2OqwBi" id="13YBgBBSiK5" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxglw$n" role="2Oq$k0">
                  <ref role="3cqZAo" node="13YBgBBSiJN" resolve="kind" />
                </node>
                <node concept="2Zo12i" id="13YBgBBSiK7" role="2OqNvi">
                  <node concept="chp4Y" id="13YBgBBSiK8" role="2Zo12j">
                    <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="13YBgBBSDcN" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxgm81j" role="2Oq$k0">
                  <ref role="3cqZAo" node="13YBgBBSiJN" resolve="kind" />
                </node>
                <node concept="2Zo12i" id="13YBgBBSDcP" role="2OqNvi">
                  <node concept="chp4Y" id="13YBgBBSDcQ" role="2Zo12j">
                    <ref role="cht4Q" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4k71ibbKNdj" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxgheUK" role="2Oq$k0">
                <ref role="3cqZAo" node="13YBgBBSiJN" resolve="kind" />
              </node>
              <node concept="2Zo12i" id="4k71ibbKNdl" role="2OqNvi">
                <node concept="chp4Y" id="4k71ibbKNdn" role="2Zo12j">
                  <ref role="cht4Q" to="kdzh:1jjYQYSgYJt" resolve="BuildMps_Group" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13YBgBBSiMJ" role="3cqZAp">
          <node concept="10Nm6u" id="13YBgBBSiMK" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="13YBgBBSiJN" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="1GLgM0B3FwB" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="13YBgBBSiJP" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="3zFnP6MyHTc" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getImportedLibraries" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:3zFnP6MwWdL" resolve="getImportedLibraries" />
      <node concept="3Tm1VV" id="3zFnP6MyHTd" role="1B3o_S" />
      <node concept="A3Dl8" id="3zFnP6MyHTj" role="3clF45">
        <node concept="3Tqbb2" id="3zFnP6MyHTk" role="A3Ik2">
          <ref role="ehGHo" to="8xvf:6l_Qx579cUi" resolve="BwfTaskLibrary" />
        </node>
      </node>
      <node concept="3clFbS" id="3zFnP6MyHTl" role="3clF47">
        <node concept="3clFbF" id="3zFnP6MyJoZ" role="3cqZAp">
          <node concept="2ShNRf" id="3zFnP6MyJoX" role="3clFbG">
            <node concept="2HTt$P" id="3zFnP6MyJvR" role="2ShVmc">
              <node concept="2OqwBi" id="L_Hr3kExIB" role="2HTEbv">
                <node concept="2qgKlT" id="L_Hr3kExIC" role="2OqNvi">
                  <ref role="37wK5l" node="3zFnP6MM9ge" resolve="getMpsLibrary" />
                </node>
                <node concept="3TUQnm" id="L_Hr3kExID" role="2Oq$k0">
                  <ref role="3TV0OU" to="kdzh:KbRDZ75DBp" resolve="BuildMPSPlugin" />
                </node>
              </node>
              <node concept="3Tqbb2" id="3zFnP6MyJwp" role="2HTBi0">
                <ref role="ehGHo" to="8xvf:6l_Qx579cUi" resolve="BwfTaskLibrary" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3zFnP6MM9ge" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="13i0is" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getMpsLibrary" />
      <node concept="3clFbS" id="3zFnP6MM9gh" role="3clF47">
        <node concept="3clFbF" id="3zFnP6MM9xt" role="3cqZAp">
          <node concept="2OqwBi" id="3zFnP6MyApH" role="3clFbG">
            <node concept="2pJPEk" id="3zFnP6MyD2V" role="2Oq$k0">
              <node concept="2pJPED" id="3zFnP6MyD2S" role="2pJPEn">
                <ref role="2pJxaS" to="8xvf:6l_Qx579wkR" resolve="BwfTaskLibraryDependency" />
                <node concept="2pIpSj" id="3zFnP6MyD2T" role="2pJxcM">
                  <ref role="2pIpSl" to="8xvf:6l_Qx579wkS" />
                  <node concept="36bGnv" id="3zFnP6MyLRJ" role="2pJxcZ">
                    <ref role="36bGnp" to="zwni:m8_23bzloH" resolve="mps" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrEf2" id="3zFnP6MyB_l" role="2OqNvi">
              <ref role="3Tt5mk" to="8xvf:6l_Qx579wkS" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3zFnP6MM9o9" role="3clF45">
        <ref role="ehGHo" to="8xvf:6l_Qx579cUi" resolve="BwfTaskLibrary" />
      </node>
      <node concept="3Tm1VV" id="3zFnP6MM9gf" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="1GEzjKC95qT">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="13h7C2" to="kdzh:5HVSRHdUrJF" resolve="BuildMps_IdeaPluginContent" />
    <node concept="13i0hz" id="5FtnUVJQES1" role="13h7CS">
      <property role="TrG5h" value="exports" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5FtnUVJQES2" role="1B3o_S" />
      <node concept="3clFbS" id="5FtnUVJQES4" role="3clF47">
        <node concept="3clFbF" id="5FtnUVJQES8" role="3cqZAp">
          <node concept="3clFbT" id="5FtnUVJQES9" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5FtnUVJQES5" role="3clF45" />
      <node concept="37vLTG" id="5FtnUVJQES6" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="5FtnUVJQES7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1GEzjKC95qU" role="13h7CW">
      <node concept="3clFbS" id="1GEzjKC95qV" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1GEzjKC97l9">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="13h7C2" to="kdzh:5HVSRHdUrJs" resolve="BuildMps_IdeaPluginModule" />
    <node concept="13hLZK" id="1GEzjKC97la" role="13h7CW">
      <node concept="3clFbS" id="1GEzjKC97lb" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1GEzjKC97lc" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="exports" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" node="5FtnUVJQES1" resolve="exports" />
      <node concept="3Tm1VV" id="1GEzjKC97ld" role="1B3o_S" />
      <node concept="3clFbS" id="1GEzjKC97le" role="3clF47">
        <node concept="3clFbJ" id="1GEzjKC97lo" role="3cqZAp">
          <node concept="3clFbS" id="1GEzjKC97lp" role="3clFbx">
            <node concept="3cpWs8" id="1GEzjKC97lq" role="3cqZAp">
              <node concept="3cpWsn" id="1GEzjKC97lr" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1GEzjKC97ls" role="1tU5fm" />
                <node concept="10QFUN" id="1GEzjKC97lt" role="33vP2m">
                  <node concept="3Tqbb2" id="1GEzjKC97lu" role="10QFUM" />
                  <node concept="37vLTw" id="2BHiRxghfI1" role="10QFUP">
                    <ref role="3cqZAo" node="1GEzjKC97lf" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1GEzjKC97lW" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="1GEzjKC97lX" role="3clFbx">
                <node concept="3cpWs6" id="1GEzjKC97lY" role="3cqZAp">
                  <node concept="3clFbC" id="1GEzjKC97nh" role="3cqZAk">
                    <node concept="37vLTw" id="3GM_nagTA5T" role="3uHU7w">
                      <ref role="3cqZAo" node="1GEzjKC97lr" resolve="node" />
                    </node>
                    <node concept="2OqwBi" id="1GEzjKC97mI" role="3uHU7B">
                      <node concept="13iPFW" id="1GEzjKC97mp" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1GEzjKC97mR" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5HVSRHdUrJt" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1GEzjKC97mf" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTwpf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1GEzjKC97lr" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="1GEzjKC97mh" role="2OqNvi">
                  <node concept="chp4Y" id="1GEzjKC97mP" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1GEzjKC97mj" role="3clFbw">
            <node concept="3uibUv" id="1GEzjKC97mk" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxglrzw" role="2ZW6bz">
              <ref role="3cqZAo" node="1GEzjKC97lf" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1GEzjKC97li" role="3cqZAp">
          <node concept="2OqwBi" id="1GEzjKC97lj" role="3clFbG">
            <node concept="13iAh5" id="1GEzjKC97lk" role="2Oq$k0" />
            <node concept="2qgKlT" id="1GEzjKC97ll" role="2OqNvi">
              <ref role="37wK5l" node="5FtnUVJQES1" resolve="exports" />
              <node concept="37vLTw" id="2BHiRxgmcrR" role="37wK5m">
                <ref role="3cqZAo" node="1GEzjKC97lf" resolve="object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1GEzjKC97lf" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1GEzjKC97lg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1GEzjKC97lh" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1GEzjKC97nn">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="13h7C2" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
    <node concept="13hLZK" id="1GEzjKC97no" role="13h7CW">
      <node concept="3clFbS" id="1GEzjKC97np" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1GEzjKC97nq" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="exports" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" node="5FtnUVJQES1" resolve="exports" />
      <node concept="3Tm1VV" id="1GEzjKC97nr" role="1B3o_S" />
      <node concept="3clFbS" id="1GEzjKC97ns" role="3clF47">
        <node concept="3clFbJ" id="1GEzjKC97nA" role="3cqZAp">
          <node concept="3clFbS" id="1GEzjKC97nB" role="3clFbx">
            <node concept="3cpWs8" id="1GEzjKC97nC" role="3cqZAp">
              <node concept="3cpWsn" id="1GEzjKC97nD" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1GEzjKC97nE" role="1tU5fm" />
                <node concept="10QFUN" id="1GEzjKC97nF" role="33vP2m">
                  <node concept="3Tqbb2" id="1GEzjKC97nG" role="10QFUM" />
                  <node concept="37vLTw" id="2BHiRxgm6U1" role="10QFUP">
                    <ref role="3cqZAo" node="1GEzjKC97nt" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1GEzjKC97nI" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="1GEzjKC97nJ" role="3clFbx">
                <node concept="3cpWs6" id="1GEzjKC97nK" role="3cqZAp">
                  <node concept="2OqwBi" id="1GEzjKC97oL" role="3cqZAk">
                    <node concept="2OqwBi" id="1GEzjKC97ol" role="2Oq$k0">
                      <node concept="2OqwBi" id="1GEzjKC97nN" role="2Oq$k0">
                        <node concept="13iPFW" id="1GEzjKC97nO" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1GEzjKC97nZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5HVSRHdUL82" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="1GEzjKC97or" role="2OqNvi">
                        <ref role="3TtcxE" to="kdzh:1jjYQYSgYJu" />
                      </node>
                    </node>
                    <node concept="3JPx81" id="1GEzjKC97oR" role="2OqNvi">
                      <node concept="1PxgMI" id="1GEzjKC97oU" role="25WWJ7">
                        <ref role="1PxNhF" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                        <node concept="37vLTw" id="3GM_nagTw1A" role="1PxMeX">
                          <ref role="3cqZAo" node="1GEzjKC97nD" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1GEzjKC97nQ" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTAQG" role="2Oq$k0">
                  <ref role="3cqZAo" node="1GEzjKC97nD" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="1GEzjKC97nS" role="2OqNvi">
                  <node concept="chp4Y" id="1GEzjKC97nT" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1GEzjKC97nU" role="3clFbw">
            <node concept="3uibUv" id="1GEzjKC97nV" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxglRu2" role="2ZW6bz">
              <ref role="3cqZAo" node="1GEzjKC97nt" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1GEzjKC97nw" role="3cqZAp">
          <node concept="2OqwBi" id="1GEzjKC97nx" role="3clFbG">
            <node concept="13iAh5" id="1GEzjKC97ny" role="2Oq$k0" />
            <node concept="2qgKlT" id="1GEzjKC97nz" role="2OqNvi">
              <ref role="37wK5l" node="5FtnUVJQES1" resolve="exports" />
              <node concept="37vLTw" id="2BHiRxgm86E" role="37wK5m">
                <ref role="3cqZAo" node="1GEzjKC97nt" resolve="object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1GEzjKC97nt" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1GEzjKC97nu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1GEzjKC97nv" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7cOEBlPTrI3" role="13h7CS">
      <property role="TrG5h" value="isCustomPackaging" />
      <node concept="37vLTG" id="7cOEBlPTrI8" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3Tqbb2" id="7cOEBlPTrIa" role="1tU5fm">
          <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7cOEBlPTrI4" role="1B3o_S" />
      <node concept="10P_77" id="7cOEBlPTrI7" role="3clF45" />
      <node concept="3clFbS" id="7cOEBlPTrI6" role="3clF47">
        <node concept="3clFbF" id="7cOEBlPTrIf" role="3cqZAp">
          <node concept="2OqwBi" id="7cOEBlPTrIg" role="3clFbG">
            <node concept="2OqwBi" id="7cOEBlPTrIh" role="2Oq$k0">
              <node concept="2OqwBi" id="7cOEBlPTrIi" role="2Oq$k0">
                <node concept="3Tsc0h" id="7cOEBlPTrIj" role="2OqNvi">
                  <ref role="3TtcxE" to="kdzh:3vXGXT8byGJ" />
                </node>
                <node concept="13iPFW" id="7cOEBlPTrIw" role="2Oq$k0" />
              </node>
              <node concept="3$u5V9" id="7cOEBlPTrIl" role="2OqNvi">
                <node concept="1bVj0M" id="7cOEBlPTrIm" role="23t8la">
                  <node concept="3clFbS" id="7cOEBlPTrIn" role="1bW5cS">
                    <node concept="3clFbF" id="7cOEBlPTrIo" role="3cqZAp">
                      <node concept="2OqwBi" id="7cOEBlPTrIp" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxglXnS" role="2Oq$k0">
                          <ref role="3cqZAo" node="7cOEBlPTrIs" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="7cOEBlPTrIr" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:3vXGXT8byGC" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7cOEBlPTrIs" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7cOEBlPTrIt" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3JPx81" id="7cOEBlPTrIu" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgl6sg" role="25WWJ7">
                <ref role="3cqZAo" node="7cOEBlPTrI8" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5bqm540KDl3">
    <property role="3GE5qa" value="Layout" />
    <ref role="13h7C2" to="kdzh:1OSlDLmr8Mh" resolve="BuildMpsLayout_FolderWithSources" />
    <node concept="13hLZK" id="5bqm540KDl4" role="13h7CW">
      <node concept="3clFbS" id="5bqm540KDl5" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5bqm540KDl6" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="reexportsFromJar" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:5bqm540K$Gb" resolve="reexportsFromJar" />
      <node concept="3Tm1VV" id="5bqm540KDl7" role="1B3o_S" />
      <node concept="3clFbS" id="5bqm540KDl8" role="3clF47">
        <node concept="3clFbF" id="5bqm540KDlf" role="3cqZAp">
          <node concept="3clFbC" id="5bqm540KDlh" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmuX8" role="3uHU7B">
              <ref role="3cqZAo" node="5bqm540KDl9" resolve="o" />
            </node>
            <node concept="2OqwBi" id="5bqm540KDm6" role="3uHU7w">
              <node concept="13iPFW" id="5bqm540KDlL" role="2Oq$k0" />
              <node concept="3TrEf2" id="5bqm540KDmc" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:1tWbYFNhzsh" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5bqm540KDl9" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5bqm540KDla" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="5bqm540KDlb" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5bqm540KDmd">
    <property role="3GE5qa" value="Layout" />
    <ref role="13h7C2" to="kdzh:1tWbYFNhzsg" resolve="BuildMpsLayout_ModuleSources" />
    <node concept="13hLZK" id="5bqm540KDme" role="13h7CW">
      <node concept="3clFbS" id="5bqm540KDmf" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5bqm540KDmg" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="reexportsFromJar" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:5bqm540K$Gb" resolve="reexportsFromJar" />
      <node concept="3Tm1VV" id="5bqm540KDmh" role="1B3o_S" />
      <node concept="3clFbS" id="5bqm540KDmi" role="3clF47">
        <node concept="3clFbF" id="5bqm540KDmp" role="3cqZAp">
          <node concept="3clFbC" id="5bqm540KDmJ" role="3clFbG">
            <node concept="2OqwBi" id="5bqm540KDn7" role="3uHU7w">
              <node concept="13iPFW" id="5bqm540KDmM" role="2Oq$k0" />
              <node concept="3TrEf2" id="5bqm540KDnd" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:1tWbYFNhzsh" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgkX5M" role="3uHU7B">
              <ref role="3cqZAo" node="5bqm540KDmj" resolve="o" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5bqm540KDmj" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5bqm540KDmk" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="5bqm540KDml" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="6qlcPcvboVC">
    <property role="3GE5qa" value="Project" />
    <ref role="13h7C2" to="kdzh:hS0KzPOwoe" resolve="BuildMps_DevKit" />
    <node concept="13i0hz" id="6qlcPcvboVF" role="13h7CS">
      <property role="TrG5h" value="getExportedModules" />
      <node concept="3Tm1VV" id="6qlcPcvboVG" role="1B3o_S" />
      <node concept="A3Dl8" id="6qlcPcvboVJ" role="3clF45">
        <node concept="3Tqbb2" id="6qlcPcvboVL" role="A3Ik2">
          <ref role="ehGHo" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
        </node>
      </node>
      <node concept="3clFbS" id="6qlcPcvboVI" role="3clF47">
        <node concept="3clFbF" id="6qlcPcvboVM" role="3cqZAp">
          <node concept="2OqwBi" id="6qlcPcvboZP" role="3clFbG">
            <node concept="2OqwBi" id="6qlcPcvboXJ" role="2Oq$k0">
              <node concept="2OqwBi" id="6qlcPcvboW$" role="2Oq$k0">
                <node concept="2OqwBi" id="6qlcPcvboW8" role="2Oq$k0">
                  <node concept="13iPFW" id="6qlcPcvboVN" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6qlcPcvboWe" role="2OqNvi">
                    <ref role="3TtcxE" to="kdzh:hS0KzPODQ2" />
                  </node>
                </node>
                <node concept="3zZkjj" id="6qlcPcvboXf" role="2OqNvi">
                  <node concept="1bVj0M" id="6qlcPcvboXg" role="23t8la">
                    <node concept="3clFbS" id="6qlcPcvboXh" role="1bW5cS">
                      <node concept="3clFbF" id="6qlcPcvboXi" role="3cqZAp">
                        <node concept="2OqwBi" id="6qlcPcvboXj" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgm_yc" role="2Oq$k0">
                            <ref role="3cqZAo" node="6qlcPcvboXn" resolve="it" />
                          </node>
                          <node concept="1mIQ4w" id="6qlcPcvboXl" role="2OqNvi">
                            <node concept="chp4Y" id="6qlcPcvboXp" role="cj9EA">
                              <ref role="cht4Q" to="kdzh:hS0KzPODPE" resolve="BuildMps_DevKitExportLanguage" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6qlcPcvboXn" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6qlcPcvboXo" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6qlcPcvboXP" role="2OqNvi">
                <node concept="1bVj0M" id="6qlcPcvboXQ" role="23t8la">
                  <node concept="3clFbS" id="6qlcPcvboXR" role="1bW5cS">
                    <node concept="3clFbF" id="6qlcPcvboXU" role="3cqZAp">
                      <node concept="2OqwBi" id="6qlcPcvboZm" role="3clFbG">
                        <node concept="1PxgMI" id="6qlcPcvboYC" role="2Oq$k0">
                          <ref role="1PxNhF" to="kdzh:hS0KzPODPE" resolve="BuildMps_DevKitExportLanguage" />
                          <node concept="37vLTw" id="2BHiRxgmHxj" role="1PxMeX">
                            <ref role="3cqZAo" node="6qlcPcvboXS" resolve="it" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6qlcPcvboZs" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:hS0KzPODPN" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6qlcPcvboXS" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6qlcPcvboXT" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3QWeyG" id="6qlcPcvboZV" role="2OqNvi">
              <node concept="2OqwBi" id="6qlcPcvboZX" role="576Qk">
                <node concept="2OqwBi" id="6qlcPcvboZY" role="2Oq$k0">
                  <node concept="2OqwBi" id="6qlcPcvboZZ" role="2Oq$k0">
                    <node concept="13iPFW" id="6qlcPcvbp00" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6qlcPcvbp01" role="2OqNvi">
                      <ref role="3TtcxE" to="kdzh:hS0KzPODQ2" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="6qlcPcvbp02" role="2OqNvi">
                    <node concept="1bVj0M" id="6qlcPcvbp03" role="23t8la">
                      <node concept="3clFbS" id="6qlcPcvbp04" role="1bW5cS">
                        <node concept="3clFbF" id="6qlcPcvbp05" role="3cqZAp">
                          <node concept="2OqwBi" id="6qlcPcvbp06" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxgm2_R" role="2Oq$k0">
                              <ref role="3cqZAo" node="6qlcPcvbp0a" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="6qlcPcvbp08" role="2OqNvi">
                              <node concept="chp4Y" id="6qlcPcvbp0m" role="cj9EA">
                                <ref role="cht4Q" to="kdzh:hS0KzPODPU" resolve="BuildMps_DevKitExportSolution" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6qlcPcvbp0a" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6qlcPcvbp0b" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="6qlcPcvbp0c" role="2OqNvi">
                  <node concept="1bVj0M" id="6qlcPcvbp0d" role="23t8la">
                    <node concept="3clFbS" id="6qlcPcvbp0e" role="1bW5cS">
                      <node concept="3clFbF" id="6qlcPcvbp0f" role="3cqZAp">
                        <node concept="2OqwBi" id="6qlcPcvbp0g" role="3clFbG">
                          <node concept="1PxgMI" id="6qlcPcvbp0h" role="2Oq$k0">
                            <ref role="1PxNhF" to="kdzh:hS0KzPODPU" resolve="BuildMps_DevKitExportSolution" />
                            <node concept="37vLTw" id="2BHiRxgm7cN" role="1PxMeX">
                              <ref role="3cqZAo" node="6qlcPcvbp0k" resolve="it" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="6qlcPcvbp0o" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:hS0KzPODPV" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6qlcPcvbp0k" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6qlcPcvbp0l" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6qlcPcvboVD" role="13h7CW">
      <node concept="3clFbS" id="6qlcPcvboVE" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7cOEBlPPwij">
    <property role="3GE5qa" value="Layout" />
    <ref role="13h7C2" to="kdzh:5HVSRHdV$dW" resolve="BuildMpsLayout_PluginDescriptor" />
    <node concept="13hLZK" id="7cOEBlPPwik" role="13h7CW">
      <node concept="3clFbS" id="7cOEBlPPwil" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7cOEBlPPwim" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="exports" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:5FtnUVJQES1" resolve="exports" />
      <node concept="3Tm1VV" id="7cOEBlPPwin" role="1B3o_S" />
      <node concept="3clFbS" id="7cOEBlPPwio" role="3clF47">
        <node concept="3clFbJ" id="7cOEBlPPz4g" role="3cqZAp">
          <node concept="3clFbS" id="7cOEBlPPz4h" role="3clFbx">
            <node concept="3cpWs8" id="7cOEBlPPz4i" role="3cqZAp">
              <node concept="3cpWsn" id="7cOEBlPPz4j" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="7cOEBlPPz4k" role="1tU5fm" />
                <node concept="10QFUN" id="7cOEBlPPz4l" role="33vP2m">
                  <node concept="3Tqbb2" id="7cOEBlPPz4m" role="10QFUM" />
                  <node concept="37vLTw" id="2BHiRxgkX5A" role="10QFUP">
                    <ref role="3cqZAo" node="7cOEBlPPwip" resolve="artifactId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="57NqmbciVlx" role="3cqZAp">
              <node concept="3SKdUq" id="57NqmbciVly" role="3SKWNk">
                <property role="3SKdUp" value="todo (in 3.0+) plugin should be exported by folder, not by xml" />
              </node>
            </node>
            <node concept="3SKdUt" id="3qWAZKH$flF" role="3cqZAp">
              <node concept="3SKdUq" id="3qWAZKH$fnM" role="3SKWNk">
                <property role="3SKdUp" value="weeeeell?" />
              </node>
            </node>
            <node concept="3clFbJ" id="7cOEBlPPz4o" role="3cqZAp">
              <node concept="3clFbS" id="7cOEBlPPz4p" role="3clFbx">
                <node concept="3cpWs6" id="7cOEBlPPz4q" role="3cqZAp">
                  <node concept="3clFbC" id="7cOEBlPPz4r" role="3cqZAk">
                    <node concept="37vLTw" id="3GM_nagT$bb" role="3uHU7w">
                      <ref role="3cqZAo" node="7cOEBlPPz4j" resolve="node" />
                    </node>
                    <node concept="2OqwBi" id="7cOEBlPPz4t" role="3uHU7B">
                      <node concept="13iPFW" id="7cOEBlPPz4u" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7cOEBlPPz5r" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5HVSRHdV$dX" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7cOEBlPPz4w" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTB9K" role="2Oq$k0">
                  <ref role="3cqZAo" node="7cOEBlPPz4j" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="7cOEBlPPz4y" role="2OqNvi">
                  <node concept="chp4Y" id="7cOEBlPPz4z" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7cOEBlPPz5n" role="3clFbw">
            <node concept="3uibUv" id="7cOEBlPPz5o" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm6vn" role="2ZW6bz">
              <ref role="3cqZAo" node="7cOEBlPPwip" resolve="artifactId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cOEBlPPwis" role="3cqZAp">
          <node concept="2OqwBi" id="7cOEBlPPwit" role="3clFbG">
            <node concept="13iAh5" id="7cOEBlPPwiu" role="2Oq$k0" />
            <node concept="2qgKlT" id="7cOEBlPPwiv" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:5FtnUVJQES1" resolve="exports" />
              <node concept="37vLTw" id="2BHiRxglK$c" role="37wK5m">
                <ref role="3cqZAo" node="7cOEBlPPwip" resolve="artifactId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7cOEBlPPwip" role="3clF46">
        <property role="TrG5h" value="artifactId" />
        <node concept="3uibUv" id="7cOEBlPPwiq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="7cOEBlPPwir" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7cOEBlPPwix" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="location" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:6b4RkXS8sT2" resolve="location" />
      <node concept="3Tm1VV" id="7cOEBlPPwiy" role="1B3o_S" />
      <node concept="3clFbS" id="7cOEBlPPwiz" role="3clF47">
        <node concept="3clFbJ" id="7cOEBlPPz1N" role="3cqZAp">
          <node concept="3clFbS" id="7cOEBlPPz1O" role="3clFbx">
            <node concept="3cpWs8" id="7cOEBlPPz1P" role="3cqZAp">
              <node concept="3cpWsn" id="7cOEBlPPz1Q" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="7cOEBlPPz1R" role="1tU5fm" />
                <node concept="10QFUN" id="7cOEBlPPz1S" role="33vP2m">
                  <node concept="3Tqbb2" id="7cOEBlPPz1T" role="10QFUM" />
                  <node concept="37vLTw" id="2BHiRxgm$BG" role="10QFUP">
                    <ref role="3cqZAo" node="7cOEBlPPwiA" resolve="artifactId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7cOEBlPPz3n" role="3cqZAp">
              <node concept="3clFbS" id="7cOEBlPPz3o" role="3clFbx">
                <node concept="3cpWs6" id="7cOEBlPPz3p" role="3cqZAp">
                  <node concept="3cpWs3" id="7cOEBlPPz3V" role="3cqZAk">
                    <node concept="Xl_RD" id="7cOEBlPPz3Y" role="3uHU7w">
                      <property role="Xl_RC" value="/../.." />
                    </node>
                    <node concept="2OqwBi" id="7cOEBlPPz3q" role="3uHU7B">
                      <node concept="2OqwBi" id="7cOEBlPPz3r" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxglJUb" role="2Oq$k0">
                          <ref role="3cqZAo" node="7cOEBlPPwi$" resolve="helper" />
                        </node>
                        <node concept="liA8E" id="7cOEBlPPz3t" role="2OqNvi">
                          <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7cOEBlPPz3u" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                        <node concept="13iPFW" id="7cOEBlPPz3v" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7cOEBlPPz3w" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT$ZX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7cOEBlPPz1Q" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="7cOEBlPPz3y" role="2OqNvi">
                  <node concept="chp4Y" id="7cOEBlPPz3z" role="cj9EA">
                    <ref role="cht4Q" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7cOEBlPPz3$" role="3clFbw">
            <node concept="3uibUv" id="7cOEBlPPz3_" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxglB5u" role="2ZW6bz">
              <ref role="3cqZAo" node="7cOEBlPPwiA" resolve="artifactId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cOEBlPPwiD" role="3cqZAp">
          <node concept="2OqwBi" id="7cOEBlPPwiE" role="3clFbG">
            <node concept="13iAh5" id="7cOEBlPPwiF" role="2Oq$k0" />
            <node concept="2qgKlT" id="7cOEBlPPwiG" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:6b4RkXS8sT2" resolve="location" />
              <node concept="37vLTw" id="2BHiRxglIpM" role="37wK5m">
                <ref role="3cqZAo" node="7cOEBlPPwi$" resolve="helper" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmFPJ" role="37wK5m">
                <ref role="3cqZAo" node="7cOEBlPPwiA" resolve="artifactId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7cOEBlPPwi$" role="3clF46">
        <property role="TrG5h" value="helper" />
        <node concept="3uibUv" id="7cOEBlPPwi_" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:41__iZjkZ0W" resolve="DependenciesHelper" />
        </node>
      </node>
      <node concept="37vLTG" id="7cOEBlPPwiA" role="3clF46">
        <property role="TrG5h" value="artifactId" />
        <node concept="3uibUv" id="7cOEBlPPwiB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="17QB3L" id="7cOEBlPPwiC" role="3clF45" />
    </node>
    <node concept="13i0hz" id="QkG2t1cwek" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="appendName" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:1bWeed$ownT" resolve="appendName" />
      <node concept="3Tm1VV" id="QkG2t1cwel" role="1B3o_S" />
      <node concept="3clFbS" id="QkG2t1cwem" role="3clF47">
        <node concept="3clFbJ" id="QkG2t1cweI" role="3cqZAp">
          <node concept="3clFbS" id="QkG2t1cweJ" role="3clFbx">
            <node concept="3clFbF" id="QkG2t1cweK" role="3cqZAp">
              <node concept="2OqwBi" id="QkG2t1cweL" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglROn" role="2Oq$k0">
                  <ref role="3cqZAo" node="QkG2t1cwep" resolve="sb" />
                </node>
                <node concept="liA8E" id="QkG2t1cweN" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="QkG2t1cweO" role="37wK5m">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="QkG2t1cweP" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgld$E" role="2Oq$k0">
              <ref role="3cqZAo" node="QkG2t1cwen" resolve="parent" />
            </node>
            <node concept="1mIQ4w" id="QkG2t1cweR" role="2OqNvi">
              <node concept="chp4Y" id="QkG2t1cweS" role="cj9EA">
                <ref role="cht4Q" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="QkG2t1cweT" role="3cqZAp">
          <node concept="2OqwBi" id="QkG2t1cweU" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmFch" role="2Oq$k0">
              <ref role="3cqZAo" node="QkG2t1cwep" resolve="sb" />
            </node>
            <node concept="liA8E" id="QkG2t1cweW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="L_Hr3kEsjb" role="37wK5m">
                <node concept="2qgKlT" id="L_Hr3kEsjc" role="2OqNvi">
                  <ref role="37wK5l" node="QkG2t1cwfm" resolve="pluginXml" />
                </node>
                <node concept="3TUQnm" id="L_Hr3kEsjd" role="2Oq$k0">
                  <ref role="3TV0OU" to="kdzh:5HVSRHdV$dW" resolve="BuildMpsLayout_PluginDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="QkG2t1cwen" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="QkG2t1cweo" role="1tU5fm">
          <ref role="ehGHo" to="3ior:6bGbH3Svq63" resolve="BuildLayout_PathElement" />
        </node>
      </node>
      <node concept="37vLTG" id="QkG2t1cwep" role="3clF46">
        <property role="TrG5h" value="sb" />
        <node concept="3uibUv" id="QkG2t1cweq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="3cqZAl" id="QkG2t1cwer" role="3clF45" />
    </node>
    <node concept="13i0hz" id="QkG2t1cwf_" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="unpack" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:6bGbH3Svq6g" resolve="unpack" />
      <node concept="3Tm1VV" id="QkG2t1cwfA" role="1B3o_S" />
      <node concept="3clFbS" id="QkG2t1cwfB" role="3clF47">
        <node concept="3cpWs8" id="7UAfeVQUcaC" role="3cqZAp">
          <node concept="3cpWsn" id="7UAfeVQUcaD" role="3cpWs9">
            <property role="TrG5h" value="parentLocation" />
            <node concept="17QB3L" id="7UAfeVQUcaE" role="1tU5fm" />
            <node concept="2OqwBi" id="7UAfeVQUcaF" role="33vP2m">
              <node concept="2OqwBi" id="7UAfeVQUcaG" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgmajX" role="2Oq$k0">
                  <ref role="3cqZAo" node="QkG2t1cwfC" resolve="helper" />
                </node>
                <node concept="liA8E" id="7UAfeVQUcaI" role="2OqNvi">
                  <ref role="37wK5l" to="o3n2:41__iZjkZlc" resolve="contentLocations" />
                </node>
              </node>
              <node concept="liA8E" id="7UAfeVQUcaJ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="2OqwBi" id="QkG2t1cwfZ" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgmaTA" role="2Oq$k0">
                    <ref role="3cqZAo" node="QkG2t1cwfC" resolve="helper" />
                  </node>
                  <node concept="liA8E" id="QkG2t1cwg1" role="2OqNvi">
                    <ref role="37wK5l" to="o3n2:6bGbH3Svthg" resolve="parent" />
                    <node concept="13iPFW" id="QkG2t1cwg2" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7UAfeVQUcbd" role="3cqZAp">
          <node concept="2OqwBi" id="7UAfeVQUcbe" role="3clFbG">
            <node concept="2OqwBi" id="7UAfeVQUcbf" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxglnlW" role="2Oq$k0">
                <ref role="3cqZAo" node="QkG2t1cwfC" resolve="helper" />
              </node>
              <node concept="liA8E" id="7UAfeVQUcbh" role="2OqNvi">
                <ref role="37wK5l" to="o3n2:41__iZjkZl4" resolve="locations" />
              </node>
            </node>
            <node concept="liA8E" id="7UAfeVQUcbi" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="13iPFW" id="7UAfeVQUcbj" role="37wK5m" />
              <node concept="3cpWs3" id="QkG2t1cwfU" role="37wK5m">
                <node concept="2OqwBi" id="L_Hr3kErZ3" role="3uHU7w">
                  <node concept="2qgKlT" id="L_Hr3kErZ4" role="2OqNvi">
                    <ref role="37wK5l" node="QkG2t1cwfm" resolve="pluginXml" />
                  </node>
                  <node concept="3TUQnm" id="L_Hr3kErZ5" role="2Oq$k0">
                    <ref role="3TV0OU" to="kdzh:5HVSRHdV$dW" resolve="BuildMpsLayout_PluginDescriptor" />
                  </node>
                </node>
                <node concept="3cpWs3" id="QkG2t1cwfV" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTxzR" role="3uHU7B">
                    <ref role="3cqZAo" node="7UAfeVQUcaD" resolve="parentLocation" />
                  </node>
                  <node concept="Xl_RD" id="QkG2t1cwfX" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="QkG2t1cwfC" role="3clF46">
        <property role="TrG5h" value="helper" />
        <node concept="3uibUv" id="QkG2t1cwfD" role="1tU5fm">
          <ref role="3uigEE" to="o3n2:2fLy7QGT29I" resolve="UnpackHelper" />
        </node>
      </node>
      <node concept="37vLTG" id="QkG2t1cwfE" role="3clF46">
        <property role="TrG5h" value="artifacts" />
        <node concept="3uibUv" id="QkG2t1cwfF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="QkG2t1cwfG" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="QkG2t1cwfH" role="3clF45" />
    </node>
    <node concept="13i0hz" id="QkG2t1cwfm" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="13i0is" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="pluginXml" />
      <node concept="3clFbS" id="QkG2t1cwfp" role="3clF47">
        <node concept="3clFbF" id="QkG2t1cwfs" role="3cqZAp">
          <node concept="Xl_RD" id="QkG2t1cwft" role="3clFbG">
            <property role="Xl_RC" value="plugin.xml" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="QkG2t1cwfr" role="3clF45" />
      <node concept="3Tm1VV" id="QkG2t1cwfn" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="19QsrPtyWuz">
    <property role="3GE5qa" value="Layout" />
    <ref role="13h7C2" to="kdzh:19QsrPtyVhw" resolve="BuildLayout_ToBinaryCopyProcessor" />
    <node concept="13hLZK" id="19QsrPtyWu$" role="13h7CW">
      <node concept="3clFbS" id="19QsrPtyWu_" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="19QsrPtyWvp" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getTaskName" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="vbkb:19QsrPtc4wK" resolve="getTaskName" />
      <node concept="17QB3L" id="19QsrPtyWvq" role="3clF45" />
      <node concept="3Tm1VV" id="19QsrPtyWvr" role="1B3o_S" />
      <node concept="3clFbS" id="19QsrPtyWvt" role="3clF47">
        <node concept="3SKdUt" id="19QsrPugcpk" role="3cqZAp">
          <node concept="3SKdUq" id="19QsrPugcpr" role="3SKWNk">
            <property role="3SKdUp" value="Note: task is declared in generator/weave_Tasks" />
          </node>
        </node>
        <node concept="3clFbF" id="19QsrPtyWvz" role="3cqZAp">
          <node concept="Xl_RD" id="19QsrPtyWvy" role="3clFbG">
            <property role="Xl_RC" value="copyModels" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6R_3WZ31Miq" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getTaskArguments" />
      <ref role="13i0hy" to="vbkb:6R_3WZ31H2E" resolve="getTaskArguments" />
      <node concept="3Tm1VV" id="6R_3WZ31Mir" role="1B3o_S" />
      <node concept="3uibUv" id="6R_3WZ31Mis" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="6R_3WZ31Mit" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3uibUv" id="6R_3WZ31Miu" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6R_3WZ31Miw" role="3clF47">
        <node concept="3clFbJ" id="6R_3WZ31NT0" role="3cqZAp">
          <node concept="3clFbS" id="6R_3WZ31NT3" role="3clFbx">
            <node concept="3cpWs6" id="6R_3WZ31Qqa" role="3cqZAp">
              <node concept="2YIFZM" id="6R_3WZ31Qtd" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.singletonMap(java.lang.Object,java.lang.Object):java.util.Map" resolve="singletonMap" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="Xl_RD" id="6R_3WZ31Qw4" role="37wK5m">
                  <property role="Xl_RC" value="stripImplementation" />
                </node>
                <node concept="Xl_RD" id="6R_3WZ31Rai" role="37wK5m">
                  <property role="Xl_RC" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6R_3WZ31O3I" role="3clFbw">
            <node concept="13iPFW" id="6R_3WZ31NTN" role="2Oq$k0" />
            <node concept="3TrcHB" id="6R_3WZ31Qph" role="2OqNvi">
              <ref role="3TsBF5" to="kdzh:6R_3WZ2ZFMa" resolve="stripImplementation" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6R_3WZ31RTT" role="3cqZAp">
          <node concept="2YIFZM" id="6R_3WZ31Sb8" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyMap():java.util.Map" resolve="emptyMap" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7YI57w6ZMdW">
    <property role="3GE5qa" value="Project" />
    <ref role="13h7C2" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
    <node concept="13i0hz" id="7YI57w6ZMdZ" role="13h7CS">
      <property role="TrG5h" value="getSourceLanguage" />
      <node concept="3Tqbb2" id="7YI57w6ZMe7" role="3clF45">
        <ref role="ehGHo" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
      </node>
      <node concept="3Tm1VV" id="7YI57w6ZMe0" role="1B3o_S" />
      <node concept="3clFbS" id="7YI57w6ZMe2" role="3clF47">
        <node concept="3cpWs6" id="7YI57w6ZTnn" role="3cqZAp">
          <node concept="3K4zz7" id="7YI57w6ZTno" role="3cqZAk">
            <node concept="1PxgMI" id="7YI57w6ZTnp" role="3K4E3e">
              <ref role="1PxNhF" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
              <node concept="2OqwBi" id="7YI57w6ZTnq" role="1PxMeX">
                <node concept="13iPFW" id="7YI57w6ZTnr" role="2Oq$k0" />
                <node concept="1mfA1w" id="7YI57w6ZTns" role="2OqNvi" />
              </node>
            </node>
            <node concept="2OqwBi" id="7YI57w6ZTnt" role="3K4GZi">
              <node concept="13iPFW" id="7YI57w6ZTnu" role="2Oq$k0" />
              <node concept="3TrEf2" id="7YI57w6ZTnv" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:Kfbl0tIRdc" />
              </node>
            </node>
            <node concept="2OqwBi" id="7YI57w6ZTnw" role="3K4Cdx">
              <node concept="1mIQ4w" id="7YI57w6ZTnx" role="2OqNvi">
                <node concept="chp4Y" id="7YI57w6ZTny" role="cj9EA">
                  <ref role="cht4Q" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
                </node>
              </node>
              <node concept="2OqwBi" id="7YI57w6ZTnz" role="2Oq$k0">
                <node concept="13iPFW" id="7YI57w6ZTn$" role="2Oq$k0" />
                <node concept="1mfA1w" id="7YI57w6ZTn_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7YI57w6ZMdX" role="13h7CW">
      <node concept="3clFbS" id="7YI57w6ZMdY" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1kfMLj5JgVi">
    <property role="3GE5qa" value="Project" />
    <ref role="13h7C2" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
    <node concept="13hLZK" id="1kfMLj5JgYI" role="13h7CW">
      <node concept="3clFbS" id="1kfMLj5JgYJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1kfMLj5Jhus" role="13h7CS">
      <property role="TrG5h" value="getGenerator" />
      <node concept="3Tqbb2" id="1kfMLj5Jhu$" role="3clF45">
        <ref role="ehGHo" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
      </node>
      <node concept="3Tm1VV" id="1kfMLj5Jhut" role="1B3o_S" />
      <node concept="3clFbS" id="1kfMLj5Jhuv" role="3clF47">
        <node concept="3clFbJ" id="1kfMLj5JiyJ" role="3cqZAp">
          <node concept="2OqwBi" id="1kfMLj5Jp0N" role="3clFbw">
            <node concept="3x8VRR" id="1kfMLj5Jr21" role="2OqNvi" />
            <node concept="2OqwBi" id="1kfMLj5Jjto" role="2Oq$k0">
              <node concept="3TrEf2" id="1kfMLj5Jn1I" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:7YI57w6gNwB" />
              </node>
              <node concept="13iPFW" id="1kfMLj5JjiD" role="2Oq$k0" />
            </node>
          </node>
          <node concept="3clFbS" id="1kfMLj5JiyM" role="3clFbx">
            <node concept="3cpWs6" id="1kfMLj5Jr24" role="3cqZAp">
              <node concept="2OqwBi" id="1kfMLj5JrcX" role="3cqZAk">
                <node concept="3TrEf2" id="1kfMLj5JsZx" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:7YI57w6gNwB" />
                </node>
                <node concept="13iPFW" id="1kfMLj5Jr2b" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1kfMLj5Jt0y" role="3cqZAp">
          <node concept="2OqwBi" id="1kfMLj5JyDm" role="3clFbw">
            <node concept="1mIQ4w" id="1kfMLj5JzrZ" role="2OqNvi">
              <node concept="chp4Y" id="1kfMLj5Jzs4" role="cj9EA">
                <ref role="cht4Q" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
              </node>
            </node>
            <node concept="2OqwBi" id="1kfMLj5JtcT" role="2Oq$k0">
              <node concept="YCak7" id="1kfMLj5JwL_" role="2OqNvi" />
              <node concept="13iPFW" id="1kfMLj5Jt2a" role="2Oq$k0" />
            </node>
          </node>
          <node concept="3clFbS" id="1kfMLj5Jt0_" role="3clFbx">
            <node concept="3cpWs6" id="1kfMLj5Jzs6" role="3cqZAp">
              <node concept="1PxgMI" id="1kfMLj5JD5U" role="3cqZAk">
                <ref role="1PxNhF" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
                <node concept="2OqwBi" id="1kfMLj5JzC6" role="1PxMeX">
                  <node concept="YCak7" id="1kfMLj5JBds" role="2OqNvi" />
                  <node concept="13iPFW" id="1kfMLj5Jztk" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kfMLj5JD6X" role="3cqZAp">
          <node concept="10Nm6u" id="1kfMLj5JD6V" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6ogfLD6euU_">
    <property role="3GE5qa" value="Project" />
    <ref role="13h7C2" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
    <node concept="13i0hz" id="6ogfLD6evrW" role="13h7CS">
      <property role="TrG5h" value="hasTestsSources" />
      <node concept="10P_77" id="6ogfLD6hcpu" role="3clF45" />
      <node concept="3Tm1VV" id="6ogfLD6evrX" role="1B3o_S" />
      <node concept="3clFbS" id="6ogfLD6evrZ" role="3clF47">
        <node concept="3clFbF" id="6ogfLD6hcpy" role="3cqZAp">
          <node concept="1Wc70l" id="6ogfLD6howX" role="3clFbG">
            <node concept="2OqwBi" id="6ogfLD6huvo" role="3uHU7B">
              <node concept="17RvpY" id="6ogfLD6hwaR" role="2OqNvi" />
              <node concept="2OqwBi" id="6ogfLD6hoJ5" role="2Oq$k0">
                <node concept="3TrcHB" id="6ogfLD6hsma" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                </node>
                <node concept="13iPFW" id="6ogfLD6ho$m" role="2Oq$k0" />
              </node>
            </node>
            <node concept="1eOMI4" id="6ogfLD6hovn" role="3uHU7w">
              <node concept="22lmx$" id="6ogfLD6hnHb" role="1eOMHV">
                <node concept="2OqwBi" id="6ogfLD6hk18" role="3uHU7B">
                  <node concept="liA8E" id="6ogfLD6hni1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="3f7Wdw" id="6ogfLD6hni3" role="37wK5m">
                      <ref role="3f7u_j" to="kdzh:eYcmk9QOlj" />
                      <ref role="3f7vo2" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6ogfLD6hc$i" role="2Oq$k0">
                    <node concept="13iPFW" id="6ogfLD6hcpx" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6ogfLD6hhUE" role="2OqNvi">
                      <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6ogfLD6hnKs" role="3uHU7w">
                  <node concept="liA8E" id="6ogfLD6hnKt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="3f7Wdw" id="6ogfLD6hnKu" role="37wK5m">
                      <ref role="3f7u_j" to="kdzh:eYcmk9QOls" />
                      <ref role="3f7vo2" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6ogfLD6hnKv" role="2Oq$k0">
                    <node concept="13iPFW" id="6ogfLD6hnKw" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6ogfLD6hnKx" role="2OqNvi">
                      <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6ogfLD6hwDf" role="13h7CS">
      <property role="TrG5h" value="hasSources" />
      <node concept="10P_77" id="6ogfLD6hwDg" role="3clF45" />
      <node concept="3Tm1VV" id="6ogfLD6hwDh" role="1B3o_S" />
      <node concept="3clFbS" id="6ogfLD6hwDi" role="3clF47">
        <node concept="3clFbF" id="6ogfLD6hwDj" role="3cqZAp">
          <node concept="22lmx$" id="6ogfLD6hytd" role="3clFbG">
            <node concept="2OqwBi" id="6ogfLD6hytf" role="3uHU7B">
              <node concept="17RlXB" id="6ogfLD6hytg" role="2OqNvi" />
              <node concept="2OqwBi" id="6ogfLD6hyth" role="2Oq$k0">
                <node concept="3TrcHB" id="6ogfLD6hyti" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                </node>
                <node concept="13iPFW" id="6ogfLD6hytj" role="2Oq$k0" />
              </node>
            </node>
            <node concept="1eOMI4" id="6ogfLD6hytk" role="3uHU7w">
              <node concept="22lmx$" id="6ogfLD6hytl" role="1eOMHV">
                <node concept="2OqwBi" id="6ogfLD6hytm" role="3uHU7B">
                  <node concept="liA8E" id="6ogfLD6hytn" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="3f7Wdw" id="6ogfLD6hyto" role="37wK5m">
                      <ref role="3f7u_j" to="kdzh:eYcmk9QOlj" />
                      <ref role="3f7vo2" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6ogfLD6hytp" role="2Oq$k0">
                    <node concept="13iPFW" id="6ogfLD6hytq" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6ogfLD6hytr" role="2OqNvi">
                      <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6ogfLD6hyts" role="3uHU7w">
                  <node concept="liA8E" id="6ogfLD6hytt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="3f7Wdw" id="6ogfLD6hytu" role="37wK5m">
                      <ref role="3f7vo2" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
                      <ref role="3f7u_j" to="kdzh:eYcmk9QOli" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6ogfLD6hytv" role="2Oq$k0">
                    <node concept="13iPFW" id="6ogfLD6hytw" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6ogfLD6hytx" role="2OqNvi">
                      <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6ogfLD6euY1" role="13h7CW">
      <node concept="3clFbS" id="6ogfLD6euY2" role="2VODD2" />
    </node>
  </node>
</model>

