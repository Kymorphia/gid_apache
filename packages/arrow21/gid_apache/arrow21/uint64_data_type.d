/// Module for [UInt64DataType] class
module gid_apache.arrow21.uint64_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.integer_data_type;
import gid_apache.arrow21.types;

/** */
class UInt64DataType : gid_apache.arrow21.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_uint64_data_type_get_type != &gidSymbolNotFound ? garrow_uint64_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt64DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt64DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.uint64_data_type.UInt64DataType]
      Returns: New builder object
  */
  static UInt64DataTypeGidBuilder builder() nothrow
  {
    return new UInt64DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowUInt64DataType* _cretval;
    _cretval = garrow_uint64_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.uint64_data_type.UInt64DataType]
class UInt64DataTypeGidBuilderImpl(T) : gid_apache.arrow21.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.uint64_data_type.UInt64DataType]
final class UInt64DataTypeGidBuilder : UInt64DataTypeGidBuilderImpl!UInt64DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt64DataType build() nothrow
  {
    return new UInt64DataType(cast(void*)createGObject(UInt64DataType._getGType), Yes.Take);
  }
}
