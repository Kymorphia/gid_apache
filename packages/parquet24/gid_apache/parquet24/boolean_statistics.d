/// Module for [BooleanStatistics] class
module gid_apache.parquet24.boolean_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.parquet24.c.functions;
import gid_apache.parquet24.c.types;
import gid_apache.parquet24.statistics;
import gid_apache.parquet24.types;

/** */
class BooleanStatistics : gid_apache.parquet24.statistics.Statistics
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
    return cast(void function())gparquet_boolean_statistics_get_type != &gidSymbolNotFound ? gparquet_boolean_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetBooleanStatistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override BooleanStatistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet24.boolean_statistics.BooleanStatistics]
      Returns: New builder object
  */
  static BooleanStatisticsGidBuilder builder() nothrow
  {
    return new BooleanStatisticsGidBuilder;
  }

  /** */
  bool getMax() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_boolean_statistics_get_max(cast(GParquetBooleanStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  bool getMin() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_boolean_statistics_get_min(cast(GParquetBooleanStatistics*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet24.boolean_statistics.BooleanStatistics]
class BooleanStatisticsGidBuilderImpl(T) : gid_apache.parquet24.statistics.StatisticsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet24.boolean_statistics.BooleanStatistics]
final class BooleanStatisticsGidBuilder : BooleanStatisticsGidBuilderImpl!BooleanStatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BooleanStatistics build() nothrow
  {
    return new BooleanStatistics(cast(void*)createGObject(BooleanStatistics._getGType), Yes.Take);
  }
}
