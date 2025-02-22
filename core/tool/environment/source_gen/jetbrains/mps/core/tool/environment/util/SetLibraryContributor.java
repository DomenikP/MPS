package jetbrains.mps.core.tool.environment.util;

/*Generated by MPS */

import jetbrains.mps.library.contributor.LibraryContributor;
import java.util.Set;
import jetbrains.mps.library.contributor.LibDescriptor;
import java.util.Collections;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.LinkedHashSet;

public class SetLibraryContributor implements LibraryContributor {
  private final Set<LibDescriptor> myLibraryPaths;

  private SetLibraryContributor(Set<LibDescriptor> libraryPaths) {
    this.myLibraryPaths = libraryPaths;
  }

  @Override
  public Set<LibDescriptor> getPaths() {
    return Collections.unmodifiableSet(myLibraryPaths);
  }

  @Override
  public boolean hiddenLanguages() {
    return false;
  }

  public static SetLibraryContributor fromMap(Map<String, ClassLoader> libToClassLoader) {
    Set<LibDescriptor> libs = SetSequence.fromSet(new LinkedHashSet<LibDescriptor>());
    for (String libPath : libToClassLoader.keySet()) {
      SetSequence.fromSet(libs).addElement(new LibDescriptor(libPath, libToClassLoader.get(libPath)));
    }
    return new SetLibraryContributor(libs);
  }

  public static SetLibraryContributor fromSet(Set<LibDescriptor> libs) {
    return new SetLibraryContributor(libs);
  }
}
