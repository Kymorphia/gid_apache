/// Module for [DoubleArray] class
module gid_apache.arrow20.double_array;

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
class DoubleArray : gid_apache.arrow20.numeric_array.NumericArray
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
    return cast(void function())garrow_double_array_get_type != &gidSymbolNotFound ? garrow_double_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDoubleArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override DoubleArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.double_array.DoubleArray]
      Returns: New builder object
  */
  static DoubleArrayGidBuilder builder() nothrow
  {
    return new DoubleArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow20.buffer.Buffer data, gid_apache.arrow20.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowDoubleArray* _cretval;
    _cretval = garrow_double_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  double getValue(long i) nothrow
  {
    double _retval;
    _retval = garrow_double_array_get_value(cast(GArrowDoubleArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  double[] getValues() nothrow
  {
    const(double)* _cretval;
    long _cretlength;
    _cretval = garrow_double_array_get_values(cast(GArrowDoubleArray*)this._cPtr, &_cretlength);
    double[] _retval;

    if (_cretval)
    {
      _retval = cast(double[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  double sum()
  {
    double _retval;
    GError *_err;
    _retval = garrow_double_array_sum(cast(GArrowDoubleArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.double_array.DoubleArray]
class DoubleArrayGidBuilderImpl(T) : gid_apache.arrow20.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.double_array.DoubleArray]
final class DoubleArrayGidBuilder : DoubleArrayGidBuilderImpl!DoubleArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DoubleArray build() nothrow
  {
    return new DoubleArray(cast(void*)createGObject(DoubleArray._getGType), Yes.Take);
  }
}
