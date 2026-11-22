/// Module for [NumericDataType] class
module gid_apache.arrow25.numeric_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.fixed_width_data_type;
import gid_apache.arrow25.types;

/** */
class NumericDataType : gid_apache.arrow25.fixed_width_data_type.FixedWidthDataType
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
    return cast(void function())garrow_numeric_data_type_get_type != &gidSymbolNotFound ? garrow_numeric_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowNumericDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override NumericDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.numeric_data_type.NumericDataType]
      Returns: New builder object
  */
  static NumericDataTypeGidBuilder builder() nothrow
  {
    return new NumericDataTypeGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.numeric_data_type.NumericDataType]
class NumericDataTypeGidBuilderImpl(T) : gid_apache.arrow25.fixed_width_data_type.FixedWidthDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.numeric_data_type.NumericDataType]
final class NumericDataTypeGidBuilder : NumericDataTypeGidBuilderImpl!NumericDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  NumericDataType build() nothrow
  {
    return new NumericDataType(cast(void*)createGObject(NumericDataType._getGType), Yes.Take);
  }
}
