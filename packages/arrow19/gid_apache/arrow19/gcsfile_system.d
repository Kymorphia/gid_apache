/// Module for [GCSFileSystem] class
module gid_apache.arrow19.gcsfile_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.file_system;
import gid_apache.arrow19.types;

/** */
class GCSFileSystem : gid_apache.arrow19.file_system.FileSystem
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
    return cast(void function())garrow_gcs_file_system_get_type != &gidSymbolNotFound ? garrow_gcs_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowGCSFileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override GCSFileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.gcsfile_system.GCSFileSystem]
      Returns: New builder object
  */
  static GCSFileSystemGidBuilder builder() nothrow
  {
    return new GCSFileSystemGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.gcsfile_system.GCSFileSystem]
class GCSFileSystemGidBuilderImpl(T) : gid_apache.arrow19.file_system.FileSystemGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.gcsfile_system.GCSFileSystem]
final class GCSFileSystemGidBuilder : GCSFileSystemGidBuilderImpl!GCSFileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  GCSFileSystem build() nothrow
  {
    return new GCSFileSystem(cast(void*)createGObject(GCSFileSystem._getGType), Yes.Take);
  }
}
