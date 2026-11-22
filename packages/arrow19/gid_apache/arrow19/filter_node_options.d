/// Module for [FilterNodeOptions] class
module gid_apache.arrow19.filter_node_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.execute_node_options;
import gid_apache.arrow19.expression;
import gid_apache.arrow19.types;

/** */
class FilterNodeOptions : gid_apache.arrow19.execute_node_options.ExecuteNodeOptions
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
    return cast(void function())garrow_filter_node_options_get_type != &gidSymbolNotFound ? garrow_filter_node_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFilterNodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override FilterNodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.filter_node_options.FilterNodeOptions]
      Returns: New builder object
  */
  static FilterNodeOptionsGidBuilder builder() nothrow
  {
    return new FilterNodeOptionsGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.expression.Expression expression) nothrow
  {
    GArrowFilterNodeOptions* _cretval;
    _cretval = garrow_filter_node_options_new(expression ? cast(GArrowExpression*)expression._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.filter_node_options.FilterNodeOptions]
class FilterNodeOptionsGidBuilderImpl(T) : gid_apache.arrow19.execute_node_options.ExecuteNodeOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.filter_node_options.FilterNodeOptions]
final class FilterNodeOptionsGidBuilder : FilterNodeOptionsGidBuilderImpl!FilterNodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FilterNodeOptions build() nothrow
  {
    return new FilterNodeOptions(cast(void*)createGObject(FilterNodeOptions._getGType), Yes.Take);
  }
}
