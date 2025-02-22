package jetbrains.mps.internal.collections.runtime.impl;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class FilteringSequence<U> extends AbstractChainedSequence<U, U> implements Iterable<U> {
  private final _FunctionTypes._return_P1_E0<? extends Boolean, ? super U> filter;
  public FilteringSequence(Iterable<U> input, _FunctionTypes._return_P1_E0<? extends Boolean, ? super U> filter) {
    super(input);
    if (filter == null) {
      throw new NullPointerException();
    }
    this.filter = filter;
  }
  @Override
  public Iterator<U> iterator() {
    return new FilteringSequence.FilteringIterator();
  }
  private class FilteringIterator implements Iterator<U> {
    private Iterator<U> inputIterator;
    private HasNextState hasNext = HasNextState.UNKNOWN;
    private U next;
    private FilteringIterator() {
    }
    @Override
    public boolean hasNext() {
      if (inputIterator == null) {
        init();
      }
      if (hasNext.unknown()) {
        moveToNext();
      }
      return hasNext.hasNext();
    }
    @Override
    public U next() {
      if (inputIterator == null) {
        init();
      }
      if (hasNext.unknown()) {
        moveToNext();
      }
      if (!((hasNext.hasNext()))) {
        throw new NoSuchElementException();
      }
      return clearNext();
    }
    @Override
    public void remove() {
      throw new UnsupportedOperationException();
    }
    private void init() {
      inputIterator = getInput().iterator();
    }
    private void moveToNext() {
      hasNext = HasNextState.AT_END;
      next = null;
      while (inputIterator.hasNext()) {
        U tmp = inputIterator.next();
        if (filter.invoke(tmp)) {
          next = tmp;
          hasNext = HasNextState.HAS_NEXT;
          break;
        }
      }
    }
    private U clearNext() {
      U tmp = next;
      next = null;
      hasNext = HasNextState.UNKNOWN;
      return tmp;
    }
  }
}
