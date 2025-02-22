package jetbrains.mps.lang.resources.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 0:
        return new IconResource_BehaviorDescriptor();
      case 1:
        return new IconResourceBundle_BehaviorDescriptor();
      case 2:
        return new IconResourceDeclaration_BehaviorDescriptor();
      case 3:
        return new IconResourceExpression_BehaviorDescriptor();
      case 4:
        return new IconResourceReference_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.lang.resources.structure.IconResource", "jetbrains.mps.lang.resources.structure.IconResourceBundle", "jetbrains.mps.lang.resources.structure.IconResourceDeclaration", "jetbrains.mps.lang.resources.structure.IconResourceExpression", "jetbrains.mps.lang.resources.structure.IconResourceReference"};
}
