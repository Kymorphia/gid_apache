/// Module for [AggregateNodeOptions] class
module arrow.aggregate_node_options;

public import gid.basictypes;
import arrow.aggregation;
import arrow.c.functions;
import arrow.c.types;
import arrow.execute_node_options;
import arrow.types;
import gid.gid;
import glib.error;
import gobject.gid_builder;

/** */
class AggregateNodeOptions : arrow.execute_node_options.ExecuteNodeOptions
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.loader : gidSymbolNotFound;
    return cast(void function())garrow_aggregate_node_options_get_type != &gidSymbolNotFound ? garrow_aggregate_node_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowAggregateNodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override AggregateNodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [arrow.aggregate_node_options.AggregateNodeOptions]
      Returns: New builder object
  */
  static AggregateNodeOptionsGidBuilder builder() nothrow
  {
    return new AggregateNodeOptionsGidBuilder;
  }

  /** */
  this(arrow.aggregation.Aggregation[] aggregations, string[] keys = null)
  {
    GArrowAggregateNodeOptions* _cretval;
    auto _aggregations = gListFromD!(arrow.aggregation.Aggregation)(aggregations);
    scope(exit) containerFree!(GList*, arrow.aggregation.Aggregation, GidOwnership.None)(_aggregations);
    size_t _nKeys;
    if (keys)
      _nKeys = cast(size_t)keys.length;

    auto _keys_arr = new char*[](keys.length);
    auto _keys = cast(char**)_keys_arr.ptr;
    foreach (i, s; keys) _keys[i] = s.toCString!(No.Malloc);
    GError *_err;
    _cretval = garrow_aggregate_node_options_new(_aggregations, _keys, _nKeys, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  arrow.aggregation.Aggregation[] getAggregations() nothrow
  {
    GList* _cretval;
    _cretval = garrow_aggregate_node_options_get_aggregations(cast(GArrowAggregateNodeOptions*)this._cPtr);
    auto _retval = gListToD!(arrow.aggregation.Aggregation, GidOwnership.None)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [arrow.aggregate_node_options.AggregateNodeOptions]
class AggregateNodeOptionsGidBuilderImpl(T) : arrow.execute_node_options.ExecuteNodeOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [arrow.aggregate_node_options.AggregateNodeOptions]
final class AggregateNodeOptionsGidBuilder : AggregateNodeOptionsGidBuilderImpl!AggregateNodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  AggregateNodeOptions build() nothrow
  {
    return new AggregateNodeOptions(cast(void*)createGObject(AggregateNodeOptions._getGType), Yes.Take);
  }
}
