package jetbrains.mps.debugger.java.runtime.state;

/*Generated by MPS */

import com.sun.jdi.ObjectReference;
import jetbrains.mps.debugger.java.api.state.proxy.JavaStackFrame;
import jetbrains.mps.debug.api.AbstractUiState;
import jetbrains.mps.debugger.java.runtime.engine.events.Context;

/**
 * No context (i.e. not paused)
 */
public class RunningJavaUiState extends JavaUiStateImpl {
  public RunningJavaUiState(DebugSession session) {
    super(session);
  }
  /*package*/ RunningJavaUiState(DebugSession debugSession, int currentThreadIndex) {
    super(debugSession, currentThreadIndex);
  }
  @Override
  public ObjectReference getThisObject() {
    return null;
  }
  @Override
  public JavaStackFrame getStackFrame() {
    return null;
  }
  @Override
  public boolean isPausedOnBreakpoint() {
    return false;
  }
  @Override
  protected AbstractUiState selectFrameInternal(int frame) {
    return this;
  }
  @Override
  protected int findStackFrameIndex() {
    return NO_FRAME;
  }
  @Override
  public Context getContext() {
    return null;
  }
}
