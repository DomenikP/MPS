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
package jetbrains.mps.newTypesystem.context.component;

import gnu.trove.THashSet;
import jetbrains.mps.newTypesystem.context.typechecking.BaseTypechecking;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.smodel.AbstractNodesReadListener;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.util.Pair;

import java.util.Set;

/*package*/ public abstract class IncrementalTypecheckingComponent<STATE extends State> extends SimpleTypecheckingComponent<STATE> {

  private boolean myInvalidationWasPerformed = false;
  private boolean myCacheWasRebuilt = false;
  private boolean myInvalidationResult = false;

  private Set<SNode> myCurrentNodesToInvalidate = new THashSet<SNode>();

  protected IncrementalTypecheckingComponent(TypeChecker typeChecker, STATE state, BaseTypechecking component) {
    super(state, component);
  }

  @Override
  protected abstract boolean doInvalidate();

  public void setInvalidationWasPerformed(boolean invalidationWasPerformed) {
    myInvalidationWasPerformed = invalidationWasPerformed;
  }

  public void setCacheWasRebuild(boolean cacheWasRebuild) {
    myCacheWasRebuilt = cacheWasRebuild;
  }

  public void addNodeToInvalidate(SNode node) {
    myCurrentNodesToInvalidate.add(node);
    setInvalidationWasPerformed(false);
  }

  @Override
  public void clear() {
    myIsChecked = false;
  }

  public void clearNodeTypes() {
    myCurrentNodesToInvalidate.clear();
  }

  protected boolean isInvalidationWasPerformed() {
    return myInvalidationWasPerformed;
  }

  protected boolean isCacheWasRebuilt() {
    return myCacheWasRebuilt;
  }

  protected boolean isInvalidationResult() {
    return myInvalidationResult;
  }

  protected Set<SNode> getCurrentNodesToInvalidate() {
    return new THashSet<SNode>(myCurrentNodesToInvalidate);
  }

  /*
   *  Single-threaded
   */
  protected class MyEventsReadListener extends AbstractNodesReadListener {
    private Set<SNode> myAccessedNodes = new THashSet<SNode>(1);
    private Set<Pair<SNode, String>> myAccessedProperties = new THashSet<Pair<SNode, String>>(1);
    private boolean myIsSetAccessReport = false;

    public MyEventsReadListener() {
    }

    public void setAccessReport(boolean accessReport) {
      myIsSetAccessReport = accessReport;
    }

    private void reportAccess() {
      if (myIsSetAccessReport) {
        new Throwable().printStackTrace();
      }
    }

    @Override
    public void nodeChildReadAccess(SNode node, String childRole, SNode child) {
      reportAccess();
      myAccessedNodes.add(node);
      if (child != null) {
        myAccessedNodes.add(child);
      }
    }

    @Override
    public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
      reportAccess();
      myAccessedProperties.add(new Pair<SNode, String>(node, propertyName));
    }

    @Override
    public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
      reportAccess();
      myAccessedNodes.add(node);
      if (referent != null) {
        myAccessedNodes.add(referent);
      }
    }

    @Override
    public void nodeUnclassifiedReadAccess(SNode node) {
      reportAccess();
      myAccessedNodes.add(node);
    }

    public Set<SNode> getAccessedNodes() {
      return myAccessedNodes;
    }

    public void clear() {
      reportAccess();
      myAccessedNodes = new THashSet<SNode>();
      myAccessedProperties = new THashSet<Pair<SNode, String>>();
    }

    public Set<Pair<SNode, String>> getAccessedProperties() {
      return myAccessedProperties;
    }
  }

  protected void setInvalidationResult(boolean result) {
    setInvalidationWasPerformed(true);
    myCacheWasRebuilt = false;
    myInvalidationResult = result;
  }
}
