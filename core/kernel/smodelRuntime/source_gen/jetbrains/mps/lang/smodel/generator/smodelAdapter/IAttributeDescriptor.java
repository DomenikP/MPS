package jetbrains.mps.lang.smodel.generator.smodelAdapter;

/*Generated by MPS */

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactoryByName;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public interface IAttributeDescriptor {
  public boolean match(@NotNull SNode attribute);
  public void update(@NotNull SNode attribute);
  public static class AttributeDescriptor implements IAttributeDescriptor {
    protected SAbstractConcept myAttributeConcept;
    @Deprecated
    @ToRemove(version = 3.2)
    public AttributeDescriptor(@Nullable String attributeConceptName) {
      myAttributeConcept = MetaAdapterFactoryByName.getConcept(attributeConceptName);
    }
    public AttributeDescriptor(@Nullable SAbstractConcept attributeConceptName) {
      myAttributeConcept = attributeConceptName;
    }
    @Override
    public boolean match(@NotNull SNode attribute) {
      return myAttributeConcept == null || SNodeOperations.isInstanceOf(attribute, myAttributeConcept);
    }
    @Override
    public void update(@NotNull SNode attribute) {
    }
  }
  public static class AllAttributes extends IAttributeDescriptor.AttributeDescriptor {
    public AllAttributes() {
      super((SAbstractConcept) null);
    }
  }
  public static class NodeAttribute extends IAttributeDescriptor.AttributeDescriptor {
    @Deprecated
    @ToRemove(version = 3.2)
    public NodeAttribute(@NotNull String attributeConceptName) {
      super(attributeConceptName);
    }
    public NodeAttribute(@NotNull SConcept attributeDeclaration) {
      super(attributeDeclaration);
    }
  }
  public static class LinkAttribute extends IAttributeDescriptor.AttributeDescriptor {
    private SReferenceLink myLink;
    @Deprecated
    @ToRemove(version = 3.2)
    public LinkAttribute(@NotNull String attributeConceptName, String linkRole) {
      super(attributeConceptName);
      myLink = MetaAdapterFactoryByName.getReferenceLink(MetaIdFactory.INVALID_CONCEPT_NAME, linkRole);
    }
    public LinkAttribute(@NotNull SConcept attributeDeclaration, SReferenceLink link) {
      super(attributeDeclaration);
      myLink = link;
    }
    /**
     * strings can be passed from user-written code
     */
    @Deprecated
    @ToRemove(version = 3.2)
    public LinkAttribute(@NotNull SConcept attributeDeclaration, String linkRole) {
      super(attributeDeclaration);
      myLink = MetaAdapterFactoryByName.getReferenceLink(MetaIdFactory.INVALID_CONCEPT_NAME, linkRole);
    }
    @Override
    public boolean match(@NotNull SNode attribute) {
      return super.match(attribute) && (myLink == null || myLink.equals(AttributeOperations.getLink(attribute)));
    }
    @Override
    public void update(@NotNull SNode attribute) {
      // todo: remove this hack 
      if (myLink.getOwner().getQualifiedName().equals(MetaIdFactory.INVALID_CONCEPT_NAME) && attribute.getParent() != null) {
        myLink = MetaAdapterFactoryByName.getReferenceLink(attribute.getParent().getConcept().getQualifiedName(), myLink.getName());
      }
      AttributeOperations.setLink(attribute, myLink);
    }
  }
  public static class ChildAttribute extends IAttributeDescriptor.AttributeDescriptor {
    private SContainmentLink myLink;
    public ChildAttribute(@NotNull SConcept attributeDeclaration, SContainmentLink link) {
      super(attributeDeclaration);
      myLink = link;
    }
    @Override
    public boolean match(@NotNull SNode attribute) {
      return super.match(attribute) && (myLink == null || myLink.equals(AttributeOperations.getChildLink(attribute)));
    }
    @Override
    public void update(@NotNull SNode attribute) {
      // todo: remove this hack 
      if (myLink.getOwner().getQualifiedName().equals(MetaIdFactory.INVALID_CONCEPT_NAME) && attribute.getParent() != null) {
        myLink = MetaAdapterFactoryByName.getContainmentLink(attribute.getParent().getConcept().getQualifiedName(), myLink.getName());
      }
      AttributeOperations.setChildLink(attribute, myLink);
    }
  }
  public static class PropertyAttribute extends IAttributeDescriptor.AttributeDescriptor {
    private SProperty myProperty;
    @Deprecated
    @ToRemove(version = 3.2)
    public PropertyAttribute(@NotNull String attributeConceptName, String propertyName) {
      super(attributeConceptName);
      myProperty = MetaAdapterFactoryByName.getProperty(MetaIdFactory.INVALID_CONCEPT_NAME, propertyName);
    }
    public PropertyAttribute(@NotNull SConcept attributeDeclaration, @NotNull SProperty property) {
      super(attributeDeclaration);
      myProperty = property;
    }
    /**
     * strings can be passed from user-written code
     */
    @Deprecated
    @ToRemove(version = 3.2)
    public PropertyAttribute(@NotNull SConcept attributeDeclaration, @NotNull String propertyName) {
      super(attributeDeclaration);
      myProperty = MetaAdapterFactoryByName.getProperty(MetaIdFactory.INVALID_CONCEPT_NAME, propertyName);
    }
    @Override
    public boolean match(@NotNull SNode attribute) {
      return super.match(attribute) && (myProperty == null || myProperty.equals(AttributeOperations.getProperty(attribute)));
    }
    @Override
    public void update(@NotNull SNode attribute) {
      // todo: remove this hack 
      if (myProperty.getOwner().getQualifiedName().equals(MetaIdFactory.INVALID_CONCEPT_NAME) && attribute.getParent() != null) {
        myProperty = MetaAdapterFactoryByName.getProperty(attribute.getParent().getConcept().getQualifiedName(), myProperty.getName());
      }
      AttributeOperations.setProperty(attribute, myProperty);
    }
  }
}
