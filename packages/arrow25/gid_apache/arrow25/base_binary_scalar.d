/// Module for [BaseBinaryScalar] class
module gid_apache.arrow25.base_binary_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.buffer;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.scalar;
import gid_apache.arrow25.types;

/** */
class BaseBinaryScalar : gid_apache.arrow25.scalar.Scalar
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
    return cast(void function())garrow_base_binary_scalar_get_type != &gidSymbolNotFound ? garrow_base_binary_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBaseBinaryScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override BaseBinaryScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.base_binary_scalar.BaseBinaryScalar]
      Returns: New builder object
  */
  static BaseBinaryScalarGidBuilder builder() nothrow
  {
    return new BaseBinaryScalarGidBuilder;
  }

  /** */
  gid_apache.arrow25.buffer.Buffer getValue() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_base_binary_scalar_get_value(cast(GArrowBaseBinaryScalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.buffer.Buffer)(cast(GArrowBuffer*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.base_binary_scalar.BaseBinaryScalar]
class BaseBinaryScalarGidBuilderImpl(T) : gid_apache.arrow25.scalar.ScalarGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow25.buffer.Buffer propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.base_binary_scalar.BaseBinaryScalar]
final class BaseBinaryScalarGidBuilder : BaseBinaryScalarGidBuilderImpl!BaseBinaryScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BaseBinaryScalar build() nothrow
  {
    return new BaseBinaryScalar(cast(void*)createGObject(BaseBinaryScalar._getGType), Yes.Take);
  }
}
