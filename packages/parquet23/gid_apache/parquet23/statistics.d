/// Module for [Statistics] class
module gid_apache.parquet23.statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.parquet23.c.functions;
import gid_apache.parquet23.c.types;
import gid_apache.parquet23.types;

/** */
class Statistics : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gparquet_statistics_get_type != &gidSymbolNotFound ? gparquet_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetStatistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override Statistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet23.statistics.Statistics]
      Returns: New builder object
  */
  static StatisticsGidBuilder builder() nothrow
  {
    return new StatisticsGidBuilder;
  }

  /** */
  bool equal(gid_apache.parquet23.statistics.Statistics otherStatistics) nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_statistics_equal(cast(GParquetStatistics*)this._cPtr, otherStatistics ? cast(GParquetStatistics*)otherStatistics._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  long getNDistinctValues() nothrow
  {
    long _retval;
    _retval = gparquet_statistics_get_n_distinct_values(cast(GParquetStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  long getNNulls() nothrow
  {
    long _retval;
    _retval = gparquet_statistics_get_n_nulls(cast(GParquetStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  long getNValues() nothrow
  {
    long _retval;
    _retval = gparquet_statistics_get_n_values(cast(GParquetStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  bool hasMinMax() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_statistics_has_min_max(cast(GParquetStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  bool hasNDistinctValues() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_statistics_has_n_distinct_values(cast(GParquetStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  bool hasNNulls() nothrow
  {
    bool _retval;
    _retval = cast(bool)gparquet_statistics_has_n_nulls(cast(GParquetStatistics*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet23.statistics.Statistics]
class StatisticsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T statistics(void* propval) nothrow
  {
    return setProperty("statistics", propval);
  }
}

/// Fluent builder for [gid_apache.parquet23.statistics.Statistics]
final class StatisticsGidBuilder : StatisticsGidBuilderImpl!StatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Statistics build() nothrow
  {
    return new Statistics(cast(void*)createGObject(Statistics._getGType), Yes.Take);
  }
}
