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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandlerElementKeyMap;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;

public class ForStatement_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_l9yc2b_a(editorContext, node);
  }
  public EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return this.createCollection_l9yc2b_a_0(editorContext, node);
  }
  private EditorCell createCollection_l9yc2b_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_l9yc2b_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    if (renderingCondition_l9yc2b_a0a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_l9yc2b_a0(editorContext, node));
    }
    if (renderingCondition_l9yc2b_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_l9yc2b_b0(editorContext, node));
    }
    editorCell.addEditorCell(this.createConstant_l9yc2b_c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_d0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_l9yc2b_e0(editorContext, node));
    if (renderingCondition_l9yc2b_a5a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_l9yc2b_f0(editorContext, node));
    }
    editorCell.addEditorCell(this.createConstant_l9yc2b_g0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_l9yc2b_h0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_i0(editorContext, node));
    editorCell.addEditorCell(this.createRefNodeList_l9yc2b_j0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_k0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_l0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_l9yc2b_m0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_n0(editorContext, node));
    return editorCell;
  }
  private EditorCell createCollection_l9yc2b_a0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_l9yc2b_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createProperty_l9yc2b_a0a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_b0a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_l9yc2b_a0a(SNode node, EditorContext editorContext) {
    return !(SPropertyOperations.hasValue(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cb1ac5adeL, 0x11745b5371dL, "label"), null));
  }
  private EditorCell createProperty_l9yc2b_a0a(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("label");
    provider.setNoTargetText("<no label>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_label");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Label(style, editorCell);
    editorCell.getStyle().putAll(style);
    AbstractLoopStatement_Label_Actions.setCellActions(editorCell, node, editorContext);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createConstant_l9yc2b_b0a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_l9yc2b_b0a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    style.set(StyleAttributes.EDITABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_l9yc2b_b0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_l9yc2b_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createRefNode_l9yc2b_a1a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_b1a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_l9yc2b_a1a(SNode node, EditorContext editorContext) {
    return (SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cb1ac5adeL, 0x50c493bf9555131L, "loopLabel")) != null);
  }
  private EditorCell createRefNode_l9yc2b_a1a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ForStatement_Editor.loopLabelSingleRoleHandler_l9yc2b_a1a(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cb1ac5adeL, 0x50c493bf9555131L, "loopLabel"), editorContext);
    return provider.createCell();
  }
  private class loopLabelSingleRoleHandler_l9yc2b_a1a extends SingleRoleCellProvider {
    public loopLabelSingleRoleHandler_l9yc2b_a1a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("loopLabel");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_loopLabel");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no loopLabel>";
    }

  }
  private EditorCell createConstant_l9yc2b_b1a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_l9yc2b_b1a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    style.set(StyleAttributes.EDITABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_l9yc2b_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "for");
    editorCell.setCellId("Constant_l9yc2b_c0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.EDITABLE, 0, true);
    style.set(StyleAttributes.RT_ANCHOR_TAG, 0, "ext_1_RTransform");
    editorCell.getStyle().putAll(style);
    Delete_Loop.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new ForStatement_Editor.ReplaceWith_IfStatement_cellMenu_l9yc2b_a0c0(), new ForStatement_Editor.ReplaceWith_WhileStatement_cellMenu_l9yc2b_b0c0(), new ForStatement_Editor.ReplaceWith_DoWhileStatement_cellMenu_l9yc2b_c0c0(), new ForStatement_Editor.ReplaceWith_ForeachStatement_cellMenu_l9yc2b_d0c0()}));
    return editorCell;
  }
  public static class ReplaceWith_IfStatement_cellMenu_l9yc2b_a0c0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_IfStatement_cellMenu_l9yc2b_a0c0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.baseLanguage.structure.IfStatement";
    }
  }
  public static class ReplaceWith_WhileStatement_cellMenu_l9yc2b_b0c0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_WhileStatement_cellMenu_l9yc2b_b0c0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.baseLanguage.structure.WhileStatement";
    }
  }
  public static class ReplaceWith_DoWhileStatement_cellMenu_l9yc2b_c0c0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_DoWhileStatement_cellMenu_l9yc2b_c0c0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.baseLanguage.structure.DoWhileStatement";
    }
  }
  public static class ReplaceWith_ForeachStatement_cellMenu_l9yc2b_d0c0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_ForeachStatement_cellMenu_l9yc2b_d0c0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.baseLanguage.structure.ForeachStatement";
    }
  }
  private EditorCell createConstant_l9yc2b_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "(");
    editorCell.setCellId("Constant_l9yc2b_d0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_LeftParen(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_l9yc2b_e0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ForStatement_Editor.variableSingleRoleHandler_l9yc2b_e0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a697996feL, 0x10a6979f36bL, "variable"), editorContext);
    return provider.createCell();
  }
  private class variableSingleRoleHandler_l9yc2b_e0 extends SingleRoleCellProvider {
    public variableSingleRoleHandler_l9yc2b_e0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("variable");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.RT_ANCHOR_TAG, 0, "ext_2_RTransform");
      editorCell.getStyle().putAll(style);
      DeleteFirstForLoopVar.setCellActions(editorCell, myOwnerNode, myEditorContext);
      editorCell.addKeyMap(new AddForStatementVar());
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_variable");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return " ";
    }

  }
  private EditorCell createCollection_l9yc2b_f0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_l9yc2b_f0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_l9yc2b_a5a(editorContext, node));
    editorCell.addEditorCell(this.createRefNodeList_l9yc2b_b5a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_l9yc2b_a5a(SNode node, EditorContext editorContext) {
    return ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a698082feL, 0xe5318742b9d1411L, "additionalVar"))).isNotEmpty();
  }
  private EditorCell createConstant_l9yc2b_a5a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ",");
    editorCell.setCellId("Constant_l9yc2b_a5a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNodeList_l9yc2b_b5a(EditorContext editorContext, SNode node) {
    AbstractCellListHandler handler = new ForStatement_Editor.additionalVarListHandler_l9yc2b_b5a(node, "additionalVar", editorContext);
    EditorCell_Collection editorCell = handler.createCells(editorContext, new CellLayout_Indent(), false);
    editorCell.setCellId("refNodeList_additionalVar");
    editorCell.setRole(handler.getElementRole());
    return editorCell;
  }
  private static class additionalVarListHandler_l9yc2b_b5a extends RefNodeListHandler {
    public additionalVarListHandler_l9yc2b_b5a(SNode ownerNode, String childRole, EditorContext context) {
      super(ownerNode, childRole, context, false);
    }
    public SNode createNodeToInsert(EditorContext editorContext) {
      SNode listOwner = super.getOwner();
      return NodeFactoryManager.createNode(listOwner, editorContext, super.getElementRole());
    }
    public EditorCell createNodeCell(EditorContext editorContext, SNode elementNode) {
      EditorCell elementCell = super.createNodeCell(editorContext, elementNode);
      this.installElementCellActions(this.getOwner(), elementNode, elementCell, editorContext);
      return elementCell;
    }
    public EditorCell createEmptyCell(EditorContext editorContext) {
      EditorCell emptyCell = null;
      emptyCell = super.createEmptyCell(editorContext);
      this.installElementCellActions(super.getOwner(), null, emptyCell, editorContext);
      return emptyCell;
    }
    public void installElementCellActions(SNode listOwner, SNode elementNode, EditorCell elementCell, EditorContext editorContext) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
        if (elementNode != null) {
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode));
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode));
          elementCell.addKeyMap(new RefNodeListHandlerElementKeyMap(this, ","));
        }
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.setSubstituteInfo(new DefaultChildSubstituteInfo(listOwner, elementNode, super.getLinkDeclaration(), editorContext));
        }
      }
    }
    @Override
    public EditorCell createSeparatorCell(EditorContext editorContext, SNode prevNode, SNode nextNode) {
      EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, this.getOwner(), ",");
      editorCell.setSelectable(false);
      Style style = new StyleImpl();
      style.set(StyleAttributes.LAYOUT_CONSTRAINT, "");
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
      editorCell.getStyle().putAll(style);
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(prevNode));
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(prevNode));
      return editorCell;
    }
  }
  private EditorCell createConstant_l9yc2b_g0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ";");
    editorCell.setCellId("Constant_l9yc2b_g0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Semicolon(style, editorCell);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_l9yc2b_h0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ForStatement_Editor.conditionSingleRoleHandler_l9yc2b_h0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a698082feL, 0x10a69819132L, "condition"), editorContext);
    return provider.createCell();
  }
  private class conditionSingleRoleHandler_l9yc2b_h0 extends SingleRoleCellProvider {
    public conditionSingleRoleHandler_l9yc2b_h0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
      return " ";
    }

  }
  private EditorCell createConstant_l9yc2b_i0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ";");
    editorCell.setCellId("Constant_l9yc2b_i0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Semicolon(style, editorCell);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNodeList_l9yc2b_j0(EditorContext editorContext, SNode node) {
    AbstractCellListHandler handler = new ForStatement_Editor.iterationListHandler_l9yc2b_j0(node, "iteration", editorContext);
    EditorCell_Collection editorCell = handler.createCells(editorContext, new CellLayout_Indent(), false);
    editorCell.setCellId("refNodeList_iteration");
    editorCell.setRole(handler.getElementRole());
    return editorCell;
  }
  private static class iterationListHandler_l9yc2b_j0 extends RefNodeListHandler {
    public iterationListHandler_l9yc2b_j0(SNode ownerNode, String childRole, EditorContext context) {
      super(ownerNode, childRole, context, false);
    }
    public SNode createNodeToInsert(EditorContext editorContext) {
      SNode listOwner = super.getOwner();
      return NodeFactoryManager.createNode(listOwner, editorContext, super.getElementRole());
    }
    public EditorCell createNodeCell(EditorContext editorContext, SNode elementNode) {
      EditorCell elementCell = super.createNodeCell(editorContext, elementNode);
      this.installElementCellActions(this.getOwner(), elementNode, elementCell, editorContext);
      return elementCell;
    }
    public EditorCell createEmptyCell(EditorContext editorContext) {
      EditorCell emptyCell = null;
      emptyCell = this.createEmptyCell_internal(editorContext, this.getOwner());
      this.installElementCellActions(super.getOwner(), null, emptyCell, editorContext);
      return emptyCell;
    }
    public EditorCell createEmptyCell_internal(EditorContext editorContext, SNode node) {
      return this.createConstant_l9yc2b_a9a(editorContext, node);
    }
    public void installElementCellActions(SNode listOwner, SNode elementNode, EditorCell elementCell, EditorContext editorContext) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
        if (elementNode != null) {
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode));
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode));
          elementCell.addKeyMap(new RefNodeListHandlerElementKeyMap(this, ","));
        }
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.setSubstituteInfo(new DefaultChildSubstituteInfo(listOwner, elementNode, super.getLinkDeclaration(), editorContext));
        }
      }
    }
    @Override
    public EditorCell createSeparatorCell(EditorContext editorContext, SNode prevNode, SNode nextNode) {
      EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, this.getOwner(), ",");
      editorCell.setSelectable(false);
      Style style = new StyleImpl();
      style.set(StyleAttributes.LAYOUT_CONSTRAINT, "");
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
      editorCell.getStyle().putAll(style);
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(prevNode));
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(prevNode));
      return editorCell;
    }
    private EditorCell createConstant_l9yc2b_a9a(EditorContext editorContext, SNode node) {
      EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
      editorCell.setCellId("Constant_l9yc2b_a9a");
      Style style = new StyleImpl();
      style.set(StyleAttributes.EDITABLE, 0, true);
      editorCell.getStyle().putAll(style);
      editorCell.setDefaultText("");
      return editorCell;
    }
  }
  private EditorCell createConstant_l9yc2b_k0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ")");
    editorCell.setCellId("Constant_l9yc2b_k0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_RightParen(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_l9yc2b_l0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "{");
    editorCell.setCellId("Constant_l9yc2b_l0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_LeftBrace(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    Delete_Loop.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_l9yc2b_m0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ForStatement_Editor.bodySingleRoleHandler_l9yc2b_m0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cb1ac5adeL, 0x10cb1ada6e8L, "body"), editorContext);
    return provider.createCell();
  }
  private class bodySingleRoleHandler_l9yc2b_m0 extends SingleRoleCellProvider {
    public bodySingleRoleHandler_l9yc2b_m0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("body");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_body");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no body>";
    }

  }
  private EditorCell createConstant_l9yc2b_n0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "}");
    editorCell.setCellId("Constant_l9yc2b_n0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_RightBrace(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    Delete_Loop.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_l9yc2b_a_0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_l9yc2b_a_0");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_l9yc2b_b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_l9yc2b_c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_l9yc2b_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "label");
    editorCell.setCellId("Constant_l9yc2b_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.EDITABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_l9yc2b_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_l9yc2b_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    style.set(StyleAttributes.EDITABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_l9yc2b_c0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ForStatement_Editor.loopLabelSingleRoleHandler_l9yc2b_c0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cb1ac5adeL, 0x50c493bf9555131L, "loopLabel"), editorContext);
    return provider.createCell();
  }
  private class loopLabelSingleRoleHandler_l9yc2b_c0 extends SingleRoleCellProvider {
    public loopLabelSingleRoleHandler_l9yc2b_c0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("loopLabel");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_loopLabel");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no loopLabel>";
    }

  }
}
