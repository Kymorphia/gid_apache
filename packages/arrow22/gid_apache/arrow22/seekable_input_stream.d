/// Module for [SeekableInputStream] class
module gid_apache.arrow22.seekable_input_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.file;
import gid_apache.arrow22.file_mixin;
import gid_apache.arrow22.input_stream;
import gid_apache.arrow22.readable;
import gid_apache.arrow22.readable_mixin;
import gid_apache.arrow22.types;

/** */
class SeekableInputStream : gid_apache.arrow22.input_stream.InputStream
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
    return cast(void function())garrow_seekable_input_stream_get_type != &gidSymbolNotFound ? garrow_seekable_input_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSeekableInputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override SeekableInputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.seekable_input_stream.SeekableInputStream]
      Returns: New builder object
  */
  static SeekableInputStreamGidBuilder builder() nothrow
  {
    return new SeekableInputStreamGidBuilder;
  }

  /** */
  ulong getSize()
  {
    ulong _retval;
    GError *_err;
    _retval = garrow_seekable_input_stream_get_size(cast(GArrowSeekableInputStream*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool getSupportZeroCopy() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_seekable_input_stream_get_support_zero_copy(cast(GArrowSeekableInputStream*)this._cPtr);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes peek(long nBytes)
  {
    GBytes* _cretval;
    GError *_err;
    _cretval = garrow_seekable_input_stream_peek(cast(GArrowSeekableInputStream*)this._cPtr, nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  gid_apache.arrow22.buffer.Buffer readAt(long position, long nBytes)
  {
    GArrowBuffer* _cretval;
    GError *_err;
    _cretval = garrow_seekable_input_stream_read_at(cast(GArrowSeekableInputStream*)this._cPtr, position, nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes readAtBytes(long position, long nBytes)
  {
    GBytes* _cretval;
    GError *_err;
    _cretval = garrow_seekable_input_stream_read_at_bytes(cast(GArrowSeekableInputStream*)this._cPtr, position, nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.seekable_input_stream.SeekableInputStream]
class SeekableInputStreamGidBuilderImpl(T) : gid_apache.arrow22.input_stream.InputStreamGidBuilderImpl!T
{

}

/// Fluent builder for [gid_apache.arrow22.seekable_input_stream.SeekableInputStream]
final class SeekableInputStreamGidBuilder : SeekableInputStreamGidBuilderImpl!SeekableInputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SeekableInputStream build() nothrow
  {
    return new SeekableInputStream(cast(void*)createGObject(SeekableInputStream._getGType), Yes.Take);
  }
}
