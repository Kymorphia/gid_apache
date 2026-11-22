/// Module for [AggregateNodeOptions] class
module gid_apache.arrow21.aggregate_node_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.aggregation;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.execute_node_options;
import gid_apache.arrow21.types;

/** */
class AggregateNodeOptions : gid_apache.arrow21.execute_node_options.ExecuteNodeOptions
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
      Get builder for [gid_apache.arrow21.aggregate_node_options.AggregateNodeOptions]
      Returns: New builder object
  */
  static AggregateNodeOptionsGidBuilder builder() nothrow
  {
    return new AggregateNodeOptionsGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.aggregation.Aggregation[] aggregations, string[] keys = null)
  {
    GArrowAggregateNodeOptions* _cretval;
    auto _aggregations = gListFromD!(gid_apache.arrow21.aggregation.Aggregation)(aggregations);
    scope(exit) containerFree!(GList*, gid_apache.arrow21.aggregation.Aggregation, GidOwnership.None)(_aggregations);
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
}

/// Fluent builder implementation template for [gid_apache.arrow21.aggregate_node_options.AggregateNodeOptions]
class AggregateNodeOptionsGidBuilderImpl(T) : gid_apache.arrow21.execute_node_options.ExecuteNodeOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.aggregate_node_options.AggregateNodeOptions]
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
