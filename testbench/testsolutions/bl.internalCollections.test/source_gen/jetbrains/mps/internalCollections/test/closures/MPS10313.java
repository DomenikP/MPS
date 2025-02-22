package jetbrains.mps.internalCollections.test.closures;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.IListSequence;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;
import java.util.Collections;

public class MPS10313<T> {
  /*package*/ List<List<T>> myValues;
  public MPS10313() {
  }
  protected boolean tableIsSame(List<? extends List<T>> values) {
    if (ListSequence.fromList(myValues).count() != ListSequence.fromList(values).count()) {
      return false;
    }
    for (int i = 0; i < ListSequence.fromList(values).count(); i++) {
      if (!((ListSequence.fromList(ListSequence.fromList(values).getElement(i)).containsSequence(ListSequence.fromList(ListSequence.fromList(myValues).getElement(i))) && ListSequence.fromList(ListSequence.fromList(myValues).getElement(i)).containsSequence(ListSequence.fromList(ListSequence.fromList(values).getElement(i)))))) {
        return false;
      }
    }
    return true;
  }
  protected boolean listIsSame(List<T> values) {
    return tableIsSame(ListSequence.fromList(values).select(new ISelector<T, IListSequence<T>>() {
      public IListSequence<T> select(T it) {
        return ListSequence.fromListAndArray(new ArrayList<T>(), it);
      }
    }).toListSequence());
  }
  public void takesListOfExtendsListsOfT(List<? extends List<T>> list) {
  }
  public void test1() {
    takesListOfExtendsListsOfT(Sequence.fromIterable(Sequence.fromIterable(Collections.<List<T>>emptyList())).toListSequence());
  }
  public void takesListOfExtendsListsOfFoo(List<? extends List<MPS10313.Foo>> foos) {
  }
  public void test2() {
    takesListOfExtendsListsOfFoo(Sequence.fromIterable(Sequence.fromIterable(Collections.<List<MPS10313.Foo>>emptyList())).toListSequence());
  }
  public void takesListOfExtendsFoo(List<? extends MPS10313.Foo> foos) {
  }
  public void test3() {
    takesListOfExtendsFoo(Sequence.fromIterable(Sequence.fromIterable(Collections.<MPS10313.Bar>emptyList())).toListSequence());
  }
  public static class Foo {
    public Foo() {
    }
  }
  public static class Bar extends MPS10313.Foo {
    public Bar() {
    }
  }
}
