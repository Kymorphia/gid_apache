/// Module for [MonthDayNanoIntervalArray] class
module gid_apache.arrow24.month_day_nano_interval_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.buffer;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.month_day_nano;
import gid_apache.arrow24.primitive_array;
import gid_apache.arrow24.types;

/** */
class MonthDayNanoIntervalArray : gid_apache.arrow24.primitive_array.PrimitiveArray
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
    return cast(void function())garrow_month_day_nano_interval_array_get_type != &gidSymbolNotFound ? garrow_month_day_nano_interval_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMonthDayNanoIntervalArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override MonthDayNanoIntervalArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.month_day_nano_interval_array.MonthDayNanoIntervalArray]
      Returns: New builder object
  */
  static MonthDayNanoIntervalArrayGidBuilder builder() nothrow
  {
    return new MonthDayNanoIntervalArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow24.buffer.Buffer data, gid_apache.arrow24.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowMonthDayNanoIntervalArray* _cretval;
    _cretval = garrow_month_day_nano_interval_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow24.month_day_nano.MonthDayNano getValue(long i) nothrow
  {
    GArrowMonthDayNano* _cretval;
    _cretval = garrow_month_day_nano_interval_array_get_value(cast(GArrowMonthDayNanoIntervalArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.month_day_nano.MonthDayNano)(cast(GArrowMonthDayNano*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.month_day_nano.MonthDayNano[] getValues() nothrow
  {
    GList* _cretval;
    _cretval = garrow_month_day_nano_interval_array_get_values(cast(GArrowMonthDayNanoIntervalArray*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow24.month_day_nano.MonthDayNano, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.month_day_nano_interval_array.MonthDayNanoIntervalArray]
class MonthDayNanoIntervalArrayGidBuilderImpl(T) : gid_apache.arrow24.primitive_array.PrimitiveArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.month_day_nano_interval_array.MonthDayNanoIntervalArray]
final class MonthDayNanoIntervalArrayGidBuilder : MonthDayNanoIntervalArrayGidBuilderImpl!MonthDayNanoIntervalArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MonthDayNanoIntervalArray build() nothrow
  {
    return new MonthDayNanoIntervalArray(cast(void*)createGObject(MonthDayNanoIntervalArray._getGType), Yes.Take);
  }
}
