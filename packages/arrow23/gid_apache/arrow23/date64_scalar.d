/// Module for [Date64Scalar] class
module gid_apache.arrow23.date64_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.scalar;
import gid_apache.arrow23.types;

/** */
class Date64Scalar : gid_apache.arrow23.scalar.Scalar
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
    return cast(void function())garrow_date64_scalar_get_type != &gidSymbolNotFound ? garrow_date64_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDate64Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Date64Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.date64_scalar.Date64Scalar]
      Returns: New builder object
  */
  static Date64ScalarGidBuilder builder() nothrow
  {
    return new Date64ScalarGidBuilder;
  }

  /** */
  this(long value) nothrow
  {
    GArrowDate64Scalar* _cretval;
    _cretval = garrow_date64_scalar_new(value);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue() nothrow
  {
    long _retval;
    _retval = garrow_date64_scalar_get_value(cast(GArrowDate64Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.date64_scalar.Date64Scalar]
class Date64ScalarGidBuilderImpl(T) : gid_apache.arrow23.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.date64_scalar.Date64Scalar]
final class Date64ScalarGidBuilder : Date64ScalarGidBuilderImpl!Date64ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Date64Scalar build() nothrow
  {
    return new Date64Scalar(cast(void*)createGObject(Date64Scalar._getGType), Yes.Take);
  }
}
