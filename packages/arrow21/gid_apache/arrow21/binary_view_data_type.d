/// Module for [BinaryViewDataType] class
module gid_apache.arrow21.binary_view_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.data_type;
import gid_apache.arrow21.types;

/** */
class BinaryViewDataType : gid_apache.arrow21.data_type.DataType
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
    return cast(void function())garrow_binary_view_data_type_get_type != &gidSymbolNotFound ? garrow_binary_view_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBinaryViewDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override BinaryViewDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.binary_view_data_type.BinaryViewDataType]
      Returns: New builder object
  */
  static BinaryViewDataTypeGidBuilder builder() nothrow
  {
    return new BinaryViewDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowBinaryViewDataType* _cretval;
    _cretval = garrow_binary_view_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.binary_view_data_type.BinaryViewDataType]
class BinaryViewDataTypeGidBuilderImpl(T) : gid_apache.arrow21.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.binary_view_data_type.BinaryViewDataType]
final class BinaryViewDataTypeGidBuilder : BinaryViewDataTypeGidBuilderImpl!BinaryViewDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BinaryViewDataType build() nothrow
  {
    return new BinaryViewDataType(cast(void*)createGObject(BinaryViewDataType._getGType), Yes.Take);
  }
}
