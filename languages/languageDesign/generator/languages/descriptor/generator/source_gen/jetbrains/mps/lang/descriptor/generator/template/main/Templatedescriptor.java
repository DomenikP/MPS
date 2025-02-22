package jetbrains.mps.lang.descriptor.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateDeclarationBase;
import jetbrains.mps.generator.runtime.TemplateDeclaration;
import org.jetbrains.mps.openapi.model.SNodeReference;
import java.util.Collection;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.template.TemplateQueryContextWithMacro;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.SNodePointer;

@Generated
public class Templatedescriptor extends TemplateDeclarationBase implements TemplateDeclaration {
  public Templatedescriptor() {
  }
  public SNodeReference getTemplateNode() {
    return template_e20rlw_a0a1;
  }
  public Collection<SNode> apply(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf4ad079dbc714ffbL, 0x96009328705cf998L, 0x7d2f7947ef1533a5L, "jetbrains.mps.lang.descriptor.structure.LanguageDescriptor"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:1dfaf07d-c77a-451e-91d3-b6f80f0f8508/1698302279987411125");
      {
        SNode tnode2 = null;
        final SNode insertInput2 = QueriesGenerated.insertMacro_Query_1509962061695074412(new TemplateQueryContextWithMacro(context, insertMacro_e20rlw_b0a0a1a1a1a2));
        tnode2 = environment.insertNode(insertInput2, insertMacro_e20rlw_b0a0a1a1a1a2, context);
        if (tnode2 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf4ad079dbc714ffbL, 0x96009328705cf998L, 0x7d2f7947ef1533a5L, 0x179194ecf7e0953bL, "language"), tnode2);
        }
        // TODO validate child 
      }
    } finally {
    }
    return TemplateUtil.singletonList(tnode1);
  }
  private static SNodePointer template_e20rlw_a0a1 = new SNodePointer("r:1dfaf07d-c77a-451e-91d3-b6f80f0f8508(jetbrains.mps.lang.descriptor.generator.template.main@generator)", "1698302279987411125");
  private static SNodePointer insertMacro_e20rlw_b0a0a1a1a1a2 = new SNodePointer("r:1dfaf07d-c77a-451e-91d3-b6f80f0f8508(jetbrains.mps.lang.descriptor.generator.template.main@generator)", "1509962061695074411");
}
