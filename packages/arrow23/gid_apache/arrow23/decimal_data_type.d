/// Module for [DecimalDataType] class
module gid_apache.arrow23.decimal_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.fixed_size_binary_data_type;
import gid_apache.arrow23.types;

/** */
class DecimalDataType : gid_apache.arrow23.fixed_size_binary_data_type.FixedSizeBinaryDataType
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
    return cast(void function())garrow_decimal_data_type_get_type != &gidSymbolNotFound ? garrow_decimal_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimalDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override DecimalDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.decimal_data_type.DecimalDataType]
      Returns: New builder object
  */
  static DecimalDataTypeGidBuilder builder() nothrow
  {
    return new DecimalDataTypeGidBuilder;
  }

  /** */
  this(int precision, int scale)
  {
    GArrowDecimalDataType* _cretval;
    GError *_err;
    _cretval = garrow_decimal_data_type_new(precision, scale, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  int getPrecision() nothrow
  {
    int _retval;
    _retval = garrow_decimal_data_type_get_precision(cast(GArrowDecimalDataType*)this._cPtr);
    return _retval;
  }

  /** */
  int getScale() nothrow
  {
    int _retval;
    _retval = garrow_decimal_data_type_get_scale(cast(GArrowDecimalDataType*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.decimal_data_type.DecimalDataType]
class DecimalDataTypeGidBuilderImpl(T) : gid_apache.arrow23.fixed_size_binary_data_type.FixedSizeBinaryDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.decimal_data_type.DecimalDataType]
final class DecimalDataTypeGidBuilder : DecimalDataTypeGidBuilderImpl!DecimalDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DecimalDataType build() nothrow
  {
    return new DecimalDataType(cast(void*)createGObject(DecimalDataType._getGType), Yes.Take);
  }
}
