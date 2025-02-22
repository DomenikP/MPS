package jetbrains.mps.build.workflow.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;

public class ConstraintsAspectDescriptor implements jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x2670d5989d5b49b8L) {
      return new BwfSubTaskDependency_Constraints();
    }
    if (id == 0x2670d5989d5a6273L) {
      return new BwfTask_Constraints();
    }
    if (id == 0x2670d5989d5a6275L) {
      return new BwfSubTask_Constraints();
    }
    if (id == 0x6565da114724ce92L) {
      return new BwfTaskLibrary_Constraints();
    }
    if (id == 0x6e014d63c07ebd1bL) {
      return new BwfFileSet_Constraints();
    }
    if (id == 0x5c3f3e2c1cede077L) {
      return new BwfJavaClassPath_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
}
