/// Module for [WritableFile] interface mixin
module gid_apache.arrow25.writable_file_mixin;

public import gid.core.basictypes;
public import gid_apache.arrow25.writable_file_iface_proxy;
public import gid.core.utils;
public import gid.glib2.error;
public import gid.gobject2.gid_builder;
public import gid_apache.arrow25.c.functions;
public import gid_apache.arrow25.c.types;
public import gid_apache.arrow25.types;

/** */
template WritableFileT()
{

  /** */
  override bool writeAt(long position, ubyte[] data)
  {
    bool _retval;
    long _nBytes;
    if (data)
      _nBytes = cast(long)data.length;

    auto _data = cast(ubyte*)data.ptr;
    GError *_err;
    _retval = cast(bool)garrow_writable_file_write_at(cast(GArrowWritableFile*)this._cPtr, position, _data, _nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.writable_file.WritableFile]
template WritableFileGidBuilderT()
{
}
