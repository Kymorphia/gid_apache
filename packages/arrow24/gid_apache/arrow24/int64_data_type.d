/// Module for [Int64DataType] class
module gid_apache.arrow24.int64_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.integer_data_type;
import gid_apache.arrow24.types;

/** */
class Int64DataType : gid_apache.arrow24.integer_data_type.IntegerDataType
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
    return cast(void function())garrow_int64_data_type_get_type != &gidSymbolNotFound ? garrow_int64_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt64DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int64DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.int64_data_type.Int64DataType]
      Returns: New builder object
  */
  static Int64DataTypeGidBuilder builder() nothrow
  {
    return new Int64DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowInt64DataType* _cretval;
    _cretval = garrow_int64_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.int64_data_type.Int64DataType]
class Int64DataTypeGidBuilderImpl(T) : gid_apache.arrow24.integer_data_type.IntegerDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.int64_data_type.Int64DataType]
final class Int64DataTypeGidBuilder : Int64DataTypeGidBuilderImpl!Int64DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int64DataType build() nothrow
  {
    return new Int64DataType(cast(void*)createGObject(Int64DataType._getGType), Yes.Take);
  }
}
