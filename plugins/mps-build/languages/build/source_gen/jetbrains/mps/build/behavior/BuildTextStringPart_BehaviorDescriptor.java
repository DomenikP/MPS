package jetbrains.mps.build.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.build.util.MacroHelper;

public class BuildTextStringPart_BehaviorDescriptor extends BuildStringPart_BehaviorDescriptor implements IDontSubstituteByDefault_BehaviorDescriptor {
  public BuildTextStringPart_BehaviorDescriptor() {
  }
  public String virtual_getText_4380385936562037054(SNode thisNode, MacroHelper helper) {
    return BuildTextStringPart_Behavior.virtual_getText_4380385936562037054(thisNode, helper);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.build.structure.BuildTextStringPart";
  }
}
