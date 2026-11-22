/// Module for [Time32Array] class
module gid_apache.arrow23.time32_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.buffer;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.numeric_array;
import gid_apache.arrow23.time32_data_type;
import gid_apache.arrow23.types;

/** */
class Time32Array : gid_apache.arrow23.numeric_array.NumericArray
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
    return cast(void function())garrow_time32_array_get_type != &gidSymbolNotFound ? garrow_time32_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTime32Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Time32Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.time32_array.Time32Array]
      Returns: New builder object
  */
  static Time32ArrayGidBuilder builder() nothrow
  {
    return new Time32ArrayGidBuilder;
  }

  /** */
  this(gid_apache.arrow23.time32_data_type.Time32DataType dataType, long length, gid_apache.arrow23.buffer.Buffer data, gid_apache.arrow23.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowTime32Array* _cretval;
    _cretval = garrow_time32_array_new(dataType ? cast(GArrowTime32DataType*)dataType._cPtr(No.Dup) : null, length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  int getValue(long i) nothrow
  {
    int _retval;
    _retval = garrow_time32_array_get_value(cast(GArrowTime32Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  int[] getValues() nothrow
  {
    const(int)* _cretval;
    long _cretlength;
    _cretval = garrow_time32_array_get_values(cast(GArrowTime32Array*)this._cPtr, &_cretlength);
    int[] _retval;

    if (_cretval)
    {
      _retval = cast(int[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.time32_array.Time32Array]
class Time32ArrayGidBuilderImpl(T) : gid_apache.arrow23.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.time32_array.Time32Array]
final class Time32ArrayGidBuilder : Time32ArrayGidBuilderImpl!Time32ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Time32Array build() nothrow
  {
    return new Time32Array(cast(void*)createGObject(Time32Array._getGType), Yes.Take);
  }
}
