package jetbrains.mps.baseLanguage.regexp.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class MatchVariableReferenceReplacement_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_toString_3796137614137538905(SNode thisNode, SNode search) {
    List<SNode> vars = new ArrayList<SNode>();
    BehaviorReflection.invokeVirtual(String.class, search, "virtual_getString_1222432436326", new Object[]{vars});
    return "$" + (ListSequence.fromList(vars).indexOf(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x34ae970c192ab94eL, 0x34ae970c192abbc5L, "match"))) + 1);
  }
}
