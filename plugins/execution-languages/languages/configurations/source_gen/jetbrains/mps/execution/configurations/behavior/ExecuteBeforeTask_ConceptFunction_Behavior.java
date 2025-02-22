package jetbrains.mps.execution.configurations.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.List;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ExecuteBeforeTask_ConceptFunction_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_showName_1262430001741498082(SAbstractConcept thisConcept) {
    return true;
  }
  public static List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SAbstractConcept thisConcept) {
    List<SNode> result = BehaviorReflection.invokeSuperStatic((Class<List<SNode>>) ((Class) Object.class), SNodeOperations.asSConcept(thisConcept), "jetbrains.mps.baseLanguage.structure.ConceptFunction", "virtual_getApplicableConceptFunctionParameter_3044950653914717136", new Object[]{});
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:f3383ae6-205a-4e7c-8dd9-c29966e29e49(jetbrains.mps.execution.configurations.structure)", "7684700299064179245"));
    return result;
  }
  public static SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return _quotation_createNode_in8p3v_a0a2();
  }
  private static SNode _quotation_createNode_in8p3v_a0a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d6513eL, "jetbrains.mps.baseLanguage.structure.BooleanType"), null, null, false);
    return quotedNode_1;
  }
}
