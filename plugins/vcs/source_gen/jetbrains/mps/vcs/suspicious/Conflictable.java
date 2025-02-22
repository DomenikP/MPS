package jetbrains.mps.vcs.suspicious;

/*Generated by MPS */

import jetbrains.mps.vfs.IFile;

public abstract class Conflictable {
  public Conflictable() {
  }
  public abstract boolean isConflictDetected();
  public abstract IFile getFile();
  public abstract void reloadFromDisk();
  public abstract boolean needReloading();
  @Override
  public boolean equals(Object object) {
    if (!((object instanceof Conflictable))) {
      return false;
    }
    return getFile().equals(((Conflictable) object).getFile());
  }
  @Override
  public int hashCode() {
    return getFile().hashCode();
  }
}
