/// Module for [BaseListScalar] class
module gid_apache.arrow26.base_list_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.array;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.scalar;
import gid_apache.arrow26.types;

/** */
class BaseListScalar : gid_apache.arrow26.scalar.Scalar
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
    return cast(void function())garrow_base_list_scalar_get_type != &gidSymbolNotFound ? garrow_base_list_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBaseListScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override BaseListScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.base_list_scalar.BaseListScalar]
      Returns: New builder object
  */
  static BaseListScalarGidBuilder builder() nothrow
  {
    return new BaseListScalarGidBuilder;
  }

  /** */
  gid_apache.arrow26.array.Array getValue() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_base_list_scalar_get_value(cast(GArrowBaseListScalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.array.Array)(cast(GArrowArray*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.base_list_scalar.BaseListScalar]
class BaseListScalarGidBuilderImpl(T) : gid_apache.arrow26.scalar.ScalarGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow26.array.Array propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.base_list_scalar.BaseListScalar]
final class BaseListScalarGidBuilder : BaseListScalarGidBuilderImpl!BaseListScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BaseListScalar build() nothrow
  {
    return new BaseListScalar(cast(void*)createGObject(BaseListScalar._getGType), Yes.Take);
  }
}
