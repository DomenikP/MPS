package jetbrains.mps.lang.plugin.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ToolType_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> virtual_getMembers_1213877402148(SNode thisNode, SNode contextNode) {
    return BehaviorReflection.invokeVirtual((Class<List<SNode>>) ((Class) Object.class), SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x11961ebbf24L, 0x11961f94babL, "tool")), "virtual_getMembers_1213877528124", new Object[]{});
  }
  public static SNode virtual_getClassExpression_1213877337357(SNode thisNode) {
    return null;
  }
}
