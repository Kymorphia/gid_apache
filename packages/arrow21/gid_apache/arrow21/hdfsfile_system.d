/// Module for [HDFSFileSystem] class
module gid_apache.arrow21.hdfsfile_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.file_system;
import gid_apache.arrow21.types;

/** */
class HDFSFileSystem : gid_apache.arrow21.file_system.FileSystem
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
    return cast(void function())garrow_hdfs_file_system_get_type != &gidSymbolNotFound ? garrow_hdfs_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowHDFSFileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override HDFSFileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.hdfsfile_system.HDFSFileSystem]
      Returns: New builder object
  */
  static HDFSFileSystemGidBuilder builder() nothrow
  {
    return new HDFSFileSystemGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.hdfsfile_system.HDFSFileSystem]
class HDFSFileSystemGidBuilderImpl(T) : gid_apache.arrow21.file_system.FileSystemGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.hdfsfile_system.HDFSFileSystem]
final class HDFSFileSystemGidBuilder : HDFSFileSystemGidBuilderImpl!HDFSFileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  HDFSFileSystem build() nothrow
  {
    return new HDFSFileSystem(cast(void*)createGObject(HDFSFileSystem._getGType), Yes.Take);
  }
}
