package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import jetbrains.mps.typesystem.inference.TypeChecker;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ArrayList;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class IMethodCall_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Object[] call_getActualArguments_1219275428261(SNode thisNode, final SModule module) {
    return ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))).select(new ISelector<SNode, Object>() {
      public Object select(SNode it) {
        return BehaviorReflection.invokeVirtual(Object.class, it, "virtual_eval_1213877519769", new Object[]{module});
      }
    }).toGenericArray(Object.class);
  }
  public static SNode virtual_deriveType_1213877435747(SNode thisNode, SNode expression) {
    // is 'experssion' an actual argument in this method call? 
    if (SNodeOperations.getParent(expression) == thisNode && SNodeOperations.hasRole(expression, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))) {
      SNode method = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
      int i = SNodeOperations.getIndexInParent(expression);
      if (i < ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).count()) {
        SNode parameterDeclaration = ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).getElement(i);
        SNode rawType = SNodeOperations.copyNode(SLinkOperations.getTarget(parameterDeclaration, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")));
        SNode instanceType = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), thisNode, "virtual_getInstanceType_8008512149545154471", new Object[]{});
        if ((instanceType == null)) {
          return rawType;
        }
        final SNode methodClassifier = SNodeOperations.getNodeAncestor(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), false, false);
        {
          GeneratedMatchingPattern pattern_fq0410_f0c0b0b = new IMethodCall_Behavior.Pattern_fq0410_a0a0a5a2a1a2(methodClassifier);
          SNode coercedNode_fq0410_f0c0b0b = TypeChecker.getInstance().getRuntimeSupport().coerce_(instanceType, pattern_fq0410_f0c0b0b);
          if (coercedNode_fq0410_f0c0b0b != null) {
            SNode resultType;
            if (SNodeOperations.isInstanceOf(rawType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"))) {
              resultType = IMethodCall_Behavior.call_getConcreteType_8008512149545161843(thisNode, SNodeOperations.cast(rawType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference")), coercedNode_fq0410_f0c0b0b, methodClassifier);
            } else {
              for (SNode typeVariableReference : SNodeOperations.getNodeDescendants(rawType, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"), false, new SAbstractConcept[]{})) {
                SNode concreteType = IMethodCall_Behavior.call_getConcreteType_8008512149545161843(thisNode, typeVariableReference, coercedNode_fq0410_f0c0b0b, methodClassifier);
                SNodeOperations.replaceWithAnother(typeVariableReference, concreteType);
              }
              resultType = rawType;
            }
            return resultType;
          } else {
            return rawType;
          }
        }
      }
    }
    return null;
  }
  public static SNode call_getConcreteType_8008512149545161843(SNode thisNode, SNode typeVariableReference, SNode coercedClt, SNode methodClassifier) {
    List<SNode> parameters = SLinkOperations.getChildren(coercedClt, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"));
    if (ListSequence.fromList(parameters).isEmpty()) {
      return _quotation_createNode_fq0410_a0a1a2();
    }
    SNode concreteType;
    int index = SNodeOperations.getIndexInParent(SLinkOperations.getTarget(typeVariableReference, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")));
    if (SNodeOperations.getParent(SLinkOperations.getTarget(typeVariableReference, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"))) == methodClassifier && ListSequence.fromList(parameters).count() > index) {
      concreteType = SNodeOperations.copyNode(ListSequence.fromList(parameters).getElement(index));
    } else {
      concreteType = _quotation_createNode_fq0410_a0a0a4a2();
    }
    return concreteType;
  }
  public static SNode virtual_getTypeAnnotation_1233920952262(SNode thisNode) {
    return BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), "virtual_getTypeAnnotation_1233920952262", new Object[]{});
  }
  public static SNode virtual_getInstanceType_8008512149545154471(SNode thisNode) {
    return null;
  }
  public static Map<SNode, SNode> virtual_getTypesByTypeVars_851115533308208851(SNode thisNode) {
    SNode instanceType = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), thisNode, "virtual_getInstanceType_8008512149545154471", new Object[]{});
    HashMap<SNode, SNode> result = new HashMap<SNode, SNode>();
    if ((instanceType == null)) {
      return result;
    }
    Iterator<SNode> typeParms = ListSequence.fromList(SLinkOperations.getChildren(instanceType, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"))).iterator();
    Iterator<SNode> typeVars = ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(instanceType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).iterator();
    while (typeParms.hasNext() && typeVars.hasNext()) {
      result.put(typeVars.next(), typeParms.next());
    }
    return result;
  }
  public static Iterable<SNode> virtual_getAvailableMethodDeclarations_5776618742611315379(SNode thisNode, String methodName) {
    return new ArrayList<SNode>();
  }
  public static boolean virtual_isInTypeInferenceContext_4837286298388660615(SNode thisNode) {
    SNode methodAnc = SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1208f458d37L, "jetbrains.mps.baseLanguage.structure.IMethodLike"), false, false);
    return SLinkOperations.getTarget(SNodeOperations.as(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e96L, "jetbrains.mps.baseLanguage.structure.AssignmentExpression")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e99L, "rValue")) == thisNode || SLinkOperations.getTarget(SNodeOperations.as(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) == thisNode || SLinkOperations.getTarget(SNodeOperations.as(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7feL, "jetbrains.mps.baseLanguage.structure.ReturnStatement")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7feL, 0xf8cc6bf96cL, "expression")) == thisNode || ((methodAnc != null) && BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), methodAnc, "virtual_getLastStatement_1239354409446", new Object[]{}) == SNodeOperations.as(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement")));
  }
  public static boolean virtual_useScopesForMethodDeclarationFixer_66132694723287898(SNode thisNode) {
    // todo: use something better here. check usages of getAvailableMethodDeclarations in charisma etc 
    return false;
  }
  public static class Pattern_fq0410_a0a0a5a2a1a2 extends GeneratedMatchingPattern implements IMatchingPattern {
    /*package*/ List<SNode> patternVar_param;
    /*package*/ SNode patternVar_ignore;
    /*package*/ Object AntiquotationField_fq0410_a0a0a5a2a1a1;
    public Pattern_fq0410_a0a0a5a2a1a2(Object parameter_fq0410_a0a0a5a2a1a1) {
      this.AntiquotationField_fq0410_a0a0a5a2a1a1 = parameter_fq0410_a0a0a5a2a1a1;
    }
    public SConcept getConcept() {
      return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType");
    }
    public boolean match(SNode nodeToMatch) {
      {
        SNode nodeToMatch_fq0410_a0a5a2a1a1 = nodeToMatch;
        if (!(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType").equals(nodeToMatch_fq0410_a0a5a2a1a1.getConcept()))) {
          return false;
        }
        {
          SNode referent;
          referent = (SNode) this.AntiquotationField_fq0410_a0a0a5a2a1a1;
          if (nodeToMatch_fq0410_a0a5a2a1a1.getReferenceTarget(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")) != referent) {
            return false;
          }
        }
        {
          SContainmentLink childRole_fq0410_ = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter");
          this.patternVar_param = ListSequence.fromList(new ArrayList<SNode>());
          patternVar_ignore = null;
          for (SNode childVar : nodeToMatch_fq0410_a0a5a2a1a1.getChildren(childRole_fq0410_)) {
            patternVar_ignore = childVar;
            ListSequence.fromList(this.patternVar_param).addElement(childVar);
          }
        }
      }
      return true;
    }
    public boolean hasAntiquotations() {
      return true;
    }
    public void fillFieldValuesFrom(GeneratedMatchingPattern pattern) {
      if (pattern != null && pattern.getClass() == this.getClass()) {
        patternVar_param = (List<SNode>) pattern.getFieldValue("patternVar_param");
        patternVar_ignore = (SNode) pattern.getFieldValue("patternVar_ignore");
      }
    }
    public Object getFieldValue(String fieldName) {
      if ("patternVar_param".equals(fieldName)) {
        return patternVar_param;
      }
      if ("patternVar_ignore".equals(fieldName)) {
        return patternVar_ignore;
      }
      return null;
    }
    public void performActions(Object o) {
    }
  }
  private static SNode _quotation_createNode_fq0410_a0a1a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_fq0410_a0a0a4a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
}
