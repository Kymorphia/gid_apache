/// Module for [RecordBatchStreamReader] class
module gid_apache.arrow22.record_batch_stream_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.input_stream;
import gid_apache.arrow22.record_batch_reader;
import gid_apache.arrow22.types;

/** */
class RecordBatchStreamReader : gid_apache.arrow22.record_batch_reader.RecordBatchReader
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
    return cast(void function())garrow_record_batch_stream_reader_get_type != &gidSymbolNotFound ? garrow_record_batch_stream_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchStreamReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchStreamReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.record_batch_stream_reader.RecordBatchStreamReader]
      Returns: New builder object
  */
  static RecordBatchStreamReaderGidBuilder builder() nothrow
  {
    return new RecordBatchStreamReaderGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.input_stream.InputStream stream)
  {
    GArrowRecordBatchStreamReader* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_stream_reader_new(stream ? cast(GArrowInputStream*)stream._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.record_batch_stream_reader.RecordBatchStreamReader]
class RecordBatchStreamReaderGidBuilderImpl(T) : gid_apache.arrow22.record_batch_reader.RecordBatchReaderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.record_batch_stream_reader.RecordBatchStreamReader]
final class RecordBatchStreamReaderGidBuilder : RecordBatchStreamReaderGidBuilderImpl!RecordBatchStreamReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchStreamReader build() nothrow
  {
    return new RecordBatchStreamReader(cast(void*)createGObject(RecordBatchStreamReader._getGType), Yes.Take);
  }
}
