/// Module for [ExecuteContext] class
module gid_apache.arrow24.execute_context;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.executor;
import gid_apache.arrow24.types;

/** */
class ExecuteContext : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_execute_context_get_type != &gidSymbolNotFound ? garrow_execute_context_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExecuteContext";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExecuteContext self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.execute_context.ExecuteContext]
      Returns: New builder object
  */
  static ExecuteContextGidBuilder builder() nothrow
  {
    return new ExecuteContextGidBuilder;
  }

  /**
      Get `executor` property.
      Returns: The executor for execution.
  */
  @property gid_apache.arrow24.executor.Executor executor() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.executor.Executor)("executor");
  }

  /** */
  this(gid_apache.arrow24.executor.Executor executor = null) nothrow
  {
    GArrowExecuteContext* _cretval;
    _cretval = garrow_execute_context_new(executor ? cast(GArrowExecutor*)executor._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.execute_context.ExecuteContext]
class ExecuteContextGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `executor` property.
      Params:
        propval = The executor for execution.
      Returns: Builder instance for fluent chaining
  */
  T executor(gid_apache.arrow24.executor.Executor propval) nothrow
  {
    return setProperty("executor", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.execute_context.ExecuteContext]
final class ExecuteContextGidBuilder : ExecuteContextGidBuilderImpl!ExecuteContextGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExecuteContext build() nothrow
  {
    return new ExecuteContext(cast(void*)createGObject(ExecuteContext._getGType), Yes.Take);
  }
}
