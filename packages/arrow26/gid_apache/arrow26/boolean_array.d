/// Module for [BooleanArray] class
module gid_apache.arrow26.boolean_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.primitive_array;
import gid_apache.arrow26.types;

/** */
class BooleanArray : gid_apache.arrow26.primitive_array.PrimitiveArray
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
    return cast(void function())garrow_boolean_array_get_type != &gidSymbolNotFound ? garrow_boolean_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBooleanArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override BooleanArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.boolean_array.BooleanArray]
      Returns: New builder object
  */
  static BooleanArrayGidBuilder builder() nothrow
  {
    return new BooleanArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow26.buffer.Buffer data, gid_apache.arrow26.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowBooleanArray* _cretval;
    _cretval = garrow_boolean_array_new(length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow26.boolean_array.BooleanArray and(gid_apache.arrow26.boolean_array.BooleanArray right)
  {
    GArrowBooleanArray* _cretval;
    GError *_err;
    _cretval = garrow_boolean_array_and(cast(GArrowBooleanArray*)this._cPtr, right ? cast(GArrowBooleanArray*)right._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.boolean_array.BooleanArray)(cast(GArrowBooleanArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool getValue(long i) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_boolean_array_get_value(cast(GArrowBooleanArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  bool[] getValues() nothrow
  {
    gboolean* _cretval;
    long _cretlength;
    _cretval = garrow_boolean_array_get_values(cast(GArrowBooleanArray*)this._cPtr, &_cretlength);
    bool[] _retval;

    if (_cretval)
    {
      _retval = new bool[_cretlength];
      foreach (i; 0 .. _cretlength)
        _retval[i] = cast(bool)_cretval[i];
      gFree(cast(void*)_cretval);
    }
    return _retval;
  }

  /** */
  gid_apache.arrow26.boolean_array.BooleanArray invert()
  {
    GArrowBooleanArray* _cretval;
    GError *_err;
    _cretval = garrow_boolean_array_invert(cast(GArrowBooleanArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.boolean_array.BooleanArray)(cast(GArrowBooleanArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.boolean_array.BooleanArray or(gid_apache.arrow26.boolean_array.BooleanArray right)
  {
    GArrowBooleanArray* _cretval;
    GError *_err;
    _cretval = garrow_boolean_array_or(cast(GArrowBooleanArray*)this._cPtr, right ? cast(GArrowBooleanArray*)right._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.boolean_array.BooleanArray)(cast(GArrowBooleanArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.boolean_array.BooleanArray xor(gid_apache.arrow26.boolean_array.BooleanArray right)
  {
    GArrowBooleanArray* _cretval;
    GError *_err;
    _cretval = garrow_boolean_array_xor(cast(GArrowBooleanArray*)this._cPtr, right ? cast(GArrowBooleanArray*)right._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.boolean_array.BooleanArray)(cast(GArrowBooleanArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.boolean_array.BooleanArray]
class BooleanArrayGidBuilderImpl(T) : gid_apache.arrow26.primitive_array.PrimitiveArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.boolean_array.BooleanArray]
final class BooleanArrayGidBuilder : BooleanArrayGidBuilderImpl!BooleanArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BooleanArray build() nothrow
  {
    return new BooleanArray(cast(void*)createGObject(BooleanArray._getGType), Yes.Take);
  }
}
