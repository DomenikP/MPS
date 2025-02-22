package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.Set;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.List;

public class TryStatement_Behavior {
  public static void init(SNode thisNode) {
  }
  public static void virtual_collectUncaughtMethodThrowables_5412515780383134223(SNode thisNode, Set<SNode> throwables, boolean ignoreMayBeThrowables) {
    TryCatchStatement_Behavior.call_collectUncatchedThrowables_4313092516462065508(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10f383e6771L, "jetbrains.mps.baseLanguage.structure.TryCatchStatement")), throwables, SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cacebf556L, 0x10cacec83aeL, "body")), SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cacebf556L, 0x10f39abd97cL, "catchClause")), ignoreMayBeThrowables);
    StatementList_Behavior.call_collectUncaughtThrowables_5412515780383134474(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cacebf556L, 0x10cacecb713L, "finallyBody")), throwables, ignoreMayBeThrowables);
  }
  public static List<SNode> virtual_getCatchClauses_3718132079121388582(SNode thisNode) {
    return SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cacebf556L, 0x10f39abd97cL, "catchClause"));
  }
}
