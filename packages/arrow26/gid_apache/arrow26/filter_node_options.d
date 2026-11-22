/// Module for [FilterNodeOptions] class
module gid_apache.arrow26.filter_node_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.execute_node_options;
import gid_apache.arrow26.expression;
import gid_apache.arrow26.types;

/** */
class FilterNodeOptions : gid_apache.arrow26.execute_node_options.ExecuteNodeOptions
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
      Get builder for [gid_apache.arrow26.filter_node_options.FilterNodeOptions]
      Returns: New builder object
  */
  static FilterNodeOptionsGidBuilder builder() nothrow
  {
    return new FilterNodeOptionsGidBuilder;
  }

  /**
      Get `expression` property.
      Returns: The expression of this filter.
  */
  @property gid_apache.arrow26.expression.Expression expression() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.expression.Expression)("expression");
  }

  /** */
  this(gid_apache.arrow26.expression.Expression expression) nothrow
  {
    GArrowFilterNodeOptions* _cretval;
    _cretval = garrow_filter_node_options_new(expression ? cast(GArrowExpression*)expression._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.filter_node_options.FilterNodeOptions]
class FilterNodeOptionsGidBuilderImpl(T) : gid_apache.arrow26.execute_node_options.ExecuteNodeOptionsGidBuilderImpl!T
{

  /**
      Set `expression` property.
      Params:
        propval = The expression of this filter.
      Returns: Builder instance for fluent chaining
  */
  T expression(gid_apache.arrow26.expression.Expression propval) nothrow
  {
    return setProperty("expression", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.filter_node_options.FilterNodeOptions]
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
