/// Module for [Decimal64Scalar] class
module gid_apache.arrow25.decimal64_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.decimal64;
import gid_apache.arrow25.decimal64_data_type;
import gid_apache.arrow25.scalar;
import gid_apache.arrow25.types;

/** */
class Decimal64Scalar : gid_apache.arrow25.scalar.Scalar
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
    return cast(void function())garrow_decimal64_scalar_get_type != &gidSymbolNotFound ? garrow_decimal64_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal64Scalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal64Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.decimal64_scalar.Decimal64Scalar]
      Returns: New builder object
  */
  static Decimal64ScalarGidBuilder builder() nothrow
  {
    return new Decimal64ScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.decimal64_data_type.Decimal64DataType dataType, gid_apache.arrow25.decimal64.Decimal64 value) nothrow
  {
    GArrowDecimal64Scalar* _cretval;
    _cretval = garrow_decimal64_scalar_new(dataType ? cast(GArrowDecimal64DataType*)dataType._cPtr(No.Dup) : null, value ? cast(GArrowDecimal64*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow25.decimal64.Decimal64 getValue() nothrow
  {
    GArrowDecimal64* _cretval;
    _cretval = garrow_decimal64_scalar_get_value(cast(GArrowDecimal64Scalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.decimal64_scalar.Decimal64Scalar]
class Decimal64ScalarGidBuilderImpl(T) : gid_apache.arrow25.scalar.ScalarGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow25.decimal64.Decimal64 propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.decimal64_scalar.Decimal64Scalar]
final class Decimal64ScalarGidBuilder : Decimal64ScalarGidBuilderImpl!Decimal64ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal64Scalar build() nothrow
  {
    return new Decimal64Scalar(cast(void*)createGObject(Decimal64Scalar._getGType), Yes.Take);
  }
}
