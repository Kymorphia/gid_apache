/// Module for [WinsorizeOptions] class
module gid_apache.arrow23.winsorize_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class WinsorizeOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_winsorize_options_get_type != &gidSymbolNotFound ? garrow_winsorize_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowWinsorizeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override WinsorizeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.winsorize_options.WinsorizeOptions]
      Returns: New builder object
  */
  static WinsorizeOptionsGidBuilder builder() nothrow
  {
    return new WinsorizeOptionsGidBuilder;
  }

  /**
      Get `lowerLimit` property.
      Returns: The quantile below which all values are replaced with the quantile's value.
        For example, if lower_limit = 0.05, then all values in the lower 5% percentile
        will be replaced with the 5% percentile value.
  */
  @property double lowerLimit() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(double)("lower-limit");
  }

  /**
      Set `lowerLimit` property.
      Params:
        propval = The quantile below which all values are replaced with the quantile's value.
          For example, if lower_limit = 0.05, then all values in the lower 5% percentile
          will be replaced with the 5% percentile value.
  */
  @property void lowerLimit(double propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(double)("lower-limit", propval);
  }

  /**
      Get `upperLimit` property.
      Returns: The quantile above which all values are replaced with the quantile's value.
        For example, if upper_limit = 0.95, then all values in the upper 95% percentile
        will be replaced with the 95% percentile value.
  */
  @property double upperLimit() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(double)("upper-limit");
  }

  /**
      Set `upperLimit` property.
      Params:
        propval = The quantile above which all values are replaced with the quantile's value.
          For example, if upper_limit = 0.95, then all values in the upper 95% percentile
          will be replaced with the 95% percentile value.
  */
  @property void upperLimit(double propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(double)("upper-limit", propval);
  }

  /** */
  this() nothrow
  {
    GArrowWinsorizeOptions* _cretval;
    _cretval = garrow_winsorize_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.winsorize_options.WinsorizeOptions]
class WinsorizeOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `lowerLimit` property.
      Params:
        propval = The quantile below which all values are replaced with the quantile's value.
          For example, if lower_limit = 0.05, then all values in the lower 5% percentile
          will be replaced with the 5% percentile value.
      Returns: Builder instance for fluent chaining
  */
  T lowerLimit(double propval) nothrow
  {
    return setProperty("lower-limit", propval);
  }

  /**
      Set `upperLimit` property.
      Params:
        propval = The quantile above which all values are replaced with the quantile's value.
          For example, if upper_limit = 0.95, then all values in the upper 95% percentile
          will be replaced with the 95% percentile value.
      Returns: Builder instance for fluent chaining
  */
  T upperLimit(double propval) nothrow
  {
    return setProperty("upper-limit", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.winsorize_options.WinsorizeOptions]
final class WinsorizeOptionsGidBuilder : WinsorizeOptionsGidBuilderImpl!WinsorizeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  WinsorizeOptions build() nothrow
  {
    return new WinsorizeOptions(cast(void*)createGObject(WinsorizeOptions._getGType), Yes.Take);
  }
}
