/// Module for [ReaderProperties] class
module gid_apache.parquet26.reader_properties;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.parquet26.c.functions;
import gid_apache.parquet26.c.types;
import gid_apache.parquet26.types;

/** */
class ReaderProperties : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gparquet_reader_properties_get_type != &gidSymbolNotFound ? gparquet_reader_properties_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetReaderProperties";
  }

  /** Returns `this`, for use in `with` statements. */
  override ReaderProperties self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet26.reader_properties.ReaderProperties]
      Returns: New builder object
  */
  static ReaderPropertiesGidBuilder builder() nothrow
  {
    return new ReaderPropertiesGidBuilder;
  }

  /** */
  this() nothrow
  {
    GParquetReaderProperties* _cretval;
    _cretval = gparquet_reader_properties_new();
    this(_cretval, Yes.Take);
  }

  /**
      Disable buffered stream reading. This is the default.
  */
  void disableBufferedStream() nothrow
  {
    gparquet_reader_properties_disable_buffered_stream(cast(GParquetReaderProperties*)this._cPtr);
  }

  /**
      Enable buffered stream reading. To avoid pre-buffering whole column chunks,
      also call [gid_apache.parquet26.reader_properties.ReaderProperties.setPreBuffer] with false.
      This does not impose a limit on the memory used by decoded data.
  */
  void enableBufferedStream() nothrow
  {
    gparquet_reader_properties_enable_buffered_stream(cast(GParquetReaderProperties*)this._cPtr);
  }

  /** */
  long getBufferSize() nothrow
  {
    long _retval;
    _retval = gparquet_reader_properties_get_buffer_size(cast(GParquetReaderProperties*)this._cPtr);
    return _retval;
  }

  /** */
  bool getPreBuffer() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_reader_properties_get_pre_buffer(cast(GParquetReaderProperties*)this._cPtr);
    return _retval;
  }

  /** */
  bool isBufferedStreamEnabled() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_reader_properties_is_buffered_stream_enabled(cast(GParquetReaderProperties*)this._cPtr);
    return _retval;
  }

  /**
      Set the buffered stream size. This does not enable buffered stream reading.
      Reads required for a data page may exceed this size.
  
      Params:
        bufferSize = The buffer size in bytes. This must be positive when buffering is
          enabled.
  */
  void setBufferSize(long bufferSize) nothrow
  {
    gparquet_reader_properties_set_buffer_size(cast(GParquetReaderProperties*)this._cPtr, bufferSize);
  }

  /**
      Set whether to pre-buffer column chunks to coalesce reads. This is enabled
      by default to improve performance on high-latency filesystems. Set this to
      false to use buffered streams without pre-buffering whole column chunks.
      This does not enable or disable buffered stream reading.
  
      Params:
        preBuffer = Whether to pre-buffer column chunks.
  */
  void setPreBuffer(bool preBuffer) nothrow
  {
    gparquet_reader_properties_set_pre_buffer(cast(GParquetReaderProperties*)this._cPtr, preBuffer);
  }
}

/// Fluent builder implementation template for [gid_apache.parquet26.reader_properties.ReaderProperties]
class ReaderPropertiesGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet26.reader_properties.ReaderProperties]
final class ReaderPropertiesGidBuilder : ReaderPropertiesGidBuilderImpl!ReaderPropertiesGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ReaderProperties build() nothrow
  {
    return new ReaderProperties(cast(void*)createGObject(ReaderProperties._getGType), Yes.Take);
  }
}
