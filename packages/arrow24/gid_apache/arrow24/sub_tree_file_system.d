/// Module for [SubTreeFileSystem] class
module gid_apache.arrow24.sub_tree_file_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.file_system;
import gid_apache.arrow24.types;

/** */
class SubTreeFileSystem : gid_apache.arrow24.file_system.FileSystem
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
    return cast(void function())garrow_sub_tree_file_system_get_type != &gidSymbolNotFound ? garrow_sub_tree_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSubTreeFileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override SubTreeFileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.sub_tree_file_system.SubTreeFileSystem]
      Returns: New builder object
  */
  static SubTreeFileSystemGidBuilder builder() nothrow
  {
    return new SubTreeFileSystemGidBuilder;
  }

  /** */
  @property gid_apache.arrow24.file_system.FileSystem baseFileSystem() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.file_system.FileSystem)("base-file-system");
  }

  /** */
  this(string basePath, gid_apache.arrow24.file_system.FileSystem baseFileSystem) nothrow
  {
    GArrowSubTreeFileSystem* _cretval;
    const(char)* _basePath = basePath.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_sub_tree_file_system_new(_basePath, baseFileSystem ? cast(GArrowFileSystem*)baseFileSystem._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.sub_tree_file_system.SubTreeFileSystem]
class SubTreeFileSystemGidBuilderImpl(T) : gid_apache.arrow24.file_system.FileSystemGidBuilderImpl!T
{

  /** */
  T baseFileSystem(gid_apache.arrow24.file_system.FileSystem propval) nothrow
  {
    return setProperty("base-file-system", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.sub_tree_file_system.SubTreeFileSystem]
final class SubTreeFileSystemGidBuilder : SubTreeFileSystemGidBuilderImpl!SubTreeFileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SubTreeFileSystem build() nothrow
  {
    return new SubTreeFileSystem(cast(void*)createGObject(SubTreeFileSystem._getGType), Yes.Take);
  }
}
