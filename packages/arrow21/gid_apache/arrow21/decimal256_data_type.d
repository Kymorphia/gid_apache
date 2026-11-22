/// Module for [Decimal256DataType] class
module gid_apache.arrow21.decimal256_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.decimal_data_type;
import gid_apache.arrow21.types;

/** */
class Decimal256DataType : gid_apache.arrow21.decimal_data_type.DecimalDataType
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
    return cast(void function())garrow_decimal256_data_type_get_type != &gidSymbolNotFound ? garrow_decimal256_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal256DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal256DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.decimal256_data_type.Decimal256DataType]
      Returns: New builder object
  */
  static Decimal256DataTypeGidBuilder builder() nothrow
  {
    return new Decimal256DataTypeGidBuilder;
  }

  /** */
  this(int precision, int scale)
  {
    GArrowDecimal256DataType* _cretval;
    GError *_err;
    _cretval = garrow_decimal256_data_type_new(precision, scale, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static int maxPrecision() nothrow
  {
    int _retval;
    _retval = garrow_decimal256_data_type_max_precision();
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.decimal256_data_type.Decimal256DataType]
class Decimal256DataTypeGidBuilderImpl(T) : gid_apache.arrow21.decimal_data_type.DecimalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.decimal256_data_type.Decimal256DataType]
final class Decimal256DataTypeGidBuilder : Decimal256DataTypeGidBuilderImpl!Decimal256DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal256DataType build() nothrow
  {
    return new Decimal256DataType(cast(void*)createGObject(Decimal256DataType._getGType), Yes.Take);
  }
}
