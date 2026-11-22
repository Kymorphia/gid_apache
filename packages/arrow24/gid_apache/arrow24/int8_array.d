/// Module for [Int8Array] class
module gid_apache.arrow24.int8_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.buffer;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.numeric_array;
import gid_apache.arrow24.types;

/** */
class Int8Array : gid_apache.arrow24.numeric_array.NumericArray
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
    return cast(void function())garrow_int8_array_get_type != &gidSymbolNotFound ? garrow_int8_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt8Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int8Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.int8_array.Int8Array]
      Returns: New builder object
  */
  static Int8ArrayGidBuilder builder() nothrow
  {
    return new Int8ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow24.buffer.Buffer data, gid_apache.arrow24.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowInt8Array* _cretval;
    _cretval = garrow_int8_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  byte getValue(long i) nothrow
  {
    byte _retval;
    _retval = garrow_int8_array_get_value(cast(GArrowInt8Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  byte[] getValues() nothrow
  {
    const(byte)* _cretval;
    long _cretlength;
    _cretval = garrow_int8_array_get_values(cast(GArrowInt8Array*)this._cPtr, &_cretlength);
    byte[] _retval;

    if (_cretval)
    {
      _retval = cast(byte[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  long sum()
  {
    long _retval;
    GError *_err;
    _retval = garrow_int8_array_sum(cast(GArrowInt8Array*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.int8_array.Int8Array]
class Int8ArrayGidBuilderImpl(T) : gid_apache.arrow24.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.int8_array.Int8Array]
final class Int8ArrayGidBuilder : Int8ArrayGidBuilderImpl!Int8ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int8Array build() nothrow
  {
    return new Int8Array(cast(void*)createGObject(Int8Array._getGType), Yes.Take);
  }
}
