/// Module for [HalfFloatArray] class
module gid_apache.arrow21.half_float_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.buffer;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.numeric_array;
import gid_apache.arrow21.types;

/** */
class HalfFloatArray : gid_apache.arrow21.numeric_array.NumericArray
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
    return cast(void function())garrow_half_float_array_get_type != &gidSymbolNotFound ? garrow_half_float_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowHalfFloatArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override HalfFloatArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.half_float_array.HalfFloatArray]
      Returns: New builder object
  */
  static HalfFloatArrayGidBuilder builder() nothrow
  {
    return new HalfFloatArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow21.buffer.Buffer data, gid_apache.arrow21.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowHalfFloatArray* _cretval;
    _cretval = garrow_half_float_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  ushort getValue(long i) nothrow
  {
    ushort _retval;
    _retval = garrow_half_float_array_get_value(cast(GArrowHalfFloatArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  ushort[] getValues() nothrow
  {
    const(ushort)* _cretval;
    long _cretlength;
    _cretval = garrow_half_float_array_get_values(cast(GArrowHalfFloatArray*)this._cPtr, &_cretlength);
    ushort[] _retval;

    if (_cretval)
    {
      _retval = cast(ushort[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.half_float_array.HalfFloatArray]
class HalfFloatArrayGidBuilderImpl(T) : gid_apache.arrow21.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.half_float_array.HalfFloatArray]
final class HalfFloatArrayGidBuilder : HalfFloatArrayGidBuilderImpl!HalfFloatArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  HalfFloatArray build() nothrow
  {
    return new HalfFloatArray(cast(void*)createGObject(HalfFloatArray._getGType), Yes.Take);
  }
}
