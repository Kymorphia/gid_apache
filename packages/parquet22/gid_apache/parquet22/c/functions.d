/// C functions for parquet22 library
module gid_apache.parquet22.c.functions;

public import gid.core.basictypes;
import gid.core.loader;
import gid_apache.parquet22.c.types;
static import gid_apache.parquet22.c._gidlib_Parquet;
public import gid_apache.arrow22.c.types;

private immutable LIBS = ["parquet-glib_2200"];

private __gshared immutable(bool)* _gidLibMarker = &gid_apache.parquet22.c._gidlib_Parquet.gidLibLinked;

// ArrowFileReader
private alias c_gparquet_arrow_file_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_arrow_file_reader_get_typeFn c_gparquet_arrow_file_reader_get_type; ///
private alias c_gparquet_arrow_file_reader_new_arrowFn = extern(C) GParquetArrowFileReader* function(GArrowSeekableInputStream* source, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_reader_new_arrowFn c_gparquet_arrow_file_reader_new_arrow; ///
private alias c_gparquet_arrow_file_reader_new_pathFn = extern(C) GParquetArrowFileReader* function(const(char)* path, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_reader_new_pathFn c_gparquet_arrow_file_reader_new_path; ///
private alias c_gparquet_arrow_file_reader_get_metadataFn = extern(C) GParquetFileMetadata* function(GParquetArrowFileReader* reader) nothrow;
__gshared c_gparquet_arrow_file_reader_get_metadataFn c_gparquet_arrow_file_reader_get_metadata; ///
private alias c_gparquet_arrow_file_reader_get_n_row_groupsFn = extern(C) int function(GParquetArrowFileReader* reader) nothrow;
__gshared c_gparquet_arrow_file_reader_get_n_row_groupsFn c_gparquet_arrow_file_reader_get_n_row_groups; ///
private alias c_gparquet_arrow_file_reader_get_n_rowsFn = extern(C) long function(GParquetArrowFileReader* reader) nothrow;
__gshared c_gparquet_arrow_file_reader_get_n_rowsFn c_gparquet_arrow_file_reader_get_n_rows; ///
private alias c_gparquet_arrow_file_reader_get_schemaFn = extern(C) GArrowSchema* function(GParquetArrowFileReader* reader, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_reader_get_schemaFn c_gparquet_arrow_file_reader_get_schema; ///
private alias c_gparquet_arrow_file_reader_read_column_dataFn = extern(C) GArrowChunkedArray* function(GParquetArrowFileReader* reader, int i, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_reader_read_column_dataFn c_gparquet_arrow_file_reader_read_column_data; ///
private alias c_gparquet_arrow_file_reader_read_row_groupFn = extern(C) GArrowTable* function(GParquetArrowFileReader* reader, int rowGroupIndex, int* columnIndices, size_t nColumnIndices, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_reader_read_row_groupFn c_gparquet_arrow_file_reader_read_row_group; ///
private alias c_gparquet_arrow_file_reader_read_tableFn = extern(C) GArrowTable* function(GParquetArrowFileReader* reader, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_reader_read_tableFn c_gparquet_arrow_file_reader_read_table; ///
private alias c_gparquet_arrow_file_reader_set_use_threadsFn = extern(C) void function(GParquetArrowFileReader* reader, gboolean useThreads) nothrow;
__gshared c_gparquet_arrow_file_reader_set_use_threadsFn c_gparquet_arrow_file_reader_set_use_threads; ///

// ArrowFileWriter
private alias c_gparquet_arrow_file_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_arrow_file_writer_get_typeFn c_gparquet_arrow_file_writer_get_type; ///
private alias c_gparquet_arrow_file_writer_new_arrowFn = extern(C) GParquetArrowFileWriter* function(GArrowSchema* schema, GArrowOutputStream* sink, GParquetWriterProperties* writerProperties, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_new_arrowFn c_gparquet_arrow_file_writer_new_arrow; ///
private alias c_gparquet_arrow_file_writer_new_pathFn = extern(C) GParquetArrowFileWriter* function(GArrowSchema* schema, const(char)* path, GParquetWriterProperties* writerProperties, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_new_pathFn c_gparquet_arrow_file_writer_new_path; ///
private alias c_gparquet_arrow_file_writer_closeFn = extern(C) gboolean function(GParquetArrowFileWriter* writer, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_closeFn c_gparquet_arrow_file_writer_close; ///
private alias c_gparquet_arrow_file_writer_get_schemaFn = extern(C) GArrowSchema* function(GParquetArrowFileWriter* writer) nothrow;
__gshared c_gparquet_arrow_file_writer_get_schemaFn c_gparquet_arrow_file_writer_get_schema; ///
private alias c_gparquet_arrow_file_writer_new_buffered_row_groupFn = extern(C) gboolean function(GParquetArrowFileWriter* writer, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_new_buffered_row_groupFn c_gparquet_arrow_file_writer_new_buffered_row_group; ///
private alias c_gparquet_arrow_file_writer_new_row_groupFn = extern(C) gboolean function(GParquetArrowFileWriter* writer, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_new_row_groupFn c_gparquet_arrow_file_writer_new_row_group; ///
private alias c_gparquet_arrow_file_writer_write_chunked_arrayFn = extern(C) gboolean function(GParquetArrowFileWriter* writer, GArrowChunkedArray* chunkedArray, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_write_chunked_arrayFn c_gparquet_arrow_file_writer_write_chunked_array; ///
private alias c_gparquet_arrow_file_writer_write_record_batchFn = extern(C) gboolean function(GParquetArrowFileWriter* writer, GArrowRecordBatch* recordBatch, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_write_record_batchFn c_gparquet_arrow_file_writer_write_record_batch; ///
private alias c_gparquet_arrow_file_writer_write_tableFn = extern(C) gboolean function(GParquetArrowFileWriter* writer, GArrowTable* table, size_t chunkSize, GError** _err) nothrow;
__gshared c_gparquet_arrow_file_writer_write_tableFn c_gparquet_arrow_file_writer_write_table; ///

// BooleanStatistics
private alias c_gparquet_boolean_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_boolean_statistics_get_typeFn c_gparquet_boolean_statistics_get_type; ///
private alias c_gparquet_boolean_statistics_get_maxFn = extern(C) gboolean function(GParquetBooleanStatistics* statistics) nothrow;
__gshared c_gparquet_boolean_statistics_get_maxFn c_gparquet_boolean_statistics_get_max; ///
private alias c_gparquet_boolean_statistics_get_minFn = extern(C) gboolean function(GParquetBooleanStatistics* statistics) nothrow;
__gshared c_gparquet_boolean_statistics_get_minFn c_gparquet_boolean_statistics_get_min; ///

// ByteArrayStatistics
private alias c_gparquet_byte_array_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_byte_array_statistics_get_typeFn c_gparquet_byte_array_statistics_get_type; ///
private alias c_gparquet_byte_array_statistics_get_maxFn = extern(C) GBytes* function(GParquetByteArrayStatistics* statistics) nothrow;
__gshared c_gparquet_byte_array_statistics_get_maxFn c_gparquet_byte_array_statistics_get_max; ///
private alias c_gparquet_byte_array_statistics_get_minFn = extern(C) GBytes* function(GParquetByteArrayStatistics* statistics) nothrow;
__gshared c_gparquet_byte_array_statistics_get_minFn c_gparquet_byte_array_statistics_get_min; ///

// ColumnChunkMetadata
private alias c_gparquet_column_chunk_metadata_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_column_chunk_metadata_get_typeFn c_gparquet_column_chunk_metadata_get_type; ///
private alias c_gparquet_column_chunk_metadata_can_decompressFn = extern(C) gboolean function(GParquetColumnChunkMetadata* metadata) nothrow;
__gshared c_gparquet_column_chunk_metadata_can_decompressFn c_gparquet_column_chunk_metadata_can_decompress; ///
private alias c_gparquet_column_chunk_metadata_equalFn = extern(C) gboolean function(GParquetColumnChunkMetadata* metadata, GParquetColumnChunkMetadata* otherMetadata) nothrow;
__gshared c_gparquet_column_chunk_metadata_equalFn c_gparquet_column_chunk_metadata_equal; ///
private alias c_gparquet_column_chunk_metadata_get_file_offsetFn = extern(C) long function(GParquetColumnChunkMetadata* metadata) nothrow;
__gshared c_gparquet_column_chunk_metadata_get_file_offsetFn c_gparquet_column_chunk_metadata_get_file_offset; ///
private alias c_gparquet_column_chunk_metadata_get_statisticsFn = extern(C) GParquetStatistics* function(GParquetColumnChunkMetadata* metadata) nothrow;
__gshared c_gparquet_column_chunk_metadata_get_statisticsFn c_gparquet_column_chunk_metadata_get_statistics; ///
private alias c_gparquet_column_chunk_metadata_get_total_compressed_sizeFn = extern(C) long function(GParquetColumnChunkMetadata* metadata) nothrow;
__gshared c_gparquet_column_chunk_metadata_get_total_compressed_sizeFn c_gparquet_column_chunk_metadata_get_total_compressed_size; ///
private alias c_gparquet_column_chunk_metadata_get_total_sizeFn = extern(C) long function(GParquetColumnChunkMetadata* metadata) nothrow;
__gshared c_gparquet_column_chunk_metadata_get_total_sizeFn c_gparquet_column_chunk_metadata_get_total_size; ///

// DoubleStatistics
private alias c_gparquet_double_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_double_statistics_get_typeFn c_gparquet_double_statistics_get_type; ///
private alias c_gparquet_double_statistics_get_maxFn = extern(C) double function(GParquetDoubleStatistics* statistics) nothrow;
__gshared c_gparquet_double_statistics_get_maxFn c_gparquet_double_statistics_get_max; ///
private alias c_gparquet_double_statistics_get_minFn = extern(C) double function(GParquetDoubleStatistics* statistics) nothrow;
__gshared c_gparquet_double_statistics_get_minFn c_gparquet_double_statistics_get_min; ///

// FileMetadata
private alias c_gparquet_file_metadata_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_file_metadata_get_typeFn c_gparquet_file_metadata_get_type; ///
private alias c_gparquet_file_metadata_can_decompressFn = extern(C) gboolean function(GParquetFileMetadata* metadata) nothrow;
__gshared c_gparquet_file_metadata_can_decompressFn c_gparquet_file_metadata_can_decompress; ///
private alias c_gparquet_file_metadata_equalFn = extern(C) gboolean function(GParquetFileMetadata* metadata, GParquetFileMetadata* otherMetadata) nothrow;
__gshared c_gparquet_file_metadata_equalFn c_gparquet_file_metadata_equal; ///
private alias c_gparquet_file_metadata_get_created_byFn = extern(C) const(char)* function(GParquetFileMetadata* metadata) nothrow;
__gshared c_gparquet_file_metadata_get_created_byFn c_gparquet_file_metadata_get_created_by; ///
private alias c_gparquet_file_metadata_get_n_columnsFn = extern(C) int function(GParquetFileMetadata* metadata) nothrow;
__gshared c_gparquet_file_metadata_get_n_columnsFn c_gparquet_file_metadata_get_n_columns; ///
private alias c_gparquet_file_metadata_get_n_row_groupsFn = extern(C) int function(GParquetFileMetadata* metadata) nothrow;
__gshared c_gparquet_file_metadata_get_n_row_groupsFn c_gparquet_file_metadata_get_n_row_groups; ///
private alias c_gparquet_file_metadata_get_n_rowsFn = extern(C) long function(GParquetFileMetadata* metadata) nothrow;
__gshared c_gparquet_file_metadata_get_n_rowsFn c_gparquet_file_metadata_get_n_rows; ///
private alias c_gparquet_file_metadata_get_n_schema_elementsFn = extern(C) int function(GParquetFileMetadata* metadata) nothrow;
__gshared c_gparquet_file_metadata_get_n_schema_elementsFn c_gparquet_file_metadata_get_n_schema_elements; ///
private alias c_gparquet_file_metadata_get_row_groupFn = extern(C) GParquetRowGroupMetadata* function(GParquetFileMetadata* metadata, int index, GError** _err) nothrow;
__gshared c_gparquet_file_metadata_get_row_groupFn c_gparquet_file_metadata_get_row_group; ///
private alias c_gparquet_file_metadata_get_sizeFn = extern(C) uint function(GParquetFileMetadata* metadata) nothrow;
__gshared c_gparquet_file_metadata_get_sizeFn c_gparquet_file_metadata_get_size; ///

// FixedLengthByteArrayStatistics
private alias c_gparquet_fixed_length_byte_array_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_fixed_length_byte_array_statistics_get_typeFn c_gparquet_fixed_length_byte_array_statistics_get_type; ///
private alias c_gparquet_fixed_length_byte_array_statistics_get_maxFn = extern(C) GBytes* function(GParquetFixedLengthByteArrayStatistics* statistics) nothrow;
__gshared c_gparquet_fixed_length_byte_array_statistics_get_maxFn c_gparquet_fixed_length_byte_array_statistics_get_max; ///
private alias c_gparquet_fixed_length_byte_array_statistics_get_minFn = extern(C) GBytes* function(GParquetFixedLengthByteArrayStatistics* statistics) nothrow;
__gshared c_gparquet_fixed_length_byte_array_statistics_get_minFn c_gparquet_fixed_length_byte_array_statistics_get_min; ///

// FloatStatistics
private alias c_gparquet_float_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_float_statistics_get_typeFn c_gparquet_float_statistics_get_type; ///
private alias c_gparquet_float_statistics_get_maxFn = extern(C) float function(GParquetFloatStatistics* statistics) nothrow;
__gshared c_gparquet_float_statistics_get_maxFn c_gparquet_float_statistics_get_max; ///
private alias c_gparquet_float_statistics_get_minFn = extern(C) float function(GParquetFloatStatistics* statistics) nothrow;
__gshared c_gparquet_float_statistics_get_minFn c_gparquet_float_statistics_get_min; ///

// Int32Statistics
private alias c_gparquet_int32_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_int32_statistics_get_typeFn c_gparquet_int32_statistics_get_type; ///
private alias c_gparquet_int32_statistics_get_maxFn = extern(C) int function(GParquetInt32Statistics* statistics) nothrow;
__gshared c_gparquet_int32_statistics_get_maxFn c_gparquet_int32_statistics_get_max; ///
private alias c_gparquet_int32_statistics_get_minFn = extern(C) int function(GParquetInt32Statistics* statistics) nothrow;
__gshared c_gparquet_int32_statistics_get_minFn c_gparquet_int32_statistics_get_min; ///

// Int64Statistics
private alias c_gparquet_int64_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_int64_statistics_get_typeFn c_gparquet_int64_statistics_get_type; ///
private alias c_gparquet_int64_statistics_get_maxFn = extern(C) long function(GParquetInt64Statistics* statistics) nothrow;
__gshared c_gparquet_int64_statistics_get_maxFn c_gparquet_int64_statistics_get_max; ///
private alias c_gparquet_int64_statistics_get_minFn = extern(C) long function(GParquetInt64Statistics* statistics) nothrow;
__gshared c_gparquet_int64_statistics_get_minFn c_gparquet_int64_statistics_get_min; ///

// RowGroupMetadata
private alias c_gparquet_row_group_metadata_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_row_group_metadata_get_typeFn c_gparquet_row_group_metadata_get_type; ///
private alias c_gparquet_row_group_metadata_can_decompressFn = extern(C) gboolean function(GParquetRowGroupMetadata* metadata) nothrow;
__gshared c_gparquet_row_group_metadata_can_decompressFn c_gparquet_row_group_metadata_can_decompress; ///
private alias c_gparquet_row_group_metadata_equalFn = extern(C) gboolean function(GParquetRowGroupMetadata* metadata, GParquetRowGroupMetadata* otherMetadata) nothrow;
__gshared c_gparquet_row_group_metadata_equalFn c_gparquet_row_group_metadata_equal; ///
private alias c_gparquet_row_group_metadata_get_column_chunkFn = extern(C) GParquetColumnChunkMetadata* function(GParquetRowGroupMetadata* metadata, int index, GError** _err) nothrow;
__gshared c_gparquet_row_group_metadata_get_column_chunkFn c_gparquet_row_group_metadata_get_column_chunk; ///
private alias c_gparquet_row_group_metadata_get_file_offsetFn = extern(C) long function(GParquetRowGroupMetadata* metadata) nothrow;
__gshared c_gparquet_row_group_metadata_get_file_offsetFn c_gparquet_row_group_metadata_get_file_offset; ///
private alias c_gparquet_row_group_metadata_get_n_columnsFn = extern(C) int function(GParquetRowGroupMetadata* metadata) nothrow;
__gshared c_gparquet_row_group_metadata_get_n_columnsFn c_gparquet_row_group_metadata_get_n_columns; ///
private alias c_gparquet_row_group_metadata_get_n_rowsFn = extern(C) long function(GParquetRowGroupMetadata* metadata) nothrow;
__gshared c_gparquet_row_group_metadata_get_n_rowsFn c_gparquet_row_group_metadata_get_n_rows; ///
private alias c_gparquet_row_group_metadata_get_total_compressed_sizeFn = extern(C) long function(GParquetRowGroupMetadata* metadata) nothrow;
__gshared c_gparquet_row_group_metadata_get_total_compressed_sizeFn c_gparquet_row_group_metadata_get_total_compressed_size; ///
private alias c_gparquet_row_group_metadata_get_total_sizeFn = extern(C) long function(GParquetRowGroupMetadata* metadata) nothrow;
__gshared c_gparquet_row_group_metadata_get_total_sizeFn c_gparquet_row_group_metadata_get_total_size; ///

// Statistics
private alias c_gparquet_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_statistics_get_typeFn c_gparquet_statistics_get_type; ///
private alias c_gparquet_statistics_equalFn = extern(C) gboolean function(GParquetStatistics* statistics, GParquetStatistics* otherStatistics) nothrow;
__gshared c_gparquet_statistics_equalFn c_gparquet_statistics_equal; ///
private alias c_gparquet_statistics_get_n_distinct_valuesFn = extern(C) long function(GParquetStatistics* statistics) nothrow;
__gshared c_gparquet_statistics_get_n_distinct_valuesFn c_gparquet_statistics_get_n_distinct_values; ///
private alias c_gparquet_statistics_get_n_nullsFn = extern(C) long function(GParquetStatistics* statistics) nothrow;
__gshared c_gparquet_statistics_get_n_nullsFn c_gparquet_statistics_get_n_nulls; ///
private alias c_gparquet_statistics_get_n_valuesFn = extern(C) long function(GParquetStatistics* statistics) nothrow;
__gshared c_gparquet_statistics_get_n_valuesFn c_gparquet_statistics_get_n_values; ///
private alias c_gparquet_statistics_has_min_maxFn = extern(C) gboolean function(GParquetStatistics* statistics) nothrow;
__gshared c_gparquet_statistics_has_min_maxFn c_gparquet_statistics_has_min_max; ///
private alias c_gparquet_statistics_has_n_distinct_valuesFn = extern(C) gboolean function(GParquetStatistics* statistics) nothrow;
__gshared c_gparquet_statistics_has_n_distinct_valuesFn c_gparquet_statistics_has_n_distinct_values; ///
private alias c_gparquet_statistics_has_n_nullsFn = extern(C) gboolean function(GParquetStatistics* statistics) nothrow;
__gshared c_gparquet_statistics_has_n_nullsFn c_gparquet_statistics_has_n_nulls; ///

// WriterProperties
private alias c_gparquet_writer_properties_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gparquet_writer_properties_get_typeFn c_gparquet_writer_properties_get_type; ///
private alias c_gparquet_writer_properties_newFn = extern(C) GParquetWriterProperties* function() nothrow;
__gshared c_gparquet_writer_properties_newFn c_gparquet_writer_properties_new; ///
private alias c_gparquet_writer_properties_disable_dictionaryFn = extern(C) void function(GParquetWriterProperties* properties, const(char)* path) nothrow;
__gshared c_gparquet_writer_properties_disable_dictionaryFn c_gparquet_writer_properties_disable_dictionary; ///
private alias c_gparquet_writer_properties_enable_dictionaryFn = extern(C) void function(GParquetWriterProperties* properties, const(char)* path) nothrow;
__gshared c_gparquet_writer_properties_enable_dictionaryFn c_gparquet_writer_properties_enable_dictionary; ///
private alias c_gparquet_writer_properties_get_batch_sizeFn = extern(C) long function(GParquetWriterProperties* properties) nothrow;
__gshared c_gparquet_writer_properties_get_batch_sizeFn c_gparquet_writer_properties_get_batch_size; ///
private alias c_gparquet_writer_properties_get_compression_pathFn = extern(C) GArrowCompressionType function(GParquetWriterProperties* properties, const(char)* path) nothrow;
__gshared c_gparquet_writer_properties_get_compression_pathFn c_gparquet_writer_properties_get_compression_path; ///
private alias c_gparquet_writer_properties_get_data_page_sizeFn = extern(C) long function(GParquetWriterProperties* properties) nothrow;
__gshared c_gparquet_writer_properties_get_data_page_sizeFn c_gparquet_writer_properties_get_data_page_size; ///
private alias c_gparquet_writer_properties_get_dictionary_page_size_limitFn = extern(C) long function(GParquetWriterProperties* properties) nothrow;
__gshared c_gparquet_writer_properties_get_dictionary_page_size_limitFn c_gparquet_writer_properties_get_dictionary_page_size_limit; ///
private alias c_gparquet_writer_properties_get_max_row_group_lengthFn = extern(C) long function(GParquetWriterProperties* properties) nothrow;
__gshared c_gparquet_writer_properties_get_max_row_group_lengthFn c_gparquet_writer_properties_get_max_row_group_length; ///
private alias c_gparquet_writer_properties_is_dictionary_enabledFn = extern(C) gboolean function(GParquetWriterProperties* properties, const(char)* path) nothrow;
__gshared c_gparquet_writer_properties_is_dictionary_enabledFn c_gparquet_writer_properties_is_dictionary_enabled; ///
private alias c_gparquet_writer_properties_set_batch_sizeFn = extern(C) void function(GParquetWriterProperties* properties, long batchSize) nothrow;
__gshared c_gparquet_writer_properties_set_batch_sizeFn c_gparquet_writer_properties_set_batch_size; ///
private alias c_gparquet_writer_properties_set_compressionFn = extern(C) void function(GParquetWriterProperties* properties, GArrowCompressionType compressionType, const(char)* path) nothrow;
__gshared c_gparquet_writer_properties_set_compressionFn c_gparquet_writer_properties_set_compression; ///
private alias c_gparquet_writer_properties_set_data_page_sizeFn = extern(C) void function(GParquetWriterProperties* properties, long dataPageSize) nothrow;
__gshared c_gparquet_writer_properties_set_data_page_sizeFn c_gparquet_writer_properties_set_data_page_size; ///
private alias c_gparquet_writer_properties_set_dictionary_page_size_limitFn = extern(C) void function(GParquetWriterProperties* properties, long limit) nothrow;
__gshared c_gparquet_writer_properties_set_dictionary_page_size_limitFn c_gparquet_writer_properties_set_dictionary_page_size_limit; ///
private alias c_gparquet_writer_properties_set_max_row_group_lengthFn = extern(C) void function(GParquetWriterProperties* properties, long length) nothrow;
__gshared c_gparquet_writer_properties_set_max_row_group_lengthFn c_gparquet_writer_properties_set_max_row_group_length; ///

// ArrowFileReader

/** */
alias gparquet_arrow_file_reader_get_type = c_gparquet_arrow_file_reader_get_type;

/** */
alias gparquet_arrow_file_reader_new_arrow = c_gparquet_arrow_file_reader_new_arrow;

/** */
alias gparquet_arrow_file_reader_new_path = c_gparquet_arrow_file_reader_new_path;

/** */
alias gparquet_arrow_file_reader_get_metadata = c_gparquet_arrow_file_reader_get_metadata;

/** */
alias gparquet_arrow_file_reader_get_n_row_groups = c_gparquet_arrow_file_reader_get_n_row_groups;

/** */
alias gparquet_arrow_file_reader_get_n_rows = c_gparquet_arrow_file_reader_get_n_rows;

/** */
alias gparquet_arrow_file_reader_get_schema = c_gparquet_arrow_file_reader_get_schema;

/** */
alias gparquet_arrow_file_reader_read_column_data = c_gparquet_arrow_file_reader_read_column_data;

/** */
alias gparquet_arrow_file_reader_read_row_group = c_gparquet_arrow_file_reader_read_row_group;

/** */
alias gparquet_arrow_file_reader_read_table = c_gparquet_arrow_file_reader_read_table;

/** */
alias gparquet_arrow_file_reader_set_use_threads = c_gparquet_arrow_file_reader_set_use_threads;

// ArrowFileWriter

/** */
alias gparquet_arrow_file_writer_get_type = c_gparquet_arrow_file_writer_get_type;

/** */
alias gparquet_arrow_file_writer_new_arrow = c_gparquet_arrow_file_writer_new_arrow;

/** */
alias gparquet_arrow_file_writer_new_path = c_gparquet_arrow_file_writer_new_path;

/** */
alias gparquet_arrow_file_writer_close = c_gparquet_arrow_file_writer_close;

/** */
alias gparquet_arrow_file_writer_get_schema = c_gparquet_arrow_file_writer_get_schema;

/** */
alias gparquet_arrow_file_writer_new_buffered_row_group = c_gparquet_arrow_file_writer_new_buffered_row_group;

/** */
alias gparquet_arrow_file_writer_new_row_group = c_gparquet_arrow_file_writer_new_row_group;

/** */
alias gparquet_arrow_file_writer_write_chunked_array = c_gparquet_arrow_file_writer_write_chunked_array;

/** */
alias gparquet_arrow_file_writer_write_record_batch = c_gparquet_arrow_file_writer_write_record_batch;

/** */
alias gparquet_arrow_file_writer_write_table = c_gparquet_arrow_file_writer_write_table;

// BooleanStatistics

/** */
alias gparquet_boolean_statistics_get_type = c_gparquet_boolean_statistics_get_type;

/** */
alias gparquet_boolean_statistics_get_max = c_gparquet_boolean_statistics_get_max;

/** */
alias gparquet_boolean_statistics_get_min = c_gparquet_boolean_statistics_get_min;

// ByteArrayStatistics

/** */
alias gparquet_byte_array_statistics_get_type = c_gparquet_byte_array_statistics_get_type;

/** */
alias gparquet_byte_array_statistics_get_max = c_gparquet_byte_array_statistics_get_max;

/** */
alias gparquet_byte_array_statistics_get_min = c_gparquet_byte_array_statistics_get_min;

// ColumnChunkMetadata

/** */
alias gparquet_column_chunk_metadata_get_type = c_gparquet_column_chunk_metadata_get_type;

/** */
alias gparquet_column_chunk_metadata_can_decompress = c_gparquet_column_chunk_metadata_can_decompress;

/** */
alias gparquet_column_chunk_metadata_equal = c_gparquet_column_chunk_metadata_equal;

/** */
alias gparquet_column_chunk_metadata_get_file_offset = c_gparquet_column_chunk_metadata_get_file_offset;

/** */
alias gparquet_column_chunk_metadata_get_statistics = c_gparquet_column_chunk_metadata_get_statistics;

/** */
alias gparquet_column_chunk_metadata_get_total_compressed_size = c_gparquet_column_chunk_metadata_get_total_compressed_size;

/** */
alias gparquet_column_chunk_metadata_get_total_size = c_gparquet_column_chunk_metadata_get_total_size;

// DoubleStatistics

/** */
alias gparquet_double_statistics_get_type = c_gparquet_double_statistics_get_type;

/** */
alias gparquet_double_statistics_get_max = c_gparquet_double_statistics_get_max;

/** */
alias gparquet_double_statistics_get_min = c_gparquet_double_statistics_get_min;

// FileMetadata

/** */
alias gparquet_file_metadata_get_type = c_gparquet_file_metadata_get_type;

/** */
alias gparquet_file_metadata_can_decompress = c_gparquet_file_metadata_can_decompress;

/** */
alias gparquet_file_metadata_equal = c_gparquet_file_metadata_equal;

/** */
alias gparquet_file_metadata_get_created_by = c_gparquet_file_metadata_get_created_by;

/** */
alias gparquet_file_metadata_get_n_columns = c_gparquet_file_metadata_get_n_columns;

/** */
alias gparquet_file_metadata_get_n_row_groups = c_gparquet_file_metadata_get_n_row_groups;

/** */
alias gparquet_file_metadata_get_n_rows = c_gparquet_file_metadata_get_n_rows;

/** */
alias gparquet_file_metadata_get_n_schema_elements = c_gparquet_file_metadata_get_n_schema_elements;

/** */
alias gparquet_file_metadata_get_row_group = c_gparquet_file_metadata_get_row_group;

/** */
alias gparquet_file_metadata_get_size = c_gparquet_file_metadata_get_size;

// FixedLengthByteArrayStatistics

/** */
alias gparquet_fixed_length_byte_array_statistics_get_type = c_gparquet_fixed_length_byte_array_statistics_get_type;

/** */
alias gparquet_fixed_length_byte_array_statistics_get_max = c_gparquet_fixed_length_byte_array_statistics_get_max;

/** */
alias gparquet_fixed_length_byte_array_statistics_get_min = c_gparquet_fixed_length_byte_array_statistics_get_min;

// FloatStatistics

/** */
alias gparquet_float_statistics_get_type = c_gparquet_float_statistics_get_type;

/** */
alias gparquet_float_statistics_get_max = c_gparquet_float_statistics_get_max;

/** */
alias gparquet_float_statistics_get_min = c_gparquet_float_statistics_get_min;

// Int32Statistics

/** */
alias gparquet_int32_statistics_get_type = c_gparquet_int32_statistics_get_type;

/** */
alias gparquet_int32_statistics_get_max = c_gparquet_int32_statistics_get_max;

/** */
alias gparquet_int32_statistics_get_min = c_gparquet_int32_statistics_get_min;

// Int64Statistics

/** */
alias gparquet_int64_statistics_get_type = c_gparquet_int64_statistics_get_type;

/** */
alias gparquet_int64_statistics_get_max = c_gparquet_int64_statistics_get_max;

/** */
alias gparquet_int64_statistics_get_min = c_gparquet_int64_statistics_get_min;

// RowGroupMetadata

/** */
alias gparquet_row_group_metadata_get_type = c_gparquet_row_group_metadata_get_type;

/** */
alias gparquet_row_group_metadata_can_decompress = c_gparquet_row_group_metadata_can_decompress;

/** */
alias gparquet_row_group_metadata_equal = c_gparquet_row_group_metadata_equal;

/** */
alias gparquet_row_group_metadata_get_column_chunk = c_gparquet_row_group_metadata_get_column_chunk;

/** */
alias gparquet_row_group_metadata_get_file_offset = c_gparquet_row_group_metadata_get_file_offset;

/** */
alias gparquet_row_group_metadata_get_n_columns = c_gparquet_row_group_metadata_get_n_columns;

/** */
alias gparquet_row_group_metadata_get_n_rows = c_gparquet_row_group_metadata_get_n_rows;

/** */
alias gparquet_row_group_metadata_get_total_compressed_size = c_gparquet_row_group_metadata_get_total_compressed_size;

/** */
alias gparquet_row_group_metadata_get_total_size = c_gparquet_row_group_metadata_get_total_size;

// Statistics

/** */
alias gparquet_statistics_get_type = c_gparquet_statistics_get_type;

/** */
alias gparquet_statistics_equal = c_gparquet_statistics_equal;

/** */
alias gparquet_statistics_get_n_distinct_values = c_gparquet_statistics_get_n_distinct_values;

/** */
alias gparquet_statistics_get_n_nulls = c_gparquet_statistics_get_n_nulls;

/** */
alias gparquet_statistics_get_n_values = c_gparquet_statistics_get_n_values;

/** */
alias gparquet_statistics_has_min_max = c_gparquet_statistics_has_min_max;

/** */
alias gparquet_statistics_has_n_distinct_values = c_gparquet_statistics_has_n_distinct_values;

/** */
alias gparquet_statistics_has_n_nulls = c_gparquet_statistics_has_n_nulls;

// WriterProperties

/** */
alias gparquet_writer_properties_get_type = c_gparquet_writer_properties_get_type;

/** */
alias gparquet_writer_properties_new = c_gparquet_writer_properties_new;

/** */
alias gparquet_writer_properties_disable_dictionary = c_gparquet_writer_properties_disable_dictionary;

/** */
alias gparquet_writer_properties_enable_dictionary = c_gparquet_writer_properties_enable_dictionary;

/** */
alias gparquet_writer_properties_get_batch_size = c_gparquet_writer_properties_get_batch_size;

/** */
alias gparquet_writer_properties_get_compression_path = c_gparquet_writer_properties_get_compression_path;

/** */
alias gparquet_writer_properties_get_data_page_size = c_gparquet_writer_properties_get_data_page_size;

/** */
alias gparquet_writer_properties_get_dictionary_page_size_limit = c_gparquet_writer_properties_get_dictionary_page_size_limit;

/** */
alias gparquet_writer_properties_get_max_row_group_length = c_gparquet_writer_properties_get_max_row_group_length;

/** */
alias gparquet_writer_properties_is_dictionary_enabled = c_gparquet_writer_properties_is_dictionary_enabled;

/** */
alias gparquet_writer_properties_set_batch_size = c_gparquet_writer_properties_set_batch_size;

/** */
alias gparquet_writer_properties_set_compression = c_gparquet_writer_properties_set_compression;

/** */
alias gparquet_writer_properties_set_data_page_size = c_gparquet_writer_properties_set_data_page_size;

/** */
alias gparquet_writer_properties_set_dictionary_page_size_limit = c_gparquet_writer_properties_set_dictionary_page_size_limit;

/** */
alias gparquet_writer_properties_set_max_row_group_length = c_gparquet_writer_properties_set_max_row_group_length;

shared static this()
{
  auto libs = gidResolveLibs(LIBS, "gid_apache.parquet22", "Parquet");

  // ArrowFileReader
  gidLink(cast(void**)&gparquet_arrow_file_reader_get_type, "gparquet_arrow_file_reader_get_type", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_new_arrow, "gparquet_arrow_file_reader_new_arrow", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_new_path, "gparquet_arrow_file_reader_new_path", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_get_metadata, "gparquet_arrow_file_reader_get_metadata", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_get_n_row_groups, "gparquet_arrow_file_reader_get_n_row_groups", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_get_n_rows, "gparquet_arrow_file_reader_get_n_rows", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_get_schema, "gparquet_arrow_file_reader_get_schema", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_read_column_data, "gparquet_arrow_file_reader_read_column_data", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_read_row_group, "gparquet_arrow_file_reader_read_row_group", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_read_table, "gparquet_arrow_file_reader_read_table", libs);
  gidLink(cast(void**)&gparquet_arrow_file_reader_set_use_threads, "gparquet_arrow_file_reader_set_use_threads", libs);

  // ArrowFileWriter
  gidLink(cast(void**)&gparquet_arrow_file_writer_get_type, "gparquet_arrow_file_writer_get_type", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_new_arrow, "gparquet_arrow_file_writer_new_arrow", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_new_path, "gparquet_arrow_file_writer_new_path", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_close, "gparquet_arrow_file_writer_close", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_get_schema, "gparquet_arrow_file_writer_get_schema", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_new_buffered_row_group, "gparquet_arrow_file_writer_new_buffered_row_group", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_new_row_group, "gparquet_arrow_file_writer_new_row_group", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_write_chunked_array, "gparquet_arrow_file_writer_write_chunked_array", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_write_record_batch, "gparquet_arrow_file_writer_write_record_batch", libs);
  gidLink(cast(void**)&gparquet_arrow_file_writer_write_table, "gparquet_arrow_file_writer_write_table", libs);

  // BooleanStatistics
  gidLink(cast(void**)&gparquet_boolean_statistics_get_type, "gparquet_boolean_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_boolean_statistics_get_max, "gparquet_boolean_statistics_get_max", libs);
  gidLink(cast(void**)&gparquet_boolean_statistics_get_min, "gparquet_boolean_statistics_get_min", libs);

  // ByteArrayStatistics
  gidLink(cast(void**)&gparquet_byte_array_statistics_get_type, "gparquet_byte_array_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_byte_array_statistics_get_max, "gparquet_byte_array_statistics_get_max", libs);
  gidLink(cast(void**)&gparquet_byte_array_statistics_get_min, "gparquet_byte_array_statistics_get_min", libs);

  // ColumnChunkMetadata
  gidLink(cast(void**)&gparquet_column_chunk_metadata_get_type, "gparquet_column_chunk_metadata_get_type", libs);
  gidLink(cast(void**)&gparquet_column_chunk_metadata_can_decompress, "gparquet_column_chunk_metadata_can_decompress", libs);
  gidLink(cast(void**)&gparquet_column_chunk_metadata_equal, "gparquet_column_chunk_metadata_equal", libs);
  gidLink(cast(void**)&gparquet_column_chunk_metadata_get_file_offset, "gparquet_column_chunk_metadata_get_file_offset", libs);
  gidLink(cast(void**)&gparquet_column_chunk_metadata_get_statistics, "gparquet_column_chunk_metadata_get_statistics", libs);
  gidLink(cast(void**)&gparquet_column_chunk_metadata_get_total_compressed_size, "gparquet_column_chunk_metadata_get_total_compressed_size", libs);
  gidLink(cast(void**)&gparquet_column_chunk_metadata_get_total_size, "gparquet_column_chunk_metadata_get_total_size", libs);

  // DoubleStatistics
  gidLink(cast(void**)&gparquet_double_statistics_get_type, "gparquet_double_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_double_statistics_get_max, "gparquet_double_statistics_get_max", libs);
  gidLink(cast(void**)&gparquet_double_statistics_get_min, "gparquet_double_statistics_get_min", libs);

  // FileMetadata
  gidLink(cast(void**)&gparquet_file_metadata_get_type, "gparquet_file_metadata_get_type", libs);
  gidLink(cast(void**)&gparquet_file_metadata_can_decompress, "gparquet_file_metadata_can_decompress", libs);
  gidLink(cast(void**)&gparquet_file_metadata_equal, "gparquet_file_metadata_equal", libs);
  gidLink(cast(void**)&gparquet_file_metadata_get_created_by, "gparquet_file_metadata_get_created_by", libs);
  gidLink(cast(void**)&gparquet_file_metadata_get_n_columns, "gparquet_file_metadata_get_n_columns", libs);
  gidLink(cast(void**)&gparquet_file_metadata_get_n_row_groups, "gparquet_file_metadata_get_n_row_groups", libs);
  gidLink(cast(void**)&gparquet_file_metadata_get_n_rows, "gparquet_file_metadata_get_n_rows", libs);
  gidLink(cast(void**)&gparquet_file_metadata_get_n_schema_elements, "gparquet_file_metadata_get_n_schema_elements", libs);
  gidLink(cast(void**)&gparquet_file_metadata_get_row_group, "gparquet_file_metadata_get_row_group", libs);
  gidLink(cast(void**)&gparquet_file_metadata_get_size, "gparquet_file_metadata_get_size", libs);

  // FixedLengthByteArrayStatistics
  gidLink(cast(void**)&gparquet_fixed_length_byte_array_statistics_get_type, "gparquet_fixed_length_byte_array_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_fixed_length_byte_array_statistics_get_max, "gparquet_fixed_length_byte_array_statistics_get_max", libs);
  gidLink(cast(void**)&gparquet_fixed_length_byte_array_statistics_get_min, "gparquet_fixed_length_byte_array_statistics_get_min", libs);

  // FloatStatistics
  gidLink(cast(void**)&gparquet_float_statistics_get_type, "gparquet_float_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_float_statistics_get_max, "gparquet_float_statistics_get_max", libs);
  gidLink(cast(void**)&gparquet_float_statistics_get_min, "gparquet_float_statistics_get_min", libs);

  // Int32Statistics
  gidLink(cast(void**)&gparquet_int32_statistics_get_type, "gparquet_int32_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_int32_statistics_get_max, "gparquet_int32_statistics_get_max", libs);
  gidLink(cast(void**)&gparquet_int32_statistics_get_min, "gparquet_int32_statistics_get_min", libs);

  // Int64Statistics
  gidLink(cast(void**)&gparquet_int64_statistics_get_type, "gparquet_int64_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_int64_statistics_get_max, "gparquet_int64_statistics_get_max", libs);
  gidLink(cast(void**)&gparquet_int64_statistics_get_min, "gparquet_int64_statistics_get_min", libs);

  // RowGroupMetadata
  gidLink(cast(void**)&gparquet_row_group_metadata_get_type, "gparquet_row_group_metadata_get_type", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_can_decompress, "gparquet_row_group_metadata_can_decompress", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_equal, "gparquet_row_group_metadata_equal", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_get_column_chunk, "gparquet_row_group_metadata_get_column_chunk", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_get_file_offset, "gparquet_row_group_metadata_get_file_offset", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_get_n_columns, "gparquet_row_group_metadata_get_n_columns", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_get_n_rows, "gparquet_row_group_metadata_get_n_rows", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_get_total_compressed_size, "gparquet_row_group_metadata_get_total_compressed_size", libs);
  gidLink(cast(void**)&gparquet_row_group_metadata_get_total_size, "gparquet_row_group_metadata_get_total_size", libs);

  // Statistics
  gidLink(cast(void**)&gparquet_statistics_get_type, "gparquet_statistics_get_type", libs);
  gidLink(cast(void**)&gparquet_statistics_equal, "gparquet_statistics_equal", libs);
  gidLink(cast(void**)&gparquet_statistics_get_n_distinct_values, "gparquet_statistics_get_n_distinct_values", libs);
  gidLink(cast(void**)&gparquet_statistics_get_n_nulls, "gparquet_statistics_get_n_nulls", libs);
  gidLink(cast(void**)&gparquet_statistics_get_n_values, "gparquet_statistics_get_n_values", libs);
  gidLink(cast(void**)&gparquet_statistics_has_min_max, "gparquet_statistics_has_min_max", libs);
  gidLink(cast(void**)&gparquet_statistics_has_n_distinct_values, "gparquet_statistics_has_n_distinct_values", libs);
  gidLink(cast(void**)&gparquet_statistics_has_n_nulls, "gparquet_statistics_has_n_nulls", libs);

  // WriterProperties
  gidLink(cast(void**)&gparquet_writer_properties_get_type, "gparquet_writer_properties_get_type", libs);
  gidLink(cast(void**)&gparquet_writer_properties_new, "gparquet_writer_properties_new", libs);
  gidLink(cast(void**)&gparquet_writer_properties_disable_dictionary, "gparquet_writer_properties_disable_dictionary", libs);
  gidLink(cast(void**)&gparquet_writer_properties_enable_dictionary, "gparquet_writer_properties_enable_dictionary", libs);
  gidLink(cast(void**)&gparquet_writer_properties_get_batch_size, "gparquet_writer_properties_get_batch_size", libs);
  gidLink(cast(void**)&gparquet_writer_properties_get_compression_path, "gparquet_writer_properties_get_compression_path", libs);
  gidLink(cast(void**)&gparquet_writer_properties_get_data_page_size, "gparquet_writer_properties_get_data_page_size", libs);
  gidLink(cast(void**)&gparquet_writer_properties_get_dictionary_page_size_limit, "gparquet_writer_properties_get_dictionary_page_size_limit", libs);
  gidLink(cast(void**)&gparquet_writer_properties_get_max_row_group_length, "gparquet_writer_properties_get_max_row_group_length", libs);
  gidLink(cast(void**)&gparquet_writer_properties_is_dictionary_enabled, "gparquet_writer_properties_is_dictionary_enabled", libs);
  gidLink(cast(void**)&gparquet_writer_properties_set_batch_size, "gparquet_writer_properties_set_batch_size", libs);
  gidLink(cast(void**)&gparquet_writer_properties_set_compression, "gparquet_writer_properties_set_compression", libs);
  gidLink(cast(void**)&gparquet_writer_properties_set_data_page_size, "gparquet_writer_properties_set_data_page_size", libs);
  gidLink(cast(void**)&gparquet_writer_properties_set_dictionary_page_size_limit, "gparquet_writer_properties_set_dictionary_page_size_limit", libs);
  gidLink(cast(void**)&gparquet_writer_properties_set_max_row_group_length, "gparquet_writer_properties_set_max_row_group_length", libs);
}
