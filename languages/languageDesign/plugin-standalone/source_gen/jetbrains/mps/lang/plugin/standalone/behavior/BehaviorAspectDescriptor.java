package jetbrains.mps.lang.plugin.standalone.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 7:
        return new ProjectPluginDisposeBlock_BehaviorDescriptor();
      case 8:
        return new ProjectPluginInitBlock_BehaviorDescriptor();
      case 3:
        return new ApplicationPluginType_BehaviorDescriptor();
      case 6:
        return new ProjectPluginDeclaration_BehaviorDescriptor();
      case 0:
        return new ApplicationPluginDeclaration_BehaviorDescriptor();
      case 1:
        return new ApplicationPluginDisposeBlock_BehaviorDescriptor();
      case 2:
        return new ApplicationPluginInitBlock_BehaviorDescriptor();
      case 9:
        return new ProjectPluginType_BehaviorDescriptor();
      case 5:
        return new GetToolInProjectOperation_BehaviorDescriptor();
      case 4:
        return new GetPreferencesComponentInProjectOperation_BehaviorDescriptor();
      case 10:
        return new StandalonePluginDescriptor_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration", "jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock", "jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock", "jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginType", "jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation", "jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation", "jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration", "jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock", "jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock", "jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginType", "jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor"};
}
