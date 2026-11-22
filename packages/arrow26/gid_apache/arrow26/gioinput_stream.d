/// Module for [GIOInputStream] class
module gid_apache.arrow26.gioinput_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gio2.input_stream;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.file;
import gid_apache.arrow26.file_mixin;
import gid_apache.arrow26.readable;
import gid_apache.arrow26.readable_mixin;
import gid_apache.arrow26.seekable_input_stream;
import gid_apache.arrow26.types;

/** */
class GIOInputStream : gid_apache.arrow26.seekable_input_stream.SeekableInputStream
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
    return cast(void function())garrow_gio_input_stream_get_type != &gidSymbolNotFound ? garrow_gio_input_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowGIOInputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override GIOInputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.gioinput_stream.GIOInputStream]
      Returns: New builder object
  */
  static GIOInputStreamGidBuilder builder() nothrow
  {
    return new GIOInputStreamGidBuilder;
  }

  /** */
  @property gid.gio2.input_stream.InputStream raw() nothrow
  {
    return getRaw();
  }

  /** */
  this(gid.gio2.input_stream.InputStream gioInputStream) nothrow
  {
    GArrowGIOInputStream* _cretval;
    _cretval = garrow_gio_input_stream_new(gioInputStream ? cast(GInputStream*)gioInputStream._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid.gio2.input_stream.InputStream getRaw() nothrow
  {
    GInputStream* _cretval;
    _cretval = garrow_gio_input_stream_get_raw(cast(GArrowGIOInputStream*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid.gio2.input_stream.InputStream)(cast(GInputStream*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.gioinput_stream.GIOInputStream]
class GIOInputStreamGidBuilderImpl(T) : gid_apache.arrow26.seekable_input_stream.SeekableInputStreamGidBuilderImpl!T
{


  /** */
  T raw(gid.gio2.input_stream.InputStream propval) nothrow
  {
    return setProperty("raw", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.gioinput_stream.GIOInputStream]
final class GIOInputStreamGidBuilder : GIOInputStreamGidBuilderImpl!GIOInputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  GIOInputStream build() nothrow
  {
    return new GIOInputStream(cast(void*)createGObject(GIOInputStream._getGType), Yes.Take);
  }
}
