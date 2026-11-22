/// Module for [BufferOutputStream] class
module gid_apache.arrow22.buffer_output_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.file;
import gid_apache.arrow22.file_mixin;
import gid_apache.arrow22.output_stream;
import gid_apache.arrow22.resizable_buffer;
import gid_apache.arrow22.types;
import gid_apache.arrow22.writable;
import gid_apache.arrow22.writable_mixin;

/** */
class BufferOutputStream : gid_apache.arrow22.output_stream.OutputStream
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
    return cast(void function())garrow_buffer_output_stream_get_type != &gidSymbolNotFound ? garrow_buffer_output_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBufferOutputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override BufferOutputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.buffer_output_stream.BufferOutputStream]
      Returns: New builder object
  */
  static BufferOutputStreamGidBuilder builder() nothrow
  {
    return new BufferOutputStreamGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.resizable_buffer.ResizableBuffer buffer) nothrow
  {
    GArrowBufferOutputStream* _cretval;
    _cretval = garrow_buffer_output_stream_new(buffer ? cast(GArrowResizableBuffer*)buffer._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.buffer_output_stream.BufferOutputStream]
class BufferOutputStreamGidBuilderImpl(T) : gid_apache.arrow22.output_stream.OutputStreamGidBuilderImpl!T
{

}

/// Fluent builder for [gid_apache.arrow22.buffer_output_stream.BufferOutputStream]
final class BufferOutputStreamGidBuilder : BufferOutputStreamGidBuilderImpl!BufferOutputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BufferOutputStream build() nothrow
  {
    return new BufferOutputStream(cast(void*)createGObject(BufferOutputStream._getGType), Yes.Take);
  }
}
