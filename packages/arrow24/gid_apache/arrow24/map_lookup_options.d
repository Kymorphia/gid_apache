/// Module for [MapLookupOptions] class
module gid_apache.arrow24.map_lookup_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.scalar;
import gid_apache.arrow24.types;

/** */
class MapLookupOptions : gid_apache.arrow24.function_options.FunctionOptions
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
    return cast(void function())garrow_map_lookup_options_get_type != &gidSymbolNotFound ? garrow_map_lookup_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMapLookupOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override MapLookupOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.map_lookup_options.MapLookupOptions]
      Returns: New builder object
  */
  static MapLookupOptionsGidBuilder builder() nothrow
  {
    return new MapLookupOptionsGidBuilder;
  }

  /**
      Get `occurrence` property.
      Returns: Whether to return the first, last, or all matching values.
  */
  @property gid_apache.arrow24.types.MapLookupOccurrence occurrence() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.types.MapLookupOccurrence)("occurrence");
  }

  /**
      Set `occurrence` property.
      Params:
        propval = Whether to return the first, last, or all matching values.
  */
  @property void occurrence(gid_apache.arrow24.types.MapLookupOccurrence propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.types.MapLookupOccurrence)("occurrence", propval);
  }

  /**
      Get `queryKey` property.
      Returns: The key to lookup in the map.
  */
  @property gid_apache.arrow24.scalar.Scalar queryKey() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.scalar.Scalar)("query-key");
  }

  /**
      Set `queryKey` property.
      Params:
        propval = The key to lookup in the map.
  */
  @property void queryKey(gid_apache.arrow24.scalar.Scalar propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.scalar.Scalar)("query-key", propval);
  }

  /** */
  this(gid_apache.arrow24.scalar.Scalar queryKey, gid_apache.arrow24.types.MapLookupOccurrence occurrence) nothrow
  {
    GArrowMapLookupOptions* _cretval;
    _cretval = garrow_map_lookup_options_new(queryKey ? cast(GArrowScalar*)queryKey._cPtr(No.Dup) : null, occurrence);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.map_lookup_options.MapLookupOptions]
class MapLookupOptionsGidBuilderImpl(T) : gid_apache.arrow24.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `occurrence` property.
      Params:
        propval = Whether to return the first, last, or all matching values.
      Returns: Builder instance for fluent chaining
  */
  T occurrence(gid_apache.arrow24.types.MapLookupOccurrence propval) nothrow
  {
    return setProperty("occurrence", propval);
  }

  /**
      Set `queryKey` property.
      Params:
        propval = The key to lookup in the map.
      Returns: Builder instance for fluent chaining
  */
  T queryKey(gid_apache.arrow24.scalar.Scalar propval) nothrow
  {
    return setProperty("query-key", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.map_lookup_options.MapLookupOptions]
final class MapLookupOptionsGidBuilder : MapLookupOptionsGidBuilderImpl!MapLookupOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MapLookupOptions build() nothrow
  {
    return new MapLookupOptions(cast(void*)createGObject(MapLookupOptions._getGType), Yes.Take);
  }
}
