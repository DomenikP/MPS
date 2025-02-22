package jetbrains.mps.refactoringTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseTestBody;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.IntroduceLocalVariableRefactoring;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import junit.framework.Assert;
import jetbrains.mps.lang.test.matcher.NodesMatcher;

@MPSLaunch
public class SimpleFindForIntroduceLocalVariable_Test extends BaseTransformationTest {
  @Test
  public void test_SimpleFindAndMoveForIntroduceLocalVariableTest() throws Throwable {
    this.initTest("${mps_home}", "r:4dc6ffb5-4bbb-4773-b0b7-e52989ceb56f(jetbrains.mps.refactoringTest@tests)", false);
    this.runTest("jetbrains.mps.refactoringTest.SimpleFindForIntroduceLocalVariable_Test$TestBody", "test_SimpleFindAndMoveForIntroduceLocalVariableTest", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_SimpleFindAndMoveForIntroduceLocalVariableTest() throws Exception {
      this.addNodeById("7568753874916226563");
      this.addNodeById("7568753874916226633");
      IntroduceLocalVariableRefactoring refactoring = new IntroduceLocalVariableRefactoring();
      refactoring.init(SNodeOperations.cast(this.getNodeById("7568753874916226573"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, "jetbrains.mps.baseLanguage.structure.IntegerConstant")), null);
      refactoring.setReplacingAll(true);
      refactoring.setName("k");
      refactoring.doRefactoring();
      {
        List<SNode> nodesBefore = ListSequence.fromListAndArray(new ArrayList<SNode>(), SNodeOperations.cast(this.getNodeById("7568753874916226564"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")));
        List<SNode> nodesAfter = ListSequence.fromListAndArray(new ArrayList<SNode>(), SNodeOperations.cast(this.getNodeById("7568753874916226634"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")));
        Assert.assertNull("nodes '" + nodesBefore + "' and '" + nodesAfter + "' do not match!", NodesMatcher.matchNodes(nodesBefore, nodesAfter));
      }
    }
  }
}
