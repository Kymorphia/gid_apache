/// Module for [MonthIntervalDataType] class
module gid_apache.arrow24.month_interval_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.interval_data_type;
import gid_apache.arrow24.types;

/** */
class MonthIntervalDataType : gid_apache.arrow24.interval_data_type.IntervalDataType
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
    return cast(void function())garrow_month_interval_data_type_get_type != &gidSymbolNotFound ? garrow_month_interval_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMonthIntervalDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override MonthIntervalDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.month_interval_data_type.MonthIntervalDataType]
      Returns: New builder object
  */
  static MonthIntervalDataTypeGidBuilder builder() nothrow
  {
    return new MonthIntervalDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowMonthIntervalDataType* _cretval;
    _cretval = garrow_month_interval_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.month_interval_data_type.MonthIntervalDataType]
class MonthIntervalDataTypeGidBuilderImpl(T) : gid_apache.arrow24.interval_data_type.IntervalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.month_interval_data_type.MonthIntervalDataType]
final class MonthIntervalDataTypeGidBuilder : MonthIntervalDataTypeGidBuilderImpl!MonthIntervalDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MonthIntervalDataType build() nothrow
  {
    return new MonthIntervalDataType(cast(void*)createGObject(MonthIntervalDataType._getGType), Yes.Take);
  }
}
