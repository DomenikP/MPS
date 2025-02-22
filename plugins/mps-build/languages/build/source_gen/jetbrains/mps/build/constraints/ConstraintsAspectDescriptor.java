package jetbrains.mps.build.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;

public class ConstraintsAspectDescriptor implements jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor {
  public ConstraintsAspectDescriptor() {
  }
  public ConstraintsDescriptor getDescriptor(SConceptId conceptId) {
    long id = conceptId.getIdValue();
    if (id == 0x668c6cfbafae121dL) {
      return new BuildSourceMacroRelativePath_Constraints();
    }
    if (id == 0x4df58c6f18f84a14L) {
      return new BuildLayout_Constraints();
    }
    if (id == 0x31292e1a60dd541dL) {
      return new BuildAspect_Constraints();
    }
    if (id == 0x668c6cfbafacdc38L) {
      return new BuildSource_JavaModule_Constraints();
    }
    if (id == 0x540febaa6144b873L) {
      return new BuildSource_JavaLibrary_Constraints();
    }
    if (id == 0x440d7ea3b68b7d03L) {
      return new BuildTextStringPart_Constraints();
    }
    if (id == 0x48d5d03db92974fcL) {
      return new BuildSource_JavaSources_Constraints();
    }
    if (id == 0x440d7ea3b68b7d01L) {
      return new BuildVarRefStringPart_Constraints();
    }
    if (id == 0x668c6cfbafac7f8cL) {
      return new BuildLayout_NamedContainer_Constraints();
    }
    if (id == 0x3449288aa0d560e2L) {
      return new BuildVariableMacro_Constraints();
    }
    if (id == 0x440d7ea3b68b7cffL) {
      return new BuildStringPart_Constraints();
    }
    if (id == 0x668c6cfbafacdc3eL) {
      return new BuildSourcePath_Constraints();
    }
    if (id == 0x11779a1dbd021959L) {
      return new BuildSource_JavaClassFolder_Constraints();
    }
    if (id == 0xbabdfbeee1350f2L) {
      return new BuildLayout_Import_Constraints();
    }
    if (id == 0x23f6fd361bdcfd24L) {
      return new BuildLayout_CompileOutputOf_Constraints();
    }
    if (id == 0x63a87b9320d0bfc9L) {
      return new BuildExternalLayout_Constraints();
    }
    if (id == 0x63a87b9320d31b36L) {
      return new BuildLayout_FileStub_Constraints();
    }
    if (id == 0x63a87b9320d3d0a4L) {
      return new BuildExternalLayoutDependency_Constraints();
    }
    if (id == 0x4ddcec86af9fdb53L) {
      return new BuildLayout_ImportContent_Constraints();
    }
    if (id == 0x4ddcec86afb2f64cL) {
      return new BuildSource_JavaExternalJarRef_Constraints();
    }
    if (id == 0x4ddcec86afb65a3fL) {
      return new BuildSource_JavaExternalJarFolderRef_Constraints();
    }
    if (id == 0xcdff0e1a96739c2L) {
      return new BuildSource_JavaOptions_Constraints();
    }
    if (id == 0x1708d207f2178b52L) {
      return new BuildSource_JavaModuleOptions_Constraints();
    }
    if (id == 0x454b730dd9079dceL) {
      return new BuildSource_JavaDependencyLibrary_Constraints();
    }
    if (id == 0x6c4335df4e838e40L) {
      return new BuildLayout_Filemode_Constraints();
    }
    if (id == 0x6b9a2011083f9404L) {
      return new BuildLayout_FilesOf_Constraints();
    }
    if (id == 0x365f30e12d2c3e4L) {
      return new BuildVariableMacroInitWithDate_Constraints();
    }
    if (id == 0x263c91972cd1e1aaL) {
      return new BuildVariableMacroInitValue_Constraints();
    }
    if (id == 0x454b730dd908c220L) {
      return new BuildProjectDependency_Constraints();
    }
    if (id == 0x7ea63ceef6e8c0edL) {
      return new BuildLayout_File_Constraints();
    }
    if (id == 0x115d3b22faf47d7bL) {
      return new BuildLayout_JarManifest_Section_Constraints();
    }
    if (id == 0x115d3b22faf20f2eL) {
      return new BuildLayout_JarManifest_Constraints();
    }
    return new BaseConstraintsDescriptor(conceptId);
  }
}
