/// Module for [DurationDataType] class
module gid_apache.arrow24.duration_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.temporal_data_type;
import gid_apache.arrow24.types;

/** */
class DurationDataType : gid_apache.arrow24.temporal_data_type.TemporalDataType
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
    return cast(void function())garrow_duration_data_type_get_type != &gidSymbolNotFound ? garrow_duration_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDurationDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override DurationDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.duration_data_type.DurationDataType]
      Returns: New builder object
  */
  static DurationDataTypeGidBuilder builder() nothrow
  {
    return new DurationDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.types.TimeUnit unit) nothrow
  {
    GArrowDurationDataType* _cretval;
    _cretval = garrow_duration_data_type_new(unit);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow24.types.TimeUnit getUnit() nothrow
  {
    GArrowTimeUnit _cretval;
    _cretval = garrow_duration_data_type_get_unit(cast(GArrowDurationDataType*)this._cPtr);
    gid_apache.arrow24.types.TimeUnit _retval = cast(gid_apache.arrow24.types.TimeUnit)_cretval;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.duration_data_type.DurationDataType]
class DurationDataTypeGidBuilderImpl(T) : gid_apache.arrow24.temporal_data_type.TemporalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.duration_data_type.DurationDataType]
final class DurationDataTypeGidBuilder : DurationDataTypeGidBuilderImpl!DurationDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DurationDataType build() nothrow
  {
    return new DurationDataType(cast(void*)createGObject(DurationDataType._getGType), Yes.Take);
  }
}
