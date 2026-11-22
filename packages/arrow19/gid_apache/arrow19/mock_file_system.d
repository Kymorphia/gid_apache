/// Module for [MockFileSystem] class
module gid_apache.arrow19.mock_file_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.file_system;
import gid_apache.arrow19.types;

/** */
class MockFileSystem : gid_apache.arrow19.file_system.FileSystem
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
    return cast(void function())garrow_mock_file_system_get_type != &gidSymbolNotFound ? garrow_mock_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMockFileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override MockFileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.mock_file_system.MockFileSystem]
      Returns: New builder object
  */
  static MockFileSystemGidBuilder builder() nothrow
  {
    return new MockFileSystemGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.mock_file_system.MockFileSystem]
class MockFileSystemGidBuilderImpl(T) : gid_apache.arrow19.file_system.FileSystemGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.mock_file_system.MockFileSystem]
final class MockFileSystemGidBuilder : MockFileSystemGidBuilderImpl!MockFileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MockFileSystem build() nothrow
  {
    return new MockFileSystem(cast(void*)createGObject(MockFileSystem._getGType), Yes.Take);
  }
}
