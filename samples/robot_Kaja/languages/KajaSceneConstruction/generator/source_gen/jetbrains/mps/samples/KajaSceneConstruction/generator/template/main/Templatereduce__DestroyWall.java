package jetbrains.mps.samples.KajaSceneConstruction.generator.template.main;

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
import jetbrains.mps.smodel.SReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.template.PropertyMacroContext;
import java.util.Collection;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class Templatereduce__DestroyWall extends TemplateDeclarationBase implements TemplateDeclarationWeavingAware {
  public Templatereduce__DestroyWall() {
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:262b93f0-fe86-497c-93c5-efd684d05bc6(jetbrains.mps.samples.KajaSceneConstruction.generator.template.main@generator)", "3210697320273607275");
  }
  protected SNode applyPart0(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273608203");
      {
        final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"));
        try {
          environment.nodeCopied(context, tnode2, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273608204");
          {
            final SNode tnode3 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, "jetbrains.mps.baseLanguage.structure.IfStatement"));
            try {
              environment.nodeCopied(context, tnode3, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648370");
              {
                final SNode tnode4 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"));
                try {
                  environment.nodeCopied(context, tnode4, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648371");
                  {
                    final SNode tnode5 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
                    try {
                      environment.nodeCopied(context, tnode5, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273608230");
                      {
                        final SNode tnode6 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall"));
                        try {
                          environment.nodeCopied(context, tnode6, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/4923130412073220681");
                          tnode6.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), tnode6, PersistenceFacade.getInstance().createModelReference("r:f5e9b11f-5073-4786-8ed1-a9e42307c3f8(JavaKaja.runtime)"), PersistenceFacade.getInstance().createNodeId("3210697320273550783")));
                          {
                            final SNode tnode7 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, "jetbrains.mps.baseLanguage.structure.IntegerConstant"));
                            try {
                              environment.nodeCopied(context, tnode7, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273608232");
                              SNodeAccessUtil.setProperty(tnode7, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, 0xf8cc59b315L, "value"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_3210697320273608239(new PropertyMacroContext(context, "0", propertyMacro_bs9h6a_c0a0c0b0b0c0b0b0b0b0b0b0b0b0b0b0b0c))));
                            } finally {
                            }
                            if (tnode7 != null) {
                              tnode6.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), tnode7);
                            }
                            // TODO validate child 
                          }
                          {
                            final SNode tnode8 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, "jetbrains.mps.baseLanguage.structure.IntegerConstant"));
                            try {
                              environment.nodeCopied(context, tnode8, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273608234");
                              SNodeAccessUtil.setProperty(tnode8, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, 0xf8cc59b315L, "value"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_3210697320273608248(new PropertyMacroContext(context, "0", propertyMacro_bs9h6a_c0a0c0b0b0d0b0b0b0b0b0b0b0b0b0b0b0c))));
                            } finally {
                            }
                            if (tnode8 != null) {
                              tnode6.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), tnode8);
                            }
                            // TODO validate child 
                          }
                        } finally {
                        }
                        if (tnode6 != null) {
                          tnode5.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode6);
                        }
                        // TODO validate child 
                      }
                    } finally {
                    }
                    if (tnode5 != null) {
                      tnode4.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode5);
                    }
                    // TODO validate child 
                  }
                  {
                    final SNode tnode9 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
                    try {
                      environment.nodeCopied(context, tnode9, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648390");
                      {
                        final SNode tnode10 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall"));
                        try {
                          environment.nodeCopied(context, tnode10, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/4923130412073300953");
                          tnode10.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), tnode10, PersistenceFacade.getInstance().createModelReference("r:f5e9b11f-5073-4786-8ed1-a9e42307c3f8(JavaKaja.runtime)"), PersistenceFacade.getInstance().createNodeId("3210697320273550615")));
                        } finally {
                        }
                        if (tnode10 != null) {
                          tnode9.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode10);
                        }
                        // TODO validate child 
                      }
                    } finally {
                    }
                    if (tnode9 != null) {
                      tnode4.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode9);
                    }
                    // TODO validate child 
                  }
                } finally {
                }
                if (tnode4 != null) {
                  tnode3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b219L, "ifTrue"), tnode4);
                }
                // TODO validate child 
              }
              {
                final SNode tnode11 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfb7c3070eeL, "jetbrains.mps.baseLanguage.structure.AndExpression"));
                try {
                  environment.nodeCopied(context, tnode11, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648393");
                  {
                    final SNode tnode12 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall"));
                    try {
                      environment.nodeCopied(context, tnode12, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/4923130412073282762");
                      tnode12.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), tnode12, PersistenceFacade.getInstance().createModelReference("r:f5e9b11f-5073-4786-8ed1-a9e42307c3f8(JavaKaja.runtime)"), PersistenceFacade.getInstance().createNodeId("3210697320273648281")));
                      {
                        final SNode tnode13 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, "jetbrains.mps.baseLanguage.structure.IntegerConstant"));
                        try {
                          environment.nodeCopied(context, tnode13, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648395");
                          SNodeAccessUtil.setProperty(tnode13, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, 0xf8cc59b315L, "value"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_3210697320273648397(new PropertyMacroContext(context, "0", propertyMacro_bs9h6a_c0a0c0b0b0c0b0b0b0c0b0b0b0b0b0c))));
                        } finally {
                        }
                        if (tnode13 != null) {
                          tnode12.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), tnode13);
                        }
                        // TODO validate child 
                      }
                    } finally {
                    }
                    if (tnode12 != null) {
                      tnode11.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11bL, "rightExpression"), tnode12);
                    }
                    // TODO validate child 
                  }
                  {
                    final SNode tnode14 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall"));
                    try {
                      environment.nodeCopied(context, tnode14, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/4923130412073256581");
                      tnode14.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), tnode14, PersistenceFacade.getInstance().createModelReference("r:f5e9b11f-5073-4786-8ed1-a9e42307c3f8(JavaKaja.runtime)"), PersistenceFacade.getInstance().createNodeId("3210697320273648203")));
                      {
                        final SNode tnode15 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, "jetbrains.mps.baseLanguage.structure.IntegerConstant"));
                        try {
                          environment.nodeCopied(context, tnode15, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648404");
                          SNodeAccessUtil.setProperty(tnode15, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, 0xf8cc59b315L, "value"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_3210697320273648406(new PropertyMacroContext(context, "0", propertyMacro_bs9h6a_c0a0c0b0b0c0b0c0b0c0b0b0b0b0b0c))));
                        } finally {
                        }
                        if (tnode15 != null) {
                          tnode14.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), tnode15);
                        }
                        // TODO validate child 
                      }
                    } finally {
                    }
                    if (tnode14 != null) {
                      tnode11.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11cL, "leftExpression"), tnode14);
                    }
                    // TODO validate child 
                  }
                } finally {
                }
                if (tnode11 != null) {
                  tnode3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b218L, "condition"), tnode11);
                }
                // TODO validate child 
              }
              {
                final SNode tnode16 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement"));
                try {
                  environment.nodeCopied(context, tnode16, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648412");
                  {
                    final SNode tnode17 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"));
                    try {
                      environment.nodeCopied(context, tnode17, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648413");
                      {
                        final SNode tnode18 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
                        try {
                          environment.nodeCopied(context, tnode18, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648414");
                          {
                            final SNode tnode19 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall"));
                            try {
                              environment.nodeCopied(context, tnode19, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/4923130412073283103");
                              tnode19.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), tnode19, PersistenceFacade.getInstance().createModelReference("r:f5e9b11f-5073-4786-8ed1-a9e42307c3f8(JavaKaja.runtime)"), PersistenceFacade.getInstance().createNodeId("3308300503039580739")));
                              {
                                final SNode tnode20 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, "jetbrains.mps.baseLanguage.structure.StringLiteral"));
                                try {
                                  environment.nodeCopied(context, tnode20, "tpl/r:262b93f0-fe86-497c-93c5-efd684d05bc6/3210697320273648416");
                                  SNodeAccessUtil.setProperty(tnode20, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, 0xf93d565d11L, "value"), "Attempted to destroy wall outside of the playground!");
                                } finally {
                                }
                                if (tnode20 != null) {
                                  tnode19.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), tnode20);
                                }
                                // TODO validate child 
                              }
                            } finally {
                            }
                            if (tnode19 != null) {
                              tnode18.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode19);
                            }
                            // TODO validate child 
                          }
                        } finally {
                        }
                        if (tnode18 != null) {
                          tnode17.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode18);
                        }
                        // TODO validate child 
                      }
                    } finally {
                    }
                    if (tnode17 != null) {
                      tnode16.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements"), tnode17);
                    }
                    // TODO validate child 
                  }
                } finally {
                }
                if (tnode16 != null) {
                  tnode3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement"), tnode16);
                }
                // TODO validate child 
              }
            } finally {
            }
            if (tnode3 != null) {
              tnode2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode3);
            }
            // TODO validate child 
          }
        } finally {
        }
        if (tnode2 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements"), tnode2);
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
    SNodeReference weaveTf0 = new SNodePointer("r:262b93f0-fe86-497c-93c5-efd684d05bc6(jetbrains.mps.samples.KajaSceneConstruction.generator.template.main@generator)", "3210697320273608235");
    NodeWeaveFacility weaveSupport0 = environment.weaveNode(context, weaveTf0);
    weaveSupport0.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnodepart0);
    return TemplateUtil.singletonList(tnodepart0);
  }
  private static SNodePointer propertyMacro_bs9h6a_c0a0c0b0b0c0b0b0b0b0b0b0b0b0b0b0b0c = new SNodePointer("r:262b93f0-fe86-497c-93c5-efd684d05bc6(jetbrains.mps.samples.KajaSceneConstruction.generator.template.main@generator)", "3210697320273608236");
  private static SNodePointer propertyMacro_bs9h6a_c0a0c0b0b0d0b0b0b0b0b0b0b0b0b0b0b0c = new SNodePointer("r:262b93f0-fe86-497c-93c5-efd684d05bc6(jetbrains.mps.samples.KajaSceneConstruction.generator.template.main@generator)", "3210697320273608245");
  private static SNodePointer propertyMacro_bs9h6a_c0a0c0b0b0c0b0b0b0c0b0b0b0b0b0c = new SNodePointer("r:262b93f0-fe86-497c-93c5-efd684d05bc6(jetbrains.mps.samples.KajaSceneConstruction.generator.template.main@generator)", "3210697320273648396");
  private static SNodePointer propertyMacro_bs9h6a_c0a0c0b0b0c0b0c0b0c0b0b0b0b0b0c = new SNodePointer("r:262b93f0-fe86-497c-93c5-efd684d05bc6(jetbrains.mps.samples.KajaSceneConstruction.generator.template.main@generator)", "3210697320273648405");
}
