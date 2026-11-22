/// Module for [ByteArrayStatistics] class
module gid_apache.parquet21.byte_array_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid_apache.parquet21.c.functions;
import gid_apache.parquet21.c.types;
import gid_apache.parquet21.statistics;
import gid_apache.parquet21.types;

/** */
class ByteArrayStatistics : gid_apache.parquet21.statistics.Statistics
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
    return cast(void function())gparquet_byte_array_statistics_get_type != &gidSymbolNotFound ? gparquet_byte_array_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetByteArrayStatistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override ByteArrayStatistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet21.byte_array_statistics.ByteArrayStatistics]
      Returns: New builder object
  */
  static ByteArrayStatisticsGidBuilder builder() nothrow
  {
    return new ByteArrayStatisticsGidBuilder;
  }

  /** */
  gid.glib2.bytes.Bytes getMax() nothrow
  {
    GBytes* _cretval;
    _cretval = gparquet_byte_array_statistics_get_max(cast(GParquetByteArrayStatistics*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, No.Take) : null;
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes getMin() nothrow
  {
    GBytes* _cretval;
    _cretval = gparquet_byte_array_statistics_get_min(cast(GParquetByteArrayStatistics*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, No.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet21.byte_array_statistics.ByteArrayStatistics]
class ByteArrayStatisticsGidBuilderImpl(T) : gid_apache.parquet21.statistics.StatisticsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet21.byte_array_statistics.ByteArrayStatistics]
final class ByteArrayStatisticsGidBuilder : ByteArrayStatisticsGidBuilderImpl!ByteArrayStatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ByteArrayStatistics build() nothrow
  {
    return new ByteArrayStatistics(cast(void*)createGObject(ByteArrayStatistics._getGType), Yes.Take);
  }
}
