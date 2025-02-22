package jetbrains.mps.vcs.platform.integration;

/*Generated by MPS */

import com.intellij.openapi.components.ApplicationComponent;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.extapi.module.SRepositoryRegistry;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class PluginVCSManager implements ApplicationComponent {

  private ModelStorageProblemsListener resolver = new ModelStorageProblemsListener();
  public PluginVCSManager() {
  }
  @Override
  public void initComponent() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SRepositoryRegistry.getInstance().addGlobalListener(resolver);
      }
    });
  }
  @Override
  public void disposeComponent() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SRepositoryRegistry.getInstance().removeGlobalListener(resolver);
      }
    });
  }
  @NonNls
  @NotNull
  @Override
  public String getComponentName() {
    return "VCS manager";
  }
}
