/// Module for [Int32Array] class
module gid_apache.arrow19.int32_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.buffer;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.numeric_array;
import gid_apache.arrow19.types;

/** */
class Int32Array : gid_apache.arrow19.numeric_array.NumericArray
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
    return cast(void function())garrow_int32_array_get_type != &gidSymbolNotFound ? garrow_int32_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt32Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int32Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.int32_array.Int32Array]
      Returns: New builder object
  */
  static Int32ArrayGidBuilder builder() nothrow
  {
    return new Int32ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow19.buffer.Buffer data, gid_apache.arrow19.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowInt32Array* _cretval;
    _cretval = garrow_int32_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  int getValue(long i) nothrow
  {
    int _retval;
    _retval = garrow_int32_array_get_value(cast(GArrowInt32Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  int[] getValues() nothrow
  {
    const(int)* _cretval;
    long _cretlength;
    _cretval = garrow_int32_array_get_values(cast(GArrowInt32Array*)this._cPtr, &_cretlength);
    int[] _retval;

    if (_cretval)
    {
      _retval = cast(int[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  long sum()
  {
    long _retval;
    GError *_err;
    _retval = garrow_int32_array_sum(cast(GArrowInt32Array*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.int32_array.Int32Array]
class Int32ArrayGidBuilderImpl(T) : gid_apache.arrow19.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.int32_array.Int32Array]
final class Int32ArrayGidBuilder : Int32ArrayGidBuilderImpl!Int32ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int32Array build() nothrow
  {
    return new Int32Array(cast(void*)createGObject(Int32Array._getGType), Yes.Take);
  }
}
