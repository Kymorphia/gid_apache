/// Module for [RoundBinaryOptions] class
module gid_apache.arrow24.round_binary_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.types;

/** */
class RoundBinaryOptions : gid_apache.arrow24.function_options.FunctionOptions
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
    return cast(void function())garrow_round_binary_options_get_type != &gidSymbolNotFound ? garrow_round_binary_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRoundBinaryOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override RoundBinaryOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.round_binary_options.RoundBinaryOptions]
      Returns: New builder object
  */
  static RoundBinaryOptionsGidBuilder builder() nothrow
  {
    return new RoundBinaryOptionsGidBuilder;
  }

  /**
      Get `mode` property.
      Returns: The rounding and tie-breaking mode.
  */
  @property gid_apache.arrow24.types.RoundMode mode() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.types.RoundMode)("mode");
  }

  /**
      Set `mode` property.
      Params:
        propval = The rounding and tie-breaking mode.
  */
  @property void mode(gid_apache.arrow24.types.RoundMode propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.types.RoundMode)("mode", propval);
  }

  /** */
  this() nothrow
  {
    GArrowRoundBinaryOptions* _cretval;
    _cretval = garrow_round_binary_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.round_binary_options.RoundBinaryOptions]
class RoundBinaryOptionsGidBuilderImpl(T) : gid_apache.arrow24.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `mode` property.
      Params:
        propval = The rounding and tie-breaking mode.
      Returns: Builder instance for fluent chaining
  */
  T mode(gid_apache.arrow24.types.RoundMode propval) nothrow
  {
    return setProperty("mode", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.round_binary_options.RoundBinaryOptions]
final class RoundBinaryOptionsGidBuilder : RoundBinaryOptionsGidBuilderImpl!RoundBinaryOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RoundBinaryOptions build() nothrow
  {
    return new RoundBinaryOptions(cast(void*)createGObject(RoundBinaryOptions._getGType), Yes.Take);
  }
}
