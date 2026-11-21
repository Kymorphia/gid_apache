/// Module for [ArrowFileReader] class
module parquet.arrow_file_reader;

public import gid.basictypes;
import arrow.chunked_array;
import arrow.schema;
import arrow.seekable_input_stream;
import arrow.table;
import gid.gid;
import glib.error;
import gobject.gid_builder;
import gobject.object;
import parquet.c.functions;
import parquet.c.types;
import parquet.file_metadata;
import parquet.reader_properties;
import parquet.types;

/** */
class ArrowFileReader : gobject.object.ObjectWrap
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.loader : gidSymbolNotFound;
    return cast(void function())gparquet_arrow_file_reader_get_type != &gidSymbolNotFound ? gparquet_arrow_file_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetArrowFileReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override ArrowFileReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [parquet.arrow_file_reader.ArrowFileReader]
      Returns: New builder object
  */
  static ArrowFileReaderGidBuilder builder() nothrow
  {
    return new ArrowFileReaderGidBuilder;
  }

  /**
      Get `source` property.
      Returns: The source stream for this reader.
  */
  @property arrow.seekable_input_stream.SeekableInputStream source() nothrow
  {
    return gobject.object.ObjectWrap.getProperty!(arrow.seekable_input_stream.SeekableInputStream)("source");
  }

  /** */
  static parquet.arrow_file_reader.ArrowFileReader newArrow(arrow.seekable_input_stream.SeekableInputStream source)
  {
    GParquetArrowFileReader* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_arrow(source ? cast(GArrowSeekableInputStream*)source._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(parquet.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      The reader copies properties at construction. Later changes to properties
      do not affect the reader. The native source is retained by the reader.
  
      Params:
        source = Arrow source to be read.
        properties = Reader properties or null for the defaults.
      Returns: A newly created #GParquetArrowFileReader.
      Throws: [ErrorWrap]
  */
  static parquet.arrow_file_reader.ArrowFileReader newArrowFull(arrow.seekable_input_stream.SeekableInputStream source, parquet.reader_properties.ReaderProperties properties = null)
  {
    GParquetArrowFileReader* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_arrow_full(source ? cast(GArrowSeekableInputStream*)source._cPtr(No.Dup) : null, properties ? cast(GParquetReaderProperties*)properties._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(parquet.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static parquet.arrow_file_reader.ArrowFileReader newPath(string path)
  {
    GParquetArrowFileReader* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_path(_path, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(parquet.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      The reader copies properties at construction. Later changes to properties
      do not affect the reader. The file is memory mapped, as with
      [parquet.arrow_file_reader.ArrowFileReader.newPath].
  
      Params:
        path = Path to be read.
        properties = Reader properties or null for the defaults.
      Returns: A newly created #GParquetArrowFileReader.
      Throws: [ErrorWrap]
  */
  static parquet.arrow_file_reader.ArrowFileReader newPathFull(string path, parquet.reader_properties.ReaderProperties properties = null)
  {
    GParquetArrowFileReader* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_path_full(_path, properties ? cast(GParquetReaderProperties*)properties._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(parquet.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Close the reader.
  */
  void close() nothrow
  {
    gparquet_arrow_file_reader_close(cast(GParquetArrowFileReader*)this._cPtr);
  }

  /** */
  parquet.file_metadata.FileMetadata getMetadata() nothrow
  {
    GParquetFileMetadata* _cretval;
    _cretval = gparquet_arrow_file_reader_get_metadata(cast(GParquetArrowFileReader*)this._cPtr);
    auto _retval = gobject.object.ObjectWrap._getDObject!(parquet.file_metadata.FileMetadata)(cast(GParquetFileMetadata*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getNRowGroups() nothrow
  {
    int _retval;
    _retval = gparquet_arrow_file_reader_get_n_row_groups(cast(GParquetArrowFileReader*)this._cPtr);
    return _retval;
  }

  /** */
  long getNRows() nothrow
  {
    long _retval;
    _retval = gparquet_arrow_file_reader_get_n_rows(cast(GParquetArrowFileReader*)this._cPtr);
    return _retval;
  }

  /** */
  arrow.schema.Schema getSchema()
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_get_schema(cast(GParquetArrowFileReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(arrow.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  arrow.chunked_array.ChunkedArray readColumnData(int i)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_read_column_data(cast(GParquetArrowFileReader*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(arrow.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  arrow.table.Table readRowGroup(int rowGroupIndex, int[] columnIndices = null)
  {
    GArrowTable* _cretval;
    size_t _nColumnIndices;
    if (columnIndices)
      _nColumnIndices = cast(size_t)columnIndices.length;

    auto _columnIndices = cast(int*)columnIndices.ptr;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_read_row_group(cast(GParquetArrowFileReader*)this._cPtr, rowGroupIndex, _columnIndices, _nColumnIndices, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(arrow.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  arrow.table.Table readTable()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_read_table(cast(GParquetArrowFileReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gobject.object.ObjectWrap._getDObject!(arrow.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  void setUseThreads(bool useThreads) nothrow
  {
    gparquet_arrow_file_reader_set_use_threads(cast(GParquetArrowFileReader*)this._cPtr, useThreads);
  }
}

/// Fluent builder implementation template for [parquet.arrow_file_reader.ArrowFileReader]
class ArrowFileReaderGidBuilderImpl(T) : gobject.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T arrowFileReader(void* propval) nothrow
  {
    return setProperty("arrow-file-reader", propval);
  }

  /**
      Set `source` property.
      Params:
        propval = The source stream for this reader.
      Returns: Builder instance for fluent chaining
  */
  T source(arrow.seekable_input_stream.SeekableInputStream propval) nothrow
  {
    return setProperty("source", propval);
  }
}

/// Fluent builder for [parquet.arrow_file_reader.ArrowFileReader]
final class ArrowFileReaderGidBuilder : ArrowFileReaderGidBuilderImpl!ArrowFileReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ArrowFileReader build() nothrow
  {
    return new ArrowFileReader(cast(void*)createGObject(ArrowFileReader._getGType), Yes.Take);
  }
}
