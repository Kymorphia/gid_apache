/// Module for [Time64Scalar] class
module gid_apache.arrow19.time64_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.scalar;
import gid_apache.arrow19.time64_data_type;
import gid_apache.arrow19.types;

/** */
class Time64Scalar : gid_apache.arrow19.scalar.Scalar
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
    return cast(void function())garrow_time64_scalar_get_type != &gidSymbolNotFound ? garrow_time64_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTime64Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Time64Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.time64_scalar.Time64Scalar]
      Returns: New builder object
  */
  static Time64ScalarGidBuilder builder() nothrow
  {
    return new Time64ScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.time64_data_type.Time64DataType dataType, long value) nothrow
  {
    GArrowTime64Scalar* _cretval;
    _cretval = garrow_time64_scalar_new(dataType ? cast(GArrowTime64DataType*)dataType._cPtr(No.Dup) : null, value);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue() nothrow
  {
    long _retval;
    _retval = garrow_time64_scalar_get_value(cast(GArrowTime64Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.time64_scalar.Time64Scalar]
class Time64ScalarGidBuilderImpl(T) : gid_apache.arrow19.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.time64_scalar.Time64Scalar]
final class Time64ScalarGidBuilder : Time64ScalarGidBuilderImpl!Time64ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Time64Scalar build() nothrow
  {
    return new Time64Scalar(cast(void*)createGObject(Time64Scalar._getGType), Yes.Take);
  }
}
