package jetbrains.mps.internalCollections.test.basicOperations;

/*Generated by MPS */

import jetbrains.mps.internalCollections.test.closures.Util_Test;
import jetbrains.mps.internal.collections.runtime.ISequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import java.util.Arrays;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import junit.framework.Assert;
import java.util.NoSuchElementException;
import jetbrains.mps.internal.collections.runtime.ISequenceClosure;
import jetbrains.mps.baseLanguage.closures.runtime.YieldingIterator;

public class Distinct_Test extends Util_Test {
  public void test_distinctMethod() throws Exception {
    ISequence<Integer> input = Sequence.fromArray(1, 2, 3, 2, 1, 3);
    this.assertIterableEquals(Arrays.asList(1, 2, 3), input.distinct());
  }
  public void test_distinctOperation() throws Exception {
    Iterable<Integer> input = Arrays.asList(1, 2, 3, 2, 1, 3);
    this.assertIterableEquals(Arrays.asList(1, 2, 3), Sequence.fromIterable(input).distinct());
  }
  public void test_nextWithoutHasNext() throws Exception {
    Iterator<Integer> it = ListSequence.fromList(ListSequence.fromListAndArray(new ArrayList<Integer>(), 1, 2, 2, 3)).distinct().iterator();
    Assert.assertSame(1, it.next());
    Assert.assertSame(2, it.next());
    Assert.assertSame(3, it.next());
    Assert.assertFalse(it.hasNext());
    try {
      it.next();
      Assert.fail();
    } catch (NoSuchElementException e) {
      // expected exception 
    }
  }
  public void test_distinctLazy() throws Exception {
    Iterable<Integer> seq = Sequence.fromClosure(new ISequenceClosure<Integer>() {
      public Iterable<Integer> iterable() {
        return new Iterable<Integer>() {
          public Iterator<Integer> iterator() {
            return new YieldingIterator<Integer>() {
              private int __CP__ = 0;
              protected boolean moveToNext() {
__loop__:
                do {
__switch__:
                  switch (this.__CP__) {
                    case -1:
                      assert false : "Internal error";
                      return false;
                    case 2:
                      this._2_j = 1;
                    case 3:
                      if (!(_2_j <= 100)) {
                        this.__CP__ = 1;
                        break;
                      }
                      this.__CP__ = 4;
                      break;
                    case 5:
                      ++_2_j;
                      this.__CP__ = 3;
                      break;
                    case 7:
                      this._7_i = 1;
                    case 8:
                      if (!(_7_i <= _2_j)) {
                        this.__CP__ = 5;
                        break;
                      }
                      this.__CP__ = 9;
                      break;
                    case 10:
                      ++_7_i;
                      this.__CP__ = 8;
                      break;
                    case 11:
                      if (_2_j % 2 == _7_i % 2) {
                        this.__CP__ = 12;
                        break;
                      }
                      this.__CP__ = 10;
                      break;
                    case 13:
                      this.__CP__ = 10;
                      this.yield(_7_i);
                      return true;
                    case 0:
                      this.__CP__ = 2;
                      break;
                    case 4:
                      Assert.assertTrue(_2_j < 11);
                      this.__CP__ = 7;
                      break;
                    case 9:
                      this.__CP__ = 11;
                      break;
                    case 12:
                      this.__CP__ = 13;
                      break;
                    default:
                      break __loop__;
                  }
                } while (true);
                return false;
              }
              private int _7_i;
              private int _2_j;
            };
          }
        };
      }
    });
    assertIterableEquals(input10(), Sequence.fromIterable(seq).distinct().take(10));
  }
}
