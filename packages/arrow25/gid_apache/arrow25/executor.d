/// Module for [Executor] class
module gid_apache.arrow25.executor;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.types;

/** */
class Executor : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_executor_get_type != &gidSymbolNotFound ? garrow_executor_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExecutor";
  }

  /** Returns `this`, for use in `with` statements. */
  override Executor self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.executor.Executor]
      Returns: New builder object
  */
  static ExecutorGidBuilder builder() nothrow
  {
    return new ExecutorGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.executor.Executor]
class ExecutorGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T executor(void* propval) nothrow
  {
    return setProperty("executor", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.executor.Executor]
final class ExecutorGidBuilder : ExecutorGidBuilderImpl!ExecutorGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Executor build() nothrow
  {
    return new Executor(cast(void*)createGObject(Executor._getGType), Yes.Take);
  }
}
