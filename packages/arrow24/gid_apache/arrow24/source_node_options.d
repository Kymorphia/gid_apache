/// Module for [SourceNodeOptions] class
module gid_apache.arrow24.source_node_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.execute_node_options;
import gid_apache.arrow24.record_batch;
import gid_apache.arrow24.record_batch_reader;
import gid_apache.arrow24.table;
import gid_apache.arrow24.types;

/** */
class SourceNodeOptions : gid_apache.arrow24.execute_node_options.ExecuteNodeOptions
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
    return cast(void function())garrow_source_node_options_get_type != &gidSymbolNotFound ? garrow_source_node_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSourceNodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override SourceNodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.source_node_options.SourceNodeOptions]
      Returns: New builder object
  */
  static SourceNodeOptionsGidBuilder builder() nothrow
  {
    return new SourceNodeOptionsGidBuilder;
  }

  /** */
  @property gid_apache.arrow24.record_batch_reader.RecordBatchReader reader() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.record_batch_reader.RecordBatchReader)("reader");
  }

  /** */
  @property gid_apache.arrow24.record_batch.RecordBatch recordBatch() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.record_batch.RecordBatch)("record-batch");
  }

  /** */
  static gid_apache.arrow24.source_node_options.SourceNodeOptions newRecordBatch(gid_apache.arrow24.record_batch.RecordBatch recordBatch) nothrow
  {
    GArrowSourceNodeOptions* _cretval;
    _cretval = garrow_source_node_options_new_record_batch(recordBatch ? cast(GArrowRecordBatch*)recordBatch._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.source_node_options.SourceNodeOptions)(cast(GArrowSourceNodeOptions*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow24.source_node_options.SourceNodeOptions newRecordBatchReader(gid_apache.arrow24.record_batch_reader.RecordBatchReader reader) nothrow
  {
    GArrowSourceNodeOptions* _cretval;
    _cretval = garrow_source_node_options_new_record_batch_reader(reader ? cast(GArrowRecordBatchReader*)reader._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.source_node_options.SourceNodeOptions)(cast(GArrowSourceNodeOptions*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow24.source_node_options.SourceNodeOptions newTable(gid_apache.arrow24.table.Table table) nothrow
  {
    GArrowSourceNodeOptions* _cretval;
    _cretval = garrow_source_node_options_new_table(table ? cast(GArrowTable*)table._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.source_node_options.SourceNodeOptions)(cast(GArrowSourceNodeOptions*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.source_node_options.SourceNodeOptions]
class SourceNodeOptionsGidBuilderImpl(T) : gid_apache.arrow24.execute_node_options.ExecuteNodeOptionsGidBuilderImpl!T
{

  /** */
  T reader(gid_apache.arrow24.record_batch_reader.RecordBatchReader propval) nothrow
  {
    return setProperty("reader", propval);
  }

  /** */
  T recordBatch(gid_apache.arrow24.record_batch.RecordBatch propval) nothrow
  {
    return setProperty("record-batch", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.source_node_options.SourceNodeOptions]
final class SourceNodeOptionsGidBuilder : SourceNodeOptionsGidBuilderImpl!SourceNodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SourceNodeOptions build() nothrow
  {
    return new SourceNodeOptions(cast(void*)createGObject(SourceNodeOptions._getGType), Yes.Take);
  }
}
