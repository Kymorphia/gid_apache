/// Module for [DatasetFactory] class
module gid_apache.arrowdataset26.dataset_factory;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowdataset26.c.functions;
import gid_apache.arrowdataset26.c.types;
import gid_apache.arrowdataset26.dataset;
import gid_apache.arrowdataset26.finish_options;
import gid_apache.arrowdataset26.types;

/** */
class DatasetFactory : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_dataset_factory_get_type != &gidSymbolNotFound ? gadataset_dataset_factory_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetDatasetFactory";
  }

  /** Returns `this`, for use in `with` statements. */
  override DatasetFactory self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset26.dataset_factory.DatasetFactory]
      Returns: New builder object
  */
  static DatasetFactoryGidBuilder builder() nothrow
  {
    return new DatasetFactoryGidBuilder;
  }

  /** */
  gid_apache.arrowdataset26.dataset.Dataset finish(gid_apache.arrowdataset26.finish_options.FinishOptions options = null)
  {
    GADatasetDataset* _cretval;
    GError *_err;
    _cretval = gadataset_dataset_factory_finish(cast(GADatasetDatasetFactory*)this._cPtr, options ? cast(GADatasetFinishOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset26.dataset.Dataset)(cast(GADatasetDataset*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset26.dataset_factory.DatasetFactory]
class DatasetFactoryGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T datasetFactory(void* propval) nothrow
  {
    return setProperty("dataset-factory", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset26.dataset_factory.DatasetFactory]
final class DatasetFactoryGidBuilder : DatasetFactoryGidBuilderImpl!DatasetFactoryGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DatasetFactory build() nothrow
  {
    return new DatasetFactory(cast(void*)createGObject(DatasetFactory._getGType), Yes.Take);
  }
}
