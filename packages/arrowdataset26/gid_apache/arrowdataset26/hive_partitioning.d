/// Module for [HivePartitioning] class
module gid_apache.arrowdataset26.hive_partitioning;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.array;
import gid_apache.arrow26.schema;
import gid_apache.arrowdataset26.c.functions;
import gid_apache.arrowdataset26.c.types;
import gid_apache.arrowdataset26.hive_partitioning_options;
import gid_apache.arrowdataset26.key_value_partitioning;
import gid_apache.arrowdataset26.types;

/** */
class HivePartitioning : gid_apache.arrowdataset26.key_value_partitioning.KeyValuePartitioning
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
    return cast(void function())gadataset_hive_partitioning_get_type != &gidSymbolNotFound ? gadataset_hive_partitioning_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetHivePartitioning";
  }

  /** Returns `this`, for use in `with` statements. */
  override HivePartitioning self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset26.hive_partitioning.HivePartitioning]
      Returns: New builder object
  */
  static HivePartitioningGidBuilder builder() nothrow
  {
    return new HivePartitioningGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.schema.Schema schema, gid_apache.arrow26.array.Array[] dictionaries = null, gid_apache.arrowdataset26.hive_partitioning_options.HivePartitioningOptions options = null)
  {
    GADatasetHivePartitioning* _cretval;
    auto _dictionaries = gListFromD!(gid_apache.arrow26.array.Array)(dictionaries);
    scope(exit) containerFree!(GList*, gid_apache.arrow26.array.Array, GidOwnership.None)(_dictionaries);
    GError *_err;
    _cretval = gadataset_hive_partitioning_new(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, _dictionaries, options ? cast(GADatasetHivePartitioningOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  string getNullFallback() nothrow
  {
    char* _cretval;
    _cretval = gadataset_hive_partitioning_get_null_fallback(cast(GADatasetHivePartitioning*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset26.hive_partitioning.HivePartitioning]
class HivePartitioningGidBuilderImpl(T) : gid_apache.arrowdataset26.key_value_partitioning.KeyValuePartitioningGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowdataset26.hive_partitioning.HivePartitioning]
final class HivePartitioningGidBuilder : HivePartitioningGidBuilderImpl!HivePartitioningGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  HivePartitioning build() nothrow
  {
    return new HivePartitioning(cast(void*)createGObject(HivePartitioning._getGType), Yes.Take);
  }
}
