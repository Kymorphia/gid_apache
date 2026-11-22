/// Module for [TimestampArray] class
module gid_apache.arrow19.timestamp_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.buffer;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.numeric_array;
import gid_apache.arrow19.timestamp_data_type;
import gid_apache.arrow19.types;

/** */
class TimestampArray : gid_apache.arrow19.numeric_array.NumericArray
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
    return cast(void function())garrow_timestamp_array_get_type != &gidSymbolNotFound ? garrow_timestamp_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTimestampArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override TimestampArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.timestamp_array.TimestampArray]
      Returns: New builder object
  */
  static TimestampArrayGidBuilder builder() nothrow
  {
    return new TimestampArrayGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.timestamp_data_type.TimestampDataType dataType, long length, gid_apache.arrow19.buffer.Buffer data, gid_apache.arrow19.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowTimestampArray* _cretval;
    _cretval = garrow_timestamp_array_new(dataType ? cast(GArrowTimestampDataType*)dataType._cPtr(No.Dup) : null, length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue(long i) nothrow
  {
    long _retval;
    _retval = garrow_timestamp_array_get_value(cast(GArrowTimestampArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  long[] getValues() nothrow
  {
    const(long)* _cretval;
    long _cretlength;
    _cretval = garrow_timestamp_array_get_values(cast(GArrowTimestampArray*)this._cPtr, &_cretlength);
    long[] _retval;

    if (_cretval)
    {
      _retval = cast(long[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.timestamp_array.TimestampArray]
class TimestampArrayGidBuilderImpl(T) : gid_apache.arrow19.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.timestamp_array.TimestampArray]
final class TimestampArrayGidBuilder : TimestampArrayGidBuilderImpl!TimestampArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TimestampArray build() nothrow
  {
    return new TimestampArray(cast(void*)createGObject(TimestampArray._getGType), Yes.Take);
  }
}
