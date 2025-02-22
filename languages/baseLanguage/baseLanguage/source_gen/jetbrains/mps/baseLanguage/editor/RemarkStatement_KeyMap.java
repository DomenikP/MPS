package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.cells.KeyMapImpl;
import jetbrains.mps.openapi.editor.cells.KeyMapAction;
import jetbrains.mps.editor.runtime.cells.KeyMapActionImpl;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;

public class RemarkStatement_KeyMap extends KeyMapImpl {
  public RemarkStatement_KeyMap() {
    this.setApplicableToEveryModel(false);
    KeyMapAction action;
    action = new RemarkStatement_KeyMap.RemarkStatement_KeyMap_Action0();
    this.putAction("any", "VK_ENTER", action);
  }
  public static class RemarkStatement_KeyMap_Action0 extends KeyMapActionImpl {
    public RemarkStatement_KeyMap_Action0() {
      super.setCaretPolicy(KeyMapAction.CARET_AT_INTERMEDIATE_POSITION);
      this.setShownInPopupMenu(false);
    }
    public boolean isMenuAlwaysShown() {
      return false;
    }
    public boolean canExecute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      if ((contextCell == null)) {
        return false;
      }
      SNode contextNode = contextCell.getSNode();
      if (contextNode == null) {
        return false;
      }
      if (!(SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1101757c8faL, "jetbrains.mps.baseLanguage.structure.RemarkStatement")))) {
        return false;
      }
      return true;
    }
    public void execute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      this.execute_internal(editorContext, contextCell.getSNode(), this.getSelectedNodes(editorContext));
    }
    private void execute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      EditorCell_Label label = (EditorCell_Label) editorContext.getContextCell();
      int caretPostion = label.getCaretPosition();
      String text = SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1101757c8faL, 0x110175cdb2bL, "value"));
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1101757c8faL, 0x110175cdb2bL, "value"), text.substring(0, caretPostion));
      SNode newRemark = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1101757c8faL, "jetbrains.mps.baseLanguage.structure.RemarkStatement")), null);
      SPropertyOperations.set(newRemark, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1101757c8faL, 0x110175cdb2bL, "value"), text.substring(caretPostion));
      SNodeOperations.insertNextSiblingChild(node, newRemark);
    }
    public String getKeyStroke() {
      return " ENTER";
    }
  }
}
