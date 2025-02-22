package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;

public class ArrayCreatorWithInitializers_Delete_Brackets {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new ArrayCreatorWithInitializers_Delete_Brackets.ArrayCreatorWithInitializers_Delete_Brackets_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new ArrayCreatorWithInitializers_Delete_Brackets.ArrayCreatorWithInitializers_Delete_Brackets_BACKSPACE(node));
  }
  public static class ArrayCreatorWithInitializers_Delete_Brackets_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public ArrayCreatorWithInitializers_Delete_Brackets_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode componentType = SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType"));
      if (SNodeOperations.isInstanceOf(componentType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d819f7L, "jetbrains.mps.baseLanguage.structure.ArrayType"))) {
        SNodeOperations.replaceWithAnother(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType")), SLinkOperations.getTarget(SNodeOperations.cast(componentType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d819f7L, "jetbrains.mps.baseLanguage.structure.ArrayType")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d819f7L, 0xf940d819f8L, "componentType")));
      } else {
        SNode classCreator = SNodeFactoryOperations.replaceWithNewChild(node, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, "jetbrains.mps.baseLanguage.structure.DefaultClassCreator")));
        if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"))) {
          SLinkOperations.setTarget(classCreator, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, 0x2724644c0ac833a6L, "classifier"), SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")));
        }
      }
    }
  }
  public static class ArrayCreatorWithInitializers_Delete_Brackets_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public ArrayCreatorWithInitializers_Delete_Brackets_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode componentType = SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType"));
      if (SNodeOperations.isInstanceOf(componentType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d819f7L, "jetbrains.mps.baseLanguage.structure.ArrayType"))) {
        SNodeOperations.replaceWithAnother(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType")), SLinkOperations.getTarget(SNodeOperations.cast(componentType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d819f7L, "jetbrains.mps.baseLanguage.structure.ArrayType")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d819f7L, 0xf940d819f8L, "componentType")));
      } else {
        SNode classCreator = SNodeFactoryOperations.replaceWithNewChild(node, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, "jetbrains.mps.baseLanguage.structure.DefaultClassCreator")));
        if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"))) {
          SLinkOperations.setTarget(classCreator, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, 0x2724644c0ac833a6L, "classifier"), SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10cd01b77ddL, 0x10cd01cf3c4L, "componentType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")));
        }
      }
    }
  }
}
