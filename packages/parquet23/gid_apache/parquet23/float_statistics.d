/// Module for [FloatStatistics] class
module gid_apache.parquet23.float_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.parquet23.c.functions;
import gid_apache.parquet23.c.types;
import gid_apache.parquet23.statistics;
import gid_apache.parquet23.types;

/** */
class FloatStatistics : gid_apache.parquet23.statistics.Statistics
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
    return cast(void function())gparquet_float_statistics_get_type != &gidSymbolNotFound ? gparquet_float_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetFloatStatistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override FloatStatistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet23.float_statistics.FloatStatistics]
      Returns: New builder object
  */
  static FloatStatisticsGidBuilder builder() nothrow
  {
    return new FloatStatisticsGidBuilder;
  }

  /** */
  float getMax() nothrow
  {
    float _retval;
    _retval = gparquet_float_statistics_get_max(cast(GParquetFloatStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  float getMin() nothrow
  {
    float _retval;
    _retval = gparquet_float_statistics_get_min(cast(GParquetFloatStatistics*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet23.float_statistics.FloatStatistics]
class FloatStatisticsGidBuilderImpl(T) : gid_apache.parquet23.statistics.StatisticsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet23.float_statistics.FloatStatistics]
final class FloatStatisticsGidBuilder : FloatStatisticsGidBuilderImpl!FloatStatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FloatStatistics build() nothrow
  {
    return new FloatStatistics(cast(void*)createGObject(FloatStatistics._getGType), Yes.Take);
  }
}
