/// Module for [UInt64Scalar] class
module gid_apache.arrow21.uint64_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.scalar;
import gid_apache.arrow21.types;

/** */
class UInt64Scalar : gid_apache.arrow21.scalar.Scalar
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
    return cast(void function())garrow_uint64_scalar_get_type != &gidSymbolNotFound ? garrow_uint64_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt64Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt64Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.uint64_scalar.UInt64Scalar]
      Returns: New builder object
  */
  static UInt64ScalarGidBuilder builder() nothrow
  {
    return new UInt64ScalarGidBuilder;
  }

  /** */
  this(ulong value) nothrow
  {
    GArrowUInt64Scalar* _cretval;
    _cretval = garrow_uint64_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  ulong getValue() nothrow
  {
    ulong _retval;
    _retval = garrow_uint64_scalar_get_value(cast(GArrowUInt64Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.uint64_scalar.UInt64Scalar]
class UInt64ScalarGidBuilderImpl(T) : gid_apache.arrow21.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.uint64_scalar.UInt64Scalar]
final class UInt64ScalarGidBuilder : UInt64ScalarGidBuilderImpl!UInt64ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt64Scalar build() nothrow
  {
    return new UInt64Scalar(cast(void*)createGObject(UInt64Scalar._getGType), Yes.Take);
  }
}
