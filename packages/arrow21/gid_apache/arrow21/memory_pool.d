/// Module for [MemoryPool] class
module gid_apache.arrow21.memory_pool;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.types;

/** */
class MemoryPool : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_memory_pool_get_type != &gidSymbolNotFound ? garrow_memory_pool_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMemoryPool";
  }

  /** Returns `this`, for use in `with` statements. */
  override MemoryPool self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.memory_pool.MemoryPool]
      Returns: New builder object
  */
  static MemoryPoolGidBuilder builder() nothrow
  {
    return new MemoryPoolGidBuilder;
  }

  /** */
  static gid_apache.arrow21.memory_pool.MemoryPool default_() nothrow
  {
    GArrowMemoryPool* _cretval;
    _cretval = garrow_memory_pool_default();
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.memory_pool.MemoryPool)(cast(GArrowMemoryPool*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string getBackendName() nothrow
  {
    char* _cretval;
    _cretval = garrow_memory_pool_get_backend_name(cast(GArrowMemoryPool*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  long getBytesAllocated() nothrow
  {
    long _retval;
    _retval = garrow_memory_pool_get_bytes_allocated(cast(GArrowMemoryPool*)this._cPtr);
    return _retval;
  }

  /**
      Return peak memory allocation in this memory pool.
      Returns: Maximum bytes allocated. If not known (or not implemented),
          returns -1.
  */
  long getMaxMemory() nothrow
  {
    long _retval;
    _retval = garrow_memory_pool_get_max_memory(cast(GArrowMemoryPool*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.memory_pool.MemoryPool]
class MemoryPoolGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T memoryPool(void* propval) nothrow
  {
    return setProperty("memory-pool", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.memory_pool.MemoryPool]
final class MemoryPoolGidBuilder : MemoryPoolGidBuilderImpl!MemoryPoolGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MemoryPool build() nothrow
  {
    return new MemoryPool(cast(void*)createGObject(MemoryPool._getGType), Yes.Take);
  }
}
