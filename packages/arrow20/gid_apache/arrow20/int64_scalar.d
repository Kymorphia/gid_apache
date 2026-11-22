/// Module for [Int64Scalar] class
module gid_apache.arrow20.int64_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.scalar;
import gid_apache.arrow20.types;

/** */
class Int64Scalar : gid_apache.arrow20.scalar.Scalar
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
    return cast(void function())garrow_int64_scalar_get_type != &gidSymbolNotFound ? garrow_int64_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt64Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int64Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.int64_scalar.Int64Scalar]
      Returns: New builder object
  */
  static Int64ScalarGidBuilder builder() nothrow
  {
    return new Int64ScalarGidBuilder;
  }

  /** */
  this(long value) nothrow
  {
    GArrowInt64Scalar* _cretval;
    _cretval = garrow_int64_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue() nothrow
  {
    long _retval;
    _retval = garrow_int64_scalar_get_value(cast(GArrowInt64Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.int64_scalar.Int64Scalar]
class Int64ScalarGidBuilderImpl(T) : gid_apache.arrow20.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.int64_scalar.Int64Scalar]
final class Int64ScalarGidBuilder : Int64ScalarGidBuilderImpl!Int64ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int64Scalar build() nothrow
  {
    return new Int64Scalar(cast(void*)createGObject(Int64Scalar._getGType), Yes.Take);
  }
}
