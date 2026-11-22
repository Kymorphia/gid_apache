/// Module for [TimestampScalar] class
module gid_apache.arrow26.timestamp_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.scalar;
import gid_apache.arrow26.timestamp_data_type;
import gid_apache.arrow26.types;

/** */
class TimestampScalar : gid_apache.arrow26.scalar.Scalar
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
    return cast(void function())garrow_timestamp_scalar_get_type != &gidSymbolNotFound ? garrow_timestamp_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTimestampScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override TimestampScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.timestamp_scalar.TimestampScalar]
      Returns: New builder object
  */
  static TimestampScalarGidBuilder builder() nothrow
  {
    return new TimestampScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.timestamp_data_type.TimestampDataType dataType, long value) nothrow
  {
    GArrowTimestampScalar* _cretval;
    _cretval = garrow_timestamp_scalar_new(dataType ? cast(GArrowTimestampDataType*)dataType._cPtr(No.Dup) : null, value);
    this(_cretval, Yes.Take);
  }

  /** */
  long getValue() nothrow
  {
    long _retval;
    _retval = garrow_timestamp_scalar_get_value(cast(GArrowTimestampScalar*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.timestamp_scalar.TimestampScalar]
class TimestampScalarGidBuilderImpl(T) : gid_apache.arrow26.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.timestamp_scalar.TimestampScalar]
final class TimestampScalarGidBuilder : TimestampScalarGidBuilderImpl!TimestampScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TimestampScalar build() nothrow
  {
    return new TimestampScalar(cast(void*)createGObject(TimestampScalar._getGType), Yes.Take);
  }
}
