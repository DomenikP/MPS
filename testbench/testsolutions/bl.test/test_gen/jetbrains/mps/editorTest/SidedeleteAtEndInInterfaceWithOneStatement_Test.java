package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class SidedeleteAtEndInInterfaceWithOneStatement_Test extends BaseTransformationTest {
  public SidedeleteAtEndInInterfaceWithOneStatement_Test() {
  }
  @Test
  public void test_SidedeleteAtEndInInterfaceWithOneStatement() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.SidedeleteAtEndInInterfaceWithOneStatement_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("4338540387697958040", "4338540387697959166");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Delete_Action");
    }
  }
}
