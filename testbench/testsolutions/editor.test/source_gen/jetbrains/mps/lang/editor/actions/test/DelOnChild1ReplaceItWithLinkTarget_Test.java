package jetbrains.mps.lang.editor.actions.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class DelOnChild1ReplaceItWithLinkTarget_Test extends BaseTransformationTest {
  public DelOnChild1ReplaceItWithLinkTarget_Test() {
  }
  @Test
  public void test_DelOnChild1ReplaceItWithLinkTarget() throws Throwable {
    this.initTest("${mps_home}", "r:c44f4b8c-137c-4225-8bd9-38d232a9b736(jetbrains.mps.lang.editor.actions.test)");
    this.runTest("jetbrains.mps.lang.editor.actions.test.DelOnChild1ReplaceItWithLinkTarget_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("7803854675610517462", "7803854675610518814");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Delete_Action");
    }
  }
}
