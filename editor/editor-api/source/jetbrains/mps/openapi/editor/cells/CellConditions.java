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
package jetbrains.mps.openapi.editor.cells;

import org.jetbrains.mps.util.Condition;

/**
 * Semen Alperovich
 * 03 13, 2013
 */
public class CellConditions {
  public static final Condition<EditorCell> SELECTABLE = new Condition<EditorCell>() {
    @Override
    public boolean met(EditorCell cell) {
      return cell.isSelectable();
    }
  };

  public static final Condition<EditorCell> SELECTABLE_lEAF = new Condition<EditorCell>() {
    @Override
    public boolean met(EditorCell cell) {
      return !(cell instanceof EditorCell_Collection) && cell.isSelectable();
    }
  };

  public static final Condition<EditorCell> EDITABLE = new Condition<EditorCell>() {
    @Override
    public boolean met(EditorCell cell) {
      return cell.isSelectable() && cell instanceof EditorCell_Label && ((EditorCell_Label) cell).isEditable();
    }
  };
}
