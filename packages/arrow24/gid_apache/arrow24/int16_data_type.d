/// Module for [Int16DataType] class
module gid_apache.arrow24.int16_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.integer_data_type;
import gid_apache.arrow24.types;

/** */
class Int16DataType : gid_apache.arrow24.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_int16_data_type_get_type != &gidSymbolNotFound ? garrow_int16_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt16DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int16DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.int16_data_type.Int16DataType]
      Returns: New builder object
  */
  static Int16DataTypeGidBuilder builder() nothrow
  {
    return new Int16DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowInt16DataType* _cretval;
    _cretval = garrow_int16_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.int16_data_type.Int16DataType]
class Int16DataTypeGidBuilderImpl(T) : gid_apache.arrow24.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.int16_data_type.Int16DataType]
final class Int16DataTypeGidBuilder : Int16DataTypeGidBuilderImpl!Int16DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int16DataType build() nothrow
  {
    return new Int16DataType(cast(void*)createGObject(Int16DataType._getGType), Yes.Take);
  }
}
