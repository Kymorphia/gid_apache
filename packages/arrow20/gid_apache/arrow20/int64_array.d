/// Module for [Int64Array] class
module gid_apache.arrow20.int64_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.buffer;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.numeric_array;
import gid_apache.arrow20.types;

/** */
class Int64Array : gid_apache.arrow20.numeric_array.NumericArray
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
    return cast(void function())garrow_int64_array_get_type != &gidSymbolNotFound ? garrow_int64_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt64Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int64Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.int64_array.Int64Array]
      Returns: New builder object
  */
  static Int64ArrayGidBuilder builder() nothrow
  {
    return new Int64ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow20.buffer.Buffer data, gid_apache.arrow20.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowInt64Array* _cretval;
    _cretval = garrow_int64_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue(long i) nothrow
  {
    long _retval;
    _retval = garrow_int64_array_get_value(cast(GArrowInt64Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  long[] getValues() nothrow
  {
    const(long)* _cretval;
    long _cretlength;
    _cretval = garrow_int64_array_get_values(cast(GArrowInt64Array*)this._cPtr, &_cretlength);
    long[] _retval;

    if (_cretval)
    {
      _retval = cast(long[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  long sum()
  {
    long _retval;
    GError *_err;
    _retval = garrow_int64_array_sum(cast(GArrowInt64Array*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.int64_array.Int64Array]
class Int64ArrayGidBuilderImpl(T) : gid_apache.arrow20.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.int64_array.Int64Array]
final class Int64ArrayGidBuilder : Int64ArrayGidBuilderImpl!Int64ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int64Array build() nothrow
  {
    return new Int64Array(cast(void*)createGObject(Int64Array._getGType), Yes.Take);
  }
}
