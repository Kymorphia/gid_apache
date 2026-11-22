/// Module for [ProjectNodeOptions] class
module gid_apache.arrow20.project_node_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.execute_node_options;
import gid_apache.arrow20.expression;
import gid_apache.arrow20.types;

/** */
class ProjectNodeOptions : gid_apache.arrow20.execute_node_options.ExecuteNodeOptions
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
    return cast(void function())garrow_project_node_options_get_type != &gidSymbolNotFound ? garrow_project_node_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowProjectNodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ProjectNodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.project_node_options.ProjectNodeOptions]
      Returns: New builder object
  */
  static ProjectNodeOptionsGidBuilder builder() nothrow
  {
    return new ProjectNodeOptionsGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.expression.Expression[] expressions, string[] names = null) nothrow
  {
    GArrowProjectNodeOptions* _cretval;
    auto _expressions = gListFromD!(gid_apache.arrow20.expression.Expression)(expressions);
    scope(exit) containerFree!(GList*, gid_apache.arrow20.expression.Expression, GidOwnership.None)(_expressions);
    size_t _nNames;
    if (names)
      _nNames = cast(size_t)names.length;

    auto _names_arr = new char*[](names.length);
    auto _names = cast(char**)_names_arr.ptr;
    foreach (i, s; names) _names[i] = s.toCString!(No.Malloc);
    _cretval = garrow_project_node_options_new(_expressions, _names, _nNames);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.project_node_options.ProjectNodeOptions]
class ProjectNodeOptionsGidBuilderImpl(T) : gid_apache.arrow20.execute_node_options.ExecuteNodeOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.project_node_options.ProjectNodeOptions]
final class ProjectNodeOptionsGidBuilder : ProjectNodeOptionsGidBuilderImpl!ProjectNodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ProjectNodeOptions build() nothrow
  {
    return new ProjectNodeOptions(cast(void*)createGObject(ProjectNodeOptions._getGType), Yes.Take);
  }
}
