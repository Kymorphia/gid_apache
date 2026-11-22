/// Module for [FileMetadata] class
module gid_apache.parquet24.file_metadata;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.parquet24.c.functions;
import gid_apache.parquet24.c.types;
import gid_apache.parquet24.row_group_metadata;
import gid_apache.parquet24.types;

/** */
class FileMetadata : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gparquet_file_metadata_get_type != &gidSymbolNotFound ? gparquet_file_metadata_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetFileMetadata";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileMetadata self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet24.file_metadata.FileMetadata]
      Returns: New builder object
  */
  static FileMetadataGidBuilder builder() nothrow
  {
    return new FileMetadataGidBuilder;
  }

  /** */
  bool canDecompress() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_file_metadata_can_decompress(cast(GParquetFileMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  bool equal(gid_apache.parquet24.file_metadata.FileMetadata otherMetadata) nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_file_metadata_equal(cast(GParquetFileMetadata*)this._cPtr, otherMetadata ? cast(GParquetFileMetadata*)otherMetadata._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  string getCreatedBy() nothrow
  {
    const(char)* _cretval;
    _cretval = gparquet_file_metadata_get_created_by(cast(GParquetFileMetadata*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }

  /** */
  int getNColumns() nothrow
  {
    int _retval;
    _retval = gparquet_file_metadata_get_n_columns(cast(GParquetFileMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  int getNRowGroups() nothrow
  {
    int _retval;
    _retval = gparquet_file_metadata_get_n_row_groups(cast(GParquetFileMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  long getNRows() nothrow
  {
    long _retval;
    _retval = gparquet_file_metadata_get_n_rows(cast(GParquetFileMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  int getNSchemaElements() nothrow
  {
    int _retval;
    _retval = gparquet_file_metadata_get_n_schema_elements(cast(GParquetFileMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.parquet24.row_group_metadata.RowGroupMetadata getRowGroup(int index)
  {
    GParquetRowGroupMetadata* _cretval;
    GError *_err;
    _cretval = gparquet_file_metadata_get_row_group(cast(GParquetFileMetadata*)this._cPtr, index, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet24.row_group_metadata.RowGroupMetadata)(cast(GParquetRowGroupMetadata*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  uint getSize() nothrow
  {
    uint _retval;
    _retval = gparquet_file_metadata_get_size(cast(GParquetFileMetadata*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet24.file_metadata.FileMetadata]
class FileMetadataGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T metadata(void* propval) nothrow
  {
    return setProperty("metadata", propval);
  }
}

/// Fluent builder for [gid_apache.parquet24.file_metadata.FileMetadata]
final class FileMetadataGidBuilder : FileMetadataGidBuilderImpl!FileMetadataGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileMetadata build() nothrow
  {
    return new FileMetadata(cast(void*)createGObject(FileMetadata._getGType), Yes.Take);
  }
}
