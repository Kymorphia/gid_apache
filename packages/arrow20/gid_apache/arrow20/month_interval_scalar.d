/// Module for [MonthIntervalScalar] class
module gid_apache.arrow20.month_interval_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.scalar;
import gid_apache.arrow20.types;

/** */
class MonthIntervalScalar : gid_apache.arrow20.scalar.Scalar
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
    return cast(void function())garrow_month_interval_scalar_get_type != &gidSymbolNotFound ? garrow_month_interval_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMonthIntervalScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override MonthIntervalScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.month_interval_scalar.MonthIntervalScalar]
      Returns: New builder object
  */
  static MonthIntervalScalarGidBuilder builder() nothrow
  {
    return new MonthIntervalScalarGidBuilder;
  }

  /** */
  this(int value) nothrow
  {
    GArrowMonthIntervalScalar* _cretval;
    _cretval = garrow_month_interval_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  int getValue() nothrow
  {
    int _retval;
    _retval = garrow_month_interval_scalar_get_value(cast(GArrowMonthIntervalScalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.month_interval_scalar.MonthIntervalScalar]
class MonthIntervalScalarGidBuilderImpl(T) : gid_apache.arrow20.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.month_interval_scalar.MonthIntervalScalar]
final class MonthIntervalScalarGidBuilder : MonthIntervalScalarGidBuilderImpl!MonthIntervalScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MonthIntervalScalar build() nothrow
  {
    return new MonthIntervalScalar(cast(void*)createGObject(MonthIntervalScalar._getGType), Yes.Take);
  }
}
