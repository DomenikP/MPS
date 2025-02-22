/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.smodel.action;

import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Iterator;

public class RemoveSubstituteActionByConditionContext {
  private Iterator<SubstituteAction> myActions;
  private SNode myParentNode;
  private SNode myCurrentChild;
  private SNode myChildConcept;

  public RemoveSubstituteActionByConditionContext(Iterator<SubstituteAction> actions, SNode parentNode, SNode currentChild, SNode childConcept) {
    myActions = actions;
    myParentNode = parentNode;
    myCurrentChild = currentChild;
    myChildConcept = childConcept;
  }

  public Iterator<SubstituteAction> getSubstituteActions() {
    return myActions;
  }

  public SModel getModel() {
    return myParentNode.getModel();
  }

  public SNode getParentNode() {
    return myParentNode;
  }

  public SNode getCurrentTargetNode() {
    return myCurrentChild;
  }

  public SNode getChildConcept() {
    return myChildConcept;
  }
}
