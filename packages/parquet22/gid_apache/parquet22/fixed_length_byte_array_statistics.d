/// Module for [FixedLengthByteArrayStatistics] class
module gid_apache.parquet22.fixed_length_byte_array_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid_apache.parquet22.c.functions;
import gid_apache.parquet22.c.types;
import gid_apache.parquet22.statistics;
import gid_apache.parquet22.types;

/** */
class FixedLengthByteArrayStatistics : gid_apache.parquet22.statistics.Statistics
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
    return cast(void function())gparquet_fixed_length_byte_array_statistics_get_type != &gidSymbolNotFound ? gparquet_fixed_length_byte_array_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetFixedLengthByteArrayStatistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedLengthByteArrayStatistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet22.fixed_length_byte_array_statistics.FixedLengthByteArrayStatistics]
      Returns: New builder object
  */
  static FixedLengthByteArrayStatisticsGidBuilder builder() nothrow
  {
    return new FixedLengthByteArrayStatisticsGidBuilder;
  }

  /** */
  gid.glib2.bytes.Bytes getMax() nothrow
  {
    GBytes* _cretval;
    _cretval = gparquet_fixed_length_byte_array_statistics_get_max(cast(GParquetFixedLengthByteArrayStatistics*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, No.Take) : null;
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes getMin() nothrow
  {
    GBytes* _cretval;
    _cretval = gparquet_fixed_length_byte_array_statistics_get_min(cast(GParquetFixedLengthByteArrayStatistics*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, No.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet22.fixed_length_byte_array_statistics.FixedLengthByteArrayStatistics]
class FixedLengthByteArrayStatisticsGidBuilderImpl(T) : gid_apache.parquet22.statistics.StatisticsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet22.fixed_length_byte_array_statistics.FixedLengthByteArrayStatistics]
final class FixedLengthByteArrayStatisticsGidBuilder : FixedLengthByteArrayStatisticsGidBuilderImpl!FixedLengthByteArrayStatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedLengthByteArrayStatistics build() nothrow
  {
    return new FixedLengthByteArrayStatistics(cast(void*)createGObject(FixedLengthByteArrayStatistics._getGType), Yes.Take);
  }
}
