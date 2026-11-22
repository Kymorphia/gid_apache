/// Module for [StreamDecoder] class
module gid_apache.arrow24.stream_decoder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.buffer;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.read_options;
import gid_apache.arrow24.schema;
import gid_apache.arrow24.stream_listener;
import gid_apache.arrow24.types;

/** */
class StreamDecoder : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_stream_decoder_get_type != &gidSymbolNotFound ? garrow_stream_decoder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStreamDecoder";
  }

  /** Returns `this`, for use in `with` statements. */
  override StreamDecoder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.stream_decoder.StreamDecoder]
      Returns: New builder object
  */
  static StreamDecoderGidBuilder builder() nothrow
  {
    return new StreamDecoderGidBuilder;
  }

  /**
      Get `listener` property.
      Returns: A listener that receives decoded events.
  */
  @property gid_apache.arrow24.stream_listener.StreamListener listener() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.stream_listener.StreamListener)("listener");
  }

  /** */
  this(gid_apache.arrow24.stream_listener.StreamListener listener, gid_apache.arrow24.read_options.ReadOptions options = null) nothrow
  {
    GArrowStreamDecoder* _cretval;
    _cretval = garrow_stream_decoder_new(listener ? cast(GArrowStreamListener*)listener._cPtr(No.Dup) : null, options ? cast(GArrowReadOptions*)options._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /**
      Feed data to the decoder as a #GArrowBuffer.
      
      If the decoder can read one or more record batches by the data, the
      decoder calls `vfuncGArrowStreamListener.on_record_batch_decoded`
      with a decoded record batch multiple times.
  
      Params:
        buffer = A #GArrowBuffer to be decoded.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool consumeBuffer(gid_apache.arrow24.buffer.Buffer buffer)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_stream_decoder_consume_buffer(cast(GArrowStreamDecoder*)this._cPtr, buffer ? cast(GArrowBuffer*)buffer._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Feed data to the decoder as a raw data.
      
      If the decoder can read one or more record batches by the data, the
      decoder calls `vfuncGArrowStreamListener.on_record_batch_decoded`
      with a decoded record batch multiple times.
  
      Params:
        bytes = A #GBytes to be decoded.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool consumeBytes(gid.glib2.bytes.Bytes bytes)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_stream_decoder_consume_bytes(cast(GArrowStreamDecoder*)this._cPtr, bytes ? cast(GBytes*)bytes._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      This method is provided for users who want to optimize performance.
      Normal users don't need to use this method.
      
      Here is an example usage for normal users:
      
          garrow_stream_decoder_consume_buffer(decoder, buffer1);
          garrow_stream_decoder_consume_buffer(decoder, buffer2);
          garrow_stream_decoder_consume_buffer(decoder, buffer3);
      
      Decoder has internal buffer. If consumed data isn't enough to
      advance the state of the decoder, consumed data is buffered to
      the internal buffer. It causes performance overhead.
      
      If you pass garrow_stream_decoer_get_next_required_size() size data
      to each
      [gid_apache.arrow26.stream_decoder.StreamDecoder.consumeBytes]/[gid_apache.arrow26.stream_decoder.StreamDecoder.consumeBuffer]
      call, the decoder doesn't use its internal buffer. It improves
      performance.
      
      Here is an example usage to avoid using internal buffer:
      
          buffer1 = get_data(garrow_stream_decoder_get_next_required_size(decoder));
          garrow_stream_decoder_consume_buffer(buffer1);
          buffer2 = get_data(garrow_stream_decoder_get_next_required_size(decoder));
          garrow_stream_decoder_consume_buffer(buffer2);
      
      Users can use this method to avoid creating small chunks. Record
      batch data must be contiguous data. If users pass small chunks to
      the decoder, the decoder needs concatenate small chunks
      internally. It causes performance overhead.
      
      Here is an example usage to reduce small chunks:
      
          GArrowResizablBuffer *buffer = garrow_resizable_buffer_new(1024, NULL);
          while ((small_chunk = get_data(&small_chunk_size))) {
            size_t current_buffer_size = garrow_buffer_get_size(GARROW_BUFFER(buffer));
            garrow_resizable_buffer_resize(buffer, current_buffer_size + small_chunk_size,
      NULL);
            garrow_mutable_buffer_set_data(GARROW_MUTABLE_BUFFER(buffer),
                                           current_buffer_size,
                                           small_chunk,
                                           small_chunk_size,
                                           NULL);
            if (garrow_buffer_get_size(GARROW_BUFFER(buffer)) <
                garrow_stream_decoder_get_next_required_size(decoder)) {
              continue;
            }
            garrow_stream_decoder_consume_buffer(decoder, GARROW_BUFFER(buffer), NULL);
            g_object_unref(buffer);
            buffer = garrow_resizable_buffer_new(1024, NULL);
          }
          if (garrow_buffer_get_size(GARROW_BUFFER(buffer)) > 0) {
            garrow_stream_decoder_consume_buffer(decoder, GARROW_BUFFER(buffer), NULL);
          }
          g_object_unref(buffer);
      Returns: The number of bytes needed to advance the state of
          the decoder.
  */
  size_t getNextRequiredSize() nothrow
  {
    size_t _retval;
    _retval = garrow_stream_decoder_get_next_required_size(cast(GArrowStreamDecoder*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow24.schema.Schema getSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = garrow_stream_decoder_get_schema(cast(GArrowStreamDecoder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Reset the internal status.
      
      You can reuse this decoder for new stream after calling this.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool reset()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_stream_decoder_reset(cast(GArrowStreamDecoder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.stream_decoder.StreamDecoder]
class StreamDecoderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T decoder(void* propval) nothrow
  {
    return setProperty("decoder", propval);
  }

  /**
      Set `listener` property.
      Params:
        propval = A listener that receives decoded events.
      Returns: Builder instance for fluent chaining
  */
  T listener(gid_apache.arrow24.stream_listener.StreamListener propval) nothrow
  {
    return setProperty("listener", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.stream_decoder.StreamDecoder]
final class StreamDecoderGidBuilder : StreamDecoderGidBuilderImpl!StreamDecoderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StreamDecoder build() nothrow
  {
    return new StreamDecoder(cast(void*)createGObject(StreamDecoder._getGType), Yes.Take);
  }
}
