/// Module for [InputStream] class
module gid_apache.arrow22.input_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gio2.input_stream;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.file;
import gid_apache.arrow22.file_mixin;
import gid_apache.arrow22.read_options;
import gid_apache.arrow22.readable;
import gid_apache.arrow22.readable_mixin;
import gid_apache.arrow22.record_batch;
import gid_apache.arrow22.schema;
import gid_apache.arrow22.tensor;
import gid_apache.arrow22.types;

/** */
class InputStream : gid.gio2.input_stream.InputStream, gid_apache.arrow22.file.File, gid_apache.arrow22.readable.Readable
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
    return cast(void function())garrow_input_stream_get_type != &gidSymbolNotFound ? garrow_input_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInputStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override InputStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.input_stream.InputStream]
      Returns: New builder object
  */
  static InputStreamGidBuilder builder() nothrow
  {
    return new InputStreamGidBuilder;
  }

  mixin FileT!();
  mixin ReadableT!();
  alias close = gid.gio2.input_stream.InputStream.close;
  alias read = gid.gio2.input_stream.InputStream.read;
  alias readBytes = gid.gio2.input_stream.InputStream.readBytes;

  /** */
  bool advance(long nBytes)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_input_stream_advance(cast(GArrowInputStream*)this._cPtr, nBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool align_(int alignment)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_input_stream_align(cast(GArrowInputStream*)this._cPtr, alignment, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.record_batch.RecordBatch readRecordBatch(gid_apache.arrow22.schema.Schema schema, gid_apache.arrow22.read_options.ReadOptions options = null)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_input_stream_read_record_batch(cast(GArrowInputStream*)this._cPtr, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, options ? cast(GArrowReadOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.tensor.Tensor readTensor()
  {
    GArrowTensor* _cretval;
    GError *_err;
    _cretval = garrow_input_stream_read_tensor(cast(GArrowInputStream*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.tensor.Tensor)(cast(GArrowTensor*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.input_stream.InputStream]
class InputStreamGidBuilderImpl(T) : gid.gio2.input_stream.InputStreamGidBuilderImpl!T, gid_apache.arrow22.file.FileGidBuilderImpl!T, gid_apache.arrow22.readable.ReadableGidBuilderImpl!T
{

  mixin FileGidBuilderT!();
  mixin ReadableGidBuilderT!();

  /** */
  T inputStream(void* propval) nothrow
  {
    return setProperty("input-stream", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.input_stream.InputStream]
final class InputStreamGidBuilder : InputStreamGidBuilderImpl!InputStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  InputStream build() nothrow
  {
    return new InputStream(cast(void*)createGObject(InputStream._getGType), Yes.Take);
  }
}
