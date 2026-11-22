/// Module for [RankQuantileOptions] class
module gid_apache.arrow26.rank_quantile_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.sort_key;
import gid_apache.arrow26.types;

/** */
class RankQuantileOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_rank_quantile_options_get_type != &gidSymbolNotFound ? garrow_rank_quantile_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRankQuantileOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override RankQuantileOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.rank_quantile_options.RankQuantileOptions]
      Returns: New builder object
  */
  static RankQuantileOptionsGidBuilder builder() nothrow
  {
    return new RankQuantileOptionsGidBuilder;
  }

  /**
      Get `nullPlacement` property.
      Returns: Whether nulls and NaNs are placed at the start or at the end.
  */
  @property gid_apache.arrow26.types.OptionalNullPlacement nullPlacement() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.types.OptionalNullPlacement)("null-placement");
  }

  /**
      Set `nullPlacement` property.
      Params:
        propval = Whether nulls and NaNs are placed at the start or at the end.
  */
  @property void nullPlacement(gid_apache.arrow26.types.OptionalNullPlacement propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.types.OptionalNullPlacement)("null-placement", propval);
  }

  /** */
  this() nothrow
  {
    GArrowRankQuantileOptions* _cretval;
    _cretval = garrow_rank_quantile_options_new();
    this(_cretval, Yes.Take);
  }

  /**
      Add a sort key to be used.
  
      Params:
        sortKey = The sort key to be added.
  */
  void addSortKey(gid_apache.arrow26.sort_key.SortKey sortKey) nothrow
  {
    garrow_rank_quantile_options_add_sort_key(cast(GArrowRankQuantileOptions*)this._cPtr, sortKey ? cast(GArrowSortKey*)sortKey._cPtr(No.Dup) : null);
  }

  /** */
  gid_apache.arrow26.sort_key.SortKey[] getSortKeys() nothrow
  {
    GList* _cretval;
    _cretval = garrow_rank_quantile_options_get_sort_keys(cast(GArrowRankQuantileOptions*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow26.sort_key.SortKey, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /**
      Set sort keys to be used.
  
      Params:
        sortKeys = The sort keys to be used.
  */
  void setSortKeys(gid_apache.arrow26.sort_key.SortKey[] sortKeys) nothrow
  {
    auto _sortKeys = gListFromD!(gid_apache.arrow26.sort_key.SortKey)(sortKeys);
    scope(exit) containerFree!(GList*, gid_apache.arrow26.sort_key.SortKey, GidOwnership.None)(_sortKeys);
    garrow_rank_quantile_options_set_sort_keys(cast(GArrowRankQuantileOptions*)this._cPtr, _sortKeys);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.rank_quantile_options.RankQuantileOptions]
class RankQuantileOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `nullPlacement` property.
      Params:
        propval = Whether nulls and NaNs are placed at the start or at the end.
      Returns: Builder instance for fluent chaining
  */
  T nullPlacement(gid_apache.arrow26.types.OptionalNullPlacement propval) nothrow
  {
    return setProperty("null-placement", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.rank_quantile_options.RankQuantileOptions]
final class RankQuantileOptionsGidBuilder : RankQuantileOptionsGidBuilderImpl!RankQuantileOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RankQuantileOptions build() nothrow
  {
    return new RankQuantileOptions(cast(void*)createGObject(RankQuantileOptions._getGType), Yes.Take);
  }
}
