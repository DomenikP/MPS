package jetbrains.mps.build.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.core.behavior.INamedConcept_Behavior;

public abstract class BuildMacro_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements INamedConcept_BehaviorDescriptor {
  public BuildMacro_BehaviorDescriptor() {
  }
  public String virtual_getFqName_1213877404258(SNode thisNode) {
    return INamedConcept_Behavior.virtual_getFqName_1213877404258(thisNode);
  }
  public boolean virtual_isPublic_6547494638219688113(SNode thisNode) {
    return BuildMacro_Behavior.virtual_isPublic_6547494638219688113(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.build.structure.BuildMacro";
  }
}
