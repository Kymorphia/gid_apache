/// Module for [Int8Scalar] class
module gid_apache.arrow19.int8_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.scalar;
import gid_apache.arrow19.types;

/** */
class Int8Scalar : gid_apache.arrow19.scalar.Scalar
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
    return cast(void function())garrow_int8_scalar_get_type != &gidSymbolNotFound ? garrow_int8_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt8Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int8Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.int8_scalar.Int8Scalar]
      Returns: New builder object
  */
  static Int8ScalarGidBuilder builder() nothrow
  {
    return new Int8ScalarGidBuilder;
  }

  /** */
  this(byte value) nothrow
  {
    GArrowInt8Scalar* _cretval;
    _cretval = garrow_int8_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  byte getValue() nothrow
  {
    byte _retval;
    _retval = garrow_int8_scalar_get_value(cast(GArrowInt8Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.int8_scalar.Int8Scalar]
class Int8ScalarGidBuilderImpl(T) : gid_apache.arrow19.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.int8_scalar.Int8Scalar]
final class Int8ScalarGidBuilder : Int8ScalarGidBuilderImpl!Int8ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int8Scalar build() nothrow
  {
    return new Int8Scalar(cast(void*)createGObject(Int8Scalar._getGType), Yes.Take);
  }
}
