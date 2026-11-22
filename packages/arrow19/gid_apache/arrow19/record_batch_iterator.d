/// Module for [RecordBatchIterator] class
module gid_apache.arrow19.record_batch_iterator;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.record_batch;
import gid_apache.arrow19.types;

/** */
class RecordBatchIterator : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_record_batch_iterator_get_type != &gidSymbolNotFound ? garrow_record_batch_iterator_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRecordBatchIterator";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchIterator self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.record_batch_iterator.RecordBatchIterator]
      Returns: New builder object
  */
  static RecordBatchIteratorGidBuilder builder() nothrow
  {
    return new RecordBatchIteratorGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.record_batch.RecordBatch[] recordBatches) nothrow
  {
    GArrowRecordBatchIterator* _cretval;
    auto _recordBatches = gListFromD!(gid_apache.arrow19.record_batch.RecordBatch)(recordBatches);
    scope(exit) containerFree!(GList*, gid_apache.arrow19.record_batch.RecordBatch, GidOwnership.None)(_recordBatches);
    _cretval = garrow_record_batch_iterator_new(_recordBatches);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrow19.record_batch_iterator.RecordBatchIterator otherIterator) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_record_batch_iterator_equal(cast(GArrowRecordBatchIterator*)this._cPtr, otherIterator ? cast(GArrowRecordBatchIterator*)otherIterator._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow19.record_batch.RecordBatch next()
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_iterator_next(cast(GArrowRecordBatchIterator*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.record_batch.RecordBatch[] toList()
  {
    GList* _cretval;
    GError *_err;
    _cretval = garrow_record_batch_iterator_to_list(cast(GArrowRecordBatchIterator*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gListToD!(gid_apache.arrow19.record_batch.RecordBatch, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.record_batch_iterator.RecordBatchIterator]
class RecordBatchIteratorGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T iterator(void* propval) nothrow
  {
    return setProperty("iterator", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.record_batch_iterator.RecordBatchIterator]
final class RecordBatchIteratorGidBuilder : RecordBatchIteratorGidBuilderImpl!RecordBatchIteratorGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchIterator build() nothrow
  {
    return new RecordBatchIterator(cast(void*)createGObject(RecordBatchIterator._getGType), Yes.Take);
  }
}
