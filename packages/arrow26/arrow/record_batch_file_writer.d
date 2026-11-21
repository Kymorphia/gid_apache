/// Module for [RecordBatchFileWriter] class
module arrow.record_batch_file_writer;

public import gid.basictypes;
import arrow.c.functions;
import arrow.c.types;
import arrow.output_stream;
import arrow.record_batch_stream_writer;
import arrow.schema;
import arrow.types;
import arrow.write_options;
import gid.gid;
import glib.error;
import gobject.gid_builder;
import gobject.object;

/** */
class RecordBatchFileWriter : arrow.record_batch_stream_writer.RecordBatchStreamWriter
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.loader : gidSymbolNotFound;
    return cast(void function())garrow_record_batch_file_writer_get_type != &gidSymbolNotFound ? garrow_record_batch_file_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchFileWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchFileWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [arrow.record_batch_file_writer.RecordBatchFileWriter]
      Returns: New builder object
  */
  static RecordBatchFileWriterGidBuilder builder() nothrow
  {
    return new RecordBatchFileWriterGidBuilder;
  }

  /** */
  this(arrow.output_stream.OutputStream sink, arrow.schema.Schema schema)
  {
    GArrowRecordBatchFileWriter* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_file_writer_new(sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static arrow.record_batch_file_writer.RecordBatchFileWriter newFull(arrow.output_stream.OutputStream sink, arrow.schema.Schema schema, arrow.write_options.WriteOptions options = null, string[string] metadata = null)
  {
    GArrowRecordBatchFileWriter* _cretval;
    auto _metadata = gHashTableFromD!(string, string)(metadata);
    scope(exit) containerFree!(GHashTable*, string, GidOwnership.None)(_metadata);
    GError *_err;
    _cretval = garrow_record_batch_file_writer_new_full(sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, options ? cast(GArrowWriteOptions*)options._cPtr(No.Dup) : null, _metadata, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(arrow.record_batch_file_writer.RecordBatchFileWriter)(cast(GArrowRecordBatchFileWriter*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [arrow.record_batch_file_writer.RecordBatchFileWriter]
class RecordBatchFileWriterGidBuilderImpl(T) : arrow.record_batch_stream_writer.RecordBatchStreamWriterGidBuilderImpl!T
{
}

/// Fluent builder for [arrow.record_batch_file_writer.RecordBatchFileWriter]
final class RecordBatchFileWriterGidBuilder : RecordBatchFileWriterGidBuilderImpl!RecordBatchFileWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchFileWriter build() nothrow
  {
    return new RecordBatchFileWriter(cast(void*)createGObject(RecordBatchFileWriter._getGType), Yes.Take);
  }
}
