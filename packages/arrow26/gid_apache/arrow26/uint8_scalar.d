/// Module for [UInt8Scalar] class
module gid_apache.arrow26.uint8_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.scalar;
import gid_apache.arrow26.types;

/** */
class UInt8Scalar : gid_apache.arrow26.scalar.Scalar
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
    return cast(void function())garrow_uint8_scalar_get_type != &gidSymbolNotFound ? garrow_uint8_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt8Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt8Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.uint8_scalar.UInt8Scalar]
      Returns: New builder object
  */
  static UInt8ScalarGidBuilder builder() nothrow
  {
    return new UInt8ScalarGidBuilder;
  }

  /** */
  this(ubyte value) nothrow
  {
    GArrowUInt8Scalar* _cretval;
    _cretval = garrow_uint8_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  ubyte getValue() nothrow
  {
    ubyte _retval;
    _retval = garrow_uint8_scalar_get_value(cast(GArrowUInt8Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.uint8_scalar.UInt8Scalar]
class UInt8ScalarGidBuilderImpl(T) : gid_apache.arrow26.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.uint8_scalar.UInt8Scalar]
final class UInt8ScalarGidBuilder : UInt8ScalarGidBuilderImpl!UInt8ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt8Scalar build() nothrow
  {
    return new UInt8Scalar(cast(void*)createGObject(UInt8Scalar._getGType), Yes.Take);
  }
}
