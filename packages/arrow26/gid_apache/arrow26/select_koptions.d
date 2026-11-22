/// Module for [SelectKOptions] class
module gid_apache.arrow26.select_koptions;

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
class SelectKOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_select_k_options_get_type != &gidSymbolNotFound ? garrow_select_k_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSelectKOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override SelectKOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.select_koptions.SelectKOptions]
      Returns: New builder object
  */
  static SelectKOptionsGidBuilder builder() nothrow
  {
    return new SelectKOptionsGidBuilder;
  }

  /**
      Get `k` property.
      Returns: The number of k elements to keep.
  */
  @property long k() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("k");
  }

  /**
      Set `k` property.
      Params:
        propval = The number of k elements to keep.
  */
  @property void k(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("k", propval);
  }

  /** */
  this() nothrow
  {
    GArrowSelectKOptions* _cretval;
    _cretval = garrow_select_k_options_new();
    this(_cretval, Yes.Take);
  }

  /**
      Add a sort key to be used.
  
      Params:
        sortKey = The sort key to be added.
  */
  void addSortKey(gid_apache.arrow26.sort_key.SortKey sortKey) nothrow
  {
    garrow_select_k_options_add_sort_key(cast(GArrowSelectKOptions*)this._cPtr, sortKey ? cast(GArrowSortKey*)sortKey._cPtr(No.Dup) : null);
  }

  /** */
  gid_apache.arrow26.sort_key.SortKey[] getSortKeys() nothrow
  {
    GList* _cretval;
    _cretval = garrow_select_k_options_get_sort_keys(cast(GArrowSelectKOptions*)this._cPtr);
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
    garrow_select_k_options_set_sort_keys(cast(GArrowSelectKOptions*)this._cPtr, _sortKeys);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.select_koptions.SelectKOptions]
class SelectKOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `k` property.
      Params:
        propval = The number of k elements to keep.
      Returns: Builder instance for fluent chaining
  */
  T k(long propval) nothrow
  {
    return setProperty("k", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.select_koptions.SelectKOptions]
final class SelectKOptionsGidBuilder : SelectKOptionsGidBuilderImpl!SelectKOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SelectKOptions build() nothrow
  {
    return new SelectKOptions(cast(void*)createGObject(SelectKOptions._getGType), Yes.Take);
  }
}
