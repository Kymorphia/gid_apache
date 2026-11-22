/// Module for [SlowFileSystem] class
module gid_apache.arrow23.slow_file_system;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.file_system;
import gid_apache.arrow23.types;

/** */
class SlowFileSystem : gid_apache.arrow23.file_system.FileSystem
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
    return cast(void function())garrow_slow_file_system_get_type != &gidSymbolNotFound ? garrow_slow_file_system_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSlowFileSystem";
  }

  /** Returns `this`, for use in `with` statements. */
  override SlowFileSystem self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.slow_file_system.SlowFileSystem]
      Returns: New builder object
  */
  static SlowFileSystemGidBuilder builder() nothrow
  {
    return new SlowFileSystemGidBuilder;
  }

  /** */
  @property gid_apache.arrow23.file_system.FileSystem baseFileSystem() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.file_system.FileSystem)("base-file-system");
  }

  /**
      The latency is normally distributed with a standard deviation of
      average_latency * 0.1.
      
      The random seed is given by the default random device.
  
      Params:
        baseFileSystem = A #GArrowFileSystem as the base file system.
        averageLatency = The average value of the latency.
      Returns: A newly created #GArrowSlowFileSystem.
  */
  static gid_apache.arrow23.slow_file_system.SlowFileSystem newAverageLatency(gid_apache.arrow23.file_system.FileSystem baseFileSystem, double averageLatency) nothrow
  {
    GArrowSlowFileSystem* _cretval;
    _cretval = garrow_slow_file_system_new_average_latency(baseFileSystem ? cast(GArrowFileSystem*)baseFileSystem._cPtr(No.Dup) : null, averageLatency);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.slow_file_system.SlowFileSystem)(cast(GArrowSlowFileSystem*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      The latency is normally distributed with a standard deviation of
      average_latency * 0.1.
  
      Params:
        baseFileSystem = A #GArrowFileSystem as the base file system.
        averageLatency = The average value of the latency.
        seed = A random seed.
      Returns: A newly created #GArrowSlowFileSystem.
  */
  static gid_apache.arrow23.slow_file_system.SlowFileSystem newAverageLatencyAndSeed(gid_apache.arrow23.file_system.FileSystem baseFileSystem, double averageLatency, int seed) nothrow
  {
    GArrowSlowFileSystem* _cretval;
    _cretval = garrow_slow_file_system_new_average_latency_and_seed(baseFileSystem ? cast(GArrowFileSystem*)baseFileSystem._cPtr(No.Dup) : null, averageLatency, seed);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.slow_file_system.SlowFileSystem)(cast(GArrowSlowFileSystem*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.slow_file_system.SlowFileSystem]
class SlowFileSystemGidBuilderImpl(T) : gid_apache.arrow23.file_system.FileSystemGidBuilderImpl!T
{

  /** */
  T baseFileSystem(gid_apache.arrow23.file_system.FileSystem propval) nothrow
  {
    return setProperty("base-file-system", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.slow_file_system.SlowFileSystem]
final class SlowFileSystemGidBuilder : SlowFileSystemGidBuilderImpl!SlowFileSystemGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SlowFileSystem build() nothrow
  {
    return new SlowFileSystem(cast(void*)createGObject(SlowFileSystem._getGType), Yes.Take);
  }
}
