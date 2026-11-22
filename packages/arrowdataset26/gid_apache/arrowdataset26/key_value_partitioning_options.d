/// Module for [KeyValuePartitioningOptions] class
module gid_apache.arrowdataset26.key_value_partitioning_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowdataset26.c.functions;
import gid_apache.arrowdataset26.c.types;
import gid_apache.arrowdataset26.types;

/** */
class KeyValuePartitioningOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_key_value_partitioning_options_get_type != &gidSymbolNotFound ? gadataset_key_value_partitioning_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetKeyValuePartitioningOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override KeyValuePartitioningOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset26.key_value_partitioning_options.KeyValuePartitioningOptions]
      Returns: New builder object
  */
  static KeyValuePartitioningOptionsGidBuilder builder() nothrow
  {
    return new KeyValuePartitioningOptionsGidBuilder;
  }

  /**
      Get `segmentEncoding` property.
      Returns: After splitting a path into components, decode the path
        components before parsing according to this scheme.
  */
  @property gid_apache.arrowdataset26.types.SegmentEncoding segmentEncoding() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset26.types.SegmentEncoding)("segment-encoding");
  }

  /**
      Set `segmentEncoding` property.
      Params:
        propval = After splitting a path into components, decode the path
          components before parsing according to this scheme.
  */
  @property void segmentEncoding(gid_apache.arrowdataset26.types.SegmentEncoding propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrowdataset26.types.SegmentEncoding)("segment-encoding", propval);
  }

  /** */
  this() nothrow
  {
    GADatasetKeyValuePartitioningOptions* _cretval;
    _cretval = gadataset_key_value_partitioning_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset26.key_value_partitioning_options.KeyValuePartitioningOptions]
class KeyValuePartitioningOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `segmentEncoding` property.
      Params:
        propval = After splitting a path into components, decode the path
          components before parsing according to this scheme.
      Returns: Builder instance for fluent chaining
  */
  T segmentEncoding(gid_apache.arrowdataset26.types.SegmentEncoding propval) nothrow
  {
    return setProperty("segment-encoding", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset26.key_value_partitioning_options.KeyValuePartitioningOptions]
final class KeyValuePartitioningOptionsGidBuilder : KeyValuePartitioningOptionsGidBuilderImpl!KeyValuePartitioningOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  KeyValuePartitioningOptions build() nothrow
  {
    return new KeyValuePartitioningOptions(cast(void*)createGObject(KeyValuePartitioningOptions._getGType), Yes.Take);
  }
}
