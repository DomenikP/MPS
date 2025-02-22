package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.editor.runtime.cells.CellIdManager;

public class CellModel_RefNode_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getRoleForCell_1216377898846(SNode thisNode) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10964446123L, 0x10973779681L, "relationDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
  }
  public static String virtual_getDefaultCellId_4539255030934103845(SNode thisNode) {
    return CellIdManager.createRefNodeId(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10964446123L, 0x10973779681L, "relationDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role")));
  }
  public static String virtual_getOpeningText_1220339714057(SNode thisNode) {
    return "%";
  }
  public static String virtual_getClosingText_1220339738643(SNode thisNode) {
    return "%";
  }
  public static boolean virtual_isCellIdInitialized_1229948571177(SNode thisNode) {
    return true;
  }
}
