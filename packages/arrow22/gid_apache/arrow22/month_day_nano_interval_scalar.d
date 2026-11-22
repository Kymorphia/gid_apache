/// Module for [MonthDayNanoIntervalScalar] class
module gid_apache.arrow22.month_day_nano_interval_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.month_day_nano;
import gid_apache.arrow22.scalar;
import gid_apache.arrow22.types;

/** */
class MonthDayNanoIntervalScalar : gid_apache.arrow22.scalar.Scalar
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
    return cast(void function())garrow_month_day_nano_interval_scalar_get_type != &gidSymbolNotFound ? garrow_month_day_nano_interval_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMonthDayNanoIntervalScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override MonthDayNanoIntervalScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.month_day_nano_interval_scalar.MonthDayNanoIntervalScalar]
      Returns: New builder object
  */
  static MonthDayNanoIntervalScalarGidBuilder builder() nothrow
  {
    return new MonthDayNanoIntervalScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.month_day_nano.MonthDayNano value) nothrow
  {
    GArrowMonthDayNanoIntervalScalar* _cretval;
    _cretval = garrow_month_day_nano_interval_scalar_new(value ? cast(GArrowMonthDayNano*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow22.month_day_nano.MonthDayNano getValue() nothrow
  {
    GArrowMonthDayNano* _cretval;
    _cretval = garrow_month_day_nano_interval_scalar_get_value(cast(GArrowMonthDayNanoIntervalScalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.month_day_nano.MonthDayNano)(cast(GArrowMonthDayNano*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.month_day_nano_interval_scalar.MonthDayNanoIntervalScalar]
class MonthDayNanoIntervalScalarGidBuilderImpl(T) : gid_apache.arrow22.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.month_day_nano_interval_scalar.MonthDayNanoIntervalScalar]
final class MonthDayNanoIntervalScalarGidBuilder : MonthDayNanoIntervalScalarGidBuilderImpl!MonthDayNanoIntervalScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MonthDayNanoIntervalScalar build() nothrow
  {
    return new MonthDayNanoIntervalScalar(cast(void*)createGObject(MonthDayNanoIntervalScalar._getGType), Yes.Take);
  }
}
