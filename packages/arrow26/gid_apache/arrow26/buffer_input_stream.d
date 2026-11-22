/// Module for [BufferInputStream] class
module gid_apache.arrow26.buffer_input_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.file;
import gid_apache.arrow26.file_mixin;
import gid_apache.arrow26.readable;
import gid_apache.arrow26.readable_mixin;
import gid_apache.arrow26.seekable_input_stream;
import gid_apache.arrow26.types;

/** */
class BufferInputStream : gid_apache.arrow26.seekable_input_stream.SeekableInputStream
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
    return cast(void function())garrow_buffer_input_stream_get_type != &gidSymbolNotFound ? garrow_buffer_input_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBufferInputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override BufferInputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.buffer_input_stream.BufferInputStream]
      Returns: New builder object
  */
  static BufferInputStreamGidBuilder builder() nothrow
  {
    return new BufferInputStreamGidBuilder;
  }

  /** */
  @property gid_apache.arrow26.buffer.Buffer buffer() nothrow
  {
    return getBuffer();
  }

  /** */
  this(gid_apache.arrow26.buffer.Buffer buffer) nothrow
  {
    GArrowBufferInputStream* _cretval;
    _cretval = garrow_buffer_input_stream_new(buffer ? cast(GArrowBuffer*)buffer._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow26.buffer.Buffer getBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_buffer_input_stream_get_buffer(cast(GArrowBufferInputStream*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.buffer_input_stream.BufferInputStream]
class BufferInputStreamGidBuilderImpl(T) : gid_apache.arrow26.seekable_input_stream.SeekableInputStreamGidBuilderImpl!T
{


  /** */
  T buffer(gid_apache.arrow26.buffer.Buffer propval) nothrow
  {
    return setProperty("buffer", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.buffer_input_stream.BufferInputStream]
final class BufferInputStreamGidBuilder : BufferInputStreamGidBuilderImpl!BufferInputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BufferInputStream build() nothrow
  {
    return new BufferInputStream(cast(void*)createGObject(BufferInputStream._getGType), Yes.Take);
  }
}
