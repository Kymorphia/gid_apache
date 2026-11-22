/// Module for [Int8DataType] class
module gid_apache.arrow23.int8_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.integer_data_type;
import gid_apache.arrow23.types;

/** */
class Int8DataType : gid_apache.arrow23.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_int8_data_type_get_type != &gidSymbolNotFound ? garrow_int8_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt8DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int8DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.int8_data_type.Int8DataType]
      Returns: New builder object
  */
  static Int8DataTypeGidBuilder builder() nothrow
  {
    return new Int8DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowInt8DataType* _cretval;
    _cretval = garrow_int8_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.int8_data_type.Int8DataType]
class Int8DataTypeGidBuilderImpl(T) : gid_apache.arrow23.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.int8_data_type.Int8DataType]
final class Int8DataTypeGidBuilder : Int8DataTypeGidBuilderImpl!Int8DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int8DataType build() nothrow
  {
    return new Int8DataType(cast(void*)createGObject(Int8DataType._getGType), Yes.Take);
  }
}
