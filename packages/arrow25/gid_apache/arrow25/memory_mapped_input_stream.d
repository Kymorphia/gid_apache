/// Module for [MemoryMappedInputStream] class
module gid_apache.arrow25.memory_mapped_input_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.file;
import gid_apache.arrow25.file_mixin;
import gid_apache.arrow25.readable;
import gid_apache.arrow25.readable_mixin;
import gid_apache.arrow25.seekable_input_stream;
import gid_apache.arrow25.types;

/** */
class MemoryMappedInputStream : gid_apache.arrow25.seekable_input_stream.SeekableInputStream
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
    return cast(void function())garrow_memory_mapped_input_stream_get_type != &gidSymbolNotFound ? garrow_memory_mapped_input_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMemoryMappedInputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override MemoryMappedInputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.memory_mapped_input_stream.MemoryMappedInputStream]
      Returns: New builder object
  */
  static MemoryMappedInputStreamGidBuilder builder() nothrow
  {
    return new MemoryMappedInputStreamGidBuilder;
  }

  /** */
  this(string path)
  {
    GArrowMemoryMappedInputStream* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_memory_mapped_input_stream_new(_path, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.memory_mapped_input_stream.MemoryMappedInputStream]
class MemoryMappedInputStreamGidBuilderImpl(T) : gid_apache.arrow25.seekable_input_stream.SeekableInputStreamGidBuilderImpl!T
{

}

/// Fluent builder for [gid_apache.arrow25.memory_mapped_input_stream.MemoryMappedInputStream]
final class MemoryMappedInputStreamGidBuilder : MemoryMappedInputStreamGidBuilderImpl!MemoryMappedInputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MemoryMappedInputStream build() nothrow
  {
    return new MemoryMappedInputStream(cast(void*)createGObject(MemoryMappedInputStream._getGType), Yes.Take);
  }
}
