/// Module for [LargeListArray] class
module gid_apache.arrow26.large_list_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.array;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.data_type;
import gid_apache.arrow26.types;

/** */
class LargeListArray : gid_apache.arrow26.array.Array
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
    return cast(void function())garrow_large_list_array_get_type != &gidSymbolNotFound ? garrow_large_list_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeListArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeListArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.large_list_array.LargeListArray]
      Returns: New builder object
  */
  static LargeListArrayGidBuilder builder() nothrow
  {
    return new LargeListArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow26.array.Array rawValues() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.array.Array)("raw-values");
  }

  /** */
  this(gid_apache.arrow26.data_type.DataType dataType, long length, gid_apache.arrow26.buffer.Buffer valueOffsets, gid_apache.arrow26.array.Array values, gid_apache.arrow26.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowLargeListArray* _cretval;
    _cretval = garrow_large_list_array_new(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, length, valueOffsets ? cast(GArrowBuffer*)valueOffsets._cPtr(No.Dup) : null, values ? cast(GArrowArray*)values._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow26.array.Array getValue(long i) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_large_list_array_get_value(cast(GArrowLargeListArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getValueLength(long i) nothrow
  {
    long _retval;
    _retval = garrow_large_list_array_get_value_length(cast(GArrowLargeListArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  long getValueOffset(long i) nothrow
  {
    long _retval;
    _retval = garrow_large_list_array_get_value_offset(cast(GArrowLargeListArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  long[] getValueOffsets() nothrow
  {
    const(long)* _cretval;
    long _cretlength;
    _cretval = garrow_large_list_array_get_value_offsets(cast(GArrowLargeListArray*)this._cPtr, &_cretlength);
    long[] _retval;

    if (_cretval)
    {
      _retval = cast(long[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  gid_apache.arrow26.buffer.Buffer getValueOffsetsBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_large_list_array_get_value_offsets_buffer(cast(GArrowLargeListArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  alias getValueType = gid_apache.arrow26.array.Array.getValueType;

  /** */
  gid_apache.arrow26.data_type.DataType getValueType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_large_list_array_get_value_type(cast(GArrowLargeListArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.array.Array getValues() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_large_list_array_get_values(cast(GArrowLargeListArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.large_list_array.LargeListArray]
class LargeListArrayGidBuilderImpl(T) : gid_apache.arrow26.array.ArrayGidBuilderImpl!T
{

  /** */
  T rawValues(gid_apache.arrow26.array.Array propval) nothrow
  {
    return setProperty("raw-values", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.large_list_array.LargeListArray]
final class LargeListArrayGidBuilder : LargeListArrayGidBuilderImpl!LargeListArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeListArray build() nothrow
  {
    return new LargeListArray(cast(void*)createGObject(LargeListArray._getGType), Yes.Take);
  }
}
