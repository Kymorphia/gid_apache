/// Module for [MutableBuffer] class
module gid_apache.arrow19.mutable_buffer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.buffer;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.types;

/** */
class MutableBuffer : gid_apache.arrow19.buffer.Buffer
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
    return cast(void function())garrow_mutable_buffer_get_type != &gidSymbolNotFound ? garrow_mutable_buffer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMutableBuffer";
  }

  /** Returns `this`, for use in `with` statements. */
  override MutableBuffer self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.mutable_buffer.MutableBuffer]
      Returns: New builder object
  */
  static MutableBufferGidBuilder builder() nothrow
  {
    return new MutableBufferGidBuilder;
  }

  /** */
  this(ubyte[] data) nothrow
  {
    GArrowMutableBuffer* _cretval;
    long _size;
    if (data)
      _size = cast(long)data.length;

    auto _data = cast(ubyte*)data.ptr;
    _cretval = garrow_mutable_buffer_new(_data, _size);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow19.mutable_buffer.MutableBuffer newBytes(gid.glib2.bytes.Bytes data) nothrow
  {
    GArrowMutableBuffer* _cretval;
    _cretval = garrow_mutable_buffer_new_bytes(data ? cast(GBytes*)data._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.mutable_buffer.MutableBuffer)(cast(GArrowMutableBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  alias setData = gid.gobject2.object.ObjectWrap.setData;

  /** */
  bool setData(long offset, ubyte[] data)
  {
    bool _retval;
    long _size;
    if (data)
      _size = cast(long)data.length;

    auto _data = cast(ubyte*)data.ptr;
    GError *_err;
    _retval = cast(bool)garrow_mutable_buffer_set_data(cast(GArrowMutableBuffer*)this._cPtr, offset, _data, _size, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  override gid_apache.arrow19.mutable_buffer.MutableBuffer slice(long offset, long size) nothrow
  {
    GArrowMutableBuffer* _cretval;
    _cretval = garrow_mutable_buffer_slice(cast(GArrowMutableBuffer*)this._cPtr, offset, size);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.mutable_buffer.MutableBuffer)(cast(GArrowMutableBuffer*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.mutable_buffer.MutableBuffer]
class MutableBufferGidBuilderImpl(T) : gid_apache.arrow19.buffer.BufferGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.mutable_buffer.MutableBuffer]
final class MutableBufferGidBuilder : MutableBufferGidBuilderImpl!MutableBufferGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MutableBuffer build() nothrow
  {
    return new MutableBuffer(cast(void*)createGObject(MutableBuffer._getGType), Yes.Take);
  }
}
