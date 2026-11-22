/// Module for [FileSystemDataset] class
module gid_apache.arrowdataset23.file_system_dataset;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.file_system;
import gid_apache.arrowdataset23.c.functions;
import gid_apache.arrowdataset23.c.types;
import gid_apache.arrowdataset23.dataset;
import gid_apache.arrowdataset23.file_format;
import gid_apache.arrowdataset23.file_system_dataset_write_options;
import gid_apache.arrowdataset23.partitioning;
import gid_apache.arrowdataset23.scanner;
import gid_apache.arrowdataset23.types;

/** */
class FileSystemDataset : gid_apache.arrowdataset23.dataset.Dataset
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
    return cast(void function())gadataset_file_system_dataset_get_type != &gidSymbolNotFound ? gadataset_file_system_dataset_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFileSystemDataset";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileSystemDataset self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset23.file_system_dataset.FileSystemDataset]
      Returns: New builder object
  */
  static FileSystemDatasetGidBuilder builder() nothrow
  {
    return new FileSystemDatasetGidBuilder;
  }

  /**
      Get `fileSystem` property.
      Returns: File system of the dataset.
  */
  @property gid_apache.arrow23.file_system.FileSystem fileSystem() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.file_system.FileSystem)("file-system");
  }

  /**
      Get `format` property.
      Returns: Format of the dataset.
  */
  @property gid_apache.arrowdataset23.file_format.FileFormat format() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset23.file_format.FileFormat)("format");
  }

  /**
      Get `partitioning` property.
      Returns: Partitioning of the dataset.
  */
  @property gid_apache.arrowdataset23.partitioning.Partitioning partitioning() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset23.partitioning.Partitioning)("partitioning");
  }

  /** */
  static bool writeScanner(gid_apache.arrowdataset23.scanner.Scanner scanner, gid_apache.arrowdataset23.file_system_dataset_write_options.FileSystemDatasetWriteOptions options)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gadataset_file_system_dataset_write_scanner(scanner ? cast(GADatasetScanner*)scanner._cPtr(No.Dup) : null, options ? cast(GADatasetFileSystemDatasetWriteOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset23.file_system_dataset.FileSystemDataset]
class FileSystemDatasetGidBuilderImpl(T) : gid_apache.arrowdataset23.dataset.DatasetGidBuilderImpl!T
{

  /**
      Set `fileSystem` property.
      Params:
        propval = File system of the dataset.
      Returns: Builder instance for fluent chaining
  */
  T fileSystem(gid_apache.arrow23.file_system.FileSystem propval) nothrow
  {
    return setProperty("file-system", propval);
  }

  /**
      Set `format` property.
      Params:
        propval = Format of the dataset.
      Returns: Builder instance for fluent chaining
  */
  T format(gid_apache.arrowdataset23.file_format.FileFormat propval) nothrow
  {
    return setProperty("format", propval);
  }

  /**
      Set `partitioning` property.
      Params:
        propval = Partitioning of the dataset.
      Returns: Builder instance for fluent chaining
  */
  T partitioning(gid_apache.arrowdataset23.partitioning.Partitioning propval) nothrow
  {
    return setProperty("partitioning", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset23.file_system_dataset.FileSystemDataset]
final class FileSystemDatasetGidBuilder : FileSystemDatasetGidBuilderImpl!FileSystemDatasetGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileSystemDataset build() nothrow
  {
    return new FileSystemDataset(cast(void*)createGObject(FileSystemDataset._getGType), Yes.Take);
  }
}
