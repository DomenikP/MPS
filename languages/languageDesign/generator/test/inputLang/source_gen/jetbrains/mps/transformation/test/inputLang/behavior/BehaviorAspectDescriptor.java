package jetbrains.mps.transformation.test.inputLang.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 4:
        return new InputRoot_BehaviorDescriptor();
      case 1:
        return new InputNode_A_BehaviorDescriptor();
      case 2:
        return new InputNode_B_BehaviorDescriptor();
      case 3:
        return new InputNode_C_BehaviorDescriptor();
      case 0:
        return new ExpressionToReduceToStatement_BehaviorDescriptor();
      case 5:
        return new InputRootWithStatementList_BehaviorDescriptor();
      case 6:
        return new RefTestClass_BehaviorDescriptor();
      case 7:
        return new RefTestMethod_BehaviorDescriptor();
      case 9:
        return new RefTestParam_BehaviorDescriptor();
      case 10:
        return new RefTestParamRef_BehaviorDescriptor();
      case 8:
        return new RefTestMethodCall_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.transformation.test.inputLang.structure.ExpressionToReduceToStatement", "jetbrains.mps.transformation.test.inputLang.structure.InputNode_A", "jetbrains.mps.transformation.test.inputLang.structure.InputNode_B", "jetbrains.mps.transformation.test.inputLang.structure.InputNode_C", "jetbrains.mps.transformation.test.inputLang.structure.InputRoot", "jetbrains.mps.transformation.test.inputLang.structure.InputRootWithStatementList", "jetbrains.mps.transformation.test.inputLang.structure.RefTestClass", "jetbrains.mps.transformation.test.inputLang.structure.RefTestMethod", "jetbrains.mps.transformation.test.inputLang.structure.RefTestMethodCall", "jetbrains.mps.transformation.test.inputLang.structure.RefTestParam", "jetbrains.mps.transformation.test.inputLang.structure.RefTestParamRef"};
}
