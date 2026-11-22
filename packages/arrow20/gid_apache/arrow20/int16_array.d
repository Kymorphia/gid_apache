/// Module for [Int16Array] class
module gid_apache.arrow20.int16_array;

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
class Int16Array : gid_apache.arrow20.numeric_array.NumericArray
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
    return cast(void function())garrow_int16_array_get_type != &gidSymbolNotFound ? garrow_int16_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt16Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int16Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.int16_array.Int16Array]
      Returns: New builder object
  */
  static Int16ArrayGidBuilder builder() nothrow
  {
    return new Int16ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow20.buffer.Buffer data, gid_apache.arrow20.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowInt16Array* _cretval;
    _cretval = garrow_int16_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  short getValue(long i) nothrow
  {
    short _retval;
    _retval = garrow_int16_array_get_value(cast(GArrowInt16Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  short[] getValues() nothrow
  {
    const(short)* _cretval;
    long _cretlength;
    _cretval = garrow_int16_array_get_values(cast(GArrowInt16Array*)this._cPtr, &_cretlength);
    short[] _retval;

    if (_cretval)
    {
      _retval = cast(short[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  long sum()
  {
    long _retval;
    GError *_err;
    _retval = garrow_int16_array_sum(cast(GArrowInt16Array*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.int16_array.Int16Array]
class Int16ArrayGidBuilderImpl(T) : gid_apache.arrow20.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.int16_array.Int16Array]
final class Int16ArrayGidBuilder : Int16ArrayGidBuilderImpl!Int16ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int16Array build() nothrow
  {
    return new Int16Array(cast(void*)createGObject(Int16Array._getGType), Yes.Take);
  }
}
