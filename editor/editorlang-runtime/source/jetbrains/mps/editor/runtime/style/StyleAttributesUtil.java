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
package jetbrains.mps.editor.runtime.style;

import jetbrains.mps.openapi.editor.style.Style;

/**
 * User: shatalin
 * Date: 6/12/13
 */
public class StyleAttributesUtil {
  public static boolean isFirstPositionAllowed(Style style) {
    if (style.isSpecified(StyleAttributes.FIRST_POSITION_ALLOWED)) {
      return style.get(StyleAttributes.FIRST_POSITION_ALLOWED);
    }
    return !style.get(StyleAttributes.PUNCTUATION_LEFT);
  }

  public static boolean isLastPositionAllowed(Style style) {
    if (style.isSpecified(StyleAttributes.LAST_POSITION_ALLOWED)) {
      return style.get(StyleAttributes.LAST_POSITION_ALLOWED);
    }
    return !style.get(StyleAttributes.PUNCTUATION_RIGHT);
  }
}
