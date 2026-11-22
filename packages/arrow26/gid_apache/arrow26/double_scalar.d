/// Module for [DoubleScalar] class
module gid_apache.arrow26.double_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.scalar;
import gid_apache.arrow26.types;

/** */
class DoubleScalar : gid_apache.arrow26.scalar.Scalar
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
    return cast(void function())garrow_double_scalar_get_type != &gidSymbolNotFound ? garrow_double_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDoubleScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override DoubleScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.double_scalar.DoubleScalar]
      Returns: New builder object
  */
  static DoubleScalarGidBuilder builder() nothrow
  {
    return new DoubleScalarGidBuilder;
  }

  /** */
  this(double value) nothrow
  {
    GArrowDoubleScalar* _cretval;
    _cretval = garrow_double_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  double getValue() nothrow
  {
    double _retval;
    _retval = garrow_double_scalar_get_value(cast(GArrowDoubleScalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.double_scalar.DoubleScalar]
class DoubleScalarGidBuilderImpl(T) : gid_apache.arrow26.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.double_scalar.DoubleScalar]
final class DoubleScalarGidBuilder : DoubleScalarGidBuilderImpl!DoubleScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DoubleScalar build() nothrow
  {
    return new DoubleScalar(cast(void*)createGObject(DoubleScalar._getGType), Yes.Take);
  }
}
