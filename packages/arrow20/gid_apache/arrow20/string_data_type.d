/// Module for [StringDataType] class
module gid_apache.arrow20.string_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.data_type;
import gid_apache.arrow20.types;

/** */
class StringDataType : gid_apache.arrow20.data_type.DataType
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
    return cast(void function())garrow_string_data_type_get_type != &gidSymbolNotFound ? garrow_string_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStringDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override StringDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.string_data_type.StringDataType]
      Returns: New builder object
  */
  static StringDataTypeGidBuilder builder() nothrow
  {
    return new StringDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowStringDataType* _cretval;
    _cretval = garrow_string_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.string_data_type.StringDataType]
class StringDataTypeGidBuilderImpl(T) : gid_apache.arrow20.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.string_data_type.StringDataType]
final class StringDataTypeGidBuilder : StringDataTypeGidBuilderImpl!StringDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StringDataType build() nothrow
  {
    return new StringDataType(cast(void*)createGObject(StringDataType._getGType), Yes.Take);
  }
}
