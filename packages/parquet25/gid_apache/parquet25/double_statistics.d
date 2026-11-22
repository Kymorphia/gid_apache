/// Module for [DoubleStatistics] class
module gid_apache.parquet25.double_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.parquet25.c.functions;
import gid_apache.parquet25.c.types;
import gid_apache.parquet25.statistics;
import gid_apache.parquet25.types;

/** */
class DoubleStatistics : gid_apache.parquet25.statistics.Statistics
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
    return cast(void function())gparquet_double_statistics_get_type != &gidSymbolNotFound ? gparquet_double_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetDoubleStatistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override DoubleStatistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet25.double_statistics.DoubleStatistics]
      Returns: New builder object
  */
  static DoubleStatisticsGidBuilder builder() nothrow
  {
    return new DoubleStatisticsGidBuilder;
  }

  /** */
  double getMax() nothrow
  {
    double _retval;
    _retval = gparquet_double_statistics_get_max(cast(GParquetDoubleStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  double getMin() nothrow
  {
    double _retval;
    _retval = gparquet_double_statistics_get_min(cast(GParquetDoubleStatistics*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet25.double_statistics.DoubleStatistics]
class DoubleStatisticsGidBuilderImpl(T) : gid_apache.parquet25.statistics.StatisticsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet25.double_statistics.DoubleStatistics]
final class DoubleStatisticsGidBuilder : DoubleStatisticsGidBuilderImpl!DoubleStatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DoubleStatistics build() nothrow
  {
    return new DoubleStatistics(cast(void*)createGObject(DoubleStatistics._getGType), Yes.Take);
  }
}
