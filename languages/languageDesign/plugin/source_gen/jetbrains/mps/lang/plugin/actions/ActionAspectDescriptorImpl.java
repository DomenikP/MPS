package jetbrains.mps.lang.plugin.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import java.util.Collection;
import jetbrains.mps.openapi.actions.descriptor.NodeFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Arrays;
import java.util.Collections;

public class ActionAspectDescriptorImpl implements ActionAspectDescriptor {
  private static final String LANGUAGE_FQ_NAME = "jetbrains.mps.lang.plugin";

  public Collection<NodeFactory> getFactories(SAbstractConcept concept) {
    if (LANGUAGE_FQ_NAME.equals(concept.getLanguage().getQualifiedName())) {
      switch (Arrays.binarySearch(stringSwitchCases_tpto26_a0a0a0c, concept.getName())) {
        case 0:
          return Collections.<NodeFactory>singletonList(new AddRequiredParameter.NodeFactory_315309404903965693());
        case 1:
          return Collections.<NodeFactory>singletonList(new add_parameter_to_closure.NodeFactory_485694842828664421());
        default:
      }
    }
    return Collections.<NodeFactory>emptyList();
  }
  private static String[] stringSwitchCases_tpto26_a0a0a0c = new String[]{"ActionParameter", "ToolTab"};
}
