/// Module for [CompressedOutputStream] class
module gid_apache.arrow24.compressed_output_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.codec;
import gid_apache.arrow24.file;
import gid_apache.arrow24.file_mixin;
import gid_apache.arrow24.output_stream;
import gid_apache.arrow24.types;
import gid_apache.arrow24.writable;
import gid_apache.arrow24.writable_mixin;

/** */
class CompressedOutputStream : gid_apache.arrow24.output_stream.OutputStream
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
    return cast(void function())garrow_compressed_output_stream_get_type != &gidSymbolNotFound ? garrow_compressed_output_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCompressedOutputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override CompressedOutputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.compressed_output_stream.CompressedOutputStream]
      Returns: New builder object
  */
  static CompressedOutputStreamGidBuilder builder() nothrow
  {
    return new CompressedOutputStreamGidBuilder;
  }

  /** */
  @property gid_apache.arrow24.codec.Codec codec() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.codec.Codec)("codec");
  }

  /** */
  @property gid_apache.arrow24.output_stream.OutputStream raw() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.output_stream.OutputStream)("raw");
  }

  /** */
  this(gid_apache.arrow24.codec.Codec codec, gid_apache.arrow24.output_stream.OutputStream raw)
  {
    GArrowCompressedOutputStream* _cretval;
    GError *_err;
    _cretval = garrow_compressed_output_stream_new(codec ? cast(GArrowCodec*)codec._cPtr(No.Dup) : null, raw ? cast(GArrowOutputStream*)raw._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.compressed_output_stream.CompressedOutputStream]
class CompressedOutputStreamGidBuilderImpl(T) : gid_apache.arrow24.output_stream.OutputStreamGidBuilderImpl!T
{


  /** */
  T codec(gid_apache.arrow24.codec.Codec propval) nothrow
  {
    return setProperty("codec", propval);
  }

  /** */
  T raw(gid_apache.arrow24.output_stream.OutputStream propval) nothrow
  {
    return setProperty("raw", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.compressed_output_stream.CompressedOutputStream]
final class CompressedOutputStreamGidBuilder : CompressedOutputStreamGidBuilderImpl!CompressedOutputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CompressedOutputStream build() nothrow
  {
    return new CompressedOutputStream(cast(void*)createGObject(CompressedOutputStream._getGType), Yes.Take);
  }
}
