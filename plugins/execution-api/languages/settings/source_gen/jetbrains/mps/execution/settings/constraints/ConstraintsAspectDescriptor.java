package jetbrains.mps.execution.settings.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;

public class ConstraintsAspectDescriptor implements jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0xd244b712f910101L) {
      return new TemplateParameterReference_Constraints();
    }
    if (id == 0xd244b712f910103L) {
      return new ReportConfigurationErrorStatement_Constraints();
    }
    if (id == 0xd244b712f91010eL) {
      return new PersistentPropertyReferenceOperation_Constraints();
    }
    if (id == 0xd244b712f91011cL) {
      return new EditorExpression_Constraints();
    }
    if (id == 0xd244b712f91012eL) {
      return new EditorOperationCall_Constraints();
    }
    if (id == 0xd244b712f910133L) {
      return new EditorPropertyReference_Constraints();
    }
    if (id == 0xd244b712f91013dL) {
      return new SettingsEditor_Constraints();
    }
    if (id == 0x4a75ebd58602caa5L) {
      return new GetEditorOperation_Constraints();
    }
    if (id == 0xd244b712f91012dL) {
      return new EditorOperationDeclaration_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
}
