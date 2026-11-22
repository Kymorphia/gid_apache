/// Module for [FloatScalar] class
module gid_apache.arrow19.float_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.scalar;
import gid_apache.arrow19.types;

/** */
class FloatScalar : gid_apache.arrow19.scalar.Scalar
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
    return cast(void function())garrow_float_scalar_get_type != &gidSymbolNotFound ? garrow_float_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFloatScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override FloatScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.float_scalar.FloatScalar]
      Returns: New builder object
  */
  static FloatScalarGidBuilder builder() nothrow
  {
    return new FloatScalarGidBuilder;
  }

  /** */
  this(float value) nothrow
  {
    GArrowFloatScalar* _cretval;
    _cretval = garrow_float_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  float getValue() nothrow
  {
    float _retval;
    _retval = garrow_float_scalar_get_value(cast(GArrowFloatScalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.float_scalar.FloatScalar]
class FloatScalarGidBuilderImpl(T) : gid_apache.arrow19.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.float_scalar.FloatScalar]
final class FloatScalarGidBuilder : FloatScalarGidBuilderImpl!FloatScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FloatScalar build() nothrow
  {
    return new FloatScalar(cast(void*)createGObject(FloatScalar._getGType), Yes.Take);
  }
}
