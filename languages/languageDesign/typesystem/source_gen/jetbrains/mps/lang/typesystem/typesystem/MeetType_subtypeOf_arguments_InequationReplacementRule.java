package jetbrains.mps.lang.typesystem.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInequationReplacementRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.typesystem.runtime.IsApplicable2Status;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.pattern.util.MatchingUtil;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class MeetType_subtypeOf_arguments_InequationReplacementRule extends AbstractInequationReplacementRule_Runtime {
  public MeetType_subtypeOf_arguments_InequationReplacementRule() {
  }
  public boolean isApplicableCustom(SNode subtype, SNode supertype, IsApplicable2Status status) {
    for (SNode arg : SLinkOperations.getChildren(subtype, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114b68ad132L, 0x114b68b040bL, "argument"))) {
      if (MatchingUtil.matchNodes(arg, supertype)) {
        return true;
      }
    }
    return false;
  }
  public void processInequation(final SNode subtype, final SNode supertype, final EquationInfo equationInfo, final TypeCheckingContext typeCheckingContext, IsApplicable2Status status, final boolean inequalityIsWeak, final boolean inequalityIsLessThan) {
  }
  public boolean checkInequation(final SNode subtype, final SNode supertype, final EquationInfo equationInfo, IsApplicable2Status status, final boolean inequalityIsWeak, final boolean inequalityIsLessThan) {
    boolean result_14532009 = true;
    return result_14532009;
  }
  public boolean isWeak() {
    return true;
  }
  public IsApplicableStatus isApplicableSubtypeAndPattern(SNode node) {
    return new IsApplicableStatus(node.getConcept().isSubConceptOf(getApplicableSubtypeConcept()), null);
  }
  public IsApplicableStatus isApplicableSupertypeAndPattern(SNode node) {
    return new IsApplicableStatus(node.getConcept().isSubConceptOf(getApplicableSupertypeConcept()), null);
  }

  public SAbstractConcept getApplicableSubtypeConcept() {
    return MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114b68ad132L, "jetbrains.mps.lang.typesystem.structure.MeetType");
  }
  public SAbstractConcept getApplicableSupertypeConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506dL, "jetbrains.mps.baseLanguage.structure.Type");
  }
}
