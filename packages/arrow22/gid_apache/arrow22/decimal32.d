/// Module for [Decimal32] class
module gid_apache.arrow22.decimal32;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.types;

/** */
class Decimal32 : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_decimal32_get_type != &gidSymbolNotFound ? garrow_decimal32_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal32";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal32 self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.decimal32.Decimal32]
      Returns: New builder object
  */
  static Decimal32GidBuilder builder() nothrow
  {
    return new Decimal32GidBuilder;
  }

  /** */
  static gid_apache.arrow22.decimal32.Decimal32 newInteger(long data) nothrow
  {
    GArrowDecimal32* _cretval;
    _cretval = garrow_decimal32_new_integer(data);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow22.decimal32.Decimal32 newString(string data)
  {
    GArrowDecimal32* _cretval;
    const(char)* _data = data.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_decimal32_new_string(_data, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Computes the absolute value of the decimal destructively.
  */
  void abs() nothrow
  {
    garrow_decimal32_abs(cast(GArrowDecimal32*)this._cPtr);
  }

  /** */
  gid_apache.arrow22.decimal32.Decimal32 copy() nothrow
  {
    GArrowDecimal32* _cretval;
    _cretval = garrow_decimal32_copy(cast(GArrowDecimal32*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.decimal32.Decimal32 divide(gid_apache.arrow22.decimal32.Decimal32 right, out gid_apache.arrow22.decimal32.Decimal32 remainder)
  {
    GArrowDecimal32* _cretval;
    GArrowDecimal32* _remainder;
    GError *_err;
    _cretval = garrow_decimal32_divide(cast(GArrowDecimal32*)this._cPtr, right ? cast(GArrowDecimal32*)right._cPtr(No.Dup) : null, &_remainder, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    remainder = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(_remainder, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow22.decimal32.Decimal32 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal32_equal(cast(GArrowDecimal32*)this._cPtr, otherDecimal ? cast(GArrowDecimal32*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThan(gid_apache.arrow22.decimal32.Decimal32 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal32_greater_than(cast(GArrowDecimal32*)this._cPtr, otherDecimal ? cast(GArrowDecimal32*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool greaterThanOrEqual(gid_apache.arrow22.decimal32.Decimal32 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal32_greater_than_or_equal(cast(GArrowDecimal32*)this._cPtr, otherDecimal ? cast(GArrowDecimal32*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThan(gid_apache.arrow22.decimal32.Decimal32 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal32_less_than(cast(GArrowDecimal32*)this._cPtr, otherDecimal ? cast(GArrowDecimal32*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThanOrEqual(gid_apache.arrow22.decimal32.Decimal32 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal32_less_than_or_equal(cast(GArrowDecimal32*)this._cPtr, otherDecimal ? cast(GArrowDecimal32*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow22.decimal32.Decimal32 minus(gid_apache.arrow22.decimal32.Decimal32 right) nothrow
  {
    GArrowDecimal32* _cretval;
    _cretval = garrow_decimal32_minus(cast(GArrowDecimal32*)this._cPtr, right ? cast(GArrowDecimal32*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.decimal32.Decimal32 multiply(gid_apache.arrow22.decimal32.Decimal32 right) nothrow
  {
    GArrowDecimal32* _cretval;
    _cretval = garrow_decimal32_multiply(cast(GArrowDecimal32*)this._cPtr, right ? cast(GArrowDecimal32*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Negate the current value of the decimal destructively.
  */
  void negate() nothrow
  {
    garrow_decimal32_negate(cast(GArrowDecimal32*)this._cPtr);
  }

  /** */
  bool notEqual(gid_apache.arrow22.decimal32.Decimal32 otherDecimal) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_decimal32_not_equal(cast(GArrowDecimal32*)this._cPtr, otherDecimal ? cast(GArrowDecimal32*)otherDecimal._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow22.decimal32.Decimal32 plus(gid_apache.arrow22.decimal32.Decimal32 right) nothrow
  {
    GArrowDecimal32* _cretval;
    _cretval = garrow_decimal32_plus(cast(GArrowDecimal32*)this._cPtr, right ? cast(GArrowDecimal32*)right._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.decimal32.Decimal32 rescale(int originalScale, int newScale)
  {
    GArrowDecimal32* _cretval;
    GError *_err;
    _cretval = garrow_decimal32_rescale(cast(GArrowDecimal32*)this._cPtr, originalScale, newScale, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes toBytes() nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_decimal32_to_bytes(cast(GArrowDecimal32*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  long toInteger() nothrow
  {
    long _retval;
    _retval = garrow_decimal32_to_integer(cast(GArrowDecimal32*)this._cPtr);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal32_to_string(cast(GArrowDecimal32*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toStringScale(int scale) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal32_to_string_scale(cast(GArrowDecimal32*)this._cPtr, scale);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.decimal32.Decimal32]
class Decimal32GidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T decimal32(void* propval) nothrow
  {
    return setProperty("decimal32", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.decimal32.Decimal32]
final class Decimal32GidBuilder : Decimal32GidBuilderImpl!Decimal32GidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal32 build() nothrow
  {
    return new Decimal32(cast(void*)createGObject(Decimal32._getGType), Yes.Take);
  }
}
