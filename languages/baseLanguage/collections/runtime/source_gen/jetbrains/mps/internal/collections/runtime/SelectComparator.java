package jetbrains.mps.internal.collections.runtime;

/*Generated by MPS */

import java.util.Comparator;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.baseLanguage.closures.runtime.AdapterClass;

public class SelectComparator<T> implements Comparator<T> {
  private final _FunctionTypes._return_P1_E0<? extends Comparable<?>, ? super T> selector;
  public SelectComparator(@AdapterClass(value = "ISelector") _FunctionTypes._return_P1_E0<? extends Comparable<?>, ? super T> selector) {
    this.selector = selector;
  }
  @SuppressWarnings(value = "unchecked")
  @Override
  public int compare(T a, T b) {
    if (a == b) {
      return 0;
    }
    if (a == null || b == null) {
      return (a == null ? -1 : 1);
    }
    Comparable<Object> cmpa = (Comparable<Object>) selector.invoke(a);
    Comparable<Object> cmpb = (Comparable<Object>) selector.invoke(b);
    if (cmpa == cmpb) {
      return 0;
    }
    if (cmpa == null || cmpb == null) {
      return (cmpa == null ? -1 : 1);
    }
    return cmpa.compareTo(cmpb);
  }
}
