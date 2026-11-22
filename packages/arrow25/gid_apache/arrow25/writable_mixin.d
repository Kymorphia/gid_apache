/// Module for [Writable] interface mixin
module gid_apache.arrow25.writable_mixin;

public import gid.core.basictypes;
public import gid_apache.arrow25.writable_iface_proxy;
public import gid.core.utils;
public import gid.glib2.error;
public import gid.gobject2.gid_builder;
public import gid_apache.arrow25.c.functions;
public import gid_apache.arrow25.c.types;
public import gid_apache.arrow25.types;

/** */
template WritableT()
{

  /**
      It ensures writing all data on memory to storage.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  override bool flush()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_writable_flush(cast(GArrowWritable*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  override bool write(ubyte[] data)
  {
    bool _retval;
    long _nBytes;
    if (data)
      _nBytes = cast(long)data.length;

    auto _data = cast(ubyte*)data.ptr;
    GError *_err;
    _retval = cast(bool)garrow_writable_write(cast(GArrowWritable*)this._cPtr, _data, _nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.writable.Writable]
template WritableGidBuilderT()
{
}
