package jetbrains.mps.baseLanguage.lightweightdsl.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

public class StringPropertyInstance_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getValueExpression_3855110916777030624(SNode thisNode) {
    return _quotation_createNode_2ank17_a0a0(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x59e9926e84100d04L, 0x59e9926e84100d05L, "value")));
  }
  private static SNode _quotation_createNode_2ank17_a0a0(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, "jetbrains.mps.baseLanguage.structure.StringLiteral"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_2, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, 0xf93d565d11L, "value"), (String) parameter_1);
    return quotedNode_2;
  }
}
