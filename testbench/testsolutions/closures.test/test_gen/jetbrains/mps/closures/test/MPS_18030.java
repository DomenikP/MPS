package jetbrains.mps.closures.test;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import org.junit.Assert;

public class MPS_18030 {
  public MPS_18030() {
  }

  public void test() {
    new MPS_18030.Subclass(0);
  }

  private static class Subclass extends MPS_18030 {
    private Subclass(int k) {
      super();
      final Wrappers._int _k = new Wrappers._int(k);
      final Wrappers._int i = new Wrappers._int(0);
      new _FunctionTypes._return_P0_E0<Integer>() {
        public Integer invoke() {
          i.value = 1;
          return _k.value = 2;
        }
      }.invoke();
      Assert.assertSame(1, i.value);
      Assert.assertSame(2, _k.value);
    }
  }
}
