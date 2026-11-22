/// Module for [RecordBatchFileWriter] class
module gid_apache.arrow25.record_batch_file_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.output_stream;
import gid_apache.arrow25.record_batch_stream_writer;
import gid_apache.arrow25.schema;
import gid_apache.arrow25.types;
import gid_apache.arrow25.write_options;

/** */
class RecordBatchFileWriter : gid_apache.arrow25.record_batch_stream_writer.RecordBatchStreamWriter
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
      Get builder for [gid_apache.arrow25.record_batch_file_writer.RecordBatchFileWriter]
      Returns: New builder object
  */
  static RecordBatchFileWriterGidBuilder builder() nothrow
  {
    return new RecordBatchFileWriterGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.output_stream.OutputStream sink, gid_apache.arrow25.schema.Schema schema)
  {
    GArrowRecordBatchFileWriter* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_file_writer_new(sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow25.record_batch_file_writer.RecordBatchFileWriter newFull(gid_apache.arrow25.output_stream.OutputStream sink, gid_apache.arrow25.schema.Schema schema, gid_apache.arrow25.write_options.WriteOptions options = null, string[string] metadata = null)
  {
    GArrowRecordBatchFileWriter* _cretval;
    auto _metadata = gHashTableFromD!(string, string)(metadata);
    scope(exit) containerFree!(GHashTable*, string, GidOwnership.None)(_metadata);
    GError *_err;
    _cretval = garrow_record_batch_file_writer_new_full(sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, options ? cast(GArrowWriteOptions*)options._cPtr(No.Dup) : null, _metadata, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.record_batch_file_writer.RecordBatchFileWriter)(cast(GArrowRecordBatchFileWriter*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.record_batch_file_writer.RecordBatchFileWriter]
class RecordBatchFileWriterGidBuilderImpl(T) : gid_apache.arrow25.record_batch_stream_writer.RecordBatchStreamWriterGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.record_batch_file_writer.RecordBatchFileWriter]
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
