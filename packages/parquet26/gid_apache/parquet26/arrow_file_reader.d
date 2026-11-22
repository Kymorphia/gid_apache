/// Module for [ArrowFileReader] class
module gid_apache.parquet26.arrow_file_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.chunked_array;
import gid_apache.arrow26.schema;
import gid_apache.arrow26.seekable_input_stream;
import gid_apache.arrow26.table;
import gid_apache.parquet26.c.functions;
import gid_apache.parquet26.c.types;
import gid_apache.parquet26.file_metadata;
import gid_apache.parquet26.reader_properties;
import gid_apache.parquet26.types;

/** */
class ArrowFileReader : gid.gobject2.object.ObjectWrap
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
      Get builder for [gid_apache.parquet26.arrow_file_reader.ArrowFileReader]
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
  @property gid_apache.arrow26.seekable_input_stream.SeekableInputStream source() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.seekable_input_stream.SeekableInputStream)("source");
  }

  /** */
  static gid_apache.parquet26.arrow_file_reader.ArrowFileReader newArrow(gid_apache.arrow26.seekable_input_stream.SeekableInputStream source)
  {
    GParquetArrowFileReader* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_arrow(source ? cast(GArrowSeekableInputStream*)source._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet26.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
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
  static gid_apache.parquet26.arrow_file_reader.ArrowFileReader newArrowFull(gid_apache.arrow26.seekable_input_stream.SeekableInputStream source, gid_apache.parquet26.reader_properties.ReaderProperties properties = null)
  {
    GParquetArrowFileReader* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_arrow_full(source ? cast(GArrowSeekableInputStream*)source._cPtr(No.Dup) : null, properties ? cast(GParquetReaderProperties*)properties._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet26.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.parquet26.arrow_file_reader.ArrowFileReader newPath(string path)
  {
    GParquetArrowFileReader* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_path(_path, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet26.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      The reader copies properties at construction. Later changes to properties
      do not affect the reader. The file is memory mapped, as with
      [gid_apache.parquet26.arrow_file_reader.ArrowFileReader.newPath].
  
      Params:
        path = Path to be read.
        properties = Reader properties or null for the defaults.
      Returns: A newly created #GParquetArrowFileReader.
      Throws: [ErrorWrap]
  */
  static gid_apache.parquet26.arrow_file_reader.ArrowFileReader newPathFull(string path, gid_apache.parquet26.reader_properties.ReaderProperties properties = null)
  {
    GParquetArrowFileReader* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = gparquet_arrow_file_reader_new_path_full(_path, properties ? cast(GParquetReaderProperties*)properties._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet26.arrow_file_reader.ArrowFileReader)(cast(GParquetArrowFileReader*)_cretval, Yes.Take);
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
  gid_apache.parquet26.file_metadata.FileMetadata getMetadata() nothrow
  {
    GParquetFileMetadata* _cretval;
    _cretval = gparquet_arrow_file_reader_get_metadata(cast(GParquetArrowFileReader*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet26.file_metadata.FileMetadata)(cast(GParquetFileMetadata*)_cretval, Yes.Take);
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
  gid_apache.arrow26.schema.Schema getSchema()
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_get_schema(cast(GParquetArrowFileReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.chunked_array.ChunkedArray readColumnData(int i)
  {
    GArrowChunkedArray* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_read_column_data(cast(GParquetArrowFileReader*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.table.Table readRowGroup(int rowGroupIndex, int[] columnIndices = null)
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
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.table.Table readTable()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_reader_read_table(cast(GParquetArrowFileReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  void setUseThreads(bool useThreads) nothrow
  {
    gparquet_arrow_file_reader_set_use_threads(cast(GParquetArrowFileReader*)this._cPtr, useThreads);
  }
}

/// Fluent builder implementation template for [gid_apache.parquet26.arrow_file_reader.ArrowFileReader]
class ArrowFileReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
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
  T source(gid_apache.arrow26.seekable_input_stream.SeekableInputStream propval) nothrow
  {
    return setProperty("source", propval);
  }
}

/// Fluent builder for [gid_apache.parquet26.arrow_file_reader.ArrowFileReader]
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
