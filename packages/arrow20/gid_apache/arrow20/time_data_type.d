/// Module for [TimeDataType] class
module gid_apache.arrow20.time_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.temporal_data_type;
import gid_apache.arrow20.types;

/** */
class TimeDataType : gid_apache.arrow20.temporal_data_type.TemporalDataType
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
    return cast(void function())garrow_time_data_type_get_type != &gidSymbolNotFound ? garrow_time_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTimeDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override TimeDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.time_data_type.TimeDataType]
      Returns: New builder object
  */
  static TimeDataTypeGidBuilder builder() nothrow
  {
    return new TimeDataTypeGidBuilder;
  }

  /** */
  gid_apache.arrow20.types.TimeUnit getUnit() nothrow
  {
    GArrowTimeUnit _cretval;
    _cretval = garrow_time_data_type_get_unit(cast(GArrowTimeDataType*)this._cPtr);
    gid_apache.arrow20.types.TimeUnit _retval = cast(gid_apache.arrow20.types.TimeUnit)_cretval;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.time_data_type.TimeDataType]
class TimeDataTypeGidBuilderImpl(T) : gid_apache.arrow20.temporal_data_type.TemporalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.time_data_type.TimeDataType]
final class TimeDataTypeGidBuilder : TimeDataTypeGidBuilderImpl!TimeDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TimeDataType build() nothrow
  {
    return new TimeDataType(cast(void*)createGObject(TimeDataType._getGType), Yes.Take);
  }
}
