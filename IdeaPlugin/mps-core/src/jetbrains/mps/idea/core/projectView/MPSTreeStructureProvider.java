/*
 * Copyright 2003-2013 JetBrains s.r.o.
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

package jetbrains.mps.idea.core.projectView;

import com.intellij.ide.projectView.SelectableTreeStructureProvider;
import com.intellij.ide.projectView.ViewSettings;
import com.intellij.ide.projectView.impl.nodes.PsiDirectoryNode;
import com.intellij.ide.projectView.impl.nodes.PsiFileNode;
import com.intellij.ide.util.treeView.AbstractTreeNode;
import com.intellij.openapi.actionSystem.LangDataKeys;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleUtilCore;
import com.intellij.openapi.options.ex.SingleConfigurableEditor;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Ref;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import jetbrains.mps.extapi.persistence.FolderDataSource;
import jetbrains.mps.fileTypes.MPSFileTypeFactory;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.ui.dialogs.properties.MPSPropertiesConfigurable;
import jetbrains.mps.ide.ui.dialogs.properties.ModelPropertiesConfigurable;
import jetbrains.mps.ide.vfs.VirtualFileUtils;
import jetbrains.mps.idea.core.MPSBundle;
import jetbrains.mps.idea.core.MPSDataKeys;
import jetbrains.mps.idea.core.projectView.edit.SNodeCutCopyProvider;
import jetbrains.mps.idea.core.projectView.edit.SNodeDeleteProvider;
import jetbrains.mps.idea.core.projectView.edit.SNodePasteProvider;
import jetbrains.mps.idea.core.psi.impl.MPSPsiModel;
import jetbrains.mps.idea.core.psi.impl.MPSPsiNodeBase;
import jetbrains.mps.idea.core.psi.impl.MPSPsiProvider;
import jetbrains.mps.idea.core.psi.impl.MPSPsiRootNode;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelFileTracker;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.persistence.DataSource;

import javax.swing.SwingUtilities;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * User: fyodor
 * Date: 2/27/13
 */
public class MPSTreeStructureProvider implements SelectableTreeStructureProvider, DumbAware {

  @Nullable
  @Override
  public PsiElement getTopLevelElement(PsiElement element) {
    return null;
  }

  @Override
  public Collection<AbstractTreeNode> modify(final AbstractTreeNode treeNode, final Collection<AbstractTreeNode> children, final ViewSettings settings) {
    final Ref<Collection<AbstractTreeNode>> result = new Ref<Collection<AbstractTreeNode>>(children);

    // we're actually in EDT here, but we work with SModels, and various routines assert that we can read, thus read action
    ProjectHelper.getProjectRepository(treeNode.getProject()).getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        List<AbstractTreeNode> updatedChildren = null;
        final MPSPsiProvider mpsPsiProvider = MPSPsiProvider.getInstance(treeNode.getProject());

        // if current dir is data source from some model
        FolderDataSource currentDirectoryDataSource = null;

        if (treeNode instanceof PsiDirectoryNode) {
          // let's see if we have a model built from this dir, e.g. in per-root persistence
          SModel sModel = SModelFileTracker.getInstance().findModel(VirtualFileUtils.toIFile(((PsiDirectoryNode) treeNode).getVirtualFile()));
          if (sModel != null) {
            // adding root nodes (removing their corresponding files' nodes from the tree is further below)
            List<MPSPsiElementTreeNode> rootsTreeNodes = new ArrayList<MPSPsiElementTreeNode>();
            for (SNode root : sModel.getRootNodes()) {
              rootsTreeNodes.add(new MPSPsiElementTreeNode(treeNode.getProject(), (MPSPsiRootNode) mpsPsiProvider.getPsi(root).getContainingFile(), settings));
            }
            if (!rootsTreeNodes.isEmpty() && updatedChildren == null) {
              updatedChildren = new ArrayList<AbstractTreeNode>(children);
              updatedChildren.addAll(rootsTreeNodes);
            }

            DataSource dataSource = sModel.getSource();
            if (dataSource instanceof FolderDataSource) {
              // could be assert as currently SModelFileTracker only tracks FileDataSource and FolderDataSource
              currentDirectoryDataSource = (FolderDataSource) dataSource;
            }
          }
        } else if (treeNode instanceof MPSPsiModelTreeNode) {
          MPSPsiModel psiModel = ((MPSPsiModelTreeNode) treeNode).extractPsiFromValue();
          updatedChildren = new ArrayList<AbstractTreeNode>();
          for (PsiElement psiElement : psiModel.getChildren()) {
            updatedChildren.add(new MPSPsiElementTreeNode(treeNode.getProject(), (MPSPsiRootNode) psiElement, settings));
          }
        }

        for (final AbstractTreeNode child : children) {
          if (child instanceof PsiFileNode) {
            VirtualFile vFile = ((PsiFileNode) child).getVirtualFile();
            if (vFile == null) {
              continue;
            }

            // check if it's a single file model
            final SModel sModel = SModelFileTracker.getInstance().findModel(VirtualFileUtils.toIFile(vFile));
            if (sModel != null) {
              if (updatedChildren == null) updatedChildren = new ArrayList<AbstractTreeNode>(children);
              int idx = updatedChildren.indexOf(child);
              updatedChildren.remove(idx);
              updatedChildren.add(idx, new MPSPsiModelTreeNode(treeNode.getProject(), mpsPsiProvider.getPsi(sModel), settings));
              continue;
            }

            if (currentDirectoryDataSource != null && currentDirectoryDataSource.isIncluded(VirtualFileUtils.toIFile(vFile))) {
              // it's a file that constitutes a FolderDataSource-backed model, remove it from the tree (root nodes are shown instead)
              if (updatedChildren == null) updatedChildren = new ArrayList<AbstractTreeNode>(children);
              int idx = updatedChildren.indexOf(child);
              updatedChildren.remove(idx);
            }

          } else if (child instanceof PsiDirectoryNode) {
            // below code only attaches our action to the directory and makes it show added children - our root nodes

            final SModel perRootModel = SModelFileTracker.getInstance().findModel(VirtualFileUtils.toIFile(((PsiDirectoryNode) child).getVirtualFile()));
            if (perRootModel != null) {
              if (updatedChildren == null) updatedChildren = new ArrayList<AbstractTreeNode>(children);

              int idx = updatedChildren.indexOf(child);
              updatedChildren.remove(idx);
              updatedChildren.add(idx, new PsiDirectoryNode(treeNode.getProject(), ((PsiDirectoryNode) child).getValue(), settings) {
                @Override
                public boolean canNavigate() {
                  return true;
                }

                @Override
                public String getNavigateActionText(boolean focusEditor) {
                  return MPSBundle.message("open.model.properties.action");
                }

                @Override
                public void navigate(boolean requestFocus) {
                  MPSPropertiesConfigurable configurable = new ModelPropertiesConfigurable(perRootModel, ProjectHelper.toMPSProject(myProject), true);
                  final SingleConfigurableEditor dialog = new SingleConfigurableEditor(myProject, configurable);
                  configurable.setParentForCallBack(dialog);
                  SwingUtilities.invokeLater(new Runnable() {
                    @Override
                    public void run() {
                      dialog.show();
                    }
                  });
                }
              });
            }
          }
        }

        if (updatedChildren != null) {
          result.set(updatedChildren);
        }
      }
    });

    return result.get();
  }


  @Nullable
  @Override
  public Object getData(Collection<AbstractTreeNode> selected, String dataName) {
    if (selected == null) {
      return null;
    }

    if (PlatformDataKeys.COPY_PROVIDER.is(dataName) || PlatformDataKeys.CUT_PROVIDER.is(dataName)) {
      return getProvider(selected, CUT_COPY_PROVIDER_FACTORY);
    }
    if (PlatformDataKeys.DELETE_ELEMENT_PROVIDER.is(dataName)) {
      return getProvider(selected, DELETE_PROVIDER_FACTORY);
    }
    if (MPSDataKeys.MODEL_FILES.is(dataName)) {
      return getModelFiles(selected);
    }

    if (selected.size() != 1) {
      return null;
    }

    // Applicable only to single element selection
    AbstractTreeNode selectedNode = selected.iterator().next();

    if (PlatformDataKeys.VIRTUAL_FILE_ARRAY.is(dataName)) {
      return getModelFilesArray(selectedNode);
    }
    if (PlatformDataKeys.PASTE_PROVIDER.is(dataName)) {
      return getModelProvider(selectedNode, PASTE_PROVIDER_FACTORY);
    }
    if (MPSCommonDataKeys.CONTEXT_MODEL.is(dataName)) {
      return getModel(selectedNode);
    }
    if (MPSCommonDataKeys.MODEL.is(dataName)) {
      return getModel(selectedNode);
    }
    if (MPSCommonDataKeys.MODULE.is(dataName)) {
      return getModule(selectedNode);
    }
    if (LangDataKeys.MODULE.is(dataName)) {
      return getIdeaModule(selectedNode);
    }
    return null;
  }

  private <T> T getProvider(Collection<AbstractTreeNode> selected, ProviderFactory<T> createProvider) {
    if (selected.size() == 0) return null;

    List<SNodeReference> selectedNodePointers = new ArrayList<SNodeReference>();
    Project project = null;
    EditableSModel modelDescriptor = null;

    for (AbstractTreeNode treeNode : selected) {
      if (!(treeNode instanceof MPSPsiElementTreeNode)) return null; // only root nodes please

      MPSPsiRootNode mpsPsiNode = ((MPSPsiElementTreeNode) treeNode).getValue();
      if (!mpsPsiNode.isValid()) return null;

      selectedNodePointers.add(mpsPsiNode.getSNodeReference());

      if (project == null) {
        project = treeNode.getProject();
      } else if (project != treeNode.getProject()) {
        return null; // only same project
      }

      if (modelDescriptor == null) {
        modelDescriptor = getModel(mpsPsiNode);
      } else if (modelDescriptor != getModel(mpsPsiNode)) {
        return null; // only same model
      }

    }
    jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(project);
    if (mpsProject == null || modelDescriptor == null) return null;

    SModel sModel = modelDescriptor;
    if (sModel == null) return null;

    return createProvider.create(selectedNodePointers, modelDescriptor, sModel, mpsProject);
  }

  private <T> T getModelProvider(AbstractTreeNode treeNode, ModelProviderFactory<T> createProvider) {
    if (!(treeNode instanceof MPSPsiModelTreeNode)) return null; // only model

    MPSPsiModel psiModel = ((MPSPsiModelTreeNode) treeNode).getModel();
    if (psiModel == null || !psiModel.isValid()) return null;

    Project project = treeNode.getProject();
    EditableSModel modelDescriptor = getModel(treeNode);

    jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(project);
    if (mpsProject == null || modelDescriptor == null) return null;

    SModel sModel = modelDescriptor;
    if (sModel == null) return null;

    return createProvider.create(modelDescriptor, sModel, mpsProject);
  }

  private Set<IFile> getModelFiles(Collection<AbstractTreeNode> selected) {
    Set<IFile> modelFiles = new HashSet<IFile>();
    for (AbstractTreeNode nextTreeNode : selected) {
      IFile nextModelFile = getModelFile(nextTreeNode);
      if (nextModelFile != null) {
        modelFiles.add(nextModelFile);
      }
    }
    return modelFiles;
  }

  private IFile getModelFile(AbstractTreeNode treeNode) {
    if (treeNode instanceof MPSPsiModelTreeNode) {
      MPSPsiModelTreeNode fileNode = (MPSPsiModelTreeNode) treeNode;
      VirtualFile virtualFile = fileNode.getVirtualFile();
      if (virtualFile == null || virtualFile.getFileType() != MPSFileTypeFactory.MPS_FILE_TYPE && virtualFile.getFileType() != MPSFileTypeFactory.MPS_HEADER_FILE_TYPE) {
        return null;
      }
      return FileSystem.getInstance().getFileByPath(virtualFile.getPath());

    } else if (treeNode instanceof PsiDirectoryNode) {
      VirtualFile virtualFile = ((PsiDirectoryNode) treeNode).getVirtualFile();
      if (virtualFile == null) {
        return null;
      }
      IFile ifile = FileSystem.getInstance().getFileByPath(virtualFile.getPath());
      SModel model = SModelFileTracker.getInstance().findModel(ifile);
      if (model != null) return ifile;

    }
    return null;
  }

  private VirtualFile[] getModelFilesArray(AbstractTreeNode treeNode) {
    VirtualFile virtualFile = getVirtualFile(treeNode);
    if (virtualFile == null) return null;

    return new VirtualFile[]{virtualFile};
  }

  private VirtualFile getVirtualFile(AbstractTreeNode treeNode) {
    if (!(treeNode instanceof MPSPsiModelTreeNode)) {
      return null;
    }
    MPSPsiModelTreeNode modelTreeNode = (MPSPsiModelTreeNode) treeNode;
    VirtualFile modelVFile = modelTreeNode.getVirtualFile();
    if (modelVFile == null || (modelVFile.getFileType() != MPSFileTypeFactory.MPS_FILE_TYPE && modelVFile.getFileType() != MPSFileTypeFactory.MPS_HEADER_FILE_TYPE))
      return null;
    return modelVFile;
  }

  private Module getIdeaModule(AbstractTreeNode treeNode) {
    VirtualFile modelVFile = getVirtualFile(treeNode);
    if (modelVFile == null) return null;
    return ModuleUtilCore.findModuleForFile(modelVFile, treeNode.getProject());
  }

  private SModule getModule(AbstractTreeNode selectedNode) {
    EditableSModel contextModel = getContextModel(selectedNode);
    return contextModel != null ? contextModel.getModule() : null;
  }

  private EditableSModel getModel(AbstractTreeNode selectedNode) {
    return selectedNode instanceof MPSPsiModelTreeNode ? getContextModel(selectedNode) : null;
  }

  private EditableSModel getContextModel(AbstractTreeNode selectedNode) {
    if (selectedNode instanceof MPSPsiElementTreeNode) {
      MPSPsiNodeBase value = ((MPSPsiElementTreeNode) selectedNode).getValue();
      return getModel(value);
    } else if (selectedNode instanceof MPSPsiModelTreeNode) {
      MPSPsiModel psiModel = ((MPSPsiModelTreeNode) selectedNode).getModel();
      SModel sModel = psiModel.getSModelReference().resolve(MPSModuleRepository.getInstance());
      return (EditableSModel) sModel;
    }
    return null;
  }

  private EditableSModel getModel(MPSPsiNodeBase mpsPsiNode) {
    MPSPsiModel containingModel = mpsPsiNode.getContainingModel();
    SModel sModel = containingModel.getSModelReference().resolve(MPSModuleRepository.getInstance());
    return (EditableSModel) sModel;
  }

  private static interface ProviderFactory<T> {
    T create(Collection<SNodeReference> selectedNodes, @NotNull EditableSModel modelDescriptor, SModel sModel, @NotNull jetbrains.mps.project.Project project);
  }

  private static interface ModelProviderFactory<T> {
    T create(@NotNull EditableSModel modelDescriptor, SModel sModel, @NotNull jetbrains.mps.project.Project project);
  }

  private static ProviderFactory<SNodeCutCopyProvider> CUT_COPY_PROVIDER_FACTORY = new ProviderFactory<SNodeCutCopyProvider>() {
    @Override
    public SNodeCutCopyProvider create(Collection<SNodeReference> selectedNodes, @NotNull EditableSModel modelDescriptor, SModel sModel, @NotNull jetbrains.mps.project.Project project) {
      return new SNodeCutCopyProvider(selectedNodes, modelDescriptor, project);
    }
  };

  private static ProviderFactory<SNodeDeleteProvider> DELETE_PROVIDER_FACTORY = new ProviderFactory<SNodeDeleteProvider>() {
    @Override
    public SNodeDeleteProvider create(Collection<SNodeReference> selectedNodes, @NotNull EditableSModel modelDescriptor, SModel sModel, @NotNull jetbrains.mps.project.Project project) {
      return new SNodeDeleteProvider(selectedNodes, project);
    }
  };

  private static ModelProviderFactory<SNodePasteProvider> PASTE_PROVIDER_FACTORY = new ModelProviderFactory<SNodePasteProvider>() {
    @Override
    public SNodePasteProvider create(@NotNull EditableSModel modelDescriptor, SModel sModel, @NotNull jetbrains.mps.project.Project project) {
      return new SNodePasteProvider(sModel, project, modelDescriptor);
    }
  };

}
