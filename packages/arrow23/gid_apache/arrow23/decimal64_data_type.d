/// Module for [Decimal64DataType] class
module gid_apache.arrow23.decimal64_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.decimal_data_type;
import gid_apache.arrow23.types;

/** */
class Decimal64DataType : gid_apache.arrow23.decimal_data_type.DecimalDataType
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
    return cast(void function())garrow_decimal64_data_type_get_type != &gidSymbolNotFound ? garrow_decimal64_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal64DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal64DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.decimal64_data_type.Decimal64DataType]
      Returns: New builder object
  */
  static Decimal64DataTypeGidBuilder builder() nothrow
  {
    return new Decimal64DataTypeGidBuilder;
  }

  /** */
  this(int precision, int scale)
  {
    GArrowDecimal64DataType* _cretval;
    GError *_err;
    _cretval = garrow_decimal64_data_type_new(precision, scale, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static int maxPrecision() nothrow
  {
    int _retval;
    _retval = garrow_decimal64_data_type_max_precision();
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.decimal64_data_type.Decimal64DataType]
class Decimal64DataTypeGidBuilderImpl(T) : gid_apache.arrow23.decimal_data_type.DecimalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.decimal64_data_type.Decimal64DataType]
final class Decimal64DataTypeGidBuilder : Decimal64DataTypeGidBuilderImpl!Decimal64DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal64DataType build() nothrow
  {
    return new Decimal64DataType(cast(void*)createGObject(Decimal64DataType._getGType), Yes.Take);
  }
}
