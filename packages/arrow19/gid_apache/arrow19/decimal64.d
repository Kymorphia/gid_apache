/// Module for [Decimal64] class
module gid_apache.arrow19.decimal64;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.types;

/** */
class Decimal64 : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_decimal64_get_type != &gidSymbolNotFound ? garrow_decimal64_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal64";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal64 self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.decimal64.Decimal64]
      Returns: New builder object
  */
  static Decimal64GidBuilder builder() nothrow
  {
    return new Decimal64GidBuilder;
  }

  /** */
  static gid_apache.arrow19.decimal64.Decimal64 newInteger(long data) nothrow
  {
    GArrowDecimal64* _cretval;
    _cretval = garrow_decimal64_new_integer(data);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow19.decimal64.Decimal64 newString(string data)
  {
    GArrowDecimal64* _cretval;
    const(char)* _data = data.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_decimal64_new_string(_data, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Computes the absolute value of the decimal destructively.
  */
  void abs() nothrow
  {
    garrow_decimal64_abs(cast(GArrowDecimal64*)this._cPtr);
  }

  /** */
  gid_apache.arrow19.decimal64.Decimal64 copy() nothrow
  {
    GArrowDecimal64* _cretval;
    _cretval = garrow_decimal64_copy(cast(GArrowDecimal64*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.decimal64.Decimal64 divide(gid_apache.arrow19.decimal64.Decimal64 right, out gid_apache.arrow19.decimal64.Decimal64 remainder)
  {
    GArrowDecimal64* _cretval;
    GArrowDecimal64* _remainder;
    GError *_err;
    _cretval = garrow_decimal64_divide(cast(GArrowDecimal64*)this._cPtr, right ? cast(GArrowDecimal64*)right._cPtr(No.Dup) : null, &_remainder, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    remainder = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(_remainder, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow19.decimal64.Decimal64 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal64_equal(cast(GArrowDecimal64*)this._cPtr, otherDecimal ? cast(GArrowDecimal64*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThan(gid_apache.arrow19.decimal64.Decimal64 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal64_greater_than(cast(GArrowDecimal64*)this._cPtr, otherDecimal ? cast(GArrowDecimal64*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThanOrEqual(gid_apache.arrow19.decimal64.Decimal64 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal64_greater_than_or_equal(cast(GArrowDecimal64*)this._cPtr, otherDecimal ? cast(GArrowDecimal64*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThan(gid_apache.arrow19.decimal64.Decimal64 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal64_less_than(cast(GArrowDecimal64*)this._cPtr, otherDecimal ? cast(GArrowDecimal64*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThanOrEqual(gid_apache.arrow19.decimal64.Decimal64 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal64_less_than_or_equal(cast(GArrowDecimal64*)this._cPtr, otherDecimal ? cast(GArrowDecimal64*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow19.decimal64.Decimal64 minus(gid_apache.arrow19.decimal64.Decimal64 right) nothrow
  {
    GArrowDecimal64* _cretval;
    _cretval = garrow_decimal64_minus(cast(GArrowDecimal64*)this._cPtr, right ? cast(GArrowDecimal64*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.decimal64.Decimal64 multiply(gid_apache.arrow19.decimal64.Decimal64 right) nothrow
  {
    GArrowDecimal64* _cretval;
    _cretval = garrow_decimal64_multiply(cast(GArrowDecimal64*)this._cPtr, right ? cast(GArrowDecimal64*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Negate the current value of the decimal destructively.
  */
  void negate() nothrow
  {
    garrow_decimal64_negate(cast(GArrowDecimal64*)this._cPtr);
  }

  /** */
  bool notEqual(gid_apache.arrow19.decimal64.Decimal64 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal64_not_equal(cast(GArrowDecimal64*)this._cPtr, otherDecimal ? cast(GArrowDecimal64*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow19.decimal64.Decimal64 plus(gid_apache.arrow19.decimal64.Decimal64 right) nothrow
  {
    GArrowDecimal64* _cretval;
    _cretval = garrow_decimal64_plus(cast(GArrowDecimal64*)this._cPtr, right ? cast(GArrowDecimal64*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.decimal64.Decimal64 rescale(int originalScale, int newScale)
  {
    GArrowDecimal64* _cretval;
    GError *_err;
    _cretval = garrow_decimal64_rescale(cast(GArrowDecimal64*)this._cPtr, originalScale, newScale, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes toBytes() nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_decimal64_to_bytes(cast(GArrowDecimal64*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  long toInteger() nothrow
  {
    long _retval;
    _retval = garrow_decimal64_to_integer(cast(GArrowDecimal64*)this._cPtr);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal64_to_string(cast(GArrowDecimal64*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toStringScale(int scale) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal64_to_string_scale(cast(GArrowDecimal64*)this._cPtr, scale);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.decimal64.Decimal64]
class Decimal64GidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T decimal64(void* propval) nothrow
  {
    return setProperty("decimal64", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.decimal64.Decimal64]
final class Decimal64GidBuilder : Decimal64GidBuilderImpl!Decimal64GidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal64 build() nothrow
  {
    return new Decimal64(cast(void*)createGObject(Decimal64._getGType), Yes.Take);
  }
}
