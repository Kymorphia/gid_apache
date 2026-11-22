/// Module for [MonthIntervalArray] class
module gid_apache.arrow22.month_interval_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.numeric_array;
import gid_apache.arrow22.types;

/** */
class MonthIntervalArray : gid_apache.arrow22.numeric_array.NumericArray
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
    return cast(void function())garrow_month_interval_array_get_type != &gidSymbolNotFound ? garrow_month_interval_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMonthIntervalArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override MonthIntervalArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.month_interval_array.MonthIntervalArray]
      Returns: New builder object
  */
  static MonthIntervalArrayGidBuilder builder() nothrow
  {
    return new MonthIntervalArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow22.buffer.Buffer data, gid_apache.arrow22.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowMonthIntervalArray* _cretval;
    _cretval = garrow_month_interval_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  int getValue(long i) nothrow
  {
    int _retval;
    _retval = garrow_month_interval_array_get_value(cast(GArrowMonthIntervalArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  int[] getValues() nothrow
  {
    const(int)* _cretval;
    long _cretlength;
    _cretval = garrow_month_interval_array_get_values(cast(GArrowMonthIntervalArray*)this._cPtr, &_cretlength);
    int[] _retval;

    if (_cretval)
    {
      _retval = cast(int[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.month_interval_array.MonthIntervalArray]
class MonthIntervalArrayGidBuilderImpl(T) : gid_apache.arrow22.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.month_interval_array.MonthIntervalArray]
final class MonthIntervalArrayGidBuilder : MonthIntervalArrayGidBuilderImpl!MonthIntervalArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MonthIntervalArray build() nothrow
  {
    return new MonthIntervalArray(cast(void*)createGObject(MonthIntervalArray._getGType), Yes.Take);
  }
}
