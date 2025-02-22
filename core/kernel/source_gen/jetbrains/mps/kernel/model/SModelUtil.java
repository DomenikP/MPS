package jetbrains.mps.kernel.model;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactoryByName;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.List;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.LinkedHashSet;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.search.ConceptAndSuperConceptsScope;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.util.IterableUtil;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import jetbrains.mps.util.annotation.ToRemove;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.model.SModel;

public class SModelUtil {
  public static SNode findConceptDeclaration(@NotNull final String conceptFQName) {
    return MetaAdapterFactoryByName.getConcept(conceptFQName).getDeclarationNode();
  }
  public static Language getDeclaringLanguage(final SNode concept) {
    if (concept == null) {
      return null;
    }
    return as_74see4_a0b0b(check_74see4_a0b0b(concept.getModel()), Language.class);
  }
  public static SNode getGenuineLinkDeclaration(SNode linkDeclaration) {
    while (linkDeclaration != null && SLinkOperations.getTarget(linkDeclaration, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98051c244L, "specializedLink")) != null) {
      linkDeclaration = SLinkOperations.getTarget(linkDeclaration, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98051c244L, "specializedLink"));
    }
    return linkDeclaration;
  }
  public static String getGenuineLinkRole(SNode linkDecl) {
    SNode genLinkDecl = getGenuineLinkDeclaration(linkDecl);
    if (genLinkDecl == null) {
      return null;
    }
    return SPropertyOperations.getString(genLinkDecl, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
  }
  public static List<SNode> getDirectSuperInterfacesAndTheirSupers(SNode concept) {
    Set<SNode> result = SetSequence.fromSet(new LinkedHashSet<SNode>());
    for (SNode superConcept : ListSequence.fromList(getDirectSuperConcepts(concept))) {
      if (SNodeOperations.isInstanceOf(superConcept, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103556dcafL, "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration")) && !(SetSequence.fromSet(result).contains(superConcept))) {
        for (SNode node : ListSequence.fromList(new ConceptAndSuperConceptsScope(superConcept).getConcepts())) {
          SetSequence.fromSet(result).addElement((SNode) node);
        }
      }
    }
    return ListSequence.fromListWithValues(new ArrayList<SNode>(), result);
  }
  @Deprecated
  public static List<SNode> getDirectSuperConcepts(SNode concept) {
    List<SNode> result = ListSequence.fromList(new ArrayList<SNode>());
    if (SNodeOperations.isInstanceOf(concept, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, "jetbrains.mps.lang.structure.structure.ConceptDeclaration"))) {
      SNode conceptDecl = (SNode) concept;
      SNode extended = SLinkOperations.getTarget(conceptDecl, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, 0xf979be93cfL, "extends"));
      if (extended != null) {
        ListSequence.fromList(result).addElement(extended);
      }
      for (SNode ref : ListSequence.fromList(SLinkOperations.getChildren(conceptDecl, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, 0x110358d693eL, "implements")))) {
        if (SLinkOperations.getTarget(ref, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc")) != null) {
          ListSequence.fromList(result).addElement(SLinkOperations.getTarget(ref, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc")));
        }
      }
    } else {
      SNode intConceptDecl = (SNode) concept;
      for (SNode ref : ListSequence.fromList(SLinkOperations.getChildren(intConceptDecl, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103556dcafL, 0x110356e9df4L, "extends")))) {
        if (SLinkOperations.getTarget(ref, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc")) != null) {
          ListSequence.fromList(result).addElement(SLinkOperations.getTarget(ref, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc")));
        }
      }
    }
    return result;
  }
  public static List<SAbstractConcept> getDirectSuperConcepts(SAbstractConcept concept) {
    List<SAbstractConcept> result = new ArrayList<SAbstractConcept>();
    if (concept instanceof SConcept) {
      SConcept superConcept = ((SConcept) concept).getSuperConcept();
      if (superConcept != null) {
        result.add(superConcept);
      }
      result.addAll(IterableUtil.asCollection(((SConcept) concept).getSuperInterfaces()));
    }
    if (concept instanceof SInterfaceConcept) {
      result.addAll(IterableUtil.asCollection(((SInterfaceConcept) concept).getSuperInterfaces()));
    }
    return result;
  }
  public static List<SAbstractConcept> getConceptAndAllSuperConcepts(SAbstractConcept concept) {
    Set<SAbstractConcept> resultSet = new LinkedHashSet<SAbstractConcept>();
    Set<SAbstractConcept> frontier = new LinkedHashSet<SAbstractConcept>();
    frontier.add(concept);
    while (resultSet.addAll(frontier)) {
      Set<SAbstractConcept> newFrontier = new LinkedHashSet<SAbstractConcept>();
      for (SAbstractConcept elem : SetSequence.fromSet(frontier)) {
        newFrontier.addAll(getDirectSuperConcepts(elem));
      }
      frontier = newFrontier;
    }
    List<SAbstractConcept> result = new ArrayList<SAbstractConcept>(resultSet);
    return result;
  }
  /**
   * 
   * @deprecated use SConcept.isSubConceptOf
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public static boolean isAssignableConcept(SNode from, SNode to) {
    // not used in MPS 
    assert SNodeOperations.getModel(from) != null : "working with disposed concept: " + NameUtil.nodeFQName(from);
    assert SNodeOperations.getModel(to) != null : "working with disposed concept: " + NameUtil.nodeFQName(to);
    if (from == to) {
      return true;
    }
    if (from == null || to == null) {
      return false;
    }
    if (to == MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept").getDeclarationNode()) {
      return true;
    }
    return MetaAdapterByDeclaration.getConcept(from).isSubConceptOf(MetaAdapterByDeclaration.getConcept(to));
  }
  /**
   * 
   * @deprecated use SConcept.isSubConceptOf
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public static boolean isAssignableConcept(SNode from, String toFqName) {
    // not used in MPS 
    if (from == null) {
      return false;
    }
    String fromFqName = NameUtil.nodeFQName(from);
    return isAssignableConcept(fromFqName, toFqName);
  }
  /**
   * 
   * @deprecated use SConcept.isSubConceptOf
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public static boolean isAssignableConcept(String fromFqName, String toFqName) {
    // not used in MPS 
    if (eq_74see4_a0b0k(fromFqName, toFqName)) {
      return true;
    }
    if (fromFqName == null || toFqName == null) {
      return false;
    }
    if ("jetbrains.mps.lang.core.structure.BaseConcept".equals(toFqName)) {
      return true;
    }

    return ConceptRegistry.getInstance().getConceptDescriptor(fromFqName).isAssignableTo(toFqName);
  }
  public static SNode getGenuineLinkSourceCardinality(SNode linkDecl) {
    return SEnumOperations.enumMemberForValue(SEnumOperations.getEnum("r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)", "Cardinality"), SPropertyOperations.getString_def(getGenuineLinkDeclaration(linkDecl), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98054bb04L, "sourceCardinality"), "0..1"));
  }
  public static boolean isAcceptableTarget(SNode linkDeclaration, SNode referentNode) {
    SAbstractConcept targetConcept = MetaAdapterByDeclaration.getConcept(SLinkOperations.getTarget(linkDeclaration, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98055fef0L, "target")));
    return referentNode.getConcept().isSubConceptOf(targetConcept);
  }
  public static boolean isMultipleLinkDeclaration(@NotNull SNode linkDeclaration) {
    return SPropertyOperations.hasValue(linkDeclaration, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98054bb04L, "sourceCardinality"), "0..n", "0..1") || SPropertyOperations.hasValue(linkDeclaration, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98054bb04L, "sourceCardinality"), "1..n", "0..1");
  }
  public static boolean isAggregation(@NotNull SNode linkDeclaration) {
    return SPropertyOperations.hasValue(linkDeclaration, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf980556927L, "metaClass"), "aggregation", "reference");
  }
  public static SNode getLinkDeclarationTarget(SNode linkDeclaration) {
    return SLinkOperations.getTarget(linkDeclaration, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98055fef0L, "target"));
  }
  public static SNode getLinkDeclarationSpecializedLink(SNode link) {
    return SLinkOperations.getTarget(link, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98051c244L, "specializedLink"));
  }
  public static String getLinkDeclarationRole(SNode link) {
    return SPropertyOperations.getString(link, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
  }
  private static SModule check_74see4_a0b0b(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModule();
    }
    return null;
  }
  private static boolean eq_74see4_a0b0k(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
  private static <T> T as_74see4_a0b0b(Object o, Class<T> type) {
    return (type.isInstance(o) ? (T) o : null);
  }
}
