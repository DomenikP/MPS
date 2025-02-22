package jetbrains.mps.core.xml.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class XmlText_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_isLastPositionAllowed_2133624044437631519(SNode thisNode) {
    return true;
  }
  public static boolean virtual_isFirstPositionAllowed_2133624044437631446(SNode thisNode) {
    return true;
  }
  public static boolean virtual_hasNewLineAfter_2133624044437631594(SNode thisNode) {
    if (isEmptyString(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x16838b3fce9aa513L, 0x16838b3fce9aaa68L, "value"))) && (SNodeOperations.getNextSibling(thisNode) != null)) {
      return !(BehaviorReflection.invokeVirtual(Boolean.TYPE, thisNode, "virtual_onNewLine_2133624044437631588", new Object[]{}));
    }
    return false;
  }
  public static boolean virtual_onNewLine_2133624044437631588(SNode thisNode) {
    SNode left = SNodeOperations.getPrevSibling(thisNode);
    if (SNodeOperations.isInstanceOf(left, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c549486bL, "jetbrains.mps.core.xml.structure.XmlContent"))) {
      SNode leftContent = SNodeOperations.cast(left, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c549486bL, "jetbrains.mps.core.xml.structure.XmlContent"));
      return BehaviorReflection.invokeVirtualStatic(Boolean.TYPE, SNodeOperations.asSConcept(SNodeOperations.getConceptDeclaration(leftContent)), "virtual_textLike_1262430001741498277", new Object[]{}) || isEmptyString(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x16838b3fce9aa513L, 0x16838b3fce9aaa68L, "value"))) && (SNodeOperations.getNextSibling(thisNode) == null);
    }
    return false;
  }
  public static boolean virtual_textLike_1262430001741498277(SAbstractConcept thisConcept) {
    return true;
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
