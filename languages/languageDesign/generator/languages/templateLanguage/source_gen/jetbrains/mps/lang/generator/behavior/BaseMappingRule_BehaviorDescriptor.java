package jetbrains.mps.lang.generator.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

public abstract class BaseMappingRule_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor {
  public BaseMappingRule_BehaviorDescriptor() {
  }
  public String virtual_getPresentation_1213877396640(SNode thisNode) {
    return BaseMappingRule_Behavior.virtual_getPresentation_1213877396640(thisNode);
  }
  public SNode virtual_getTemplateType_1213877498511(SNode thisNode) {
    return BaseMappingRule_Behavior.virtual_getTemplateType_1213877498511(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.generator.structure.BaseMappingRule";
  }
}
