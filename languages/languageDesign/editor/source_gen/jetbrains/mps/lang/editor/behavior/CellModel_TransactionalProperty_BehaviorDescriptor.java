package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.ImplementationWithStubPart_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

public class CellModel_TransactionalProperty_BehaviorDescriptor extends CellModel_AbstractLabel_BehaviorDescriptor implements IDontSubstituteByDefault_BehaviorDescriptor, ImplementationWithStubPart_BehaviorDescriptor {
  public CellModel_TransactionalProperty_BehaviorDescriptor() {
  }
  public String virtual_getClosingText_1220339738643(SNode thisNode) {
    return CellModel_TransactionalProperty_Behavior.virtual_getClosingText_1220339738643(thisNode);
  }
  public String virtual_getOpeningText_1220339714057(SNode thisNode) {
    return CellModel_TransactionalProperty_Behavior.virtual_getOpeningText_1220339714057(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.editor.structure.CellModel_TransactionalProperty";
  }
}
