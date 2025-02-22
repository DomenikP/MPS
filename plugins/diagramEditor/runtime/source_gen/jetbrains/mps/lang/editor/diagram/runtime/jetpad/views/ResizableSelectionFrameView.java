package jetbrains.mps.lang.editor.diagram.runtime.jetpad.views;

/*Generated by MPS */

import jetbrains.jetpad.model.property.Property;
import jetbrains.jetpad.model.property.ValueProperty;
import jetbrains.jetpad.values.Color;
import jetbrains.jetpad.geometry.Rectangle;
import jetbrains.jetpad.model.collections.list.ObservableList;
import jetbrains.jetpad.geometry.Vector;
import jetbrains.jetpad.model.collections.list.ObservableArrayList;
import jetbrains.jetpad.mapper.Mapper;
import jetbrains.jetpad.mapper.Synchronizers;
import jetbrains.jetpad.mapper.MapperFactory;
import java.util.ListIterator;
import jetbrains.jetpad.geometry.Segment;

public class ResizableSelectionFrameView extends AbstractExternalFrameView {
  public Property<Boolean> resizable = new ValueProperty<Boolean>(false);
  public Property<Boolean> showSideHandler = new ValueProperty<Boolean>(true);
  public Property<Integer> selectionLineWidth = new ValueProperty<Integer>(1);
  public Property<Color> color = new ValueProperty<Color>(Color.BLACK);
  public Property<Color> backgroundColor = new ValueProperty<Color>(Color.LIGHT_GRAY);
  public Property<Rectangle> boundsDelta = new ValueProperty<Rectangle>();

  private ObservableList<Vector> myCornerResizeHandlePositions = new ObservableArrayList<Vector>();
  private ObservableList<Vector> mySideResizeHandlePositions = new ObservableArrayList<Vector>();

  public ResizableSelectionFrameView() {
    new Mapper<ResizableSelectionFrameView, ResizableSelectionFrameView>(this, this) {
      @Override
      protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
        super.registerSynchronizers(configuration);
        // corner resize handle positions 
        configuration.add(Synchronizers.forProperty(resizable, new Runnable() {
          public void run() {
            updateCornerResizeHandlePositions(resizable.get(), frameRectangle.get());
          }
        }));
        configuration.add(Synchronizers.forProperty(frameRectangle, new Runnable() {
          public void run() {
            updateCornerResizeHandlePositions(resizable.get(), frameRectangle.get());
          }
        }));
        // side resize handle positions 
        configuration.add(Synchronizers.forProperty(resizable, new Runnable() {
          public void run() {
            updateSideResizeHandlePositions(resizable.get(), showSideHandler.get(), frameRectangle.get());
          }
        }));
        configuration.add(Synchronizers.forProperty(showSideHandler, new Runnable() {
          public void run() {
            updateSideResizeHandlePositions(resizable.get(), showSideHandler.get(), frameRectangle.get());
          }
        }));
        configuration.add(Synchronizers.forProperty(frameRectangle, new Runnable() {
          public void run() {
            updateSideResizeHandlePositions(resizable.get(), showSideHandler.get(), frameRectangle.get());
          }
        }));

        configuration.add(Synchronizers.forConstantRole(this, ResizableSelectionFrameView.this, childSubList(), new MapperFactory<ResizableSelectionFrameView, SelectionFrameView>() {
          public Mapper<? extends ResizableSelectionFrameView, ? extends SelectionFrameView> createMapper(ResizableSelectionFrameView decoratorView) {
            return new Mapper<ResizableSelectionFrameView, SelectionFrameView>(decoratorView, new SelectionFrameView()) {
              @Override
              protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
                super.registerSynchronizers(configuration);
                configuration.add(Synchronizers.forProperty(color, getTarget().color));
                configuration.add(Synchronizers.forProperty(frameWidth, getTarget().frameWidth));
                configuration.add(Synchronizers.forProperty(internalsBounds, getTarget().internalsBounds));
                configuration.add(Synchronizers.forProperty(selectionLineWidth, getTarget().lineWidth));
              }
            };
          }
        }));

        // corner resize handles 
        configuration.add(Synchronizers.forObservableRole(this, myCornerResizeHandlePositions, childSubList(), new MapperFactory<Vector, ResizeHandleView>() {
          public Mapper<? extends Vector, ? extends ResizeHandleView> createMapper(Vector position) {
            int index = myCornerResizeHandlePositions.indexOf(position);
            switch (index) {
              case 0:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(true, true), new ResizableSelectionFrameView.RectangleUpdater(true, false));
              case 1:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(false, true), new ResizableSelectionFrameView.RectangleUpdater(true, false));
              case 2:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(false, true), new ResizableSelectionFrameView.RectangleUpdater(false, false));
              case 3:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(true, true), new ResizableSelectionFrameView.RectangleUpdater(false, false));
              default:
                assert false : "unexpected index: " + index;
            }
            return null;
          }
        }));
        // side resize handles 
        configuration.add(Synchronizers.forObservableRole(this, mySideResizeHandlePositions, childSubList(), new MapperFactory<Vector, ResizeHandleView>() {
          public Mapper<? extends Vector, ? extends ResizeHandleView> createMapper(Vector position) {
            int index = mySideResizeHandlePositions.indexOf(position);
            switch (index) {
              case 0:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(true, false));
              case 1:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(false, true));
              case 2:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(false, false));
              case 3:
                return new ResizableSelectionFrameView.ResizeHandleMapper(position, new ResizableSelectionFrameView.RectangleUpdater(true, true));
              default:
                assert false : "unexpected index: " + index;
            }
            return null;
          }
        }));
      }
    }.attachRoot();
  }
  private void updateCornerResizeHandlePositions(boolean resizable, Rectangle rectangle) {
    if (!(resizable)) {
      myCornerResizeHandlePositions.clear();
      return;
    }
    ListIterator<Vector> iterator = myCornerResizeHandlePositions.listIterator();
    for (Vector nextPoint : rectangle.getBoundPoints()) {
      if (iterator.hasNext()) {
        Vector next = iterator.next();
        if (nextPoint.equals(next)) {
          continue;
        }
        iterator.remove();
      }
      iterator.add(nextPoint);
    }
  }
  private void updateSideResizeHandlePositions(boolean resizable, boolean visible, Rectangle rectangle) {
    if (!(resizable) || !(visible)) {
      mySideResizeHandlePositions.clear();
      return;
    }
    for (Segment nextSegment : rectangle.getBoundSegments()) {
      if (nextSegment.length() < 4 * ResizeHandleView.DEFAULT_HALF_WIDTH) {
        mySideResizeHandlePositions.clear();
        return;
      }
    }

    ListIterator<Vector> iterator = mySideResizeHandlePositions.listIterator();
    for (Segment nextSegment : rectangle.getBoundSegments()) {
      Vector nextPoint = nextSegment.end.sub(nextSegment.start).div(2).add(nextSegment.start);
      if (iterator.hasNext()) {
        Vector next = iterator.next();
        if (nextPoint.equals(next)) {
          continue;
        }
        iterator.remove();
      }
      iterator.add(nextPoint);
    }
  }
  private class ResizeHandleMapper extends Mapper<Vector, ResizeHandleView> {
    private Property<DragHandler> myDragHandler = new ValueProperty<DragHandler>();
    private ResizeHandleMapper(Vector position, ResizableSelectionFrameView.RectangleUpdater... updater) {
      super(position, new ResizeHandleView(position));
      myDragHandler.set(new ResizableSelectionFrameView.ResizeHandleMapper.DragHandlerImpl(updater));
    }
    @Override
    protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
      super.registerSynchronizers(configuration);
      configuration.add(Synchronizers.forProperty(color, getTarget().color));
      configuration.add(Synchronizers.forProperty(backgroundColor, getTarget().backgroundColor));
      configuration.add(Synchronizers.forProperty(myDragHandler, getTarget().dragHandler));
    }
    private class DragHandlerImpl implements DragHandler {
      private Rectangle myOriginalBounds;
      private Vector myDragStartposition;
      private ResizableSelectionFrameView.RectangleUpdater[] myUpdaters;

      private DragHandlerImpl(ResizableSelectionFrameView.RectangleUpdater... updaters) {
        myUpdaters = updaters;
      }
      public void dragStarted(Vector position) {
        myOriginalBounds = internalsBounds.get();
        myDragStartposition = position;
        updatePosition(position);
      }
      public void updatePosition(Vector position) {
        Rectangle bounds = myOriginalBounds;
        Vector dragDelta = position.sub(myDragStartposition);
        for (ResizableSelectionFrameView.RectangleUpdater updater : myUpdaters) {
          bounds = updater.updateRect(bounds, dragDelta);
        }
        internalsBounds.set(bounds);
      }
      public void dragStopped(Vector position) {
        Rectangle finalBounds = internalsBounds.get();
        Vector originDelta = finalBounds.origin.sub(myOriginalBounds.origin);
        Vector dimensionDelta = finalBounds.dimension.sub(myOriginalBounds.dimension);
        boundsDelta.set(new Rectangle(originDelta, dimensionDelta));
        myOriginalBounds = null;
        myDragStartposition = null;
      }
    }
  }
  private class RectangleUpdater {
    private boolean myOrigin;
    private boolean myX;

    private RectangleUpdater(boolean origin, boolean x) {
      myOrigin = origin;
      myX = x;
    }
    public Rectangle updateRect(Rectangle rectangle, Vector moveDelta) {
      Vector origin = rectangle.origin;
      Vector dimension = rectangle.dimension;
      Vector effectiveDelta = updateVector(Vector.ZERO, moveDelta);
      if (myOrigin) {
        origin = origin.add(effectiveDelta);
        dimension = dimension.add(effectiveDelta.negate());
      } else {
        dimension = dimension.add(effectiveDelta);
      }
      return new Rectangle(origin, dimension);
    }
    private Vector updateVector(Vector value, Vector newValue) {
      return (myX ? new Vector(newValue.x, value.y) : new Vector(value.x, newValue.y));
    }
  }
}
