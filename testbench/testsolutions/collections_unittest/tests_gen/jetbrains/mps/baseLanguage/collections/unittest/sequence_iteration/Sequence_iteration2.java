package jetbrains.mps.baseLanguage.collections.unittest.sequence_iteration;

/*Generated by MPS */

import junit.framework.TestCase;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISequenceClosure;
import java.util.Iterator;
import jetbrains.mps.baseLanguage.closures.runtime.YieldingIterator;
import junit.framework.Assert;

public class Sequence_iteration2 extends TestCase {
  public Sequence_iteration2() {
  }
  public void test_1() {
    // inner iteration 
    Iterable<String> ss = Sequence.fromClosure(new ISequenceClosure<String>() {
      public Iterable<String> iterable() {
        return new Iterable<String>() {
          public Iterator<String> iterator() {
            return new YieldingIterator<String>() {
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
                      this.__CP__ = 3;
                      this.yield("0");
                      return true;
                    case 3:
                      this.__CP__ = 4;
                      this.yield("1");
                      return true;
                    case 4:
                      this.__CP__ = 5;
                      this.yield("2");
                      return true;
                    case 5:
                      this.__CP__ = 6;
                      this.yield("3");
                      return true;
                    case 6:
                      this.__CP__ = 1;
                      this.yield("4");
                      return true;
                    case 0:
                      this.__CP__ = 2;
                      break;
                    default:
                      break __loop__;
                  }
                } while (true);
                return false;
              }
            };
          }
        };
      }
    });
    int count = 0;
    for (String s : ss) {
      Assert.assertEquals("" + count, s);
      count++;
      int count_inner = 0;
      for (String s_inner : ss) {
        Assert.assertEquals("" + count_inner, s_inner);
        count_inner++;
      }
      Assert.assertEquals(count_inner, 5);
    }
    Assert.assertEquals(count, 5);
  }
}
