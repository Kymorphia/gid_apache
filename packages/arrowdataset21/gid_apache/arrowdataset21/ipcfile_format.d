/// Module for [IPCFileFormat] class
module gid_apache.arrowdataset21.ipcfile_format;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowdataset21.c.functions;
import gid_apache.arrowdataset21.c.types;
import gid_apache.arrowdataset21.file_format;
import gid_apache.arrowdataset21.types;

/** */
class IPCFileFormat : gid_apache.arrowdataset21.file_format.FileFormat
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
    return cast(void function())gadataset_ipc_file_format_get_type != &gidSymbolNotFound ? gadataset_ipc_file_format_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetIPCFileFormat";
  }

  /** Returns `this`, for use in `with` statements. */
  override IPCFileFormat self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset21.ipcfile_format.IPCFileFormat]
      Returns: New builder object
  */
  static IPCFileFormatGidBuilder builder() nothrow
  {
    return new IPCFileFormatGidBuilder;
  }

  /** */
  this() nothrow
  {
    GADatasetIPCFileFormat* _cretval;
    _cretval = gadataset_ipc_file_format_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset21.ipcfile_format.IPCFileFormat]
class IPCFileFormatGidBuilderImpl(T) : gid_apache.arrowdataset21.file_format.FileFormatGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowdataset21.ipcfile_format.IPCFileFormat]
final class IPCFileFormatGidBuilder : IPCFileFormatGidBuilderImpl!IPCFileFormatGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  IPCFileFormat build() nothrow
  {
    return new IPCFileFormat(cast(void*)createGObject(IPCFileFormat._getGType), Yes.Take);
  }
}
