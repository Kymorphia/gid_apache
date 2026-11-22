/// Module for [FileInputStream] class
module gid_apache.arrow24.file_input_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.file;
import gid_apache.arrow24.file_mixin;
import gid_apache.arrow24.readable;
import gid_apache.arrow24.readable_mixin;
import gid_apache.arrow24.seekable_input_stream;
import gid_apache.arrow24.types;

/** */
class FileInputStream : gid_apache.arrow24.seekable_input_stream.SeekableInputStream
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
    return cast(void function())garrow_file_input_stream_get_type != &gidSymbolNotFound ? garrow_file_input_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFileInputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileInputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.file_input_stream.FileInputStream]
      Returns: New builder object
  */
  static FileInputStreamGidBuilder builder() nothrow
  {
    return new FileInputStreamGidBuilder;
  }

  /** */
  this(string path)
  {
    GArrowFileInputStream* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_file_input_stream_new(_path, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow24.file_input_stream.FileInputStream newFileDescriptor(int fileDescriptor)
  {
    GArrowFileInputStream* _cretval;
    GError *_err;
    _cretval = garrow_file_input_stream_new_file_descriptor(fileDescriptor, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.file_input_stream.FileInputStream)(cast(GArrowFileInputStream*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getFileDescriptor() nothrow
  {
    int _retval;
    _retval = garrow_file_input_stream_get_file_descriptor(cast(GArrowFileInputStream*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.file_input_stream.FileInputStream]
class FileInputStreamGidBuilderImpl(T) : gid_apache.arrow24.seekable_input_stream.SeekableInputStreamGidBuilderImpl!T
{

}

/// Fluent builder for [gid_apache.arrow24.file_input_stream.FileInputStream]
final class FileInputStreamGidBuilder : FileInputStreamGidBuilderImpl!FileInputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileInputStream build() nothrow
  {
    return new FileInputStream(cast(void*)createGObject(FileInputStream._getGType), Yes.Take);
  }
}
