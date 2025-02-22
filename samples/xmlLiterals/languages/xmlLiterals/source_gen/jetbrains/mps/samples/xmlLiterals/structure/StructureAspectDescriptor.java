package jetbrains.mps.samples.xmlLiterals.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.runtime.StaticScope;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptElementMacro = new ConceptDescriptorBuilder("jetbrains.mps.samples.xmlLiterals.structure.ElementMacro", MetaIdFactory.conceptId(0xa1896bc34f5b4a31L, 0xb78bb65514f8d0e5L, 0x7f05a5bbee38086aL)).super_("jetbrains.mps.core.xml.structure.XmlContent").super_(MetaIdFactory.conceptId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c549486bL)).parents("jetbrains.mps.core.xml.structure.XmlContent").parentIds(MetaIdFactory.conceptId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c549486bL)).childDescriptors(new ConceptDescriptorBuilder.Link(9152904044274518128L, "expression", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), false, false, false)).children(new String[]{"expression"}, new boolean[]{false}).alias("$${", "element macro").create();
  /*package*/ final ConceptDescriptor myConceptTextMacro = new ConceptDescriptorBuilder("jetbrains.mps.samples.xmlLiterals.structure.TextMacro", MetaIdFactory.conceptId(0xa1896bc34f5b4a31L, 0xb78bb65514f8d0e5L, 0x7f05a5bbee374ae1L)).super_("jetbrains.mps.core.xml.structure.XmlText").super_(MetaIdFactory.conceptId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x16838b3fce9aa513L)).parents("jetbrains.mps.core.xml.structure.XmlText").parentIds(MetaIdFactory.conceptId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x16838b3fce9aa513L)).childDescriptors(new ConceptDescriptorBuilder.Link(9152904044274469602L, "expression", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), false, false, false)).children(new String[]{"expression"}, new boolean[]{false}).alias("${", "").create();
  /*package*/ final ConceptDescriptor myConceptXmlLiteral = new ConceptDescriptorBuilder("jetbrains.mps.samples.xmlLiterals.structure.XmlLiteral", MetaIdFactory.conceptId(0xa1896bc34f5b4a31L, 0xb78bb65514f8d0e5L, 0x7f05a5bbee3522c3L)).super_("jetbrains.mps.baseLanguage.structure.Expression").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).parents("jetbrains.mps.baseLanguage.structure.Expression").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).childDescriptors(new ConceptDescriptorBuilder.Link(9152904044274328260L, "element", MetaIdFactory.conceptId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L), false, false, false)).children(new String[]{"element"}, new boolean[]{false}).alias("xml literal", "").staticScope(StaticScope.NONE).create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptElementMacro, myConceptTextMacro, myConceptXmlLiteral);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0h, conceptFqName)) {
      case 0:
        return myConceptElementMacro;
      case 1:
        return myConceptTextMacro;
      case 2:
        return myConceptXmlLiteral;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0h = new String[]{"jetbrains.mps.samples.xmlLiterals.structure.ElementMacro", "jetbrains.mps.samples.xmlLiterals.structure.TextMacro", "jetbrains.mps.samples.xmlLiterals.structure.XmlLiteral"};
}
