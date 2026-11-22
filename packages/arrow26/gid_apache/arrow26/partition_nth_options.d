/// Module for [PartitionNthOptions] class
module gid_apache.arrow26.partition_nth_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class PartitionNthOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_partition_nth_options_get_type != &gidSymbolNotFound ? garrow_partition_nth_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowPartitionNthOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override PartitionNthOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.partition_nth_options.PartitionNthOptions]
      Returns: New builder object
  */
  static PartitionNthOptionsGidBuilder builder() nothrow
  {
    return new PartitionNthOptionsGidBuilder;
  }

  /**
      Get `nullPlacement` property.
      Returns: Whether nulls and NaNs are partitioned at the start or at the end.
  */
  @property gid_apache.arrow26.types.NullPlacement nullPlacement() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.types.NullPlacement)("null-placement");
  }

  /**
      Set `nullPlacement` property.
      Params:
        propval = Whether nulls and NaNs are partitioned at the start or at the end.
  */
  @property void nullPlacement(gid_apache.arrow26.types.NullPlacement propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.types.NullPlacement)("null-placement", propval);
  }

  /**
      Get `pivot` property.
      Returns: The index into the equivalent sorted array of the partition pivot element.
  */
  @property long pivot() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("pivot");
  }

  /**
      Set `pivot` property.
      Params:
        propval = The index into the equivalent sorted array of the partition pivot element.
  */
  @property void pivot(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("pivot", propval);
  }

  /** */
  this() nothrow
  {
    GArrowPartitionNthOptions* _cretval;
    _cretval = garrow_partition_nth_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.partition_nth_options.PartitionNthOptions]
class PartitionNthOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `nullPlacement` property.
      Params:
        propval = Whether nulls and NaNs are partitioned at the start or at the end.
      Returns: Builder instance for fluent chaining
  */
  T nullPlacement(gid_apache.arrow26.types.NullPlacement propval) nothrow
  {
    return setProperty("null-placement", propval);
  }

  /**
      Set `pivot` property.
      Params:
        propval = The index into the equivalent sorted array of the partition pivot element.
      Returns: Builder instance for fluent chaining
  */
  T pivot(long propval) nothrow
  {
    return setProperty("pivot", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.partition_nth_options.PartitionNthOptions]
final class PartitionNthOptionsGidBuilder : PartitionNthOptionsGidBuilderImpl!PartitionNthOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  PartitionNthOptions build() nothrow
  {
    return new PartitionNthOptions(cast(void*)createGObject(PartitionNthOptions._getGType), Yes.Take);
  }
}
