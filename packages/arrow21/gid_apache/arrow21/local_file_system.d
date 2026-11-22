/// Module for [LocalFileSystem] class
module gid_apache.arrow21.local_file_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.file_system;
import gid_apache.arrow21.local_file_system_options;
import gid_apache.arrow21.types;

/** */
class LocalFileSystem : gid_apache.arrow21.file_system.FileSystem
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
    return cast(void function())garrow_local_file_system_get_type != &gidSymbolNotFound ? garrow_local_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLocalFileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override LocalFileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.local_file_system.LocalFileSystem]
      Returns: New builder object
  */
  static LocalFileSystemGidBuilder builder() nothrow
  {
    return new LocalFileSystemGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.local_file_system_options.LocalFileSystemOptions options = null) nothrow
  {
    GArrowLocalFileSystem* _cretval;
    _cretval = garrow_local_file_system_new(options ? cast(GArrowLocalFileSystemOptions*)options._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.local_file_system.LocalFileSystem]
class LocalFileSystemGidBuilderImpl(T) : gid_apache.arrow21.file_system.FileSystemGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.local_file_system.LocalFileSystem]
final class LocalFileSystemGidBuilder : LocalFileSystemGidBuilderImpl!LocalFileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LocalFileSystem build() nothrow
  {
    return new LocalFileSystem(cast(void*)createGObject(LocalFileSystem._getGType), Yes.Take);
  }
}
