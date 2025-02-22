package jetbrains.mps.console.internalCommands.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.console.tool.ConsoleContext;
import jetbrains.mps.console.tool.ConsoleStream;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.progress.EmptyProgressMonitor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class ReloadClassesCommand_Behavior {
  public static void init(SNode thisNode) {
  }
  public static void virtual_doExecute_3321948346081469500(SNode thisNode, ConsoleContext context, ConsoleStream console) {
    ClassLoaderManager.getInstance().reloadAll(new EmptyProgressMonitor());
    console.addText("Classes reloaded");
  }
  public static String virtual_getShortHelp_473081947982699339(SAbstractConcept thisConcept) {
    return "reload classes of all modules";
  }
}
