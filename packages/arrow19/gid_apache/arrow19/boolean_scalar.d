/// Module for [BooleanScalar] class
module gid_apache.arrow19.boolean_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.scalar;
import gid_apache.arrow19.types;

/** */
class BooleanScalar : gid_apache.arrow19.scalar.Scalar
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
    return cast(void function())garrow_boolean_scalar_get_type != &gidSymbolNotFound ? garrow_boolean_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBooleanScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override BooleanScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.boolean_scalar.BooleanScalar]
      Returns: New builder object
  */
  static BooleanScalarGidBuilder builder() nothrow
  {
    return new BooleanScalarGidBuilder;
  }

  /** */
  this(bool value) nothrow
  {
    GArrowBooleanScalar* _cretval;
    _cretval = garrow_boolean_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  bool getValue() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_boolean_scalar_get_value(cast(GArrowBooleanScalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.boolean_scalar.BooleanScalar]
class BooleanScalarGidBuilderImpl(T) : gid_apache.arrow19.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.boolean_scalar.BooleanScalar]
final class BooleanScalarGidBuilder : BooleanScalarGidBuilderImpl!BooleanScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BooleanScalar build() nothrow
  {
    return new BooleanScalar(cast(void*)createGObject(BooleanScalar._getGType), Yes.Take);
  }
}
