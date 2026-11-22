/// Module for [Time32Scalar] class
module gid_apache.arrow19.time32_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.scalar;
import gid_apache.arrow19.time32_data_type;
import gid_apache.arrow19.types;

/** */
class Time32Scalar : gid_apache.arrow19.scalar.Scalar
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
    return cast(void function())garrow_time32_scalar_get_type != &gidSymbolNotFound ? garrow_time32_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTime32Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Time32Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.time32_scalar.Time32Scalar]
      Returns: New builder object
  */
  static Time32ScalarGidBuilder builder() nothrow
  {
    return new Time32ScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.time32_data_type.Time32DataType dataType, int value) nothrow
  {
    GArrowTime32Scalar* _cretval;
    _cretval = garrow_time32_scalar_new(dataType ? cast(GArrowTime32DataType*)dataType._cPtr(No.Dup) : null, value);
    this(_cretval, Yes.Take);
  }

  /** */
  int getValue() nothrow
  {
    int _retval;
    _retval = garrow_time32_scalar_get_value(cast(GArrowTime32Scalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.time32_scalar.Time32Scalar]
class Time32ScalarGidBuilderImpl(T) : gid_apache.arrow19.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.time32_scalar.Time32Scalar]
final class Time32ScalarGidBuilder : Time32ScalarGidBuilderImpl!Time32ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Time32Scalar build() nothrow
  {
    return new Time32Scalar(cast(void*)createGObject(Time32Scalar._getGType), Yes.Take);
  }
}
