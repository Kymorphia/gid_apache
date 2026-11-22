/// Module for [KeyValuePartitioning] class
module gid_apache.arrowdataset23.key_value_partitioning;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowdataset23.c.functions;
import gid_apache.arrowdataset23.c.types;
import gid_apache.arrowdataset23.partitioning;
import gid_apache.arrowdataset23.types;

/** */
class KeyValuePartitioning : gid_apache.arrowdataset23.partitioning.Partitioning
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
    return cast(void function())gadataset_key_value_partitioning_get_type != &gidSymbolNotFound ? gadataset_key_value_partitioning_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetKeyValuePartitioning";
  }

  /** Returns `this`, for use in `with` statements. */
  override KeyValuePartitioning self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset23.key_value_partitioning.KeyValuePartitioning]
      Returns: New builder object
  */
  static KeyValuePartitioningGidBuilder builder() nothrow
  {
    return new KeyValuePartitioningGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset23.key_value_partitioning.KeyValuePartitioning]
class KeyValuePartitioningGidBuilderImpl(T) : gid_apache.arrowdataset23.partitioning.PartitioningGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowdataset23.key_value_partitioning.KeyValuePartitioning]
final class KeyValuePartitioningGidBuilder : KeyValuePartitioningGidBuilderImpl!KeyValuePartitioningGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  KeyValuePartitioning build() nothrow
  {
    return new KeyValuePartitioning(cast(void*)createGObject(KeyValuePartitioning._getGType), Yes.Take);
  }
}
