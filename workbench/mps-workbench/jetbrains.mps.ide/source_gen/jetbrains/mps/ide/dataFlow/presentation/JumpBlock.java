package jetbrains.mps.ide.dataFlow.presentation;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNodeReference;
import java.awt.Graphics;
import java.awt.Color;

public class JumpBlock extends AbstractBlock {
  public JumpBlock(int x, int y, int width, int height, SNodeReference source, String caption, String ruleNodeReference) {
    super(x, y, width, height, source, caption, ruleNodeReference);
  }
  @Override
  protected void paintBlock(Graphics g) {
    g.setColor(Color.YELLOW);
    g.fillOval(this.myX, this.myY, this.myWidth, this.myHeight);
    g.setColor(Color.BLACK);
    g.drawOval(this.myX, this.myY, this.myWidth, this.myHeight);
  }
}
