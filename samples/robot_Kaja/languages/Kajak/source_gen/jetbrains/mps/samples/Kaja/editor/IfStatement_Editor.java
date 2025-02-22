package jetbrains.mps.samples.Kaja.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class IfStatement_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_eb7h0d_a(editorContext, node);
  }
  private EditorCell createCollection_eb7h0d_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_eb7h0d_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_eb7h0d_a0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_eb7h0d_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_eb7h0d_c0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_eb7h0d_d0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_eb7h0d_e0(editorContext, node));
    if (renderingCondition_eb7h0d_a5a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_eb7h0d_f0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createConstant_eb7h0d_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "if");
    editorCell.setCellId("Constant_eb7h0d_a0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.EDITABLE, 0, false);
    style.set(StyleAttributes.RT_ANCHOR_TAG, 0, "ext_3_RTransform");
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_eb7h0d_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new IfStatement_Editor.conditionSingleRoleHandler_eb7h0d_b0(node, MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785ec9fbeL, 0x2de971c785ec9fc0L, "condition"), editorContext);
    return provider.createCell();
  }
  private class conditionSingleRoleHandler_eb7h0d_b0 extends SingleRoleCellProvider {
    public conditionSingleRoleHandler_eb7h0d_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
  private EditorCell createConstant_eb7h0d_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "do");
    editorCell.setCellId("Constant_eb7h0d_c0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.PUNCTUATION_RIGHT, 0, IfStatement_Editor._StyleParameter_QueryFunction_eb7h0d_a0c0((editorCell == null ? null : editorCell.getContext()), (editorCell == null ? null : editorCell.getSNode())));
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, IfStatement_Editor._StyleParameter_QueryFunction_eb7h0d_a1c0((editorCell == null ? null : editorCell.getContext()), (editorCell == null ? null : editorCell.getSNode())));
    style.set(StyleAttributes.MATCHING_LABEL, 0, "block");
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean _StyleParameter_QueryFunction_eb7h0d_a0c0(EditorContext editorContext, SNode node) {
    return ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785ec9fbeL, 0x2de971c785ec9fc4L, "trueBranch")), MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785f06a3fL, 0x2de971c785f06a40L, "commands"))).isEmpty();
  }
  private static boolean _StyleParameter_QueryFunction_eb7h0d_a1c0(EditorContext editorContext, SNode node) {
    return ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785ec9fbeL, 0x2de971c785ec9fc4L, "trueBranch")), MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785f06a3fL, 0x2de971c785f06a40L, "commands"))).isNotEmpty();
  }
  private EditorCell createRefNode_eb7h0d_d0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new IfStatement_Editor.trueBranchSingleRoleHandler_eb7h0d_d0(node, MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785ec9fbeL, 0x2de971c785ec9fc4L, "trueBranch"), editorContext);
    return provider.createCell();
  }
  private class trueBranchSingleRoleHandler_eb7h0d_d0 extends SingleRoleCellProvider {
    public trueBranchSingleRoleHandler_eb7h0d_d0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("trueBranch");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_trueBranch");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no trueBranch>";
    }

  }
  private EditorCell createConstant_eb7h0d_e0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "end");
    editorCell.setCellId("Constant_eb7h0d_e0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.MATCHING_LABEL, 0, "block");
    style.set(StyleAttributes.RT_ANCHOR_TAG, 0, "ext_1_RTransform");
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_eb7h0d_f0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_eb7h0d_f0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_eb7h0d_a5a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_eb7h0d_b5a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_eb7h0d_c5a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_eb7h0d_d5a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_eb7h0d_a5a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785ec9fbeL, 0x2de971c785ec9fc5L, "falseBranch")), MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785f06a3fL, 0x2de971c785f06a40L, "commands"))).isNotEmpty();
  }
  private EditorCell createConstant_eb7h0d_a5a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "else");
    editorCell.setCellId("Constant_eb7h0d_a5a");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_eb7h0d_b5a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "do");
    editorCell.setCellId("Constant_eb7h0d_b5a");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    style.set(StyleAttributes.MATCHING_LABEL, 0, "else_block");
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_eb7h0d_c5a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new IfStatement_Editor.falseBranchSingleRoleHandler_eb7h0d_c5a(node, MetaAdapterFactory.getContainmentLink(0x49a08c51fe543ccL, 0xbd998b46d641d7f5L, 0x2de971c785ec9fbeL, 0x2de971c785ec9fc5L, "falseBranch"), editorContext);
    return provider.createCell();
  }
  private class falseBranchSingleRoleHandler_eb7h0d_c5a extends SingleRoleCellProvider {
    public falseBranchSingleRoleHandler_eb7h0d_c5a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("falseBranch");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_falseBranch");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no falseBranch>";
    }

  }
  private EditorCell createConstant_eb7h0d_d5a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "end");
    editorCell.setCellId("Constant_eb7h0d_d5a");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.MATCHING_LABEL, 0, "else_block");
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
