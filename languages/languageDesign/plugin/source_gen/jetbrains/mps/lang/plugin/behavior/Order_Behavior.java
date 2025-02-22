package jetbrains.mps.lang.plugin.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

public class Order_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String call_getGeneratedClassName_3038738109029038654(SNode thisNode) {
    String n;
    if (isEmptyString(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")))) {
      n = SPropertyOperations.getString(SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x33f4c34299ff0d2fL, "jetbrains.mps.lang.plugin.structure.EditorTab"), false, false), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    } else {
      n = SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    }
    return NameUtil.toValidCamelIdentifier(n) + "_Order";
  }
  public static boolean virtual_presents_1499919975383879508(SNode thisNode, final SNode tab) {
    return ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x22035699bdd78147L, 0x22035699bdd78149L, "tab"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x22035699bdd7814bL, 0x22035699bdd7814cL, "editorTab")) == tab;
      }
    }).isNotEmpty();
  }
  public static SNode virtual_getOrder_3038738109029048953(SNode thisNode) {
    return thisNode;
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
