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
package jetbrains.mps.nodeEditor.cellActions;

import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.editor.runtime.cells.ReadOnlyUtil;
import jetbrains.mps.editor.runtime.impl.CellUtil;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: Sergey Dmitriev.
 * Time: Nov 5, 2003 1:03:02 PM
 */
public class CellAction_DeleteNode extends AbstractCellAction {
  private SNode mySemanticNode;

  public CellAction_DeleteNode(SNode semanticNode) {
    mySemanticNode = semanticNode;
  }

  protected SNode getSourceNode() {
    return mySemanticNode;
  }

  @Override
  public boolean canExecute(EditorContext context) {
    jetbrains.mps.openapi.editor.cells.EditorCell cell = context.getEditorComponent().findNodeCell(mySemanticNode);
    return cell != null && cell.getParent() != null && !ReadOnlyUtil.isCellOrSelectionReadOnlyInEditor(context.getEditorComponent(), cell);
  }

  @Override
  public void execute(EditorContext context) {
    List<SNode> nodes = new ArrayList<SNode>();
    nodes.add(CellUtil.getNodeToDelete(mySemanticNode));
    for (SNode node : nodes) {
      node.delete();
    }
  }
}
