/// Module for [Partitioning] class
module gid_apache.arrowdataset20.partitioning;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowdataset20.c.functions;
import gid_apache.arrowdataset20.c.types;
import gid_apache.arrowdataset20.types;

/** */
class Partitioning : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_partitioning_get_type != &gidSymbolNotFound ? gadataset_partitioning_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetPartitioning";
  }

  /** Returns `this`, for use in `with` statements. */
  override Partitioning self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset20.partitioning.Partitioning]
      Returns: New builder object
  */
  static PartitioningGidBuilder builder() nothrow
  {
    return new PartitioningGidBuilder;
  }

  /** */
  static gid_apache.arrowdataset20.partitioning.Partitioning createDefault() nothrow
  {
    GADatasetPartitioning* _cretval;
    _cretval = gadataset_partitioning_create_default();
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset20.partitioning.Partitioning)(cast(GADatasetPartitioning*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string getTypeName() nothrow
  {
    char* _cretval;
    _cretval = gadataset_partitioning_get_type_name(cast(GADatasetPartitioning*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset20.partitioning.Partitioning]
class PartitioningGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T partitioning(void* propval) nothrow
  {
    return setProperty("partitioning", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset20.partitioning.Partitioning]
final class PartitioningGidBuilder : PartitioningGidBuilderImpl!PartitioningGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Partitioning build() nothrow
  {
    return new Partitioning(cast(void*)createGObject(Partitioning._getGType), Yes.Take);
  }
}
