package jetbrains.mps.lang.smodel.generator.smodelAdapter;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.List;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

public class SEnumOperations {
  public static SNode getEnum(String modelUID, final String nodeName) {
    SModelReference ref = PersistenceFacade.getInstance().createModelReference(modelUID);
    SModel m = SModelRepository.getInstance().getModelDescriptor(ref);
    return (ListSequence.fromList(SModelOperations.roots(m, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc26875dfbL, "jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).equals(nodeName);
      }
    }).first());
  }
  public static List<SNode> getEnumMembers(SNode enumm) {
    return SLinkOperations.getChildren(enumm, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc26875dfbL, 0xfc32151efeL, "member"));
  }
  public static SNode getEnumMember(SNode enumm, String name) {
    return enumMemberForName(enumm, name);
  }
  public static String getEnumMemberName(SNode member) {
    return BehaviorReflection.invokeNonVirtual(String.class, ((SNode) member), "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration", "call_getName_1240169660918", new Object[]{});
  }
  public static String getEnumMemberValue(SNode member) {
    return SPropertyOperations.getString(((SNode) member), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc321331b2L, 0xfc5ee06663L, "internalValue"));
  }
  public static SNode enumMemberForName(SNode enumm, final String name) {
    SNode enumNode = (SNode) enumm;
    return ((SNode) ListSequence.fromList(SLinkOperations.getChildren(enumNode, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc26875dfbL, 0xfc32151efeL, "member"))).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return BehaviorReflection.invokeNonVirtual(String.class, it, "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration", "call_getName_1240169660918", new Object[]{}).equals(name);
      }
    }));
  }
  public static SNode enumMemberForValue(SNode enumm, final String value) {
    if (value == null) {
      return ((SNode) BehaviorReflection.invokeNonVirtual((Class<SNode>) ((Class) Object.class), enumm, "jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration", "call_getDefaultMember_1213877397785", new Object[]{}));
    }
    return ((SNode) ListSequence.fromList(SLinkOperations.getChildren(enumm, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc26875dfbL, 0xfc32151efeL, "member"))).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc321331b2L, 0xfc5ee06663L, "internalValue")).equals(value);
      }
    }));
  }
}
