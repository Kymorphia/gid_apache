/// Module for [ExecuteNodeOptions] class
module gid_apache.arrow22.execute_node_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.types;

/** */
class ExecuteNodeOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_execute_node_options_get_type != &gidSymbolNotFound ? garrow_execute_node_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExecuteNodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExecuteNodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.execute_node_options.ExecuteNodeOptions]
      Returns: New builder object
  */
  static ExecuteNodeOptionsGidBuilder builder() nothrow
  {
    return new ExecuteNodeOptionsGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.execute_node_options.ExecuteNodeOptions]
class ExecuteNodeOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T options(void* propval) nothrow
  {
    return setProperty("options", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.execute_node_options.ExecuteNodeOptions]
final class ExecuteNodeOptionsGidBuilder : ExecuteNodeOptionsGidBuilderImpl!ExecuteNodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExecuteNodeOptions build() nothrow
  {
    return new ExecuteNodeOptions(cast(void*)createGObject(ExecuteNodeOptions._getGType), Yes.Take);
  }
}
