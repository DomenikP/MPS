package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.behavior.SNodeOperation_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.scopes.runtime.SimpleScope;
import jetbrains.mps.lang.structure.behavior.AbstractConceptDeclaration_Behavior;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class SelectInEditorOperation_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_applicableToNode_1262430001741498076(SAbstractConcept thisConcept) {
    return true;
  }
  public static boolean virtual_applicableToLink_1262430001741498352(SAbstractConcept thisConcept) {
    return true;
  }
  public static Scope virtual_getScope_3734116213129936182(SNode thisNode, SNode kind, SNode child) {
    if (kind == MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086bL, "jetbrains.mps.lang.structure.structure.PropertyDeclaration").getDeclarationNode() || kind == MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x3c0028bb846a5817L, "jetbrains.mps.lang.editor.structure.EditorCellId").getDeclarationNode()) {
      {
        IMatchingPattern pattern_wbtxu4_a0a0c = HUtil.createMatchingPatternByConceptFQName("jetbrains.mps.lang.smodel.structure.SNodeType");
        SNode coercedNode_wbtxu4_a0a0c = TypeChecker.getInstance().getRuntimeSupport().coerce_(TypeChecker.getInstance().getTypeOf(SNodeOperation_Behavior.call_getLeftExpression_1213877508894(thisNode)), pattern_wbtxu4_a0a0c);
        if (coercedNode_wbtxu4_a0a0c != null) {
          if (kind == MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086bL, "jetbrains.mps.lang.structure.structure.PropertyDeclaration").getDeclarationNode()) {
            return SelectInEditorOperation_Behavior.call_getPropertyDeclarationScope_4323500428150818454(thisNode, SLinkOperations.getTarget(coercedNode_wbtxu4_a0a0c, MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, 0x1090e46ca51L, "concept")));
          }
          if (kind == MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x3c0028bb846a5817L, "jetbrains.mps.lang.editor.structure.EditorCellId").getDeclarationNode()) {
            return SelectInEditorOperation_Behavior.call_getEditorCellIdScope_4323500428150952879(thisNode, SLinkOperations.getTarget(coercedNode_wbtxu4_a0a0c, MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, 0x1090e46ca51L, "concept")));
          }
        } else {
        }
      }
    }
    return BehaviorReflection.invokeSuper(Scope.class, thisNode, "jetbrains.mps.lang.core.structure.ScopeProvider", "virtual_getScope_3734116213129936182", new Object[]{kind, child});
  }
  public static Scope call_getPropertyDeclarationScope_4323500428150818454(SNode thisNode, SNode concept) {
    return new SimpleScope(AbstractConceptDeclaration_Behavior.call_getPropertyDeclarations_1213877394546(concept)) {
      @Nullable
      public String getReferenceText(@NotNull SNode target) {
        return SPropertyOperations.getString(((SNode) target), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      }
    };
  }
  public static Scope call_getEditorCellIdScope_4323500428150952879(SNode thisNode, SNode concept) {
    return new EditorCellIdScope(SNodeOperations.getModel(thisNode), concept);
  }
}
