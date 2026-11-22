/// Module for [FileWriter] class
module gid_apache.arrowdataset19.file_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.record_batch;
import gid_apache.arrow19.record_batch_reader;
import gid_apache.arrowdataset19.c.functions;
import gid_apache.arrowdataset19.c.types;
import gid_apache.arrowdataset19.types;

/** */
class FileWriter : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_file_writer_get_type != &gidSymbolNotFound ? gadataset_file_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFileWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override FileWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset19.file_writer.FileWriter]
      Returns: New builder object
  */
  static FileWriterGidBuilder builder() nothrow
  {
    return new FileWriterGidBuilder;
  }

  /** */
  bool finish()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gadataset_file_writer_finish(cast(GADatasetFileWriter*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool writeRecordBatch(gid_apache.arrow19.record_batch.RecordBatch recordBatch)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gadataset_file_writer_write_record_batch(cast(GADatasetFileWriter*)this._cPtr, recordBatch ? cast(GArrowRecordBatch*)recordBatch._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool writeRecordBatchReader(gid_apache.arrow19.record_batch_reader.RecordBatchReader reader)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gadataset_file_writer_write_record_batch_reader(cast(GADatasetFileWriter*)this._cPtr, reader ? cast(GArrowRecordBatchReader*)reader._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset19.file_writer.FileWriter]
class FileWriterGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T writer(void* propval) nothrow
  {
    return setProperty("writer", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset19.file_writer.FileWriter]
final class FileWriterGidBuilder : FileWriterGidBuilderImpl!FileWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FileWriter build() nothrow
  {
    return new FileWriter(cast(void*)createGObject(FileWriter._getGType), Yes.Take);
  }
}
