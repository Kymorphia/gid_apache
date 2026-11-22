/// Module for [FixedWidthDataType] class
module gid_apache.arrow23.fixed_width_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.data_type;
import gid_apache.arrow23.types;

/** */
class FixedWidthDataType : gid_apache.arrow23.data_type.DataType
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
    return cast(void function())garrow_fixed_width_data_type_get_type != &gidSymbolNotFound ? garrow_fixed_width_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFixedWidthDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedWidthDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.fixed_width_data_type.FixedWidthDataType]
      Returns: New builder object
  */
  static FixedWidthDataTypeGidBuilder builder() nothrow
  {
    return new FixedWidthDataTypeGidBuilder;
  }

  /** */
  int getBitWidth() nothrow
  {
    int _retval;
    _retval = garrow_fixed_width_data_type_get_bit_width(cast(GArrowFixedWidthDataType*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.fixed_width_data_type.FixedWidthDataType]
class FixedWidthDataTypeGidBuilderImpl(T) : gid_apache.arrow23.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.fixed_width_data_type.FixedWidthDataType]
final class FixedWidthDataTypeGidBuilder : FixedWidthDataTypeGidBuilderImpl!FixedWidthDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedWidthDataType build() nothrow
  {
    return new FixedWidthDataType(cast(void*)createGObject(FixedWidthDataType._getGType), Yes.Take);
  }
}
