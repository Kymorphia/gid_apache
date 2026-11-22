/// Module for [TemporalDataType] class
module gid_apache.arrow21.temporal_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.fixed_width_data_type;
import gid_apache.arrow21.types;

/** */
class TemporalDataType : gid_apache.arrow21.fixed_width_data_type.FixedWidthDataType
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
    return cast(void function())garrow_temporal_data_type_get_type != &gidSymbolNotFound ? garrow_temporal_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTemporalDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override TemporalDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.temporal_data_type.TemporalDataType]
      Returns: New builder object
  */
  static TemporalDataTypeGidBuilder builder() nothrow
  {
    return new TemporalDataTypeGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.temporal_data_type.TemporalDataType]
class TemporalDataTypeGidBuilderImpl(T) : gid_apache.arrow21.fixed_width_data_type.FixedWidthDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.temporal_data_type.TemporalDataType]
final class TemporalDataTypeGidBuilder : TemporalDataTypeGidBuilderImpl!TemporalDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TemporalDataType build() nothrow
  {
    return new TemporalDataType(cast(void*)createGObject(TemporalDataType._getGType), Yes.Take);
  }
}
