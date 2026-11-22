/// Module for [UInt32Array] class
module gid_apache.arrow25.uint32_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.buffer;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.numeric_array;
import gid_apache.arrow25.types;

/** */
class UInt32Array : gid_apache.arrow25.numeric_array.NumericArray
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
    return cast(void function())garrow_uint32_array_get_type != &gidSymbolNotFound ? garrow_uint32_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt32Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt32Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.uint32_array.UInt32Array]
      Returns: New builder object
  */
  static UInt32ArrayGidBuilder builder() nothrow
  {
    return new UInt32ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow25.buffer.Buffer data, gid_apache.arrow25.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowUInt32Array* _cretval;
    _cretval = garrow_uint32_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  uint getValue(long i) nothrow
  {
    uint _retval;
    _retval = garrow_uint32_array_get_value(cast(GArrowUInt32Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  uint[] getValues() nothrow
  {
    const(uint)* _cretval;
    long _cretlength;
    _cretval = garrow_uint32_array_get_values(cast(GArrowUInt32Array*)this._cPtr, &_cretlength);
    uint[] _retval;

    if (_cretval)
    {
      _retval = cast(uint[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  ulong sum()
  {
    ulong _retval;
    GError *_err;
    _retval = garrow_uint32_array_sum(cast(GArrowUInt32Array*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.uint32_array.UInt32Array]
class UInt32ArrayGidBuilderImpl(T) : gid_apache.arrow25.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.uint32_array.UInt32Array]
final class UInt32ArrayGidBuilder : UInt32ArrayGidBuilderImpl!UInt32ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt32Array build() nothrow
  {
    return new UInt32Array(cast(void*)createGObject(UInt32Array._getGType), Yes.Take);
  }
}
