package jetbrains.mps.build.editor;

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
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.RefCellCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.InlineCellProvider;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.EditorCell_RefPresentation;

public class BuildLayout_Import_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_4dmy40_a(editorContext, node);
  }
  private EditorCell createCollection_4dmy40_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_4dmy40_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_4dmy40_a0(editorContext, node));
    editorCell.addEditorCell(this.createRefCell_4dmy40_b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_4dmy40_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "import");
    editorCell.setCellId("Constant_4dmy40_a0");
    Style style = new StyleImpl();
    buildStyles_StyleSheet.apply_keyword(style, editorCell);
    style.set(StyleAttributes.EDITABLE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new BuildLayout_Import_Editor.ReplaceWith_BuildLayout_Node_cellMenu_4dmy40_a0a0()}));
    return editorCell;
  }
  public static class ReplaceWith_BuildLayout_Node_cellMenu_4dmy40_a0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_BuildLayout_Node_cellMenu_4dmy40_a0a0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.build.structure.BuildLayout_Node";
    }
  }
  private EditorCell createRefCell_4dmy40_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefCellCellProvider(node, editorContext);
    provider.setRole("target");
    provider.setNoTargetText("<no target>");
    EditorCell editorCell;
    provider.setAuxiliaryCellProvider(new BuildLayout_Import_Editor._Inline_4dmy40_a1a());
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setReferenceCell(true);
      editorCell.setRole("target");
    }
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  public static class _Inline_4dmy40_a1a extends InlineCellProvider {
    public _Inline_4dmy40_a1a() {
      super();
    }
    public EditorCell createEditorCell(EditorContext editorContext) {
      return this.createEditorCell(editorContext, this.getSNode());
    }
    public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
      return this.createReferencePresentation_4dmy40_a0b0(editorContext, node);
    }
    private EditorCell createReferencePresentation_4dmy40_a0b0(EditorContext editorContext, SNode node) {
      EditorCell_Property editorCell = EditorCell_RefPresentation.create(editorContext, node, this.getRefNode(), "target");
      editorCell.setCellId("ReferencePresentation_4dmy40_a0b0");
      return editorCell;
    }
  }
}
