/// Module for [FloatingPointDataType] class
module gid_apache.arrow25.floating_point_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.numeric_data_type;
import gid_apache.arrow25.types;

/** */
class FloatingPointDataType : gid_apache.arrow25.numeric_data_type.NumericDataType
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
    return cast(void function())garrow_floating_point_data_type_get_type != &gidSymbolNotFound ? garrow_floating_point_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFloatingPointDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override FloatingPointDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.floating_point_data_type.FloatingPointDataType]
      Returns: New builder object
  */
  static FloatingPointDataTypeGidBuilder builder() nothrow
  {
    return new FloatingPointDataTypeGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.floating_point_data_type.FloatingPointDataType]
class FloatingPointDataTypeGidBuilderImpl(T) : gid_apache.arrow25.numeric_data_type.NumericDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.floating_point_data_type.FloatingPointDataType]
final class FloatingPointDataTypeGidBuilder : FloatingPointDataTypeGidBuilderImpl!FloatingPointDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FloatingPointDataType build() nothrow
  {
    return new FloatingPointDataType(cast(void*)createGObject(FloatingPointDataType._getGType), Yes.Take);
  }
}
