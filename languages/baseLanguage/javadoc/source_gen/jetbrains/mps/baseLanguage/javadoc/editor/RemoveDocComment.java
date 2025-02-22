package jetbrains.mps.baseLanguage.javadoc.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.openapi.editor.selection.SelectionManager;

public class RemoveDocComment {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new RemoveDocComment.RemoveDocComment_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new RemoveDocComment.RemoveDocComment_BACKSPACE(node));
    editorCell.setAction(CellActionType.INSERT, new RemoveDocComment.RemoveDocComment_INSERT(node));
  }
  public static class RemoveDocComment_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public RemoveDocComment_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode doc = ListSequence.fromList(SNodeOperations.getNodeDescendants(node, MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x4a3c146b7fae70d3L, "jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment"), true, new SAbstractConcept[]{})).first();
      SNode commentedNode = SNodeOperations.getParent(doc);
      SNodeOperations.deleteNode(doc);
      if (SNodeOperations.isInstanceOf(commentedNode, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable"))) {
        SPropertyOperations.set(SNodeOperations.cast(commentedNode, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, 0x11d2ea948a4L, "isDeprecated"), "" + (false));
      }
      SelectionUtil.selectCell(editorContext, commentedNode, SelectionManager.FIRST_CELL);
    }
  }
  public static class RemoveDocComment_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public RemoveDocComment_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode doc = ListSequence.fromList(SNodeOperations.getNodeDescendants(node, MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x4a3c146b7fae70d3L, "jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment"), true, new SAbstractConcept[]{})).first();
      SNode commentedNode = SNodeOperations.getParent(doc);
      SNodeOperations.deleteNode(doc);
      if (SNodeOperations.isInstanceOf(commentedNode, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable"))) {
        SPropertyOperations.set(SNodeOperations.cast(commentedNode, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, "jetbrains.mps.baseLanguage.structure.IBLDeprecatable")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d2ea8a339L, 0x11d2ea948a4L, "isDeprecated"), "" + (false));
      }
      SelectionUtil.selectCell(editorContext, commentedNode, SelectionManager.FIRST_CELL);
    }
  }
  public static class RemoveDocComment_INSERT extends AbstractCellAction {
    /*package*/ SNode myNode;
    public RemoveDocComment_INSERT(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      CommentLineEditingUtil.insertLine(editorContext);
    }
  }
}
