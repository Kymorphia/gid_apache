/// Module for [DirectoryPartitioning] class
module gid_apache.arrowdataset26.directory_partitioning;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.array;
import gid_apache.arrow26.schema;
import gid_apache.arrowdataset26.c.functions;
import gid_apache.arrowdataset26.c.types;
import gid_apache.arrowdataset26.key_value_partitioning;
import gid_apache.arrowdataset26.key_value_partitioning_options;
import gid_apache.arrowdataset26.types;

/** */
class DirectoryPartitioning : gid_apache.arrowdataset26.key_value_partitioning.KeyValuePartitioning
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
    return cast(void function())gadataset_directory_partitioning_get_type != &gidSymbolNotFound ? gadataset_directory_partitioning_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetDirectoryPartitioning";
  }

  /** Returns `this`, for use in `with` statements. */
  override DirectoryPartitioning self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset26.directory_partitioning.DirectoryPartitioning]
      Returns: New builder object
  */
  static DirectoryPartitioningGidBuilder builder() nothrow
  {
    return new DirectoryPartitioningGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.schema.Schema schema, gid_apache.arrow26.array.Array[] dictionaries = null, gid_apache.arrowdataset26.key_value_partitioning_options.KeyValuePartitioningOptions options = null)
  {
    GADatasetDirectoryPartitioning* _cretval;
    auto _dictionaries = gListFromD!(gid_apache.arrow26.array.Array)(dictionaries);
    scope(exit) containerFree!(GList*, gid_apache.arrow26.array.Array, GidOwnership.None)(_dictionaries);
    GError *_err;
    _cretval = gadataset_directory_partitioning_new(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, _dictionaries, options ? cast(GADatasetKeyValuePartitioningOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset26.directory_partitioning.DirectoryPartitioning]
class DirectoryPartitioningGidBuilderImpl(T) : gid_apache.arrowdataset26.key_value_partitioning.KeyValuePartitioningGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowdataset26.directory_partitioning.DirectoryPartitioning]
final class DirectoryPartitioningGidBuilder : DirectoryPartitioningGidBuilderImpl!DirectoryPartitioningGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DirectoryPartitioning build() nothrow
  {
    return new DirectoryPartitioning(cast(void*)createGObject(DirectoryPartitioning._getGType), Yes.Take);
  }
}
