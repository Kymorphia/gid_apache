/// Module for [StreamWriter] class
module gid_apache.arrowflight24.stream_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrowflight24.c.functions;
import gid_apache.arrowflight24.c.types;
import gid_apache.arrowflight24.record_batch_writer;
import gid_apache.arrowflight24.types;

/** */
class StreamWriter : gid_apache.arrowflight24.record_batch_writer.RecordBatchWriter
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
    return cast(void function())gaflight_stream_writer_get_type != &gidSymbolNotFound ? gaflight_stream_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightStreamWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override StreamWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight24.stream_writer.StreamWriter]
      Returns: New builder object
  */
  static StreamWriterGidBuilder builder() nothrow
  {
    return new StreamWriterGidBuilder;
  }

  /** */
  bool doneWriting()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_stream_writer_done_writing(cast(GAFlightStreamWriter*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight24.stream_writer.StreamWriter]
class StreamWriterGidBuilderImpl(T) : gid_apache.arrowflight24.record_batch_writer.RecordBatchWriterGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight24.stream_writer.StreamWriter]
final class StreamWriterGidBuilder : StreamWriterGidBuilderImpl!StreamWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StreamWriter build() nothrow
  {
    return new StreamWriter(cast(void*)createGObject(StreamWriter._getGType), Yes.Take);
  }
}
