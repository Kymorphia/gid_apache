/// Module for [ScannerBuilder] class
module gid_apache.arrowdataset20.scanner_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.expression;
import gid_apache.arrow20.record_batch_reader;
import gid_apache.arrowdataset20.c.functions;
import gid_apache.arrowdataset20.c.types;
import gid_apache.arrowdataset20.dataset;
import gid_apache.arrowdataset20.scanner;
import gid_apache.arrowdataset20.types;

/** */
class ScannerBuilder : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_scanner_builder_get_type != &gidSymbolNotFound ? gadataset_scanner_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetScannerBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override ScannerBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset20.scanner_builder.ScannerBuilder]
      Returns: New builder object
  */
  static ScannerBuilderGidBuilder builder() nothrow
  {
    return new ScannerBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrowdataset20.dataset.Dataset dataset)
  {
    GADatasetScannerBuilder* _cretval;
    GError *_err;
    _cretval = gadataset_scanner_builder_new(dataset ? cast(GADatasetDataset*)dataset._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrowdataset20.scanner_builder.ScannerBuilder newRecordBatchReader(gid_apache.arrow20.record_batch_reader.RecordBatchReader reader) nothrow
  {
    GADatasetScannerBuilder* _cretval;
    _cretval = gadataset_scanner_builder_new_record_batch_reader(reader ? cast(GArrowRecordBatchReader*)reader._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset20.scanner_builder.ScannerBuilder)(cast(GADatasetScannerBuilder*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrowdataset20.scanner.Scanner finish()
  {
    GADatasetScanner* _cretval;
    GError *_err;
    _cretval = gadataset_scanner_builder_finish(cast(GADatasetScannerBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowdataset20.scanner.Scanner)(cast(GADatasetScanner*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool setFilter(gid_apache.arrow20.expression.Expression expression)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gadataset_scanner_builder_set_filter(cast(GADatasetScannerBuilder*)this._cPtr, expression ? cast(GArrowExpression*)expression._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset20.scanner_builder.ScannerBuilder]
class ScannerBuilderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T scannerBuilder(void* propval) nothrow
  {
    return setProperty("scanner-builder", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset20.scanner_builder.ScannerBuilder]
final class ScannerBuilderGidBuilder : ScannerBuilderGidBuilderImpl!ScannerBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ScannerBuilder build() nothrow
  {
    return new ScannerBuilder(cast(void*)createGObject(ScannerBuilder._getGType), Yes.Take);
  }
}
