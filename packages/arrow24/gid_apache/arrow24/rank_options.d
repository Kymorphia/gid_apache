/// Module for [RankOptions] class
module gid_apache.arrow24.rank_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.sort_key;
import gid_apache.arrow24.types;

/** */
class RankOptions : gid_apache.arrow24.function_options.FunctionOptions
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
    return cast(void function())garrow_rank_options_get_type != &gidSymbolNotFound ? garrow_rank_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRankOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override RankOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.rank_options.RankOptions]
      Returns: New builder object
  */
  static RankOptionsGidBuilder builder() nothrow
  {
    return new RankOptionsGidBuilder;
  }

  /**
      Get `nullPlacement` property.
      Returns: Whether nulls and NaNs are placed at the start or at the end.
  */
  @property gid_apache.arrow24.types.NullPlacement nullPlacement() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.types.NullPlacement)("null-placement");
  }

  /**
      Set `nullPlacement` property.
      Params:
        propval = Whether nulls and NaNs are placed at the start or at the end.
  */
  @property void nullPlacement(gid_apache.arrow24.types.NullPlacement propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.types.NullPlacement)("null-placement", propval);
  }

  /**
      Get `tiebreaker` property.
      Returns: Tiebreaker for dealing with equal values in ranks.
  */
  @property gid_apache.arrow24.types.RankTiebreaker tiebreaker() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.types.RankTiebreaker)("tiebreaker");
  }

  /**
      Set `tiebreaker` property.
      Params:
        propval = Tiebreaker for dealing with equal values in ranks.
  */
  @property void tiebreaker(gid_apache.arrow24.types.RankTiebreaker propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.types.RankTiebreaker)("tiebreaker", propval);
  }

  /** */
  this() nothrow
  {
    GArrowRankOptions* _cretval;
    _cretval = garrow_rank_options_new();
    this(_cretval, Yes.Take);
  }

  /**
      Add a sort key to be used.
  
      Params:
        sortKey = The sort key to be added.
  */
  void addSortKey(gid_apache.arrow24.sort_key.SortKey sortKey) nothrow
  {
    garrow_rank_options_add_sort_key(cast(GArrowRankOptions*)this._cPtr, sortKey ? cast(GArrowSortKey*)sortKey._cPtr(No.Dup) : null);
  }

  alias equal = gid_apache.arrow24.function_options.FunctionOptions.equal;

  /** */
  bool equal(gid_apache.arrow24.rank_options.RankOptions otherOptions) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_rank_options_equal(cast(GArrowRankOptions*)this._cPtr, otherOptions ? cast(GArrowRankOptions*)otherOptions._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow24.sort_key.SortKey[] getSortKeys() nothrow
  {
    GList* _cretval;
    _cretval = garrow_rank_options_get_sort_keys(cast(GArrowRankOptions*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow24.sort_key.SortKey, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /**
      Set sort keys to be used.
  
      Params:
        sortKeys = The sort keys to be used.
  */
  void setSortKeys(gid_apache.arrow24.sort_key.SortKey[] sortKeys) nothrow
  {
    auto _sortKeys = gListFromD!(gid_apache.arrow24.sort_key.SortKey)(sortKeys);
    scope(exit) containerFree!(GList*, gid_apache.arrow24.sort_key.SortKey, GidOwnership.None)(_sortKeys);
    garrow_rank_options_set_sort_keys(cast(GArrowRankOptions*)this._cPtr, _sortKeys);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.rank_options.RankOptions]
class RankOptionsGidBuilderImpl(T) : gid_apache.arrow24.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `nullPlacement` property.
      Params:
        propval = Whether nulls and NaNs are placed at the start or at the end.
      Returns: Builder instance for fluent chaining
  */
  T nullPlacement(gid_apache.arrow24.types.NullPlacement propval) nothrow
  {
    return setProperty("null-placement", propval);
  }

  /**
      Set `tiebreaker` property.
      Params:
        propval = Tiebreaker for dealing with equal values in ranks.
      Returns: Builder instance for fluent chaining
  */
  T tiebreaker(gid_apache.arrow24.types.RankTiebreaker propval) nothrow
  {
    return setProperty("tiebreaker", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.rank_options.RankOptions]
final class RankOptionsGidBuilder : RankOptionsGidBuilderImpl!RankOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RankOptions build() nothrow
  {
    return new RankOptions(cast(void*)createGObject(RankOptions._getGType), Yes.Take);
  }
}
