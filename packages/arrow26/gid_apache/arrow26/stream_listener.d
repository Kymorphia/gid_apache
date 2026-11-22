/// Module for [StreamListener] class
module gid_apache.arrow26.stream_listener;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.record_batch;
import gid_apache.arrow26.schema;
import gid_apache.arrow26.types;

/** */
class StreamListener : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_stream_listener_get_type != &gidSymbolNotFound ? garrow_stream_listener_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStreamListener";
  }

  /** Returns `this`, for use in `with` statements. */
  override StreamListener self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.stream_listener.StreamListener]
      Returns: New builder object
  */
  static StreamListenerGidBuilder builder() nothrow
  {
    return new StreamListenerGidBuilder;
  }

  /**
      Processes an EOS event.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool onEos()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_stream_listener_on_eos(cast(GArrowStreamListener*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Processes a decoded record batch.
  
      Params:
        recordBatch = A decoded #GArrowRecordBatch.
        metadata = A decoded metadata.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool onRecordBatchDecoded(gid_apache.arrow26.record_batch.RecordBatch recordBatch, string[string] metadata = null)
  {
    bool _retval;
    auto _metadata = gHashTableFromD!(string, string)(metadata);
    scope(exit) containerFree!(GHashTable*, string, GidOwnership.None)(_metadata);
    GError *_err;
    _retval = cast(bool)garrow_stream_listener_on_record_batch_decoded(cast(GArrowStreamListener*)this._cPtr, recordBatch ? cast(GArrowRecordBatch*)recordBatch._cPtr(No.Dup) : null, _metadata, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Processes a decoded schema.
  
      Params:
        schema = A decoded #GArrowSchema.
        filteredSchema = A decoded #GArrowSchema that only has read fields.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool onSchemaDecoded(gid_apache.arrow26.schema.Schema schema, gid_apache.arrow26.schema.Schema filteredSchema)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_stream_listener_on_schema_decoded(cast(GArrowStreamListener*)this._cPtr, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, filteredSchema ? cast(GArrowSchema*)filteredSchema._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.stream_listener.StreamListener]
class StreamListenerGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.stream_listener.StreamListener]
final class StreamListenerGidBuilder : StreamListenerGidBuilderImpl!StreamListenerGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StreamListener build() nothrow
  {
    return new StreamListener(cast(void*)createGObject(StreamListener._getGType), Yes.Take);
  }
}
