/// Module for [Scalar] class
module gid_apache.arrow24.scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.cast_options;
import gid_apache.arrow24.data_type;
import gid_apache.arrow24.equal_options;
import gid_apache.arrow24.types;

/** */
class Scalar : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_scalar_get_type != &gidSymbolNotFound ? garrow_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override Scalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.scalar.Scalar]
      Returns: New builder object
  */
  static ScalarGidBuilder builder() nothrow
  {
    return new ScalarGidBuilder;
  }

  /** */
  static gid_apache.arrow24.scalar.Scalar parse(gid_apache.arrow24.data_type.DataType dataType, ubyte[] data)
  {
    GArrowScalar* _cretval;
    size_t _size;
    if (data)
      _size = cast(size_t)data.length;

    auto _data = cast(ubyte*)data.ptr;
    GError *_err;
    _cretval = garrow_scalar_parse(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, _data, _size, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.scalar.Scalar)(cast(GArrowScalar*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.scalar.Scalar cast_(gid_apache.arrow24.data_type.DataType dataType, gid_apache.arrow24.cast_options.CastOptions options = null)
  {
    GArrowScalar* _cretval;
    GError *_err;
    _cretval = garrow_scalar_cast(cast(GArrowScalar*)this._cPtr, dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, options ? cast(GArrowCastOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.scalar.Scalar)(cast(GArrowScalar*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow24.scalar.Scalar otherScalar) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_scalar_equal(cast(GArrowScalar*)this._cPtr, otherScalar ? cast(GArrowScalar*)otherScalar._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool equalOptions(gid_apache.arrow24.scalar.Scalar otherScalar, gid_apache.arrow24.equal_options.EqualOptions options = null) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_scalar_equal_options(cast(GArrowScalar*)this._cPtr, otherScalar ? cast(GArrowScalar*)otherScalar._cPtr(No.Dup) : null, options ? cast(GArrowEqualOptions*)options._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow24.data_type.DataType getDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_scalar_get_data_type(cast(GArrowScalar*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.data_type.DataType)(cast(GArrowDataType*)_cretval, No.Take);
    return _retval;
  }

  /** */
  bool isValid() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_scalar_is_valid(cast(GArrowScalar*)this._cPtr);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_scalar_to_string(cast(GArrowScalar*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.scalar.Scalar]
class ScalarGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `dataType` property.
      Params:
        propval = The data type of the scalar.
      Returns: Builder instance for fluent chaining
  */
  T dataType(gid_apache.arrow24.data_type.DataType propval) nothrow
  {
    return setProperty("data-type", propval);
  }

  /** */
  T scalar(void* propval) nothrow
  {
    return setProperty("scalar", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.scalar.Scalar]
final class ScalarGidBuilder : ScalarGidBuilderImpl!ScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Scalar build() nothrow
  {
    return new Scalar(cast(void*)createGObject(Scalar._getGType), Yes.Take);
  }
}
