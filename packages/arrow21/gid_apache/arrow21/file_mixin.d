/// Module for [File] interface mixin
module gid_apache.arrow21.file_mixin;

public import gid.core.basictypes;
public import gid_apache.arrow21.file_iface_proxy;
public import gid.core.utils;
public import gid.glib2.error;
public import gid.gobject2.gid_builder;
public import gid_apache.arrow21.c.functions;
public import gid_apache.arrow21.c.types;
public import gid_apache.arrow21.types;

/** */
template FileT()
{

  /** */
  override bool close()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_file_close(cast(GArrowFile*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  override gid_apache.arrow21.types.FileMode getMode() nothrow
  {
    GArrowFileMode _cretval;
    _cretval = garrow_file_get_mode(cast(GArrowFile*)this._cPtr);
    gid_apache.arrow21.types.FileMode _retval = cast(gid_apache.arrow21.types.FileMode)_cretval;
    return _retval;
  }

  /** */
  override bool isClosed() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_file_is_closed(cast(GArrowFile*)this._cPtr);
    return _retval;
  }

  /** */
  override long tell()
  {
    long _retval;
    GError *_err;
    _retval = garrow_file_tell(cast(GArrowFile*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.file.File]
template FileGidBuilderT()
{
}
