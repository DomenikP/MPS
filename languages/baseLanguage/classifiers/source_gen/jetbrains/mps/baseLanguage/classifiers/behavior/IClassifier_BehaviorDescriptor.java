package jetbrains.mps.baseLanguage.classifiers.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.IExtractMethodAvailable_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;

public interface IClassifier_BehaviorDescriptor extends INamedConcept_BehaviorDescriptor, IExtractMethodAvailable_BehaviorDescriptor {
  public SNode virtual_createType_1213877527970(SNode thisNode);
  public SNode virtual_createSuperType_1217433657148(SNode thisNode);
  public List<SNode> virtual_getParts_1213877527988(SNode thisNode);
  public List<SNode> virtual_getMembers_1213877528020(SNode thisNode, SNode contextNode);
  public List<SNode> virtual_getMembers_1213877528124(SNode thisNode);
}
