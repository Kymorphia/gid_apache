/// Module for [ParquetFileFormat] class
module gid_apache.arrowdataset25.parquet_file_format;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowdataset25.c.functions;
import gid_apache.arrowdataset25.c.types;
import gid_apache.arrowdataset25.file_format;
import gid_apache.arrowdataset25.types;

/** */
class ParquetFileFormat : gid_apache.arrowdataset25.file_format.FileFormat
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
    return cast(void function())gadataset_parquet_file_format_get_type != &gidSymbolNotFound ? gadataset_parquet_file_format_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetParquetFileFormat";
  }

  /** Returns `this`, for use in `with` statements. */
  override ParquetFileFormat self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset25.parquet_file_format.ParquetFileFormat]
      Returns: New builder object
  */
  static ParquetFileFormatGidBuilder builder() nothrow
  {
    return new ParquetFileFormatGidBuilder;
  }

  /** */
  this() nothrow
  {
    GADatasetParquetFileFormat* _cretval;
    _cretval = gadataset_parquet_file_format_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset25.parquet_file_format.ParquetFileFormat]
class ParquetFileFormatGidBuilderImpl(T) : gid_apache.arrowdataset25.file_format.FileFormatGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowdataset25.parquet_file_format.ParquetFileFormat]
final class ParquetFileFormatGidBuilder : ParquetFileFormatGidBuilderImpl!ParquetFileFormatGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ParquetFileFormat build() nothrow
  {
    return new ParquetFileFormat(cast(void*)createGObject(ParquetFileFormat._getGType), Yes.Take);
  }
}
