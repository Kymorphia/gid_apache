/// Module for [RoundOptions] class
module gid_apache.arrow19.round_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.function_options;
import gid_apache.arrow19.types;

/** */
class RoundOptions : gid_apache.arrow19.function_options.FunctionOptions
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
    return cast(void function())garrow_round_options_get_type != &gidSymbolNotFound ? garrow_round_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRoundOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override RoundOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.round_options.RoundOptions]
      Returns: New builder object
  */
  static RoundOptionsGidBuilder builder() nothrow
  {
    return new RoundOptionsGidBuilder;
  }

  /**
      Get `mode` property.
      Returns: The rounding and tie-breaking mode.
  */
  @property gid_apache.arrow19.types.RoundMode mode() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow19.types.RoundMode)("mode");
  }

  /**
      Set `mode` property.
      Params:
        propval = The rounding and tie-breaking mode.
  */
  @property void mode(gid_apache.arrow19.types.RoundMode propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow19.types.RoundMode)("mode", propval);
  }

  /**
      Get `nDigits` property.
      Returns: The rounding precision (number of digits to round to).
  */
  @property long nDigits() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("n-digits");
  }

  /**
      Set `nDigits` property.
      Params:
        propval = The rounding precision (number of digits to round to).
  */
  @property void nDigits(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("n-digits", propval);
  }

  /** */
  this() nothrow
  {
    GArrowRoundOptions* _cretval;
    _cretval = garrow_round_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.round_options.RoundOptions]
class RoundOptionsGidBuilderImpl(T) : gid_apache.arrow19.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `mode` property.
      Params:
        propval = The rounding and tie-breaking mode.
      Returns: Builder instance for fluent chaining
  */
  T mode(gid_apache.arrow19.types.RoundMode propval) nothrow
  {
    return setProperty("mode", propval);
  }

  /**
      Set `nDigits` property.
      Params:
        propval = The rounding precision (number of digits to round to).
      Returns: Builder instance for fluent chaining
  */
  T nDigits(long propval) nothrow
  {
    return setProperty("n-digits", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.round_options.RoundOptions]
final class RoundOptionsGidBuilder : RoundOptionsGidBuilderImpl!RoundOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RoundOptions build() nothrow
  {
    return new RoundOptions(cast(void*)createGObject(RoundOptions._getGType), Yes.Take);
  }
}
