/// Module for [FileFormat] class
module gid_apache.arrowdataset20.file_format;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.file_system;
import gid_apache.arrow20.output_stream;
import gid_apache.arrow20.schema;
import gid_apache.arrowdataset20.c.functions;
import gid_apache.arrowdataset20.c.types;
import gid_apache.arrowdataset20.file_write_options;
import gid_apache.arrowdataset20.file_writer;
import gid_apache.arrowdataset20.types;

/** */
class FileFormat : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_file_format_get_type != &gidSymbolNotFound ? gadataset_file_format_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFileFormat";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileFormat self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset20.file_format.FileFormat]
      Returns: New builder object
  */
  static FileFormatGidBuilder builder() nothrow
  {
    return new FileFormatGidBuilder;
  }

  /** */
  bool equal(gid_apache.arrowdataset20.file_format.FileFormat otherFormat) nothrow
  {
    bool _retval;
    _retval = cast(bool)gadataset_file_format_equal(cast(GADatasetFileFormat*)this._cPtr, otherFormat ? cast(GADatasetFileFormat*)otherFormat._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrowdataset20.file_write_options.FileWriteOptions getDefaultWriteOptions() nothrow
  {
    GADatasetFileWriteOptions* _cretval;
    _cretval = gadataset_file_format_get_default_write_options(cast(GADatasetFileFormat*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset20.file_write_options.FileWriteOptions)(cast(GADatasetFileWriteOptions*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string getTypeName() nothrow
  {
    char* _cretval;
    _cretval = gadataset_file_format_get_type_name(cast(GADatasetFileFormat*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  gid_apache.arrowdataset20.file_writer.FileWriter openWriter(gid_apache.arrow20.output_stream.OutputStream destination, gid_apache.arrow20.file_system.FileSystem fileSystem, string path, gid_apache.arrow20.schema.Schema schema, gid_apache.arrowdataset20.file_write_options.FileWriteOptions options)
  {
    GADatasetFileWriter* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = gadataset_file_format_open_writer(cast(GADatasetFileFormat*)this._cPtr, destination ? cast(GArrowOutputStream*)destination._cPtr(No.Dup) : null, fileSystem ? cast(GArrowFileSystem*)fileSystem._cPtr(No.Dup) : null, _path, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, options ? cast(GADatasetFileWriteOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset20.file_writer.FileWriter)(cast(GADatasetFileWriter*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset20.file_format.FileFormat]
class FileFormatGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T format(void* propval) nothrow
  {
    return setProperty("format", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset20.file_format.FileFormat]
final class FileFormatGidBuilder : FileFormatGidBuilderImpl!FileFormatGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileFormat build() nothrow
  {
    return new FileFormat(cast(void*)createGObject(FileFormat._getGType), Yes.Take);
  }
}
