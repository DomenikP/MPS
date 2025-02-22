package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.annotations.NotNull;

public class TernaryOperatorExpression_BehaviorDescriptor extends Expression_BehaviorDescriptor implements IBinaryLike_BehaviorDescriptor, IConditional_BehaviorDescriptor {
  public TernaryOperatorExpression_BehaviorDescriptor() {
  }
  public boolean virtual_canPropagateUnmatchedParenUp_1742226163722653670(SNode thisNode, SNode leaf, boolean rightParen) {
    return IBinaryLike_Behavior.virtual_canPropagateUnmatchedParenUp_1742226163722653670(thisNode, leaf, rightParen);
  }
  public Object virtual_eval_1213877519769(SNode thisNode, SModule module) {
    return TernaryOperatorExpression_Behavior.virtual_eval_1213877519769(thisNode, module);
  }
  public Object virtual_getCompileTimeConstantValue_1238860310638(SNode thisNode, SModule module) {
    return TernaryOperatorExpression_Behavior.virtual_getCompileTimeConstantValue_1238860310638(thisNode, module);
  }
  public NextProgramPoint virtual_getNextProgramPoint_4235809288648213009(SNode thisNode, @NotNull SNode child, boolean value) {
    return TernaryOperatorExpression_Behavior.virtual_getNextProgramPoint_4235809288648213009(thisNode, child, value);
  }
  public SNode virtual_getSyntacticallyLeftSideExpression_1742226163722653708(SNode thisNode) {
    return TernaryOperatorExpression_Behavior.virtual_getSyntacticallyLeftSideExpression_1742226163722653708(thisNode);
  }
  public SNode virtual_getSyntacticallyRightSideExpression_1742226163722653714(SNode thisNode) {
    return TernaryOperatorExpression_Behavior.virtual_getSyntacticallyRightSideExpression_1742226163722653714(thisNode);
  }
  public boolean virtual_isCompileTimeConstant_1238860258777(SNode thisNode) {
    return TernaryOperatorExpression_Behavior.virtual_isCompileTimeConstant_1238860258777(thisNode);
  }
  public void virtual_setSyntacticallyLeftSideExpression_1742226163722653680(SNode thisNode, SNode expr) {
    TernaryOperatorExpression_Behavior.virtual_setSyntacticallyLeftSideExpression_1742226163722653680(thisNode, expr);
  }
  public void virtual_setSyntacticallyRightSideExpression_1742226163722653694(SNode thisNode, SNode expr) {
    TernaryOperatorExpression_Behavior.virtual_setSyntacticallyRightSideExpression_1742226163722653694(thisNode, expr);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression";
  }
}
