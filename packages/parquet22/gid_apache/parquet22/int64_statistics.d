/// Module for [Int64Statistics] class
module gid_apache.parquet22.int64_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.parquet22.c.functions;
import gid_apache.parquet22.c.types;
import gid_apache.parquet22.statistics;
import gid_apache.parquet22.types;

/** */
class Int64Statistics : gid_apache.parquet22.statistics.Statistics
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
    return cast(void function())gparquet_int64_statistics_get_type != &gidSymbolNotFound ? gparquet_int64_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetInt64Statistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int64Statistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet22.int64_statistics.Int64Statistics]
      Returns: New builder object
  */
  static Int64StatisticsGidBuilder builder() nothrow
  {
    return new Int64StatisticsGidBuilder;
  }

  /** */
  long getMax() nothrow
  {
    long _retval;
    _retval = gparquet_int64_statistics_get_max(cast(GParquetInt64Statistics*)this._cPtr);
    return _retval;
  }

  /** */
  long getMin() nothrow
  {
    long _retval;
    _retval = gparquet_int64_statistics_get_min(cast(GParquetInt64Statistics*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet22.int64_statistics.Int64Statistics]
class Int64StatisticsGidBuilderImpl(T) : gid_apache.parquet22.statistics.StatisticsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet22.int64_statistics.Int64Statistics]
final class Int64StatisticsGidBuilder : Int64StatisticsGidBuilderImpl!Int64StatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int64Statistics build() nothrow
  {
    return new Int64Statistics(cast(void*)createGObject(Int64Statistics._getGType), Yes.Take);
  }
}
