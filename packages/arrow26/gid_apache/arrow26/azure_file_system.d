/// Module for [AzureFileSystem] class
module gid_apache.arrow26.azure_file_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.file_system;
import gid_apache.arrow26.types;

/** */
class AzureFileSystem : gid_apache.arrow26.file_system.FileSystem
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
    return cast(void function())garrow_azure_file_system_get_type != &gidSymbolNotFound ? garrow_azure_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowAzureFileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override AzureFileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.azure_file_system.AzureFileSystem]
      Returns: New builder object
  */
  static AzureFileSystemGidBuilder builder() nothrow
  {
    return new AzureFileSystemGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.azure_file_system.AzureFileSystem]
class AzureFileSystemGidBuilderImpl(T) : gid_apache.arrow26.file_system.FileSystemGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.azure_file_system.AzureFileSystem]
final class AzureFileSystemGidBuilder : AzureFileSystemGidBuilderImpl!AzureFileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  AzureFileSystem build() nothrow
  {
    return new AzureFileSystem(cast(void*)createGObject(AzureFileSystem._getGType), Yes.Take);
  }
}
