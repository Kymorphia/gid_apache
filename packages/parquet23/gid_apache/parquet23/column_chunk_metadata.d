/// Module for [ColumnChunkMetadata] class
module gid_apache.parquet23.column_chunk_metadata;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.parquet23.c.functions;
import gid_apache.parquet23.c.types;
import gid_apache.parquet23.row_group_metadata;
import gid_apache.parquet23.statistics;
import gid_apache.parquet23.types;

/** */
class ColumnChunkMetadata : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gparquet_column_chunk_metadata_get_type != &gidSymbolNotFound ? gparquet_column_chunk_metadata_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetColumnChunkMetadata";
  }

  /** Returns `this`, for use in `with` statements. */
  override ColumnChunkMetadata self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet23.column_chunk_metadata.ColumnChunkMetadata]
      Returns: New builder object
  */
  static ColumnChunkMetadataGidBuilder builder() nothrow
  {
    return new ColumnChunkMetadataGidBuilder;
  }

  /** */
  bool canDecompress() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_column_chunk_metadata_can_decompress(cast(GParquetColumnChunkMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  bool equal(gid_apache.parquet23.column_chunk_metadata.ColumnChunkMetadata otherMetadata) nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_column_chunk_metadata_equal(cast(GParquetColumnChunkMetadata*)this._cPtr, otherMetadata ? cast(GParquetColumnChunkMetadata*)otherMetadata._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  long getFileOffset() nothrow
  {
    long _retval;
    _retval = gparquet_column_chunk_metadata_get_file_offset(cast(GParquetColumnChunkMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.parquet23.statistics.Statistics getStatistics() nothrow
  {
    GParquetStatistics* _cretval;
    _cretval = gparquet_column_chunk_metadata_get_statistics(cast(GParquetColumnChunkMetadata*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet23.statistics.Statistics)(cast(GParquetStatistics*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getTotalCompressedSize() nothrow
  {
    long _retval;
    _retval = gparquet_column_chunk_metadata_get_total_compressed_size(cast(GParquetColumnChunkMetadata*)this._cPtr);
    return _retval;
  }

  /** */
  long getTotalSize() nothrow
  {
    long _retval;
    _retval = gparquet_column_chunk_metadata_get_total_size(cast(GParquetColumnChunkMetadata*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet23.column_chunk_metadata.ColumnChunkMetadata]
class ColumnChunkMetadataGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T metadata(void* propval) nothrow
  {
    return setProperty("metadata", propval);
  }

  /** */
  T owner(gid_apache.parquet23.row_group_metadata.RowGroupMetadata propval) nothrow
  {
    return setProperty("owner", propval);
  }
}

/// Fluent builder for [gid_apache.parquet23.column_chunk_metadata.ColumnChunkMetadata]
final class ColumnChunkMetadataGidBuilder : ColumnChunkMetadataGidBuilderImpl!ColumnChunkMetadataGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ColumnChunkMetadata build() nothrow
  {
    return new ColumnChunkMetadata(cast(void*)createGObject(ColumnChunkMetadata._getGType), Yes.Take);
  }
}
