/// Module for [TableBatchReader] class
module gid_apache.arrow22.table_batch_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.record_batch_reader;
import gid_apache.arrow22.table;
import gid_apache.arrow22.types;

/** */
class TableBatchReader : gid_apache.arrow22.record_batch_reader.RecordBatchReader
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
    return cast(void function())garrow_table_batch_reader_get_type != &gidSymbolNotFound ? garrow_table_batch_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTableBatchReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override TableBatchReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.table_batch_reader.TableBatchReader]
      Returns: New builder object
  */
  static TableBatchReaderGidBuilder builder() nothrow
  {
    return new TableBatchReaderGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.table.Table table) nothrow
  {
    GArrowTableBatchReader* _cretval;
    _cretval = garrow_table_batch_reader_new(table ? cast(GArrowTable*)table._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /**
      Set the desired maximum chunk size of record batches.
      
      The actual chunk size of each record batch may be smaller,
      depending on actual chunking characteristics of each table column.
  
      Params:
        maxChunkSize = The maximum chunk size of record batches.
  */
  void setMaxChunkSize(long maxChunkSize) nothrow
  {
    garrow_table_batch_reader_set_max_chunk_size(cast(GArrowTableBatchReader*)this._cPtr, maxChunkSize);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.table_batch_reader.TableBatchReader]
class TableBatchReaderGidBuilderImpl(T) : gid_apache.arrow22.record_batch_reader.RecordBatchReaderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.table_batch_reader.TableBatchReader]
final class TableBatchReaderGidBuilder : TableBatchReaderGidBuilderImpl!TableBatchReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TableBatchReader build() nothrow
  {
    return new TableBatchReader(cast(void*)createGObject(TableBatchReader._getGType), Yes.Take);
  }
}
