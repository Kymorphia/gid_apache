/// Module for [Decimal32Scalar] class
module gid_apache.arrow23.decimal32_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.decimal32;
import gid_apache.arrow23.decimal32_data_type;
import gid_apache.arrow23.scalar;
import gid_apache.arrow23.types;

/** */
class Decimal32Scalar : gid_apache.arrow23.scalar.Scalar
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
    return cast(void function())garrow_decimal32_scalar_get_type != &gidSymbolNotFound ? garrow_decimal32_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal32Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal32Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.decimal32_scalar.Decimal32Scalar]
      Returns: New builder object
  */
  static Decimal32ScalarGidBuilder builder() nothrow
  {
    return new Decimal32ScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow23.decimal32_data_type.Decimal32DataType dataType, gid_apache.arrow23.decimal32.Decimal32 value) nothrow
  {
    GArrowDecimal32Scalar* _cretval;
    _cretval = garrow_decimal32_scalar_new(dataType ? cast(GArrowDecimal32DataType*)dataType._cPtr(No.Dup) : null, value ? cast(GArrowDecimal32*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow23.decimal32.Decimal32 getValue() nothrow
  {
    GArrowDecimal32* _cretval;
    _cretval = garrow_decimal32_scalar_get_value(cast(GArrowDecimal32Scalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.decimal32_scalar.Decimal32Scalar]
class Decimal32ScalarGidBuilderImpl(T) : gid_apache.arrow23.scalar.ScalarGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow23.decimal32.Decimal32 propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.decimal32_scalar.Decimal32Scalar]
final class Decimal32ScalarGidBuilder : Decimal32ScalarGidBuilderImpl!Decimal32ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal32Scalar build() nothrow
  {
    return new Decimal32Scalar(cast(void*)createGObject(Decimal32Scalar._getGType), Yes.Take);
  }
}
