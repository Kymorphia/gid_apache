/// Module for [CompressedInputStream] class
module gid_apache.arrow23.compressed_input_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.codec;
import gid_apache.arrow23.file;
import gid_apache.arrow23.file_mixin;
import gid_apache.arrow23.input_stream;
import gid_apache.arrow23.readable;
import gid_apache.arrow23.readable_mixin;
import gid_apache.arrow23.types;

/** */
class CompressedInputStream : gid_apache.arrow23.input_stream.InputStream
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
    return cast(void function())garrow_compressed_input_stream_get_type != &gidSymbolNotFound ? garrow_compressed_input_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCompressedInputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override CompressedInputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.compressed_input_stream.CompressedInputStream]
      Returns: New builder object
  */
  static CompressedInputStreamGidBuilder builder() nothrow
  {
    return new CompressedInputStreamGidBuilder;
  }

  /** */
  @property gid_apache.arrow23.codec.Codec codec() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.codec.Codec)("codec");
  }

  /** */
  @property gid_apache.arrow23.input_stream.InputStream raw() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.input_stream.InputStream)("raw");
  }

  /** */
  this(gid_apache.arrow23.codec.Codec codec, gid_apache.arrow23.input_stream.InputStream raw)
  {
    GArrowCompressedInputStream* _cretval;
    GError *_err;
    _cretval = garrow_compressed_input_stream_new(codec ? cast(GArrowCodec*)codec._cPtr(No.Dup) : null, raw ? cast(GArrowInputStream*)raw._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.compressed_input_stream.CompressedInputStream]
class CompressedInputStreamGidBuilderImpl(T) : gid_apache.arrow23.input_stream.InputStreamGidBuilderImpl!T
{


  /** */
  T codec(gid_apache.arrow23.codec.Codec propval) nothrow
  {
    return setProperty("codec", propval);
  }

  /** */
  T raw(gid_apache.arrow23.input_stream.InputStream propval) nothrow
  {
    return setProperty("raw", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.compressed_input_stream.CompressedInputStream]
final class CompressedInputStreamGidBuilder : CompressedInputStreamGidBuilderImpl!CompressedInputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CompressedInputStream build() nothrow
  {
    return new CompressedInputStream(cast(void*)createGObject(CompressedInputStream._getGType), Yes.Take);
  }
}
