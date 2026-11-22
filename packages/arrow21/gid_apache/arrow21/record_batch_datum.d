/// Module for [RecordBatchDatum] class
module gid_apache.arrow21.record_batch_datum;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.datum;
import gid_apache.arrow21.record_batch;
import gid_apache.arrow21.types;

/** */
class RecordBatchDatum : gid_apache.arrow21.datum.Datum
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
    return cast(void function())garrow_record_batch_datum_get_type != &gidSymbolNotFound ? garrow_record_batch_datum_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchDatum";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchDatum self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.record_batch_datum.RecordBatchDatum]
      Returns: New builder object
  */
  static RecordBatchDatumGidBuilder builder() nothrow
  {
    return new RecordBatchDatumGidBuilder;
  }

  /** */
  @property gid_apache.arrow21.record_batch.RecordBatch value() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.record_batch.RecordBatch)("value");
  }

  /** */
  this(gid_apache.arrow21.record_batch.RecordBatch value) nothrow
  {
    GArrowRecordBatchDatum* _cretval;
    _cretval = garrow_record_batch_datum_new(value ? cast(GArrowRecordBatch*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.record_batch_datum.RecordBatchDatum]
class RecordBatchDatumGidBuilderImpl(T) : gid_apache.arrow21.datum.DatumGidBuilderImpl!T
{

  /** */
  T value(gid_apache.arrow21.record_batch.RecordBatch propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.record_batch_datum.RecordBatchDatum]
final class RecordBatchDatumGidBuilder : RecordBatchDatumGidBuilderImpl!RecordBatchDatumGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchDatum build() nothrow
  {
    return new RecordBatchDatum(cast(void*)createGObject(RecordBatchDatum._getGType), Yes.Take);
  }
}
