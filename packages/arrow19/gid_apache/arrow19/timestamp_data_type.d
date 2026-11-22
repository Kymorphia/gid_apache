/// Module for [TimestampDataType] class
module gid_apache.arrow19.timestamp_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.time_zone;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.temporal_data_type;
import gid_apache.arrow19.types;

/** */
class TimestampDataType : gid_apache.arrow19.temporal_data_type.TemporalDataType
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
    return cast(void function())garrow_timestamp_data_type_get_type != &gidSymbolNotFound ? garrow_timestamp_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTimestampDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override TimestampDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.timestamp_data_type.TimestampDataType]
      Returns: New builder object
  */
  static TimestampDataTypeGidBuilder builder() nothrow
  {
    return new TimestampDataTypeGidBuilder;
  }

  /**
      Get `timeZone` property.
      Returns: The time zone of this data type.
  */
  @property gid.glib2.time_zone.TimeZone timeZone() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid.glib2.time_zone.TimeZone)("time-zone");
  }

  /** */
  this(gid_apache.arrow19.types.TimeUnit unit, gid.glib2.time_zone.TimeZone timeZone = null) nothrow
  {
    GArrowTimestampDataType* _cretval;
    _cretval = garrow_timestamp_data_type_new(unit, timeZone ? cast(GTimeZone*)timeZone._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow19.types.TimeUnit getUnit() nothrow
  {
    GArrowTimeUnit _cretval;
    _cretval = garrow_timestamp_data_type_get_unit(cast(GArrowTimestampDataType*)this._cPtr);
    gid_apache.arrow19.types.TimeUnit _retval = cast(gid_apache.arrow19.types.TimeUnit)_cretval;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.timestamp_data_type.TimestampDataType]
class TimestampDataTypeGidBuilderImpl(T) : gid_apache.arrow19.temporal_data_type.TemporalDataTypeGidBuilderImpl!T
{

  /**
      Set `timeZone` property.
      Params:
        propval = The time zone of this data type.
      Returns: Builder instance for fluent chaining
  */
  T timeZone(gid.glib2.time_zone.TimeZone propval) nothrow
  {
    return setProperty("time-zone", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.timestamp_data_type.TimestampDataType]
final class TimestampDataTypeGidBuilder : TimestampDataTypeGidBuilderImpl!TimestampDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TimestampDataType build() nothrow
  {
    return new TimestampDataType(cast(void*)createGObject(TimestampDataType._getGType), Yes.Take);
  }
}
