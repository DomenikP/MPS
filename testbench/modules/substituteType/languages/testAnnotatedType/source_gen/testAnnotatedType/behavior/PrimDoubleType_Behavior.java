package testAnnotatedType.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;

public class PrimDoubleType_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_substituteWith_1470921783545443949(SNode thisNode, SNode subs) {
    if (SNodeOperations.isInstanceOf(subs, MetaAdapterFactory.getConcept(0x2f74e72e3e3d480eL, 0xbae1cc709d588366L, 0x58e32a0782be609eL, "testAnnotatedType.structure.PrimIntType"))) {
      return SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x2f74e72e3e3d480eL, 0xbae1cc709d588366L, 0x786549534310b4f5L, "testAnnotatedType.structure.PrimLongType")));
    }
    if (SNodeOperations.isInstanceOf(subs, MetaAdapterFactory.getConcept(0x2f74e72e3e3d480eL, 0xbae1cc709d588366L, 0x58e32a0782beb1bdL, "testAnnotatedType.structure.PrimFloatType"))) {
      return SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x2f74e72e3e3d480eL, 0xbae1cc709d588366L, 0x1469c391a09c62e6L, "testAnnotatedType.structure.PrimDoubleType")));
    }
    return subs;
  }
}
