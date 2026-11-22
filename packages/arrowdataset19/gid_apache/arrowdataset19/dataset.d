/// Module for [Dataset] class
module gid_apache.arrowdataset19.dataset;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.record_batch_reader;
import gid_apache.arrow19.table;
import gid_apache.arrowdataset19.c.functions;
import gid_apache.arrowdataset19.c.types;
import gid_apache.arrowdataset19.scanner_builder;
import gid_apache.arrowdataset19.types;

/** */
class Dataset : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_dataset_get_type != &gidSymbolNotFound ? gadataset_dataset_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetDataset";
  }

  /** Returns `this`, for use in `with` statements. */
  override Dataset self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset19.dataset.Dataset]
      Returns: New builder object
  */
  static DatasetGidBuilder builder() nothrow
  {
    return new DatasetGidBuilder;
  }

  /** */
  gid_apache.arrowdataset19.scanner_builder.ScannerBuilder beginScan()
  {
    GADatasetScannerBuilder* _cretval;
    GError *_err;
    _cretval = gadataset_dataset_begin_scan(cast(GADatasetDataset*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset19.scanner_builder.ScannerBuilder)(cast(GADatasetScannerBuilder*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string getTypeName() nothrow
  {
    char* _cretval;
    _cretval = gadataset_dataset_get_type_name(cast(GADatasetDataset*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  gid_apache.arrow19.record_batch_reader.RecordBatchReader toRecordBatchReader()
  {
    GArrowRecordBatchReader* _cretval;
    GError *_err;
    _cretval = gadataset_dataset_to_record_batch_reader(cast(GADatasetDataset*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.record_batch_reader.RecordBatchReader)(cast(GArrowRecordBatchReader*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.table.Table toTable()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = gadataset_dataset_to_table(cast(GADatasetDataset*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset19.dataset.Dataset]
class DatasetGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T dataset(void* propval) nothrow
  {
    return setProperty("dataset", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset19.dataset.Dataset]
final class DatasetGidBuilder : DatasetGidBuilderImpl!DatasetGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Dataset build() nothrow
  {
    return new Dataset(cast(void*)createGObject(Dataset._getGType), Yes.Take);
  }
}
