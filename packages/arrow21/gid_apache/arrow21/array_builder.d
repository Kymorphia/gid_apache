/// Module for [ArrayBuilder] class
module gid_apache.arrow21.array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.array;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.data_type;
import gid_apache.arrow21.types;

/** */
class ArrayBuilder : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_array_builder_get_type != &gidSymbolNotFound ? garrow_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.array_builder.ArrayBuilder]
      Returns: New builder object
  */
  static ArrayBuilderGidBuilder builder() nothrow
  {
    return new ArrayBuilderGidBuilder;
  }

  /** */
  bool appendEmptyValue()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_builder_append_empty_value(cast(GArrowArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple empty values at once. It's more efficient than multiple
      [gid_apache.arrow26.array_builder.ArrayBuilder.appendEmptyValue] calls.
  
      Params:
        n = The number of null values to be appended.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendEmptyValues(long n)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_builder_append_empty_values(cast(GArrowArrayBuilder*)this._cPtr, n, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendNull()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_builder_append_null(cast(GArrowArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple nulls at once. It's more efficient than multiple
      [gid_apache.arrow26.array_builder.ArrayBuilder.appendNull] calls.
  
      Params:
        n = The number of null values to be appended.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendNulls(long n)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_builder_append_nulls(cast(GArrowArrayBuilder*)this._cPtr, n, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array finish()
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_array_builder_finish(cast(GArrowArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getCapacity() nothrow
  {
    long _retval;
    _retval = garrow_array_builder_get_capacity(cast(GArrowArrayBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array_builder.ArrayBuilder getChild(int i) nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_array_builder_get_child(cast(GArrowArrayBuilder*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array_builder.ArrayBuilder[] getChildren() nothrow
  {
    GList* _cretval;
    _cretval = garrow_array_builder_get_children(cast(GArrowArrayBuilder*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow21.array_builder.ArrayBuilder, GidOwnership.None)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  long getLength() nothrow
  {
    long _retval;
    _retval = garrow_array_builder_get_length(cast(GArrowArrayBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  long getNNulls() nothrow
  {
    long _retval;
    _retval = garrow_array_builder_get_n_nulls(cast(GArrowArrayBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow21.data_type.DataType getValueDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_array_builder_get_value_data_type(cast(GArrowArrayBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.types.Type getValueType() nothrow
  {
    GArrowType _cretval;
    _cretval = garrow_array_builder_get_value_type(cast(GArrowArrayBuilder*)this._cPtr);
    gid_apache.arrow21.types.Type _retval = cast(gid_apache.arrow21.types.Type)_cretval;
    return _retval;
  }

  /** */
  bool reserve(long additionalCapacity)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_builder_reserve(cast(GArrowArrayBuilder*)this._cPtr, additionalCapacity, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  void reset() nothrow
  {
    garrow_array_builder_reset(cast(GArrowArrayBuilder*)this._cPtr);
  }

  /** */
  bool resize(long capacity)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_array_builder_resize(cast(GArrowArrayBuilder*)this._cPtr, capacity, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.array_builder.ArrayBuilder]
class ArrayBuilderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T arrayBuilder(void* propval) nothrow
  {
    return setProperty("array-builder", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.array_builder.ArrayBuilder]
final class ArrayBuilderGidBuilder : ArrayBuilderGidBuilderImpl!ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ArrayBuilder build() nothrow
  {
    return new ArrayBuilder(cast(void*)createGObject(ArrayBuilder._getGType), Yes.Take);
  }
}
