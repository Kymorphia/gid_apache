/// Module for [ArrowFileWriter] class
module gid_apache.parquet21.arrow_file_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.chunked_array;
import gid_apache.arrow21.output_stream;
import gid_apache.arrow21.record_batch;
import gid_apache.arrow21.schema;
import gid_apache.arrow21.table;
import gid_apache.parquet21.c.functions;
import gid_apache.parquet21.c.types;
import gid_apache.parquet21.types;
import gid_apache.parquet21.writer_properties;

/** */
class ArrowFileWriter : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gparquet_arrow_file_writer_get_type != &gidSymbolNotFound ? gparquet_arrow_file_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GParquetArrowFileWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override ArrowFileWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.parquet21.arrow_file_writer.ArrowFileWriter]
      Returns: New builder object
  */
  static ArrowFileWriterGidBuilder builder() nothrow
  {
    return new ArrowFileWriterGidBuilder;
  }

  /** */
  static gid_apache.parquet21.arrow_file_writer.ArrowFileWriter newArrow(gid_apache.arrow21.schema.Schema schema, gid_apache.arrow21.output_stream.OutputStream sink, gid_apache.parquet21.writer_properties.WriterProperties writerProperties = null)
  {
    GParquetArrowFileWriter* _cretval;
    GError *_err;
    _cretval = gparquet_arrow_file_writer_new_arrow(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, writerProperties ? cast(GParquetWriterProperties*)writerProperties._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet21.arrow_file_writer.ArrowFileWriter)(cast(GParquetArrowFileWriter*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.parquet21.arrow_file_writer.ArrowFileWriter newPath(gid_apache.arrow21.schema.Schema schema, string path, gid_apache.parquet21.writer_properties.WriterProperties writerProperties = null)
  {
    GParquetArrowFileWriter* _cretval;
    const(char)* _path = path.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = gparquet_arrow_file_writer_new_path(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, _path, writerProperties ? cast(GParquetWriterProperties*)writerProperties._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.parquet21.arrow_file_writer.ArrowFileWriter)(cast(GParquetArrowFileWriter*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool close()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gparquet_arrow_file_writer_close(cast(GParquetArrowFileWriter*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.schema.Schema getSchema() nothrow
  {
    GArrowSchema* _cretval;
    _cretval = gparquet_arrow_file_writer_get_schema(cast(GParquetArrowFileWriter*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Start a new buffered row group.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool newBufferedRowGroup()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gparquet_arrow_file_writer_new_buffered_row_group(cast(GParquetArrowFileWriter*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Start a new row group.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool newRowGroup()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gparquet_arrow_file_writer_new_row_group(cast(GParquetArrowFileWriter*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Start a chunked array as a column chunk.
  
      Params:
        chunkedArray = A #GArrowChunkedArray to be written.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool writeChunkedArray(gid_apache.arrow21.chunked_array.ChunkedArray chunkedArray)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gparquet_arrow_file_writer_write_chunked_array(cast(GParquetArrowFileWriter*)this._cPtr, chunkedArray ? cast(GArrowChunkedArray*)chunkedArray._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Write a record batch into the buffered row group.
      
      Multiple record batches can be written into the same row group
      through this function.
      
      [gid_apache.parquet26.writer_properties.WriterProperties.getMaxRowGroupLength] is respected
      and a new row group will be created if the current row group
      exceeds the limit.
      
      Record batches get flushed to the output stream once
      gparquet_file_writer_new_buffered_row_group() or
      gparquet_file_writer_close() is called.
  
      Params:
        recordBatch = A record batch to be written.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool writeRecordBatch(gid_apache.arrow21.record_batch.RecordBatch recordBatch)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gparquet_arrow_file_writer_write_record_batch(cast(GParquetArrowFileWriter*)this._cPtr, recordBatch ? cast(GArrowRecordBatch*)recordBatch._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool writeTable(gid_apache.arrow21.table.Table table, size_t chunkSize)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gparquet_arrow_file_writer_write_table(cast(GParquetArrowFileWriter*)this._cPtr, table ? cast(GArrowTable*)table._cPtr(No.Dup) : null, chunkSize, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.parquet21.arrow_file_writer.ArrowFileWriter]
class ArrowFileWriterGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T arrowFileWriter(void* propval) nothrow
  {
    return setProperty("arrow-file-writer", propval);
  }
}

/// Fluent builder for [gid_apache.parquet21.arrow_file_writer.ArrowFileWriter]
final class ArrowFileWriterGidBuilder : ArrowFileWriterGidBuilderImpl!ArrowFileWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ArrowFileWriter build() nothrow
  {
    return new ArrowFileWriter(cast(void*)createGObject(ArrowFileWriter._getGType), Yes.Take);
  }
}
