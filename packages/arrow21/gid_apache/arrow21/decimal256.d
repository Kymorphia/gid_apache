/// Module for [Decimal256] class
module gid_apache.arrow21.decimal256;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.types;

/** */
class Decimal256 : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_decimal256_get_type != &gidSymbolNotFound ? garrow_decimal256_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal256";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal256 self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.decimal256.Decimal256]
      Returns: New builder object
  */
  static Decimal256GidBuilder builder() nothrow
  {
    return new Decimal256GidBuilder;
  }

  /** */
  static gid_apache.arrow21.decimal256.Decimal256 newInteger(long data) nothrow
  {
    GArrowDecimal256* _cretval;
    _cretval = garrow_decimal256_new_integer(data);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow21.decimal256.Decimal256 newString(string data)
  {
    GArrowDecimal256* _cretval;
    const(char)* _data = data.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_decimal256_new_string(_data, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Computes the absolute value of the decimal destructively.
  */
  void abs() nothrow
  {
    garrow_decimal256_abs(cast(GArrowDecimal256*)this._cPtr);
  }

  /** */
  gid_apache.arrow21.decimal256.Decimal256 copy() nothrow
  {
    GArrowDecimal256* _cretval;
    _cretval = garrow_decimal256_copy(cast(GArrowDecimal256*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.decimal256.Decimal256 divide(gid_apache.arrow21.decimal256.Decimal256 right, out gid_apache.arrow21.decimal256.Decimal256 remainder)
  {
    GArrowDecimal256* _cretval;
    GArrowDecimal256* _remainder;
    GError *_err;
    _cretval = garrow_decimal256_divide(cast(GArrowDecimal256*)this._cPtr, right ? cast(GArrowDecimal256*)right._cPtr(No.Dup) : null, &_remainder, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    remainder = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(_remainder, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow21.decimal256.Decimal256 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal256_equal(cast(GArrowDecimal256*)this._cPtr, otherDecimal ? cast(GArrowDecimal256*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThan(gid_apache.arrow21.decimal256.Decimal256 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal256_greater_than(cast(GArrowDecimal256*)this._cPtr, otherDecimal ? cast(GArrowDecimal256*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThanOrEqual(gid_apache.arrow21.decimal256.Decimal256 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal256_greater_than_or_equal(cast(GArrowDecimal256*)this._cPtr, otherDecimal ? cast(GArrowDecimal256*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThan(gid_apache.arrow21.decimal256.Decimal256 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal256_less_than(cast(GArrowDecimal256*)this._cPtr, otherDecimal ? cast(GArrowDecimal256*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThanOrEqual(gid_apache.arrow21.decimal256.Decimal256 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal256_less_than_or_equal(cast(GArrowDecimal256*)this._cPtr, otherDecimal ? cast(GArrowDecimal256*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow21.decimal256.Decimal256 multiply(gid_apache.arrow21.decimal256.Decimal256 right) nothrow
  {
    GArrowDecimal256* _cretval;
    _cretval = garrow_decimal256_multiply(cast(GArrowDecimal256*)this._cPtr, right ? cast(GArrowDecimal256*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Negate the current value of the decimal destructively.
  */
  void negate() nothrow
  {
    garrow_decimal256_negate(cast(GArrowDecimal256*)this._cPtr);
  }

  /** */
  bool notEqual(gid_apache.arrow21.decimal256.Decimal256 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal256_not_equal(cast(GArrowDecimal256*)this._cPtr, otherDecimal ? cast(GArrowDecimal256*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow21.decimal256.Decimal256 plus(gid_apache.arrow21.decimal256.Decimal256 right) nothrow
  {
    GArrowDecimal256* _cretval;
    _cretval = garrow_decimal256_plus(cast(GArrowDecimal256*)this._cPtr, right ? cast(GArrowDecimal256*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.decimal256.Decimal256 rescale(int originalScale, int newScale)
  {
    GArrowDecimal256* _cretval;
    GError *_err;
    _cretval = garrow_decimal256_rescale(cast(GArrowDecimal256*)this._cPtr, originalScale, newScale, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes toBytes() nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_decimal256_to_bytes(cast(GArrowDecimal256*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal256_to_string(cast(GArrowDecimal256*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toStringScale(int scale) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal256_to_string_scale(cast(GArrowDecimal256*)this._cPtr, scale);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.decimal256.Decimal256]
class Decimal256GidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T decimal256(void* propval) nothrow
  {
    return setProperty("decimal256", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.decimal256.Decimal256]
final class Decimal256GidBuilder : Decimal256GidBuilderImpl!Decimal256GidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal256 build() nothrow
  {
    return new Decimal256(cast(void*)createGObject(Decimal256._getGType), Yes.Take);
  }
}
