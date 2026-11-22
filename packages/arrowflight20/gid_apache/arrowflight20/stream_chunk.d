/// Module for [StreamChunk] class
module gid_apache.arrowflight20.stream_chunk;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.buffer;
import gid_apache.arrow20.record_batch;
import gid_apache.arrowflight20.c.functions;
import gid_apache.arrowflight20.c.types;
import gid_apache.arrowflight20.types;

/** */
class StreamChunk : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_stream_chunk_get_type != &gidSymbolNotFound ? gaflight_stream_chunk_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightStreamChunk";
  }

  /** Returns `this`, for use in `with` statements. */
  override StreamChunk self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight20.stream_chunk.StreamChunk]
      Returns: New builder object
  */
  static StreamChunkGidBuilder builder() nothrow
  {
    return new StreamChunkGidBuilder;
  }

  alias getData = gid.gobject2.object.ObjectWrap.getData;

  /** */
  gid_apache.arrow20.record_batch.RecordBatch getData() nothrow
  {
    GArrowRecordBatch* _cretval;
    _cretval = gaflight_stream_chunk_get_data(cast(GAFlightStreamChunk*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.buffer.Buffer getMetadata() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = gaflight_stream_chunk_get_metadata(cast(GAFlightStreamChunk*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight20.stream_chunk.StreamChunk]
class StreamChunkGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T chunk(void* propval) nothrow
  {
    return setProperty("chunk", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight20.stream_chunk.StreamChunk]
final class StreamChunkGidBuilder : StreamChunkGidBuilderImpl!StreamChunkGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StreamChunk build() nothrow
  {
    return new StreamChunk(cast(void*)createGObject(StreamChunk._getGType), Yes.Take);
  }
}
