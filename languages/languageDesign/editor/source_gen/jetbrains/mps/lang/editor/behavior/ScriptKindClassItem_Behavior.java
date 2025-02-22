package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class ScriptKindClassItem_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_isApplicableTo_1214304723440(SNode thisNode, SNode cellModel) {
    {
      SNode matchedNode_o7mo2_a0a = SNodeOperations.getParent(cellModel);
      {
        boolean matches_o7mo2_a0a0 = false;
        {
          SNode matchingNode_o7mo2_a0a0 = SNodeOperations.getParent(cellModel);
          if (matchingNode_o7mo2_a0a0 != null) {
            matches_o7mo2_a0a0 = matchingNode_o7mo2_a0a0.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, "jetbrains.mps.lang.editor.structure.CellModel_Collection"));
          }
        }
        if (matches_o7mo2_a0a0) {
          return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_o7mo2_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, 0x10192e0d3baL, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1a2fd43187388681L, "jetbrains.mps.lang.editor.structure.CellLayout_Superscript"));
        } else {
          boolean matches_o7mo2_b0a0 = false;
          {
            SNode matchingNode_o7mo2_b0a0 = SNodeOperations.getParent(cellModel);
            if (matchingNode_o7mo2_b0a0 != null) {
              matches_o7mo2_b0a0 = matchingNode_o7mo2_b0a0.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, "jetbrains.mps.lang.editor.structure.CellModel_ListWithRole"));
            }
          }
          if (matches_o7mo2_b0a0) {
            return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_o7mo2_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1a2fd43187388681L, "jetbrains.mps.lang.editor.structure.CellLayout_Superscript"));
          } else
          return false;
        }
      }
    }
  }
}
