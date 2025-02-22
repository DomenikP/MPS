<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b2539c5-00c8-487d-9567-ecc2b9274c7b(jetbrains.mps.baseLanguage.unitTest.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="-1" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <property id="1195213689297" name="overrides" index="18ip37" />
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
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
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  </registry>
  <node concept="1YbPZF" id="692cUnf6SXC">
    <property role="TrG5h" value="typeof_Message" />
    <property role="3GE5qa" value="assert" />
    <node concept="3clFbS" id="692cUnf6SXD" role="18ibNy">
      <node concept="1ZobV4" id="1KPHzfPK7sW" role="3cqZAp">
        <node concept="mw_s8" id="1KPHzfPK7sX" role="1ZfhK$">
          <node concept="1Z2H0r" id="1KPHzfPK7sY" role="mwGJk">
            <node concept="2OqwBi" id="1KPHzfPK7sZ" role="1Z2MuG">
              <node concept="1YBJjd" id="1KPHzfPK7t0" role="2Oq$k0">
                <ref role="1YBMHb" node="692cUnf6SXE" resolve="message" />
              </node>
              <node concept="3TrEf2" id="1KPHzfPK7t1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpe3:h3_1ByX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1KPHzfPK7t2" role="1ZfhKB">
          <node concept="2c44tf" id="1KPHzfPK7t3" role="mwGJk">
            <node concept="17QB3L" id="1KPHzfPK7t4" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="692cUnf6SXE" role="1YuTPh">
      <property role="TrG5h" value="message" />
      <ref role="1YaFvo" to="tpe3:h3_1$Uf" resolve="Message" />
    </node>
  </node>
  <node concept="18kY7G" id="6gjERySwVYQ">
    <property role="18ip37" value="true" />
    <property role="TrG5h" value="check_BTestCase" />
    <node concept="3clFbS" id="6gjERySwVYR" role="18ibNy" />
    <node concept="1YaCAy" id="6gjERySwVYS" role="1YuTPh">
      <property role="TrG5h" value="test" />
      <ref role="1YaFvo" to="tpe3:h3s_e$z" resolve="BTestCase" />
    </node>
  </node>
  <node concept="18kY7G" id="7Cm4l4AYZ5g">
    <property role="TrG5h" value="check_PluginKindShouldBeNotNoneForMPSTestCases" />
    <node concept="3clFbS" id="7Cm4l4AZ0Vv" role="18ibNy">
      <node concept="3clFbJ" id="7Cm4l4B9v9B" role="3cqZAp">
        <node concept="3fqX7Q" id="7Cm4l4B9vaF" role="3clFbw">
          <node concept="2YIFZM" id="7Cm4l4B9vzO" role="3fr31v">
            <ref role="37wK5l" node="7Cm4l4B9vfm" resolve="checkPluginKindForMPSTestCase" />
            <ref role="1Pybhc" node="7Cm4l4B9rV0" resolve="CheckUtils" />
            <node concept="1YBJjd" id="7Cm4l4B9v$8" role="37wK5m">
              <ref role="1YBMHb" node="7Cm4l4AZ8s1" resolve="testCase" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="7Cm4l4B9v9D" role="3clFbx">
          <node concept="2MkqsV" id="7Cm4l4B9pJ8" role="3cqZAp">
            <node concept="1YBJjd" id="7Cm4l4B9pSB" role="2OEOjV">
              <ref role="1YBMHb" node="7Cm4l4AZ8s1" resolve="testCase" />
            </node>
            <node concept="Xl_RD" id="7Cm4l4B9pJp" role="2MkJ7o">
              <property role="Xl_RC" value="MPS related test cases should be created in plugin solutions" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7Cm4l4AZ8s1" role="1YuTPh">
      <property role="TrG5h" value="testCase" />
      <ref role="1YaFvo" to="tpe3:hGB2rPm" resolve="ITestCase" />
    </node>
  </node>
  <node concept="312cEu" id="7Cm4l4B9rV0">
    <property role="TrG5h" value="CheckUtils" />
    <node concept="3Tm1VV" id="7Cm4l4B9rV1" role="1B3o_S" />
    <node concept="3clFbW" id="7Cm4l4B9rV2" role="jymVt">
      <node concept="3Tm6S6" id="7Cm4l4B9rW7" role="1B3o_S" />
      <node concept="3cqZAl" id="7Cm4l4B9rV3" role="3clF45" />
      <node concept="3clFbS" id="7Cm4l4B9rV5" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7Cm4l4B9rWa" role="jymVt" />
    <node concept="2YIFZL" id="7Cm4l4B9vfm" role="jymVt">
      <property role="TrG5h" value="checkPluginKindForMPSTestCase" />
      <property role="DiZV1" value="false" />
      <node concept="10P_77" id="7Cm4l4B9rXB" role="3clF45" />
      <node concept="37vLTG" id="7Cm4l4B9rXE" role="3clF46">
        <property role="TrG5h" value="testCase" />
        <node concept="3Tqbb2" id="7Cm4l4B9rXM" role="1tU5fm">
          <ref role="ehGHo" to="tpe3:hGB2rPm" resolve="ITestCase" />
        </node>
      </node>
      <node concept="3clFbS" id="7Cm4l4B9rWr" role="3clF47">
        <node concept="3cpWs8" id="7Cm4l4B9s7a" role="3cqZAp">
          <node concept="3cpWsn" id="7Cm4l4B9s7b" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="2EnYce" id="7Cm4l4B9s7c" role="33vP2m">
              <node concept="2JrnkZ" id="7Cm4l4B9s7e" role="2Oq$k0">
                <node concept="2OqwBi" id="7Cm4l4B9s7f" role="2JrQYb">
                  <node concept="37vLTw" id="7Cm4l4B9s__" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Cm4l4B9rXE" resolve="testCase" />
                  </node>
                  <node concept="I4A8Y" id="7Cm4l4B9s7g" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="7Cm4l4B9s7j" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
            <node concept="3uibUv" id="7Cm4l4B9s7k" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Cm4l4B9s7l" role="3cqZAp">
          <node concept="22lmx$" id="57LGFPjW5Zo" role="3clFbw">
            <node concept="2OqwBi" id="57LGFPjW65F" role="3uHU7w">
              <node concept="37vLTw" id="57LGFPjW62Y" role="2Oq$k0">
                <ref role="3cqZAo" node="7Cm4l4B9rXE" resolve="testCase" />
              </node>
              <node concept="2qgKlT" id="57LGFPjW6qT" role="2OqNvi">
                <ref role="37wK5l" to="tpe5:5_jSk8paieB" resolve="canRunInProcess" />
              </node>
            </node>
            <node concept="2OqwBi" id="7Cm4l4B9s7m" role="3uHU7B">
              <node concept="37vLTw" id="7Cm4l4B9sCb" role="2Oq$k0">
                <ref role="3cqZAo" node="7Cm4l4B9rXE" resolve="testCase" />
              </node>
              <node concept="2qgKlT" id="7Cm4l4B9s7n" role="2OqNvi">
                <ref role="37wK5l" to="tpe5:2RMg39tmiFh" resolve="isMpsStartRequired" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Cm4l4B9s7p" role="3clFbx">
            <node concept="3cpWs6" id="7Cm4l4B9sEE" role="3cqZAp">
              <node concept="1Wc70l" id="7Cm4l4B9s7s" role="3cqZAk">
                <node concept="3y3z36" id="7Cm4l4B9s7t" role="3uHU7w">
                  <node concept="2OqwBi" id="7Cm4l4B9s7x" role="3uHU7B">
                    <node concept="liA8E" id="7Cm4l4B9s7y" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Solution.getKind():jetbrains.mps.project.structure.modules.SolutionKind" resolve="getKind" />
                    </node>
                    <node concept="1eOMI4" id="7Cm4l4B9s7z" role="2Oq$k0">
                      <node concept="10QFUN" id="7Cm4l4B9s7$" role="1eOMHV">
                        <node concept="3uibUv" id="7Cm4l4B9s7_" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
                        </node>
                        <node concept="37vLTw" id="7Cm4l4B9s7A" role="10QFUP">
                          <ref role="3cqZAo" node="7Cm4l4B9s7b" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rm8GO" id="7Cm4l4B9s7u" role="3uHU7w">
                    <ref role="Rm8GQ" to="w0gx:~SolutionKind.NONE" resolve="NONE" />
                    <ref role="1Px2BO" to="w0gx:~SolutionKind" resolve="SolutionKind" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="7Cm4l4B9s7B" role="3uHU7B">
                  <node concept="3uibUv" id="7Cm4l4B9s7C" role="2ZW6by">
                    <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
                  </node>
                  <node concept="37vLTw" id="7Cm4l4B9s7D" role="2ZW6bz">
                    <ref role="3cqZAo" node="7Cm4l4B9s7b" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7Cm4l4B9sNu" role="9aQIa">
            <node concept="3clFbS" id="7Cm4l4B9sNv" role="9aQI4">
              <node concept="3cpWs6" id="7Cm4l4B9sNO" role="3cqZAp">
                <node concept="3clFbT" id="7Cm4l4B9sO9" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Cm4l4B9rWq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="HPU8mWQuOH" role="jymVt" />
    <node concept="2YIFZL" id="HPU8mWQuRo" role="jymVt">
      <property role="TrG5h" value="fixPluginKindForMPSTestCase" />
      <node concept="10P_77" id="HPU8mWQyzf" role="3clF45" />
      <node concept="3Tm1VV" id="HPU8mWQuRr" role="1B3o_S" />
      <node concept="3clFbS" id="HPU8mWQuRs" role="3clF47">
        <node concept="3clFbJ" id="HPU8mWQy_Z" role="3cqZAp">
          <node concept="1rXfSq" id="HPU8mWQyAp" role="3clFbw">
            <ref role="37wK5l" node="7Cm4l4B9vfm" resolve="checkPluginKindForMPSTestCase" />
            <node concept="37vLTw" id="HPU8mWQyAP" role="37wK5m">
              <ref role="3cqZAo" node="HPU8mWQyzj" resolve="testCase" />
            </node>
          </node>
          <node concept="3clFbS" id="HPU8mWQyA1" role="3clFbx">
            <node concept="3SKdUt" id="HPU8mWQyBX" role="3cqZAp">
              <node concept="3SKdUq" id="HPU8mWQyC2" role="3SKWNk">
                <property role="3SKdUp" value="fix is successful" />
              </node>
            </node>
            <node concept="3cpWs6" id="HPU8mWQyBr" role="3cqZAp">
              <node concept="3clFbT" id="HPU8mWQyBF" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="HPU8mWQzCg" role="3cqZAp" />
        <node concept="3cpWs8" id="HPU8mWQyYx" role="3cqZAp">
          <node concept="3cpWsn" id="HPU8mWQyYy" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="2SWgdY_NnRp" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2EnYce" id="HPU8mWQyYz" role="33vP2m">
              <node concept="2JrnkZ" id="HPU8mWQyY_" role="2Oq$k0">
                <node concept="2OqwBi" id="HPU8mWQyYA" role="2JrQYb">
                  <node concept="37vLTw" id="HPU8mWQzce" role="2Oq$k0">
                    <ref role="3cqZAo" node="HPU8mWQyzj" resolve="testCase" />
                  </node>
                  <node concept="I4A8Y" id="HPU8mWQyYB" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="HPU8mWQyYD" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Cm4l4B9DJA" role="3cqZAp">
          <node concept="2ZW3vV" id="7Cm4l4B9DX4" role="3clFbw">
            <node concept="3uibUv" id="7Cm4l4B9DXV" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
            </node>
            <node concept="37vLTw" id="7Cm4l4B9DRE" role="2ZW6bz">
              <ref role="3cqZAo" node="HPU8mWQyYy" resolve="module" />
            </node>
          </node>
          <node concept="3clFbS" id="7Cm4l4B9DJC" role="3clFbx">
            <node concept="3cpWs8" id="7Cm4l4B9FdP" role="3cqZAp">
              <node concept="3cpWsn" id="7Cm4l4B9FdQ" role="3cpWs9">
                <property role="TrG5h" value="descriptor" />
                <node concept="2OqwBi" id="7Cm4l4B9Fox" role="33vP2m">
                  <node concept="liA8E" id="7Cm4l4B9Iqw" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Solution.getModuleDescriptor():jetbrains.mps.project.structure.modules.SolutionDescriptor" resolve="getModuleDescriptor" />
                  </node>
                  <node concept="1eOMI4" id="7Cm4l4B9Ff_" role="2Oq$k0">
                    <node concept="10QFUN" id="7Cm4l4B9Ffy" role="1eOMHV">
                      <node concept="3uibUv" id="7Cm4l4B9FfB" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
                      </node>
                      <node concept="37vLTw" id="7Cm4l4B9FfC" role="10QFUP">
                        <ref role="3cqZAo" node="HPU8mWQyYy" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="7Cm4l4B9FdR" role="1tU5fm">
                  <ref role="3uigEE" to="w0gx:~SolutionDescriptor" resolve="SolutionDescriptor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Cm4l4B9IvE" role="3cqZAp">
              <node concept="2OqwBi" id="7Cm4l4B9I$U" role="3clFbG">
                <node concept="liA8E" id="7Cm4l4B9J9o" role="2OqNvi">
                  <ref role="37wK5l" to="w0gx:~SolutionDescriptor.setKind(jetbrains.mps.project.structure.modules.SolutionKind):void" resolve="setKind" />
                  <node concept="Rm8GO" id="7Cm4l4B9JhK" role="37wK5m">
                    <ref role="Rm8GQ" to="w0gx:~SolutionKind.PLUGIN_OTHER" resolve="PLUGIN_OTHER" />
                    <ref role="1Px2BO" to="w0gx:~SolutionKind" resolve="SolutionKind" />
                  </node>
                </node>
                <node concept="37vLTw" id="7Cm4l4B9IvD" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Cm4l4B9FdQ" resolve="descriptor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="HPU8mWQakb" role="3cqZAp">
              <node concept="2OqwBi" id="HPU8mWQap1" role="3clFbG">
                <node concept="1eOMI4" id="2SWgdY_NmGp" role="2Oq$k0">
                  <node concept="10QFUN" id="2SWgdY_NmGq" role="1eOMHV">
                    <node concept="3uibUv" id="2SWgdY_Nofy" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
                    </node>
                    <node concept="37vLTw" id="2SWgdY_NmGo" role="10QFUP">
                      <ref role="3cqZAo" node="HPU8mWQyYy" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="HPU8mWQbmn" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.setChanged():void" resolve="setChanged" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="HPU8mWQzpm" role="3cqZAp">
              <node concept="3clFbT" id="HPU8mWQzpT" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7Cm4l4B9DYb" role="9aQIa">
            <node concept="3clFbS" id="7Cm4l4B9DYc" role="9aQI4">
              <node concept="3SKdUt" id="7Cm4l4B9DY_" role="3cqZAp">
                <node concept="3SKdUq" id="7Cm4l4B9DYE" role="3SKWNk">
                  <property role="3SKdUp" value="todo: ?" />
                </node>
              </node>
              <node concept="3cpWs6" id="HPU8mWQzqb" role="3cqZAp">
                <node concept="3clFbT" id="HPU8mWQzqq" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="HPU8mWQyzj" role="3clF46">
        <property role="TrG5h" value="testCase" />
        <node concept="3Tqbb2" id="HPU8mWQyzi" role="1tU5fm">
          <ref role="ehGHo" to="tpe3:hGB2rPm" resolve="ITestCase" />
        </node>
      </node>
    </node>
  </node>
</model>

