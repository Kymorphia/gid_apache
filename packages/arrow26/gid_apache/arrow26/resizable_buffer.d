/// Module for [ResizableBuffer] class
module gid_apache.arrow26.resizable_buffer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.mutable_buffer;
import gid_apache.arrow26.types;

/** */
class ResizableBuffer : gid_apache.arrow26.mutable_buffer.MutableBuffer
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
    return cast(void function())garrow_resizable_buffer_get_type != &gidSymbolNotFound ? garrow_resizable_buffer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowResizableBuffer";
  }

  /** Returns `this`, for use in `with` statements. */
  override ResizableBuffer self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.resizable_buffer.ResizableBuffer]
      Returns: New builder object
  */
  static ResizableBufferGidBuilder builder() nothrow
  {
    return new ResizableBufferGidBuilder;
  }

  /** */
  this(long initialSize)
  {
    GArrowResizableBuffer* _cretval;
    GError *_err;
    _cretval = garrow_resizable_buffer_new(initialSize, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool reserve(long newCapacity)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_resizable_buffer_reserve(cast(GArrowResizableBuffer*)this._cPtr, newCapacity, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool resize(long newSize)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_resizable_buffer_resize(cast(GArrowResizableBuffer*)this._cPtr, newSize, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.resizable_buffer.ResizableBuffer]
class ResizableBufferGidBuilderImpl(T) : gid_apache.arrow26.mutable_buffer.MutableBufferGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.resizable_buffer.ResizableBuffer]
final class ResizableBufferGidBuilder : ResizableBufferGidBuilderImpl!ResizableBufferGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ResizableBuffer build() nothrow
  {
    return new ResizableBuffer(cast(void*)createGObject(ResizableBuffer._getGType), Yes.Take);
  }
}
