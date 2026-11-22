/// Module for [PartitioningFactoryOptions] class
module gid_apache.arrowdataset25.partitioning_factory_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.schema;
import gid_apache.arrowdataset25.c.functions;
import gid_apache.arrowdataset25.c.types;
import gid_apache.arrowdataset25.types;

/** */
class PartitioningFactoryOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_partitioning_factory_options_get_type != &gidSymbolNotFound ? gadataset_partitioning_factory_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetPartitioningFactoryOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override PartitioningFactoryOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset25.partitioning_factory_options.PartitioningFactoryOptions]
      Returns: New builder object
  */
  static PartitioningFactoryOptionsGidBuilder builder() nothrow
  {
    return new PartitioningFactoryOptionsGidBuilder;
  }

  /**
      Get `inferDictionary` property.
      Returns: When inferring a schema for partition fields, yield dictionary
        encoded types instead of plain. This can be more efficient when
        materializing virtual columns, and Expressions parsed by the
        finished Partitioning will include dictionaries of all unique
        inspected values for each field.
  */
  @property bool inferDictionary() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("infer-dictionary");
  }

  /**
      Set `inferDictionary` property.
      Params:
        propval = When inferring a schema for partition fields, yield dictionary
          encoded types instead of plain. This can be more efficient when
          materializing virtual columns, and Expressions parsed by the
          finished Partitioning will include dictionaries of all unique
          inspected values for each field.
  */
  @property void inferDictionary(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("infer-dictionary", propval);
  }

  /**
      Get `schema` property.
      Returns: Optionally, an expected schema can be provided, in which case
        inference will only check discovered fields against the schema
        and update internal state (such as dictionaries).
  */
  @property gid_apache.arrow25.schema.Schema schema() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow25.schema.Schema)("schema");
  }

  /**
      Set `schema` property.
      Params:
        propval = Optionally, an expected schema can be provided, in which case
          inference will only check discovered fields against the schema
          and update internal state (such as dictionaries).
  */
  @property void schema(gid_apache.arrow25.schema.Schema propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow25.schema.Schema)("schema", propval);
  }

  /**
      Get `segmentEncoding` property.
      Returns: After splitting a path into components, decode the path
        components before parsing according to this scheme.
  */
  @property gid_apache.arrowdataset25.types.SegmentEncoding segmentEncoding() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowdataset25.types.SegmentEncoding)("segment-encoding");
  }

  /**
      Set `segmentEncoding` property.
      Params:
        propval = After splitting a path into components, decode the path
          components before parsing according to this scheme.
  */
  @property void segmentEncoding(gid_apache.arrowdataset25.types.SegmentEncoding propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrowdataset25.types.SegmentEncoding)("segment-encoding", propval);
  }

  /** */
  this() nothrow
  {
    GADatasetPartitioningFactoryOptions* _cretval;
    _cretval = gadataset_partitioning_factory_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset25.partitioning_factory_options.PartitioningFactoryOptions]
class PartitioningFactoryOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `inferDictionary` property.
      Params:
        propval = When inferring a schema for partition fields, yield dictionary
          encoded types instead of plain. This can be more efficient when
          materializing virtual columns, and Expressions parsed by the
          finished Partitioning will include dictionaries of all unique
          inspected values for each field.
      Returns: Builder instance for fluent chaining
  */
  T inferDictionary(bool propval) nothrow
  {
    return setProperty("infer-dictionary", propval);
  }

  /**
      Set `schema` property.
      Params:
        propval = Optionally, an expected schema can be provided, in which case
          inference will only check discovered fields against the schema
          and update internal state (such as dictionaries).
      Returns: Builder instance for fluent chaining
  */
  T schema(gid_apache.arrow25.schema.Schema propval) nothrow
  {
    return setProperty("schema", propval);
  }

  /**
      Set `segmentEncoding` property.
      Params:
        propval = After splitting a path into components, decode the path
          components before parsing according to this scheme.
      Returns: Builder instance for fluent chaining
  */
  T segmentEncoding(gid_apache.arrowdataset25.types.SegmentEncoding propval) nothrow
  {
    return setProperty("segment-encoding", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset25.partitioning_factory_options.PartitioningFactoryOptions]
final class PartitioningFactoryOptionsGidBuilder : PartitioningFactoryOptionsGidBuilderImpl!PartitioningFactoryOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  PartitioningFactoryOptions build() nothrow
  {
    return new PartitioningFactoryOptions(cast(void*)createGObject(PartitioningFactoryOptions._getGType), Yes.Take);
  }
}
