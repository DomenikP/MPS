package jetbrains.mps.refactoring.framework;

/*Generated by MPS */


public interface IRefactoringTarget {
  public IRefactoringTarget.TargetType getTarget();
  public boolean allowMultipleTargets();
  public boolean isApplicable(Object entity);
  public static   enum TargetType {
    NODE(),
    MODEL(),
    MODULE();

    TargetType() {
    }
  }
}
