package jetbrains.mps.debug.api.source;

/*Generated by MPS */

import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.debug.api.programState.ILocation;
import jetbrains.mps.debug.api.programState.NullLocation;
import com.intellij.openapi.vfs.VirtualFile;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.common.FileOpenUtil;
import org.jetbrains.annotations.NonNls;
import jetbrains.mps.debug.api.AbstractDebugSession;

public class TextPositionProvider implements IPositionProvider<TextSourcePosition> {
  private Project myProject;
  public TextPositionProvider(Project project) {
    myProject = project;
  }
  @Nullable
  @Override
  public TextSourcePosition getPosition(@Nullable ILocation location) {
    if (location == null || location instanceof NullLocation) {
      return null;
    }
    VirtualFile file = getFile(location);
    if (file != null) {
      return new TextSourcePosition(file, location.getLineNumber());
    }
    return null;
  }
  @Nullable
  @Override
  public TextSourcePosition getPosition(@NotNull String unitName, @NotNull String fileName, int lineNumber) {
    VirtualFile file = getFile(unitName, fileName);
    if (file != null) {
      return new TextSourcePosition(file, lineNumber);
    }
    return null;
  }
  @Nullable
  public VirtualFile getFile(@Nullable ILocation location) {
    if (location == null || location instanceof NullLocation) {
      return null;
    }
    return FileOpenUtil.findFile(myProject, location.getUnitName(), location.getFileName());
  }
  @Nullable
  public VirtualFile getFile(@NonNls String unitName, @NonNls String fileName) {
    return FileOpenUtil.findFile(myProject, unitName, fileName);
  }
  @Override
  public boolean accepts(AbstractDebugSession session) {
    return true;
  }
}
