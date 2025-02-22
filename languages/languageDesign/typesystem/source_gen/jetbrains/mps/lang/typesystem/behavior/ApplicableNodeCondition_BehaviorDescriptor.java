package jetbrains.mps.lang.typesystem.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.IValidIdentifier_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.InterfacePart_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.core.behavior.INamedConcept_Behavior;

public abstract class ApplicableNodeCondition_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements IValidIdentifier_BehaviorDescriptor, InterfacePart_BehaviorDescriptor {
  public ApplicableNodeCondition_BehaviorDescriptor() {
  }
  public String virtual_getFqName_1213877404258(SNode thisNode) {
    return INamedConcept_Behavior.virtual_getFqName_1213877404258(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.typesystem.structure.ApplicableNodeCondition";
  }
  public abstract SNode virtual_getApplicableConcept_1213877307633(SNode thisNode);
}
