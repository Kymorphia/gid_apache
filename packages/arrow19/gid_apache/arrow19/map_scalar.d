/// Module for [MapScalar] class
module gid_apache.arrow19.map_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.base_list_scalar;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.struct_array;
import gid_apache.arrow19.types;

/** */
class MapScalar : gid_apache.arrow19.base_list_scalar.BaseListScalar
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
    return cast(void function())garrow_map_scalar_get_type != &gidSymbolNotFound ? garrow_map_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMapScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override MapScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.map_scalar.MapScalar]
      Returns: New builder object
  */
  static MapScalarGidBuilder builder() nothrow
  {
    return new MapScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.struct_array.StructArray value) nothrow
  {
    GArrowMapScalar* _cretval;
    _cretval = garrow_map_scalar_new(value ? cast(GArrowStructArray*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.map_scalar.MapScalar]
class MapScalarGidBuilderImpl(T) : gid_apache.arrow19.base_list_scalar.BaseListScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.map_scalar.MapScalar]
final class MapScalarGidBuilder : MapScalarGidBuilderImpl!MapScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MapScalar build() nothrow
  {
    return new MapScalar(cast(void*)createGObject(MapScalar._getGType), Yes.Take);
  }
}
