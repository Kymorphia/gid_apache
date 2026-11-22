/// Module for [ArrayStatistics] class
module gid_apache.arrow21.array_statistics;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.types;

/** */
class ArrayStatistics : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_array_statistics_get_type != &gidSymbolNotFound ? garrow_array_statistics_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowArrayStatistics";
  }

  /** Returns `this`, for use in `with` statements. */
  override ArrayStatistics self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.array_statistics.ArrayStatistics]
      Returns: New builder object
  */
  static ArrayStatisticsGidBuilder builder() nothrow
  {
    return new ArrayStatisticsGidBuilder;
  }

  /** */
  long getDistinctCount() nothrow
  {
    long _retval;
    _retval = garrow_array_statistics_get_distinct_count(cast(GArrowArrayStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  long getNullCount() nothrow
  {
    long _retval;
    _retval = garrow_array_statistics_get_null_count(cast(GArrowArrayStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  bool hasDistinctCount() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_statistics_has_distinct_count(cast(GArrowArrayStatistics*)this._cPtr);
    return _retval;
  }

  /** */
  bool hasNullCount() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_statistics_has_null_count(cast(GArrowArrayStatistics*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.array_statistics.ArrayStatistics]
class ArrayStatisticsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T statistics(void* propval) nothrow
  {
    return setProperty("statistics", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.array_statistics.ArrayStatistics]
final class ArrayStatisticsGidBuilder : ArrayStatisticsGidBuilderImpl!ArrayStatisticsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ArrayStatistics build() nothrow
  {
    return new ArrayStatistics(cast(void*)createGObject(ArrayStatistics._getGType), Yes.Take);
  }
}
