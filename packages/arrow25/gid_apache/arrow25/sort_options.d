/// Module for [SortOptions] class
module gid_apache.arrow25.sort_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.sort_key;
import gid_apache.arrow25.types;

/** */
class SortOptions : gid_apache.arrow25.function_options.FunctionOptions
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
    return cast(void function())garrow_sort_options_get_type != &gidSymbolNotFound ? garrow_sort_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSortOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override SortOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.sort_options.SortOptions]
      Returns: New builder object
  */
  static SortOptionsGidBuilder builder() nothrow
  {
    return new SortOptionsGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.sort_key.SortKey[] sortKeys = null) nothrow
  {
    GArrowSortOptions* _cretval;
    auto _sortKeys = gListFromD!(gid_apache.arrow25.sort_key.SortKey)(sortKeys);
    scope(exit) containerFree!(GList*, gid_apache.arrow25.sort_key.SortKey, GidOwnership.None)(_sortKeys);
    _cretval = garrow_sort_options_new(_sortKeys);
    this(_cretval, Yes.Take);
  }

  /**
      Add a sort key to be used.
  
      Params:
        sortKey = The sort key to be added.
  */
  void addSortKey(gid_apache.arrow25.sort_key.SortKey sortKey) nothrow
  {
    garrow_sort_options_add_sort_key(cast(GArrowSortOptions*)this._cPtr, sortKey ? cast(GArrowSortKey*)sortKey._cPtr(No.Dup) : null);
  }

  alias equal = gid_apache.arrow25.function_options.FunctionOptions.equal;

  /** */
  bool equal(gid_apache.arrow25.sort_options.SortOptions otherOptions) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_sort_options_equal(cast(GArrowSortOptions*)this._cPtr, otherOptions ? cast(GArrowSortOptions*)otherOptions._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow25.sort_key.SortKey[] getSortKeys() nothrow
  {
    GList* _cretval;
    _cretval = garrow_sort_options_get_sort_keys(cast(GArrowSortOptions*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow25.sort_key.SortKey, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /**
      Set sort keys to be used.
  
      Params:
        sortKeys = The sort keys to be used.
  */
  void setSortKeys(gid_apache.arrow25.sort_key.SortKey[] sortKeys) nothrow
  {
    auto _sortKeys = gListFromD!(gid_apache.arrow25.sort_key.SortKey)(sortKeys);
    scope(exit) containerFree!(GList*, gid_apache.arrow25.sort_key.SortKey, GidOwnership.None)(_sortKeys);
    garrow_sort_options_set_sort_keys(cast(GArrowSortOptions*)this._cPtr, _sortKeys);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.sort_options.SortOptions]
class SortOptionsGidBuilderImpl(T) : gid_apache.arrow25.function_options.FunctionOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.sort_options.SortOptions]
final class SortOptionsGidBuilder : SortOptionsGidBuilderImpl!SortOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SortOptions build() nothrow
  {
    return new SortOptions(cast(void*)createGObject(SortOptions._getGType), Yes.Take);
  }
}
