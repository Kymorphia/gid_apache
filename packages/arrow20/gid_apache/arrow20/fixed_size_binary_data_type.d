/// Module for [FixedSizeBinaryDataType] class
module gid_apache.arrow20.fixed_size_binary_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.fixed_width_data_type;
import gid_apache.arrow20.types;

/** */
class FixedSizeBinaryDataType : gid_apache.arrow20.fixed_width_data_type.FixedWidthDataType
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
    return cast(void function())garrow_fixed_size_binary_data_type_get_type != &gidSymbolNotFound ? garrow_fixed_size_binary_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFixedSizeBinaryDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedSizeBinaryDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.fixed_size_binary_data_type.FixedSizeBinaryDataType]
      Returns: New builder object
  */
  static FixedSizeBinaryDataTypeGidBuilder builder() nothrow
  {
    return new FixedSizeBinaryDataTypeGidBuilder;
  }

  /** */
  this(int byteWidth) nothrow
  {
    GArrowFixedSizeBinaryDataType* _cretval;
    _cretval = garrow_fixed_size_binary_data_type_new(byteWidth);
    this(_cretval, Yes.Take);
  }

  /** */
  int getByteWidth() nothrow
  {
    int _retval;
    _retval = garrow_fixed_size_binary_data_type_get_byte_width(cast(GArrowFixedSizeBinaryDataType*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.fixed_size_binary_data_type.FixedSizeBinaryDataType]
class FixedSizeBinaryDataTypeGidBuilderImpl(T) : gid_apache.arrow20.fixed_width_data_type.FixedWidthDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.fixed_size_binary_data_type.FixedSizeBinaryDataType]
final class FixedSizeBinaryDataTypeGidBuilder : FixedSizeBinaryDataTypeGidBuilderImpl!FixedSizeBinaryDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedSizeBinaryDataType build() nothrow
  {
    return new FixedSizeBinaryDataType(cast(void*)createGObject(FixedSizeBinaryDataType._getGType), Yes.Take);
  }
}
