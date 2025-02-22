package jetbrains.mps.baseLanguage.search;

/*Generated by MPS */

import jetbrains.mps.cache.AbstractCache;
import jetbrains.mps.cache.KeyProducer;
import java.util.Map;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import org.jetbrains.mps.openapi.model.SModel;
import java.util.Set;
import java.util.Collections;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.cache.CachesManager;

@Deprecated
/*package*/ class ClassifiersCache extends AbstractCache {
  private static final KeyProducer keyProducer = new KeyProducer();
  private Map<String, List<SNode>> myClassifiersByName = MapSequence.fromMap(new HashMap<String, List<SNode>>());
  private Map<SNode, String> myNameByClassifier = MapSequence.fromMap(new HashMap<SNode, String>());
  @Deprecated
  protected ClassifiersCache(Object key, SModel model) {
    super(key);
    for (SNode node : model.getRootNodes()) {
      this.processNode(node, true);
    }
  }
  @Override
  public Set<SModel> getDependsOnModels(Object element) {
    return Collections.singleton((SModel) element);
  }
  private void processNode(SNode node, boolean put) {
    if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")) && !(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass")))) {
      SNode classifier = SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"));
      if (put) {
        this.putClassifier(classifier);
      } else {
        this.removeClassifier(classifier);
      }
    } else {
      for (SNode child : SNodeOperations.getChildren(node)) {
        this.processNode(child, put);
      }
    }
  }
  private void putClassifier(SNode classifier) {
    String name = this.getRefName(classifier);
    if (!(MapSequence.fromMap(myClassifiersByName).containsKey(name))) {
      MapSequence.fromMap(myClassifiersByName).put(name, new ArrayList<SNode>());
    }
    ListSequence.fromList(MapSequence.fromMap(myClassifiersByName).get(name)).addElement(classifier);
    MapSequence.fromMap(myNameByClassifier).put(classifier, name);
    for (SNode innerClassifier : BehaviorReflection.invokeNonVirtual((Class<Iterable<SNode>>) ((Class) Object.class), classifier, "jetbrains.mps.baseLanguage.structure.Classifier", "call_nestedClassifiers_5292274854859193142", new Object[]{})) {
      this.putClassifier(innerClassifier);
    }
  }
  private void removeClassifier(SNode classifier) {
    String name = this.getRefName(classifier);
    if (MapSequence.fromMap(myClassifiersByName).containsKey(name)) {
      List<SNode> nodes = MapSequence.fromMap(myClassifiersByName).get(name);
      nodes.remove(classifier);
      if (ListSequence.fromList(nodes).isEmpty()) {
        MapSequence.fromMap(myClassifiersByName).removeKey(name);
      }
    }
    MapSequence.fromMap(myNameByClassifier).removeKey(classifier);
    for (SNode innerClassifier : BehaviorReflection.invokeNonVirtual((Class<Iterable<SNode>>) ((Class) Object.class), classifier, "jetbrains.mps.baseLanguage.structure.Classifier", "call_nestedClassifiers_5292274854859193142", new Object[]{})) {
      this.removeClassifier(innerClassifier);
    }
  }
  private String getRefName(SNode classifier) {
    String name = SPropertyOperations.getString(classifier, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    if (name == null) {
      name = "";
    }
    SNode parent = SNodeOperations.getParent(classifier);
    if (SNodeOperations.isInstanceOf(parent, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
      return this.getRefName(SNodeOperations.cast(parent, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) + "." + name;
    }
    return name;
  }
  public List<SNode> getClassifiers() {
    return new ArrayList<SNode>(MapSequence.fromMap(this.myNameByClassifier).keySet());
  }
  public List<SNode> getClassifiersByRefName(String refName) {
    List<SNode> result = MapSequence.fromMap(myClassifiersByName).get(refName);
    if (result != null) {
      return result;
    }
    return new ArrayList<SNode>();
  }
  @Override
  public void rootAdded(SModelRootEvent event) {
    this.processNode(event.getRoot(), true);
  }
  @Override
  public void rootRemoved(SModelRootEvent event) {
    this.processNode(event.getRoot(), false);
  }
  @Override
  public void childAdded(SModelChildEvent event) {
    SNode node = event.getChild();
    if (!(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")))) {
      if (SNodeOperations.getNodeAncestor(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), false, false) != null) {
        return;
      }
    }
    this.processNode(node, true);
  }
  @Override
  public void beforeChildRemoved(SModelChildEvent event) {
    SNode node = event.getChild();
    if (!(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")))) {
      if (SNodeOperations.getNodeAncestor(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), false, false) != null) {
        return;
      }
    }
    this.processNode(node, false);
  }
  @Override
  public void propertyChanged(SModelPropertyEvent event) {
    SNode node = event.getNode();
    if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")) && "name".equals(event.getPropertyName())) {
      SNode classifier = SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"));
      List<SNode> classifiersToUpdate = new ArrayList<SNode>();
      ListSequence.fromList(classifiersToUpdate).addElement(classifier);
      collectInnerClasses(classifier, classifiersToUpdate);
      for (SNode cl : classifiersToUpdate) {
        String oldRefName = MapSequence.fromMap(myNameByClassifier).get(cl);
        List<SNode> nodes = MapSequence.fromMap(myClassifiersByName).get(oldRefName);
        if (nodes != null) {
          nodes.remove(cl);
        }
        if (nodes == null || nodes.isEmpty()) {
          MapSequence.fromMap(myClassifiersByName).removeKey(oldRefName);
        }
        MapSequence.fromMap(myNameByClassifier).removeKey(cl);
      }
      this.putClassifier(classifier);
    }
  }
  private void collectInnerClasses(SNode classConcept, List<SNode> list) {
    Iterable<SNode> inners = BehaviorReflection.invokeNonVirtual((Class<Iterable<SNode>>) ((Class) Object.class), classConcept, "jetbrains.mps.baseLanguage.structure.Classifier", "call_nestedClassifiers_5292274854859193142", new Object[]{});
    ListSequence.fromList(list).addSequence(Sequence.fromIterable(inners));
    for (SNode inner : inners) {
      this.collectInnerClasses(inner, list);
    }
  }
  public static ClassifiersCache getInstance(SModel model) {
    String uid = model.getReference().toString();
    Object key = keyProducer.createKey(uid);
    return (ClassifiersCache) CachesManager.getInstance().getCache(key, model, new CachesManager.CacheCreator<SModel>() {
      @Override
      public AbstractCache create(Object key, SModel element) {
        return new ClassifiersCache(key, element);
      }
    });
  }
}
