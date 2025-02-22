/*
 * Copyright 2003-2015 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.smodel;

import jetbrains.mps.project.ModuleId;
import jetbrains.mps.smodel.SModelId.ForeignSModelId;
import jetbrains.mps.smodel.SModelId.ModelNameSModelId;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.StringUtil;
import jetbrains.mps.util.annotation.Hack;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

// FIXME move to [smodel] once dependencies from MPSModuleRepository and SModelRepository are gone
@Immutable
public final class SModelReference implements org.jetbrains.mps.openapi.model.SModelReference {

  private static Logger LOG = Logger.getLogger(SModelReference.class);

  @NotNull
  private final SModelId myModelId;
  @NotNull
  private final String myModelName;
  @Nullable
  public final SModuleReference myModuleReference;

  public SModelReference(@Nullable SModuleReference module, @NotNull SModelId modelId, @NotNull String modelName) {
    myModelId = modelId;
    myModelName = modelName;
    if (module == null) {
      if (!modelId.isGloballyUnique()) {
        throw new IllegalArgumentException(String.format("Only globally unique model id could be used without module specification: %s", modelId));
      }
    }
    myModuleReference = module;
  }

  @NotNull
  @Override
  public org.jetbrains.mps.openapi.model.SModelId getModelId() {
    return myModelId;
  }

  @NotNull
  @Override
  public String getModelName() {
    return myModelName;
  }

  @Override
  public SModuleReference getModuleReference() {
    return myModuleReference;
  }

  @Override
  public SModel resolve(SRepository repo) {
    if (myModuleReference != null) {
      final SRepository repository;
      if (repo == null) {
        // see StaticReference, which seems to be the only place we pass null as repository
        repository = MPSModuleRepository.getInstance();
      } else {
        repository = repo;
      }
      Computable<SModel> c = new Computable<SModel>() {
        @Override
        public SModel compute() {
          SModule module = repository.getModule(myModuleReference.getModuleId());
          if (module == null) {
            return null;
          }
          return module.getModel(myModelId);
        }
      };
      if (!repository.getModelAccess().canRead()) {
        LOG.warn("Attempt to resolve a model not from read action. What are you going to do with return value? Hint: at least, read. Please ensure proper model access then.", new Throwable());
        return new ModelAccessHelper(repository).runReadAction(c);
      } else {
        return c.compute();
      }
    }

    // FIXME !!! use supplied SRepository, not global model repo !!!
    // If there's no module reference, and model id is global, it's supposed we shall get the model from a global repository.
    // However, at the moment, there's no easy way to get model from SRepository (other than to iterate over all modules and models,
    // which doesn't sound like a good approach). Either shall provide method to find model from SRepository, or drop
    // 'globally unique' model id altogether. What's the benefit of them?

    // NOTE, shall tolerate null repo unless every single piece of code that expects StaticReference of a newly created node
    // hanging in the air to resolve. @see StaticReference#getTargetSModel
    return SModelRepository.getInstance().getModelDescriptor(this);
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;

    SModelReference that = (SModelReference) o;

    if (!myModelId.equals(that.myModelId)) return false;
    if (myModelId.isGloballyUnique() && that.myModelId.isGloballyUnique()) return true;
    return getModuleReference().equals(that.getModuleReference());
  }

  @Override
  public int hashCode() {
    int result = myModelId.hashCode();
    result = 31 * result + (myModelId.isGloballyUnique() ? 0 : getModuleReference().hashCode());
    return result;
  }

  /**
   * @deprecated This code shall move to private method of PersistenceRegistry, which would dispatch to proper
   *   registered factories. Use {@link PersistenceFacade#createModelReference(String)} instead.
   * Format: <code>[ moduleID / ] modelID [ ([moduleName /] modelName ) ]</code>
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public static SModelReference parseReference(String s) {
    if (s == null) return null;
    s = s.trim();
    int lParen = s.indexOf('(');
    int rParen = s.lastIndexOf(')');
    String presentationPart = null;
    if (lParen > 0 && rParen == s.length() - 1) {
      presentationPart = s.substring(lParen + 1, rParen);
      s = s.substring(0, lParen);
      lParen = s.indexOf('(');
      rParen = s.lastIndexOf(')');
    }
    if (lParen != -1 || rParen != -1) {
      throw new IllegalArgumentException("parentheses do not match in: `" + s + "'");
    }

    SModuleId moduleId = null;
    int slash = s.indexOf('/');
    if (slash >= 0) {
      // FIXME I wonder why there's no SModuleIdFactory and corresponding methods in PersistenceFacade
      moduleId = ModuleId.fromString(StringUtil.unescapeRefChars(s.substring(0, slash)));
      s = s.substring(slash + 1);
    }

    String modelIDString = StringUtil.unescapeRefChars(s);
    SModelId modelId;
    if (modelIDString.indexOf(':') >= 0) {
      PersistenceFacade facade = PersistenceFacade.getInstance();
      // temporary: SModelReference can be created without active PersistenceFacade
      if (facade == null) {
        // FIXME get rid of facade == null case, if any
        // Besides, shall move the code to PersistenceRegistry, as it's responsible for prefixes and factory pick
        LOG.warn("Please report stacktrace, which would help us to find out improper MPS initialization sequence", new Throwable());
      }
      modelId = facade != null
          ? facade.createModelId(modelIDString)
          : jetbrains.mps.smodel.SModelId.fromString(modelIDString);
    } else {
      // dead code? I suspect ModelNameSModelId, if any, would start with "m:" prefix and we'd never get into else clause
      // OTOH, there seems to be a special hack in toString(), that persists ModelNameSModelId without the prefix
      modelId = new ModelNameSModelId(modelIDString);
    }

    String moduleName = null;
    String modelName = null;
    if (presentationPart != null) {
      slash = presentationPart.indexOf('/');
      if (slash >= 0) {
        moduleName = StringUtil.unescapeRefChars(presentationPart.substring(0, slash));
        modelName = StringUtil.unescapeRefChars(presentationPart.substring(slash + 1));
      } else {
        modelName = StringUtil.unescapeRefChars(presentationPart);
      }
    }

    if (modelName == null || modelName.isEmpty()) {
      modelName = modelId.getModelName();
      if (modelName == null) {
        throw new IllegalArgumentException("incomplete model reference, presentation part is absent");
      }
    }

    if (moduleId == null) {
      moduleId = extractModuleIdFromModelIdIfJavaStub(modelId);
    }

    if (SModelRepository.isLegacyJavaStubModelId(modelId)) {
      modelId = SModelRepository.newJavaPackageStubFromLegacy(modelId);
    }

    SModuleReference moduleRef =
        moduleId != null || moduleName != null ? new jetbrains.mps.project.structure.modules.ModuleReference(moduleName, moduleId) : null;
    return new SModelReference(moduleRef, modelId, modelName);
  }

  /**
   * This temporary code suites the purpose to homogenize java_stub model references, that used
   * to be kept in two different formats (one is "module id/model id including module id/(module name/model name)"
   * and another "model id including module id(module name/model name)". If there's module id anyway, why
   * would anyone keep it to model id then, and common patter for model reference (with module id coming first) shall be used.
   *
   * Once all model references to java stub are updated, this code shall cease to exist.
   */
  @ToRemove(version = 3.3)
  @Nullable
  @Hack
  private static SModuleId extractModuleIdFromModelIdIfJavaStub(SModelId modelId) {
    if (SModelRepository.isVerboseJavaStubModelId(modelId)) {
      String idValue = ((ForeignSModelId) modelId).getId();
      String stereo = SModelStereotype.getStubStereotypeForId(LanguageID.JAVA);
      if (idValue.length() > stereo.length() + 2 && idValue.startsWith(stereo) && idValue.charAt(stereo.length()) == '#') {
        // two forms of legacy stub model id:
        //    f:java_stub#module id#package name
        //    f:java_stub#package name
        int secondHashIndex = idValue.indexOf('#', stereo.length() + 1);
        // there are two hash chars and non-empty package name
        if (secondHashIndex != -1 && idValue.length() > secondHashIndex) {
          return ModuleId.fromString(idValue.substring(stereo.length()+1, secondHashIndex));
        }
      }
    }
    return null;
  }

  public String toString() {
    StringBuilder sb = new StringBuilder();

    if (getModuleReference() != null && getModuleReference().getModuleId() != null) {
      sb.append(StringUtil.escapeRefChars(getModuleReference().getModuleId().toString()));
      sb.append("/");
    }

    String modelId = myModelId instanceof ModelNameSModelId ? myModelId.getModelName() : myModelId.toString();
    sb.append(StringUtil.escapeRefChars(modelId));

    if (getModuleReference() == null && myModelName.equals(myModelId.getModelName())) {
      return sb.toString();
    }

    sb.append("(");
    if (getModuleReference() != null && getModuleReference().getModuleName() != null) {
      sb.append(StringUtil.escapeRefChars(getModuleReference().getModuleName()));
      sb.append("/");
    }
    if (!myModelName.equals(myModelId.getModelName())) {
      // no reason to write down model name if it's part of module id
      sb.append(StringUtil.escapeRefChars(myModelName));
    }
    sb.append(")");
    return sb.toString();
  }

  public String getStereotype() {
    return SModelStereotype.getStereotype(myModelName);
  }

  /**
   * @deprecated factory method that requires cast to implementation. why not API way to do the same?
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public SModelReference update() {
    SModel sm = SModelRepository.getInstance().getModelDescriptor(this);
    if (sm == null) return this;
    SModelReference reference = (SModelReference) sm.getReference();
    return new SModelReference(reference.getModuleReference(), reference.getModelId(), reference.getModelName());
  }

  public boolean differs(SModelReference that) {
    if (!this.equals(that)) return true;
    if (!myModelName.equals(that.myModelName)) return true;
    return false;
  }
}
