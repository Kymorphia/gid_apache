/// Module for [Decimal128] class
module gid_apache.arrow26.decimal128;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class Decimal128 : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_decimal128_get_type != &gidSymbolNotFound ? garrow_decimal128_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal128";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal128 self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.decimal128.Decimal128]
      Returns: New builder object
  */
  static Decimal128GidBuilder builder() nothrow
  {
    return new Decimal128GidBuilder;
  }

  /** */
  static gid_apache.arrow26.decimal128.Decimal128 newInteger(long data) nothrow
  {
    GArrowDecimal128* _cretval;
    _cretval = garrow_decimal128_new_integer(data);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow26.decimal128.Decimal128 newString(string data)
  {
    GArrowDecimal128* _cretval;
    const(char)* _data = data.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_decimal128_new_string(_data, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Computes the absolute value of the decimal destructively.
  */
  void abs() nothrow
  {
    garrow_decimal128_abs(cast(GArrowDecimal128*)this._cPtr);
  }

  /** */
  gid_apache.arrow26.decimal128.Decimal128 copy() nothrow
  {
    GArrowDecimal128* _cretval;
    _cretval = garrow_decimal128_copy(cast(GArrowDecimal128*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.decimal128.Decimal128 divide(gid_apache.arrow26.decimal128.Decimal128 right, out gid_apache.arrow26.decimal128.Decimal128 remainder)
  {
    GArrowDecimal128* _cretval;
    GArrowDecimal128* _remainder;
    GError *_err;
    _cretval = garrow_decimal128_divide(cast(GArrowDecimal128*)this._cPtr, right ? cast(GArrowDecimal128*)right._cPtr(No.Dup) : null, &_remainder, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    remainder = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(_remainder, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow26.decimal128.Decimal128 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal128_equal(cast(GArrowDecimal128*)this._cPtr, otherDecimal ? cast(GArrowDecimal128*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThan(gid_apache.arrow26.decimal128.Decimal128 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal128_greater_than(cast(GArrowDecimal128*)this._cPtr, otherDecimal ? cast(GArrowDecimal128*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThanOrEqual(gid_apache.arrow26.decimal128.Decimal128 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal128_greater_than_or_equal(cast(GArrowDecimal128*)this._cPtr, otherDecimal ? cast(GArrowDecimal128*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThan(gid_apache.arrow26.decimal128.Decimal128 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal128_less_than(cast(GArrowDecimal128*)this._cPtr, otherDecimal ? cast(GArrowDecimal128*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThanOrEqual(gid_apache.arrow26.decimal128.Decimal128 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal128_less_than_or_equal(cast(GArrowDecimal128*)this._cPtr, otherDecimal ? cast(GArrowDecimal128*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow26.decimal128.Decimal128 minus(gid_apache.arrow26.decimal128.Decimal128 right) nothrow
  {
    GArrowDecimal128* _cretval;
    _cretval = garrow_decimal128_minus(cast(GArrowDecimal128*)this._cPtr, right ? cast(GArrowDecimal128*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.decimal128.Decimal128 multiply(gid_apache.arrow26.decimal128.Decimal128 right) nothrow
  {
    GArrowDecimal128* _cretval;
    _cretval = garrow_decimal128_multiply(cast(GArrowDecimal128*)this._cPtr, right ? cast(GArrowDecimal128*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Negate the current value of the decimal destructively.
  */
  void negate() nothrow
  {
    garrow_decimal128_negate(cast(GArrowDecimal128*)this._cPtr);
  }

  /** */
  bool notEqual(gid_apache.arrow26.decimal128.Decimal128 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal128_not_equal(cast(GArrowDecimal128*)this._cPtr, otherDecimal ? cast(GArrowDecimal128*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow26.decimal128.Decimal128 plus(gid_apache.arrow26.decimal128.Decimal128 right) nothrow
  {
    GArrowDecimal128* _cretval;
    _cretval = garrow_decimal128_plus(cast(GArrowDecimal128*)this._cPtr, right ? cast(GArrowDecimal128*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.decimal128.Decimal128 rescale(int originalScale, int newScale)
  {
    GArrowDecimal128* _cretval;
    GError *_err;
    _cretval = garrow_decimal128_rescale(cast(GArrowDecimal128*)this._cPtr, originalScale, newScale, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes toBytes() nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_decimal128_to_bytes(cast(GArrowDecimal128*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  long toInteger() nothrow
  {
    long _retval;
    _retval = garrow_decimal128_to_integer(cast(GArrowDecimal128*)this._cPtr);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal128_to_string(cast(GArrowDecimal128*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toStringScale(int scale) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal128_to_string_scale(cast(GArrowDecimal128*)this._cPtr, scale);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.decimal128.Decimal128]
class Decimal128GidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T decimal128(void* propval) nothrow
  {
    return setProperty("decimal128", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.decimal128.Decimal128]
final class Decimal128GidBuilder : Decimal128GidBuilderImpl!Decimal128GidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal128 build() nothrow
  {
    return new Decimal128(cast(void*)createGObject(Decimal128._getGType), Yes.Take);
  }
}
