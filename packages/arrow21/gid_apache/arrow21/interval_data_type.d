/// Module for [IntervalDataType] class
module gid_apache.arrow21.interval_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.temporal_data_type;
import gid_apache.arrow21.types;

/** */
class IntervalDataType : gid_apache.arrow21.temporal_data_type.TemporalDataType
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
    return cast(void function())garrow_interval_data_type_get_type != &gidSymbolNotFound ? garrow_interval_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowIntervalDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override IntervalDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.interval_data_type.IntervalDataType]
      Returns: New builder object
  */
  static IntervalDataTypeGidBuilder builder() nothrow
  {
    return new IntervalDataTypeGidBuilder;
  }

  /** */
  gid_apache.arrow21.types.IntervalType getIntervalType() nothrow
  {
    GArrowIntervalType _cretval;
    _cretval = garrow_interval_data_type_get_interval_type(cast(GArrowIntervalDataType*)this._cPtr);
    gid_apache.arrow21.types.IntervalType _retval = cast(gid_apache.arrow21.types.IntervalType)_cretval;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.interval_data_type.IntervalDataType]
class IntervalDataTypeGidBuilderImpl(T) : gid_apache.arrow21.temporal_data_type.TemporalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.interval_data_type.IntervalDataType]
final class IntervalDataTypeGidBuilder : IntervalDataTypeGidBuilderImpl!IntervalDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  IntervalDataType build() nothrow
  {
    return new IntervalDataType(cast(void*)createGObject(IntervalDataType._getGType), Yes.Take);
  }
}
