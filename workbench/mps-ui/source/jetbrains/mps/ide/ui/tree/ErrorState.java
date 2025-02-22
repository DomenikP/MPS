/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.ui.tree;

public enum ErrorState {
  NONE() {
    @Override
    public ErrorState combine(ErrorState state) {
      return state;
    }
  },

  WARNING() {
    @Override
    public ErrorState combine(ErrorState state) {
      if (state == ERROR) {
        return ERROR;
      }
      return this;
    }
  },

  ERROR() {
    @Override
    public ErrorState combine(ErrorState state) {
      return this;
    }
  };


  public abstract ErrorState combine(ErrorState state);


}
