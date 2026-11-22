/// Module for [Int32Scalar] class
module gid_apache.arrow19.int32_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.scalar;
import gid_apache.arrow19.types;

/** */
class Int32Scalar : gid_apache.arrow19.scalar.Scalar
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
    return cast(void function())garrow_int32_scalar_get_type != &gidSymbolNotFound ? garrow_int32_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt32Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int32Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.int32_scalar.Int32Scalar]
      Returns: New builder object
  */
  static Int32ScalarGidBuilder builder() nothrow
  {
    return new Int32ScalarGidBuilder;
  }

  /** */
  this(int value) nothrow
  {
    GArrowInt32Scalar* _cretval;
    _cretval = garrow_int32_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  int getValue() nothrow
  {
    int _retval;
    _retval = garrow_int32_scalar_get_value(cast(GArrowInt32Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.int32_scalar.Int32Scalar]
class Int32ScalarGidBuilderImpl(T) : gid_apache.arrow19.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.int32_scalar.Int32Scalar]
final class Int32ScalarGidBuilder : Int32ScalarGidBuilderImpl!Int32ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int32Scalar build() nothrow
  {
    return new Int32Scalar(cast(void*)createGObject(Int32Scalar._getGType), Yes.Take);
  }
}
