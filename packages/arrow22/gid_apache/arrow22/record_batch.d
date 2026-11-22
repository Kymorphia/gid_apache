/// Module for [RecordBatch] class
module gid_apache.arrow22.record_batch;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.array;
import gid_apache.arrow22.boolean_array;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.field;
import gid_apache.arrow22.filter_options;
import gid_apache.arrow22.schema;
import gid_apache.arrow22.sort_options;
import gid_apache.arrow22.take_options;
import gid_apache.arrow22.types;
import gid_apache.arrow22.uint64_array;
import gid_apache.arrow22.write_options;

/** */
class RecordBatch : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_record_batch_get_type != &gidSymbolNotFound ? garrow_record_batch_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatch";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatch self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.record_batch.RecordBatch]
      Returns: New builder object
  */
  static RecordBatchGidBuilder builder() nothrow
  {
    return new RecordBatchGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.schema.Schema schema, uint nRows, gid_apache.arrow22.array.Array[] columns)
  {
    GArrowRecordBatch* _cretval;
    auto _columns = gListFromD!(gid_apache.arrow22.array.Array)(columns);
    scope(exit) containerFree!(GList*, gid_apache.arrow22.array.Array, GidOwnership.None)(_columns);
    GError *_err;
    _cretval = garrow_record_batch_new(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, nRows, _columns, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow22.record_batch.RecordBatch import_(void* cAbiArray, gid_apache.arrow22.schema.Schema schema)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_import(cAbiArray, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.record_batch.RecordBatch addColumn(uint i, gid_apache.arrow22.field.Field field, gid_apache.arrow22.array.Array column)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_add_column(cast(GArrowRecordBatch*)this._cPtr, i, field ? cast(GArrowField*)field._cPtr(No.Dup) : null, column ? cast(GArrowArray*)column._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow22.record_batch.RecordBatch otherRecordBatch) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_record_batch_equal(cast(GArrowRecordBatch*)this._cPtr, otherRecordBatch ? cast(GArrowRecordBatch*)otherRecordBatch._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool equalMetadata(gid_apache.arrow22.record_batch.RecordBatch otherRecordBatch, bool checkMetadata) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_record_batch_equal_metadata(cast(GArrowRecordBatch*)this._cPtr, otherRecordBatch ? cast(GArrowRecordBatch*)otherRecordBatch._cPtr(No.Dup) : null, checkMetadata);
    return _retval;
  }

  /** */
  bool export_(out void* cAbiArray, out void* cAbiSchema)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_record_batch_export(cast(GArrowRecordBatch*)this._cPtr, cast(void**)&cAbiArray, cast(void**)&cAbiSchema, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.record_batch.RecordBatch filter(gid_apache.arrow22.boolean_array.BooleanArray filter, gid_apache.arrow22.filter_options.FilterOptions options = null)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_filter(cast(GArrowRecordBatch*)this._cPtr, filter ? cast(GArrowBooleanArray*)filter._cPtr(No.Dup) : null, options ? cast(GArrowFilterOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.array.Array getColumnData(int i) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_record_batch_get_column_data(cast(GArrowRecordBatch*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string getColumnName(int i) nothrow
  {
    const(char)* _cretval;
    _cretval = garrow_record_batch_get_column_name(cast(GArrowRecordBatch*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }

  /** */
  uint getNColumns() nothrow
  {
    uint _retval;
    _retval = garrow_record_batch_get_n_columns(cast(GArrowRecordBatch*)this._cPtr);
    return _retval;
  }

  /** */
  long getNRows() nothrow
  {
    long _retval;
    _retval = garrow_record_batch_get_n_rows(cast(GArrowRecordBatch*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow22.schema.Schema getSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = garrow_record_batch_get_schema(cast(GArrowRecordBatch*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.record_batch.RecordBatch removeColumn(uint i)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_remove_column(cast(GArrowRecordBatch*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.buffer.Buffer serialize(gid_apache.arrow22.write_options.WriteOptions options = null)
  {
    GArrowBuffer* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_serialize(cast(GArrowRecordBatch*)this._cPtr, options ? cast(GArrowWriteOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.record_batch.RecordBatch slice(long offset, long length) nothrow
  {
    GArrowRecordBatch* _cretval;
    _cretval = garrow_record_batch_slice(cast(GArrowRecordBatch*)this._cPtr, offset, length);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.uint64_array.UInt64Array sortIndices(gid_apache.arrow22.sort_options.SortOptions options)
  {
    GArrowUInt64Array* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_sort_indices(cast(GArrowRecordBatch*)this._cPtr, options ? cast(GArrowSortOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.uint64_array.UInt64Array)(cast(GArrowUInt64Array*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.record_batch.RecordBatch take(gid_apache.arrow22.array.Array indices, gid_apache.arrow22.take_options.TakeOptions options = null)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_take(cast(GArrowRecordBatch*)this._cPtr, indices ? cast(GArrowArray*)indices._cPtr(No.Dup) : null, options ? cast(GArrowTakeOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string toString_()
  {
    char* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_to_string(cast(GArrowRecordBatch*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  bool validate()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_record_batch_validate(cast(GArrowRecordBatch*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool validateFull()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_record_batch_validate_full(cast(GArrowRecordBatch*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.record_batch.RecordBatch]
class RecordBatchGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T recordBatch(void* propval) nothrow
  {
    return setProperty("record-batch", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.record_batch.RecordBatch]
final class RecordBatchGidBuilder : RecordBatchGidBuilderImpl!RecordBatchGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatch build() nothrow
  {
    return new RecordBatch(cast(void*)createGObject(RecordBatch._getGType), Yes.Take);
  }
}
