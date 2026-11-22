/// Module for [RecordBatchStream] class
module gid_apache.arrowflight24.record_batch_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.record_batch_reader;
import gid_apache.arrow24.write_options;
import gid_apache.arrowflight24.c.functions;
import gid_apache.arrowflight24.c.types;
import gid_apache.arrowflight24.data_stream;
import gid_apache.arrowflight24.types;

/** */
class RecordBatchStream : gid_apache.arrowflight24.data_stream.DataStream
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
    return cast(void function())gaflight_record_batch_stream_get_type != &gidSymbolNotFound ? gaflight_record_batch_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightRecordBatchStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override RecordBatchStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight24.record_batch_stream.RecordBatchStream]
      Returns: New builder object
  */
  static RecordBatchStreamGidBuilder builder() nothrow
  {
    return new RecordBatchStreamGidBuilder;
  }

  /**
      Get `reader` property.
      Returns: The reader that produces record batches.
  */
  @property gid_apache.arrow24.record_batch_reader.RecordBatchReader reader() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.record_batch_reader.RecordBatchReader)("reader");
  }

  /** */
  this(gid_apache.arrow24.record_batch_reader.RecordBatchReader reader, gid_apache.arrow24.write_options.WriteOptions options = null) nothrow
  {
    GAFlightRecordBatchStream* _cretval;
    _cretval = gaflight_record_batch_stream_new(reader ? cast(GArrowRecordBatchReader*)reader._cPtr(No.Dup) : null, options ? cast(GArrowWriteOptions*)options._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight24.record_batch_stream.RecordBatchStream]
class RecordBatchStreamGidBuilderImpl(T) : gid_apache.arrowflight24.data_stream.DataStreamGidBuilderImpl!T
{

  /**
      Set `reader` property.
      Params:
        propval = The reader that produces record batches.
      Returns: Builder instance for fluent chaining
  */
  T reader(gid_apache.arrow24.record_batch_reader.RecordBatchReader propval) nothrow
  {
    return setProperty("reader", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight24.record_batch_stream.RecordBatchStream]
final class RecordBatchStreamGidBuilder : RecordBatchStreamGidBuilderImpl!RecordBatchStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RecordBatchStream build() nothrow
  {
    return new RecordBatchStream(cast(void*)createGObject(RecordBatchStream._getGType), Yes.Take);
  }
}
