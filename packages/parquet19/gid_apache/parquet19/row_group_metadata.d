/// Module for [RowGroupMetadata] class
module gid_apache.parquet19.row_group_metadata;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.parquet19.c.functions;
import gid_apache.parquet19.c.types;
import gid_apache.parquet19.column_chunk_metadata;
import gid_apache.parquet19.file_metadata;
import gid_apache.parquet19.types;

/** */
class RowGroupMetadata : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gparquet_row_group_metadata_get_type != &gidSymbolNotFound ? gparquet_row_group_metadata_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetRowGroupMetadata";
  }

  /** Returns `this`, for use in `with` statements. */
  override RowGroupMetadata self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet19.row_group_metadata.RowGroupMetadata]
      Returns: New builder object
  */
  static RowGroupMetadataGidBuilder builder() nothrow
  {
    return new RowGroupMetadataGidBuilder;
  }

  /** */
  bool canDecompress() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_row_group_metadata_can_decompress(cast(GParquetRowGroupMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  bool equal(gid_apache.parquet19.row_group_metadata.RowGroupMetadata otherMetadata) nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_row_group_metadata_equal(cast(GParquetRowGroupMetadata*)this._cPtr, otherMetadata ? cast(GParquetRowGroupMetadata*)otherMetadata._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.parquet19.column_chunk_metadata.ColumnChunkMetadata getColumnChunk(int index)
  {
    GParquetColumnChunkMetadata* _cretval;
    GError *_err;
    _cretval = gparquet_row_group_metadata_get_column_chunk(cast(GParquetRowGroupMetadata*)this._cPtr, index, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet19.column_chunk_metadata.ColumnChunkMetadata)(cast(GParquetColumnChunkMetadata*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getFileOffset() nothrow
  {
    long _retval;
    _retval = gparquet_row_group_metadata_get_file_offset(cast(GParquetRowGroupMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  int getNColumns() nothrow
  {
    int _retval;
    _retval = gparquet_row_group_metadata_get_n_columns(cast(GParquetRowGroupMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  long getNRows() nothrow
  {
    long _retval;
    _retval = gparquet_row_group_metadata_get_n_rows(cast(GParquetRowGroupMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  long getTotalCompressedSize() nothrow
  {
    long _retval;
    _retval = gparquet_row_group_metadata_get_total_compressed_size(cast(GParquetRowGroupMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  long getTotalSize() nothrow
  {
    long _retval;
    _retval = gparquet_row_group_metadata_get_total_size(cast(GParquetRowGroupMetadata*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet19.row_group_metadata.RowGroupMetadata]
class RowGroupMetadataGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T metadata(void* propval) nothrow
  {
    return setProperty("metadata", propval);
  }

  /** */
  T owner(gid_apache.parquet19.file_metadata.FileMetadata propval) nothrow
  {
    return setProperty("owner", propval);
  }
}

/// Fluent builder for [gid_apache.parquet19.row_group_metadata.RowGroupMetadata]
final class RowGroupMetadataGidBuilder : RowGroupMetadataGidBuilderImpl!RowGroupMetadataGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RowGroupMetadata build() nothrow
  {
    return new RowGroupMetadata(cast(void*)createGObject(RowGroupMetadata._getGType), Yes.Take);
  }
}
