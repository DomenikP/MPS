package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.language.SConcept;

public class DotExpression_BehaviorDescriptor extends Expression_BehaviorDescriptor implements IDontSubstituteByDefault_BehaviorDescriptor, IBinaryLike_BehaviorDescriptor {
  public DotExpression_BehaviorDescriptor() {
  }
  public boolean virtual_allowsNullOperand_4585239809762176541(SNode thisNode) {
    return DotExpression_Behavior.virtual_allowsNullOperand_4585239809762176541(thisNode);
  }
  public boolean virtual_canPropagateUnmatchedParenUp_1742226163722653670(SNode thisNode, SNode leaf, boolean rightParen) {
    return IBinaryLike_Behavior.virtual_canPropagateUnmatchedParenUp_1742226163722653670(thisNode, leaf, rightParen);
  }
  public Object virtual_eval_1213877519769(SNode thisNode, SModule module) {
    return DotExpression_Behavior.virtual_eval_1213877519769(thisNode, module);
  }
  public SNode virtual_getSyntacticallyLeftSideExpression_1742226163722653708(SNode thisNode) {
    return DotExpression_Behavior.virtual_getSyntacticallyLeftSideExpression_1742226163722653708(thisNode);
  }
  public SNode virtual_getSyntacticallyRightSideExpression_1742226163722653714(SNode thisNode) {
    return IBinaryLike_Behavior.virtual_getSyntacticallyRightSideExpression_1742226163722653714(thisNode);
  }
  public String virtual_getVariableExpectedName_1213877519781(SNode thisNode) {
    return DotExpression_Behavior.virtual_getVariableExpectedName_1213877519781(thisNode);
  }
  public boolean virtual_isLValue_1213877519786(SNode thisNode) {
    return DotExpression_Behavior.virtual_isLValue_1213877519786(thisNode);
  }
  public boolean virtual_isLegalAsStatement_1239211900844(SNode thisNode) {
    return DotExpression_Behavior.virtual_isLegalAsStatement_1239211900844(thisNode);
  }
  public boolean virtual_lvalue_1262430001741497939(SConcept thisConcept) {
    return DotExpression_Behavior.virtual_lvalue_1262430001741497939(thisConcept);
  }
  public void virtual_setSyntacticallyLeftSideExpression_1742226163722653680(SNode thisNode, SNode expr) {
    DotExpression_Behavior.virtual_setSyntacticallyLeftSideExpression_1742226163722653680(thisNode, expr);
  }
  public void virtual_setSyntacticallyRightSideExpression_1742226163722653694(SNode thisNode, SNode expr) {
    IBinaryLike_Behavior.virtual_setSyntacticallyRightSideExpression_1742226163722653694(thisNode, expr);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.DotExpression";
  }
}
