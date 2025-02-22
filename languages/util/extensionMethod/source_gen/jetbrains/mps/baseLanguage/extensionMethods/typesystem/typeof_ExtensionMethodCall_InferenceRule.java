package jetbrains.mps.baseLanguage.extensionMethods.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.baseLanguage.extensionMethods.behavior.ExtensionMethodDeclaration_Behavior;
import jetbrains.mps.baseLanguage.behavior.IOperation_Behavior;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import java.util.Iterator;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class typeof_ExtensionMethodCall_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_ExtensionMethodCall_InferenceRule() {
  }
  public void applyRule(final SNode emcall, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    final SNode emdecl = SLinkOperations.getTarget(emcall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
    if (emdecl == null) {
      return;
    }
    SNode thisType = ExtensionMethodDeclaration_Behavior.call_getThisType_8022092943109893938(emdecl);
    if ((thisType == null)) {
      return;
    }

    // --- 
    final SNode instanceType_typevar_5744862332973319659 = typeCheckingContext.createNewRuntimeTypesVariable();
    {
      SNode _nodeToCheck_1029348928467 = IOperation_Behavior.call_getOperand_1213877410070(emcall);
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "5744862332973319660", 0, null);
      typeCheckingContext.createEquation((SNode) typeCheckingContext.getRepresentative(instanceType_typevar_5744862332973319659), (SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "5744862332973319664", false), _info_12389875345);
    }
    if (!(typeCheckingContext.isSingleTypeComputation())) {
      {
        SNode _nodeToCheck_1029348928467 = emcall;
        EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "5744862332973319668", 0, null);
        typeCheckingContext.createLessThanInequality((SNode) typeCheckingContext.getRepresentative(instanceType_typevar_5744862332973319659), (SNode) BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), thisType, "virtual_getLooseType_5744862332972792015", new Object[]{SetSequence.fromSet(new HashSet<SNode>())}), true, false, _info_12389875345);
      }
    }

    final List<SNode> argTypes = new ArrayList<SNode>();
    for (SNode a : ListSequence.fromList(SLinkOperations.getChildren(emcall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument")))) {
      ListSequence.fromList(argTypes).addElement(typeCheckingContext.typeOf(a, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "3058438378413336012", true));
    }

    final Map<SNode, SNode> subs = MapSequence.fromMap(new HashMap<SNode, SNode>());
    if (ListSequence.fromList(SLinkOperations.getChildren(emcall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0x4500f31eb02a7788L, "typeArgument"))).isEmpty() && ListSequence.fromList(SLinkOperations.getChildren(emdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).isNotEmpty()) {
      for (SNode tvd : ListSequence.fromList(SLinkOperations.getChildren(emdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration")))) {
        if (!(MapSequence.fromMap(subs).containsKey(tvd))) {
          final SNode T_typevar_7499685733215754047 = typeCheckingContext.createNewRuntimeTypesVariable();
          MapSequence.fromMap(subs).put(tvd, typeCheckingContext.getRepresentative(T_typevar_7499685733215754047));
        }
      }
    } else {
      {
        Iterator<SNode> tvd_it = ListSequence.fromList(SLinkOperations.getChildren(emdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).iterator();
        Iterator<SNode> targ_it = ListSequence.fromList(SLinkOperations.getChildren(emcall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0x4500f31eb02a7788L, "typeArgument"))).iterator();
        SNode tvd_var;
        SNode targ_var;
        while (tvd_it.hasNext() && targ_it.hasNext()) {
          tvd_var = tvd_it.next();
          targ_var = targ_it.next();
          MapSequence.fromMap(subs).put(tvd_var, targ_var);
          if (SNodeOperations.isInstanceOf(targ_var, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
            BehaviorReflection.invokeVirtual(Void.class, SNodeOperations.cast(targ_var, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_collectGenericSubstitutions_4107091686347010321", new Object[]{subs});
          }
        }
      }
    }

    if (SNodeOperations.isInstanceOf(thisType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
      BehaviorReflection.invokeVirtual(Void.class, SNodeOperations.cast(thisType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_collectGenericSubstitutions_4107091686347010321", new Object[]{subs});
    }

    List<SNode> typel = BehaviorReflection.invokeVirtual((Class<List<SNode>>) ((Class) Object.class), emdecl, "virtual_getTypeApplicationParameters_8277080359323839095", new Object[]{ListSequence.fromList(SLinkOperations.getChildren(emcall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))).count()});
    for (SNode type : ListSequence.fromList(typel)) {
      if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
        BehaviorReflection.invokeVirtual(Void.class, SNodeOperations.cast(type, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_collectGenericSubstitutions_4107091686347010321", new Object[]{subs});
      }
    }

    SNode retType = SLinkOperations.getTarget(emdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType"));
    if (SNodeOperations.isInstanceOf(retType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
      BehaviorReflection.invokeVirtual(Void.class, SNodeOperations.cast(retType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_collectGenericSubstitutions_4107091686347010321", new Object[]{subs});
      retType = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SNodeOperations.cast(retType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_expandGenerics_4107091686347199582", new Object[]{subs});
    }
    {
      SNode _nodeToCheck_1029348928467 = emcall;
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "4695112407843714989", 0, null);
      typeCheckingContext.createLessThanInequality((SNode) retType, (SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "4660288602099497685", true), false, true, _info_12389875345);
    }

    {
      Iterator<SNode> type_it = ListSequence.fromList(typel).iterator();
      Iterator<SNode> argt_it = ListSequence.fromList(argTypes).iterator();
      SNode type_var;
      SNode argt_var;
      while (type_it.hasNext() && argt_it.hasNext()) {
        type_var = type_it.next();
        argt_var = argt_it.next();
        final SNode _type = type_var;
        if (SNodeOperations.isInstanceOf(_type, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
          {
            final SNode A = argt_var;
            typeCheckingContext.whenConcrete(A, new Runnable() {
              public void run() {
                {
                  SNode _nodeToCheck_1029348928467 = emcall;
                  EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "4660288602099522921", 0, null);
                  typeCheckingContext.createGreaterThanInequality((SNode) BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SNodeOperations.cast(_type, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_expandGenerics_4107091686347199582", new Object[]{subs}), (SNode) typeCheckingContext.getExpandedNode(A), false, true, _info_12389875345);
                }
              }
            }, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "3058438378413428023", true, false);
          }
        } else {
          if (!(typeCheckingContext.isSingleTypeComputation())) {
            {
              SNode _nodeToCheck_1029348928467 = argt_var;
              EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "4660288602099522937", 0, null);
              typeCheckingContext.createGreaterThanInequality((SNode) _type, (SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:d9557470-9267-4b7b-ab45-4dc4cc5d697c(jetbrains.mps.baseLanguage.extensionMethods.typesystem)", "4660288602099522939", true), true, true, _info_12389875345);
            }
          }
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x5dc5fc0d37ef4782L, 0x81928b5ce1f69f80L, 0x1583d1b63359483bL, "jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodCall");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return true;
  }
}
