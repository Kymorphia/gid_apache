/// Module for [WriterProperties] class
module gid_apache.parquet21.writer_properties;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.types;
import gid_apache.parquet21.c.functions;
import gid_apache.parquet21.c.types;
import gid_apache.parquet21.types;

/** */
class WriterProperties : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gparquet_writer_properties_get_type != &gidSymbolNotFound ? gparquet_writer_properties_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetWriterProperties";
  }

  /** Returns `this`, for use in `with` statements. */
  override WriterProperties self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet21.writer_properties.WriterProperties]
      Returns: New builder object
  */
  static WriterPropertiesGidBuilder builder() nothrow
  {
    return new WriterPropertiesGidBuilder;
  }

  /** */
  this() nothrow
  {
    GParquetWriterProperties* _cretval;
    _cretval = gparquet_writer_properties_new();
    this(_cretval, Yes.Take);
  }

  /** */
  void disableDictionary(string path = null) nothrow
  {
    const(char)* _path = path.toCString!(No.Malloc, Yes.Nullable);
    gparquet_writer_properties_disable_dictionary(cast(GParquetWriterProperties*)this._cPtr, _path);
  }

  /** */
  void enableDictionary(string path = null) nothrow
  {
    const(char)* _path = path.toCString!(No.Malloc, Yes.Nullable);
    gparquet_writer_properties_enable_dictionary(cast(GParquetWriterProperties*)this._cPtr, _path);
  }

  /** */
  long getBatchSize() nothrow
  {
    long _retval;
    _retval = gparquet_writer_properties_get_batch_size(cast(GParquetWriterProperties*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow21.types.CompressionType getCompressionPath(string path) nothrow
  {
    GArrowCompressionType _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    _cretval = gparquet_writer_properties_get_compression_path(cast(GParquetWriterProperties*)this._cPtr, _path);
    gid_apache.arrow21.types.CompressionType _retval = cast(gid_apache.arrow21.types.CompressionType)_cretval;
    return _retval;
  }

  /** */
  long getDataPageSize() nothrow
  {
    long _retval;
    _retval = gparquet_writer_properties_get_data_page_size(cast(GParquetWriterProperties*)this._cPtr);
    return _retval;
  }

  /** */
  long getDictionaryPageSizeLimit() nothrow
  {
    long _retval;
    _retval = gparquet_writer_properties_get_dictionary_page_size_limit(cast(GParquetWriterProperties*)this._cPtr);
    return _retval;
  }

  /** */
  long getMaxRowGroupLength() nothrow
  {
    long _retval;
    _retval = gparquet_writer_properties_get_max_row_group_length(cast(GParquetWriterProperties*)this._cPtr);
    return _retval;
  }

  /** */
  bool isDictionaryEnabled(string path) nothrow
  {
    bool _retval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    _retval = cast(bool)gparquet_writer_properties_is_dictionary_enabled(cast(GParquetWriterProperties*)this._cPtr, _path);
    return _retval;
  }

  /** */
  void setBatchSize(long batchSize) nothrow
  {
    gparquet_writer_properties_set_batch_size(cast(GParquetWriterProperties*)this._cPtr, batchSize);
  }

  /** */
  void setCompression(gid_apache.arrow21.types.CompressionType compressionType, string path = null) nothrow
  {
    const(char)* _path = path.toCString!(No.Malloc, Yes.Nullable);
    gparquet_writer_properties_set_compression(cast(GParquetWriterProperties*)this._cPtr, compressionType, _path);
  }

  /** */
  void setDataPageSize(long dataPageSize) nothrow
  {
    gparquet_writer_properties_set_data_page_size(cast(GParquetWriterProperties*)this._cPtr, dataPageSize);
  }

  /** */
  void setDictionaryPageSizeLimit(long limit) nothrow
  {
    gparquet_writer_properties_set_dictionary_page_size_limit(cast(GParquetWriterProperties*)this._cPtr, limit);
  }

  /** */
  void setMaxRowGroupLength(long length) nothrow
  {
    gparquet_writer_properties_set_max_row_group_length(cast(GParquetWriterProperties*)this._cPtr, length);
  }
}

/// Fluent builder implementation template for [gid_apache.parquet21.writer_properties.WriterProperties]
class WriterPropertiesGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet21.writer_properties.WriterProperties]
final class WriterPropertiesGidBuilder : WriterPropertiesGidBuilderImpl!WriterPropertiesGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  WriterProperties build() nothrow
  {
    return new WriterProperties(cast(void*)createGObject(WriterProperties._getGType), Yes.Take);
  }
}
