package jetbrains.mps.execution.commands.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionDescriptorBase;
import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.intentions.IntentionType;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.lang.typesystem.runtime.HUtil;

public final class ConvertToList_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public ConvertToList_Intention() {
    super(MetaAdapterFactory.getConcept(0xf3347d8a0e794f35L, 0x8ac91574f25c986fL, 0x5f50ed14026999c9L, "jetbrains.mps.execution.commands.structure.ListCommandPart"), IntentionType.NORMAL, true, new SNodePointer("r:611f7e3f-ffc4-4896-a805-c9fe694989ca(jetbrains.mps.execution.commands.intentions)", "2168104298250389155"));
  }
  @Override
  public String getPresentation() {
    return "ConvertToList";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    if (editorContext.getSelectedNode() != node && !(isVisibleInChild(node, editorContext.getSelectedNode(), editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3347d8a0e794f35L, 0x8ac91574f25c986fL, 0x5f50ed14026999c9L, 0x1e16a75f45341377L, "items"))).isNotEmpty();
  }
  private boolean isVisibleInChild(final SNode node, final SNode childNode, final EditorContext editorContext) {
    return eq_63cojg_a0a0f(SNodeOperations.getContainingLinkRole(childNode), "items");
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new ConvertToList_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Convert Items to Explicit List Creation";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      List<SNode> items = SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3347d8a0e794f35L, 0x8ac91574f25c986fL, 0x5f50ed14026999c9L, 0x1e16a75f45341377L, "items"));
      ListSequence.fromList(items).visitAll(new IVisitor<SNode>() {
        public void visit(SNode it) {
          SNodeOperations.detachNode(it);
        }
      });
      SLinkOperations.setTarget(node, MetaAdapterFactory.getContainmentLink(0xf3347d8a0e794f35L, 0x8ac91574f25c986fL, 0x5f50ed14026999c9L, 0x5f50ed14026999cbL, "list"), _quotation_createNode_mz75hy_a0a2a0(items));
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return ConvertToList_Intention.this;
    }
  }
  private static boolean eq_63cojg_a0a0f(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
  private static SNode _quotation_createNode_mz75hy_a0a2a0(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ab8473cc5L, "jetbrains.mps.baseLanguage.structure.GenericNewExpression"), null, null, false);
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10e39306c2eL, "jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit"), null, null, false);
    {
      List<SNode> nodes = (List<SNode>) parameter_1;
      for (SNode child : nodes) {
        quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x1202df1ada0L, 0x1202df24ea0L, "initValue"), HUtil.copyIfNecessary(child));
      }
    }
    quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ab8473cc5L, 0x10ab847b486L, "creator"), quotedNode_3);
    return quotedNode_2;
  }
}
