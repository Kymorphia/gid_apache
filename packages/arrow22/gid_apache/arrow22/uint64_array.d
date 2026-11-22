/// Module for [UInt64Array] class
module gid_apache.arrow22.uint64_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.numeric_array;
import gid_apache.arrow22.types;

/** */
class UInt64Array : gid_apache.arrow22.numeric_array.NumericArray
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
    return cast(void function())garrow_uint64_array_get_type != &gidSymbolNotFound ? garrow_uint64_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt64Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt64Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.uint64_array.UInt64Array]
      Returns: New builder object
  */
  static UInt64ArrayGidBuilder builder() nothrow
  {
    return new UInt64ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow22.buffer.Buffer data, gid_apache.arrow22.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowUInt64Array* _cretval;
    _cretval = garrow_uint64_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  ulong getValue(long i) nothrow
  {
    ulong _retval;
    _retval = garrow_uint64_array_get_value(cast(GArrowUInt64Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  ulong[] getValues() nothrow
  {
    const(ulong)* _cretval;
    long _cretlength;
    _cretval = garrow_uint64_array_get_values(cast(GArrowUInt64Array*)this._cPtr, &_cretlength);
    ulong[] _retval;

    if (_cretval)
    {
      _retval = cast(ulong[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  ulong sum()
  {
    ulong _retval;
    GError *_err;
    _retval = garrow_uint64_array_sum(cast(GArrowUInt64Array*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.uint64_array.UInt64Array]
class UInt64ArrayGidBuilderImpl(T) : gid_apache.arrow22.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.uint64_array.UInt64Array]
final class UInt64ArrayGidBuilder : UInt64ArrayGidBuilderImpl!UInt64ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt64Array build() nothrow
  {
    return new UInt64Array(cast(void*)createGObject(UInt64Array._getGType), Yes.Take);
  }
}
