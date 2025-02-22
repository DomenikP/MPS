/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.typesystem.inference;

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.util.ConcurrentSubtypingCache;
import jetbrains.mps.typesystem.inference.util.SubtypingCache;

/**
* Created with IntelliJ IDEA.
* User: fyodor
* Date: 12/7/12
* Time: 4:13 PM
* To change this template use File | Settings | File Templates.
*/
public class NonReusableTypecheckingContextOwner implements ITypeContextOwner {
  @Override
  public TypeCheckingContext createTypecheckingContext(SNode sNode, TypeContextManager typeContextManager) {
    return typeContextManager.createTypeCheckingContextForResolve(sNode);
  }

  @Override
  public boolean reuseTypecheckingContext() {
    return false;
  }

  @Override
  public SubtypingCache createSubtypingCache() {
    return new ConcurrentSubtypingCache();
  }
}
