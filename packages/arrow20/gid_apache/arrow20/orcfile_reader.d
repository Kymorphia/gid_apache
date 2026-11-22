/// Module for [ORCFileReader] class
module gid_apache.arrow20.orcfile_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.record_batch;
import gid_apache.arrow20.schema;
import gid_apache.arrow20.seekable_input_stream;
import gid_apache.arrow20.table;
import gid_apache.arrow20.types;

/** */
class ORCFileReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_orc_file_reader_get_type != &gidSymbolNotFound ? garrow_orc_file_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowORCFileReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override ORCFileReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.orcfile_reader.ORCFileReader]
      Returns: New builder object
  */
  static ORCFileReaderGidBuilder builder() nothrow
  {
    return new ORCFileReaderGidBuilder;
  }

  /** */
  @property gid_apache.arrow20.seekable_input_stream.SeekableInputStream input() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow20.seekable_input_stream.SeekableInputStream)("input");
  }

  /** */
  this(gid_apache.arrow20.seekable_input_stream.SeekableInputStream file)
  {
    GArrowORCFileReader* _cretval;
    GError *_err;
    _cretval = garrow_orc_file_reader_new(file ? cast(GArrowSeekableInputStream*)file._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  int[] getFieldIndexes() nothrow
  {
    const(int)* _cretval;
    uint _cretlength;
    _cretval = garrow_orc_file_reader_get_field_indexes(cast(GArrowORCFileReader*)this._cPtr, &_cretlength);
    int[] _retval;

    if (_cretval)
    {
      _retval = cast(int[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  int[] getFieldIndices() nothrow
  {
    const(int)* _cretval;
    uint _cretlength;
    _cretval = garrow_orc_file_reader_get_field_indices(cast(GArrowORCFileReader*)this._cPtr, &_cretlength);
    int[] _retval;

    if (_cretval)
    {
      _retval = cast(int[])_cretval[0 .. _cretlength].dup;
    }
    return _retval;
  }

  /** */
  long getNRows() nothrow
  {
    long _retval;
    _retval = garrow_orc_file_reader_get_n_rows(cast(GArrowORCFileReader*)this._cPtr);
    return _retval;
  }

  /** */
  long getNStripes() nothrow
  {
    long _retval;
    _retval = garrow_orc_file_reader_get_n_stripes(cast(GArrowORCFileReader*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow20.record_batch.RecordBatch readStripe(long i)
  {
    GArrowRecordBatch* _cretval;
    GError *_err;
    _cretval = garrow_orc_file_reader_read_stripe(cast(GArrowORCFileReader*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.record_batch.RecordBatch)(cast(GArrowRecordBatch*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.table.Table readStripes()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_orc_file_reader_read_stripes(cast(GArrowORCFileReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.schema.Schema readType()
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = garrow_orc_file_reader_read_type(cast(GArrowORCFileReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  void setFieldIndexes(int[] fieldIndexes = null) nothrow
  {
    uint _nFieldIndexes;
    if (fieldIndexes)
      _nFieldIndexes = cast(uint)fieldIndexes.length;

    auto _fieldIndexes = cast(int*)fieldIndexes.ptr;
    garrow_orc_file_reader_set_field_indexes(cast(GArrowORCFileReader*)this._cPtr, _fieldIndexes, _nFieldIndexes);
  }

  /** */
  void setFieldIndices(int[] fieldIndices = null) nothrow
  {
    uint _nFieldIndices;
    if (fieldIndices)
      _nFieldIndices = cast(uint)fieldIndices.length;

    auto _fieldIndices = cast(int*)fieldIndices.ptr;
    garrow_orc_file_reader_set_field_indices(cast(GArrowORCFileReader*)this._cPtr, _fieldIndices, _nFieldIndices);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.orcfile_reader.ORCFileReader]
class ORCFileReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T input(gid_apache.arrow20.seekable_input_stream.SeekableInputStream propval) nothrow
  {
    return setProperty("input", propval);
  }

  /** */
  T orcFileReader(void* propval) nothrow
  {
    return setProperty("orc-file-reader", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.orcfile_reader.ORCFileReader]
final class ORCFileReaderGidBuilder : ORCFileReaderGidBuilderImpl!ORCFileReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ORCFileReader build() nothrow
  {
    return new ORCFileReader(cast(void*)createGObject(ORCFileReader._getGType), Yes.Take);
  }
}
