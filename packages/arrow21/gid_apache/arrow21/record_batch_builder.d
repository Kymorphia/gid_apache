/// Module for [RecordBatchBuilder] class
module gid_apache.arrow21.record_batch_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.array_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.record_batch;
import gid_apache.arrow21.schema;
import gid_apache.arrow21.types;

/** */
class RecordBatchBuilder : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_record_batch_builder_get_type != &gidSymbolNotFound ? garrow_record_batch_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.record_batch_builder.RecordBatchBuilder]
      Returns: New builder object
  */
  static RecordBatchBuilderGidBuilder builder() nothrow
  {
    return new RecordBatchBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.schema.Schema schema)
  {
    GArrowRecordBatchBuilder* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_builder_new(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow21.record_batch.RecordBatch flush()
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_builder_flush(cast(GArrowRecordBatchBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array_builder.ArrayBuilder getColumnBuilder(int i) nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_record_batch_builder_get_column_builder(cast(GArrowRecordBatchBuilder*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array_builder.ArrayBuilder getField(int i) nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_record_batch_builder_get_field(cast(GArrowRecordBatchBuilder*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }

  /** */
  long getInitialCapacity() nothrow
  {
    long _retval;
    _retval = garrow_record_batch_builder_get_initial_capacity(cast(GArrowRecordBatchBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  int getNColumns() nothrow
  {
    int _retval;
    _retval = garrow_record_batch_builder_get_n_columns(cast(GArrowRecordBatchBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  int getNFields() nothrow
  {
    int _retval;
    _retval = garrow_record_batch_builder_get_n_fields(cast(GArrowRecordBatchBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow21.schema.Schema getSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = garrow_record_batch_builder_get_schema(cast(GArrowRecordBatchBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  void setInitialCapacity(long capacity) nothrow
  {
    garrow_record_batch_builder_set_initial_capacity(cast(GArrowRecordBatchBuilder*)this._cPtr, capacity);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.record_batch_builder.RecordBatchBuilder]
class RecordBatchBuilderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T recordBatchBuilder(void* propval) nothrow
  {
    return setProperty("record-batch-builder", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.record_batch_builder.RecordBatchBuilder]
final class RecordBatchBuilderGidBuilder : RecordBatchBuilderGidBuilderImpl!RecordBatchBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchBuilder build() nothrow
  {
    return new RecordBatchBuilder(cast(void*)createGObject(RecordBatchBuilder._getGType), Yes.Take);
  }
}
