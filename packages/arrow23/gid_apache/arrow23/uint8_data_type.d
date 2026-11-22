/// Module for [UInt8DataType] class
module gid_apache.arrow23.uint8_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.integer_data_type;
import gid_apache.arrow23.types;

/** */
class UInt8DataType : gid_apache.arrow23.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_uint8_data_type_get_type != &gidSymbolNotFound ? garrow_uint8_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt8DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt8DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.uint8_data_type.UInt8DataType]
      Returns: New builder object
  */
  static UInt8DataTypeGidBuilder builder() nothrow
  {
    return new UInt8DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowUInt8DataType* _cretval;
    _cretval = garrow_uint8_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.uint8_data_type.UInt8DataType]
class UInt8DataTypeGidBuilderImpl(T) : gid_apache.arrow23.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.uint8_data_type.UInt8DataType]
final class UInt8DataTypeGidBuilder : UInt8DataTypeGidBuilderImpl!UInt8DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt8DataType build() nothrow
  {
    return new UInt8DataType(cast(void*)createGObject(UInt8DataType._getGType), Yes.Take);
  }
}
