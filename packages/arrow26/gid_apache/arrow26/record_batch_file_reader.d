/// Module for [RecordBatchFileReader] class
module gid_apache.arrow26.record_batch_file_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.record_batch;
import gid_apache.arrow26.schema;
import gid_apache.arrow26.seekable_input_stream;
import gid_apache.arrow26.types;

/** */
class RecordBatchFileReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_record_batch_file_reader_get_type != &gidSymbolNotFound ? garrow_record_batch_file_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchFileReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchFileReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.record_batch_file_reader.RecordBatchFileReader]
      Returns: New builder object
  */
  static RecordBatchFileReaderGidBuilder builder() nothrow
  {
    return new RecordBatchFileReaderGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.seekable_input_stream.SeekableInputStream file)
  {
    GArrowRecordBatchFileReader* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_file_reader_new(file ? cast(GArrowSeekableInputStream*)file._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  string[string] getMetadata() nothrow
  {
    GHashTable* _cretval;
    _cretval = garrow_record_batch_file_reader_get_metadata(cast(GArrowRecordBatchFileReader*)this._cPtr);
    auto _retval = gHashTableToD!(string, string, GidOwnership.Full)(cast(GHashTable*)_cretval);
    return _retval;
  }

  /** */
  uint getNRecordBatches() nothrow
  {
    uint _retval;
    _retval = garrow_record_batch_file_reader_get_n_record_batches(cast(GArrowRecordBatchFileReader*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow26.record_batch.RecordBatch getRecordBatch(uint i)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_file_reader_get_record_batch(cast(GArrowRecordBatchFileReader*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.schema.Schema getSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = garrow_record_batch_file_reader_get_schema(cast(GArrowRecordBatchFileReader*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.types.MetadataVersion getVersion() nothrow
  {
    GArrowMetadataVersion _cretval;
    _cretval = garrow_record_batch_file_reader_get_version(cast(GArrowRecordBatchFileReader*)this._cPtr);
    gid_apache.arrow26.types.MetadataVersion _retval = cast(gid_apache.arrow26.types.MetadataVersion)_cretval;
    return _retval;
  }

  /** */
  gid_apache.arrow26.record_batch.RecordBatch readRecordBatch(uint i)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_file_reader_read_record_batch(cast(GArrowRecordBatchFileReader*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.record_batch_file_reader.RecordBatchFileReader]
class RecordBatchFileReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T recordBatchFileReader(void* propval) nothrow
  {
    return setProperty("record-batch-file-reader", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.record_batch_file_reader.RecordBatchFileReader]
final class RecordBatchFileReaderGidBuilder : RecordBatchFileReaderGidBuilderImpl!RecordBatchFileReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchFileReader build() nothrow
  {
    return new RecordBatchFileReader(cast(void*)createGObject(RecordBatchFileReader._getGType), Yes.Take);
  }
}
