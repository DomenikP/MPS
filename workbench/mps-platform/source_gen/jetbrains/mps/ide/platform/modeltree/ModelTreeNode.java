package jetbrains.mps.ide.platform.modeltree;

/*Generated by MPS */

import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.Icon;

public class ModelTreeNode extends DefaultMutableTreeNode {
  private Icon myCollapsedIcon;
  private Icon myExpandedIcon;
  public ModelTreeNode(String label) {
    this(label, null, label);
  }
  public ModelTreeNode(String label, Icon icon, Icon expandedIcon) {
    this(label, icon, label);
    myExpandedIcon = expandedIcon;
  }
  public ModelTreeNode(String label, Icon icon, Object data) {
    super(data);
    setText(label);
    myCollapsedIcon = icon;
    setLeafPosition(false);
    setInitialized(true);
  }
  @Override
  public boolean isLeaf() {
    if (!(isLeafPosition()) && children == null) {
      return false;
    }
    return super.isLeaf();
  }
  @Override
  public String toString() {
    return getText();
  }
  public Icon getIcon(boolean expanded) {
    return (expanded && myExpandedIcon != null ? myExpandedIcon : myCollapsedIcon);
  }
  private String myText;
  public String getText() {
    return this.myText;
  }
  private void setText(String value) {
    this.myText = value;
  }
  private boolean myLeafPosition;
  public boolean isLeafPosition() {
    return this.myLeafPosition;
  }
  public void setLeafPosition(boolean value) {
    this.myLeafPosition = value;
  }
  private boolean myInitialized;
  public boolean isInitialized() {
    return this.myInitialized;
  }
  public void setInitialized(boolean value) {
    this.myInitialized = value;
  }
}
