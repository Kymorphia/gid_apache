/// Module for [ListArray] class
module gid_apache.arrow20.list_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.array;
import gid_apache.arrow20.buffer;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.data_type;
import gid_apache.arrow20.types;

/** */
class ListArray : gid_apache.arrow20.array.Array
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
    return cast(void function())garrow_list_array_get_type != &gidSymbolNotFound ? garrow_list_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowListArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override ListArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.list_array.ListArray]
      Returns: New builder object
  */
  static ListArrayGidBuilder builder() nothrow
  {
    return new ListArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow20.array.Array rawValues() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow20.array.Array)("raw-values");
  }

  /** */
  this(gid_apache.arrow20.data_type.DataType dataType, long length, gid_apache.arrow20.buffer.Buffer valueOffsets, gid_apache.arrow20.array.Array values, gid_apache.arrow20.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowListArray* _cretval;
    _cretval = garrow_list_array_new(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, length, valueOffsets ? cast(GArrowBuffer*)valueOffsets._cPtr(No.Dup) : null, values ? cast(GArrowArray*)values._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow20.array.Array getValue(long i) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_list_array_get_value(cast(GArrowListArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getValueLength(long i) nothrow
  {
    int _retval;
    _retval = garrow_list_array_get_value_length(cast(GArrowListArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  int getValueOffset(long i) nothrow
  {
    int _retval;
    _retval = garrow_list_array_get_value_offset(cast(GArrowListArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  int[] getValueOffsets() nothrow
  {
    const(int)* _cretval;
    long _cretlength;
    _cretval = garrow_list_array_get_value_offsets(cast(GArrowListArray*)this._cPtr, &_cretlength);
    int[] _retval;

    if (_cretval)
    {
      _retval = cast(int[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  alias getValueType = gid_apache.arrow20.array.Array.getValueType;

  /** */
  gid_apache.arrow20.data_type.DataType getValueType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_list_array_get_value_type(cast(GArrowListArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.array.Array getValues() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_list_array_get_values(cast(GArrowListArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.list_array.ListArray]
class ListArrayGidBuilderImpl(T) : gid_apache.arrow20.array.ArrayGidBuilderImpl!T
{

  /** */
  T rawValues(gid_apache.arrow20.array.Array propval) nothrow
  {
    return setProperty("raw-values", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.list_array.ListArray]
final class ListArrayGidBuilder : ListArrayGidBuilderImpl!ListArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ListArray build() nothrow
  {
    return new ListArray(cast(void*)createGObject(ListArray._getGType), Yes.Take);
  }
}
