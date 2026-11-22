/// Module for [HalfFloatDataType] class
module gid_apache.arrow23.half_float_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.floating_point_data_type;
import gid_apache.arrow23.types;

/** */
class HalfFloatDataType : gid_apache.arrow23.floating_point_data_type.FloatingPointDataType
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
    return cast(void function())garrow_half_float_data_type_get_type != &gidSymbolNotFound ? garrow_half_float_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowHalfFloatDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override HalfFloatDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.half_float_data_type.HalfFloatDataType]
      Returns: New builder object
  */
  static HalfFloatDataTypeGidBuilder builder() nothrow
  {
    return new HalfFloatDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowHalfFloatDataType* _cretval;
    _cretval = garrow_half_float_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.half_float_data_type.HalfFloatDataType]
class HalfFloatDataTypeGidBuilderImpl(T) : gid_apache.arrow23.floating_point_data_type.FloatingPointDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.half_float_data_type.HalfFloatDataType]
final class HalfFloatDataTypeGidBuilder : HalfFloatDataTypeGidBuilderImpl!HalfFloatDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  HalfFloatDataType build() nothrow
  {
    return new HalfFloatDataType(cast(void*)createGObject(HalfFloatDataType._getGType), Yes.Take);
  }
}
