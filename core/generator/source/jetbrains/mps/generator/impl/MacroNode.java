/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.List;

/**
 * Runtime representation of a macro instance
 * @author Artem Tikhomirov
 */
interface MacroNode {
  @NotNull
  public abstract List<SNode> apply(@NotNull TemplateContext templateContext) throws DismissTopMappingRuleException, GenerationFailureException,
      GenerationCanceledException;
  @Nullable
  public MacroNode getNextMacro();

  @NotNull
  public SNodeReference getMacroNodeRef();

  @Nullable
  public String getMappingLabel();

  interface Factory {
    MacroNode create(@NotNull SNode macro, @NotNull TemplateNode templateNode, @Nullable MacroNode next);
  }
}
