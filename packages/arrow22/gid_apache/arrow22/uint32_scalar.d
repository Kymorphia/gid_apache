/// Module for [UInt32Scalar] class
module gid_apache.arrow22.uint32_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.scalar;
import gid_apache.arrow22.types;

/** */
class UInt32Scalar : gid_apache.arrow22.scalar.Scalar
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
    return cast(void function())garrow_uint32_scalar_get_type != &gidSymbolNotFound ? garrow_uint32_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt32Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt32Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.uint32_scalar.UInt32Scalar]
      Returns: New builder object
  */
  static UInt32ScalarGidBuilder builder() nothrow
  {
    return new UInt32ScalarGidBuilder;
  }

  /** */
  this(uint value) nothrow
  {
    GArrowUInt32Scalar* _cretval;
    _cretval = garrow_uint32_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  uint getValue() nothrow
  {
    uint _retval;
    _retval = garrow_uint32_scalar_get_value(cast(GArrowUInt32Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.uint32_scalar.UInt32Scalar]
class UInt32ScalarGidBuilderImpl(T) : gid_apache.arrow22.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.uint32_scalar.UInt32Scalar]
final class UInt32ScalarGidBuilder : UInt32ScalarGidBuilderImpl!UInt32ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt32Scalar build() nothrow
  {
    return new UInt32Scalar(cast(void*)createGObject(UInt32Scalar._getGType), Yes.Take);
  }
}
