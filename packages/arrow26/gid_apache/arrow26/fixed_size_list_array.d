/// Module for [FixedSizeListArray] class
module gid_apache.arrow26.fixed_size_list_array;

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
class FixedSizeListArray : gid_apache.arrow26.array.Array
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
    return cast(void function())garrow_fixed_size_list_array_get_type != &gidSymbolNotFound ? garrow_fixed_size_list_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFixedSizeListArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedSizeListArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.fixed_size_list_array.FixedSizeListArray]
      Returns: New builder object
  */
  static FixedSizeListArrayGidBuilder builder() nothrow
  {
    return new FixedSizeListArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow26.array.Array rawValues() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.array.Array)("raw-values");
  }

  /** */
  this(gid_apache.arrow26.data_type.DataType dataType, long length, gid_apache.arrow26.array.Array values, gid_apache.arrow26.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowFixedSizeListArray* _cretval;
    _cretval = garrow_fixed_size_list_array_new(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, length, values ? cast(GArrowArray*)values._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  int getListSize() nothrow
  {
    int _retval;
    _retval = garrow_fixed_size_list_array_get_list_size(cast(GArrowFixedSizeListArray*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow26.array.Array getValue(long i) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_fixed_size_list_array_get_value(cast(GArrowFixedSizeListArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getValueLength(long i) nothrow
  {
    int _retval;
    _retval = garrow_fixed_size_list_array_get_value_length(cast(GArrowFixedSizeListArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  long getValueOffset(long i) nothrow
  {
    long _retval;
    _retval = garrow_fixed_size_list_array_get_value_offset(cast(GArrowFixedSizeListArray*)this._cPtr, i);
    return _retval;
  }

  alias getValueType = gid_apache.arrow26.array.Array.getValueType;

  /** */
  gid_apache.arrow26.data_type.DataType getValueType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_fixed_size_list_array_get_value_type(cast(GArrowFixedSizeListArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.array.Array getValues() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_fixed_size_list_array_get_values(cast(GArrowFixedSizeListArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.fixed_size_list_array.FixedSizeListArray]
class FixedSizeListArrayGidBuilderImpl(T) : gid_apache.arrow26.array.ArrayGidBuilderImpl!T
{

  /** */
  T rawValues(gid_apache.arrow26.array.Array propval) nothrow
  {
    return setProperty("raw-values", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.fixed_size_list_array.FixedSizeListArray]
final class FixedSizeListArrayGidBuilder : FixedSizeListArrayGidBuilderImpl!FixedSizeListArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedSizeListArray build() nothrow
  {
    return new FixedSizeListArray(cast(void*)createGObject(FixedSizeListArray._getGType), Yes.Take);
  }
}
