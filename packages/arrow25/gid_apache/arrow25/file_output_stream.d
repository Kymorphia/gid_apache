/// Module for [FileOutputStream] class
module gid_apache.arrow25.file_output_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.file;
import gid_apache.arrow25.file_mixin;
import gid_apache.arrow25.output_stream;
import gid_apache.arrow25.types;
import gid_apache.arrow25.writable;
import gid_apache.arrow25.writable_mixin;

/** */
class FileOutputStream : gid_apache.arrow25.output_stream.OutputStream
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
    return cast(void function())garrow_file_output_stream_get_type != &gidSymbolNotFound ? garrow_file_output_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFileOutputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileOutputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.file_output_stream.FileOutputStream]
      Returns: New builder object
  */
  static FileOutputStreamGidBuilder builder() nothrow
  {
    return new FileOutputStreamGidBuilder;
  }

  /** */
  this(string path, bool append)
  {
    GArrowFileOutputStream* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_file_output_stream_new(_path, append, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.file_output_stream.FileOutputStream]
class FileOutputStreamGidBuilderImpl(T) : gid_apache.arrow25.output_stream.OutputStreamGidBuilderImpl!T
{

}

/// Fluent builder for [gid_apache.arrow25.file_output_stream.FileOutputStream]
final class FileOutputStreamGidBuilder : FileOutputStreamGidBuilderImpl!FileOutputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileOutputStream build() nothrow
  {
    return new FileOutputStream(cast(void*)createGObject(FileOutputStream._getGType), Yes.Take);
  }
}
