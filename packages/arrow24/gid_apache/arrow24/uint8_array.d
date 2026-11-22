/// Module for [UInt8Array] class
module gid_apache.arrow24.uint8_array;

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
class UInt8Array : gid_apache.arrow24.numeric_array.NumericArray
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
    return cast(void function())garrow_uint8_array_get_type != &gidSymbolNotFound ? garrow_uint8_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt8Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt8Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.uint8_array.UInt8Array]
      Returns: New builder object
  */
  static UInt8ArrayGidBuilder builder() nothrow
  {
    return new UInt8ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow24.buffer.Buffer data, gid_apache.arrow24.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowUInt8Array* _cretval;
    _cretval = garrow_uint8_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  ubyte getValue(long i) nothrow
  {
    ubyte _retval;
    _retval = garrow_uint8_array_get_value(cast(GArrowUInt8Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  ubyte[] getValues() nothrow
  {
    const(ubyte)* _cretval;
    long _cretlength;
    _cretval = garrow_uint8_array_get_values(cast(GArrowUInt8Array*)this._cPtr, &_cretlength);
    ubyte[] _retval;

    if (_cretval)
    {
      _retval = cast(ubyte[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  ulong sum()
  {
    ulong _retval;
    GError *_err;
    _retval = garrow_uint8_array_sum(cast(GArrowUInt8Array*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.uint8_array.UInt8Array]
class UInt8ArrayGidBuilderImpl(T) : gid_apache.arrow24.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.uint8_array.UInt8Array]
final class UInt8ArrayGidBuilder : UInt8ArrayGidBuilderImpl!UInt8ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt8Array build() nothrow
  {
    return new UInt8Array(cast(void*)createGObject(UInt8Array._getGType), Yes.Take);
  }
}
