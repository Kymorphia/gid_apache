/// Module for [RecordBatchWriter] class
module gid_apache.arrowflight22.record_batch_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.record_batch;
import gid_apache.arrow22.record_batch_writer;
import gid_apache.arrow22.schema;
import gid_apache.arrow22.write_options;
import gid_apache.arrowflight22.c.functions;
import gid_apache.arrowflight22.c.types;
import gid_apache.arrowflight22.types;

/** */
class RecordBatchWriter : gid_apache.arrow22.record_batch_writer.RecordBatchWriter
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
    return cast(void function())gaflight_record_batch_writer_get_type != &gidSymbolNotFound ? gaflight_record_batch_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightRecordBatchWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight22.record_batch_writer.RecordBatchWriter]
      Returns: New builder object
  */
  static RecordBatchWriterGidBuilder builder() nothrow
  {
    return new RecordBatchWriterGidBuilder;
  }

  /**
      Begins writing data with the given schema. Only used with
      `DoExchange`.
  
      Params:
        schema = A #GArrowSchema.
        options = A #GArrowWriteOptions.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool begin(gid_apache.arrow22.schema.Schema schema, gid_apache.arrow22.write_options.WriteOptions options = null)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_record_batch_writer_begin(cast(GAFlightRecordBatchWriter*)this._cPtr, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, options ? cast(GArrowWriteOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Write metadata.
  
      Params:
        metadata = A #GArrowBuffer.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool writeMetadata(gid_apache.arrow22.buffer.Buffer metadata)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_record_batch_writer_write_metadata(cast(GAFlightRecordBatchWriter*)this._cPtr, metadata ? cast(GArrowBuffer*)metadata._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  alias writeRecordBatch = gid_apache.arrow22.record_batch_writer.RecordBatchWriter.writeRecordBatch;

  /**
      Write a record batch with metadata.
  
      Params:
        recordBatch = A #GArrowRecordBatch.
        metadata = A #GArrowBuffer.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool writeRecordBatch(gid_apache.arrow22.record_batch.RecordBatch recordBatch, gid_apache.arrow22.buffer.Buffer metadata = null)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_record_batch_writer_write_record_batch(cast(GAFlightRecordBatchWriter*)this._cPtr, recordBatch ? cast(GArrowRecordBatch*)recordBatch._cPtr(No.Dup) : null, metadata ? cast(GArrowBuffer*)metadata._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight22.record_batch_writer.RecordBatchWriter]
class RecordBatchWriterGidBuilderImpl(T) : gid_apache.arrow22.record_batch_writer.RecordBatchWriterGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight22.record_batch_writer.RecordBatchWriter]
final class RecordBatchWriterGidBuilder : RecordBatchWriterGidBuilderImpl!RecordBatchWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchWriter build() nothrow
  {
    return new RecordBatchWriter(cast(void*)createGObject(RecordBatchWriter._getGType), Yes.Take);
  }
}
