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
package jetbrains.mps.workbench.choose.modules;

import com.intellij.navigation.ItemPresentation;
import com.intellij.navigation.NavigationItem;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModuleReference;

public abstract class BaseModuleItem implements NavigationItem {
  private SModuleReference myModuleReference;

  public BaseModuleItem(SModuleReference moduleReference) {
    myModuleReference = moduleReference;
  }

  public SModuleReference getModuleReference() {
    return myModuleReference;
  }

  @Override
  public String getName() {
    return myModuleReference.getModuleName();
  }

  @Override
  @Nullable
  public ItemPresentation getPresentation() {
    return new ModulePresentation(myModuleReference);
  }

  @Override
  public boolean canNavigate() {
    return true;
  }

  @Override
  public boolean canNavigateToSource() {
    return false;
  }
}
