/// Module for [HalfFloatScalar] class
module gid_apache.arrow21.half_float_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.scalar;
import gid_apache.arrow21.types;

/** */
class HalfFloatScalar : gid_apache.arrow21.scalar.Scalar
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
    return cast(void function())garrow_half_float_scalar_get_type != &gidSymbolNotFound ? garrow_half_float_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowHalfFloatScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override HalfFloatScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.half_float_scalar.HalfFloatScalar]
      Returns: New builder object
  */
  static HalfFloatScalarGidBuilder builder() nothrow
  {
    return new HalfFloatScalarGidBuilder;
  }

  /** */
  this(ushort value) nothrow
  {
    GArrowHalfFloatScalar* _cretval;
    _cretval = garrow_half_float_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  ushort getValue() nothrow
  {
    ushort _retval;
    _retval = garrow_half_float_scalar_get_value(cast(GArrowHalfFloatScalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.half_float_scalar.HalfFloatScalar]
class HalfFloatScalarGidBuilderImpl(T) : gid_apache.arrow21.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.half_float_scalar.HalfFloatScalar]
final class HalfFloatScalarGidBuilder : HalfFloatScalarGidBuilderImpl!HalfFloatScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  HalfFloatScalar build() nothrow
  {
    return new HalfFloatScalar(cast(void*)createGObject(HalfFloatScalar._getGType), Yes.Take);
  }
}
