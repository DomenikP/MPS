package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class StyleSheet_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String call_getClassFqName_1213877515585(SNode thisNode) {
    String namespace = SModelStereotype.withoutStereotype(SNodeOperations.getModel(thisNode).getReference().getModelName());
    if (namespace.length() > 0) {
      namespace = namespace + ".";
    }
    return namespace + StyleSheet_Behavior.call_getClassName_1213877515618(thisNode);
  }
  public static String call_getClassName_1213877515618(SNode thisNode) {
    return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "_StyleSheet";
  }
}
