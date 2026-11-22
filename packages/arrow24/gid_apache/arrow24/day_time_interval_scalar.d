/// Module for [DayTimeIntervalScalar] class
module gid_apache.arrow24.day_time_interval_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.day_millisecond;
import gid_apache.arrow24.scalar;
import gid_apache.arrow24.types;

/** */
class DayTimeIntervalScalar : gid_apache.arrow24.scalar.Scalar
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
    return cast(void function())garrow_day_time_interval_scalar_get_type != &gidSymbolNotFound ? garrow_day_time_interval_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDayTimeIntervalScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override DayTimeIntervalScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.day_time_interval_scalar.DayTimeIntervalScalar]
      Returns: New builder object
  */
  static DayTimeIntervalScalarGidBuilder builder() nothrow
  {
    return new DayTimeIntervalScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.day_millisecond.DayMillisecond value) nothrow
  {
    GArrowDayTimeIntervalScalar* _cretval;
    _cretval = garrow_day_time_interval_scalar_new(value ? cast(GArrowDayMillisecond*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow24.day_millisecond.DayMillisecond getValue() nothrow
  {
    GArrowDayMillisecond* _cretval;
    _cretval = garrow_day_time_interval_scalar_get_value(cast(GArrowDayTimeIntervalScalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.day_millisecond.DayMillisecond)(cast(GArrowDayMillisecond*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.day_time_interval_scalar.DayTimeIntervalScalar]
class DayTimeIntervalScalarGidBuilderImpl(T) : gid_apache.arrow24.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.day_time_interval_scalar.DayTimeIntervalScalar]
final class DayTimeIntervalScalarGidBuilder : DayTimeIntervalScalarGidBuilderImpl!DayTimeIntervalScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DayTimeIntervalScalar build() nothrow
  {
    return new DayTimeIntervalScalar(cast(void*)createGObject(DayTimeIntervalScalar._getGType), Yes.Take);
  }
}
