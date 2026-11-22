/// Module for [GIOOutputStream] class
module gid_apache.arrow24.giooutput_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gio2.output_stream;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.file;
import gid_apache.arrow24.file_mixin;
import gid_apache.arrow24.output_stream;
import gid_apache.arrow24.types;
import gid_apache.arrow24.writable;
import gid_apache.arrow24.writable_mixin;

/** */
class GIOOutputStream : gid_apache.arrow24.output_stream.OutputStream
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
    return cast(void function())garrow_gio_output_stream_get_type != &gidSymbolNotFound ? garrow_gio_output_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowGIOOutputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override GIOOutputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.giooutput_stream.GIOOutputStream]
      Returns: New builder object
  */
  static GIOOutputStreamGidBuilder builder() nothrow
  {
    return new GIOOutputStreamGidBuilder;
  }

  /** */
  @property gid.gio2.output_stream.OutputStream raw() nothrow
  {
    return getRaw();
  }

  /** */
  this(gid.gio2.output_stream.OutputStream gioOutputStream) nothrow
  {
    GArrowGIOOutputStream* _cretval;
    _cretval = garrow_gio_output_stream_new(gioOutputStream ? cast(GOutputStream*)gioOutputStream._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid.gio2.output_stream.OutputStream getRaw() nothrow
  {
    GOutputStream* _cretval;
    _cretval = garrow_gio_output_stream_get_raw(cast(GArrowGIOOutputStream*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid.gio2.output_stream.OutputStream)(cast(GOutputStream*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.giooutput_stream.GIOOutputStream]
class GIOOutputStreamGidBuilderImpl(T) : gid_apache.arrow24.output_stream.OutputStreamGidBuilderImpl!T
{


  /** */
  T raw(gid.gio2.output_stream.OutputStream propval) nothrow
  {
    return setProperty("raw", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.giooutput_stream.GIOOutputStream]
final class GIOOutputStreamGidBuilder : GIOOutputStreamGidBuilderImpl!GIOOutputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  GIOOutputStream build() nothrow
  {
    return new GIOOutputStream(cast(void*)createGObject(GIOOutputStream._getGType), Yes.Take);
  }
}
