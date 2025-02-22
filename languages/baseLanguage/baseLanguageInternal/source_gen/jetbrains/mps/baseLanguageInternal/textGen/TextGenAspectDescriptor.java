package jetbrains.mps.baseLanguageInternal.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenAspectBase;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.text.rt.TextGenDescriptor;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import java.util.Arrays;
import jetbrains.mps.text.rt.TextGenModelOutline;

public class TextGenAspectDescriptor extends TextGenAspectBase {
  private final long[] myId2Index;
  public TextGenAspectDescriptor() {
    myId2Index = new long[14];
    myId2Index[0] = 0x1115749abe3L;
    myId2Index[1] = 0x11157912ec1L;
    myId2Index[2] = 0x11157a3736dL;
    myId2Index[3] = 0x1116962fa68L;
    myId2Index[4] = 0x1117461827dL;
    myId2Index[5] = 0x1118e558c6dL;
    myId2Index[6] = 0x111fb5bb1f2L;
    myId2Index[7] = 0x1122dd58737L;
    myId2Index[8] = 0x11763791866L;
    myId2Index[9] = 0x1180ebdd5b4L;
    myId2Index[10] = 0xf46f1c42ee50930L;
    myId2Index[11] = 0x2f7b79225e746808L;
    myId2Index[12] = 0x2f7b79225e746809L;
    myId2Index[13] = 0x33c9311d003a97d3L;
  }
  @Nullable
  @Override
  public TextGenDescriptor getDescriptor(@NotNull SConceptId id) {
    final int index = Arrays.binarySearch(myId2Index, id.getIdValue());
    switch (index) {
      case 0:
        return new InternalStaticMethodCall_TextGen();
      case 1:
        return new InternalStaticFieldReference_TextGen();
      case 2:
        return new InternalNewExpression_TextGen();
      case 3:
        return new InternalPartialInstanceMethodCall_TextGen();
      case 4:
        return new InternalClassExpression_TextGen();
      case 5:
        return new InternalClassifierType_TextGen();
      case 6:
        return new InternalVariableReference_TextGen();
      case 7:
        return new InternalPartialFieldReference_TextGen();
      case 8:
        return new TypeHintExpression_TextGen();
      case 9:
        return new InternalThisExpression_TextGen();
      case 10:
        return new InternalClassCreator_TextGen();
      case 11:
        return new InternalAnonymousClassCreator_TextGen();
      case 12:
        return new InternalAnonymousClass_TextGen();
      case 13:
        return new InternalSuperMethodCallOperation_TextGen();
      default:
        return null;
    }
  }

  @Override
  public void breakdownToUnits(@NotNull TextGenModelOutline outline) {
  }
}
