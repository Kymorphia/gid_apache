/// Module for [UnionScalar] class
module gid_apache.arrow23.union_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.scalar;
import gid_apache.arrow23.types;

/** */
class UnionScalar : gid_apache.arrow23.scalar.Scalar
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
    return cast(void function())garrow_union_scalar_get_type != &gidSymbolNotFound ? garrow_union_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUnionScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override UnionScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.union_scalar.UnionScalar]
      Returns: New builder object
  */
  static UnionScalarGidBuilder builder() nothrow
  {
    return new UnionScalarGidBuilder;
  }

  /** */
  byte getTypeCode() nothrow
  {
    byte _retval;
    _retval = garrow_union_scalar_get_type_code(cast(GArrowUnionScalar*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow23.scalar.Scalar getValue() nothrow
  {
    GArrowScalar* _cretval;
    _cretval = garrow_union_scalar_get_value(cast(GArrowUnionScalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.scalar.Scalar)(cast(GArrowScalar*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.union_scalar.UnionScalar]
class UnionScalarGidBuilderImpl(T) : gid_apache.arrow23.scalar.ScalarGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow23.scalar.Scalar propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.union_scalar.UnionScalar]
final class UnionScalarGidBuilder : UnionScalarGidBuilderImpl!UnionScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UnionScalar build() nothrow
  {
    return new UnionScalar(cast(void*)createGObject(UnionScalar._getGType), Yes.Take);
  }
}
