/// Module for [Readable] interface mixin
module gid_apache.arrow26.readable_mixin;

public import gid.core.basictypes;
public import gid_apache.arrow26.readable_iface_proxy;
public import gid.core.utils;
public import gid.glib2.bytes;
public import gid.glib2.error;
public import gid.gobject2.gid_builder;
public import gid.gobject2.object;
public import gid_apache.arrow26.buffer;
public import gid_apache.arrow26.c.functions;
public import gid_apache.arrow26.c.types;
public import gid_apache.arrow26.types;

/** */
template ReadableT()
{

  /** */
  override gid_apache.arrow26.buffer.Buffer read(long nBytes)
  {
    GArrowBuffer* _cretval;
    GError *_err;
    _cretval = garrow_readable_read(cast(GArrowReadable*)this._cPtr, nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  override gid.glib2.bytes.Bytes readBytes(long nBytes)
  {
    GBytes* _cretval;
    GError *_err;
    _cretval = garrow_readable_read_bytes(cast(GArrowReadable*)this._cPtr, nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.readable.Readable]
template ReadableGidBuilderT()
{
}
