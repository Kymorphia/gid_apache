/// Module for [Int32DataType] class
module gid_apache.arrow23.int32_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.integer_data_type;
import gid_apache.arrow23.types;

/** */
class Int32DataType : gid_apache.arrow23.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_int32_data_type_get_type != &gidSymbolNotFound ? garrow_int32_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt32DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int32DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.int32_data_type.Int32DataType]
      Returns: New builder object
  */
  static Int32DataTypeGidBuilder builder() nothrow
  {
    return new Int32DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowInt32DataType* _cretval;
    _cretval = garrow_int32_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.int32_data_type.Int32DataType]
class Int32DataTypeGidBuilderImpl(T) : gid_apache.arrow23.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.int32_data_type.Int32DataType]
final class Int32DataTypeGidBuilder : Int32DataTypeGidBuilderImpl!Int32DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int32DataType build() nothrow
  {
    return new Int32DataType(cast(void*)createGObject(Int32DataType._getGType), Yes.Take);
  }
}
