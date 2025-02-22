package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import org.jetbrains.annotations.NotNull;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.pattern.util.MatchingUtil;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class TypeVariableReference_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getPresentation_1213877396640(SNode thisNode) {
    SNode decl = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"));
    if (ListSequence.fromList(SNodeOperations.getNodeAncestors(thisNode, null, false)).contains(decl)) {
      return SPropertyOperations.getString(decl, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    }
    if (decl != null) {
      return "@" + BehaviorReflection.invokeVirtual(String.class, decl, "virtual_getPresentation_1213877396640", new Object[]{});
    }
    return "?typevar_ref?";
  }
  public static SNode virtual_getErasure_702942408396803226(SNode thisNode) {
    if ((SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1024639ed74L, 0x11ae375bda0L, "bound")) != null)) {
      return BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1024639ed74L, 0x11ae375bda0L, "bound")), "virtual_getErasure_702942408396803226", new Object[]{});
    }
    return _quotation_createNode_6i211a_a1a1();
  }
  public static SNode virtual_getLooseType_5744862332972792015(SNode thisNode, @NotNull Set<SNode> visitedTypeVariableReferences) {
    SNode bound = SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1024639ed74L, 0x11ae375bda0L, "bound"));
    if ((bound != null) && !(SetSequence.fromSet(visitedTypeVariableReferences).contains(thisNode))) {
      SetSequence.fromSet(visitedTypeVariableReferences).addElement(thisNode);
      SNode upperBoundType = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x110daeaa84aL, "jetbrains.mps.baseLanguage.structure.UpperBoundType")));
      SLinkOperations.setTarget(upperBoundType, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x110daeaa84aL, 0x110daeaa84bL, "bound"), BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), bound, "virtual_getLooseType_5744862332972792015", new Object[]{visitedTypeVariableReferences}));
      SetSequence.fromSet(visitedTypeVariableReferences).removeElement(thisNode);
      return upperBoundType;
    } else {
      return SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x110dae5f4a3L, "jetbrains.mps.baseLanguage.structure.WildCardType")));
    }

  }
  public static void virtual_collectGenericSubstitutions_4107091686347010321(SNode thisNode, Map<SNode, SNode> substitutions) {
    if (MapSequence.fromMap(substitutions).containsKey(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")))) {
      return;
    }
    if (SNodeOperations.isInstanceOf(SNodeOperations.getParent(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"))), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"))) {
      MapSequence.fromMap(substitutions).put(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")), thisNode);
    } else {
      BehaviorReflection.invokeSuper(Void.class, thisNode, "jetbrains.mps.baseLanguage.structure.IGenericType", "virtual_collectGenericSubstitutions_4107091686347010321", new Object[]{substitutions});
    }
  }
  public static SNode virtual_expandGenerics_4122274986016348613(final SNode thisNode, Map<SNode, SNode> substitutions, List<SNode> expTrace) {
    if (MapSequence.fromMap(substitutions).containsKey(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")))) {
      if (ListSequence.fromList(expTrace).any(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return MatchingUtil.matchNodes(thisNode, it);
        }
      })) {
        return thisNode;
      }
      SNode exp = MapSequence.fromMap(substitutions).get(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")));
      if (SNodeOperations.isInstanceOf(exp, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
        ListSequence.fromList(expTrace).addElement(thisNode);
        exp = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SNodeOperations.cast(exp, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_expandGenerics_4122274986016348613", new Object[]{substitutions, expTrace});
      }
      return exp;
    }
    return thisNode;
  }
  public static boolean virtual_isSupersetOf_9029841626175335449(SNode thisNode, SNode t, Map<SNode, SNode> substitutions) {
    SNode myResolvedType = thisNode;
    SNode resolvedT = t;
    while (SNodeOperations.isInstanceOf(myResolvedType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"))) {
      SNode temp = SNodeOperations.cast(MapSequence.fromMap(substitutions).get(SLinkOperations.getTarget(SNodeOperations.cast(myResolvedType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"))), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506dL, "jetbrains.mps.baseLanguage.structure.Type"));
      if (temp != null) {
        myResolvedType = temp;
      } else {
        break;
      }
    }
    while (SNodeOperations.isInstanceOf(resolvedT, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"))) {
      SNode temp = SNodeOperations.cast(MapSequence.fromMap(substitutions).get(SLinkOperations.getTarget(SNodeOperations.cast(resolvedT, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"))), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506dL, "jetbrains.mps.baseLanguage.structure.Type"));
      if (temp != null) {
        resolvedT = temp;
      } else {
        break;
      }
    }

    if (myResolvedType != thisNode || resolvedT != t) {
      return BehaviorReflection.invokeVirtual(Boolean.TYPE, myResolvedType, "virtual_isSupersetOf_9029841626175335449", new Object[]{resolvedT, substitutions});
    } else {
      boolean supersetOf = BehaviorReflection.invokeVirtual(Boolean.TYPE, myResolvedType, "virtual_isSupersetOf_1220438914705", new Object[]{resolvedT});
      return supersetOf;
    }

  }
  private static SNode _quotation_createNode_6i211a_a1a1() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
}
