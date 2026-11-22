/// Module for [Int16Scalar] class
module gid_apache.arrow26.int16_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.scalar;
import gid_apache.arrow26.types;

/** */
class Int16Scalar : gid_apache.arrow26.scalar.Scalar
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
    return cast(void function())garrow_int16_scalar_get_type != &gidSymbolNotFound ? garrow_int16_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt16Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int16Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.int16_scalar.Int16Scalar]
      Returns: New builder object
  */
  static Int16ScalarGidBuilder builder() nothrow
  {
    return new Int16ScalarGidBuilder;
  }

  /** */
  this(short value) nothrow
  {
    GArrowInt16Scalar* _cretval;
    _cretval = garrow_int16_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  short getValue() nothrow
  {
    short _retval;
    _retval = garrow_int16_scalar_get_value(cast(GArrowInt16Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.int16_scalar.Int16Scalar]
class Int16ScalarGidBuilderImpl(T) : gid_apache.arrow26.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.int16_scalar.Int16Scalar]
final class Int16ScalarGidBuilder : Int16ScalarGidBuilderImpl!Int16ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int16Scalar build() nothrow
  {
    return new Int16Scalar(cast(void*)createGObject(Int16Scalar._getGType), Yes.Take);
  }
}
