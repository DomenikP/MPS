package jetbrains.mps.baseLanguage.regexp.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SPropertyId;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class RegexpDeclaration_Constraints extends BaseConstraintsDescriptor {
  public RegexpDeclaration_Constraints() {
    super(MetaIdFactory.conceptId(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174a6454dL));
  }
  @Override
  protected Map<SPropertyId, PropertyConstraintsDescriptor> getNotDefaultSProperties() {
    Map<SPropertyId, PropertyConstraintsDescriptor> properties = new HashMap<SPropertyId, PropertyConstraintsDescriptor>();
    properties.put(MetaIdFactory.propId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34f97574L), new BasePropertyConstraintsDescriptor(MetaIdFactory.propId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34f97574L), this) {
      @Override
      public boolean hasOwnGetter() {
        return true;
      }
      @Override
      public Object getValue(SNode node) {
        String propertyName = "shortDescription";
        return (isNotEmptyString(SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174a6454dL, 0x1117f5e9a48L, "description"))) ? SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174a6454dL, 0x1117f5e9a48L, "description")) : "regular expression");
      }
    });
    return properties;
  }
  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
