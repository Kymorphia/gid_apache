/// Module for [RecordBatchWriter] class
module gid_apache.arrow23.record_batch_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.record_batch;
import gid_apache.arrow23.table;
import gid_apache.arrow23.types;

/** */
class RecordBatchWriter : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_record_batch_writer_get_type != &gidSymbolNotFound ? garrow_record_batch_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.record_batch_writer.RecordBatchWriter]
      Returns: New builder object
  */
  static RecordBatchWriterGidBuilder builder() nothrow
  {
    return new RecordBatchWriterGidBuilder;
  }

  /** */
  bool close()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_record_batch_writer_close(cast(GArrowRecordBatchWriter*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool isClosed() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_record_batch_writer_is_closed(cast(GArrowRecordBatchWriter*)this._cPtr);
    return _retval;
  }

  /** */
  bool writeRecordBatch(gid_apache.arrow23.record_batch.RecordBatch recordBatch)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_record_batch_writer_write_record_batch(cast(GArrowRecordBatchWriter*)this._cPtr, recordBatch ? cast(GArrowRecordBatch*)recordBatch._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool writeTable(gid_apache.arrow23.table.Table table)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_record_batch_writer_write_table(cast(GArrowRecordBatchWriter*)this._cPtr, table ? cast(GArrowTable*)table._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.record_batch_writer.RecordBatchWriter]
class RecordBatchWriterGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T recordBatchWriter(void* propval) nothrow
  {
    return setProperty("record-batch-writer", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.record_batch_writer.RecordBatchWriter]
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
