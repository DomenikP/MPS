package jetbrains.mps.lang.migration.util;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "9882f4ad-1955-46fe-8269-94189e5dbbf2(jetbrains.mps.lang.migration.util)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "jetbrains.mps.lang.migration.util";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("9882f4ad-1955-46fe-8269-94189e5dbbf2"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return TemplateUtil.<TemplateModule>asCollection(TemplateUtil.createInterpretedGenerator(this, "7cccd7ab-9ecd-44ec-87ef-9caf1c150e83(jetbrains.mps.lang.migration.util#7417095922908537044)"));
  }
  @Override
  protected <T extends ILanguageAspect> T createAspect(Class<T> aspectClass) {
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.migration.util.structure.StructureAspectDescriptor();
    }


    return super.createAspect(aspectClass);
  }
}
