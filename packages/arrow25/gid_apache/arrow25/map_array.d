/// Module for [MapArray] class
module gid_apache.arrow25.map_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.array;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.list_array;
import gid_apache.arrow25.types;

/** */
class MapArray : gid_apache.arrow25.list_array.ListArray
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
    return cast(void function())garrow_map_array_get_type != &gidSymbolNotFound ? garrow_map_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMapArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override MapArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.map_array.MapArray]
      Returns: New builder object
  */
  static MapArrayGidBuilder builder() nothrow
  {
    return new MapArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow25.array.Array items() nothrow
  {
    return getItems();
  }

  /** */
  @property gid_apache.arrow25.array.Array keys() nothrow
  {
    return getKeys();
  }

  /** */
  @property gid_apache.arrow25.array.Array offsets() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow25.array.Array)("offsets");
  }

  /** */
  this(gid_apache.arrow25.array.Array offsets, gid_apache.arrow25.array.Array keys, gid_apache.arrow25.array.Array items)
  {
    GArrowMapArray* _cretval;
    GError *_err;
    _cretval = garrow_map_array_new(offsets ? cast(GArrowArray*)offsets._cPtr(No.Dup) : null, keys ? cast(GArrowArray*)keys._cPtr(No.Dup) : null, items ? cast(GArrowArray*)items._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow25.array.Array getItems() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_map_array_get_items(cast(GArrowMapArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow25.array.Array getKeys() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_map_array_get_keys(cast(GArrowMapArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.map_array.MapArray]
class MapArrayGidBuilderImpl(T) : gid_apache.arrow25.list_array.ListArrayGidBuilderImpl!T
{

  /** */
  T items(gid_apache.arrow25.array.Array propval) nothrow
  {
    return setProperty("items", propval);
  }

  /** */
  T keys(gid_apache.arrow25.array.Array propval) nothrow
  {
    return setProperty("keys", propval);
  }

  /** */
  T offsets(gid_apache.arrow25.array.Array propval) nothrow
  {
    return setProperty("offsets", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.map_array.MapArray]
final class MapArrayGidBuilder : MapArrayGidBuilderImpl!MapArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MapArray build() nothrow
  {
    return new MapArray(cast(void*)createGObject(MapArray._getGType), Yes.Take);
  }
}
