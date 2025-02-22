package jetbrains.mps.testbench.junit.suites;

/*Generated by MPS */

import java.util.Set;
import org.jetbrains.mps.openapi.model.SModel;
import java.util.HashSet;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.Generator;
import java.util.Collection;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.generator.GenerationFacade;

public class ModelsExtractor {
  private Set<SModel> models = new HashSet<SModel>();
  private final SModule module;
  private final boolean myIncludeDoNotGenerate;
  public ModelsExtractor(SModule module, boolean includeDoNotGenerate) {
    this.module = module;
    this.myIncludeDoNotGenerate = includeDoNotGenerate;
    extractModels(module);
  }
  public ModelsExtractor includingGenerators() {
    if (module instanceof Language) {
      for (Generator gen : ((Language) module).getGenerators()) {
        extractModels(gen);
      }
    }
    return this;
  }
  public Collection<SModel> getModels() {
    return models;
  }
  private void extractModels(SModule m) {
    for (SModel d : m.getModels()) {
      if (includeModel(d)) {
        models.add(d);
      }
    }
  }
  private boolean includeModel(SModel model) {
    return SModelStereotype.isUserModel(model) && (myIncludeDoNotGenerate || GenerationFacade.canGenerate(model));
  }
}
