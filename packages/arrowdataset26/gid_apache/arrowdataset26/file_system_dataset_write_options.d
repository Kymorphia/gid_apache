/// Module for [FileSystemDatasetWriteOptions] class
module gid_apache.arrowdataset26.file_system_dataset_write_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.file_system;
import gid_apache.arrowdataset26.c.functions;
import gid_apache.arrowdataset26.c.types;
import gid_apache.arrowdataset26.file_write_options;
import gid_apache.arrowdataset26.partitioning;
import gid_apache.arrowdataset26.types;

/** */
class FileSystemDatasetWriteOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_file_system_dataset_write_options_get_type != &gidSymbolNotFound ? gadataset_file_system_dataset_write_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFileSystemDatasetWriteOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileSystemDatasetWriteOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset26.file_system_dataset_write_options.FileSystemDatasetWriteOptions]
      Returns: New builder object
  */
  static FileSystemDatasetWriteOptionsGidBuilder builder() nothrow
  {
    return new FileSystemDatasetWriteOptionsGidBuilder;
  }

  /** */
  @property string baseDir() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("base-dir");
  }

  /** */
  @property void baseDir(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("base-dir", propval);
  }

  /**
      Get `baseNameTemplate` property.
      Returns: Template string used to generate fragment base names. {i} will be
        replaced by an auto incremented integer.
  */
  @property string baseNameTemplate() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("base-name-template");
  }

  /**
      Set `baseNameTemplate` property.
      Params:
        propval = Template string used to generate fragment base names. {i} will be
          replaced by an auto incremented integer.
  */
  @property void baseNameTemplate(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("base-name-template", propval);
  }

  /** */
  @property gid_apache.arrow26.file_system.FileSystem fileSystem() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.file_system.FileSystem)("file-system");
  }

  /** */
  @property void fileSystem(gid_apache.arrow26.file_system.FileSystem propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.file_system.FileSystem)("file-system", propval);
  }

  /** */
  @property gid_apache.arrowdataset26.file_write_options.FileWriteOptions fileWriteOptions() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset26.file_write_options.FileWriteOptions)("file-write-options");
  }

  /** */
  @property void fileWriteOptions(gid_apache.arrowdataset26.file_write_options.FileWriteOptions propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrowdataset26.file_write_options.FileWriteOptions)("file-write-options", propval);
  }

  /**
      Get `maxPartitions` property.
      Returns: Maximum number of partitions any batch may be written into.
  */
  @property uint maxPartitions() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(uint)("max-partitions");
  }

  /**
      Set `maxPartitions` property.
      Params:
        propval = Maximum number of partitions any batch may be written into.
  */
  @property void maxPartitions(uint propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(uint)("max-partitions", propval);
  }

  /**
      Get `partitioning` property.
      Returns: #GADatasetPartitioning used to generate fragment paths.
  */
  @property gid_apache.arrowdataset26.partitioning.Partitioning partitioning() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset26.partitioning.Partitioning)("partitioning");
  }

  /**
      Set `partitioning` property.
      Params:
        propval = #GADatasetPartitioning used to generate fragment paths.
  */
  @property void partitioning(gid_apache.arrowdataset26.partitioning.Partitioning propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrowdataset26.partitioning.Partitioning)("partitioning", propval);
  }

  /** */
  this() nothrow
  {
    GADatasetFileSystemDatasetWriteOptions* _cretval;
    _cretval = gadataset_file_system_dataset_write_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset26.file_system_dataset_write_options.FileSystemDatasetWriteOptions]
class FileSystemDatasetWriteOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T baseDir(string propval) nothrow
  {
    return setProperty("base-dir", propval);
  }

  /**
      Set `baseNameTemplate` property.
      Params:
        propval = Template string used to generate fragment base names. {i} will be
          replaced by an auto incremented integer.
      Returns: Builder instance for fluent chaining
  */
  T baseNameTemplate(string propval) nothrow
  {
    return setProperty("base-name-template", propval);
  }

  /** */
  T fileSystem(gid_apache.arrow26.file_system.FileSystem propval) nothrow
  {
    return setProperty("file-system", propval);
  }

  /** */
  T fileWriteOptions(gid_apache.arrowdataset26.file_write_options.FileWriteOptions propval) nothrow
  {
    return setProperty("file-write-options", propval);
  }

  /**
      Set `maxPartitions` property.
      Params:
        propval = Maximum number of partitions any batch may be written into.
      Returns: Builder instance for fluent chaining
  */
  T maxPartitions(uint propval) nothrow
  {
    return setProperty("max-partitions", propval);
  }

  /**
      Set `partitioning` property.
      Params:
        propval = #GADatasetPartitioning used to generate fragment paths.
      Returns: Builder instance for fluent chaining
  */
  T partitioning(gid_apache.arrowdataset26.partitioning.Partitioning propval) nothrow
  {
    return setProperty("partitioning", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset26.file_system_dataset_write_options.FileSystemDatasetWriteOptions]
final class FileSystemDatasetWriteOptionsGidBuilder : FileSystemDatasetWriteOptionsGidBuilderImpl!FileSystemDatasetWriteOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileSystemDatasetWriteOptions build() nothrow
  {
    return new FileSystemDatasetWriteOptions(cast(void*)createGObject(FileSystemDatasetWriteOptions._getGType), Yes.Take);
  }
}
