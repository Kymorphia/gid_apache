/// Module for [UInt16DataType] class
module gid_apache.arrow25.uint16_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.integer_data_type;
import gid_apache.arrow25.types;

/** */
class UInt16DataType : gid_apache.arrow25.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_uint16_data_type_get_type != &gidSymbolNotFound ? garrow_uint16_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt16DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt16DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.uint16_data_type.UInt16DataType]
      Returns: New builder object
  */
  static UInt16DataTypeGidBuilder builder() nothrow
  {
    return new UInt16DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowUInt16DataType* _cretval;
    _cretval = garrow_uint16_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.uint16_data_type.UInt16DataType]
class UInt16DataTypeGidBuilderImpl(T) : gid_apache.arrow25.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.uint16_data_type.UInt16DataType]
final class UInt16DataTypeGidBuilder : UInt16DataTypeGidBuilderImpl!UInt16DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt16DataType build() nothrow
  {
    return new UInt16DataType(cast(void*)createGObject(UInt16DataType._getGType), Yes.Take);
  }
}
