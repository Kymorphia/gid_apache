/// Module for [MapArrayBuilder] class
module gid_apache.arrow23.map_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.array_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.map_data_type;
import gid_apache.arrow23.types;

/** */
class MapArrayBuilder : gid_apache.arrow23.array_builder.ArrayBuilder
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
    return cast(void function())garrow_map_array_builder_get_type != &gidSymbolNotFound ? garrow_map_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMapArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override MapArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.map_array_builder.MapArrayBuilder]
      Returns: New builder object
  */
  static MapArrayBuilderGidBuilder builder() nothrow
  {
    return new MapArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow23.map_data_type.MapDataType dataType)
  {
    GArrowMapArrayBuilder* _cretval;
    GError *_err;
    _cretval = garrow_map_array_builder_new(dataType ? cast(GArrowMapDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool appendValue()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_map_array_builder_append_value(cast(GArrowMapArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        offsets = The array of signed int.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(int[] offsets, bool[] isValids = null)
  {
    bool _retval;
    long _offsetsLength;
    if (offsets)
      _offsetsLength = cast(long)offsets.length;

    auto _offsets = cast(int*)offsets.ptr;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_map_array_builder_append_values(cast(GArrowMapArrayBuilder*)this._cPtr, _offsets, _offsetsLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.array_builder.ArrayBuilder getItemBuilder() nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_map_array_builder_get_item_builder(cast(GArrowMapArrayBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.array_builder.ArrayBuilder getKeyBuilder() nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_map_array_builder_get_key_builder(cast(GArrowMapArrayBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.array_builder.ArrayBuilder getValueBuilder() nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_map_array_builder_get_value_builder(cast(GArrowMapArrayBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.map_array_builder.MapArrayBuilder]
class MapArrayBuilderGidBuilderImpl(T) : gid_apache.arrow23.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.map_array_builder.MapArrayBuilder]
final class MapArrayBuilderGidBuilder : MapArrayBuilderGidBuilderImpl!MapArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MapArrayBuilder build() nothrow
  {
    return new MapArrayBuilder(cast(void*)createGObject(MapArrayBuilder._getGType), Yes.Take);
  }
}
