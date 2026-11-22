/// Module for [RoundToMultipleOptions] class
module gid_apache.arrow21.round_to_multiple_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.function_options;
import gid_apache.arrow21.scalar;
import gid_apache.arrow21.types;

/** */
class RoundToMultipleOptions : gid_apache.arrow21.function_options.FunctionOptions
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
    return cast(void function())garrow_round_to_multiple_options_get_type != &gidSymbolNotFound ? garrow_round_to_multiple_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRoundToMultipleOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override RoundToMultipleOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.round_to_multiple_options.RoundToMultipleOptions]
      Returns: New builder object
  */
  static RoundToMultipleOptionsGidBuilder builder() nothrow
  {
    return new RoundToMultipleOptionsGidBuilder;
  }

  /**
      Get `mode` property.
      Returns: The rounding and tie-breaking mode.
  */
  @property gid_apache.arrow21.types.RoundMode mode() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.types.RoundMode)("mode");
  }

  /**
      Set `mode` property.
      Params:
        propval = The rounding and tie-breaking mode.
  */
  @property void mode(gid_apache.arrow21.types.RoundMode propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow21.types.RoundMode)("mode", propval);
  }

  /**
      Get `multiple` property.
      Returns: The rounding scale (multiple to round to).
        
        Should be a scalar of a type compatible with the argument to be rounded.
        For example, rounding a decimal value means a decimal multiple is
        required. Rounding a floating point or integer value means a floating
        point scalar is required.
  */
  @property gid_apache.arrow21.scalar.Scalar multiple() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.scalar.Scalar)("multiple");
  }

  /**
      Set `multiple` property.
      Params:
        propval = The rounding scale (multiple to round to).
          
          Should be a scalar of a type compatible with the argument to be rounded.
          For example, rounding a decimal value means a decimal multiple is
          required. Rounding a floating point or integer value means a floating
          point scalar is required.
  */
  @property void multiple(gid_apache.arrow21.scalar.Scalar propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow21.scalar.Scalar)("multiple", propval);
  }

  /** */
  this() nothrow
  {
    GArrowRoundToMultipleOptions* _cretval;
    _cretval = garrow_round_to_multiple_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.round_to_multiple_options.RoundToMultipleOptions]
class RoundToMultipleOptionsGidBuilderImpl(T) : gid_apache.arrow21.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `mode` property.
      Params:
        propval = The rounding and tie-breaking mode.
      Returns: Builder instance for fluent chaining
  */
  T mode(gid_apache.arrow21.types.RoundMode propval) nothrow
  {
    return setProperty("mode", propval);
  }

  /**
      Set `multiple` property.
      Params:
        propval = The rounding scale (multiple to round to).
          
          Should be a scalar of a type compatible with the argument to be rounded.
          For example, rounding a decimal value means a decimal multiple is
          required. Rounding a floating point or integer value means a floating
          point scalar is required.
      Returns: Builder instance for fluent chaining
  */
  T multiple(gid_apache.arrow21.scalar.Scalar propval) nothrow
  {
    return setProperty("multiple", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.round_to_multiple_options.RoundToMultipleOptions]
final class RoundToMultipleOptionsGidBuilder : RoundToMultipleOptionsGidBuilderImpl!RoundToMultipleOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RoundToMultipleOptions build() nothrow
  {
    return new RoundToMultipleOptions(cast(void*)createGObject(RoundToMultipleOptions._getGType), Yes.Take);
  }
}
