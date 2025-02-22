/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.classloading;

import jetbrains.mps.module.ReloadableModuleBase;
import org.jetbrains.mps.openapi.module.SModule;

import java.util.Collection;
import java.util.Set;

/**
 * Subscribe via {@link jetbrains.mps.classloading.ClassLoaderManager#addClassesHandler} if you want
 * to receive class loading notifications.
 * <p/>
 * Listeners are notified with a write lock for a module repository being held.
 * <p/>
 * API: A client must not throw exceptions in {@link #beforeClassesUnloaded} and {@link #afterClassesLoaded} methods
 * Otherwise the application may behave unexpectedly
 */
public interface MPSClassesListener {
  /**
   * Contract: The class loaders of the {@code unloadedModules} are still valid (i.e. not disposed)
   *
   * WARN:
   * @param unloadedModules are likely to be removed from the repository at this moment
   */
  void beforeClassesUnloaded(Set<? extends ReloadableModuleBase> unloadedModules);

  /**
   * Contract: The class loaders of the {@code loadedModules} are valid (of course)
   * @param loadedModules are surely in the repository at this moment.
   */
  void afterClassesLoaded(Set<? extends ReloadableModuleBase> loadedModules);
}
