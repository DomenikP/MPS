package jetbrains.mps.testHybridEditor.diagram.generated.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class BlockActionMap {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new BlockActionMap.BlockActionMap_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new BlockActionMap.BlockActionMap_BACKSPACE(node));
  }
  public static class BlockActionMap_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public BlockActionMap_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      for (SNode connector : ListSequence.fromList(SLinkOperations.getChildren(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0xa10615a65702ec1L, "jetbrains.mps.testHybridEditor.structure.Diagram")), MetaAdapterFactory.getContainmentLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0xa10615a65702ec1L, 0x20a804e2ec4425e0L, "newConnectors")))) {
        if (eq_dpv54c_a0a0a0a3b(check_dpv54c_a0a0a0a0a(SLinkOperations.getTarget(connector, MetaAdapterFactory.getContainmentLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x20a804e2ec441516L, 0x49664459198225c0L, "source"))), node) || eq_dpv54c_a0a0a0a3b_0(check_dpv54c_a0a0a0a0a_0(SLinkOperations.getTarget(connector, MetaAdapterFactory.getContainmentLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x20a804e2ec441516L, 0x49664459198225c6L, "target"))), node)) {
          SNodeOperations.deleteNode(connector);
        }
      }
      SNodeOperations.deleteNode(node);
    }
    private static boolean eq_dpv54c_a0a0a0a3b(Object a, Object b) {
      return (a != null ? a.equals(b) : a == b);
    }
    private static SNode check_dpv54c_a0a0a0a0a(SNode checkedDotOperand) {
      if (null != checkedDotOperand) {
        return SLinkOperations.getTarget(checkedDotOperand, MetaAdapterFactory.getReferenceLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x4966445919822461L, 0x49664459198225bcL, "block"));
      }
      return null;
    }
    private static boolean eq_dpv54c_a0a0a0a3b_0(Object a, Object b) {
      return (a != null ? a.equals(b) : a == b);
    }
    private static SNode check_dpv54c_a0a0a0a0a_0(SNode checkedDotOperand) {
      if (null != checkedDotOperand) {
        return SLinkOperations.getTarget(checkedDotOperand, MetaAdapterFactory.getReferenceLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x4966445919822461L, 0x49664459198225bcL, "block"));
      }
      return null;
    }
  }
  public static class BlockActionMap_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public BlockActionMap_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      for (SNode connector : ListSequence.fromList(SLinkOperations.getChildren(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0xa10615a65702ec1L, "jetbrains.mps.testHybridEditor.structure.Diagram")), MetaAdapterFactory.getContainmentLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0xa10615a65702ec1L, 0x20a804e2ec4425e0L, "newConnectors")))) {
        if (eq_dpv54c_a0a0a0a3c(check_dpv54c_a0a0a0a0a(SLinkOperations.getTarget(connector, MetaAdapterFactory.getContainmentLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x20a804e2ec441516L, 0x49664459198225c0L, "source"))), node) || eq_dpv54c_a0a0a0a3c_0(check_dpv54c_a0a0a0a0a_0(SLinkOperations.getTarget(connector, MetaAdapterFactory.getContainmentLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x20a804e2ec441516L, 0x49664459198225c6L, "target"))), node)) {
          SNodeOperations.deleteNode(connector);
        }
      }
      SNodeOperations.deleteNode(node);
    }
    private static boolean eq_dpv54c_a0a0a0a3c(Object a, Object b) {
      return (a != null ? a.equals(b) : a == b);
    }
    private static SNode check_dpv54c_a0a0a0a0a(SNode checkedDotOperand) {
      if (null != checkedDotOperand) {
        return SLinkOperations.getTarget(checkedDotOperand, MetaAdapterFactory.getReferenceLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x4966445919822461L, 0x49664459198225bcL, "block"));
      }
      return null;
    }
    private static boolean eq_dpv54c_a0a0a0a3c_0(Object a, Object b) {
      return (a != null ? a.equals(b) : a == b);
    }
    private static SNode check_dpv54c_a0a0a0a0a_0(SNode checkedDotOperand) {
      if (null != checkedDotOperand) {
        return SLinkOperations.getTarget(checkedDotOperand, MetaAdapterFactory.getReferenceLink(0x913a1d639e1948faL, 0xad03e33ecccd3814L, 0x4966445919822461L, 0x49664459198225bcL, "block"));
      }
      return null;
    }
  }
}
