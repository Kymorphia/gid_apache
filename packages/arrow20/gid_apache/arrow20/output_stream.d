/// Module for [OutputStream] class
module gid_apache.arrow20.output_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.file;
import gid_apache.arrow20.file_mixin;
import gid_apache.arrow20.record_batch;
import gid_apache.arrow20.tensor;
import gid_apache.arrow20.types;
import gid_apache.arrow20.writable;
import gid_apache.arrow20.writable_mixin;
import gid_apache.arrow20.write_options;

/** */
class OutputStream : gid.gobject2.object.ObjectWrap, gid_apache.arrow20.file.File, gid_apache.arrow20.writable.Writable
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
    return cast(void function())garrow_output_stream_get_type != &gidSymbolNotFound ? garrow_output_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowOutputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override OutputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.output_stream.OutputStream]
      Returns: New builder object
  */
  static OutputStreamGidBuilder builder() nothrow
  {
    return new OutputStreamGidBuilder;
  }

  mixin FileT!();
  mixin WritableT!();

  /** */
  bool align_(int alignment)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_output_stream_align(cast(GArrowOutputStream*)this._cPtr, alignment, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  long writeRecordBatch(gid_apache.arrow20.record_batch.RecordBatch recordBatch, gid_apache.arrow20.write_options.WriteOptions options = null)
  {
    long _retval;
    GError *_err;
    _retval = garrow_output_stream_write_record_batch(cast(GArrowOutputStream*)this._cPtr, recordBatch ? cast(GArrowRecordBatch*)recordBatch._cPtr(No.Dup) : null, options ? cast(GArrowWriteOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  long writeTensor(gid_apache.arrow20.tensor.Tensor tensor)
  {
    long _retval;
    GError *_err;
    _retval = garrow_output_stream_write_tensor(cast(GArrowOutputStream*)this._cPtr, tensor ? cast(GArrowTensor*)tensor._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.output_stream.OutputStream]
class OutputStreamGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T, gid_apache.arrow20.file.FileGidBuilderImpl!T, gid_apache.arrow20.writable.WritableGidBuilderImpl!T
{

  mixin FileGidBuilderT!();
  mixin WritableGidBuilderT!();

  /** */
  T outputStream(void* propval) nothrow
  {
    return setProperty("output-stream", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.output_stream.OutputStream]
final class OutputStreamGidBuilder : OutputStreamGidBuilderImpl!OutputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  OutputStream build() nothrow
  {
    return new OutputStream(cast(void*)createGObject(OutputStream._getGType), Yes.Take);
  }
}
