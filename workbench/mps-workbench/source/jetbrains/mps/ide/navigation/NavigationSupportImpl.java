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
package jetbrains.mps.ide.navigation;

import com.intellij.openapi.components.ApplicationComponent;
import jetbrains.mps.ide.editor.MPSEditorOpener;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.ProjectOperationContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;

/**
 * Idea-aware navigation implementation
 */
public class NavigationSupportImpl extends NavigationSupport implements ApplicationComponent {

  @Override
  @NotNull
  public String getComponentName() {
    return "Navigation Support";
  }

  @Override
  public void initComponent() {
    init();
  }

  @Override
  public void disposeComponent() {
    dispose();
  }

  @Override
  public Editor openNode(@NotNull Project project, @NotNull SNode node, boolean focus, boolean select) {
    return new MPSEditorOpener(ProjectHelper.toIdeaProject(project)).openNode(node, new ProjectOperationContext(project), focus, select);
  }

  @Override
  public void selectInTree(@NotNull Project project, @NotNull SNode node, boolean focus) {
    ProjectPane projectPane = ProjectPane.getInstance(ProjectHelper.toIdeaProject(project));
    projectPane.selectNode(node, focus);
  }

  @Override
  public void selectInTree(@NotNull Project project, @NotNull SModel model, boolean focus) {
    ProjectPane projectPane = ProjectPane.getInstance(ProjectHelper.toIdeaProject(project));
    projectPane.selectModel(model, focus);
  }

  @Override
  public void selectInTree(@NotNull Project project, @NotNull SModule module, boolean focus) {
    ProjectPane projectPane = ProjectPane.getInstance(ProjectHelper.toIdeaProject(project));
    // TODO SModule cast
    projectPane.selectModule(module, focus);
  }
}
