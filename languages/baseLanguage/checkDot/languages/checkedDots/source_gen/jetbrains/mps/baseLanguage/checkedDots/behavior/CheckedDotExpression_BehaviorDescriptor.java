package jetbrains.mps.baseLanguage.checkedDots.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.DotExpression_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public class CheckedDotExpression_BehaviorDescriptor extends DotExpression_BehaviorDescriptor {
  public CheckedDotExpression_BehaviorDescriptor() {
  }
  public boolean virtual_allowsNullOperand_4585239809762176541(SNode thisNode) {
    return CheckedDotExpression_Behavior.virtual_allowsNullOperand_4585239809762176541(thisNode);
  }
  public boolean virtual_lvalue_1262430001741497939(SConcept thisConcept) {
    return CheckedDotExpression_Behavior.virtual_lvalue_1262430001741497939(thisConcept);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression";
  }
}
