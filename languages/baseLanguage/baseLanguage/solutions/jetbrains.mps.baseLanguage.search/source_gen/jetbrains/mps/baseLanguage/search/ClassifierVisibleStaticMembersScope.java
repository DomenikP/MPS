package jetbrains.mps.baseLanguage.search;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import org.jetbrains.mps.util.Condition;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.SModuleOperations;
import jetbrains.mps.compiler.JavaCompilerOptionsComponent;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

@Deprecated
public class ClassifierVisibleStaticMembersScope extends ClassifierVisibleMembersScope {
  private SNode myContextNode;
  private SNode myClassifier;
  @Deprecated
  public ClassifierVisibleStaticMembersScope(@Nullable SNode classifier, @Nullable SNode contextNode, int constraint) {
    // if constraint == STATIC_FIELD use classifier.getVisibleMembers(contextNode, concept/StaticFieldDeclaration) 
    // if constraint == STATIC_METHOD use classifier.getVisibleMembers(contextNode, concept/StaticMethodDeclaration) 
    super(toClassifierType(classifier), contextNode, constraint);
    myContextNode = contextNode;
    myClassifier = classifier;
    if ((constraint & IClassifiersSearchScope.STATIC_MEMBER) != constraint) {
      throw new IllegalArgumentException("only static members are applicable");
    }
  }

  @NotNull
  @Override
  public List<SNode> getNodes(final Condition<SNode> condition) {
    List<SNode> nodes = super.getNodes(condition);
    if (!(SNodeOperations.isInstanceOf(myClassifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")))) {
      return nodes;
    }
    SModule module = check_ctg1ot_a0c0e(SNodeOperations.getModel(myContextNode));
    Project project = SModuleOperations.getProjectForModule(module);
    if (project == null) {
      return nodes;
    }
    JavaCompilerOptionsComponent.JavaVersion sourceJavaVersion = JavaCompilerOptionsComponent.getInstance().getJavaCompilerOptions(project).getTargetJavaVersion();
    if (sourceJavaVersion.compareTo(JavaCompilerOptionsComponent.JavaVersion.VERSION_1_8) < 0) {
      ListSequence.fromList(nodes).removeWhere(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf0aL, "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration"));
        }
      });
    }
    return nodes;
  }
  private static SNode toClassifierType(SNode classifier) {
    if (classifier == null) {
      return null;
    }
    return _quotation_createNode_ctg1ot_a1a5(classifier);
  }
  private static SModule check_ctg1ot_a0c0e(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModule();
    }
    return null;
  }
  private static SNode _quotation_createNode_ctg1ot_a1a5(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_2, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), (SNode) parameter_1);
    return quotedNode_2;
  }
}
