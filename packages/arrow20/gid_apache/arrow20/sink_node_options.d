/// Module for [SinkNodeOptions] class
module gid_apache.arrow20.sink_node_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.execute_node_options;
import gid_apache.arrow20.record_batch_reader;
import gid_apache.arrow20.schema;
import gid_apache.arrow20.types;

/** */
class SinkNodeOptions : gid_apache.arrow20.execute_node_options.ExecuteNodeOptions
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
    return cast(void function())garrow_sink_node_options_get_type != &gidSymbolNotFound ? garrow_sink_node_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSinkNodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override SinkNodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.sink_node_options.SinkNodeOptions]
      Returns: New builder object
  */
  static SinkNodeOptionsGidBuilder builder() nothrow
  {
    return new SinkNodeOptionsGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowSinkNodeOptions* _cretval;
    _cretval = garrow_sink_node_options_new();
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow20.record_batch_reader.RecordBatchReader getReader(gid_apache.arrow20.schema.Schema schema) nothrow
  {
    GArrowRecordBatchReader* _cretval;
    _cretval = garrow_sink_node_options_get_reader(cast(GArrowSinkNodeOptions*)this._cPtr, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.record_batch_reader.RecordBatchReader)(cast(GArrowRecordBatchReader*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.sink_node_options.SinkNodeOptions]
class SinkNodeOptionsGidBuilderImpl(T) : gid_apache.arrow20.execute_node_options.ExecuteNodeOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.sink_node_options.SinkNodeOptions]
final class SinkNodeOptionsGidBuilder : SinkNodeOptionsGidBuilderImpl!SinkNodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SinkNodeOptions build() nothrow
  {
    return new SinkNodeOptions(cast(void*)createGObject(SinkNodeOptions._getGType), Yes.Take);
  }
}
