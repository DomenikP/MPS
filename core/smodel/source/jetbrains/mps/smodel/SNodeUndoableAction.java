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
package jetbrains.mps.smodel;

import org.jetbrains.mps.openapi.model.SNode;

public abstract class SNodeUndoableAction {
  private final SNode myAffectedNode;

  protected SNodeUndoableAction(SNode affectedNode) {
    myAffectedNode = affectedNode;
  }

  protected SNode getAffectedNode() {
    return myAffectedNode;
  }

  public SNode getRoot() {
    return myAffectedNode.getContainingRoot();
  }

  protected abstract void doUndo();

  protected abstract void doRedo();

  public final void undo() {
    doUndo();
  }

  public final void redo() {
    doRedo();
  }

  public boolean isGlobal() {
    return false;
  }
}
