/// Module for [ReplaceSliceOptions] class
module gid_apache.arrow25.replace_slice_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.types;

/** */
class ReplaceSliceOptions : gid_apache.arrow25.function_options.FunctionOptions
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
    return cast(void function())garrow_replace_slice_options_get_type != &gidSymbolNotFound ? garrow_replace_slice_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowReplaceSliceOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ReplaceSliceOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.replace_slice_options.ReplaceSliceOptions]
      Returns: New builder object
  */
  static ReplaceSliceOptionsGidBuilder builder() nothrow
  {
    return new ReplaceSliceOptionsGidBuilder;
  }

  /**
      Get `replacement` property.
      Returns: String to replace the slice with.
  */
  @property string replacement() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("replacement");
  }

  /**
      Set `replacement` property.
      Params:
        propval = String to replace the slice with.
  */
  @property void replacement(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("replacement", propval);
  }

  /**
      Get `start` property.
      Returns: Index to start slicing at.
  */
  @property long start() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("start");
  }

  /**
      Set `start` property.
      Params:
        propval = Index to start slicing at.
  */
  @property void start(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("start", propval);
  }

  /**
      Get `stop` property.
      Returns: Index to stop slicing at.
  */
  @property long stop() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("stop");
  }

  /**
      Set `stop` property.
      Params:
        propval = Index to stop slicing at.
  */
  @property void stop(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("stop", propval);
  }

  /** */
  this() nothrow
  {
    GArrowReplaceSliceOptions* _cretval;
    _cretval = garrow_replace_slice_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.replace_slice_options.ReplaceSliceOptions]
class ReplaceSliceOptionsGidBuilderImpl(T) : gid_apache.arrow25.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `replacement` property.
      Params:
        propval = String to replace the slice with.
      Returns: Builder instance for fluent chaining
  */
  T replacement(string propval) nothrow
  {
    return setProperty("replacement", propval);
  }

  /**
      Set `start` property.
      Params:
        propval = Index to start slicing at.
      Returns: Builder instance for fluent chaining
  */
  T start(long propval) nothrow
  {
    return setProperty("start", propval);
  }

  /**
      Set `stop` property.
      Params:
        propval = Index to stop slicing at.
      Returns: Builder instance for fluent chaining
  */
  T stop(long propval) nothrow
  {
    return setProperty("stop", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.replace_slice_options.ReplaceSliceOptions]
final class ReplaceSliceOptionsGidBuilder : ReplaceSliceOptionsGidBuilderImpl!ReplaceSliceOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ReplaceSliceOptions build() nothrow
  {
    return new ReplaceSliceOptions(cast(void*)createGObject(ReplaceSliceOptions._getGType), Yes.Take);
  }
}
