package jetbrains.mps.lang.generator.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;

public class MappingConfiguration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> virtual_getMembers_1213877531970(SNode thisNode) {
    List<SNode> members = new ArrayList<SNode>();
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x10fd54c33e7L, "rootMappingRule"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x10fc0e18af2L, "weavingMappingRule"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x10fca310cd5L, "reductionMappingRule"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x190d31fe6a177473L, "patternReductionRule"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x10fbbe00519L, "createRootRule"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x116597a610dL, "preMappingScript"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x116597e20a5L, "postMappingScript"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x1179be725f9L, "mappingLabel"))));
    return members;
  }
  public static void call_addMember_3166264919334415805(SNode thisNode, SNode newMember) {
    if ((AttributeOperations.getAttribute(newMember, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, "jetbrains.mps.lang.generator.structure.RootTemplateAnnotation"))) != null)) {
      SNode ruleNode = SLinkOperations.addNewChild(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x10fd54c33e7L, "rootMappingRule"), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fd54746dbL, "jetbrains.mps.lang.generator.structure.Root_MappingRule")));
      SLinkOperations.setTarget(ruleNode, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, 0x10fc0b6e730L, "applicableConcept"), SLinkOperations.getTarget(AttributeOperations.getAttribute(newMember, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, "jetbrains.mps.lang.generator.structure.RootTemplateAnnotation"))), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, 0x11017255ccfL, "applicableConcept")));
      SLinkOperations.setTarget(ruleNode, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fd54746dbL, 0x10fd54746ddL, "template"), SNodeOperations.cast(newMember, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept")));
    } else if (SNodeOperations.isInstanceOf(newMember, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, "jetbrains.mps.lang.generator.structure.TemplateDeclaration"))) {
      SNode mappingRule = SLinkOperations.addNewChild(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xff0bea0475L, 0x10fca310cd5L, "reductionMappingRule"), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fca296532L, "jetbrains.mps.lang.generator.structure.Reduction_MappingRule")));
      SLinkOperations.setTarget(mappingRule, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, 0x10fc0b6e730L, "applicableConcept"), SLinkOperations.getTarget(SNodeOperations.cast(newMember, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, "jetbrains.mps.lang.generator.structure.TemplateDeclaration")), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, 0x1100343ad9eL, "applicableConcept")));
      SNode templateRef = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11013906056L, "jetbrains.mps.lang.generator.structure.TemplateDeclarationReference")));
      SLinkOperations.setTarget(templateRef, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x17e941d108ce3120L, 0x17e941d108ce3173L, "template"), SNodeOperations.cast(newMember, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, "jetbrains.mps.lang.generator.structure.TemplateDeclaration")));
      SLinkOperations.setTarget(mappingRule, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fca296532L, 0x11055ee07edL, "ruleConsequence"), templateRef);
    }
  }
  public static List<SNode> virtual_getBaseConceptCollection_5270353093116013036(SNode thisNode) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode mapConfChild : SNodeOperations.getChildren(thisNode)) {
      if (SNodeOperations.isInstanceOf(mapConfChild, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, "jetbrains.mps.lang.generator.structure.BaseMappingRule"))) {
        ListSequence.fromList(result).addElement(SLinkOperations.getTarget(SNodeOperations.cast(mapConfChild, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, "jetbrains.mps.lang.generator.structure.BaseMappingRule")), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, 0x10fc0b6e730L, "applicableConcept")));
      } else if (SNodeOperations.isInstanceOf(mapConfChild, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11c0acf58efL, "jetbrains.mps.lang.generator.structure.DropRootRule"))) {
        ListSequence.fromList(result).addElement(SLinkOperations.getTarget(SNodeOperations.cast(mapConfChild, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11c0acf58efL, "jetbrains.mps.lang.generator.structure.DropRootRule")), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11c0acf58efL, 0x11c0ad36598L, "applicableConcept")));
      }
    }
    return result;
  }
  public static boolean virtual_isApplicable_7839831476331657915(SNode thisNode, SNode candidate) {
    return false;
  }
}
