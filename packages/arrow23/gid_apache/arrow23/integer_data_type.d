/// Module for [IntegerDataType] class
module gid_apache.arrow23.integer_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.numeric_data_type;
import gid_apache.arrow23.types;

/** */
class IntegerDataType : gid_apache.arrow23.numeric_data_type.NumericDataType
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
    return cast(void function())garrow_integer_data_type_get_type != &gidSymbolNotFound ? garrow_integer_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowIntegerDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override IntegerDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.integer_data_type.IntegerDataType]
      Returns: New builder object
  */
  static IntegerDataTypeGidBuilder builder() nothrow
  {
    return new IntegerDataTypeGidBuilder;
  }

  /** */
  bool isSigned() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_integer_data_type_is_signed(cast(GArrowIntegerDataType*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.integer_data_type.IntegerDataType]
class IntegerDataTypeGidBuilderImpl(T) : gid_apache.arrow23.numeric_data_type.NumericDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.integer_data_type.IntegerDataType]
final class IntegerDataTypeGidBuilder : IntegerDataTypeGidBuilderImpl!IntegerDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  IntegerDataType build() nothrow
  {
    return new IntegerDataType(cast(void*)createGObject(IntegerDataType._getGType), Yes.Take);
  }
}
