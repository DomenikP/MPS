package jetbrains.mps.workbench.dialogs.project.properties.project;

/*Generated by MPS */

import com.intellij.ui.components.JBPanel;
import org.jetbrains.mps.openapi.ui.Modifiable;
import jetbrains.mps.project.StandaloneMPSProject;
import com.intellij.openapi.project.Project;
import jetbrains.mps.project.MPSProject;
import com.intellij.openapi.extensions.Extensions;
import com.intellij.uiDesigner.core.GridConstraints;
import javax.swing.JComponent;
import com.intellij.ui.components.JBList;
import jetbrains.mps.workbench.dialogs.project.components.parts.renderers.PathRenderer;
import javax.swing.ListSelectionModel;
import com.intellij.ui.ToolbarDecorator;
import com.intellij.ui.AnActionButtonRunnable;
import com.intellij.ui.AnActionButton;
import jetbrains.mps.project.structure.project.Path;
import jetbrains.mps.workbench.dialogs.project.components.parts.creators.ModulePathChooser;
import java.awt.Dimension;
import javax.swing.JPanel;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.uiDesigner.core.GridLayoutManager;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import javax.swing.AbstractListModel;
import java.util.List;

public class ProjectPropertiesComponent extends JBPanel implements Modifiable {
  private final StandaloneMPSProject myProject;
  private final ProjectProperties myProperties = new ProjectProperties();
  private final ProjectPrefsExtraPanel[] myExtraPanels;

  public ProjectPropertiesComponent(Project project, ProjectPrefsExtraPanel[] extraPanels) {
    super(true);
    myProject = (StandaloneMPSProject) project.getComponent(MPSProject.class);
    myExtraPanels = (extraPanels != null ? extraPanels : new ProjectPrefsExtraPanel[0]);
    myProperties.loadFrom(myProject);
    init();
  }
  public ProjectPropertiesComponent(Project project) {
    this(project, Extensions.getExtensions(ProjectPrefsExtraPanel.EP_NAME, project));
  }

  private Object getGridConstraints(int row, boolean fill) {
    if (fill) {
      return new GridConstraints(row, 0, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_BOTH, GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_CAN_SHRINK, GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_CAN_SHRINK, null, null, null);
    }
    return new GridConstraints(row, 0, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_CAN_SHRINK, GridConstraints.SIZEPOLICY_FIXED, null, null, null);
  }
  private JComponent createProjectModulesList() {
    final JBList list = new JBList(new ProjectPropertiesComponent.PathsListModel());

    list.setCellRenderer(new PathRenderer());
    list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

    ToolbarDecorator decorator = ToolbarDecorator.createDecorator(list);
    decorator.setAddAction(new AnActionButtonRunnable() {
      @Override
      public void run(AnActionButton button) {
        Path path = new ModulePathChooser().compute();
        if (path != null) {
          for (Path p : ((ProjectPropertiesComponent.PathsListModel) list.getModel()).getPaths()) {
            if (p.isSamePath(path)) {
              list.setSelectedValue(p, true);
              return;
            }
          }
          ((ProjectPropertiesComponent.PathsListModel) list.getModel()).addPath(path);
        }
      }
    }).setRemoveAction(new AnActionButtonRunnable() {
      @Override
      public void run(AnActionButton button) {
        ((ProjectPropertiesComponent.PathsListModel) list.getModel()).removePath(list.getSelectedValue());
      }
    }).disableUpAction().disableDownAction();
    decorator.setPreferredSize(new Dimension(500, 150));

    JPanel panel = decorator.createPanel();
    panel.setBorder(IdeBorderFactory.createTitledBorder("Modules", false));
    return panel;
  }

  @Override
  public void init() {
    int rowCount = 2 + ((myExtraPanels == null ? 0 : myExtraPanels.length));
    int rowIndex = 0;
    this.setLayout(new GridLayoutManager(rowCount, 1));
    this.setAutoscrolls(false);
    this.add(createProjectModulesList(), getGridConstraints(rowIndex++, true));
    for (ProjectPrefsExtraPanel extraPanel : myExtraPanels) {
      this.add(extraPanel.getComponent(), getGridConstraints(rowIndex++, false));
    }
  }
  @Override
  public boolean isModified() {
    return !(myProperties.isSame(myProject.getProjectDescriptor())) || Sequence.fromIterable(Sequence.fromArray(myExtraPanels)).any(new IWhereFilter<ProjectPrefsExtraPanel>() {
      public boolean accept(ProjectPrefsExtraPanel ep) {
        return ep.isModified();
      }
    });
  }
  @Override
  public void apply() {
    myProject.getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        myProperties.saveTo(myProject);
      }
    });
    for (ProjectPrefsExtraPanel ep : myExtraPanels) {
      ep.apply();
    }
  }
  public void reset() {
    myProperties.loadFrom(myProject);
    for (ProjectPrefsExtraPanel ep : myExtraPanels) {
      ep.reset();
    }
  }

  private class PathsListModel extends AbstractListModel {
    public PathsListModel() {
    }

    @Override
    public int getSize() {
      return myProperties.getModules().size();
    }
    @Override
    public Object getElementAt(int i) {
      return myProperties.getModules().get(i);
    }
    public List<Path> getPaths() {
      return myProperties.getModules();
    }
    public void addPath(Path path) {
      int i = myProperties.add(path);
      fireIntervalAdded(this, i, i);
    }
    public void removePath(Object path) {
      int i = myProperties.remove((Path) path);
      fireIntervalRemoved(this, i, i);
    }
  }
}
