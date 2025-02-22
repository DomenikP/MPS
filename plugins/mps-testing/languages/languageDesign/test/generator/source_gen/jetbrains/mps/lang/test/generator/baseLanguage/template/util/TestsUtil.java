package jetbrains.mps.lang.test.generator.baseLanguage.template.util;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.test.behavior.TestInfo_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.util.MacrosFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.test.behavior.NodesTestCase_Behavior;
import java.io.File;
import jetbrains.mps.project.Project;

public class TestsUtil {
  public TestsUtil() {
  }
  public static String getProjectPath(SModel model, IOperationContext operationContext) {
    String projectPath = TestInfo_Behavior.call_getProjectPath_5097124989038916375(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x46bca02bfb6e730aL, "jetbrains.mps.lang.test.structure.TestInfo").getDeclarationNode()), model);
    if (projectPath != null) {
      return projectPath;
    }
    String url = check_6yh4up_a0c0b(check_6yh4up_a0a2a1(operationContext.getProject()));
    if (url != null) {
      return MacrosFactory.getGlobal().shrinkPath(url);
    }
    return "";
  }
  public static String getTestBodyClassName(SNode testCase) {
    return BehaviorReflection.invokeVirtual(String.class, testCase, "virtual_getClassName_1216136193905", new Object[]{}) + "$" + NodesTestCase_Behavior.call_getTestBodyName_1224602741295(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b55b49e46L, "jetbrains.mps.lang.test.structure.NodesTestCase").getDeclarationNode()));
  }
  private static String check_6yh4up_a0c0b(File checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getAbsolutePath();
    }
    return null;
  }
  private static File check_6yh4up_a0a2a1(Project checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getProjectFile();
    }
    return null;
  }
}
