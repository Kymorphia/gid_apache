/// Module for [ExecuteNode] class
module gid_apache.arrow19.execute_node;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.execute_node_options;
import gid_apache.arrow19.schema;
import gid_apache.arrow19.types;

/** */
class ExecuteNode : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_execute_node_get_type != &gidSymbolNotFound ? garrow_execute_node_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExecuteNode";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExecuteNode self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.execute_node.ExecuteNode]
      Returns: New builder object
  */
  static ExecuteNodeGidBuilder builder() nothrow
  {
    return new ExecuteNodeGidBuilder;
  }

  /** */
  @property gid_apache.arrow19.execute_node_options.ExecuteNodeOptions options() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow19.execute_node_options.ExecuteNodeOptions)("options");
  }

  /** */
  string getKindName() nothrow
  {
    const(char)* _cretval;
    _cretval = garrow_execute_node_get_kind_name(cast(GArrowExecuteNode*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }

  /** */
  gid_apache.arrow19.schema.Schema getOutputSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = garrow_execute_node_get_output_schema(cast(GArrowExecuteNode*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.execute_node.ExecuteNode]
class ExecuteNodeGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T node(void* propval) nothrow
  {
    return setProperty("node", propval);
  }

  /** */
  T options(gid_apache.arrow19.execute_node_options.ExecuteNodeOptions propval) nothrow
  {
    return setProperty("options", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.execute_node.ExecuteNode]
final class ExecuteNodeGidBuilder : ExecuteNodeGidBuilderImpl!ExecuteNodeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExecuteNode build() nothrow
  {
    return new ExecuteNode(cast(void*)createGObject(ExecuteNode._getGType), Yes.Take);
  }
}
