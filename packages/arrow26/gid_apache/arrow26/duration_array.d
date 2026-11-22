/// Module for [DurationArray] class
module gid_apache.arrow26.duration_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.duration_data_type;
import gid_apache.arrow26.numeric_array;
import gid_apache.arrow26.types;

/** */
class DurationArray : gid_apache.arrow26.numeric_array.NumericArray
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
    return cast(void function())garrow_duration_array_get_type != &gidSymbolNotFound ? garrow_duration_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDurationArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override DurationArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.duration_array.DurationArray]
      Returns: New builder object
  */
  static DurationArrayGidBuilder builder() nothrow
  {
    return new DurationArrayGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.duration_data_type.DurationDataType dataType, long length, gid_apache.arrow26.buffer.Buffer data, gid_apache.arrow26.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowDurationArray* _cretval;
    _cretval = garrow_duration_array_new(dataType ? cast(GArrowDurationDataType*)dataType._cPtr(No.Dup) : null, length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue(long i) nothrow
  {
    long _retval;
    _retval = garrow_duration_array_get_value(cast(GArrowDurationArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  long[] getValues() nothrow
  {
    const(long)* _cretval;
    long _cretlength;
    _cretval = garrow_duration_array_get_values(cast(GArrowDurationArray*)this._cPtr, &_cretlength);
    long[] _retval;

    if (_cretval)
    {
      _retval = cast(long[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.duration_array.DurationArray]
class DurationArrayGidBuilderImpl(T) : gid_apache.arrow26.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.duration_array.DurationArray]
final class DurationArrayGidBuilder : DurationArrayGidBuilderImpl!DurationArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DurationArray build() nothrow
  {
    return new DurationArray(cast(void*)createGObject(DurationArray._getGType), Yes.Take);
  }
}
