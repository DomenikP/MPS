package jetbrains.mps.console.base.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.console.tool.ConsoleContext;
import jetbrains.mps.console.tool.ConsoleStream;

public abstract class InterpretedCommand_BehaviorDescriptor extends Command_BehaviorDescriptor {
  public InterpretedCommand_BehaviorDescriptor() {
  }
  public void virtual_execute_6854397602732226506(SNode thisNode, ConsoleContext context, ConsoleStream console, Runnable beforeCallback, Runnable afterCallback) {
    InterpretedCommand_Behavior.virtual_execute_6854397602732226506(thisNode, context, console, beforeCallback, afterCallback);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.console.base.structure.InterpretedCommand";
  }
  public abstract void virtual_doExecute_3321948346081469500(SNode thisNode, ConsoleContext context, ConsoleStream console);
}
