package jetbrains.mps.baseLanguage.tuples.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class IndexedTupleMemberAccessExpression_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_isLValue_1213877519786(SNode thisNode) {
    return !(SNodeOperations.isInstanceOf(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x12071acfb50L, 0x12071ad5056L, "tuple")), MetaAdapterFactory.getConcept(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x12071708c13L, "jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral")));
  }
}
