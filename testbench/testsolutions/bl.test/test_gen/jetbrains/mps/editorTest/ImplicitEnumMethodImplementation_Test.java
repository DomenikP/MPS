package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseTestBody;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

@MPSLaunch
public class ImplicitEnumMethodImplementation_Test extends BaseTransformationTest {
  @Test
  public void test_ErrorMessagesCheck8841676161362742012() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_ErrorMessagesCheck8841676161362742012", true);
  }
  @Test
  public void test_ErrorMessagesCheck8841676161362742874() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_ErrorMessagesCheck8841676161362742874", true);
  }
  @Test
  public void test_NodeEnumHasUnimplementedMethodsCheck8841676161362904735() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_NodeEnumHasUnimplementedMethodsCheck8841676161362904735", true);
  }
  @Test
  public void test_ErrorMessagesCheck8841676161362737481() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_ErrorMessagesCheck8841676161362737481", true);
  }
  @Test
  public void test_NodeEnumConstantHasUnimplementedCheck8841676161362737703() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_NodeEnumConstantHasUnimplementedCheck8841676161362737703", true);
  }
  @Test
  public void test_NodeEnumConstantHasUnimplementedCheck8841676161362737723() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_NodeEnumConstantHasUnimplementedCheck8841676161362737723", true);
  }
  @Test
  public void test_ErrorMessagesCheck8841676161362737639() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_ErrorMessagesCheck8841676161362737639", true);
  }
  @Test
  public void test_ErrorMessagesCheck8841676161362738093() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)", false);
    this.runTest("jetbrains.mps.editorTest.ImplicitEnumMethodImplementation_Test$TestBody", "test_ErrorMessagesCheck8841676161362738093", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_ErrorMessagesCheck8841676161362742012() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362742012"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362741755")});
    }
    public void test_ErrorMessagesCheck8841676161362742874() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362742874"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362742601")});
    }
    public void test_NodeEnumHasUnimplementedMethodsCheck8841676161362904735() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362904735"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362736760")});
    }
    public void test_ErrorMessagesCheck8841676161362737481() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362737481"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362736758")});
    }
    public void test_NodeEnumConstantHasUnimplementedCheck8841676161362737703() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362737703"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362737582")});
    }
    public void test_NodeEnumConstantHasUnimplementedCheck8841676161362737723() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362737723"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362737645")});
    }
    public void test_ErrorMessagesCheck8841676161362737639() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362737639"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362737487")});
    }
    public void test_ErrorMessagesCheck8841676161362738093() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("8841676161362738093"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      BehaviorReflection.invokeVirtual(Void.class, operation, "virtual_perform_245688835340859348", new Object[]{this.getRealNodeById("8841676161362738021")});
    }
  }
}
