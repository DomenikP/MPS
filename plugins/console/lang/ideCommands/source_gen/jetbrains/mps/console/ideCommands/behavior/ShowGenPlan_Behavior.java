package jetbrains.mps.console.ideCommands.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.console.tool.ConsoleContext;
import jetbrains.mps.console.tool.ConsoleStream;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.console.ideCommands.util.PartitioningHelper;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.internal.collections.runtime.Sequence;

public class ShowGenPlan_Behavior {
  public static void init(SNode thisNode) {
  }
  public static void virtual_doExecute_3321948346081469500(SNode thisNode, ConsoleContext context, ConsoleStream console) {
    SModel model = ModelReference_Behavior.call_getModel_7057947030098579394(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x61f2dd6de47f85e4L, 0x61f2dd6de47f867aL, "targetModel")), context.getProject().getRepository());
    if (model == null) {
      return;
    }
    PartitioningHelper.showMappingPartitioning(ProjectHelper.toIdeaProject(context.getProject()), Sequence.fromIterable(Sequence.<SModel>singleton(model)).toListSequence(), console);
  }
}
