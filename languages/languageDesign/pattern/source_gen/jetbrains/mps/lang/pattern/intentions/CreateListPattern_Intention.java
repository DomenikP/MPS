package jetbrains.mps.lang.pattern.intentions;

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
import jetbrains.mps.lang.pattern.editor.PatternAddingUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import java.util.List;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class CreateListPattern_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public CreateListPattern_Intention() {
    super(MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4791L, "jetbrains.mps.lang.pattern.structure.PatternExpression"), IntentionType.NORMAL, true, new SNodePointer("r:00000000-0000-4000-0000-011c89590344(jetbrains.mps.lang.pattern.intentions)", "3514655265371785881"));
  }
  @Override
  public String getPresentation() {
    return "CreateListPattern";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    SNode currentNode = editorContext.getSelectedNode();
    return PatternAddingUtil.isPatternApplicable(editorContext) && SNodeOperations.getParent(currentNode) != null;
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new CreateListPattern_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Create List Pattern";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode currentNode = editorContext.getSelectedNode();
      List<SNode> siblings = SNodeOperations.getAllSiblings(currentNode, false);
      SNodeFactoryOperations.setNewAttribute(currentNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb478dL, "jetbrains.mps.lang.pattern.structure.AsPattern")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108aa36731aL, "jetbrains.mps.lang.pattern.structure.ListPattern")));
      for (SNode sibling : siblings) {
        SNodeOperations.deleteNode(sibling);
      }
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return CreateListPattern_Intention.this;
    }
  }
}
