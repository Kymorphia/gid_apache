/// Module for [TakeOptions] class
module gid_apache.arrow19.take_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.function_options;
import gid_apache.arrow19.types;

/** */
class TakeOptions : gid_apache.arrow19.function_options.FunctionOptions
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
    return cast(void function())garrow_take_options_get_type != &gidSymbolNotFound ? garrow_take_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTakeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override TakeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.take_options.TakeOptions]
      Returns: New builder object
  */
  static TakeOptionsGidBuilder builder() nothrow
  {
    return new TakeOptionsGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowTakeOptions* _cretval;
    _cretval = garrow_take_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.take_options.TakeOptions]
class TakeOptionsGidBuilderImpl(T) : gid_apache.arrow19.function_options.FunctionOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.take_options.TakeOptions]
final class TakeOptionsGidBuilder : TakeOptionsGidBuilderImpl!TakeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TakeOptions build() nothrow
  {
    return new TakeOptions(cast(void*)createGObject(TakeOptions._getGType), Yes.Take);
  }
}
