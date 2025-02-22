package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class AdditionalForLoopVariable_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_165sw5_a(editorContext, node);
  }
  private EditorCell createCollection_165sw5_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_165sw5_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_165sw5_a0(editorContext, node));
    if (renderingCondition_165sw5_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_165sw5_b0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createComponent_165sw5_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.baseLanguage.editor.VariableDeclaration_NameCellComponent");
    return editorCell;
  }
  private EditorCell createCollection_165sw5_b0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_165sw5_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_165sw5_a1a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_165sw5_b1a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_165sw5_a1a(SNode node, EditorContext editorContext) {
    return SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null;
  }
  private EditorCell createConstant_165sw5_a1a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "=");
    editorCell.setCellId("Constant_165sw5_a1a");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Operator(style, editorCell);
    editorCell.getStyle().putAll(style);
    LocalVariableDeclaration_Initializer_Actions.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_165sw5_b1a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new AdditionalForLoopVariable_Editor.initializerSingleRoleHandler_165sw5_b1a(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer"), editorContext);
    return provider.createCell();
  }
  private class initializerSingleRoleHandler_165sw5_b1a extends SingleRoleCellProvider {
    public initializerSingleRoleHandler_165sw5_b1a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("initializer");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.AUTO_DELETABLE, 0, false);
      editorCell.getStyle().putAll(style);
      LocalVariableDeclaration_Initializer_Actions.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_initializer");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no initializer>";
    }

  }
}
