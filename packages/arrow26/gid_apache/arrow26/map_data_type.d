/// Module for [MapDataType] class
module gid_apache.arrow26.map_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.data_type;
import gid_apache.arrow26.list_data_type;
import gid_apache.arrow26.types;

/** */
class MapDataType : gid_apache.arrow26.list_data_type.ListDataType
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
    return cast(void function())garrow_map_data_type_get_type != &gidSymbolNotFound ? garrow_map_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMapDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override MapDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.map_data_type.MapDataType]
      Returns: New builder object
  */
  static MapDataTypeGidBuilder builder() nothrow
  {
    return new MapDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.data_type.DataType keyType, gid_apache.arrow26.data_type.DataType itemType) nothrow
  {
    GArrowMapDataType* _cretval;
    _cretval = garrow_map_data_type_new(keyType ? cast(GArrowDataType*)keyType._cPtr(No.Dup) : null, itemType ? cast(GArrowDataType*)itemType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow26.data_type.DataType getItemType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_map_data_type_get_item_type(cast(GArrowMapDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.data_type.DataType getKeyType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_map_data_type_get_key_type(cast(GArrowMapDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool isKeysSorted() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_map_data_type_is_keys_sorted(cast(GArrowMapDataType*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.map_data_type.MapDataType]
class MapDataTypeGidBuilderImpl(T) : gid_apache.arrow26.list_data_type.ListDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.map_data_type.MapDataType]
final class MapDataTypeGidBuilder : MapDataTypeGidBuilderImpl!MapDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MapDataType build() nothrow
  {
    return new MapDataType(cast(void*)createGObject(MapDataType._getGType), Yes.Take);
  }
}
