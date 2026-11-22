/// Module for [CSVWriter] class
module gid_apache.arrow26.csvwriter;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.csvwrite_options;
import gid_apache.arrow26.output_stream;
import gid_apache.arrow26.record_batch_writer;
import gid_apache.arrow26.schema;
import gid_apache.arrow26.types;

/** */
class CSVWriter : gid_apache.arrow26.record_batch_writer.RecordBatchWriter
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
    return cast(void function())garrow_csv_writer_get_type != &gidSymbolNotFound ? garrow_csv_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCSVWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override CSVWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.csvwriter.CSVWriter]
      Returns: New builder object
  */
  static CSVWriterGidBuilder builder() nothrow
  {
    return new CSVWriterGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.output_stream.OutputStream sink, gid_apache.arrow26.schema.Schema schema, gid_apache.arrow26.csvwrite_options.CSVWriteOptions options = null)
  {
    GArrowCSVWriter* _cretval;
    GError *_err;
    _cretval = garrow_csv_writer_new(sink ? cast(GArrowOutputStream*)sink._cPtr(No.Dup) : null, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, options ? cast(GArrowCSVWriteOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.csvwriter.CSVWriter]
class CSVWriterGidBuilderImpl(T) : gid_apache.arrow26.record_batch_writer.RecordBatchWriterGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.csvwriter.CSVWriter]
final class CSVWriterGidBuilder : CSVWriterGidBuilderImpl!CSVWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CSVWriter build() nothrow
  {
    return new CSVWriter(cast(void*)createGObject(CSVWriter._getGType), Yes.Take);
  }
}
