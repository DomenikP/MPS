package jetbrains.mps.lang.behavior.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class SuperNodeExpression_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode call_getSuperConcept_7448026190102457310(SNode thisNode) {
    SNode result;
    if ((SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L, 0x498a2c3387127040L, "superConcept")) != null)) {
      result = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L, 0x498a2c3387127040L, "superConcept"));
    } else {
      SNode behaviour = SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, "jetbrains.mps.lang.behavior.structure.ConceptBehavior"), true, false);
      SNode concept = SLinkOperations.getTarget(behaviour, MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, 0x11d43447b1fL, "concept"));
      if (SNodeOperations.isInstanceOf(concept, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, "jetbrains.mps.lang.structure.structure.ConceptDeclaration"))) {
        SNode cd = ((SNode) concept);
        result = SLinkOperations.getTarget(cd, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, 0xf979be93cfL, "extends"));
      } else {
        SNode icd = ((SNode) concept);
        result = SLinkOperations.getTarget(ListSequence.fromList(SLinkOperations.getChildren(icd, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103556dcafL, 0x110356e9df4L, "extends"))).first(), MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc"));
      }
    }
    return result;
  }
  public static SNode call_getSuperMethod_5527038142169086661(SNode thisNode) {
    return SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration"), false, false);
  }
  public static boolean call_isSuperMethodStatic_5212852298298945349(SNode thisNode) {
    SNode method = SuperNodeExpression_Behavior.call_getSuperMethod_5527038142169086661(thisNode);
    return method != null && SPropertyOperations.getBoolean(method, MetaAdapterFactory.getProperty(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, 0x51613f7fe129b24dL, "isStatic"));
  }
}
