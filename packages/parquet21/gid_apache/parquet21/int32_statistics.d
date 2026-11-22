/// Module for [Int32Statistics] class
module gid_apache.parquet21.int32_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.parquet21.c.functions;
import gid_apache.parquet21.c.types;
import gid_apache.parquet21.statistics;
import gid_apache.parquet21.types;

/** */
class Int32Statistics : gid_apache.parquet21.statistics.Statistics
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
    return cast(void function())gparquet_int32_statistics_get_type != &gidSymbolNotFound ? gparquet_int32_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetInt32Statistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int32Statistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet21.int32_statistics.Int32Statistics]
      Returns: New builder object
  */
  static Int32StatisticsGidBuilder builder() nothrow
  {
    return new Int32StatisticsGidBuilder;
  }

  /** */
  int getMax() nothrow
  {
    int _retval;
    _retval = gparquet_int32_statistics_get_max(cast(GParquetInt32Statistics*)this._cPtr);
    return _retval;
  }

  /** */
  int getMin() nothrow
  {
    int _retval;
    _retval = gparquet_int32_statistics_get_min(cast(GParquetInt32Statistics*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet21.int32_statistics.Int32Statistics]
class Int32StatisticsGidBuilderImpl(T) : gid_apache.parquet21.statistics.StatisticsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.parquet21.int32_statistics.Int32Statistics]
final class Int32StatisticsGidBuilder : Int32StatisticsGidBuilderImpl!Int32StatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int32Statistics build() nothrow
  {
    return new Int32Statistics(cast(void*)createGObject(Int32Statistics._getGType), Yes.Take);
  }
}
