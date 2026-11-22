/// Module for [DayTimeIntervalDataType] class
module gid_apache.arrow25.day_time_interval_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.interval_data_type;
import gid_apache.arrow25.types;

/** */
class DayTimeIntervalDataType : gid_apache.arrow25.interval_data_type.IntervalDataType
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
    return cast(void function())garrow_day_time_interval_data_type_get_type != &gidSymbolNotFound ? garrow_day_time_interval_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDayTimeIntervalDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override DayTimeIntervalDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.day_time_interval_data_type.DayTimeIntervalDataType]
      Returns: New builder object
  */
  static DayTimeIntervalDataTypeGidBuilder builder() nothrow
  {
    return new DayTimeIntervalDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowDayTimeIntervalDataType* _cretval;
    _cretval = garrow_day_time_interval_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.day_time_interval_data_type.DayTimeIntervalDataType]
class DayTimeIntervalDataTypeGidBuilderImpl(T) : gid_apache.arrow25.interval_data_type.IntervalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.day_time_interval_data_type.DayTimeIntervalDataType]
final class DayTimeIntervalDataTypeGidBuilder : DayTimeIntervalDataTypeGidBuilderImpl!DayTimeIntervalDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DayTimeIntervalDataType build() nothrow
  {
    return new DayTimeIntervalDataType(cast(void*)createGObject(DayTimeIntervalDataType._getGType), Yes.Take);
  }
}
