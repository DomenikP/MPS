package jetbrains.mps.baseLanguage.tuples;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import jetbrains.mps.baseLanguage.tuples.actions.ActionAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor;
import jetbrains.mps.lang.dataFlow.framework.DataFlowAspectDescriptor;
import jetbrains.mps.lang.dataFlow.framework.AbstractDataFlowAspectDescriptor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.baseLanguage.tuples.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.lang.script.runtime.ScriptAspectDescriptor;
import jetbrains.mps.baseLanguage.tuples.scripts.ScriptsDescriptor;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import jetbrains.mps.lang.typesystem.runtime.IHelginsDescriptor;
import jetbrains.mps.baseLanguage.tuples.typesystem.TypesystemDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "a247e09e-2435-45ba-b8d2-07e93feba96a(jetbrains.mps.baseLanguage.tuples)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "jetbrains.mps.baseLanguage.tuples";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("a247e09e-2435-45ba-b8d2-07e93feba96a"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{"jetbrains.mps.baseLanguage"};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return TemplateUtil.<TemplateModule>asCollection(TemplateUtil.createInterpretedGenerator(this, "a150150e-46ee-4c9e-b080-08d136e4eefb(jetbrains.mps.baseLanguage.tuples#1238919486295)"));
  }
  @Override
  protected <T extends ILanguageAspect> T createAspect(Class<T> aspectClass) {
    if (aspectClass == ActionAspectDescriptor.class) {
      return (T) new ActionAspectDescriptorImpl();
    }
    if (aspectClass == BehaviorAspectDescriptor.class) {
      return (T) new jetbrains.mps.baseLanguage.tuples.behavior.BehaviorAspectDescriptor();
    }
    if (aspectClass == ConstraintsAspectDescriptor.class) {
      return (T) new jetbrains.mps.baseLanguage.tuples.constraints.ConstraintsAspectDescriptor();
    }
    if (aspectClass == DataFlowAspectDescriptor.class) {
      return (T) new AbstractDataFlowAspectDescriptor() {};
    }
    if (aspectClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (aspectClass == ScriptAspectDescriptor.class) {
      return (T) new ScriptsDescriptor();
    }
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new jetbrains.mps.baseLanguage.tuples.structure.StructureAspectDescriptor();
    }
    if (aspectClass == IHelginsDescriptor.class) {
      return (T) new TypesystemDescriptor();
    }


    return super.createAspect(aspectClass);
  }
}
