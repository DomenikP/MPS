package jetbrains.mps.lang.actions.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class NodeFactory_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String call_getQueryMethodName_1220279061997(SNode thisNode) {
    String conceptName = SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xaee9cad2acd44608L, 0xaef20004f6a1cdbdL, 0x10dc7f1f421L, 0x10dc7f54734L, "applicableConcept")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    SNode setupFunction = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xaee9cad2acd44608L, 0xaef20004f6a1cdbdL, 0x10dc7f1f421L, 0x10dc7fcfd46L, "setupFunction"));
    return "nodeFactory_NodeSetup_" + conceptName + "_" + setupFunction.getNodeId().toString();
  }
}
