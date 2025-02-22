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
package jetbrains.mps.ide.editor;

import com.intellij.openapi.actionSystem.DataProvider;
import com.intellij.openapi.editor.Document;
import com.intellij.ui.components.JBScrollPane;
import com.intellij.util.ui.JBUI;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.MementoPersistence;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.EditorState;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.EqualUtil;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jdom.Element;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.BorderLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class BaseNodeEditor implements Editor {
  private static Logger LOG = LogManager.getLogger(BaseNodeEditor.class);

  private EditorComponent myEditorComponent;
  private JComponent myComponent = new EditorPanel();
  private JComponent myEditorPanel = new JPanel();
  private Project myProject;
  private JComponent myReplace = null;
  private SNodeReference myCurrentlyEditedNode = null;
  protected Map<TaskType, PrioritizedTask> myType2TaskMap = new HashMap<TaskType, PrioritizedTask>();

  public BaseNodeEditor(@NotNull Project mpsProject) {
    myProject = mpsProject;
    myEditorPanel.setLayout(new BorderLayout());
    myEditorPanel.setBorder(new EmptyBorder(JBUI.emptyInsets()));
    myComponent.add(myEditorPanel, BorderLayout.CENTER);
    showEditor();
  }

  public abstract List<Document> getAllEditedDocuments();

  public JComponent getComponent() {
    return myComponent;
  }

  protected JComponent getEditorPanel() {
    return myEditorPanel;
  }

  @Override
  public EditorComponent getCurrentEditorComponent() {
    return myEditorComponent;
  }

  @Override
  public EditorContext getEditorContext() {
    return myEditorComponent == null ? null : myEditorComponent.getEditorContext();
  }

  @Override
  @NotNull
  @Deprecated
  public IOperationContext getOperationContext() {
    return new ProjectOperationContext(myProject);
  }

  @Override
  public SNodeReference getCurrentlyEditedNode() {
    return myCurrentlyEditedNode;
  }

  protected void editNode(@NotNull final SNodeReference nodeToEdit, @Nullable final SNodeReference nodeToSelect) {
    assert myEditorComponent != null;
    executeInEDT(new PrioritizedTask(TaskType.EDIT_NODE, myType2TaskMap) {
      @Override
      public void performTask() {
        SNode node = nodeToEdit.resolve(MPSModuleRepository.getInstance());
        if (node == null) {
          return;
        }
        myEditorComponent.editNode(node);
        SNode toSelect = nodeToSelect == null ? null : nodeToSelect.resolve(MPSModuleRepository.getInstance());
        if (toSelect != null) {
          myEditorComponent.getEditorContext().selectWRTFocusPolicy(toSelect, false); // XXX findNodeCell(, true)? to reveal even folded?
        }
      }
    });
    myCurrentlyEditedNode = nodeToEdit;
  }

  protected void executeInEDT(PrioritizedTask task) {
    if (ModelAccess.instance().isInEDT()) {
      task.run();
    } else {
      ModelAccess.instance().runReadInEDT(task);
    }
  }

  @Override
  public void dispose() {
    if (myEditorComponent != null) {
      myEditorComponent.dispose();
    }
  }

  @Override
  public boolean isTabbed() {
    return false;
  }

  protected abstract Object getData(@NonNls String dataId);

  private class EditorPanel extends JPanel implements DataProvider {
    private EditorPanel() {
      setLayout(new BorderLayout());
      setBorder(new EmptyBorder(JBUI.emptyInsets()));
    }

    @Override
    @Nullable
    public Object getData(@NonNls String dataId) {
      if (dataId.equals(MPSEditorDataKeys.MPS_EDITOR.getName())) return BaseNodeEditor.this;
      Object data = BaseNodeEditor.this.getData(dataId);
      if (data != null) return data;
      EditorComponent ec = getCurrentEditorComponent();
      return ec == null ? null : ec.getData(dataId);
    }
  }

  protected void showEditor() {
    if (myReplace != null) {
      myEditorPanel.remove(myReplace);
      myReplace = null;
    }
    myEditorComponent = new NodeEditorComponent(myProject.getRepository());
    JComponent externalComponent = myEditorComponent.getExternalComponent();
    //HACK to avoid strange gray border in ScrollPane after empty aspect tab
    if(externalComponent.getComponent(0) instanceof JBScrollPane) {
      ((JBScrollPane) externalComponent.getComponent(0)).setBorder(new EmptyBorder(JBUI.emptyInsets()));
      ((JBScrollPane) externalComponent.getComponent(0)).getInsets().set(0, 0, 0, 0);
    }
    myEditorPanel.add(externalComponent, BorderLayout.CENTER);
    myComponent.validate();
  }

  protected void showComponent(JComponent replace) {
    if (myEditorComponent != null) {
      myEditorPanel.remove(myEditorComponent.getExternalComponent());
      myEditorComponent.dispose();
      myEditorComponent = null;
      myCurrentlyEditedNode = null;
    }

    if (myReplace != null) {
      myEditorPanel.remove(myReplace);
      myReplace = null;
    }

    myReplace = replace;
    myEditorPanel.add(myReplace, BorderLayout.CENTER);
    myComponent.validate();
  }

  //---state---

  @Override
  public EditorState saveState() {
    BaseEditorState result = new BaseEditorState();
    EditorContext editorContext = getEditorContext();
    if (editorContext != null) {
      result.myMemento = editorContext.createMemento();
      EditorComponent editorComponent = getCurrentEditorComponent();
      if (editorComponent instanceof NodeEditorComponent) {
        NodeEditorComponent nodeEditorComponent = (NodeEditorComponent) editorComponent;
        EditorComponent inspector = nodeEditorComponent.getInspector();
        if (inspector != null) {
          result.myInspectorMemento = inspector.getEditorContext().createMemento();
        }
      }
    }
    return result;
  }

  @Override
  public void loadState(@NotNull EditorState state) {
    if (!(state instanceof BaseEditorState)) return;

    final BaseEditorState s = (BaseEditorState) state;
    if (s.myMemento == null || myEditorComponent == null) {
      return;
    }
    final EditorContext editorContext = getEditorContext();
    executeInEDT(new PrioritizedTask(TaskType.EDITOR_MEMENTO, myType2TaskMap) {
      @Override
      public void performTask() {
        if (myEditorComponent.isDisposed()) {
          return;
        }
        editorContext.setMemento(s.myMemento);
      }
    });
    if (s.myInspectorMemento == null || !(getCurrentEditorComponent() instanceof NodeEditorComponent)) {
      return;
    }
    final NodeEditorComponent editorComponent = (NodeEditorComponent) getCurrentEditorComponent();
    if (editorComponent.getInspector() == null) {
      LOG.error("No inspector - memento will not be restored");
      return;
    }
    final EditorContext inspectorEditorContext = editorComponent.getInspector().getEditorContext();
    executeInEDT(new PrioritizedTask(TaskType.INSPECTOR_MEMENTO, myType2TaskMap) {
      @Override
      public void performTask() {
        inspectorEditorContext.setMemento(s.myInspectorMemento);
      }
    });
  }

  public abstract static class PrioritizedTask implements Runnable {
    private final TaskType myType;
    private final Map<TaskType, PrioritizedTask> myType2TaskMap;

    public PrioritizedTask(TaskType type, Map<TaskType, PrioritizedTask> type2TaskMap) {
      synchronized (type2TaskMap) {
        myType = type;
        myType2TaskMap = type2TaskMap;
        myType2TaskMap.put(myType, this);
      }
    }

    @Override
    public void run() {
      synchronized (myType2TaskMap) {
        if (myType2TaskMap.get(myType) != this) {
          return;
        }
        myType2TaskMap.remove(myType);
      }
      performTask();
    }

    protected abstract void performTask();
  }

  public enum TaskType {
    EDIT_NODE,
    EDITOR_MEMENTO,
    INSPECTOR_MEMENTO,
    UPDATE_PROPERTIES;
  }

  public static class BaseEditorState implements EditorState {
    private static final String MEMENTO = "memento";
    private static final String INSPECTOR_MEMENTO = "inspectorMemento";

    private Object myMemento;
    private Object myInspectorMemento;

    public void refCopyFrom(BaseEditorState source) {
      this.myMemento = source.myMemento;
      this.myInspectorMemento = source.myInspectorMemento;
    }

    @Override
    public void save(Element e) {
      if (myMemento != null) {
        Element mementoElem = new Element(MEMENTO);
        MementoPersistence.saveMemento(myMemento, mementoElem);
        e.addContent(mementoElem);
      }
      if (myInspectorMemento != null) {
        Element mementoElem = new Element(INSPECTOR_MEMENTO);
        MementoPersistence.saveMemento(myInspectorMemento, mementoElem);
        e.addContent(mementoElem);
      }
    }

    @Override
    public void load(Element e) {
      Element mementoElem = e.getChild(MEMENTO);
      if (mementoElem != null) {
        myMemento = MementoPersistence.loadMemento(mementoElem);
      }
      Element inspectorMementoElem = e.getChild(INSPECTOR_MEMENTO);
      if (inspectorMementoElem != null) {
        myInspectorMemento = MementoPersistence.loadMemento(inspectorMementoElem);
      }
    }

    public int hashCode() {
      return myMemento.hashCode() + myInspectorMemento.hashCode();
    }

    public boolean equals(Object obj) {
      if (!(obj instanceof BaseEditorState)) {
        return false;
      }

      BaseEditorState state = (BaseEditorState) obj;
      return EqualUtil.equals(state.myMemento, myMemento) && EqualUtil.equals(state.myInspectorMemento, myInspectorMemento);
    }
  }
}
