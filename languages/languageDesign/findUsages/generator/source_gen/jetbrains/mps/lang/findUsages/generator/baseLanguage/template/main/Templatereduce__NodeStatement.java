package jetbrains.mps.lang.findUsages.generator.baseLanguage.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateDeclarationBase;
import jetbrains.mps.generator.runtime.TemplateDeclarationWeavingAware;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.Collection;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class Templatereduce__NodeStatement extends TemplateDeclarationBase implements TemplateDeclarationWeavingAware {
  public Templatereduce__NodeStatement() {
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c8959035c(jetbrains.mps.lang.findUsages.generator.baseLanguage.template.main@generator)", "1200266997193");
  }
  protected SNode applyPart0(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:00000000-0000-4000-0000-011c8959035c/1206533809810");
      {
        final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"));
        try {
          environment.nodeCopied(context, tnode2, "tpl/r:00000000-0000-4000-0000-011c8959035c/1206533809811");
          {
            final SNode tnode3 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference"));
            try {
              environment.nodeCopied(context, tnode3, "tpl/r:00000000-0000-4000-0000-011c8959035c/3021153905151599942");
              environment.resolveInTemplateLater(tnode3, "variableDeclaration", templateNode_rm6jd2_c0a1a1a1a1a1a1a2, "tpl/r:00000000-0000-4000-0000-011c8959035c/1206533796715", "_results", context);
            } finally {
            }
            if (tnode3 != null) {
              tnode2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), tnode3);
            }
            // TODO validate child 
          }
          {
            final SNode tnode4 = environment.createOutputNode(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10e39e3ff80L, "jetbrains.mps.baseLanguage.collections.structure.AddElementOperation"));
            try {
              environment.nodeCopied(context, tnode4, "tpl/r:00000000-0000-4000-0000-011c8959035c/1206533809813");
              {
                Collection<SNode> tlist5 = null;
                final SNode copySrcInput5 = QueriesGenerated.sourceNodeQuery_1206533809816(new SourceSubstituteMacroNodeContext(context, copySrcMacro_rm6jd2_b0a0c0b0b0c0b0b0b0c));
                tlist5 = environment.copyNodes(TemplateUtil.singletonList(copySrcInput5), copySrcMacro_rm6jd2_b0a0c0b0b0c0b0b0b0c, "tpl/r:00000000-0000-4000-0000-011c8959035c/1206533809814", context);
                for (SNode child6 : TemplateUtil.asNotNull(tlist5)) {
                  tnode4.addChild(MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x7818f71827244b5L, 0x7818f71827244b6L, "argument"), child6);
                }
                // TODO validate child 
              }
            } finally {
            }
            if (tnode4 != null) {
              tnode2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), tnode4);
            }
            // TODO validate child 
          }
        } finally {
        }
        if (tnode2 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode2);
        }
        // TODO validate child 
      }
    } finally {
    }
    return tnode1;
  }
  public Collection<SNode> apply(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context) throws GenerationException {
    return TemplateUtil.singletonList(applyPart0(environment, context));
  }
  public Collection<SNode> weave(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context, @NotNull SNode outputContextNode) throws GenerationException {
    SNode tnodepart0 = applyPart0(environment, context);
    SNodeReference weaveTf0 = new SNodePointer("r:00000000-0000-4000-0000-011c8959035c(jetbrains.mps.lang.findUsages.generator.baseLanguage.template.main@generator)", "1206533809822");
    NodeWeaveFacility weaveSupport0 = environment.weaveNode(context, weaveTf0);
    weaveSupport0.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnodepart0);
    return TemplateUtil.singletonList(tnodepart0);
  }
  private static SNodePointer templateNode_rm6jd2_c0a1a1a1a1a1a1a2 = new SNodePointer("r:00000000-0000-4000-0000-011c8959035c(jetbrains.mps.lang.findUsages.generator.baseLanguage.template.main@generator)", "3021153905151599942");
  private static SNodePointer copySrcMacro_rm6jd2_b0a0c0b0b0c0b0b0b0c = new SNodePointer("r:00000000-0000-4000-0000-011c8959035c(jetbrains.mps.lang.findUsages.generator.baseLanguage.template.main@generator)", "1206533809815");
}
