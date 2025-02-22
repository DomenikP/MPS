package jetbrains.mps.debugger.java.evaluation.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 4:
        return new EvaluatorConcept_BehaviorDescriptor();
      case 8:
        return new LowLevelVariable_BehaviorDescriptor();
      case 6:
        return new EvaluatorsThisExpression_BehaviorDescriptor();
      case 5:
        return new EvaluatorsSuperMethodCall_BehaviorDescriptor();
      case 7:
        return new GenerationHelperAnnotation_BehaviorDescriptor();
      case 10:
        return new ToEvaluateAnnotation_BehaviorDescriptor();
      case 9:
        return new LowLevelVariableReference_BehaviorDescriptor();
      case 12:
        return new UnprocessedAnnotation_BehaviorDescriptor();
      case 1:
        return new DoNotTransformAnnotation_BehaviorDescriptor();
      case 11:
        return new UnitNode_BehaviorDescriptor();
      case 0:
        return new DebuggedType_BehaviorDescriptor();
      case 2:
        return new DownCastToLowLevel_BehaviorDescriptor();
      case 3:
        return new Evaluator_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"jetbrains.mps.debugger.java.evaluation.structure.DebuggedType", "jetbrains.mps.debugger.java.evaluation.structure.DoNotTransformAnnotation", "jetbrains.mps.debugger.java.evaluation.structure.DownCastToLowLevel", "jetbrains.mps.debugger.java.evaluation.structure.Evaluator", "jetbrains.mps.debugger.java.evaluation.structure.EvaluatorConcept", "jetbrains.mps.debugger.java.evaluation.structure.EvaluatorsSuperMethodCall", "jetbrains.mps.debugger.java.evaluation.structure.EvaluatorsThisExpression", "jetbrains.mps.debugger.java.evaluation.structure.GenerationHelperAnnotation", "jetbrains.mps.debugger.java.evaluation.structure.LowLevelVariable", "jetbrains.mps.debugger.java.evaluation.structure.LowLevelVariableReference", "jetbrains.mps.debugger.java.evaluation.structure.ToEvaluateAnnotation", "jetbrains.mps.debugger.java.evaluation.structure.UnitNode", "jetbrains.mps.debugger.java.evaluation.structure.UnprocessedAnnotation"};
}
