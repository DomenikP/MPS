package jetbrains.mps.smodel.resources;

/*Generated by MPS */

import jetbrains.mps.make.resources.IResource;

/**
 * Clean-up activity wrapped as a make resource to get passed between targets.
 * Comes handy when a task allocates a resource that needs to survive few make steps
 * (e.g. transient models of generator), but need clean-up once make process is over
 */
public interface CleanupActivityResource extends IResource, Runnable {
}
