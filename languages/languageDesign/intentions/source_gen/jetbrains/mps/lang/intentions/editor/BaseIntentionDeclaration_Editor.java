package jetbrains.mps.lang.intentions.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.lang.editor.cellProviders.RefCellCellProvider;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.Measure;
import jetbrains.mps.nodeEditor.InlineCellProvider;
import jetbrains.mps.lang.sharedConcepts.editor.SharedStyles_StyleSheet;
import jetbrains.mps.nodeEditor.MPSFonts;
import jetbrains.mps.nodeEditor.BlockCells;
import jetbrains.mps.nodeEditor.cells.EditorCell_Indent;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class BaseIntentionDeclaration_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_2ji0fa_a(editorContext, node);
  }
  private EditorCell createCollection_2ji0fa_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_a");
    editorCell.setBig(true);
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createCollection_2ji0fa_a0(editorContext, node));
    editorCell.addEditorCell(this.createCollection_2ji0fa_b0(editorContext, node));
    if (renderingCondition_2ji0fa_a2a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_2ji0fa_c0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createCollection_2ji0fa_a0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createCollection_2ji0fa_a0a(editorContext, node));
    if (renderingCondition_2ji0fa_a1a0(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_2ji0fa_b0a(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createCollection_2ji0fa_a0a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_a0a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_2ji0fa_a0a0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_2ji0fa_b0a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_2ji0fa_c0a0(editorContext, node));
    editorCell.addEditorCell(this.createRefCell_2ji0fa_d0a0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_2ji0fa_a0a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "intention");
    editorCell.setCellId("Constant_2ji0fa_a0a0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_2ji0fa_b0a0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("name");
    provider.setNoTargetText("<no name>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_name");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createConstant_2ji0fa_c0a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "for concept");
    editorCell.setCellId("Constant_2ji0fa_c0a0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefCell_2ji0fa_d0a0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefCellCellProvider(node, editorContext);
    provider.setRole("forConcept");
    provider.setNoTargetText("<no forConcept>");
    EditorCell editorCell;
    provider.setAuxiliaryCellProvider(new BaseIntentionDeclaration_Editor._Inline_2ji0fa_a3a0a());
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setReferenceCell(true);
      editorCell.setRole("forConcept");
    }
    Style style = new StyleImpl();
    style.set(StyleAttributes.PADDING_RIGHT, 0, new Padding(0.0, Measure.SPACES));
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  public static class _Inline_2ji0fa_a3a0a extends InlineCellProvider {
    public _Inline_2ji0fa_a3a0a() {
      super();
    }
    public EditorCell createEditorCell(EditorContext editorContext) {
      return this.createEditorCell(editorContext, this.getSNode());
    }
    public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
      return this.createProperty_2ji0fa_a0d0a0(editorContext, node);
    }
    private EditorCell createProperty_2ji0fa_a0d0a0(EditorContext editorContext, SNode node) {
      CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
      provider.setRole("name");
      provider.setNoTargetText("<no name>");
      provider.setReadOnly(true);
      EditorCell editorCell;
      editorCell = provider.createEditorCell(editorContext);
      editorCell.setCellId("property_name_1");
      Style style = new StyleImpl();
      SharedStyles_StyleSheet.apply_ReferenceOnConcept(style, editorCell);
      editorCell.getStyle().putAll(style);
      editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
      SNode attributeConcept = provider.getRoleAttribute();
      Class attributeKind = provider.getRoleAttributeClass();
      if (attributeConcept != null) {
        EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
        return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
      } else
      return editorCell;
    }
  }
  private EditorCell createConstant_2ji0fa_b0a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "{");
    editorCell.setCellId("Constant_2ji0fa_b0a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.MATCHING_LABEL, 0, "brace");
    style.set(StyleAttributes.INDENT_LAYOUT_NO_WRAP, 0, true);
    style.set(StyleAttributes.FONT_STYLE, 0, MPSFonts.PLAIN);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_2ji0fa_a1a0(SNode node, EditorContext editorContext) {
    return BlockCells.useBraces();
  }
  private EditorCell createCollection_2ji0fa_b0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createIndentCell_2ji0fa_a1a(editorContext, node));
    editorCell.addEditorCell(this.createCollection_2ji0fa_b1a(editorContext, node));
    return editorCell;
  }
  private EditorCell createIndentCell_2ji0fa_a1a(EditorContext editorContext, SNode node) {
    EditorCell_Indent editorCell = new EditorCell_Indent(editorContext, node);
    return editorCell;
  }
  private EditorCell createCollection_2ji0fa_b1a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_b1a");
    editorCell.addEditorCell(this.createCollection_2ji0fa_a1b0(editorContext, node));
    editorCell.addEditorCell(this.createCollection_2ji0fa_b1b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_2ji0fa_c1b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_2ji0fa_d1b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_2ji0fa_e1b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_2ji0fa_f1b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_2ji0fa_g1b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_2ji0fa_h1b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createCollection_2ji0fa_a1b0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_a1b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_2ji0fa_a0b1a(editorContext, node));
    editorCell.addEditorCell(this.createProperty_2ji0fa_b0b1a(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_2ji0fa_a0b1a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "error intention :");
    editorCell.setCellId("Constant_2ji0fa_a0b1a");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_2ji0fa_b0b1a(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("isErrorIntention");
    provider.setNoTargetText("<no isErrorIntention>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_isErrorIntention");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createCollection_2ji0fa_b1b0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_b1b0");
    editorCell.addEditorCell(this.createCollection_2ji0fa_a1b1a(editorContext, node));
    if (renderingCondition_2ji0fa_a1b1b0(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_2ji0fa_b1b1a(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createCollection_2ji0fa_a1b1a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_a1b1a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_2ji0fa_a0b1b0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_2ji0fa_b0b1b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_2ji0fa_a0b1b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "available in child nodes :");
    editorCell.setCellId("Constant_2ji0fa_a0b1b0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_2ji0fa_b0b1b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("isAvailableInChildNodes");
    provider.setNoTargetText("<no isAvailableInChildNodes>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_isAvailableInChildNodes");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createCollection_2ji0fa_b1b1a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_2ji0fa_b1b1a");
    editorCell.addEditorCell(this.createConstant_2ji0fa_a1b1b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_2ji0fa_b1b1b0(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_2ji0fa_a1b1b0(SNode node, EditorContext editorContext) {
    return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cc67aL, "isAvailableInChildNodes"));
  }
  private EditorCell createConstant_2ji0fa_a1b1b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "child filter :");
    editorCell.setCellId("Constant_2ji0fa_a1b1b0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_2ji0fa_b1b1b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new BaseIntentionDeclaration_Editor.childFilterFunctionSingleRoleHandler_2ji0fa_b1b1b0(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0aaL, "childFilterFunction"), editorContext);
    return provider.createCell();
  }
  private class childFilterFunctionSingleRoleHandler_2ji0fa_b1b1b0 extends SingleRoleCellProvider {
    public childFilterFunctionSingleRoleHandler_2ji0fa_b1b1b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("childFilterFunction");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_childFilterFunction");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<all child nodes>";
    }

  }
  private EditorCell createConstant_2ji0fa_c1b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_2ji0fa_c1b0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_2ji0fa_d1b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new BaseIntentionDeclaration_Editor.descriptionFunctionSingleRoleHandler_2ji0fa_d1b0(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0a9L, "descriptionFunction"), editorContext);
    return provider.createCell();
  }
  private class descriptionFunctionSingleRoleHandler_2ji0fa_d1b0 extends SingleRoleCellProvider {
    public descriptionFunctionSingleRoleHandler_2ji0fa_d1b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("descriptionFunction");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_descriptionFunction");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no descriptionFunction>";
    }

  }
  private EditorCell createConstant_2ji0fa_e1b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_2ji0fa_e1b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_2ji0fa_f1b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new BaseIntentionDeclaration_Editor.isApplicableFunctionSingleRoleHandler_2ji0fa_f1b0(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0abL, "isApplicableFunction"), editorContext);
    return provider.createCell();
  }
  private class isApplicableFunctionSingleRoleHandler_2ji0fa_f1b0 extends SingleRoleCellProvider {
    public isApplicableFunctionSingleRoleHandler_2ji0fa_f1b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("isApplicableFunction");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_isApplicableFunction");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<isApplicable = true>";
    }

  }
  private EditorCell createConstant_2ji0fa_g1b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_2ji0fa_g1b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_2ji0fa_h1b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new BaseIntentionDeclaration_Editor.executeFunctionSingleRoleHandler_2ji0fa_h1b0(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3e6813L, "executeFunction"), editorContext);
    return provider.createCell();
  }
  private class executeFunctionSingleRoleHandler_2ji0fa_h1b0 extends SingleRoleCellProvider {
    public executeFunctionSingleRoleHandler_2ji0fa_h1b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("executeFunction");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_executeFunction");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no executeFunction>";
    }

  }
  private EditorCell createConstant_2ji0fa_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "}");
    editorCell.setCellId("Constant_2ji0fa_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.MATCHING_LABEL, 0, "brace");
    style.set(StyleAttributes.INDENT_LAYOUT_NO_WRAP, 0, true);
    style.set(StyleAttributes.FONT_STYLE, 0, MPSFonts.PLAIN);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_2ji0fa_a2a(SNode node, EditorContext editorContext) {
    return BlockCells.useBraces();
  }
}
