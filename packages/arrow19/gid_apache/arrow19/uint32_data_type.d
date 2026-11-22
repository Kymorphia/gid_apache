/// Module for [UInt32DataType] class
module gid_apache.arrow19.uint32_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.integer_data_type;
import gid_apache.arrow19.types;

/** */
class UInt32DataType : gid_apache.arrow19.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_uint32_data_type_get_type != &gidSymbolNotFound ? garrow_uint32_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt32DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt32DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.uint32_data_type.UInt32DataType]
      Returns: New builder object
  */
  static UInt32DataTypeGidBuilder builder() nothrow
  {
    return new UInt32DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowUInt32DataType* _cretval;
    _cretval = garrow_uint32_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.uint32_data_type.UInt32DataType]
class UInt32DataTypeGidBuilderImpl(T) : gid_apache.arrow19.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.uint32_data_type.UInt32DataType]
final class UInt32DataTypeGidBuilder : UInt32DataTypeGidBuilderImpl!UInt32DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt32DataType build() nothrow
  {
    return new UInt32DataType(cast(void*)createGObject(UInt32DataType._getGType), Yes.Take);
  }
}
