package jetbrains.mps.lang.structure.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class InstanceIncomingReferencesPolicy_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<InstanceIncomingReferencesPolicy> constants = ListSequence.fromList(InstanceIncomingReferencesPolicy.getConstants()).iterator();
    while (constants.hasNext()) {
      InstanceIncomingReferencesPolicy constant = constants.next();
      if (value.equals(constant.getName())) {
        return true;
      }
    }
    return false;
  }
  public String toInternalValue(String value) {
    if (value == null) {
      return null;
    }
    Iterator<InstanceIncomingReferencesPolicy> constants = ListSequence.fromList(InstanceIncomingReferencesPolicy.getConstants()).iterator();
    while (constants.hasNext()) {
      InstanceIncomingReferencesPolicy constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }
  public String fromInternalValue(String value) {
    InstanceIncomingReferencesPolicy constant = InstanceIncomingReferencesPolicy.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}
