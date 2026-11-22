/// Module for [LargeBinaryDataType] class
module gid_apache.arrow22.large_binary_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.data_type;
import gid_apache.arrow22.types;

/** */
class LargeBinaryDataType : gid_apache.arrow22.data_type.DataType
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
    return cast(void function())garrow_large_binary_data_type_get_type != &gidSymbolNotFound ? garrow_large_binary_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeBinaryDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeBinaryDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.large_binary_data_type.LargeBinaryDataType]
      Returns: New builder object
  */
  static LargeBinaryDataTypeGidBuilder builder() nothrow
  {
    return new LargeBinaryDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowLargeBinaryDataType* _cretval;
    _cretval = garrow_large_binary_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.large_binary_data_type.LargeBinaryDataType]
class LargeBinaryDataTypeGidBuilderImpl(T) : gid_apache.arrow22.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.large_binary_data_type.LargeBinaryDataType]
final class LargeBinaryDataTypeGidBuilder : LargeBinaryDataTypeGidBuilderImpl!LargeBinaryDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeBinaryDataType build() nothrow
  {
    return new LargeBinaryDataType(cast(void*)createGObject(LargeBinaryDataType._getGType), Yes.Take);
  }
}
