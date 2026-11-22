/// Module for [Decimal128Scalar] class
module gid_apache.arrow24.decimal128_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.decimal128;
import gid_apache.arrow24.decimal128_data_type;
import gid_apache.arrow24.scalar;
import gid_apache.arrow24.types;

/** */
class Decimal128Scalar : gid_apache.arrow24.scalar.Scalar
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
    return cast(void function())garrow_decimal128_scalar_get_type != &gidSymbolNotFound ? garrow_decimal128_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal128Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal128Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.decimal128_scalar.Decimal128Scalar]
      Returns: New builder object
  */
  static Decimal128ScalarGidBuilder builder() nothrow
  {
    return new Decimal128ScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.decimal128_data_type.Decimal128DataType dataType, gid_apache.arrow24.decimal128.Decimal128 value) nothrow
  {
    GArrowDecimal128Scalar* _cretval;
    _cretval = garrow_decimal128_scalar_new(dataType ? cast(GArrowDecimal128DataType*)dataType._cPtr(No.Dup) : null, value ? cast(GArrowDecimal128*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow24.decimal128.Decimal128 getValue() nothrow
  {
    GArrowDecimal128* _cretval;
    _cretval = garrow_decimal128_scalar_get_value(cast(GArrowDecimal128Scalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.decimal128_scalar.Decimal128Scalar]
class Decimal128ScalarGidBuilderImpl(T) : gid_apache.arrow24.scalar.ScalarGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow24.decimal128.Decimal128 propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.decimal128_scalar.Decimal128Scalar]
final class Decimal128ScalarGidBuilder : Decimal128ScalarGidBuilderImpl!Decimal128ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal128Scalar build() nothrow
  {
    return new Decimal128Scalar(cast(void*)createGObject(Decimal128Scalar._getGType), Yes.Take);
  }
}
