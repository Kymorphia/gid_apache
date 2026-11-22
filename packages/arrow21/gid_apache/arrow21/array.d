/// Module for [Array] class
module gid_apache.arrow21.array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.array_statistics;
import gid_apache.arrow21.boolean_array;
import gid_apache.arrow21.buffer;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.cast_options;
import gid_apache.arrow21.chunked_array;
import gid_apache.arrow21.count_options;
import gid_apache.arrow21.data_type;
import gid_apache.arrow21.dictionary_array;
import gid_apache.arrow21.equal_options;
import gid_apache.arrow21.filter_options;
import gid_apache.arrow21.run_end_encode_options;
import gid_apache.arrow21.run_end_encoded_array;
import gid_apache.arrow21.struct_array;
import gid_apache.arrow21.take_options;
import gid_apache.arrow21.types;
import gid_apache.arrow21.uint64_array;

/** */
class Array : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_array_get_type != &gidSymbolNotFound ? garrow_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.array.Array]
      Returns: New builder object
  */
  static ArrayGidBuilder builder() nothrow
  {
    return new ArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow21.buffer.Buffer buffer1() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.buffer.Buffer)("buffer1");
  }

  /** */
  @property gid_apache.arrow21.buffer.Buffer buffer2() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.buffer.Buffer)("buffer2");
  }

  /** */
  @property gid_apache.arrow21.buffer.Buffer nullBitmap() nothrow
  {
    return getNullBitmap();
  }

  /** */
  @property gid_apache.arrow21.array.Array parent() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.array.Array)("parent");
  }

  /** */
  @property gid_apache.arrow21.data_type.DataType valueDataType() nothrow
  {
    return getValueDataType();
  }

  /** */
  static gid_apache.arrow21.array.Array import_(void* cAbiArray, gid_apache.arrow21.data_type.DataType dataType)
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_array_import(cAbiArray, dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array cast_(gid_apache.arrow21.data_type.DataType targetDataType, gid_apache.arrow21.cast_options.CastOptions options = null)
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_array_cast(cast(GArrowArray*)this._cPtr, targetDataType ? cast(GArrowDataType*)targetDataType._cPtr(No.Dup) : null, options ? cast(GArrowCastOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array concatenate(gid_apache.arrow21.array.Array[] otherArrays)
  {
    GArrowArray* _cretval;
    auto _otherArrays = gListFromD!(gid_apache.arrow21.array.Array)(otherArrays);
    scope(exit) containerFree!(GList*, gid_apache.arrow21.array.Array, GidOwnership.None)(_otherArrays);
    GError *_err;
    _cretval = garrow_array_concatenate(cast(GArrowArray*)this._cPtr, _otherArrays, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long count(gid_apache.arrow21.count_options.CountOptions options = null)
  {
    long _retval;
    GError *_err;
    _retval = garrow_array_count(cast(GArrowArray*)this._cPtr, options ? cast(GArrowCountOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.struct_array.StructArray countValues()
  {
    GArrowStructArray* _cretval;
    GError *_err;
    _cretval = garrow_array_count_values(cast(GArrowArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.struct_array.StructArray)(cast(GArrowStructArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.dictionary_array.DictionaryArray dictionaryEncode()
  {
    GArrowDictionaryArray* _cretval;
    GError *_err;
    _cretval = garrow_array_dictionary_encode(cast(GArrowArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.dictionary_array.DictionaryArray)(cast(GArrowDictionaryArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string diffUnified(gid_apache.arrow21.array.Array otherArray) nothrow
  {
    char* _cretval;
    _cretval = garrow_array_diff_unified(cast(GArrowArray*)this._cPtr, otherArray ? cast(GArrowArray*)otherArray._cPtr(No.Dup) : null);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow21.array.Array otherArray) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_equal(cast(GArrowArray*)this._cPtr, otherArray ? cast(GArrowArray*)otherArray._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool equalApprox(gid_apache.arrow21.array.Array otherArray) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_equal_approx(cast(GArrowArray*)this._cPtr, otherArray ? cast(GArrowArray*)otherArray._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool equalOptions(gid_apache.arrow21.array.Array otherArray, gid_apache.arrow21.equal_options.EqualOptions options = null) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_equal_options(cast(GArrowArray*)this._cPtr, otherArray ? cast(GArrowArray*)otherArray._cPtr(No.Dup) : null, options ? cast(GArrowEqualOptions*)options._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool equalRange(long startIndex, gid_apache.arrow21.array.Array otherArray, long otherStartIndex, long endIndex, gid_apache.arrow21.equal_options.EqualOptions options = null) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_equal_range(cast(GArrowArray*)this._cPtr, startIndex, otherArray ? cast(GArrowArray*)otherArray._cPtr(No.Dup) : null, otherStartIndex, endIndex, options ? cast(GArrowEqualOptions*)options._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool export_(out void* cAbiArray, out void* cAbiSchema)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_export(cast(GArrowArray*)this._cPtr, cast(void**)&cAbiArray, cast(void**)&cAbiSchema, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array filter(gid_apache.arrow21.boolean_array.BooleanArray filter, gid_apache.arrow21.filter_options.FilterOptions options = null)
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_array_filter(cast(GArrowArray*)this._cPtr, filter ? cast(GArrowBooleanArray*)filter._cPtr(No.Dup) : null, options ? cast(GArrowFilterOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getLength() nothrow
  {
    long _retval;
    _retval = garrow_array_get_length(cast(GArrowArray*)this._cPtr);
    return _retval;
  }

  /** */
  long getNNulls() nothrow
  {
    long _retval;
    _retval = garrow_array_get_n_nulls(cast(GArrowArray*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow21.buffer.Buffer getNullBitmap() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_array_get_null_bitmap(cast(GArrowArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getOffset() nothrow
  {
    long _retval;
    _retval = garrow_array_get_offset(cast(GArrowArray*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array_statistics.ArrayStatistics getStatistics() nothrow
  {
    GArrowArrayStatistics* _cretval;
    _cretval = garrow_array_get_statistics(cast(GArrowArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array_statistics.ArrayStatistics)(cast(GArrowArrayStatistics*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.data_type.DataType getValueDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_array_get_value_data_type(cast(GArrowArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.types.Type getValueType() nothrow
  {
    GArrowType _cretval;
    _cretval = garrow_array_get_value_type(cast(GArrowArray*)this._cPtr);
    gid_apache.arrow21.types.Type _retval = cast(gid_apache.arrow21.types.Type)_cretval;
    return _retval;
  }

  /** */
  gid_apache.arrow21.boolean_array.BooleanArray isIn(gid_apache.arrow21.array.Array right)
  {
    GArrowBooleanArray* _cretval;
    GError *_err;
    _cretval = garrow_array_is_in(cast(GArrowArray*)this._cPtr, right ? cast(GArrowArray*)right._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.boolean_array.BooleanArray)(cast(GArrowBooleanArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.boolean_array.BooleanArray isInChunkedArray(gid_apache.arrow21.chunked_array.ChunkedArray right)
  {
    GArrowBooleanArray* _cretval;
    GError *_err;
    _cretval = garrow_array_is_in_chunked_array(cast(GArrowArray*)this._cPtr, right ? cast(GArrowChunkedArray*)right._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.boolean_array.BooleanArray)(cast(GArrowBooleanArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool isNull(long i) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_is_null(cast(GArrowArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  bool isValid(long i) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_is_valid(cast(GArrowArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  gid_apache.arrow21.run_end_encoded_array.RunEndEncodedArray runEndEncode(gid_apache.arrow21.run_end_encode_options.RunEndEncodeOptions options = null)
  {
    GArrowRunEndEncodedArray* _cretval;
    GError *_err;
    _cretval = garrow_array_run_end_encode(cast(GArrowArray*)this._cPtr, options ? cast(GArrowRunEndEncodeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.run_end_encoded_array.RunEndEncodedArray)(cast(GArrowRunEndEncodedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array slice(long offset, long length) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_array_slice(cast(GArrowArray*)this._cPtr, offset, length);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.uint64_array.UInt64Array sortIndices(gid_apache.arrow21.types.SortOrder order)
  {
    GArrowUInt64Array* _cretval;
    GError *_err;
    _cretval = garrow_array_sort_indices(cast(GArrowArray*)this._cPtr, order, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.uint64_array.UInt64Array)(cast(GArrowUInt64Array*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.uint64_array.UInt64Array sortToIndices()
  {
    GArrowUInt64Array* _cretval;
    GError *_err;
    _cretval = garrow_array_sort_to_indices(cast(GArrowArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.uint64_array.UInt64Array)(cast(GArrowUInt64Array*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array take(gid_apache.arrow21.array.Array indices, gid_apache.arrow21.take_options.TakeOptions options = null)
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_array_take(cast(GArrowArray*)this._cPtr, indices ? cast(GArrowArray*)indices._cPtr(No.Dup) : null, options ? cast(GArrowTakeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.chunked_array.ChunkedArray takeChunkedArray(gid_apache.arrow21.chunked_array.ChunkedArray indices, gid_apache.arrow21.take_options.TakeOptions options = null)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = garrow_array_take_chunked_array(cast(GArrowArray*)this._cPtr, indices ? cast(GArrowChunkedArray*)indices._cPtr(No.Dup) : null, options ? cast(GArrowTakeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string toString_()
  {
    char* _cretval;
    GError *_err;
    _cretval = garrow_array_to_string(cast(GArrowArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array unique()
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_array_unique(cast(GArrowArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool validate()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_validate(cast(GArrowArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool validateFull()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_validate_full(cast(GArrowArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array view(gid_apache.arrow21.data_type.DataType returnType)
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_array_view(cast(GArrowArray*)this._cPtr, returnType ? cast(GArrowDataType*)returnType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.array.Array]
class ArrayGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T array(void* propval) nothrow
  {
    return setProperty("array", propval);
  }

  /** */
  T buffer1(gid_apache.arrow21.buffer.Buffer propval) nothrow
  {
    return setProperty("buffer1", propval);
  }

  /** */
  T buffer2(gid_apache.arrow21.buffer.Buffer propval) nothrow
  {
    return setProperty("buffer2", propval);
  }

  /** */
  T nullBitmap(gid_apache.arrow21.buffer.Buffer propval) nothrow
  {
    return setProperty("null-bitmap", propval);
  }

  /** */
  T parent(gid_apache.arrow21.array.Array propval) nothrow
  {
    return setProperty("parent", propval);
  }

  /** */
  T valueDataType(gid_apache.arrow21.data_type.DataType propval) nothrow
  {
    return setProperty("value-data-type", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.array.Array]
final class ArrayGidBuilder : ArrayGidBuilderImpl!ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Array build() nothrow
  {
    return new Array(cast(void*)createGObject(Array._getGType), Yes.Take);
  }
}
