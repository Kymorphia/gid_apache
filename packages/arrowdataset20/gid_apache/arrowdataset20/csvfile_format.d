/// Module for [CSVFileFormat] class
module gid_apache.arrowdataset20.csvfile_format;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowdataset20.c.functions;
import gid_apache.arrowdataset20.c.types;
import gid_apache.arrowdataset20.file_format;
import gid_apache.arrowdataset20.types;

/** */
class CSVFileFormat : gid_apache.arrowdataset20.file_format.FileFormat
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
    return cast(void function())gadataset_csv_file_format_get_type != &gidSymbolNotFound ? gadataset_csv_file_format_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetCSVFileFormat";
  }

  /** Returns `this`, for use in `with` statements. */
  override CSVFileFormat self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset20.csvfile_format.CSVFileFormat]
      Returns: New builder object
  */
  static CSVFileFormatGidBuilder builder() nothrow
  {
    return new CSVFileFormatGidBuilder;
  }

  /** */
  this() nothrow
  {
    GADatasetCSVFileFormat* _cretval;
    _cretval = gadataset_csv_file_format_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset20.csvfile_format.CSVFileFormat]
class CSVFileFormatGidBuilderImpl(T) : gid_apache.arrowdataset20.file_format.FileFormatGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowdataset20.csvfile_format.CSVFileFormat]
final class CSVFileFormatGidBuilder : CSVFileFormatGidBuilderImpl!CSVFileFormatGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CSVFileFormat build() nothrow
  {
    return new CSVFileFormat(cast(void*)createGObject(CSVFileFormat._getGType), Yes.Take);
  }
}
