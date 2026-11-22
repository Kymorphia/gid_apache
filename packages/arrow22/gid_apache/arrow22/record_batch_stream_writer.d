/// Module for [RecordBatchStreamWriter] class
module gid_apache.arrow22.record_batch_stream_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.output_stream;
import gid_apache.arrow22.record_batch_writer;
import gid_apache.arrow22.schema;
import gid_apache.arrow22.types;

/** */
class RecordBatchStreamWriter : gid_apache.arrow22.record_batch_writer.RecordBatchWriter
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
    return cast(void function())garrow_record_batch_stream_writer_get_type != &gidSymbolNotFound ? garrow_record_batch_stream_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchStreamWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchStreamWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.record_batch_stream_writer.RecordBatchStreamWriter]
      Returns: New builder object
  */
  static RecordBatchStreamWriterGidBuilder builder() nothrow
  {
    return new RecordBatchStreamWriterGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.output_stream.OutputStream sink, gid_apache.arrow22.schema.Schema schema)
  {
    GArrowRecordBatchStreamWriter* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_stream_writer_new(sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.record_batch_stream_writer.RecordBatchStreamWriter]
class RecordBatchStreamWriterGidBuilderImpl(T) : gid_apache.arrow22.record_batch_writer.RecordBatchWriterGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.record_batch_stream_writer.RecordBatchStreamWriter]
final class RecordBatchStreamWriterGidBuilder : RecordBatchStreamWriterGidBuilderImpl!RecordBatchStreamWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchStreamWriter build() nothrow
  {
    return new RecordBatchStreamWriter(cast(void*)createGObject(RecordBatchStreamWriter._getGType), Yes.Take);
  }
}
