/// Module for [QuantileOptions] class
module gid_apache.arrow22.quantile_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.function_options;
import gid_apache.arrow22.types;

/** */
class QuantileOptions : gid_apache.arrow22.function_options.FunctionOptions
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
    return cast(void function())garrow_quantile_options_get_type != &gidSymbolNotFound ? garrow_quantile_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowQuantileOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override QuantileOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.quantile_options.QuantileOptions]
      Returns: New builder object
  */
  static QuantileOptionsGidBuilder builder() nothrow
  {
    return new QuantileOptionsGidBuilder;
  }

  /**
      Get `interpolation` property.
      Returns: Interpolation method to use when quantile lies between two data
        points.
  */
  @property gid_apache.arrow22.types.QuantileInterpolation interpolation() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow22.types.QuantileInterpolation)("interpolation");
  }

  /**
      Set `interpolation` property.
      Params:
        propval = Interpolation method to use when quantile lies between two data
          points.
  */
  @property void interpolation(gid_apache.arrow22.types.QuantileInterpolation propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow22.types.QuantileInterpolation)("interpolation", propval);
  }

  /**
      Get `minCount` property.
      Returns: If less than this many non-null values are observed, emit null.
  */
  @property uint minCount() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(uint)("min-count");
  }

  /**
      Set `minCount` property.
      Params:
        propval = If less than this many non-null values are observed, emit null.
  */
  @property void minCount(uint propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(uint)("min-count", propval);
  }

  /**
      Get `skipNulls` property.
      Returns: If true (the default), null values are ignored. Otherwise, if any
        value is null, emit null.
  */
  @property bool skipNulls() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("skip-nulls");
  }

  /**
      Set `skipNulls` property.
      Params:
        propval = If true (the default), null values are ignored. Otherwise, if any
          value is null, emit null.
  */
  @property void skipNulls(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("skip-nulls", propval);
  }

  /** */
  this() nothrow
  {
    GArrowQuantileOptions* _cretval;
    _cretval = garrow_quantile_options_new();
    this(_cretval, Yes.Take);
  }

  /** */
  double[] getQs() nothrow
  {
    const(double)* _cretval;
    size_t _cretlength;
    _cretval = garrow_quantile_options_get_qs(cast(GArrowQuantileOptions*)this._cPtr, &_cretlength);
    double[] _retval;

    if (_cretval)
    {
      _retval = cast(double[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  void setQ(double q) nothrow
  {
    garrow_quantile_options_set_q(cast(GArrowQuantileOptions*)this._cPtr, q);
  }

  /** */
  void setQs(double[] qs) nothrow
  {
    size_t _n;
    if (qs)
      _n = cast(size_t)qs.length;

    auto _qs = cast(double*)qs.ptr;
    garrow_quantile_options_set_qs(cast(GArrowQuantileOptions*)this._cPtr, _qs, _n);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.quantile_options.QuantileOptions]
class QuantileOptionsGidBuilderImpl(T) : gid_apache.arrow22.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `interpolation` property.
      Params:
        propval = Interpolation method to use when quantile lies between two data
          points.
      Returns: Builder instance for fluent chaining
  */
  T interpolation(gid_apache.arrow22.types.QuantileInterpolation propval) nothrow
  {
    return setProperty("interpolation", propval);
  }

  /**
      Set `minCount` property.
      Params:
        propval = If less than this many non-null values are observed, emit null.
      Returns: Builder instance for fluent chaining
  */
  T minCount(uint propval) nothrow
  {
    return setProperty("min-count", propval);
  }

  /**
      Set `skipNulls` property.
      Params:
        propval = If true (the default), null values are ignored. Otherwise, if any
          value is null, emit null.
      Returns: Builder instance for fluent chaining
  */
  T skipNulls(bool propval) nothrow
  {
    return setProperty("skip-nulls", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.quantile_options.QuantileOptions]
final class QuantileOptionsGidBuilder : QuantileOptionsGidBuilderImpl!QuantileOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  QuantileOptions build() nothrow
  {
    return new QuantileOptions(cast(void*)createGObject(QuantileOptions._getGType), Yes.Take);
  }
}
