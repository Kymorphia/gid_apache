/// Module for [Buffer] class
module gid_apache.arrow19.buffer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.types;

/** */
class Buffer : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_buffer_get_type != &gidSymbolNotFound ? garrow_buffer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBuffer";
  }

  /** Returns `this`, for use in `with` statements. */
  override Buffer self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.buffer.Buffer]
      Returns: New builder object
  */
  static BufferGidBuilder builder() nothrow
  {
    return new BufferGidBuilder;
  }

  /** */
  @property gid_apache.arrow19.buffer.Buffer parent() nothrow
  {
    return getParent();
  }

  /** */
  this(ubyte[] data) nothrow
  {
    GArrowBuffer* _cretval;
    long _size;
    if (data)
      _size = cast(long)data.length;

    auto _data = cast(ubyte*)data.ptr;
    _cretval = garrow_buffer_new(_data, _size);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow19.buffer.Buffer newBytes(gid.glib2.bytes.Bytes data) nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_buffer_new_bytes(data ? cast(GBytes*)data._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.buffer.Buffer copy(long start, long size)
  {
    GArrowBuffer* _cretval;
    GError *_err;
    _cretval = garrow_buffer_copy(cast(GArrowBuffer*)this._cPtr, start, size, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow19.buffer.Buffer otherBuffer) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_buffer_equal(cast(GArrowBuffer*)this._cPtr, otherBuffer ? cast(GArrowBuffer*)otherBuffer._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool equalNBytes(gid_apache.arrow19.buffer.Buffer otherBuffer, long nBytes) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_buffer_equal_n_bytes(cast(GArrowBuffer*)this._cPtr, otherBuffer ? cast(GArrowBuffer*)otherBuffer._cPtr(No.Dup) : null, nBytes);
    return _retval;
  }

  /** */
  long getCapacity() nothrow
  {
    long _retval;
    _retval = garrow_buffer_get_capacity(cast(GArrowBuffer*)this._cPtr);
    return _retval;
  }

  alias getData = gid.gobject2.object.ObjectWrap.getData;

  /** */
  gid.glib2.bytes.Bytes getData() nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_buffer_get_data(cast(GArrowBuffer*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes getMutableData() nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_buffer_get_mutable_data(cast(GArrowBuffer*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  gid_apache.arrow19.buffer.Buffer getParent() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_buffer_get_parent(cast(GArrowBuffer*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getSize() nothrow
  {
    long _retval;
    _retval = garrow_buffer_get_size(cast(GArrowBuffer*)this._cPtr);
    return _retval;
  }

  /** */
  bool isMutable() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_buffer_is_mutable(cast(GArrowBuffer*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow19.buffer.Buffer slice(long offset, long size) nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_buffer_slice(cast(GArrowBuffer*)this._cPtr, offset, size);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.buffer.Buffer]
class BufferGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T buffer(void* propval) nothrow
  {
    return setProperty("buffer", propval);
  }

  /** */
  T data(gid.glib2.bytes.Bytes propval) nothrow
  {
    return setProperty("data", propval);
  }

  /** */
  T parent(gid_apache.arrow19.buffer.Buffer propval) nothrow
  {
    return setProperty("parent", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.buffer.Buffer]
final class BufferGidBuilder : BufferGidBuilderImpl!BufferGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Buffer build() nothrow
  {
    return new Buffer(cast(void*)createGObject(Buffer._getGType), Yes.Take);
  }
}
