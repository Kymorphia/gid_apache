/// Module for [Table] class
module gid_apache.arrow23.table;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.array;
import gid_apache.arrow23.boolean_array;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.chunked_array;
import gid_apache.arrow23.feather_write_properties;
import gid_apache.arrow23.field;
import gid_apache.arrow23.filter_options;
import gid_apache.arrow23.output_stream;
import gid_apache.arrow23.record_batch;
import gid_apache.arrow23.schema;
import gid_apache.arrow23.sort_options;
import gid_apache.arrow23.table_concatenate_options;
import gid_apache.arrow23.take_options;
import gid_apache.arrow23.types;
import gid_apache.arrow23.uint64_array;

/** */
class Table : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_table_get_type != &gidSymbolNotFound ? garrow_table_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTable";
  }

  /** Returns `this`, for use in `with` statements. */
  override Table self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.table.Table]
      Returns: New builder object
  */
  static TableGidBuilder builder() nothrow
  {
    return new TableGidBuilder;
  }

  /** */
  static gid_apache.arrow23.table.Table newArrays(gid_apache.arrow23.schema.Schema schema, gid_apache.arrow23.array.Array[] arrays)
  {
    GArrowTable* _cretval;
    size_t _nArrays;
    if (arrays)
      _nArrays = cast(size_t)arrays.length;

    auto _arrays_arr = new GArrowArray*[](arrays.length);
    auto _arrays = cast(GArrowArray**)_arrays_arr.ptr;
    foreach (i, obj; arrays) _arrays[i] = obj ? cast(GArrowArray*)obj._cPtr(No.Dup) : null;
    GError *_err;
    _cretval = garrow_table_new_arrays(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, _arrays, _nArrays, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow23.table.Table newChunkedArrays(gid_apache.arrow23.schema.Schema schema, gid_apache.arrow23.chunked_array.ChunkedArray[] chunkedArrays)
  {
    GArrowTable* _cretval;
    size_t _nChunkedArrays;
    if (chunkedArrays)
      _nChunkedArrays = cast(size_t)chunkedArrays.length;

    auto _chunkedArrays_arr = new GArrowChunkedArray*[](chunkedArrays.length);
    auto _chunkedArrays = cast(GArrowChunkedArray**)_chunkedArrays_arr.ptr;
    foreach (i, obj; chunkedArrays) _chunkedArrays[i] = obj ? cast(GArrowChunkedArray*)obj._cPtr(No.Dup) : null;
    GError *_err;
    _cretval = garrow_table_new_chunked_arrays(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, _chunkedArrays, _nChunkedArrays, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow23.table.Table newRecordBatches(gid_apache.arrow23.schema.Schema schema, gid_apache.arrow23.record_batch.RecordBatch[] recordBatches)
  {
    GArrowTable* _cretval;
    size_t _nRecordBatches;
    if (recordBatches)
      _nRecordBatches = cast(size_t)recordBatches.length;

    auto _recordBatches_arr = new GArrowRecordBatch*[](recordBatches.length);
    auto _recordBatches = cast(GArrowRecordBatch**)_recordBatches_arr.ptr;
    foreach (i, obj; recordBatches) _recordBatches[i] = obj ? cast(GArrowRecordBatch*)obj._cPtr(No.Dup) : null;
    GError *_err;
    _cretval = garrow_table_new_record_batches(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, _recordBatches, _nRecordBatches, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table addColumn(uint i, gid_apache.arrow23.field.Field field, gid_apache.arrow23.chunked_array.ChunkedArray chunkedArray)
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_add_column(cast(GArrowTable*)this._cPtr, i, field ? cast(GArrowField*)field._cPtr(No.Dup) : null, chunkedArray ? cast(GArrowChunkedArray*)chunkedArray._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table combineChunks()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_combine_chunks(cast(GArrowTable*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table concatenate(gid_apache.arrow23.table.Table[] otherTables, gid_apache.arrow23.table_concatenate_options.TableConcatenateOptions options = null)
  {
    GArrowTable* _cretval;
    auto _otherTables = gListFromD!(gid_apache.arrow23.table.Table)(otherTables);
    scope(exit) containerFree!(GList*, gid_apache.arrow23.table.Table, GidOwnership.None)(_otherTables);
    GError *_err;
    _cretval = garrow_table_concatenate(cast(GArrowTable*)this._cPtr, _otherTables, options ? cast(GArrowTableConcatenateOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow23.table.Table otherTable) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_table_equal(cast(GArrowTable*)this._cPtr, otherTable ? cast(GArrowTable*)otherTable._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool equalMetadata(gid_apache.arrow23.table.Table otherTable, bool checkMetadata) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_table_equal_metadata(cast(GArrowTable*)this._cPtr, otherTable ? cast(GArrowTable*)otherTable._cPtr(No.Dup) : null, checkMetadata);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table filter(gid_apache.arrow23.boolean_array.BooleanArray filter, gid_apache.arrow23.filter_options.FilterOptions options = null)
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_filter(cast(GArrowTable*)this._cPtr, filter ? cast(GArrowBooleanArray*)filter._cPtr(No.Dup) : null, options ? cast(GArrowFilterOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table filterChunkedArray(gid_apache.arrow23.chunked_array.ChunkedArray filter, gid_apache.arrow23.filter_options.FilterOptions options = null)
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_filter_chunked_array(cast(GArrowTable*)this._cPtr, filter ? cast(GArrowChunkedArray*)filter._cPtr(No.Dup) : null, options ? cast(GArrowFilterOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.chunked_array.ChunkedArray getColumnData(int i) nothrow
  {
    GArrowChunkedArray* _cretval;
    _cretval = garrow_table_get_column_data(cast(GArrowTable*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  uint getNColumns() nothrow
  {
    uint _retval;
    _retval = garrow_table_get_n_columns(cast(GArrowTable*)this._cPtr);
    return _retval;
  }

  /** */
  ulong getNRows() nothrow
  {
    ulong _retval;
    _retval = garrow_table_get_n_rows(cast(GArrowTable*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow23.schema.Schema getSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = garrow_table_get_schema(cast(GArrowTable*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table removeColumn(uint i)
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_remove_column(cast(GArrowTable*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table replaceColumn(uint i, gid_apache.arrow23.field.Field field, gid_apache.arrow23.chunked_array.ChunkedArray chunkedArray)
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_replace_column(cast(GArrowTable*)this._cPtr, i, field ? cast(GArrowField*)field._cPtr(No.Dup) : null, chunkedArray ? cast(GArrowChunkedArray*)chunkedArray._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table slice(long offset, long length) nothrow
  {
    GArrowTable* _cretval;
    _cretval = garrow_table_slice(cast(GArrowTable*)this._cPtr, offset, length);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.uint64_array.UInt64Array sortIndices(gid_apache.arrow23.sort_options.SortOptions options)
  {
    GArrowUInt64Array* _cretval;
    GError *_err;
    _cretval = garrow_table_sort_indices(cast(GArrowTable*)this._cPtr, options ? cast(GArrowSortOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.uint64_array.UInt64Array)(cast(GArrowUInt64Array*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table take(gid_apache.arrow23.array.Array indices, gid_apache.arrow23.take_options.TakeOptions options = null)
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_take(cast(GArrowTable*)this._cPtr, indices ? cast(GArrowArray*)indices._cPtr(No.Dup) : null, options ? cast(GArrowTakeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.table.Table takeChunkedArray(gid_apache.arrow23.chunked_array.ChunkedArray indices, gid_apache.arrow23.take_options.TakeOptions options = null)
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_table_take_chunked_array(cast(GArrowTable*)this._cPtr, indices ? cast(GArrowChunkedArray*)indices._cPtr(No.Dup) : null, options ? cast(GArrowTakeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string toString_()
  {
    char* _cretval;
    GError *_err;
    _cretval = garrow_table_to_string(cast(GArrowTable*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /**
      Validate the given table. This is a cheap validation.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool validate()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_table_validate(cast(GArrowTable*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Validate the given table. This is an extensive validation.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool validateFull()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_table_validate_full(cast(GArrowTable*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Writes the table as Feather format data to the sink.
  
      Params:
        sink = The output.
        properties = The properties for this write.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool writeAsFeather(gid_apache.arrow23.output_stream.OutputStream sink, gid_apache.arrow23.feather_write_properties.FeatherWriteProperties properties = null)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_table_write_as_feather(cast(GArrowTable*)this._cPtr, sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, properties ? cast(GArrowFeatherWriteProperties*)properties._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.table.Table]
class TableGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T table(void* propval) nothrow
  {
    return setProperty("table", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.table.Table]
final class TableGidBuilder : TableGidBuilderImpl!TableGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Table build() nothrow
  {
    return new Table(cast(void*)createGObject(Table._getGType), Yes.Take);
  }
}
