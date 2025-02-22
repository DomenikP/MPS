package jetbrains.mps.baseLanguage.regexp.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;

public class ConstraintsAspectDescriptor implements jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x1117987ff5eL) {
      return new MatchVariableReference_Constraints();
    }
    if (id == 0x1118e0a1c55L) {
      return new MatchVariableReferenceRegexp_Constraints();
    }
    if (id == 0x11c94680172L) {
      return new ReplaceWithRegexpOperation_Constraints();
    }
    if (id == 0x11c9466ae95L) {
      return new MatchRegexpOperation_Constraints();
    }
    if (id == 0x11178e59fd0L) {
      return new PredefinedSymbolClassDeclaration_Constraints();
    }
    if (id == 0x11174a6454dL) {
      return new RegexpDeclaration_Constraints();
    }
    if (id == 0x11174a0992dL) {
      return new StringLiteralRegexp_Constraints();
    }
    if (id == 0x34ae970c1923d18aL) {
      return new ReplaceRegexpOperation_Constraints();
    }
    if (id == 0x34ae970c192ab94eL) {
      return new MatchVariableReferenceReplacement_Constraints();
    }
    if (id == 0x34ae970c192ab94cL) {
      return new LiteralReplacement_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
}
