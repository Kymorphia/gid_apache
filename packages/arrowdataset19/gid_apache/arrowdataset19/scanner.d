/// Module for [Scanner] class
module gid_apache.arrowdataset19.scanner;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.record_batch_reader;
import gid_apache.arrow19.table;
import gid_apache.arrowdataset19.c.functions;
import gid_apache.arrowdataset19.c.types;
import gid_apache.arrowdataset19.types;

/** */
class Scanner : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_scanner_get_type != &gidSymbolNotFound ? gadataset_scanner_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetScanner";
  }

  /** Returns `this`, for use in `with` statements. */
  override Scanner self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset19.scanner.Scanner]
      Returns: New builder object
  */
  static ScannerGidBuilder builder() nothrow
  {
    return new ScannerGidBuilder;
  }

  /** */
  gid_apache.arrow19.record_batch_reader.RecordBatchReader toRecordBatchReader()
  {
    GArrowRecordBatchReader* _cretval;
    GError *_err;
    _cretval = gadataset_scanner_to_record_batch_reader(cast(GADatasetScanner*)this._cPtr, &_err);
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
    _cretval = gadataset_scanner_to_table(cast(GADatasetScanner*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset19.scanner.Scanner]
class ScannerGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T scanner(void* propval) nothrow
  {
    return setProperty("scanner", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset19.scanner.Scanner]
final class ScannerGidBuilder : ScannerGidBuilderImpl!ScannerGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Scanner build() nothrow
  {
    return new Scanner(cast(void*)createGObject(Scanner._getGType), Yes.Take);
  }
}
