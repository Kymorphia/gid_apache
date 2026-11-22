/// Module for [FloatDataType] class
module gid_apache.arrow23.float_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.floating_point_data_type;
import gid_apache.arrow23.types;

/** */
class FloatDataType : gid_apache.arrow23.floating_point_data_type.FloatingPointDataType
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
    return cast(void function())garrow_float_data_type_get_type != &gidSymbolNotFound ? garrow_float_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFloatDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override FloatDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.float_data_type.FloatDataType]
      Returns: New builder object
  */
  static FloatDataTypeGidBuilder builder() nothrow
  {
    return new FloatDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowFloatDataType* _cretval;
    _cretval = garrow_float_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.float_data_type.FloatDataType]
class FloatDataTypeGidBuilderImpl(T) : gid_apache.arrow23.floating_point_data_type.FloatingPointDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.float_data_type.FloatDataType]
final class FloatDataTypeGidBuilder : FloatDataTypeGidBuilderImpl!FloatDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FloatDataType build() nothrow
  {
    return new FloatDataType(cast(void*)createGObject(FloatDataType._getGType), Yes.Take);
  }
}
