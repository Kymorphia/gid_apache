/// Module for [SliceOptions] class
module gid_apache.arrow26.slice_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class SliceOptions : gid_apache.arrow26.function_options.FunctionOptions
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())garrow_slice_options_get_type != &gidSymbolNotFound ? garrow_slice_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSliceOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override SliceOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.slice_options.SliceOptions]
      Returns: New builder object
  */
  static SliceOptionsGidBuilder builder() nothrow
  {
    return new SliceOptionsGidBuilder;
  }

  /**
      Get `start` property.
      Returns: Index to start slicing at (inclusive).
  */
  @property long start() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("start");
  }

  /**
      Set `start` property.
      Params:
        propval = Index to start slicing at (inclusive).
  */
  @property void start(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("start", propval);
  }

  /**
      Get `step` property.
      Returns: Slice step.
  */
  @property long step() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("step");
  }

  /**
      Set `step` property.
      Params:
        propval = Slice step.
  */
  @property void step(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("step", propval);
  }

  /**
      Get `stop` property.
      Returns: Index to stop slicing at (exclusive).
  */
  @property long stop() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("stop");
  }

  /**
      Set `stop` property.
      Params:
        propval = Index to stop slicing at (exclusive).
  */
  @property void stop(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("stop", propval);
  }

  /** */
  this() nothrow
  {
    GArrowSliceOptions* _cretval;
    _cretval = garrow_slice_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.slice_options.SliceOptions]
class SliceOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `start` property.
      Params:
        propval = Index to start slicing at (inclusive).
      Returns: Builder instance for fluent chaining
  */
  T start(long propval) nothrow
  {
    return setProperty("start", propval);
  }

  /**
      Set `step` property.
      Params:
        propval = Slice step.
      Returns: Builder instance for fluent chaining
  */
  T step(long propval) nothrow
  {
    return setProperty("step", propval);
  }

  /**
      Set `stop` property.
      Params:
        propval = Index to stop slicing at (exclusive).
      Returns: Builder instance for fluent chaining
  */
  T stop(long propval) nothrow
  {
    return setProperty("stop", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.slice_options.SliceOptions]
final class SliceOptionsGidBuilder : SliceOptionsGidBuilderImpl!SliceOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SliceOptions build() nothrow
  {
    return new SliceOptions(cast(void*)createGObject(SliceOptions._getGType), Yes.Take);
  }
}
