/// Module for [Date64Array] class
module gid_apache.arrow22.date64_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.numeric_array;
import gid_apache.arrow22.types;

/** */
class Date64Array : gid_apache.arrow22.numeric_array.NumericArray
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
    return cast(void function())garrow_date64_array_get_type != &gidSymbolNotFound ? garrow_date64_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDate64Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Date64Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.date64_array.Date64Array]
      Returns: New builder object
  */
  static Date64ArrayGidBuilder builder() nothrow
  {
    return new Date64ArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow22.buffer.Buffer data, gid_apache.arrow22.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowDate64Array* _cretval;
    _cretval = garrow_date64_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue(long i) nothrow
  {
    long _retval;
    _retval = garrow_date64_array_get_value(cast(GArrowDate64Array*)this._cPtr, i);
    return _retval;
  }

  /** */
  long[] getValues() nothrow
  {
    const(long)* _cretval;
    long _cretlength;
    _cretval = garrow_date64_array_get_values(cast(GArrowDate64Array*)this._cPtr, &_cretlength);
    long[] _retval;

    if (_cretval)
    {
      _retval = cast(long[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.date64_array.Date64Array]
class Date64ArrayGidBuilderImpl(T) : gid_apache.arrow22.numeric_array.NumericArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.date64_array.Date64Array]
final class Date64ArrayGidBuilder : Date64ArrayGidBuilderImpl!Date64ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Date64Array build() nothrow
  {
    return new Date64Array(cast(void*)createGObject(Date64Array._getGType), Yes.Take);
  }
}
