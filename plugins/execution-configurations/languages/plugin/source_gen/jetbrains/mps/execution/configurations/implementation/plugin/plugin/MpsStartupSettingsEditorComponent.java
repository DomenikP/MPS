package jetbrains.mps.execution.configurations.implementation.plugin.plugin;

/*Generated by MPS */

import javax.swing.JPanel;
import jetbrains.mps.execution.lib.ui.RawLineEditorComponent;
import jetbrains.mps.execution.lib.ui.FieldWithPathChooseDialog;
import java.awt.GridBagLayout;
import javax.swing.JLabel;
import jetbrains.mps.ide.common.LayoutUtil;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;

public class MpsStartupSettingsEditorComponent extends JPanel {
  private RawLineEditorComponent myVmOptions = new RawLineEditorComponent();
  private FieldWithPathChooseDialog myJrePath = new FieldWithPathChooseDialog();
  private FieldWithPathChooseDialog mySystemPath = new FieldWithPathChooseDialog();
  private FieldWithPathChooseDialog myConfigurationPath = new FieldWithPathChooseDialog();
  private ProjectChooser myProjectChooser = new ProjectChooser();

  public MpsStartupSettingsEditorComponent() {
    super(new GridBagLayout());

    this.add(new JLabel("MPS system path:"), LayoutUtil.createLabelConstraints(0));
    this.add(mySystemPath, LayoutUtil.createFieldConstraints(1));
    this.add(new JLabel("MPS configuration path:"), LayoutUtil.createLabelConstraints(2));
    this.add(myConfigurationPath, LayoutUtil.createFieldConstraints(3));
    myVmOptions.setDialogCaption("Virtual machine parameters");
    myVmOptions.setText(Mps_Command.getDefaultVirtualMachineParameters());
    this.add(new JLabel("Virtual machine parameters:"), LayoutUtil.createLabelConstraints(4));
    this.add(myVmOptions, LayoutUtil.createFieldConstraints(5));
    this.add(new JLabel("Alternative JRE path:"), LayoutUtil.createLabelConstraints(6));
    this.add(myJrePath, LayoutUtil.createFieldConstraints(7));
    this.add(myProjectChooser, LayoutUtil.createPanelConstraints(8));
  }
  public void applyTo(MpsStartupSettings_Configuration configuration) {
    configuration.setVmOptions(myVmOptions.getText());
    configuration.setJrePath(myJrePath.getText());
    configuration.setSystemPath(configuration.shinkPath(mySystemPath.getText()));
    configuration.setConfigurationPath(configuration.shinkPath(myConfigurationPath.getText()));
    Tuples._2<Boolean, String> value = myProjectChooser.getValue();
    configuration.setOpenCurrentProject((boolean) value._0());
    configuration.setProjectToOpen(configuration.shinkPath(value._1()));
  }
  public void resetFrom(MpsStartupSettings_Configuration configuration) {
    myVmOptions.setText(configuration.getVmOptions());
    myJrePath.setText(configuration.getJrePath());
    mySystemPath.setText(configuration.expandPath(configuration.getSystemPath()));
    myConfigurationPath.setText(configuration.expandPath(configuration.getConfigurationPath()));
    myProjectChooser.reset(configuration.getOpenCurrentProject(), configuration.expandPath(configuration.getProjectToOpen()));
  }
  public void setEditable(boolean editable) {
    myVmOptions.setEditable(editable);
    myJrePath.setEditable(editable);
    mySystemPath.setEditable(editable);
    myConfigurationPath.setEditable(editable);
    myProjectChooser.setEditable(editable);
  }
}
