/// Module for [LargeStringDataType] class
module gid_apache.arrow26.large_string_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.data_type;
import gid_apache.arrow26.types;

/** */
class LargeStringDataType : gid_apache.arrow26.data_type.DataType
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
    return cast(void function())garrow_large_string_data_type_get_type != &gidSymbolNotFound ? garrow_large_string_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeStringDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeStringDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.large_string_data_type.LargeStringDataType]
      Returns: New builder object
  */
  static LargeStringDataTypeGidBuilder builder() nothrow
  {
    return new LargeStringDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowLargeStringDataType* _cretval;
    _cretval = garrow_large_string_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.large_string_data_type.LargeStringDataType]
class LargeStringDataTypeGidBuilderImpl(T) : gid_apache.arrow26.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.large_string_data_type.LargeStringDataType]
final class LargeStringDataTypeGidBuilder : LargeStringDataTypeGidBuilderImpl!LargeStringDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeStringDataType build() nothrow
  {
    return new LargeStringDataType(cast(void*)createGObject(LargeStringDataType._getGType), Yes.Take);
  }
}
