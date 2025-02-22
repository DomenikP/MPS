package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.editor.runtime.cells.CellIdManager;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class CellModel_Component_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getDefaultCellId_4539255030934103845(SNode thisNode) {
    return CellIdManager.createComponentId(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfb35c96896L, 0xfb35c96897L, "editorComponent")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
  }
  public static String virtual_getOpeningText_1220339714057(SNode thisNode) {
    return "#";
  }
  public static String virtual_getClosingText_1220339738643(SNode thisNode) {
    return "#";
  }
  public static boolean virtual_isCellIdInitialized_1229948571177(SNode thisNode) {
    return true;
  }
}
