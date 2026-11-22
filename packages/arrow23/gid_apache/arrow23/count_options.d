/// Module for [CountOptions] class
module gid_apache.arrow23.count_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class CountOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_count_options_get_type != &gidSymbolNotFound ? garrow_count_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCountOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override CountOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.count_options.CountOptions]
      Returns: New builder object
  */
  static CountOptionsGidBuilder builder() nothrow
  {
    return new CountOptionsGidBuilder;
  }

  /** */
  @property gid_apache.arrow23.types.CountMode mode() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.types.CountMode)("mode");
  }

  /** */
  @property void mode(gid_apache.arrow23.types.CountMode propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow23.types.CountMode)("mode", propval);
  }

  /** */
  this() nothrow
  {
    GArrowCountOptions* _cretval;
    _cretval = garrow_count_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.count_options.CountOptions]
class CountOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /** */
  T mode(gid_apache.arrow23.types.CountMode propval) nothrow
  {
    return setProperty("mode", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.count_options.CountOptions]
final class CountOptionsGidBuilder : CountOptionsGidBuilderImpl!CountOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CountOptions build() nothrow
  {
    return new CountOptions(cast(void*)createGObject(CountOptions._getGType), Yes.Take);
  }
}
