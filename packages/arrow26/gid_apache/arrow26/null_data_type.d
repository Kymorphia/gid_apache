/// Module for [NullDataType] class
module gid_apache.arrow26.null_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.data_type;
import gid_apache.arrow26.types;

/** */
class NullDataType : gid_apache.arrow26.data_type.DataType
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
    return cast(void function())garrow_null_data_type_get_type != &gidSymbolNotFound ? garrow_null_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowNullDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override NullDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.null_data_type.NullDataType]
      Returns: New builder object
  */
  static NullDataTypeGidBuilder builder() nothrow
  {
    return new NullDataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowNullDataType* _cretval;
    _cretval = garrow_null_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.null_data_type.NullDataType]
class NullDataTypeGidBuilderImpl(T) : gid_apache.arrow26.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.null_data_type.NullDataType]
final class NullDataTypeGidBuilder : NullDataTypeGidBuilderImpl!NullDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  NullDataType build() nothrow
  {
    return new NullDataType(cast(void*)createGObject(NullDataType._getGType), Yes.Take);
  }
}
