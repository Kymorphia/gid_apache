/// Module for [HivePartitioningOptions] class
module gid_apache.arrowdataset25.hive_partitioning_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowdataset25.c.functions;
import gid_apache.arrowdataset25.c.types;
import gid_apache.arrowdataset25.key_value_partitioning_options;
import gid_apache.arrowdataset25.types;

/** */
class HivePartitioningOptions : gid_apache.arrowdataset25.key_value_partitioning_options.KeyValuePartitioningOptions
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
    return cast(void function())gadataset_hive_partitioning_options_get_type != &gidSymbolNotFound ? gadataset_hive_partitioning_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetHivePartitioningOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override HivePartitioningOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset25.hive_partitioning_options.HivePartitioningOptions]
      Returns: New builder object
  */
  static HivePartitioningOptionsGidBuilder builder() nothrow
  {
    return new HivePartitioningOptionsGidBuilder;
  }

  /**
      Get `nullFallback` property.
      Returns: The fallback string for null. This is used only by
        #GADatasetHivePartitioning.
  */
  @property string nullFallback() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("null-fallback");
  }

  /**
      Set `nullFallback` property.
      Params:
        propval = The fallback string for null. This is used only by
          #GADatasetHivePartitioning.
  */
  @property void nullFallback(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("null-fallback", propval);
  }

  /** */
  this() nothrow
  {
    GADatasetHivePartitioningOptions* _cretval;
    _cretval = gadataset_hive_partitioning_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset25.hive_partitioning_options.HivePartitioningOptions]
class HivePartitioningOptionsGidBuilderImpl(T) : gid_apache.arrowdataset25.key_value_partitioning_options.KeyValuePartitioningOptionsGidBuilderImpl!T
{

  /**
      Set `nullFallback` property.
      Params:
        propval = The fallback string for null. This is used only by
          #GADatasetHivePartitioning.
      Returns: Builder instance for fluent chaining
  */
  T nullFallback(string propval) nothrow
  {
    return setProperty("null-fallback", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset25.hive_partitioning_options.HivePartitioningOptions]
final class HivePartitioningOptionsGidBuilder : HivePartitioningOptionsGidBuilderImpl!HivePartitioningOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  HivePartitioningOptions build() nothrow
  {
    return new HivePartitioningOptions(cast(void*)createGObject(HivePartitioningOptions._getGType), Yes.Take);
  }
}
