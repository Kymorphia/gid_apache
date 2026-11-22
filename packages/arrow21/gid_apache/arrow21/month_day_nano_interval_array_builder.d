/// Module for [MonthDayNanoIntervalArrayBuilder] class
module gid_apache.arrow21.month_day_nano_interval_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.array_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.month_day_nano;
import gid_apache.arrow21.types;

/** */
class MonthDayNanoIntervalArrayBuilder : gid_apache.arrow21.array_builder.ArrayBuilder
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
    return cast(void function())garrow_month_day_nano_interval_array_builder_get_type != &gidSymbolNotFound ? garrow_month_day_nano_interval_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMonthDayNanoIntervalArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override MonthDayNanoIntervalArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.month_day_nano_interval_array_builder.MonthDayNanoIntervalArrayBuilder]
      Returns: New builder object
  */
  static MonthDayNanoIntervalArrayBuilderGidBuilder builder() nothrow
  {
    return new MonthDayNanoIntervalArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowMonthDayNanoIntervalArrayBuilder* _cretval;
    _cretval = garrow_month_day_nano_interval_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool appendValue(gid_apache.arrow21.month_day_nano.MonthDayNano value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_month_day_nano_interval_array_builder_append_value(cast(GArrowMonthDayNanoIntervalArrayBuilder*)this._cPtr, value ? cast(GArrowMonthDayNano*)value._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` calls.
  
      Params:
        values = The array of a #GArrowMonthDayNano.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(gid_apache.arrow21.month_day_nano.MonthDayNano[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values_arr = new GArrowMonthDayNano*[](values.length);
    auto _values = cast(GArrowMonthDayNano**)_values_arr.ptr;
    foreach (i, obj; values) _values[i] = obj ? cast(GArrowMonthDayNano*)obj._cPtr(No.Dup) : null;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_month_day_nano_interval_array_builder_append_values(cast(GArrowMonthDayNanoIntervalArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.month_day_nano_interval_array_builder.MonthDayNanoIntervalArrayBuilder]
class MonthDayNanoIntervalArrayBuilderGidBuilderImpl(T) : gid_apache.arrow21.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.month_day_nano_interval_array_builder.MonthDayNanoIntervalArrayBuilder]
final class MonthDayNanoIntervalArrayBuilderGidBuilder : MonthDayNanoIntervalArrayBuilderGidBuilderImpl!MonthDayNanoIntervalArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MonthDayNanoIntervalArrayBuilder build() nothrow
  {
    return new MonthDayNanoIntervalArrayBuilder(cast(void*)createGObject(MonthDayNanoIntervalArrayBuilder._getGType), Yes.Take);
  }
}
