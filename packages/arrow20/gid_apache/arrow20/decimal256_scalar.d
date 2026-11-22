/// Module for [Decimal256Scalar] class
module gid_apache.arrow20.decimal256_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.decimal256;
import gid_apache.arrow20.decimal256_data_type;
import gid_apache.arrow20.scalar;
import gid_apache.arrow20.types;

/** */
class Decimal256Scalar : gid_apache.arrow20.scalar.Scalar
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
    return cast(void function())garrow_decimal256_scalar_get_type != &gidSymbolNotFound ? garrow_decimal256_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal256Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal256Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.decimal256_scalar.Decimal256Scalar]
      Returns: New builder object
  */
  static Decimal256ScalarGidBuilder builder() nothrow
  {
    return new Decimal256ScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.decimal256_data_type.Decimal256DataType dataType, gid_apache.arrow20.decimal256.Decimal256 value) nothrow
  {
    GArrowDecimal256Scalar* _cretval;
    _cretval = garrow_decimal256_scalar_new(dataType ? cast(GArrowDecimal256DataType*)dataType._cPtr(No.Dup) : null, value ? cast(GArrowDecimal256*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow20.decimal256.Decimal256 getValue() nothrow
  {
    GArrowDecimal256* _cretval;
    _cretval = garrow_decimal256_scalar_get_value(cast(GArrowDecimal256Scalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.decimal256_scalar.Decimal256Scalar]
class Decimal256ScalarGidBuilderImpl(T) : gid_apache.arrow20.scalar.ScalarGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow20.decimal256.Decimal256 propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.decimal256_scalar.Decimal256Scalar]
final class Decimal256ScalarGidBuilder : Decimal256ScalarGidBuilderImpl!Decimal256ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal256Scalar build() nothrow
  {
    return new Decimal256Scalar(cast(void*)createGObject(Decimal256Scalar._getGType), Yes.Take);
  }
}
