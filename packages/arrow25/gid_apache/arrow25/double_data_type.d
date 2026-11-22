/// Module for [DoubleDataType] class
module gid_apache.arrow25.double_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.floating_point_data_type;
import gid_apache.arrow25.types;

/** */
class DoubleDataType : gid_apache.arrow25.floating_point_data_type.FloatingPointDataType
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
    return cast(void function())garrow_double_data_type_get_type != &gidSymbolNotFound ? garrow_double_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDoubleDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override DoubleDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.double_data_type.DoubleDataType]
      Returns: New builder object
  */
  static DoubleDataTypeGidBuilder builder() nothrow
  {
    return new DoubleDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowDoubleDataType* _cretval;
    _cretval = garrow_double_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.double_data_type.DoubleDataType]
class DoubleDataTypeGidBuilderImpl(T) : gid_apache.arrow25.floating_point_data_type.FloatingPointDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.double_data_type.DoubleDataType]
final class DoubleDataTypeGidBuilder : DoubleDataTypeGidBuilderImpl!DoubleDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DoubleDataType build() nothrow
  {
    return new DoubleDataType(cast(void*)createGObject(DoubleDataType._getGType), Yes.Take);
  }
}
