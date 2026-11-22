/// Module for [StreamReader] class
module gid_apache.arrowflight26.stream_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowflight26.c.functions;
import gid_apache.arrowflight26.c.types;
import gid_apache.arrowflight26.record_batch_reader;
import gid_apache.arrowflight26.types;

/** */
class StreamReader : gid_apache.arrowflight26.record_batch_reader.RecordBatchReader
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
    return cast(void function())gaflight_stream_reader_get_type != &gidSymbolNotFound ? gaflight_stream_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightStreamReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override StreamReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight26.stream_reader.StreamReader]
      Returns: New builder object
  */
  static StreamReaderGidBuilder builder() nothrow
  {
    return new StreamReaderGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight26.stream_reader.StreamReader]
class StreamReaderGidBuilderImpl(T) : gid_apache.arrowflight26.record_batch_reader.RecordBatchReaderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight26.stream_reader.StreamReader]
final class StreamReaderGidBuilder : StreamReaderGidBuilderImpl!StreamReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StreamReader build() nothrow
  {
    return new StreamReader(cast(void*)createGObject(StreamReader._getGType), Yes.Take);
  }
}
