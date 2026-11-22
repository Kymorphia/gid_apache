/// Module for [S3FileSystem] class
module gid_apache.arrow19.s3_file_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.file_system;
import gid_apache.arrow19.types;

/** */
class S3FileSystem : gid_apache.arrow19.file_system.FileSystem
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
    return cast(void function())garrow_s3_file_system_get_type != &gidSymbolNotFound ? garrow_s3_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowS3FileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override S3FileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.s3_file_system.S3FileSystem]
      Returns: New builder object
  */
  static S3FileSystemGidBuilder builder() nothrow
  {
    return new S3FileSystemGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.s3_file_system.S3FileSystem]
class S3FileSystemGidBuilderImpl(T) : gid_apache.arrow19.file_system.FileSystemGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.s3_file_system.S3FileSystem]
final class S3FileSystemGidBuilder : S3FileSystemGidBuilderImpl!S3FileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  S3FileSystem build() nothrow
  {
    return new S3FileSystem(cast(void*)createGObject(S3FileSystem._getGType), Yes.Take);
  }
}
