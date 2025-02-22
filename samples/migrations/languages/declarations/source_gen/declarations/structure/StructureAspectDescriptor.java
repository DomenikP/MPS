package declarations.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptNewComponent = new ConceptDescriptorBuilder("declarations.structure.NewComponent", MetaIdFactory.conceptId(0x1d2b03a474044a1eL, 0x939c9c1c316327e7L, 0x6aff2c1049329d71L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).childDescriptors(new ConceptDescriptorBuilder.Link(7709929535540731252L, "member", MetaIdFactory.conceptId(0x1d2b03a474044a1eL, 0x939c9c1c316327e7L, 0x6aff2c104932a602L), true, true, false)).children(new String[]{"member"}, new boolean[]{true}).alias("new component", "").create();
  /*package*/ final ConceptDescriptor myConceptNewComponentMember = new ConceptDescriptorBuilder("declarations.structure.NewComponentMember", MetaIdFactory.conceptId(0x1d2b03a474044a1eL, 0x939c9c1c316327e7L, 0x6aff2c104932a602L)).interface_().create();
  /*package*/ final ConceptDescriptor myConceptOldComponent = new ConceptDescriptorBuilder("declarations.structure.OldComponent", MetaIdFactory.conceptId(0x1d2b03a474044a1eL, 0x939c9c1c316327e7L, 0x6aff2c1049316cdaL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).childDescriptors(new ConceptDescriptorBuilder.Link(7709929535540673319L, "member", MetaIdFactory.conceptId(0x1d2b03a474044a1eL, 0x939c9c1c316327e7L, 0x6aff2c104931bb26L), true, true, false)).children(new String[]{"member"}, new boolean[]{true}).alias("old component", "").create();
  /*package*/ final ConceptDescriptor myConceptOldComponentMember = new ConceptDescriptorBuilder("declarations.structure.OldComponentMember", MetaIdFactory.conceptId(0x1d2b03a474044a1eL, 0x939c9c1c316327e7L, 0x6aff2c104931bb26L)).interface_().create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptNewComponent, myConceptNewComponentMember, myConceptOldComponent, myConceptOldComponentMember);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0i, conceptFqName)) {
      case 0:
        return myConceptNewComponent;
      case 1:
        return myConceptNewComponentMember;
      case 2:
        return myConceptOldComponent;
      case 3:
        return myConceptOldComponentMember;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0i = new String[]{"declarations.structure.NewComponent", "declarations.structure.NewComponentMember", "declarations.structure.OldComponent", "declarations.structure.OldComponentMember"};
}
