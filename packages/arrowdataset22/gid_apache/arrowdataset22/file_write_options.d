/// Module for [FileWriteOptions] class
module gid_apache.arrowdataset22.file_write_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowdataset22.c.functions;
import gid_apache.arrowdataset22.c.types;
import gid_apache.arrowdataset22.types;

/** */
class FileWriteOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_file_write_options_get_type != &gidSymbolNotFound ? gadataset_file_write_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFileWriteOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileWriteOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset22.file_write_options.FileWriteOptions]
      Returns: New builder object
  */
  static FileWriteOptionsGidBuilder builder() nothrow
  {
    return new FileWriteOptionsGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset22.file_write_options.FileWriteOptions]
class FileWriteOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T options(void* propval) nothrow
  {
    return setProperty("options", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset22.file_write_options.FileWriteOptions]
final class FileWriteOptionsGidBuilder : FileWriteOptionsGidBuilderImpl!FileWriteOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileWriteOptions build() nothrow
  {
    return new FileWriteOptions(cast(void*)createGObject(FileWriteOptions._getGType), Yes.Take);
  }
}
