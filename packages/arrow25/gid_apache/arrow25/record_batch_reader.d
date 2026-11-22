/// Module for [RecordBatchReader] class
module gid_apache.arrow25.record_batch_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.record_batch;
import gid_apache.arrow25.schema;
import gid_apache.arrow25.table;
import gid_apache.arrow25.types;

/** */
class RecordBatchReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_record_batch_reader_get_type != &gidSymbolNotFound ? garrow_record_batch_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.record_batch_reader.RecordBatchReader]
      Returns: New builder object
  */
  static RecordBatchReaderGidBuilder builder() nothrow
  {
    return new RecordBatchReaderGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.record_batch.RecordBatch[] recordBatches, gid_apache.arrow25.schema.Schema schema = null)
  {
    GArrowRecordBatchReader* _cretval;
    auto _recordBatches = gListFromD!(gid_apache.arrow25.record_batch.RecordBatch)(recordBatches);
    scope(exit) containerFree!(GList*, gid_apache.arrow25.record_batch.RecordBatch, GidOwnership.None)(_recordBatches);
    GError *_err;
    _cretval = garrow_record_batch_reader_new(_recordBatches, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow25.record_batch_reader.RecordBatchReader import_(void* cAbiArrayStream)
  {
    GArrowRecordBatchReader* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_reader_import(cAbiArrayStream, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.record_batch_reader.RecordBatchReader)(cast(GArrowRecordBatchReader*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  void* export_()
  {
    GError *_err;
    auto _retval = garrow_record_batch_reader_export(cast(GArrowRecordBatchReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow25.record_batch.RecordBatch getNextRecordBatch()
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_reader_get_next_record_batch(cast(GArrowRecordBatchReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow25.schema.Schema getSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = garrow_record_batch_reader_get_schema(cast(GArrowRecordBatchReader*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid.gobject2.object.ObjectWrap[] getSources() nothrow
  {
    GList* _cretval;
    _cretval = garrow_record_batch_reader_get_sources(cast(GArrowRecordBatchReader*)this._cPtr);
    auto _retval = gListToD!(gid.gobject2.object.ObjectWrap, GidOwnership.None)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  gid_apache.arrow25.table.Table readAll()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_reader_read_all(cast(GArrowRecordBatchReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow25.record_batch.RecordBatch readNext()
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_reader_read_next(cast(GArrowRecordBatchReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow25.record_batch.RecordBatch readNextRecordBatch()
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_reader_read_next_record_batch(cast(GArrowRecordBatchReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.record_batch_reader.RecordBatchReader]
class RecordBatchReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T recordBatchReader(void* propval) nothrow
  {
    return setProperty("record-batch-reader", propval);
  }

  /** */
  T sources(void* propval) nothrow
  {
    return setProperty("sources", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.record_batch_reader.RecordBatchReader]
final class RecordBatchReaderGidBuilder : RecordBatchReaderGidBuilderImpl!RecordBatchReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchReader build() nothrow
  {
    return new RecordBatchReader(cast(void*)createGObject(RecordBatchReader._getGType), Yes.Take);
  }
}
