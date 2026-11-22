/// Module for [ChunkedArray] class
module gid_apache.arrow19.chunked_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.array;
import gid_apache.arrow19.boolean_array;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.data_type;
import gid_apache.arrow19.filter_options;
import gid_apache.arrow19.take_options;
import gid_apache.arrow19.types;
import gid_apache.arrow19.uint64_array;

/** */
class ChunkedArray : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_chunked_array_get_type != &gidSymbolNotFound ? garrow_chunked_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowChunkedArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override ChunkedArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.chunked_array.ChunkedArray]
      Returns: New builder object
  */
  static ChunkedArrayGidBuilder builder() nothrow
  {
    return new ChunkedArrayGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.array.Array[] chunks)
  {
    GArrowChunkedArray* _cretval;
    auto _chunks = gListFromD!(gid_apache.arrow19.array.Array)(chunks);
    scope(exit) containerFree!(GList*, gid_apache.arrow19.array.Array, GidOwnership.None)(_chunks);
    GError *_err;
    _cretval = garrow_chunked_array_new(_chunks, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow19.chunked_array.ChunkedArray newEmpty(gid_apache.arrow19.data_type.DataType dataType)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_new_empty(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.array.Array combine()
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_combine(cast(GArrowChunkedArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow19.chunked_array.ChunkedArray otherChunkedArray) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_chunked_array_equal(cast(GArrowChunkedArray*)this._cPtr, otherChunkedArray ? cast(GArrowChunkedArray*)otherChunkedArray._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow19.chunked_array.ChunkedArray filter(gid_apache.arrow19.boolean_array.BooleanArray filter, gid_apache.arrow19.filter_options.FilterOptions options = null)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_filter(cast(GArrowChunkedArray*)this._cPtr, filter ? cast(GArrowBooleanArray*)filter._cPtr(No.Dup) : null, options ? cast(GArrowFilterOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.chunked_array.ChunkedArray filterChunkedArray(gid_apache.arrow19.chunked_array.ChunkedArray filter, gid_apache.arrow19.filter_options.FilterOptions options = null)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_filter_chunked_array(cast(GArrowChunkedArray*)this._cPtr, filter ? cast(GArrowChunkedArray*)filter._cPtr(No.Dup) : null, options ? cast(GArrowFilterOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.array.Array getChunk(uint i) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_chunked_array_get_chunk(cast(GArrowChunkedArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.array.Array[] getChunks() nothrow
  {
    GList* _cretval;
    _cretval = garrow_chunked_array_get_chunks(cast(GArrowChunkedArray*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow19.array.Array, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  ulong getLength() nothrow
  {
    ulong _retval;
    _retval = garrow_chunked_array_get_length(cast(GArrowChunkedArray*)this._cPtr);
    return _retval;
  }

  /** */
  uint getNChunks() nothrow
  {
    uint _retval;
    _retval = garrow_chunked_array_get_n_chunks(cast(GArrowChunkedArray*)this._cPtr);
    return _retval;
  }

  /** */
  ulong getNNulls() nothrow
  {
    ulong _retval;
    _retval = garrow_chunked_array_get_n_nulls(cast(GArrowChunkedArray*)this._cPtr);
    return _retval;
  }

  /** */
  ulong getNRows() nothrow
  {
    ulong _retval;
    _retval = garrow_chunked_array_get_n_rows(cast(GArrowChunkedArray*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow19.data_type.DataType getValueDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_chunked_array_get_value_data_type(cast(GArrowChunkedArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.types.Type getValueType() nothrow
  {
    GArrowType _cretval;
    _cretval = garrow_chunked_array_get_value_type(cast(GArrowChunkedArray*)this._cPtr);
    gid_apache.arrow19.types.Type _retval = cast(gid_apache.arrow19.types.Type)_cretval;
    return _retval;
  }

  /** */
  gid_apache.arrow19.chunked_array.ChunkedArray slice(ulong offset, ulong length) nothrow
  {
    GArrowChunkedArray* _cretval;
    _cretval = garrow_chunked_array_slice(cast(GArrowChunkedArray*)this._cPtr, offset, length);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.uint64_array.UInt64Array sortIndices(gid_apache.arrow19.types.SortOrder order)
  {
    GArrowUInt64Array* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_sort_indices(cast(GArrowChunkedArray*)this._cPtr, order, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.uint64_array.UInt64Array)(cast(GArrowUInt64Array*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.chunked_array.ChunkedArray take(gid_apache.arrow19.array.Array indices, gid_apache.arrow19.take_options.TakeOptions options = null)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_take(cast(GArrowChunkedArray*)this._cPtr, indices ? cast(GArrowArray*)indices._cPtr(No.Dup) : null, options ? cast(GArrowTakeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.chunked_array.ChunkedArray takeChunkedArray(gid_apache.arrow19.chunked_array.ChunkedArray indices, gid_apache.arrow19.take_options.TakeOptions options = null)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_take_chunked_array(cast(GArrowChunkedArray*)this._cPtr, indices ? cast(GArrowChunkedArray*)indices._cPtr(No.Dup) : null, options ? cast(GArrowTakeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string toString_()
  {
    char* _cretval;
    GError *_err;
    _cretval = garrow_chunked_array_to_string(cast(GArrowChunkedArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.chunked_array.ChunkedArray]
class ChunkedArrayGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T chunkedArray(void* propval) nothrow
  {
    return setProperty("chunked-array", propval);
  }

  /** */
  T dataType(gid_apache.arrow19.data_type.DataType propval) nothrow
  {
    return setProperty("data-type", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.chunked_array.ChunkedArray]
final class ChunkedArrayGidBuilder : ChunkedArrayGidBuilderImpl!ChunkedArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ChunkedArray build() nothrow
  {
    return new ChunkedArray(cast(void*)createGObject(ChunkedArray._getGType), Yes.Take);
  }
}
