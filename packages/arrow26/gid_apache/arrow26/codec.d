/// Module for [Codec] class
module gid_apache.arrow26.codec;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class Codec : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_codec_get_type != &gidSymbolNotFound ? garrow_codec_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCodec";
  }

  /** Returns `this`, for use in `with` statements. */
  override Codec self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.codec.Codec]
      Returns: New builder object
  */
  static CodecGidBuilder builder() nothrow
  {
    return new CodecGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.types.CompressionType type)
  {
    GArrowCodec* _cretval;
    GError *_err;
    _cretval = garrow_codec_new(type, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  int getCompressionLevel() nothrow
  {
    int _retval;
    _retval = garrow_codec_get_compression_level(cast(GArrowCodec*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow26.types.CompressionType getCompressionType() nothrow
  {
    GArrowCompressionType _cretval;
    _cretval = garrow_codec_get_compression_type(cast(GArrowCodec*)this._cPtr);
    gid_apache.arrow26.types.CompressionType _retval = cast(gid_apache.arrow26.types.CompressionType)_cretval;
    return _retval;
  }

  /** */
  string getName() nothrow
  {
    const(char)* _cretval;
    _cretval = garrow_codec_get_name(cast(GArrowCodec*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.codec.Codec]
class CodecGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T codec(void* propval) nothrow
  {
    return setProperty("codec", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.codec.Codec]
final class CodecGidBuilder : CodecGidBuilderImpl!CodecGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Codec build() nothrow
  {
    return new Codec(cast(void*)createGObject(Codec._getGType), Yes.Take);
  }
}
