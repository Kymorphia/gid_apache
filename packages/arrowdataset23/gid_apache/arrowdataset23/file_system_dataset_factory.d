/// Module for [FileSystemDatasetFactory] class
module gid_apache.arrowdataset23.file_system_dataset_factory;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.file_system;
import gid_apache.arrowdataset23.c.functions;
import gid_apache.arrowdataset23.c.types;
import gid_apache.arrowdataset23.dataset_factory;
import gid_apache.arrowdataset23.file_format;
import gid_apache.arrowdataset23.file_system_dataset;
import gid_apache.arrowdataset23.finish_options;
import gid_apache.arrowdataset23.partitioning;
import gid_apache.arrowdataset23.types;

/** */
class FileSystemDatasetFactory : gid_apache.arrowdataset23.dataset_factory.DatasetFactory
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
    return cast(void function())gadataset_file_system_dataset_factory_get_type != &gidSymbolNotFound ? gadataset_file_system_dataset_factory_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFileSystemDatasetFactory";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileSystemDatasetFactory self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset23.file_system_dataset_factory.FileSystemDatasetFactory]
      Returns: New builder object
  */
  static FileSystemDatasetFactoryGidBuilder builder() nothrow
  {
    return new FileSystemDatasetFactoryGidBuilder;
  }

  /**
      Get `fileSystem` property.
      Returns: File system passed to #GADatasetFileSystemDataset.
  */
  @property gid_apache.arrow23.file_system.FileSystem fileSystem() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.file_system.FileSystem)("file-system");
  }

  /**
      Get `format` property.
      Returns: Format passed to #GADatasetFileSystemDataset.
  */
  @property gid_apache.arrowdataset23.file_format.FileFormat format() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset23.file_format.FileFormat)("format");
  }

  /**
      Get `partitionBaseDir` property.
      Returns: Partition base directory used by #GADatasetFileSystemDataset.
  */
  @property string partitionBaseDir() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("partition-base-dir");
  }

  /**
      Set `partitionBaseDir` property.
      Params:
        propval = Partition base directory used by #GADatasetFileSystemDataset.
  */
  @property void partitionBaseDir(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("partition-base-dir", propval);
  }

  /**
      Get `partitioning` property.
      Returns: Partitioning used by #GADatasetFileSystemDataset.
  */
  @property gid_apache.arrowdataset23.partitioning.Partitioning partitioning() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset23.partitioning.Partitioning)("partitioning");
  }

  /**
      Set `partitioning` property.
      Params:
        propval = Partitioning used by #GADatasetFileSystemDataset.
  */
  @property void partitioning(gid_apache.arrowdataset23.partitioning.Partitioning propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrowdataset23.partitioning.Partitioning)("partitioning", propval);
  }

  /** */
  this(gid_apache.arrowdataset23.file_format.FileFormat fileFormat) nothrow
  {
    GADatasetFileSystemDatasetFactory* _cretval;
    _cretval = gadataset_file_system_dataset_factory_new(fileFormat ? cast(GADatasetFileFormat*)fileFormat._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  bool addPath(string path)
  {
    bool _retval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _retval = cast(bool)gadataset_file_system_dataset_factory_add_path(cast(GADatasetFileSystemDatasetFactory*)this._cPtr, _path, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  override gid_apache.arrowdataset23.file_system_dataset.FileSystemDataset finish(gid_apache.arrowdataset23.finish_options.FinishOptions options = null)
  {
    GADatasetFileSystemDataset* _cretval;
    GError *_err;
    _cretval = gadataset_file_system_dataset_factory_finish(cast(GADatasetFileSystemDatasetFactory*)this._cPtr, options ? cast(GADatasetFinishOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset23.file_system_dataset.FileSystemDataset)(cast(GADatasetFileSystemDataset*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool setFileSystem(gid_apache.arrow23.file_system.FileSystem fileSystem)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gadataset_file_system_dataset_factory_set_file_system(cast(GADatasetFileSystemDatasetFactory*)this._cPtr, fileSystem ? cast(GArrowFileSystem*)fileSystem._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool setFileSystemUri(string uri)
  {
    bool _retval;
    const(char)* _uri = uri.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _retval = cast(bool)gadataset_file_system_dataset_factory_set_file_system_uri(cast(GADatasetFileSystemDatasetFactory*)this._cPtr, _uri, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset23.file_system_dataset_factory.FileSystemDatasetFactory]
class FileSystemDatasetFactoryGidBuilderImpl(T) : gid_apache.arrowdataset23.dataset_factory.DatasetFactoryGidBuilderImpl!T
{

  /**
      Set `format` property.
      Params:
        propval = Format passed to #GADatasetFileSystemDataset.
      Returns: Builder instance for fluent chaining
  */
  T format(gid_apache.arrowdataset23.file_format.FileFormat propval) nothrow
  {
    return setProperty("format", propval);
  }

  /**
      Set `partitionBaseDir` property.
      Params:
        propval = Partition base directory used by #GADatasetFileSystemDataset.
      Returns: Builder instance for fluent chaining
  */
  T partitionBaseDir(string propval) nothrow
  {
    return setProperty("partition-base-dir", propval);
  }

  /**
      Set `partitioning` property.
      Params:
        propval = Partitioning used by #GADatasetFileSystemDataset.
      Returns: Builder instance for fluent chaining
  */
  T partitioning(gid_apache.arrowdataset23.partitioning.Partitioning propval) nothrow
  {
    return setProperty("partitioning", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset23.file_system_dataset_factory.FileSystemDatasetFactory]
final class FileSystemDatasetFactoryGidBuilder : FileSystemDatasetFactoryGidBuilderImpl!FileSystemDatasetFactoryGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileSystemDatasetFactory build() nothrow
  {
    return new FileSystemDatasetFactory(cast(void*)createGObject(FileSystemDatasetFactory._getGType), Yes.Take);
  }
}
