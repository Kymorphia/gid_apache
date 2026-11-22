/// Module for [DayTimeIntervalArray] class
module gid_apache.arrow22.day_time_interval_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.day_millisecond;
import gid_apache.arrow22.primitive_array;
import gid_apache.arrow22.types;

/** */
class DayTimeIntervalArray : gid_apache.arrow22.primitive_array.PrimitiveArray
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
    return cast(void function())garrow_day_time_interval_array_get_type != &gidSymbolNotFound ? garrow_day_time_interval_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDayTimeIntervalArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override DayTimeIntervalArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.day_time_interval_array.DayTimeIntervalArray]
      Returns: New builder object
  */
  static DayTimeIntervalArrayGidBuilder builder() nothrow
  {
    return new DayTimeIntervalArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow22.buffer.Buffer data, gid_apache.arrow22.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowDayTimeIntervalArray* _cretval;
    _cretval = garrow_day_time_interval_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow22.day_millisecond.DayMillisecond getValue(long i) nothrow
  {
    GArrowDayMillisecond* _cretval;
    _cretval = garrow_day_time_interval_array_get_value(cast(GArrowDayTimeIntervalArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.day_millisecond.DayMillisecond)(cast(GArrowDayMillisecond*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.day_millisecond.DayMillisecond[] getValues() nothrow
  {
    GList* _cretval;
    _cretval = garrow_day_time_interval_array_get_values(cast(GArrowDayTimeIntervalArray*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow22.day_millisecond.DayMillisecond, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.day_time_interval_array.DayTimeIntervalArray]
class DayTimeIntervalArrayGidBuilderImpl(T) : gid_apache.arrow22.primitive_array.PrimitiveArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.day_time_interval_array.DayTimeIntervalArray]
final class DayTimeIntervalArrayGidBuilder : DayTimeIntervalArrayGidBuilderImpl!DayTimeIntervalArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DayTimeIntervalArray build() nothrow
  {
    return new DayTimeIntervalArray(cast(void*)createGObject(DayTimeIntervalArray._getGType), Yes.Take);
  }
}
