/// Module for [BinaryDataType] class
module gid_apache.arrow20.binary_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.data_type;
import gid_apache.arrow20.types;

/** */
class BinaryDataType : gid_apache.arrow20.data_type.DataType
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
    return cast(void function())garrow_binary_data_type_get_type != &gidSymbolNotFound ? garrow_binary_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBinaryDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override BinaryDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.binary_data_type.BinaryDataType]
      Returns: New builder object
  */
  static BinaryDataTypeGidBuilder builder() nothrow
  {
    return new BinaryDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowBinaryDataType* _cretval;
    _cretval = garrow_binary_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.binary_data_type.BinaryDataType]
class BinaryDataTypeGidBuilderImpl(T) : gid_apache.arrow20.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.binary_data_type.BinaryDataType]
final class BinaryDataTypeGidBuilder : BinaryDataTypeGidBuilderImpl!BinaryDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BinaryDataType build() nothrow
  {
    return new BinaryDataType(cast(void*)createGObject(BinaryDataType._getGType), Yes.Take);
  }
}
