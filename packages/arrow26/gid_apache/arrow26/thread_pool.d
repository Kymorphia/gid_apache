/// Module for [ThreadPool] class
module gid_apache.arrow26.thread_pool;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.executor;
import gid_apache.arrow26.types;

/** */
class ThreadPool : gid_apache.arrow26.executor.Executor
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
    return cast(void function())garrow_thread_pool_get_type != &gidSymbolNotFound ? garrow_thread_pool_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowThreadPool";
  }

  /** Returns `this`, for use in `with` statements. */
  override ThreadPool self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.thread_pool.ThreadPool]
      Returns: New builder object
  */
  static ThreadPoolGidBuilder builder() nothrow
  {
    return new ThreadPoolGidBuilder;
  }

  /** */
  this(uint nThreads)
  {
    GArrowThreadPool* _cretval;
    GError *_err;
    _cretval = garrow_thread_pool_new(nThreads, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.thread_pool.ThreadPool]
class ThreadPoolGidBuilderImpl(T) : gid_apache.arrow26.executor.ExecutorGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.thread_pool.ThreadPool]
final class ThreadPoolGidBuilder : ThreadPoolGidBuilderImpl!ThreadPoolGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ThreadPool build() nothrow
  {
    return new ThreadPool(cast(void*)createGObject(ThreadPool._getGType), Yes.Take);
  }
}
