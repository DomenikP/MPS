package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;

public class TernaryOperatorExpression_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_c45jqi_a(editorContext, node);
  }
  private EditorCell createCollection_c45jqi_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_c45jqi_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createRefNode_c45jqi_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_c45jqi_b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_c45jqi_c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_c45jqi_d0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_c45jqi_e0(editorContext, node));
    return editorCell;
  }
  private EditorCell createRefNode_c45jqi_a0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new TernaryOperatorExpression_Editor.conditionSingleRoleHandler_c45jqi_a0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012826fL, "condition"), editorContext);
    return provider.createCell();
  }
  private class conditionSingleRoleHandler_c45jqi_a0 extends SingleRoleCellProvider {
    public conditionSingleRoleHandler_c45jqi_a0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("condition");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_condition");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no condition>";
    }

  }
  private EditorCell createConstant_c45jqi_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "?");
    editorCell.setCellId("Constant_c45jqi_b0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Operator(style, editorCell);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_c45jqi_c0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new TernaryOperatorExpression_Editor.ifTrueSingleRoleHandler_c45jqi_c0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012a1c0L, "ifTrue"), editorContext);
    return provider.createCell();
  }
  private class ifTrueSingleRoleHandler_c45jqi_c0 extends SingleRoleCellProvider {
    public ifTrueSingleRoleHandler_c45jqi_c0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("ifTrue");
      }
      TernaryOperator_Delete.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_ifTrue");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no ifTrue>";
    }

  }
  private EditorCell createConstant_c45jqi_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_c45jqi_d0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Operator(style, editorCell);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_c45jqi_e0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new TernaryOperatorExpression_Editor.ifFalseSingleRoleHandler_c45jqi_e0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012cedcL, "ifFalse"), editorContext);
    return provider.createCell();
  }
  private class ifFalseSingleRoleHandler_c45jqi_e0 extends SingleRoleCellProvider {
    public ifFalseSingleRoleHandler_c45jqi_e0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("ifFalse");
      }
      TernaryOperator_Delete.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_ifFalse");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no ifFalse>";
    }

  }
}
