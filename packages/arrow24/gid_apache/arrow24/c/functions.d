/// C functions for arrow24 library
module gid_apache.arrow24.c.functions;

public import gid.core.basictypes;
import gid.core.loader;
import gid_apache.arrow24.c.types;
static import gid_apache.arrow24.c._gidlib_Arrow;
public import gid.gio2.c.types;
public import gid.gobject2.c.types;

private immutable LIBS = ["arrow-glib_2400"];

private __gshared immutable(bool)* _gidLibMarker = &gid_apache.arrow24.c._gidlib_Arrow.gidLibLinked;

// AggregateNodeOptions
private alias c_garrow_aggregate_node_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_aggregate_node_options_get_typeFn c_garrow_aggregate_node_options_get_type; ///
private alias c_garrow_aggregate_node_options_newFn = extern(C) GArrowAggregateNodeOptions* function(GList* aggregations, const(char*)* keys, size_t nKeys, GError** _err) nothrow;
__gshared c_garrow_aggregate_node_options_newFn c_garrow_aggregate_node_options_new; ///
private alias c_garrow_aggregate_node_options_get_aggregationsFn = extern(C) GList* function(GArrowAggregateNodeOptions* options) nothrow;
__gshared c_garrow_aggregate_node_options_get_aggregationsFn c_garrow_aggregate_node_options_get_aggregations; ///

// Aggregation
private alias c_garrow_aggregation_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_aggregation_get_typeFn c_garrow_aggregation_get_type; ///
private alias c_garrow_aggregation_newFn = extern(C) GArrowAggregation* function(const(char)* function_, GArrowFunctionOptions* options, const(char)* input, const(char)* output) nothrow;
__gshared c_garrow_aggregation_newFn c_garrow_aggregation_new; ///

// Array
private alias c_garrow_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_array_get_typeFn c_garrow_array_get_type; ///
private alias c_garrow_array_importFn = extern(C) GArrowArray* function(void* cAbiArray, GArrowDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_array_importFn c_garrow_array_import; ///
private alias c_garrow_array_castFn = extern(C) GArrowArray* function(GArrowArray* array, GArrowDataType* targetDataType, GArrowCastOptions* options, GError** _err) nothrow;
__gshared c_garrow_array_castFn c_garrow_array_cast; ///
private alias c_garrow_array_concatenateFn = extern(C) GArrowArray* function(GArrowArray* array, GList* otherArrays, GError** _err) nothrow;
__gshared c_garrow_array_concatenateFn c_garrow_array_concatenate; ///
private alias c_garrow_array_countFn = extern(C) long function(GArrowArray* array, GArrowCountOptions* options, GError** _err) nothrow;
__gshared c_garrow_array_countFn c_garrow_array_count; ///
private alias c_garrow_array_count_valuesFn = extern(C) GArrowStructArray* function(GArrowArray* array, GError** _err) nothrow;
__gshared c_garrow_array_count_valuesFn c_garrow_array_count_values; ///
private alias c_garrow_array_dictionary_encodeFn = extern(C) GArrowDictionaryArray* function(GArrowArray* array, GError** _err) nothrow;
__gshared c_garrow_array_dictionary_encodeFn c_garrow_array_dictionary_encode; ///
private alias c_garrow_array_diff_unifiedFn = extern(C) char* function(GArrowArray* array, GArrowArray* otherArray) nothrow;
__gshared c_garrow_array_diff_unifiedFn c_garrow_array_diff_unified; ///
private alias c_garrow_array_equalFn = extern(C) gboolean function(GArrowArray* array, GArrowArray* otherArray) nothrow;
__gshared c_garrow_array_equalFn c_garrow_array_equal; ///
private alias c_garrow_array_equal_approxFn = extern(C) gboolean function(GArrowArray* array, GArrowArray* otherArray) nothrow;
__gshared c_garrow_array_equal_approxFn c_garrow_array_equal_approx; ///
private alias c_garrow_array_equal_optionsFn = extern(C) gboolean function(GArrowArray* array, GArrowArray* otherArray, GArrowEqualOptions* options) nothrow;
__gshared c_garrow_array_equal_optionsFn c_garrow_array_equal_options; ///
private alias c_garrow_array_equal_rangeFn = extern(C) gboolean function(GArrowArray* array, long startIndex, GArrowArray* otherArray, long otherStartIndex, long endIndex, GArrowEqualOptions* options) nothrow;
__gshared c_garrow_array_equal_rangeFn c_garrow_array_equal_range; ///
private alias c_garrow_array_exportFn = extern(C) gboolean function(GArrowArray* array, void** cAbiArray, void** cAbiSchema, GError** _err) nothrow;
__gshared c_garrow_array_exportFn c_garrow_array_export; ///
private alias c_garrow_array_filterFn = extern(C) GArrowArray* function(GArrowArray* array, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** _err) nothrow;
__gshared c_garrow_array_filterFn c_garrow_array_filter; ///
private alias c_garrow_array_get_lengthFn = extern(C) long function(GArrowArray* array) nothrow;
__gshared c_garrow_array_get_lengthFn c_garrow_array_get_length; ///
private alias c_garrow_array_get_n_nullsFn = extern(C) long function(GArrowArray* array) nothrow;
__gshared c_garrow_array_get_n_nullsFn c_garrow_array_get_n_nulls; ///
private alias c_garrow_array_get_null_bitmapFn = extern(C) GArrowBuffer* function(GArrowArray* array) nothrow;
__gshared c_garrow_array_get_null_bitmapFn c_garrow_array_get_null_bitmap; ///
private alias c_garrow_array_get_offsetFn = extern(C) long function(GArrowArray* array) nothrow;
__gshared c_garrow_array_get_offsetFn c_garrow_array_get_offset; ///
private alias c_garrow_array_get_statisticsFn = extern(C) GArrowArrayStatistics* function(GArrowArray* array) nothrow;
__gshared c_garrow_array_get_statisticsFn c_garrow_array_get_statistics; ///
private alias c_garrow_array_get_value_data_typeFn = extern(C) GArrowDataType* function(GArrowArray* array) nothrow;
__gshared c_garrow_array_get_value_data_typeFn c_garrow_array_get_value_data_type; ///
private alias c_garrow_array_get_value_typeFn = extern(C) GArrowType function(GArrowArray* array) nothrow;
__gshared c_garrow_array_get_value_typeFn c_garrow_array_get_value_type; ///
private alias c_garrow_array_is_inFn = extern(C) GArrowBooleanArray* function(GArrowArray* left, GArrowArray* right, GError** _err) nothrow;
__gshared c_garrow_array_is_inFn c_garrow_array_is_in; ///
private alias c_garrow_array_is_in_chunked_arrayFn = extern(C) GArrowBooleanArray* function(GArrowArray* left, GArrowChunkedArray* right, GError** _err) nothrow;
__gshared c_garrow_array_is_in_chunked_arrayFn c_garrow_array_is_in_chunked_array; ///
private alias c_garrow_array_is_nullFn = extern(C) gboolean function(GArrowArray* array, long i) nothrow;
__gshared c_garrow_array_is_nullFn c_garrow_array_is_null; ///
private alias c_garrow_array_is_validFn = extern(C) gboolean function(GArrowArray* array, long i) nothrow;
__gshared c_garrow_array_is_validFn c_garrow_array_is_valid; ///
private alias c_garrow_array_run_end_encodeFn = extern(C) GArrowRunEndEncodedArray* function(GArrowArray* array, GArrowRunEndEncodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_array_run_end_encodeFn c_garrow_array_run_end_encode; ///
private alias c_garrow_array_sliceFn = extern(C) GArrowArray* function(GArrowArray* array, long offset, long length) nothrow;
__gshared c_garrow_array_sliceFn c_garrow_array_slice; ///
private alias c_garrow_array_sort_indicesFn = extern(C) GArrowUInt64Array* function(GArrowArray* array, GArrowSortOrder order, GError** _err) nothrow;
__gshared c_garrow_array_sort_indicesFn c_garrow_array_sort_indices; ///
private alias c_garrow_array_sort_to_indicesFn = extern(C) GArrowUInt64Array* function(GArrowArray* array, GError** _err) nothrow;
__gshared c_garrow_array_sort_to_indicesFn c_garrow_array_sort_to_indices; ///
private alias c_garrow_array_takeFn = extern(C) GArrowArray* function(GArrowArray* array, GArrowArray* indices, GArrowTakeOptions* options, GError** _err) nothrow;
__gshared c_garrow_array_takeFn c_garrow_array_take; ///
private alias c_garrow_array_take_chunked_arrayFn = extern(C) GArrowChunkedArray* function(GArrowArray* array, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** _err) nothrow;
__gshared c_garrow_array_take_chunked_arrayFn c_garrow_array_take_chunked_array; ///
private alias c_garrow_array_to_stringFn = extern(C) char* function(GArrowArray* array, GError** _err) nothrow;
__gshared c_garrow_array_to_stringFn c_garrow_array_to_string; ///
private alias c_garrow_array_uniqueFn = extern(C) GArrowArray* function(GArrowArray* array, GError** _err) nothrow;
__gshared c_garrow_array_uniqueFn c_garrow_array_unique; ///
private alias c_garrow_array_validateFn = extern(C) gboolean function(GArrowArray* array, GError** _err) nothrow;
__gshared c_garrow_array_validateFn c_garrow_array_validate; ///
private alias c_garrow_array_validate_fullFn = extern(C) gboolean function(GArrowArray* array, GError** _err) nothrow;
__gshared c_garrow_array_validate_fullFn c_garrow_array_validate_full; ///
private alias c_garrow_array_viewFn = extern(C) GArrowArray* function(GArrowArray* array, GArrowDataType* returnType, GError** _err) nothrow;
__gshared c_garrow_array_viewFn c_garrow_array_view; ///

// ArrayBuilder
private alias c_garrow_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_array_builder_get_typeFn c_garrow_array_builder_get_type; ///
private alias c_garrow_array_builder_append_empty_valueFn = extern(C) gboolean function(GArrowArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_array_builder_append_empty_valueFn c_garrow_array_builder_append_empty_value; ///
private alias c_garrow_array_builder_append_empty_valuesFn = extern(C) gboolean function(GArrowArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_array_builder_append_empty_valuesFn c_garrow_array_builder_append_empty_values; ///
private alias c_garrow_array_builder_append_nullFn = extern(C) gboolean function(GArrowArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_array_builder_append_nullFn c_garrow_array_builder_append_null; ///
private alias c_garrow_array_builder_append_nullsFn = extern(C) gboolean function(GArrowArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_array_builder_append_nullsFn c_garrow_array_builder_append_nulls; ///
private alias c_garrow_array_builder_finishFn = extern(C) GArrowArray* function(GArrowArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_array_builder_finishFn c_garrow_array_builder_finish; ///
private alias c_garrow_array_builder_get_capacityFn = extern(C) long function(GArrowArrayBuilder* builder) nothrow;
__gshared c_garrow_array_builder_get_capacityFn c_garrow_array_builder_get_capacity; ///
private alias c_garrow_array_builder_get_childFn = extern(C) GArrowArrayBuilder* function(GArrowArrayBuilder* builder, int i) nothrow;
__gshared c_garrow_array_builder_get_childFn c_garrow_array_builder_get_child; ///
private alias c_garrow_array_builder_get_childrenFn = extern(C) GList* function(GArrowArrayBuilder* builder) nothrow;
__gshared c_garrow_array_builder_get_childrenFn c_garrow_array_builder_get_children; ///
private alias c_garrow_array_builder_get_lengthFn = extern(C) long function(GArrowArrayBuilder* builder) nothrow;
__gshared c_garrow_array_builder_get_lengthFn c_garrow_array_builder_get_length; ///
private alias c_garrow_array_builder_get_n_nullsFn = extern(C) long function(GArrowArrayBuilder* builder) nothrow;
__gshared c_garrow_array_builder_get_n_nullsFn c_garrow_array_builder_get_n_nulls; ///
private alias c_garrow_array_builder_get_value_data_typeFn = extern(C) GArrowDataType* function(GArrowArrayBuilder* builder) nothrow;
__gshared c_garrow_array_builder_get_value_data_typeFn c_garrow_array_builder_get_value_data_type; ///
private alias c_garrow_array_builder_get_value_typeFn = extern(C) GArrowType function(GArrowArrayBuilder* builder) nothrow;
__gshared c_garrow_array_builder_get_value_typeFn c_garrow_array_builder_get_value_type; ///
private alias c_garrow_array_builder_reserveFn = extern(C) gboolean function(GArrowArrayBuilder* builder, long additionalCapacity, GError** _err) nothrow;
__gshared c_garrow_array_builder_reserveFn c_garrow_array_builder_reserve; ///
private alias c_garrow_array_builder_resetFn = extern(C) void function(GArrowArrayBuilder* builder) nothrow;
__gshared c_garrow_array_builder_resetFn c_garrow_array_builder_reset; ///
private alias c_garrow_array_builder_resizeFn = extern(C) gboolean function(GArrowArrayBuilder* builder, long capacity, GError** _err) nothrow;
__gshared c_garrow_array_builder_resizeFn c_garrow_array_builder_resize; ///

// ArrayDatum
private alias c_garrow_array_datum_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_array_datum_get_typeFn c_garrow_array_datum_get_type; ///
private alias c_garrow_array_datum_newFn = extern(C) GArrowArrayDatum* function(GArrowArray* value) nothrow;
__gshared c_garrow_array_datum_newFn c_garrow_array_datum_new; ///

// ArraySortOptions
private alias c_garrow_array_sort_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_array_sort_options_get_typeFn c_garrow_array_sort_options_get_type; ///
private alias c_garrow_array_sort_options_newFn = extern(C) GArrowArraySortOptions* function(GArrowSortOrder order) nothrow;
__gshared c_garrow_array_sort_options_newFn c_garrow_array_sort_options_new; ///
private alias c_garrow_array_sort_options_equalFn = extern(C) gboolean function(GArrowArraySortOptions* options, GArrowArraySortOptions* otherOptions) nothrow;
__gshared c_garrow_array_sort_options_equalFn c_garrow_array_sort_options_equal; ///

// ArrayStatistics
private alias c_garrow_array_statistics_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_array_statistics_get_typeFn c_garrow_array_statistics_get_type; ///
private alias c_garrow_array_statistics_get_distinct_countFn = extern(C) long function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_get_distinct_countFn c_garrow_array_statistics_get_distinct_count; ///
private alias c_garrow_array_statistics_get_distinct_count_approximateFn = extern(C) double function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_get_distinct_count_approximateFn c_garrow_array_statistics_get_distinct_count_approximate; ///
private alias c_garrow_array_statistics_get_distinct_count_exactFn = extern(C) long function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_get_distinct_count_exactFn c_garrow_array_statistics_get_distinct_count_exact; ///
private alias c_garrow_array_statistics_get_null_countFn = extern(C) long function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_get_null_countFn c_garrow_array_statistics_get_null_count; ///
private alias c_garrow_array_statistics_get_null_count_approximateFn = extern(C) double function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_get_null_count_approximateFn c_garrow_array_statistics_get_null_count_approximate; ///
private alias c_garrow_array_statistics_get_null_count_exactFn = extern(C) long function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_get_null_count_exactFn c_garrow_array_statistics_get_null_count_exact; ///
private alias c_garrow_array_statistics_has_distinct_countFn = extern(C) gboolean function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_has_distinct_countFn c_garrow_array_statistics_has_distinct_count; ///
private alias c_garrow_array_statistics_has_null_countFn = extern(C) gboolean function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_has_null_countFn c_garrow_array_statistics_has_null_count; ///
private alias c_garrow_array_statistics_is_distinct_count_exactFn = extern(C) gboolean function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_is_distinct_count_exactFn c_garrow_array_statistics_is_distinct_count_exact; ///
private alias c_garrow_array_statistics_is_null_count_exactFn = extern(C) gboolean function(GArrowArrayStatistics* statistics) nothrow;
__gshared c_garrow_array_statistics_is_null_count_exactFn c_garrow_array_statistics_is_null_count_exact; ///

// AssumeTimezoneOptions
private alias c_garrow_assume_timezone_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_assume_timezone_options_get_typeFn c_garrow_assume_timezone_options_get_type; ///
private alias c_garrow_assume_timezone_options_newFn = extern(C) GArrowAssumeTimezoneOptions* function() nothrow;
__gshared c_garrow_assume_timezone_options_newFn c_garrow_assume_timezone_options_new; ///

// AzureFileSystem
private alias c_garrow_azure_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_azure_file_system_get_typeFn c_garrow_azure_file_system_get_type; ///

// BaseBinaryScalar
private alias c_garrow_base_binary_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_base_binary_scalar_get_typeFn c_garrow_base_binary_scalar_get_type; ///
private alias c_garrow_base_binary_scalar_get_valueFn = extern(C) GArrowBuffer* function(GArrowBaseBinaryScalar* scalar) nothrow;
__gshared c_garrow_base_binary_scalar_get_valueFn c_garrow_base_binary_scalar_get_value; ///

// BaseListDataType
private alias c_garrow_base_list_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_base_list_data_type_get_typeFn c_garrow_base_list_data_type_get_type; ///
private alias c_garrow_base_list_data_type_get_fieldFn = extern(C) GArrowField* function(GArrowBaseListDataType* baseListDataType) nothrow;
__gshared c_garrow_base_list_data_type_get_fieldFn c_garrow_base_list_data_type_get_field; ///

// BaseListScalar
private alias c_garrow_base_list_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_base_list_scalar_get_typeFn c_garrow_base_list_scalar_get_type; ///
private alias c_garrow_base_list_scalar_get_valueFn = extern(C) GArrowArray* function(GArrowBaseListScalar* scalar) nothrow;
__gshared c_garrow_base_list_scalar_get_valueFn c_garrow_base_list_scalar_get_value; ///

// BinaryArray
private alias c_garrow_binary_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_binary_array_get_typeFn c_garrow_binary_array_get_type; ///
private alias c_garrow_binary_array_newFn = extern(C) GArrowBinaryArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_binary_array_newFn c_garrow_binary_array_new; ///
private alias c_garrow_binary_array_get_bufferFn = extern(C) GArrowBuffer* function(GArrowBinaryArray* array) nothrow;
__gshared c_garrow_binary_array_get_bufferFn c_garrow_binary_array_get_buffer; ///
private alias c_garrow_binary_array_get_data_bufferFn = extern(C) GArrowBuffer* function(GArrowBinaryArray* array) nothrow;
__gshared c_garrow_binary_array_get_data_bufferFn c_garrow_binary_array_get_data_buffer; ///
private alias c_garrow_binary_array_get_offsets_bufferFn = extern(C) GArrowBuffer* function(GArrowBinaryArray* array) nothrow;
__gshared c_garrow_binary_array_get_offsets_bufferFn c_garrow_binary_array_get_offsets_buffer; ///
private alias c_garrow_binary_array_get_valueFn = extern(C) GBytes* function(GArrowBinaryArray* array, long i) nothrow;
__gshared c_garrow_binary_array_get_valueFn c_garrow_binary_array_get_value; ///

// BinaryArrayBuilder
private alias c_garrow_binary_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_binary_array_builder_get_typeFn c_garrow_binary_array_builder_get_type; ///
private alias c_garrow_binary_array_builder_newFn = extern(C) GArrowBinaryArrayBuilder* function() nothrow;
__gshared c_garrow_binary_array_builder_newFn c_garrow_binary_array_builder_new; ///
private alias c_garrow_binary_array_builder_appendFn = extern(C) gboolean function(GArrowBinaryArrayBuilder* builder, const(ubyte)* value, int length, GError** _err) nothrow;
__gshared c_garrow_binary_array_builder_appendFn c_garrow_binary_array_builder_append; ///
private alias c_garrow_binary_array_builder_append_nullFn = extern(C) gboolean function(GArrowBinaryArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_binary_array_builder_append_nullFn c_garrow_binary_array_builder_append_null; ///
private alias c_garrow_binary_array_builder_append_nullsFn = extern(C) gboolean function(GArrowBinaryArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_binary_array_builder_append_nullsFn c_garrow_binary_array_builder_append_nulls; ///
private alias c_garrow_binary_array_builder_append_valueFn = extern(C) gboolean function(GArrowBinaryArrayBuilder* builder, const(ubyte)* value, int length, GError** _err) nothrow;
__gshared c_garrow_binary_array_builder_append_valueFn c_garrow_binary_array_builder_append_value; ///
private alias c_garrow_binary_array_builder_append_value_bytesFn = extern(C) gboolean function(GArrowBinaryArrayBuilder* builder, GBytes* value, GError** _err) nothrow;
__gshared c_garrow_binary_array_builder_append_value_bytesFn c_garrow_binary_array_builder_append_value_bytes; ///
private alias c_garrow_binary_array_builder_append_valuesFn = extern(C) gboolean function(GArrowBinaryArrayBuilder* builder, GBytes** values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_binary_array_builder_append_valuesFn c_garrow_binary_array_builder_append_values; ///

// BinaryDataType
private alias c_garrow_binary_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_binary_data_type_get_typeFn c_garrow_binary_data_type_get_type; ///
private alias c_garrow_binary_data_type_newFn = extern(C) GArrowBinaryDataType* function() nothrow;
__gshared c_garrow_binary_data_type_newFn c_garrow_binary_data_type_new; ///

// BinaryDictionaryArrayBuilder
private alias c_garrow_binary_dictionary_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_binary_dictionary_array_builder_get_typeFn c_garrow_binary_dictionary_array_builder_get_type; ///
private alias c_garrow_binary_dictionary_array_builder_newFn = extern(C) GArrowBinaryDictionaryArrayBuilder* function() nothrow;
__gshared c_garrow_binary_dictionary_array_builder_newFn c_garrow_binary_dictionary_array_builder_new; ///
private alias c_garrow_binary_dictionary_array_builder_append_arrayFn = extern(C) gboolean function(GArrowBinaryDictionaryArrayBuilder* builder, GArrowBinaryArray* array, GError** _err) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_append_arrayFn c_garrow_binary_dictionary_array_builder_append_array; ///
private alias c_garrow_binary_dictionary_array_builder_append_indicesFn = extern(C) gboolean function(GArrowBinaryDictionaryArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_append_indicesFn c_garrow_binary_dictionary_array_builder_append_indices; ///
private alias c_garrow_binary_dictionary_array_builder_append_nullFn = extern(C) gboolean function(GArrowBinaryDictionaryArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_append_nullFn c_garrow_binary_dictionary_array_builder_append_null; ///
private alias c_garrow_binary_dictionary_array_builder_append_valueFn = extern(C) gboolean function(GArrowBinaryDictionaryArrayBuilder* builder, const(ubyte)* value, int length, GError** _err) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_append_valueFn c_garrow_binary_dictionary_array_builder_append_value; ///
private alias c_garrow_binary_dictionary_array_builder_append_value_bytesFn = extern(C) gboolean function(GArrowBinaryDictionaryArrayBuilder* builder, GBytes* value, GError** _err) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_append_value_bytesFn c_garrow_binary_dictionary_array_builder_append_value_bytes; ///
private alias c_garrow_binary_dictionary_array_builder_finish_deltaFn = extern(C) gboolean function(GArrowBinaryDictionaryArrayBuilder* builder, GArrowArray** outIndices, GArrowArray** outDelta, GError** _err) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_finish_deltaFn c_garrow_binary_dictionary_array_builder_finish_delta; ///
private alias c_garrow_binary_dictionary_array_builder_get_dictionary_lengthFn = extern(C) long function(GArrowBinaryDictionaryArrayBuilder* builder) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_get_dictionary_lengthFn c_garrow_binary_dictionary_array_builder_get_dictionary_length; ///
private alias c_garrow_binary_dictionary_array_builder_insert_memo_valuesFn = extern(C) gboolean function(GArrowBinaryDictionaryArrayBuilder* builder, GArrowBinaryArray* values, GError** _err) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_insert_memo_valuesFn c_garrow_binary_dictionary_array_builder_insert_memo_values; ///
private alias c_garrow_binary_dictionary_array_builder_reset_fullFn = extern(C) void function(GArrowBinaryDictionaryArrayBuilder* builder) nothrow;
__gshared c_garrow_binary_dictionary_array_builder_reset_fullFn c_garrow_binary_dictionary_array_builder_reset_full; ///

// BinaryScalar
private alias c_garrow_binary_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_binary_scalar_get_typeFn c_garrow_binary_scalar_get_type; ///
private alias c_garrow_binary_scalar_newFn = extern(C) GArrowBinaryScalar* function(GArrowBuffer* value) nothrow;
__gshared c_garrow_binary_scalar_newFn c_garrow_binary_scalar_new; ///

// BinaryViewArray
private alias c_garrow_binary_view_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_binary_view_array_get_typeFn c_garrow_binary_view_array_get_type; ///
private alias c_garrow_binary_view_array_newFn = extern(C) GArrowBinaryViewArray* function(long length, GArrowBuffer* views, GList* dataBuffers, GArrowBuffer* nullBitmap, long nNulls, long offset) nothrow;
__gshared c_garrow_binary_view_array_newFn c_garrow_binary_view_array_new; ///
private alias c_garrow_binary_view_array_get_valueFn = extern(C) GBytes* function(GArrowBinaryViewArray* array, long i) nothrow;
__gshared c_garrow_binary_view_array_get_valueFn c_garrow_binary_view_array_get_value; ///

// BinaryViewDataType
private alias c_garrow_binary_view_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_binary_view_data_type_get_typeFn c_garrow_binary_view_data_type_get_type; ///
private alias c_garrow_binary_view_data_type_newFn = extern(C) GArrowBinaryViewDataType* function() nothrow;
__gshared c_garrow_binary_view_data_type_newFn c_garrow_binary_view_data_type_new; ///

// BooleanArray
private alias c_garrow_boolean_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_boolean_array_get_typeFn c_garrow_boolean_array_get_type; ///
private alias c_garrow_boolean_array_newFn = extern(C) GArrowBooleanArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_boolean_array_newFn c_garrow_boolean_array_new; ///
private alias c_garrow_boolean_array_andFn = extern(C) GArrowBooleanArray* function(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** _err) nothrow;
__gshared c_garrow_boolean_array_andFn c_garrow_boolean_array_and; ///
private alias c_garrow_boolean_array_get_valueFn = extern(C) gboolean function(GArrowBooleanArray* array, long i) nothrow;
__gshared c_garrow_boolean_array_get_valueFn c_garrow_boolean_array_get_value; ///
private alias c_garrow_boolean_array_get_valuesFn = extern(C) gboolean* function(GArrowBooleanArray* array, long* length) nothrow;
__gshared c_garrow_boolean_array_get_valuesFn c_garrow_boolean_array_get_values; ///
private alias c_garrow_boolean_array_invertFn = extern(C) GArrowBooleanArray* function(GArrowBooleanArray* array, GError** _err) nothrow;
__gshared c_garrow_boolean_array_invertFn c_garrow_boolean_array_invert; ///
private alias c_garrow_boolean_array_orFn = extern(C) GArrowBooleanArray* function(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** _err) nothrow;
__gshared c_garrow_boolean_array_orFn c_garrow_boolean_array_or; ///
private alias c_garrow_boolean_array_xorFn = extern(C) GArrowBooleanArray* function(GArrowBooleanArray* left, GArrowBooleanArray* right, GError** _err) nothrow;
__gshared c_garrow_boolean_array_xorFn c_garrow_boolean_array_xor; ///

// BooleanArrayBuilder
private alias c_garrow_boolean_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_boolean_array_builder_get_typeFn c_garrow_boolean_array_builder_get_type; ///
private alias c_garrow_boolean_array_builder_newFn = extern(C) GArrowBooleanArrayBuilder* function() nothrow;
__gshared c_garrow_boolean_array_builder_newFn c_garrow_boolean_array_builder_new; ///
private alias c_garrow_boolean_array_builder_appendFn = extern(C) gboolean function(GArrowBooleanArrayBuilder* builder, gboolean value, GError** _err) nothrow;
__gshared c_garrow_boolean_array_builder_appendFn c_garrow_boolean_array_builder_append; ///
private alias c_garrow_boolean_array_builder_append_nullFn = extern(C) gboolean function(GArrowBooleanArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_boolean_array_builder_append_nullFn c_garrow_boolean_array_builder_append_null; ///
private alias c_garrow_boolean_array_builder_append_nullsFn = extern(C) gboolean function(GArrowBooleanArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_boolean_array_builder_append_nullsFn c_garrow_boolean_array_builder_append_nulls; ///
private alias c_garrow_boolean_array_builder_append_valueFn = extern(C) gboolean function(GArrowBooleanArrayBuilder* builder, gboolean value, GError** _err) nothrow;
__gshared c_garrow_boolean_array_builder_append_valueFn c_garrow_boolean_array_builder_append_value; ///
private alias c_garrow_boolean_array_builder_append_valuesFn = extern(C) gboolean function(GArrowBooleanArrayBuilder* builder, const(gboolean)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_boolean_array_builder_append_valuesFn c_garrow_boolean_array_builder_append_values; ///

// BooleanDataType
private alias c_garrow_boolean_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_boolean_data_type_get_typeFn c_garrow_boolean_data_type_get_type; ///
private alias c_garrow_boolean_data_type_newFn = extern(C) GArrowBooleanDataType* function() nothrow;
__gshared c_garrow_boolean_data_type_newFn c_garrow_boolean_data_type_new; ///

// BooleanScalar
private alias c_garrow_boolean_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_boolean_scalar_get_typeFn c_garrow_boolean_scalar_get_type; ///
private alias c_garrow_boolean_scalar_newFn = extern(C) GArrowBooleanScalar* function(gboolean value) nothrow;
__gshared c_garrow_boolean_scalar_newFn c_garrow_boolean_scalar_new; ///
private alias c_garrow_boolean_scalar_get_valueFn = extern(C) gboolean function(GArrowBooleanScalar* scalar) nothrow;
__gshared c_garrow_boolean_scalar_get_valueFn c_garrow_boolean_scalar_get_value; ///

// Buffer
private alias c_garrow_buffer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_buffer_get_typeFn c_garrow_buffer_get_type; ///
private alias c_garrow_buffer_newFn = extern(C) GArrowBuffer* function(const(ubyte)* data, long size) nothrow;
__gshared c_garrow_buffer_newFn c_garrow_buffer_new; ///
private alias c_garrow_buffer_new_bytesFn = extern(C) GArrowBuffer* function(GBytes* data) nothrow;
__gshared c_garrow_buffer_new_bytesFn c_garrow_buffer_new_bytes; ///
private alias c_garrow_buffer_copyFn = extern(C) GArrowBuffer* function(GArrowBuffer* buffer, long start, long size, GError** _err) nothrow;
__gshared c_garrow_buffer_copyFn c_garrow_buffer_copy; ///
private alias c_garrow_buffer_equalFn = extern(C) gboolean function(GArrowBuffer* buffer, GArrowBuffer* otherBuffer) nothrow;
__gshared c_garrow_buffer_equalFn c_garrow_buffer_equal; ///
private alias c_garrow_buffer_equal_n_bytesFn = extern(C) gboolean function(GArrowBuffer* buffer, GArrowBuffer* otherBuffer, long nBytes) nothrow;
__gshared c_garrow_buffer_equal_n_bytesFn c_garrow_buffer_equal_n_bytes; ///
private alias c_garrow_buffer_get_capacityFn = extern(C) long function(GArrowBuffer* buffer) nothrow;
__gshared c_garrow_buffer_get_capacityFn c_garrow_buffer_get_capacity; ///
private alias c_garrow_buffer_get_dataFn = extern(C) GBytes* function(GArrowBuffer* buffer) nothrow;
__gshared c_garrow_buffer_get_dataFn c_garrow_buffer_get_data; ///
private alias c_garrow_buffer_get_mutable_dataFn = extern(C) GBytes* function(GArrowBuffer* buffer) nothrow;
__gshared c_garrow_buffer_get_mutable_dataFn c_garrow_buffer_get_mutable_data; ///
private alias c_garrow_buffer_get_parentFn = extern(C) GArrowBuffer* function(GArrowBuffer* buffer) nothrow;
__gshared c_garrow_buffer_get_parentFn c_garrow_buffer_get_parent; ///
private alias c_garrow_buffer_get_sizeFn = extern(C) long function(GArrowBuffer* buffer) nothrow;
__gshared c_garrow_buffer_get_sizeFn c_garrow_buffer_get_size; ///
private alias c_garrow_buffer_is_mutableFn = extern(C) gboolean function(GArrowBuffer* buffer) nothrow;
__gshared c_garrow_buffer_is_mutableFn c_garrow_buffer_is_mutable; ///
private alias c_garrow_buffer_sliceFn = extern(C) GArrowBuffer* function(GArrowBuffer* buffer, long offset, long size) nothrow;
__gshared c_garrow_buffer_sliceFn c_garrow_buffer_slice; ///

// BufferInputStream
private alias c_garrow_buffer_input_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_buffer_input_stream_get_typeFn c_garrow_buffer_input_stream_get_type; ///
private alias c_garrow_buffer_input_stream_newFn = extern(C) GArrowBufferInputStream* function(GArrowBuffer* buffer) nothrow;
__gshared c_garrow_buffer_input_stream_newFn c_garrow_buffer_input_stream_new; ///
private alias c_garrow_buffer_input_stream_get_bufferFn = extern(C) GArrowBuffer* function(GArrowBufferInputStream* inputStream) nothrow;
__gshared c_garrow_buffer_input_stream_get_bufferFn c_garrow_buffer_input_stream_get_buffer; ///

// BufferOutputStream
private alias c_garrow_buffer_output_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_buffer_output_stream_get_typeFn c_garrow_buffer_output_stream_get_type; ///
private alias c_garrow_buffer_output_stream_newFn = extern(C) GArrowBufferOutputStream* function(GArrowResizableBuffer* buffer) nothrow;
__gshared c_garrow_buffer_output_stream_newFn c_garrow_buffer_output_stream_new; ///

// CSVReadOptions
private alias c_garrow_csv_read_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_csv_read_options_get_typeFn c_garrow_csv_read_options_get_type; ///
private alias c_garrow_csv_read_options_newFn = extern(C) GArrowCSVReadOptions* function() nothrow;
__gshared c_garrow_csv_read_options_newFn c_garrow_csv_read_options_new; ///
private alias c_garrow_csv_read_options_add_column_nameFn = extern(C) void function(GArrowCSVReadOptions* options, const(char)* columnName) nothrow;
__gshared c_garrow_csv_read_options_add_column_nameFn c_garrow_csv_read_options_add_column_name; ///
private alias c_garrow_csv_read_options_add_column_typeFn = extern(C) void function(GArrowCSVReadOptions* options, const(char)* name, GArrowDataType* dataType) nothrow;
__gshared c_garrow_csv_read_options_add_column_typeFn c_garrow_csv_read_options_add_column_type; ///
private alias c_garrow_csv_read_options_add_false_valueFn = extern(C) void function(GArrowCSVReadOptions* options, const(char)* falseValue) nothrow;
__gshared c_garrow_csv_read_options_add_false_valueFn c_garrow_csv_read_options_add_false_value; ///
private alias c_garrow_csv_read_options_add_null_valueFn = extern(C) void function(GArrowCSVReadOptions* options, const(char)* nullValue) nothrow;
__gshared c_garrow_csv_read_options_add_null_valueFn c_garrow_csv_read_options_add_null_value; ///
private alias c_garrow_csv_read_options_add_schemaFn = extern(C) void function(GArrowCSVReadOptions* options, GArrowSchema* schema) nothrow;
__gshared c_garrow_csv_read_options_add_schemaFn c_garrow_csv_read_options_add_schema; ///
private alias c_garrow_csv_read_options_add_timestamp_parserFn = extern(C) void function(GArrowCSVReadOptions* options, GArrowTimestampParser* parser) nothrow;
__gshared c_garrow_csv_read_options_add_timestamp_parserFn c_garrow_csv_read_options_add_timestamp_parser; ///
private alias c_garrow_csv_read_options_add_true_valueFn = extern(C) void function(GArrowCSVReadOptions* options, const(char)* trueValue) nothrow;
__gshared c_garrow_csv_read_options_add_true_valueFn c_garrow_csv_read_options_add_true_value; ///
private alias c_garrow_csv_read_options_get_column_namesFn = extern(C) char** function(GArrowCSVReadOptions* options) nothrow;
__gshared c_garrow_csv_read_options_get_column_namesFn c_garrow_csv_read_options_get_column_names; ///
private alias c_garrow_csv_read_options_get_column_typesFn = extern(C) GHashTable* function(GArrowCSVReadOptions* options) nothrow;
__gshared c_garrow_csv_read_options_get_column_typesFn c_garrow_csv_read_options_get_column_types; ///
private alias c_garrow_csv_read_options_get_false_valuesFn = extern(C) char** function(GArrowCSVReadOptions* options) nothrow;
__gshared c_garrow_csv_read_options_get_false_valuesFn c_garrow_csv_read_options_get_false_values; ///
private alias c_garrow_csv_read_options_get_null_valuesFn = extern(C) char** function(GArrowCSVReadOptions* options) nothrow;
__gshared c_garrow_csv_read_options_get_null_valuesFn c_garrow_csv_read_options_get_null_values; ///
private alias c_garrow_csv_read_options_get_timestamp_parsersFn = extern(C) GList* function(GArrowCSVReadOptions* options) nothrow;
__gshared c_garrow_csv_read_options_get_timestamp_parsersFn c_garrow_csv_read_options_get_timestamp_parsers; ///
private alias c_garrow_csv_read_options_get_true_valuesFn = extern(C) char** function(GArrowCSVReadOptions* options) nothrow;
__gshared c_garrow_csv_read_options_get_true_valuesFn c_garrow_csv_read_options_get_true_values; ///
private alias c_garrow_csv_read_options_set_column_namesFn = extern(C) void function(GArrowCSVReadOptions* options, const(char*)* columnNames, size_t nColumnNames) nothrow;
__gshared c_garrow_csv_read_options_set_column_namesFn c_garrow_csv_read_options_set_column_names; ///
private alias c_garrow_csv_read_options_set_false_valuesFn = extern(C) void function(GArrowCSVReadOptions* options, const(char*)* falseValues, size_t nFalseValues) nothrow;
__gshared c_garrow_csv_read_options_set_false_valuesFn c_garrow_csv_read_options_set_false_values; ///
private alias c_garrow_csv_read_options_set_null_valuesFn = extern(C) void function(GArrowCSVReadOptions* options, const(char*)* nullValues, size_t nNullValues) nothrow;
__gshared c_garrow_csv_read_options_set_null_valuesFn c_garrow_csv_read_options_set_null_values; ///
private alias c_garrow_csv_read_options_set_timestamp_parsersFn = extern(C) void function(GArrowCSVReadOptions* options, GList* parsers) nothrow;
__gshared c_garrow_csv_read_options_set_timestamp_parsersFn c_garrow_csv_read_options_set_timestamp_parsers; ///
private alias c_garrow_csv_read_options_set_true_valuesFn = extern(C) void function(GArrowCSVReadOptions* options, const(char*)* trueValues, size_t nTrueValues) nothrow;
__gshared c_garrow_csv_read_options_set_true_valuesFn c_garrow_csv_read_options_set_true_values; ///

// CSVReader
private alias c_garrow_csv_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_csv_reader_get_typeFn c_garrow_csv_reader_get_type; ///
private alias c_garrow_csv_reader_newFn = extern(C) GArrowCSVReader* function(GArrowInputStream* input, GArrowCSVReadOptions* options, GError** _err) nothrow;
__gshared c_garrow_csv_reader_newFn c_garrow_csv_reader_new; ///
private alias c_garrow_csv_reader_readFn = extern(C) GArrowTable* function(GArrowCSVReader* reader, GError** _err) nothrow;
__gshared c_garrow_csv_reader_readFn c_garrow_csv_reader_read; ///

// CSVWriteOptions
private alias c_garrow_csv_write_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_csv_write_options_get_typeFn c_garrow_csv_write_options_get_type; ///
private alias c_garrow_csv_write_options_newFn = extern(C) GArrowCSVWriteOptions* function() nothrow;
__gshared c_garrow_csv_write_options_newFn c_garrow_csv_write_options_new; ///

// CSVWriter
private alias c_garrow_csv_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_csv_writer_get_typeFn c_garrow_csv_writer_get_type; ///
private alias c_garrow_csv_writer_newFn = extern(C) GArrowCSVWriter* function(GArrowOutputStream* sink, GArrowSchema* schema, GArrowCSVWriteOptions* options, GError** _err) nothrow;
__gshared c_garrow_csv_writer_newFn c_garrow_csv_writer_new; ///

// CallExpression
private alias c_garrow_call_expression_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_call_expression_get_typeFn c_garrow_call_expression_get_type; ///
private alias c_garrow_call_expression_newFn = extern(C) GArrowCallExpression* function(const(char)* function_, GList* arguments, GArrowFunctionOptions* options) nothrow;
__gshared c_garrow_call_expression_newFn c_garrow_call_expression_new; ///
private alias c_garrow_call_expression_get_argumentsFn = extern(C) GList* function(GArrowCallExpression* expression) nothrow;
__gshared c_garrow_call_expression_get_argumentsFn c_garrow_call_expression_get_arguments; ///

// CastOptions
private alias c_garrow_cast_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_cast_options_get_typeFn c_garrow_cast_options_get_type; ///
private alias c_garrow_cast_options_newFn = extern(C) GArrowCastOptions* function() nothrow;
__gshared c_garrow_cast_options_newFn c_garrow_cast_options_new; ///

// ChunkedArray
private alias c_garrow_chunked_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_chunked_array_get_typeFn c_garrow_chunked_array_get_type; ///
private alias c_garrow_chunked_array_newFn = extern(C) GArrowChunkedArray* function(GList* chunks, GError** _err) nothrow;
__gshared c_garrow_chunked_array_newFn c_garrow_chunked_array_new; ///
private alias c_garrow_chunked_array_new_emptyFn = extern(C) GArrowChunkedArray* function(GArrowDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_chunked_array_new_emptyFn c_garrow_chunked_array_new_empty; ///
private alias c_garrow_chunked_array_importFn = extern(C) GArrowChunkedArray* function(void* cAbiArrayStream, GError** _err) nothrow;
__gshared c_garrow_chunked_array_importFn c_garrow_chunked_array_import; ///
private alias c_garrow_chunked_array_combineFn = extern(C) GArrowArray* function(GArrowChunkedArray* chunkedArray, GError** _err) nothrow;
__gshared c_garrow_chunked_array_combineFn c_garrow_chunked_array_combine; ///
private alias c_garrow_chunked_array_equalFn = extern(C) gboolean function(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* otherChunkedArray) nothrow;
__gshared c_garrow_chunked_array_equalFn c_garrow_chunked_array_equal; ///
private alias c_garrow_chunked_array_exportFn = extern(C) void* function(GArrowChunkedArray* chunkedArray, GError** _err) nothrow;
__gshared c_garrow_chunked_array_exportFn c_garrow_chunked_array_export; ///
private alias c_garrow_chunked_array_filterFn = extern(C) GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** _err) nothrow;
__gshared c_garrow_chunked_array_filterFn c_garrow_chunked_array_filter; ///
private alias c_garrow_chunked_array_filter_chunked_arrayFn = extern(C) GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* filter, GArrowFilterOptions* options, GError** _err) nothrow;
__gshared c_garrow_chunked_array_filter_chunked_arrayFn c_garrow_chunked_array_filter_chunked_array; ///
private alias c_garrow_chunked_array_get_chunkFn = extern(C) GArrowArray* function(GArrowChunkedArray* chunkedArray, uint i) nothrow;
__gshared c_garrow_chunked_array_get_chunkFn c_garrow_chunked_array_get_chunk; ///
private alias c_garrow_chunked_array_get_chunksFn = extern(C) GList* function(GArrowChunkedArray* chunkedArray) nothrow;
__gshared c_garrow_chunked_array_get_chunksFn c_garrow_chunked_array_get_chunks; ///
private alias c_garrow_chunked_array_get_lengthFn = extern(C) ulong function(GArrowChunkedArray* chunkedArray) nothrow;
__gshared c_garrow_chunked_array_get_lengthFn c_garrow_chunked_array_get_length; ///
private alias c_garrow_chunked_array_get_n_chunksFn = extern(C) uint function(GArrowChunkedArray* chunkedArray) nothrow;
__gshared c_garrow_chunked_array_get_n_chunksFn c_garrow_chunked_array_get_n_chunks; ///
private alias c_garrow_chunked_array_get_n_nullsFn = extern(C) ulong function(GArrowChunkedArray* chunkedArray) nothrow;
__gshared c_garrow_chunked_array_get_n_nullsFn c_garrow_chunked_array_get_n_nulls; ///
private alias c_garrow_chunked_array_get_n_rowsFn = extern(C) ulong function(GArrowChunkedArray* chunkedArray) nothrow;
__gshared c_garrow_chunked_array_get_n_rowsFn c_garrow_chunked_array_get_n_rows; ///
private alias c_garrow_chunked_array_get_value_data_typeFn = extern(C) GArrowDataType* function(GArrowChunkedArray* chunkedArray) nothrow;
__gshared c_garrow_chunked_array_get_value_data_typeFn c_garrow_chunked_array_get_value_data_type; ///
private alias c_garrow_chunked_array_get_value_typeFn = extern(C) GArrowType function(GArrowChunkedArray* chunkedArray) nothrow;
__gshared c_garrow_chunked_array_get_value_typeFn c_garrow_chunked_array_get_value_type; ///
private alias c_garrow_chunked_array_sliceFn = extern(C) GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, ulong offset, ulong length) nothrow;
__gshared c_garrow_chunked_array_sliceFn c_garrow_chunked_array_slice; ///
private alias c_garrow_chunked_array_sort_indicesFn = extern(C) GArrowUInt64Array* function(GArrowChunkedArray* chunkedArray, GArrowSortOrder order, GError** _err) nothrow;
__gshared c_garrow_chunked_array_sort_indicesFn c_garrow_chunked_array_sort_indices; ///
private alias c_garrow_chunked_array_takeFn = extern(C) GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowArray* indices, GArrowTakeOptions* options, GError** _err) nothrow;
__gshared c_garrow_chunked_array_takeFn c_garrow_chunked_array_take; ///
private alias c_garrow_chunked_array_take_chunked_arrayFn = extern(C) GArrowChunkedArray* function(GArrowChunkedArray* chunkedArray, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** _err) nothrow;
__gshared c_garrow_chunked_array_take_chunked_arrayFn c_garrow_chunked_array_take_chunked_array; ///
private alias c_garrow_chunked_array_to_stringFn = extern(C) char* function(GArrowChunkedArray* chunkedArray, GError** _err) nothrow;
__gshared c_garrow_chunked_array_to_stringFn c_garrow_chunked_array_to_string; ///

// ChunkedArrayDatum
private alias c_garrow_chunked_array_datum_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_chunked_array_datum_get_typeFn c_garrow_chunked_array_datum_get_type; ///
private alias c_garrow_chunked_array_datum_newFn = extern(C) GArrowChunkedArrayDatum* function(GArrowChunkedArray* value) nothrow;
__gshared c_garrow_chunked_array_datum_newFn c_garrow_chunked_array_datum_new; ///

// Codec
private alias c_garrow_codec_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_codec_get_typeFn c_garrow_codec_get_type; ///
private alias c_garrow_codec_newFn = extern(C) GArrowCodec* function(GArrowCompressionType type, GError** _err) nothrow;
__gshared c_garrow_codec_newFn c_garrow_codec_new; ///
private alias c_garrow_codec_get_compression_levelFn = extern(C) int function(GArrowCodec* codec) nothrow;
__gshared c_garrow_codec_get_compression_levelFn c_garrow_codec_get_compression_level; ///
private alias c_garrow_codec_get_compression_typeFn = extern(C) GArrowCompressionType function(GArrowCodec* codec) nothrow;
__gshared c_garrow_codec_get_compression_typeFn c_garrow_codec_get_compression_type; ///
private alias c_garrow_codec_get_nameFn = extern(C) const(char)* function(GArrowCodec* codec) nothrow;
__gshared c_garrow_codec_get_nameFn c_garrow_codec_get_name; ///

// CompressedInputStream
private alias c_garrow_compressed_input_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_compressed_input_stream_get_typeFn c_garrow_compressed_input_stream_get_type; ///
private alias c_garrow_compressed_input_stream_newFn = extern(C) GArrowCompressedInputStream* function(GArrowCodec* codec, GArrowInputStream* raw, GError** _err) nothrow;
__gshared c_garrow_compressed_input_stream_newFn c_garrow_compressed_input_stream_new; ///

// CompressedOutputStream
private alias c_garrow_compressed_output_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_compressed_output_stream_get_typeFn c_garrow_compressed_output_stream_get_type; ///
private alias c_garrow_compressed_output_stream_newFn = extern(C) GArrowCompressedOutputStream* function(GArrowCodec* codec, GArrowOutputStream* raw, GError** _err) nothrow;
__gshared c_garrow_compressed_output_stream_newFn c_garrow_compressed_output_stream_new; ///

// CountOptions
private alias c_garrow_count_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_count_options_get_typeFn c_garrow_count_options_get_type; ///
private alias c_garrow_count_options_newFn = extern(C) GArrowCountOptions* function() nothrow;
__gshared c_garrow_count_options_newFn c_garrow_count_options_new; ///

// CumulativeOptions
private alias c_garrow_cumulative_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_cumulative_options_get_typeFn c_garrow_cumulative_options_get_type; ///
private alias c_garrow_cumulative_options_newFn = extern(C) GArrowCumulativeOptions* function() nothrow;
__gshared c_garrow_cumulative_options_newFn c_garrow_cumulative_options_new; ///

// DataType
private alias c_garrow_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_data_type_get_typeFn c_garrow_data_type_get_type; ///
private alias c_garrow_data_type_importFn = extern(C) GArrowDataType* function(void* cAbiSchema, GError** _err) nothrow;
__gshared c_garrow_data_type_importFn c_garrow_data_type_import; ///
private alias c_garrow_data_type_equalFn = extern(C) gboolean function(GArrowDataType* dataType, GArrowDataType* otherDataType) nothrow;
__gshared c_garrow_data_type_equalFn c_garrow_data_type_equal; ///
private alias c_garrow_data_type_exportFn = extern(C) void* function(GArrowDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_data_type_exportFn c_garrow_data_type_export; ///
private alias c_garrow_data_type_get_idFn = extern(C) GArrowType function(GArrowDataType* dataType) nothrow;
__gshared c_garrow_data_type_get_idFn c_garrow_data_type_get_id; ///
private alias c_garrow_data_type_get_nameFn = extern(C) char* function(GArrowDataType* dataType) nothrow;
__gshared c_garrow_data_type_get_nameFn c_garrow_data_type_get_name; ///
private alias c_garrow_data_type_to_stringFn = extern(C) char* function(GArrowDataType* dataType) nothrow;
__gshared c_garrow_data_type_to_stringFn c_garrow_data_type_to_string; ///

// Date32Array
private alias c_garrow_date32_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date32_array_get_typeFn c_garrow_date32_array_get_type; ///
private alias c_garrow_date32_array_newFn = extern(C) GArrowDate32Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_date32_array_newFn c_garrow_date32_array_new; ///
private alias c_garrow_date32_array_get_valueFn = extern(C) int function(GArrowDate32Array* array, long i) nothrow;
__gshared c_garrow_date32_array_get_valueFn c_garrow_date32_array_get_value; ///
private alias c_garrow_date32_array_get_valuesFn = extern(C) const(int)* function(GArrowDate32Array* array, long* length) nothrow;
__gshared c_garrow_date32_array_get_valuesFn c_garrow_date32_array_get_values; ///

// Date32ArrayBuilder
private alias c_garrow_date32_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date32_array_builder_get_typeFn c_garrow_date32_array_builder_get_type; ///
private alias c_garrow_date32_array_builder_newFn = extern(C) GArrowDate32ArrayBuilder* function() nothrow;
__gshared c_garrow_date32_array_builder_newFn c_garrow_date32_array_builder_new; ///
private alias c_garrow_date32_array_builder_appendFn = extern(C) gboolean function(GArrowDate32ArrayBuilder* builder, int value, GError** _err) nothrow;
__gshared c_garrow_date32_array_builder_appendFn c_garrow_date32_array_builder_append; ///
private alias c_garrow_date32_array_builder_append_nullFn = extern(C) gboolean function(GArrowDate32ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_date32_array_builder_append_nullFn c_garrow_date32_array_builder_append_null; ///
private alias c_garrow_date32_array_builder_append_nullsFn = extern(C) gboolean function(GArrowDate32ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_date32_array_builder_append_nullsFn c_garrow_date32_array_builder_append_nulls; ///
private alias c_garrow_date32_array_builder_append_valueFn = extern(C) gboolean function(GArrowDate32ArrayBuilder* builder, int value, GError** _err) nothrow;
__gshared c_garrow_date32_array_builder_append_valueFn c_garrow_date32_array_builder_append_value; ///
private alias c_garrow_date32_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDate32ArrayBuilder* builder, const(int)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_date32_array_builder_append_valuesFn c_garrow_date32_array_builder_append_values; ///

// Date32DataType
private alias c_garrow_date32_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date32_data_type_get_typeFn c_garrow_date32_data_type_get_type; ///
private alias c_garrow_date32_data_type_newFn = extern(C) GArrowDate32DataType* function() nothrow;
__gshared c_garrow_date32_data_type_newFn c_garrow_date32_data_type_new; ///

// Date32Scalar
private alias c_garrow_date32_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date32_scalar_get_typeFn c_garrow_date32_scalar_get_type; ///
private alias c_garrow_date32_scalar_newFn = extern(C) GArrowDate32Scalar* function(int value) nothrow;
__gshared c_garrow_date32_scalar_newFn c_garrow_date32_scalar_new; ///
private alias c_garrow_date32_scalar_get_valueFn = extern(C) int function(GArrowDate32Scalar* scalar) nothrow;
__gshared c_garrow_date32_scalar_get_valueFn c_garrow_date32_scalar_get_value; ///

// Date64Array
private alias c_garrow_date64_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date64_array_get_typeFn c_garrow_date64_array_get_type; ///
private alias c_garrow_date64_array_newFn = extern(C) GArrowDate64Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_date64_array_newFn c_garrow_date64_array_new; ///
private alias c_garrow_date64_array_get_valueFn = extern(C) long function(GArrowDate64Array* array, long i) nothrow;
__gshared c_garrow_date64_array_get_valueFn c_garrow_date64_array_get_value; ///
private alias c_garrow_date64_array_get_valuesFn = extern(C) const(long)* function(GArrowDate64Array* array, long* length) nothrow;
__gshared c_garrow_date64_array_get_valuesFn c_garrow_date64_array_get_values; ///

// Date64ArrayBuilder
private alias c_garrow_date64_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date64_array_builder_get_typeFn c_garrow_date64_array_builder_get_type; ///
private alias c_garrow_date64_array_builder_newFn = extern(C) GArrowDate64ArrayBuilder* function() nothrow;
__gshared c_garrow_date64_array_builder_newFn c_garrow_date64_array_builder_new; ///
private alias c_garrow_date64_array_builder_appendFn = extern(C) gboolean function(GArrowDate64ArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_date64_array_builder_appendFn c_garrow_date64_array_builder_append; ///
private alias c_garrow_date64_array_builder_append_nullFn = extern(C) gboolean function(GArrowDate64ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_date64_array_builder_append_nullFn c_garrow_date64_array_builder_append_null; ///
private alias c_garrow_date64_array_builder_append_nullsFn = extern(C) gboolean function(GArrowDate64ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_date64_array_builder_append_nullsFn c_garrow_date64_array_builder_append_nulls; ///
private alias c_garrow_date64_array_builder_append_valueFn = extern(C) gboolean function(GArrowDate64ArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_date64_array_builder_append_valueFn c_garrow_date64_array_builder_append_value; ///
private alias c_garrow_date64_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDate64ArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_date64_array_builder_append_valuesFn c_garrow_date64_array_builder_append_values; ///

// Date64DataType
private alias c_garrow_date64_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date64_data_type_get_typeFn c_garrow_date64_data_type_get_type; ///
private alias c_garrow_date64_data_type_newFn = extern(C) GArrowDate64DataType* function() nothrow;
__gshared c_garrow_date64_data_type_newFn c_garrow_date64_data_type_new; ///

// Date64Scalar
private alias c_garrow_date64_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_date64_scalar_get_typeFn c_garrow_date64_scalar_get_type; ///
private alias c_garrow_date64_scalar_newFn = extern(C) GArrowDate64Scalar* function(long value) nothrow;
__gshared c_garrow_date64_scalar_newFn c_garrow_date64_scalar_new; ///
private alias c_garrow_date64_scalar_get_valueFn = extern(C) long function(GArrowDate64Scalar* scalar) nothrow;
__gshared c_garrow_date64_scalar_get_valueFn c_garrow_date64_scalar_get_value; ///

// Datum
private alias c_garrow_datum_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_datum_get_typeFn c_garrow_datum_get_type; ///
private alias c_garrow_datum_equalFn = extern(C) gboolean function(GArrowDatum* datum, GArrowDatum* otherDatum) nothrow;
__gshared c_garrow_datum_equalFn c_garrow_datum_equal; ///
private alias c_garrow_datum_is_arrayFn = extern(C) gboolean function(GArrowDatum* datum) nothrow;
__gshared c_garrow_datum_is_arrayFn c_garrow_datum_is_array; ///
private alias c_garrow_datum_is_array_likeFn = extern(C) gboolean function(GArrowDatum* datum) nothrow;
__gshared c_garrow_datum_is_array_likeFn c_garrow_datum_is_array_like; ///
private alias c_garrow_datum_is_scalarFn = extern(C) gboolean function(GArrowDatum* datum) nothrow;
__gshared c_garrow_datum_is_scalarFn c_garrow_datum_is_scalar; ///
private alias c_garrow_datum_is_valueFn = extern(C) gboolean function(GArrowDatum* datum) nothrow;
__gshared c_garrow_datum_is_valueFn c_garrow_datum_is_value; ///
private alias c_garrow_datum_to_stringFn = extern(C) char* function(GArrowDatum* datum) nothrow;
__gshared c_garrow_datum_to_stringFn c_garrow_datum_to_string; ///

// DayMillisecond
private alias c_garrow_day_millisecond_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_day_millisecond_get_typeFn c_garrow_day_millisecond_get_type; ///
private alias c_garrow_day_millisecond_newFn = extern(C) GArrowDayMillisecond* function(int day, int millisecond) nothrow;
__gshared c_garrow_day_millisecond_newFn c_garrow_day_millisecond_new; ///
private alias c_garrow_day_millisecond_equalFn = extern(C) gboolean function(GArrowDayMillisecond* dayMillisecond, GArrowDayMillisecond* otherDayMillisecond) nothrow;
__gshared c_garrow_day_millisecond_equalFn c_garrow_day_millisecond_equal; ///
private alias c_garrow_day_millisecond_less_thanFn = extern(C) gboolean function(GArrowDayMillisecond* dayMillisecond, GArrowDayMillisecond* otherDayMillisecond) nothrow;
__gshared c_garrow_day_millisecond_less_thanFn c_garrow_day_millisecond_less_than; ///

// DayOfWeekOptions
private alias c_garrow_day_of_week_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_day_of_week_options_get_typeFn c_garrow_day_of_week_options_get_type; ///
private alias c_garrow_day_of_week_options_newFn = extern(C) GArrowDayOfWeekOptions* function() nothrow;
__gshared c_garrow_day_of_week_options_newFn c_garrow_day_of_week_options_new; ///

// DayTimeIntervalArray
private alias c_garrow_day_time_interval_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_day_time_interval_array_get_typeFn c_garrow_day_time_interval_array_get_type; ///
private alias c_garrow_day_time_interval_array_newFn = extern(C) GArrowDayTimeIntervalArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_day_time_interval_array_newFn c_garrow_day_time_interval_array_new; ///
private alias c_garrow_day_time_interval_array_get_valueFn = extern(C) GArrowDayMillisecond* function(GArrowDayTimeIntervalArray* array, long i) nothrow;
__gshared c_garrow_day_time_interval_array_get_valueFn c_garrow_day_time_interval_array_get_value; ///
private alias c_garrow_day_time_interval_array_get_valuesFn = extern(C) GList* function(GArrowDayTimeIntervalArray* array) nothrow;
__gshared c_garrow_day_time_interval_array_get_valuesFn c_garrow_day_time_interval_array_get_values; ///

// DayTimeIntervalArrayBuilder
private alias c_garrow_day_time_interval_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_day_time_interval_array_builder_get_typeFn c_garrow_day_time_interval_array_builder_get_type; ///
private alias c_garrow_day_time_interval_array_builder_newFn = extern(C) GArrowDayTimeIntervalArrayBuilder* function() nothrow;
__gshared c_garrow_day_time_interval_array_builder_newFn c_garrow_day_time_interval_array_builder_new; ///
private alias c_garrow_day_time_interval_array_builder_append_valueFn = extern(C) gboolean function(GArrowDayTimeIntervalArrayBuilder* builder, GArrowDayMillisecond* value, GError** _err) nothrow;
__gshared c_garrow_day_time_interval_array_builder_append_valueFn c_garrow_day_time_interval_array_builder_append_value; ///
private alias c_garrow_day_time_interval_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDayTimeIntervalArrayBuilder* builder, const(GArrowDayMillisecond*)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_day_time_interval_array_builder_append_valuesFn c_garrow_day_time_interval_array_builder_append_values; ///

// DayTimeIntervalDataType
private alias c_garrow_day_time_interval_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_day_time_interval_data_type_get_typeFn c_garrow_day_time_interval_data_type_get_type; ///
private alias c_garrow_day_time_interval_data_type_newFn = extern(C) GArrowDayTimeIntervalDataType* function() nothrow;
__gshared c_garrow_day_time_interval_data_type_newFn c_garrow_day_time_interval_data_type_new; ///

// DayTimeIntervalScalar
private alias c_garrow_day_time_interval_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_day_time_interval_scalar_get_typeFn c_garrow_day_time_interval_scalar_get_type; ///
private alias c_garrow_day_time_interval_scalar_newFn = extern(C) GArrowDayTimeIntervalScalar* function(GArrowDayMillisecond* value) nothrow;
__gshared c_garrow_day_time_interval_scalar_newFn c_garrow_day_time_interval_scalar_new; ///
private alias c_garrow_day_time_interval_scalar_get_valueFn = extern(C) GArrowDayMillisecond* function(GArrowDayTimeIntervalScalar* scalar) nothrow;
__gshared c_garrow_day_time_interval_scalar_get_valueFn c_garrow_day_time_interval_scalar_get_value; ///

// Decimal128
private alias c_garrow_decimal128_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal128_get_typeFn c_garrow_decimal128_get_type; ///
private alias c_garrow_decimal128_new_integerFn = extern(C) GArrowDecimal128* function(long data) nothrow;
__gshared c_garrow_decimal128_new_integerFn c_garrow_decimal128_new_integer; ///
private alias c_garrow_decimal128_new_stringFn = extern(C) GArrowDecimal128* function(const(char)* data, GError** _err) nothrow;
__gshared c_garrow_decimal128_new_stringFn c_garrow_decimal128_new_string; ///
private alias c_garrow_decimal128_absFn = extern(C) void function(GArrowDecimal128* decimal) nothrow;
__gshared c_garrow_decimal128_absFn c_garrow_decimal128_abs; ///
private alias c_garrow_decimal128_copyFn = extern(C) GArrowDecimal128* function(GArrowDecimal128* decimal) nothrow;
__gshared c_garrow_decimal128_copyFn c_garrow_decimal128_copy; ///
private alias c_garrow_decimal128_divideFn = extern(C) GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right, GArrowDecimal128** remainder, GError** _err) nothrow;
__gshared c_garrow_decimal128_divideFn c_garrow_decimal128_divide; ///
private alias c_garrow_decimal128_equalFn = extern(C) gboolean function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) nothrow;
__gshared c_garrow_decimal128_equalFn c_garrow_decimal128_equal; ///
private alias c_garrow_decimal128_greater_thanFn = extern(C) gboolean function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) nothrow;
__gshared c_garrow_decimal128_greater_thanFn c_garrow_decimal128_greater_than; ///
private alias c_garrow_decimal128_greater_than_or_equalFn = extern(C) gboolean function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) nothrow;
__gshared c_garrow_decimal128_greater_than_or_equalFn c_garrow_decimal128_greater_than_or_equal; ///
private alias c_garrow_decimal128_less_thanFn = extern(C) gboolean function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) nothrow;
__gshared c_garrow_decimal128_less_thanFn c_garrow_decimal128_less_than; ///
private alias c_garrow_decimal128_less_than_or_equalFn = extern(C) gboolean function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) nothrow;
__gshared c_garrow_decimal128_less_than_or_equalFn c_garrow_decimal128_less_than_or_equal; ///
private alias c_garrow_decimal128_minusFn = extern(C) GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right) nothrow;
__gshared c_garrow_decimal128_minusFn c_garrow_decimal128_minus; ///
private alias c_garrow_decimal128_multiplyFn = extern(C) GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right) nothrow;
__gshared c_garrow_decimal128_multiplyFn c_garrow_decimal128_multiply; ///
private alias c_garrow_decimal128_negateFn = extern(C) void function(GArrowDecimal128* decimal) nothrow;
__gshared c_garrow_decimal128_negateFn c_garrow_decimal128_negate; ///
private alias c_garrow_decimal128_not_equalFn = extern(C) gboolean function(GArrowDecimal128* decimal, GArrowDecimal128* otherDecimal) nothrow;
__gshared c_garrow_decimal128_not_equalFn c_garrow_decimal128_not_equal; ///
private alias c_garrow_decimal128_plusFn = extern(C) GArrowDecimal128* function(GArrowDecimal128* left, GArrowDecimal128* right) nothrow;
__gshared c_garrow_decimal128_plusFn c_garrow_decimal128_plus; ///
private alias c_garrow_decimal128_rescaleFn = extern(C) GArrowDecimal128* function(GArrowDecimal128* decimal, int originalScale, int newScale, GError** _err) nothrow;
__gshared c_garrow_decimal128_rescaleFn c_garrow_decimal128_rescale; ///
private alias c_garrow_decimal128_to_bytesFn = extern(C) GBytes* function(GArrowDecimal128* decimal) nothrow;
__gshared c_garrow_decimal128_to_bytesFn c_garrow_decimal128_to_bytes; ///
private alias c_garrow_decimal128_to_integerFn = extern(C) long function(GArrowDecimal128* decimal) nothrow;
__gshared c_garrow_decimal128_to_integerFn c_garrow_decimal128_to_integer; ///
private alias c_garrow_decimal128_to_stringFn = extern(C) char* function(GArrowDecimal128* decimal) nothrow;
__gshared c_garrow_decimal128_to_stringFn c_garrow_decimal128_to_string; ///
private alias c_garrow_decimal128_to_string_scaleFn = extern(C) char* function(GArrowDecimal128* decimal, int scale) nothrow;
__gshared c_garrow_decimal128_to_string_scaleFn c_garrow_decimal128_to_string_scale; ///

// Decimal128Array
private alias c_garrow_decimal128_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal128_array_get_typeFn c_garrow_decimal128_array_get_type; ///
private alias c_garrow_decimal128_array_format_valueFn = extern(C) char* function(GArrowDecimal128Array* array, long i) nothrow;
__gshared c_garrow_decimal128_array_format_valueFn c_garrow_decimal128_array_format_value; ///
private alias c_garrow_decimal128_array_get_valueFn = extern(C) GArrowDecimal128* function(GArrowDecimal128Array* array, long i) nothrow;
__gshared c_garrow_decimal128_array_get_valueFn c_garrow_decimal128_array_get_value; ///

// Decimal128ArrayBuilder
private alias c_garrow_decimal128_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal128_array_builder_get_typeFn c_garrow_decimal128_array_builder_get_type; ///
private alias c_garrow_decimal128_array_builder_newFn = extern(C) GArrowDecimal128ArrayBuilder* function(GArrowDecimal128DataType* dataType) nothrow;
__gshared c_garrow_decimal128_array_builder_newFn c_garrow_decimal128_array_builder_new; ///
private alias c_garrow_decimal128_array_builder_appendFn = extern(C) gboolean function(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128* value, GError** _err) nothrow;
__gshared c_garrow_decimal128_array_builder_appendFn c_garrow_decimal128_array_builder_append; ///
private alias c_garrow_decimal128_array_builder_append_nullFn = extern(C) gboolean function(GArrowDecimal128ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_decimal128_array_builder_append_nullFn c_garrow_decimal128_array_builder_append_null; ///
private alias c_garrow_decimal128_array_builder_append_valueFn = extern(C) gboolean function(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128* value, GError** _err) nothrow;
__gshared c_garrow_decimal128_array_builder_append_valueFn c_garrow_decimal128_array_builder_append_value; ///
private alias c_garrow_decimal128_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDecimal128ArrayBuilder* builder, GArrowDecimal128** values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_decimal128_array_builder_append_valuesFn c_garrow_decimal128_array_builder_append_values; ///

// Decimal128DataType
private alias c_garrow_decimal128_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal128_data_type_get_typeFn c_garrow_decimal128_data_type_get_type; ///
private alias c_garrow_decimal128_data_type_newFn = extern(C) GArrowDecimal128DataType* function(int precision, int scale, GError** _err) nothrow;
__gshared c_garrow_decimal128_data_type_newFn c_garrow_decimal128_data_type_new; ///
private alias c_garrow_decimal128_data_type_max_precisionFn = extern(C) int function() nothrow;
__gshared c_garrow_decimal128_data_type_max_precisionFn c_garrow_decimal128_data_type_max_precision; ///

// Decimal128Scalar
private alias c_garrow_decimal128_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal128_scalar_get_typeFn c_garrow_decimal128_scalar_get_type; ///
private alias c_garrow_decimal128_scalar_newFn = extern(C) GArrowDecimal128Scalar* function(GArrowDecimal128DataType* dataType, GArrowDecimal128* value) nothrow;
__gshared c_garrow_decimal128_scalar_newFn c_garrow_decimal128_scalar_new; ///
private alias c_garrow_decimal128_scalar_get_valueFn = extern(C) GArrowDecimal128* function(GArrowDecimal128Scalar* scalar) nothrow;
__gshared c_garrow_decimal128_scalar_get_valueFn c_garrow_decimal128_scalar_get_value; ///

// Decimal256
private alias c_garrow_decimal256_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal256_get_typeFn c_garrow_decimal256_get_type; ///
private alias c_garrow_decimal256_new_integerFn = extern(C) GArrowDecimal256* function(long data) nothrow;
__gshared c_garrow_decimal256_new_integerFn c_garrow_decimal256_new_integer; ///
private alias c_garrow_decimal256_new_stringFn = extern(C) GArrowDecimal256* function(const(char)* data, GError** _err) nothrow;
__gshared c_garrow_decimal256_new_stringFn c_garrow_decimal256_new_string; ///
private alias c_garrow_decimal256_absFn = extern(C) void function(GArrowDecimal256* decimal) nothrow;
__gshared c_garrow_decimal256_absFn c_garrow_decimal256_abs; ///
private alias c_garrow_decimal256_copyFn = extern(C) GArrowDecimal256* function(GArrowDecimal256* decimal) nothrow;
__gshared c_garrow_decimal256_copyFn c_garrow_decimal256_copy; ///
private alias c_garrow_decimal256_divideFn = extern(C) GArrowDecimal256* function(GArrowDecimal256* left, GArrowDecimal256* right, GArrowDecimal256** remainder, GError** _err) nothrow;
__gshared c_garrow_decimal256_divideFn c_garrow_decimal256_divide; ///
private alias c_garrow_decimal256_equalFn = extern(C) gboolean function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) nothrow;
__gshared c_garrow_decimal256_equalFn c_garrow_decimal256_equal; ///
private alias c_garrow_decimal256_greater_thanFn = extern(C) gboolean function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) nothrow;
__gshared c_garrow_decimal256_greater_thanFn c_garrow_decimal256_greater_than; ///
private alias c_garrow_decimal256_greater_than_or_equalFn = extern(C) gboolean function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) nothrow;
__gshared c_garrow_decimal256_greater_than_or_equalFn c_garrow_decimal256_greater_than_or_equal; ///
private alias c_garrow_decimal256_less_thanFn = extern(C) gboolean function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) nothrow;
__gshared c_garrow_decimal256_less_thanFn c_garrow_decimal256_less_than; ///
private alias c_garrow_decimal256_less_than_or_equalFn = extern(C) gboolean function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) nothrow;
__gshared c_garrow_decimal256_less_than_or_equalFn c_garrow_decimal256_less_than_or_equal; ///
private alias c_garrow_decimal256_multiplyFn = extern(C) GArrowDecimal256* function(GArrowDecimal256* left, GArrowDecimal256* right) nothrow;
__gshared c_garrow_decimal256_multiplyFn c_garrow_decimal256_multiply; ///
private alias c_garrow_decimal256_negateFn = extern(C) void function(GArrowDecimal256* decimal) nothrow;
__gshared c_garrow_decimal256_negateFn c_garrow_decimal256_negate; ///
private alias c_garrow_decimal256_not_equalFn = extern(C) gboolean function(GArrowDecimal256* decimal, GArrowDecimal256* otherDecimal) nothrow;
__gshared c_garrow_decimal256_not_equalFn c_garrow_decimal256_not_equal; ///
private alias c_garrow_decimal256_plusFn = extern(C) GArrowDecimal256* function(GArrowDecimal256* left, GArrowDecimal256* right) nothrow;
__gshared c_garrow_decimal256_plusFn c_garrow_decimal256_plus; ///
private alias c_garrow_decimal256_rescaleFn = extern(C) GArrowDecimal256* function(GArrowDecimal256* decimal, int originalScale, int newScale, GError** _err) nothrow;
__gshared c_garrow_decimal256_rescaleFn c_garrow_decimal256_rescale; ///
private alias c_garrow_decimal256_to_bytesFn = extern(C) GBytes* function(GArrowDecimal256* decimal) nothrow;
__gshared c_garrow_decimal256_to_bytesFn c_garrow_decimal256_to_bytes; ///
private alias c_garrow_decimal256_to_stringFn = extern(C) char* function(GArrowDecimal256* decimal) nothrow;
__gshared c_garrow_decimal256_to_stringFn c_garrow_decimal256_to_string; ///
private alias c_garrow_decimal256_to_string_scaleFn = extern(C) char* function(GArrowDecimal256* decimal, int scale) nothrow;
__gshared c_garrow_decimal256_to_string_scaleFn c_garrow_decimal256_to_string_scale; ///

// Decimal256Array
private alias c_garrow_decimal256_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal256_array_get_typeFn c_garrow_decimal256_array_get_type; ///
private alias c_garrow_decimal256_array_format_valueFn = extern(C) char* function(GArrowDecimal256Array* array, long i) nothrow;
__gshared c_garrow_decimal256_array_format_valueFn c_garrow_decimal256_array_format_value; ///
private alias c_garrow_decimal256_array_get_valueFn = extern(C) GArrowDecimal256* function(GArrowDecimal256Array* array, long i) nothrow;
__gshared c_garrow_decimal256_array_get_valueFn c_garrow_decimal256_array_get_value; ///

// Decimal256ArrayBuilder
private alias c_garrow_decimal256_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal256_array_builder_get_typeFn c_garrow_decimal256_array_builder_get_type; ///
private alias c_garrow_decimal256_array_builder_newFn = extern(C) GArrowDecimal256ArrayBuilder* function(GArrowDecimal256DataType* dataType) nothrow;
__gshared c_garrow_decimal256_array_builder_newFn c_garrow_decimal256_array_builder_new; ///
private alias c_garrow_decimal256_array_builder_append_valueFn = extern(C) gboolean function(GArrowDecimal256ArrayBuilder* builder, GArrowDecimal256* value, GError** _err) nothrow;
__gshared c_garrow_decimal256_array_builder_append_valueFn c_garrow_decimal256_array_builder_append_value; ///
private alias c_garrow_decimal256_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDecimal256ArrayBuilder* builder, GArrowDecimal256** values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_decimal256_array_builder_append_valuesFn c_garrow_decimal256_array_builder_append_values; ///

// Decimal256DataType
private alias c_garrow_decimal256_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal256_data_type_get_typeFn c_garrow_decimal256_data_type_get_type; ///
private alias c_garrow_decimal256_data_type_newFn = extern(C) GArrowDecimal256DataType* function(int precision, int scale, GError** _err) nothrow;
__gshared c_garrow_decimal256_data_type_newFn c_garrow_decimal256_data_type_new; ///
private alias c_garrow_decimal256_data_type_max_precisionFn = extern(C) int function() nothrow;
__gshared c_garrow_decimal256_data_type_max_precisionFn c_garrow_decimal256_data_type_max_precision; ///

// Decimal256Scalar
private alias c_garrow_decimal256_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal256_scalar_get_typeFn c_garrow_decimal256_scalar_get_type; ///
private alias c_garrow_decimal256_scalar_newFn = extern(C) GArrowDecimal256Scalar* function(GArrowDecimal256DataType* dataType, GArrowDecimal256* value) nothrow;
__gshared c_garrow_decimal256_scalar_newFn c_garrow_decimal256_scalar_new; ///
private alias c_garrow_decimal256_scalar_get_valueFn = extern(C) GArrowDecimal256* function(GArrowDecimal256Scalar* scalar) nothrow;
__gshared c_garrow_decimal256_scalar_get_valueFn c_garrow_decimal256_scalar_get_value; ///

// Decimal32
private alias c_garrow_decimal32_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal32_get_typeFn c_garrow_decimal32_get_type; ///
private alias c_garrow_decimal32_new_integerFn = extern(C) GArrowDecimal32* function(long data) nothrow;
__gshared c_garrow_decimal32_new_integerFn c_garrow_decimal32_new_integer; ///
private alias c_garrow_decimal32_new_stringFn = extern(C) GArrowDecimal32* function(const(char)* data, GError** _err) nothrow;
__gshared c_garrow_decimal32_new_stringFn c_garrow_decimal32_new_string; ///
private alias c_garrow_decimal32_absFn = extern(C) void function(GArrowDecimal32* decimal) nothrow;
__gshared c_garrow_decimal32_absFn c_garrow_decimal32_abs; ///
private alias c_garrow_decimal32_copyFn = extern(C) GArrowDecimal32* function(GArrowDecimal32* decimal) nothrow;
__gshared c_garrow_decimal32_copyFn c_garrow_decimal32_copy; ///
private alias c_garrow_decimal32_divideFn = extern(C) GArrowDecimal32* function(GArrowDecimal32* left, GArrowDecimal32* right, GArrowDecimal32** remainder, GError** _err) nothrow;
__gshared c_garrow_decimal32_divideFn c_garrow_decimal32_divide; ///
private alias c_garrow_decimal32_equalFn = extern(C) gboolean function(GArrowDecimal32* decimal, GArrowDecimal32* otherDecimal) nothrow;
__gshared c_garrow_decimal32_equalFn c_garrow_decimal32_equal; ///
private alias c_garrow_decimal32_greater_thanFn = extern(C) gboolean function(GArrowDecimal32* decimal, GArrowDecimal32* otherDecimal) nothrow;
__gshared c_garrow_decimal32_greater_thanFn c_garrow_decimal32_greater_than; ///
private alias c_garrow_decimal32_greater_than_or_equalFn = extern(C) gboolean function(GArrowDecimal32* decimal, GArrowDecimal32* otherDecimal) nothrow;
__gshared c_garrow_decimal32_greater_than_or_equalFn c_garrow_decimal32_greater_than_or_equal; ///
private alias c_garrow_decimal32_less_thanFn = extern(C) gboolean function(GArrowDecimal32* decimal, GArrowDecimal32* otherDecimal) nothrow;
__gshared c_garrow_decimal32_less_thanFn c_garrow_decimal32_less_than; ///
private alias c_garrow_decimal32_less_than_or_equalFn = extern(C) gboolean function(GArrowDecimal32* decimal, GArrowDecimal32* otherDecimal) nothrow;
__gshared c_garrow_decimal32_less_than_or_equalFn c_garrow_decimal32_less_than_or_equal; ///
private alias c_garrow_decimal32_minusFn = extern(C) GArrowDecimal32* function(GArrowDecimal32* left, GArrowDecimal32* right) nothrow;
__gshared c_garrow_decimal32_minusFn c_garrow_decimal32_minus; ///
private alias c_garrow_decimal32_multiplyFn = extern(C) GArrowDecimal32* function(GArrowDecimal32* left, GArrowDecimal32* right) nothrow;
__gshared c_garrow_decimal32_multiplyFn c_garrow_decimal32_multiply; ///
private alias c_garrow_decimal32_negateFn = extern(C) void function(GArrowDecimal32* decimal) nothrow;
__gshared c_garrow_decimal32_negateFn c_garrow_decimal32_negate; ///
private alias c_garrow_decimal32_not_equalFn = extern(C) gboolean function(GArrowDecimal32* decimal, GArrowDecimal32* otherDecimal) nothrow;
__gshared c_garrow_decimal32_not_equalFn c_garrow_decimal32_not_equal; ///
private alias c_garrow_decimal32_plusFn = extern(C) GArrowDecimal32* function(GArrowDecimal32* left, GArrowDecimal32* right) nothrow;
__gshared c_garrow_decimal32_plusFn c_garrow_decimal32_plus; ///
private alias c_garrow_decimal32_rescaleFn = extern(C) GArrowDecimal32* function(GArrowDecimal32* decimal, int originalScale, int newScale, GError** _err) nothrow;
__gshared c_garrow_decimal32_rescaleFn c_garrow_decimal32_rescale; ///
private alias c_garrow_decimal32_to_bytesFn = extern(C) GBytes* function(GArrowDecimal32* decimal) nothrow;
__gshared c_garrow_decimal32_to_bytesFn c_garrow_decimal32_to_bytes; ///
private alias c_garrow_decimal32_to_integerFn = extern(C) long function(GArrowDecimal32* decimal) nothrow;
__gshared c_garrow_decimal32_to_integerFn c_garrow_decimal32_to_integer; ///
private alias c_garrow_decimal32_to_stringFn = extern(C) char* function(GArrowDecimal32* decimal) nothrow;
__gshared c_garrow_decimal32_to_stringFn c_garrow_decimal32_to_string; ///
private alias c_garrow_decimal32_to_string_scaleFn = extern(C) char* function(GArrowDecimal32* decimal, int scale) nothrow;
__gshared c_garrow_decimal32_to_string_scaleFn c_garrow_decimal32_to_string_scale; ///

// Decimal32Array
private alias c_garrow_decimal32_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal32_array_get_typeFn c_garrow_decimal32_array_get_type; ///
private alias c_garrow_decimal32_array_format_valueFn = extern(C) char* function(GArrowDecimal32Array* array, long i) nothrow;
__gshared c_garrow_decimal32_array_format_valueFn c_garrow_decimal32_array_format_value; ///
private alias c_garrow_decimal32_array_get_valueFn = extern(C) GArrowDecimal32* function(GArrowDecimal32Array* array, long i) nothrow;
__gshared c_garrow_decimal32_array_get_valueFn c_garrow_decimal32_array_get_value; ///

// Decimal32ArrayBuilder
private alias c_garrow_decimal32_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal32_array_builder_get_typeFn c_garrow_decimal32_array_builder_get_type; ///
private alias c_garrow_decimal32_array_builder_newFn = extern(C) GArrowDecimal32ArrayBuilder* function(GArrowDecimal32DataType* dataType) nothrow;
__gshared c_garrow_decimal32_array_builder_newFn c_garrow_decimal32_array_builder_new; ///
private alias c_garrow_decimal32_array_builder_append_valueFn = extern(C) gboolean function(GArrowDecimal32ArrayBuilder* builder, GArrowDecimal32* value, GError** _err) nothrow;
__gshared c_garrow_decimal32_array_builder_append_valueFn c_garrow_decimal32_array_builder_append_value; ///
private alias c_garrow_decimal32_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDecimal32ArrayBuilder* builder, GArrowDecimal32** values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_decimal32_array_builder_append_valuesFn c_garrow_decimal32_array_builder_append_values; ///

// Decimal32DataType
private alias c_garrow_decimal32_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal32_data_type_get_typeFn c_garrow_decimal32_data_type_get_type; ///
private alias c_garrow_decimal32_data_type_newFn = extern(C) GArrowDecimal32DataType* function(int precision, int scale, GError** _err) nothrow;
__gshared c_garrow_decimal32_data_type_newFn c_garrow_decimal32_data_type_new; ///
private alias c_garrow_decimal32_data_type_max_precisionFn = extern(C) int function() nothrow;
__gshared c_garrow_decimal32_data_type_max_precisionFn c_garrow_decimal32_data_type_max_precision; ///

// Decimal32Scalar
private alias c_garrow_decimal32_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal32_scalar_get_typeFn c_garrow_decimal32_scalar_get_type; ///
private alias c_garrow_decimal32_scalar_newFn = extern(C) GArrowDecimal32Scalar* function(GArrowDecimal32DataType* dataType, GArrowDecimal32* value) nothrow;
__gshared c_garrow_decimal32_scalar_newFn c_garrow_decimal32_scalar_new; ///
private alias c_garrow_decimal32_scalar_get_valueFn = extern(C) GArrowDecimal32* function(GArrowDecimal32Scalar* scalar) nothrow;
__gshared c_garrow_decimal32_scalar_get_valueFn c_garrow_decimal32_scalar_get_value; ///

// Decimal64
private alias c_garrow_decimal64_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal64_get_typeFn c_garrow_decimal64_get_type; ///
private alias c_garrow_decimal64_new_integerFn = extern(C) GArrowDecimal64* function(long data) nothrow;
__gshared c_garrow_decimal64_new_integerFn c_garrow_decimal64_new_integer; ///
private alias c_garrow_decimal64_new_stringFn = extern(C) GArrowDecimal64* function(const(char)* data, GError** _err) nothrow;
__gshared c_garrow_decimal64_new_stringFn c_garrow_decimal64_new_string; ///
private alias c_garrow_decimal64_absFn = extern(C) void function(GArrowDecimal64* decimal) nothrow;
__gshared c_garrow_decimal64_absFn c_garrow_decimal64_abs; ///
private alias c_garrow_decimal64_copyFn = extern(C) GArrowDecimal64* function(GArrowDecimal64* decimal) nothrow;
__gshared c_garrow_decimal64_copyFn c_garrow_decimal64_copy; ///
private alias c_garrow_decimal64_divideFn = extern(C) GArrowDecimal64* function(GArrowDecimal64* left, GArrowDecimal64* right, GArrowDecimal64** remainder, GError** _err) nothrow;
__gshared c_garrow_decimal64_divideFn c_garrow_decimal64_divide; ///
private alias c_garrow_decimal64_equalFn = extern(C) gboolean function(GArrowDecimal64* decimal, GArrowDecimal64* otherDecimal) nothrow;
__gshared c_garrow_decimal64_equalFn c_garrow_decimal64_equal; ///
private alias c_garrow_decimal64_greater_thanFn = extern(C) gboolean function(GArrowDecimal64* decimal, GArrowDecimal64* otherDecimal) nothrow;
__gshared c_garrow_decimal64_greater_thanFn c_garrow_decimal64_greater_than; ///
private alias c_garrow_decimal64_greater_than_or_equalFn = extern(C) gboolean function(GArrowDecimal64* decimal, GArrowDecimal64* otherDecimal) nothrow;
__gshared c_garrow_decimal64_greater_than_or_equalFn c_garrow_decimal64_greater_than_or_equal; ///
private alias c_garrow_decimal64_less_thanFn = extern(C) gboolean function(GArrowDecimal64* decimal, GArrowDecimal64* otherDecimal) nothrow;
__gshared c_garrow_decimal64_less_thanFn c_garrow_decimal64_less_than; ///
private alias c_garrow_decimal64_less_than_or_equalFn = extern(C) gboolean function(GArrowDecimal64* decimal, GArrowDecimal64* otherDecimal) nothrow;
__gshared c_garrow_decimal64_less_than_or_equalFn c_garrow_decimal64_less_than_or_equal; ///
private alias c_garrow_decimal64_minusFn = extern(C) GArrowDecimal64* function(GArrowDecimal64* left, GArrowDecimal64* right) nothrow;
__gshared c_garrow_decimal64_minusFn c_garrow_decimal64_minus; ///
private alias c_garrow_decimal64_multiplyFn = extern(C) GArrowDecimal64* function(GArrowDecimal64* left, GArrowDecimal64* right) nothrow;
__gshared c_garrow_decimal64_multiplyFn c_garrow_decimal64_multiply; ///
private alias c_garrow_decimal64_negateFn = extern(C) void function(GArrowDecimal64* decimal) nothrow;
__gshared c_garrow_decimal64_negateFn c_garrow_decimal64_negate; ///
private alias c_garrow_decimal64_not_equalFn = extern(C) gboolean function(GArrowDecimal64* decimal, GArrowDecimal64* otherDecimal) nothrow;
__gshared c_garrow_decimal64_not_equalFn c_garrow_decimal64_not_equal; ///
private alias c_garrow_decimal64_plusFn = extern(C) GArrowDecimal64* function(GArrowDecimal64* left, GArrowDecimal64* right) nothrow;
__gshared c_garrow_decimal64_plusFn c_garrow_decimal64_plus; ///
private alias c_garrow_decimal64_rescaleFn = extern(C) GArrowDecimal64* function(GArrowDecimal64* decimal, int originalScale, int newScale, GError** _err) nothrow;
__gshared c_garrow_decimal64_rescaleFn c_garrow_decimal64_rescale; ///
private alias c_garrow_decimal64_to_bytesFn = extern(C) GBytes* function(GArrowDecimal64* decimal) nothrow;
__gshared c_garrow_decimal64_to_bytesFn c_garrow_decimal64_to_bytes; ///
private alias c_garrow_decimal64_to_integerFn = extern(C) long function(GArrowDecimal64* decimal) nothrow;
__gshared c_garrow_decimal64_to_integerFn c_garrow_decimal64_to_integer; ///
private alias c_garrow_decimal64_to_stringFn = extern(C) char* function(GArrowDecimal64* decimal) nothrow;
__gshared c_garrow_decimal64_to_stringFn c_garrow_decimal64_to_string; ///
private alias c_garrow_decimal64_to_string_scaleFn = extern(C) char* function(GArrowDecimal64* decimal, int scale) nothrow;
__gshared c_garrow_decimal64_to_string_scaleFn c_garrow_decimal64_to_string_scale; ///

// Decimal64Array
private alias c_garrow_decimal64_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal64_array_get_typeFn c_garrow_decimal64_array_get_type; ///
private alias c_garrow_decimal64_array_format_valueFn = extern(C) char* function(GArrowDecimal64Array* array, long i) nothrow;
__gshared c_garrow_decimal64_array_format_valueFn c_garrow_decimal64_array_format_value; ///
private alias c_garrow_decimal64_array_get_valueFn = extern(C) GArrowDecimal64* function(GArrowDecimal64Array* array, long i) nothrow;
__gshared c_garrow_decimal64_array_get_valueFn c_garrow_decimal64_array_get_value; ///

// Decimal64ArrayBuilder
private alias c_garrow_decimal64_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal64_array_builder_get_typeFn c_garrow_decimal64_array_builder_get_type; ///
private alias c_garrow_decimal64_array_builder_newFn = extern(C) GArrowDecimal64ArrayBuilder* function(GArrowDecimal64DataType* dataType) nothrow;
__gshared c_garrow_decimal64_array_builder_newFn c_garrow_decimal64_array_builder_new; ///
private alias c_garrow_decimal64_array_builder_append_valueFn = extern(C) gboolean function(GArrowDecimal64ArrayBuilder* builder, GArrowDecimal64* value, GError** _err) nothrow;
__gshared c_garrow_decimal64_array_builder_append_valueFn c_garrow_decimal64_array_builder_append_value; ///
private alias c_garrow_decimal64_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDecimal64ArrayBuilder* builder, GArrowDecimal64** values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_decimal64_array_builder_append_valuesFn c_garrow_decimal64_array_builder_append_values; ///

// Decimal64DataType
private alias c_garrow_decimal64_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal64_data_type_get_typeFn c_garrow_decimal64_data_type_get_type; ///
private alias c_garrow_decimal64_data_type_newFn = extern(C) GArrowDecimal64DataType* function(int precision, int scale, GError** _err) nothrow;
__gshared c_garrow_decimal64_data_type_newFn c_garrow_decimal64_data_type_new; ///
private alias c_garrow_decimal64_data_type_max_precisionFn = extern(C) int function() nothrow;
__gshared c_garrow_decimal64_data_type_max_precisionFn c_garrow_decimal64_data_type_max_precision; ///

// Decimal64Scalar
private alias c_garrow_decimal64_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal64_scalar_get_typeFn c_garrow_decimal64_scalar_get_type; ///
private alias c_garrow_decimal64_scalar_newFn = extern(C) GArrowDecimal64Scalar* function(GArrowDecimal64DataType* dataType, GArrowDecimal64* value) nothrow;
__gshared c_garrow_decimal64_scalar_newFn c_garrow_decimal64_scalar_new; ///
private alias c_garrow_decimal64_scalar_get_valueFn = extern(C) GArrowDecimal64* function(GArrowDecimal64Scalar* scalar) nothrow;
__gshared c_garrow_decimal64_scalar_get_valueFn c_garrow_decimal64_scalar_get_value; ///

// DecimalDataType
private alias c_garrow_decimal_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_decimal_data_type_get_typeFn c_garrow_decimal_data_type_get_type; ///
private alias c_garrow_decimal_data_type_newFn = extern(C) GArrowDecimalDataType* function(int precision, int scale, GError** _err) nothrow;
__gshared c_garrow_decimal_data_type_newFn c_garrow_decimal_data_type_new; ///
private alias c_garrow_decimal_data_type_get_precisionFn = extern(C) int function(GArrowDecimalDataType* decimalDataType) nothrow;
__gshared c_garrow_decimal_data_type_get_precisionFn c_garrow_decimal_data_type_get_precision; ///
private alias c_garrow_decimal_data_type_get_scaleFn = extern(C) int function(GArrowDecimalDataType* decimalDataType) nothrow;
__gshared c_garrow_decimal_data_type_get_scaleFn c_garrow_decimal_data_type_get_scale; ///

// DenseUnionArray
private alias c_garrow_dense_union_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_dense_union_array_get_typeFn c_garrow_dense_union_array_get_type; ///
private alias c_garrow_dense_union_array_newFn = extern(C) GArrowDenseUnionArray* function(GArrowInt8Array* typeIds, GArrowInt32Array* valueOffsets, GList* fields, GError** _err) nothrow;
__gshared c_garrow_dense_union_array_newFn c_garrow_dense_union_array_new; ///
private alias c_garrow_dense_union_array_new_data_typeFn = extern(C) GArrowDenseUnionArray* function(GArrowDenseUnionDataType* dataType, GArrowInt8Array* typeIds, GArrowInt32Array* valueOffsets, GList* fields, GError** _err) nothrow;
__gshared c_garrow_dense_union_array_new_data_typeFn c_garrow_dense_union_array_new_data_type; ///
private alias c_garrow_dense_union_array_get_value_offsetFn = extern(C) int function(GArrowDenseUnionArray* array, long i) nothrow;
__gshared c_garrow_dense_union_array_get_value_offsetFn c_garrow_dense_union_array_get_value_offset; ///

// DenseUnionArrayBuilder
private alias c_garrow_dense_union_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_dense_union_array_builder_get_typeFn c_garrow_dense_union_array_builder_get_type; ///
private alias c_garrow_dense_union_array_builder_newFn = extern(C) GArrowDenseUnionArrayBuilder* function(GArrowDenseUnionDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_dense_union_array_builder_newFn c_garrow_dense_union_array_builder_new; ///

// DenseUnionDataType
private alias c_garrow_dense_union_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_dense_union_data_type_get_typeFn c_garrow_dense_union_data_type_get_type; ///
private alias c_garrow_dense_union_data_type_newFn = extern(C) GArrowDenseUnionDataType* function(GList* fields, byte* typeCodes, size_t nTypeCodes) nothrow;
__gshared c_garrow_dense_union_data_type_newFn c_garrow_dense_union_data_type_new; ///

// DenseUnionScalar
private alias c_garrow_dense_union_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_dense_union_scalar_get_typeFn c_garrow_dense_union_scalar_get_type; ///
private alias c_garrow_dense_union_scalar_newFn = extern(C) GArrowDenseUnionScalar* function(GArrowDenseUnionDataType* dataType, byte typeCode, GArrowScalar* value) nothrow;
__gshared c_garrow_dense_union_scalar_newFn c_garrow_dense_union_scalar_new; ///

// DictionaryArray
private alias c_garrow_dictionary_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_dictionary_array_get_typeFn c_garrow_dictionary_array_get_type; ///
private alias c_garrow_dictionary_array_newFn = extern(C) GArrowDictionaryArray* function(GArrowDataType* dataType, GArrowArray* indices, GArrowArray* dictionary, GError** _err) nothrow;
__gshared c_garrow_dictionary_array_newFn c_garrow_dictionary_array_new; ///
private alias c_garrow_dictionary_array_get_dictionaryFn = extern(C) GArrowArray* function(GArrowDictionaryArray* array) nothrow;
__gshared c_garrow_dictionary_array_get_dictionaryFn c_garrow_dictionary_array_get_dictionary; ///
private alias c_garrow_dictionary_array_get_dictionary_data_typeFn = extern(C) GArrowDictionaryDataType* function(GArrowDictionaryArray* array) nothrow;
__gshared c_garrow_dictionary_array_get_dictionary_data_typeFn c_garrow_dictionary_array_get_dictionary_data_type; ///
private alias c_garrow_dictionary_array_get_indicesFn = extern(C) GArrowArray* function(GArrowDictionaryArray* array) nothrow;
__gshared c_garrow_dictionary_array_get_indicesFn c_garrow_dictionary_array_get_indices; ///

// DictionaryDataType
private alias c_garrow_dictionary_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_dictionary_data_type_get_typeFn c_garrow_dictionary_data_type_get_type; ///
private alias c_garrow_dictionary_data_type_newFn = extern(C) GArrowDictionaryDataType* function(GArrowDataType* indexDataType, GArrowDataType* valueDataType, gboolean ordered) nothrow;
__gshared c_garrow_dictionary_data_type_newFn c_garrow_dictionary_data_type_new; ///
private alias c_garrow_dictionary_data_type_get_index_data_typeFn = extern(C) GArrowDataType* function(GArrowDictionaryDataType* dictionaryDataType) nothrow;
__gshared c_garrow_dictionary_data_type_get_index_data_typeFn c_garrow_dictionary_data_type_get_index_data_type; ///
private alias c_garrow_dictionary_data_type_get_value_data_typeFn = extern(C) GArrowDataType* function(GArrowDictionaryDataType* dictionaryDataType) nothrow;
__gshared c_garrow_dictionary_data_type_get_value_data_typeFn c_garrow_dictionary_data_type_get_value_data_type; ///
private alias c_garrow_dictionary_data_type_is_orderedFn = extern(C) gboolean function(GArrowDictionaryDataType* dictionaryDataType) nothrow;
__gshared c_garrow_dictionary_data_type_is_orderedFn c_garrow_dictionary_data_type_is_ordered; ///

// DictionaryEncodeOptions
private alias c_garrow_dictionary_encode_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_dictionary_encode_options_get_typeFn c_garrow_dictionary_encode_options_get_type; ///
private alias c_garrow_dictionary_encode_options_newFn = extern(C) GArrowDictionaryEncodeOptions* function() nothrow;
__gshared c_garrow_dictionary_encode_options_newFn c_garrow_dictionary_encode_options_new; ///

// DoubleArray
private alias c_garrow_double_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_double_array_get_typeFn c_garrow_double_array_get_type; ///
private alias c_garrow_double_array_newFn = extern(C) GArrowDoubleArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_double_array_newFn c_garrow_double_array_new; ///
private alias c_garrow_double_array_get_valueFn = extern(C) double function(GArrowDoubleArray* array, long i) nothrow;
__gshared c_garrow_double_array_get_valueFn c_garrow_double_array_get_value; ///
private alias c_garrow_double_array_get_valuesFn = extern(C) const(double)* function(GArrowDoubleArray* array, long* length) nothrow;
__gshared c_garrow_double_array_get_valuesFn c_garrow_double_array_get_values; ///
private alias c_garrow_double_array_sumFn = extern(C) double function(GArrowDoubleArray* array, GError** _err) nothrow;
__gshared c_garrow_double_array_sumFn c_garrow_double_array_sum; ///

// DoubleArrayBuilder
private alias c_garrow_double_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_double_array_builder_get_typeFn c_garrow_double_array_builder_get_type; ///
private alias c_garrow_double_array_builder_newFn = extern(C) GArrowDoubleArrayBuilder* function() nothrow;
__gshared c_garrow_double_array_builder_newFn c_garrow_double_array_builder_new; ///
private alias c_garrow_double_array_builder_appendFn = extern(C) gboolean function(GArrowDoubleArrayBuilder* builder, double value, GError** _err) nothrow;
__gshared c_garrow_double_array_builder_appendFn c_garrow_double_array_builder_append; ///
private alias c_garrow_double_array_builder_append_nullFn = extern(C) gboolean function(GArrowDoubleArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_double_array_builder_append_nullFn c_garrow_double_array_builder_append_null; ///
private alias c_garrow_double_array_builder_append_nullsFn = extern(C) gboolean function(GArrowDoubleArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_double_array_builder_append_nullsFn c_garrow_double_array_builder_append_nulls; ///
private alias c_garrow_double_array_builder_append_valueFn = extern(C) gboolean function(GArrowDoubleArrayBuilder* builder, double value, GError** _err) nothrow;
__gshared c_garrow_double_array_builder_append_valueFn c_garrow_double_array_builder_append_value; ///
private alias c_garrow_double_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDoubleArrayBuilder* builder, const(double)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_double_array_builder_append_valuesFn c_garrow_double_array_builder_append_values; ///

// DoubleDataType
private alias c_garrow_double_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_double_data_type_get_typeFn c_garrow_double_data_type_get_type; ///
private alias c_garrow_double_data_type_newFn = extern(C) GArrowDoubleDataType* function() nothrow;
__gshared c_garrow_double_data_type_newFn c_garrow_double_data_type_new; ///

// DoubleScalar
private alias c_garrow_double_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_double_scalar_get_typeFn c_garrow_double_scalar_get_type; ///
private alias c_garrow_double_scalar_newFn = extern(C) GArrowDoubleScalar* function(double value) nothrow;
__gshared c_garrow_double_scalar_newFn c_garrow_double_scalar_new; ///
private alias c_garrow_double_scalar_get_valueFn = extern(C) double function(GArrowDoubleScalar* scalar) nothrow;
__gshared c_garrow_double_scalar_get_valueFn c_garrow_double_scalar_get_value; ///

// DurationArray
private alias c_garrow_duration_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_duration_array_get_typeFn c_garrow_duration_array_get_type; ///
private alias c_garrow_duration_array_newFn = extern(C) GArrowDurationArray* function(GArrowDurationDataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_duration_array_newFn c_garrow_duration_array_new; ///
private alias c_garrow_duration_array_get_valueFn = extern(C) long function(GArrowDurationArray* array, long i) nothrow;
__gshared c_garrow_duration_array_get_valueFn c_garrow_duration_array_get_value; ///
private alias c_garrow_duration_array_get_valuesFn = extern(C) const(long)* function(GArrowDurationArray* array, long* length) nothrow;
__gshared c_garrow_duration_array_get_valuesFn c_garrow_duration_array_get_values; ///

// DurationArrayBuilder
private alias c_garrow_duration_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_duration_array_builder_get_typeFn c_garrow_duration_array_builder_get_type; ///
private alias c_garrow_duration_array_builder_newFn = extern(C) GArrowDurationArrayBuilder* function(GArrowDurationDataType* dataType) nothrow;
__gshared c_garrow_duration_array_builder_newFn c_garrow_duration_array_builder_new; ///
private alias c_garrow_duration_array_builder_append_valueFn = extern(C) gboolean function(GArrowDurationArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_duration_array_builder_append_valueFn c_garrow_duration_array_builder_append_value; ///
private alias c_garrow_duration_array_builder_append_valuesFn = extern(C) gboolean function(GArrowDurationArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_duration_array_builder_append_valuesFn c_garrow_duration_array_builder_append_values; ///

// DurationDataType
private alias c_garrow_duration_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_duration_data_type_get_typeFn c_garrow_duration_data_type_get_type; ///
private alias c_garrow_duration_data_type_newFn = extern(C) GArrowDurationDataType* function(GArrowTimeUnit unit) nothrow;
__gshared c_garrow_duration_data_type_newFn c_garrow_duration_data_type_new; ///
private alias c_garrow_duration_data_type_get_unitFn = extern(C) GArrowTimeUnit function(GArrowDurationDataType* dataType) nothrow;
__gshared c_garrow_duration_data_type_get_unitFn c_garrow_duration_data_type_get_unit; ///

// DurationScalar
private alias c_garrow_duration_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_duration_scalar_get_typeFn c_garrow_duration_scalar_get_type; ///
private alias c_garrow_duration_scalar_newFn = extern(C) GArrowDurationScalar* function(GArrowDurationDataType* dataType, long value) nothrow;
__gshared c_garrow_duration_scalar_newFn c_garrow_duration_scalar_new; ///
private alias c_garrow_duration_scalar_get_valueFn = extern(C) long function(GArrowDurationScalar* scalar) nothrow;
__gshared c_garrow_duration_scalar_get_valueFn c_garrow_duration_scalar_get_value; ///

// ElementWiseAggregateOptions
private alias c_garrow_element_wise_aggregate_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_element_wise_aggregate_options_get_typeFn c_garrow_element_wise_aggregate_options_get_type; ///
private alias c_garrow_element_wise_aggregate_options_newFn = extern(C) GArrowElementWiseAggregateOptions* function() nothrow;
__gshared c_garrow_element_wise_aggregate_options_newFn c_garrow_element_wise_aggregate_options_new; ///

// EqualOptions
private alias c_garrow_equal_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_equal_options_get_typeFn c_garrow_equal_options_get_type; ///
private alias c_garrow_equal_options_newFn = extern(C) GArrowEqualOptions* function() nothrow;
__gshared c_garrow_equal_options_newFn c_garrow_equal_options_new; ///
private alias c_garrow_equal_options_is_approxFn = extern(C) gboolean function(GArrowEqualOptions* options) nothrow;
__gshared c_garrow_equal_options_is_approxFn c_garrow_equal_options_is_approx; ///

// ExecuteContext
private alias c_garrow_execute_context_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_execute_context_get_typeFn c_garrow_execute_context_get_type; ///
private alias c_garrow_execute_context_newFn = extern(C) GArrowExecuteContext* function(GArrowExecutor* executor) nothrow;
__gshared c_garrow_execute_context_newFn c_garrow_execute_context_new; ///

// ExecuteNode
private alias c_garrow_execute_node_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_execute_node_get_typeFn c_garrow_execute_node_get_type; ///
private alias c_garrow_execute_node_get_kind_nameFn = extern(C) const(char)* function(GArrowExecuteNode* node) nothrow;
__gshared c_garrow_execute_node_get_kind_nameFn c_garrow_execute_node_get_kind_name; ///
private alias c_garrow_execute_node_get_output_schemaFn = extern(C) GArrowSchema* function(GArrowExecuteNode* node) nothrow;
__gshared c_garrow_execute_node_get_output_schemaFn c_garrow_execute_node_get_output_schema; ///

// ExecuteNodeOptions
private alias c_garrow_execute_node_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_execute_node_options_get_typeFn c_garrow_execute_node_options_get_type; ///

// ExecutePlan
private alias c_garrow_execute_plan_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_execute_plan_get_typeFn c_garrow_execute_plan_get_type; ///
private alias c_garrow_execute_plan_newFn = extern(C) GArrowExecutePlan* function(GArrowExecuteContext* context, GError** _err) nothrow;
__gshared c_garrow_execute_plan_newFn c_garrow_execute_plan_new; ///
private alias c_garrow_execute_plan_build_aggregate_nodeFn = extern(C) GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowAggregateNodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_execute_plan_build_aggregate_nodeFn c_garrow_execute_plan_build_aggregate_node; ///
private alias c_garrow_execute_plan_build_filter_nodeFn = extern(C) GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowFilterNodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_execute_plan_build_filter_nodeFn c_garrow_execute_plan_build_filter_node; ///
private alias c_garrow_execute_plan_build_hash_join_nodeFn = extern(C) GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* left, GArrowExecuteNode* right, GArrowHashJoinNodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_execute_plan_build_hash_join_nodeFn c_garrow_execute_plan_build_hash_join_node; ///
private alias c_garrow_execute_plan_build_nodeFn = extern(C) GArrowExecuteNode* function(GArrowExecutePlan* plan, const(char)* factoryName, GList* inputs, GArrowExecuteNodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_execute_plan_build_nodeFn c_garrow_execute_plan_build_node; ///
private alias c_garrow_execute_plan_build_project_nodeFn = extern(C) GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowProjectNodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_execute_plan_build_project_nodeFn c_garrow_execute_plan_build_project_node; ///
private alias c_garrow_execute_plan_build_sink_nodeFn = extern(C) GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowExecuteNode* input, GArrowSinkNodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_execute_plan_build_sink_nodeFn c_garrow_execute_plan_build_sink_node; ///
private alias c_garrow_execute_plan_build_source_nodeFn = extern(C) GArrowExecuteNode* function(GArrowExecutePlan* plan, GArrowSourceNodeOptions* options, GError** _err) nothrow;
__gshared c_garrow_execute_plan_build_source_nodeFn c_garrow_execute_plan_build_source_node; ///
private alias c_garrow_execute_plan_get_nodesFn = extern(C) GList* function(GArrowExecutePlan* plan) nothrow;
__gshared c_garrow_execute_plan_get_nodesFn c_garrow_execute_plan_get_nodes; ///
private alias c_garrow_execute_plan_startFn = extern(C) void function(GArrowExecutePlan* plan) nothrow;
__gshared c_garrow_execute_plan_startFn c_garrow_execute_plan_start; ///
private alias c_garrow_execute_plan_stopFn = extern(C) void function(GArrowExecutePlan* plan) nothrow;
__gshared c_garrow_execute_plan_stopFn c_garrow_execute_plan_stop; ///
private alias c_garrow_execute_plan_validateFn = extern(C) gboolean function(GArrowExecutePlan* plan, GError** _err) nothrow;
__gshared c_garrow_execute_plan_validateFn c_garrow_execute_plan_validate; ///
private alias c_garrow_execute_plan_waitFn = extern(C) gboolean function(GArrowExecutePlan* plan, GError** _err) nothrow;
__gshared c_garrow_execute_plan_waitFn c_garrow_execute_plan_wait; ///

// Executor
private alias c_garrow_executor_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_executor_get_typeFn c_garrow_executor_get_type; ///

// Expression
private alias c_garrow_expression_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_expression_get_typeFn c_garrow_expression_get_type; ///
private alias c_garrow_expression_equalFn = extern(C) gboolean function(GArrowExpression* expression, GArrowExpression* otherExpression) nothrow;
__gshared c_garrow_expression_equalFn c_garrow_expression_equal; ///
private alias c_garrow_expression_to_stringFn = extern(C) char* function(GArrowExpression* expression) nothrow;
__gshared c_garrow_expression_to_stringFn c_garrow_expression_to_string; ///

// ExtensionArray
private alias c_garrow_extension_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_extension_array_get_typeFn c_garrow_extension_array_get_type; ///
private alias c_garrow_extension_array_get_storageFn = extern(C) GArrowArray* function(GArrowExtensionArray* array) nothrow;
__gshared c_garrow_extension_array_get_storageFn c_garrow_extension_array_get_storage; ///

// ExtensionDataType
private alias c_garrow_extension_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_extension_data_type_get_typeFn c_garrow_extension_data_type_get_type; ///
private alias c_garrow_extension_data_type_get_extension_nameFn = extern(C) char* function(GArrowExtensionDataType* dataType) nothrow;
__gshared c_garrow_extension_data_type_get_extension_nameFn c_garrow_extension_data_type_get_extension_name; ///
private alias c_garrow_extension_data_type_wrap_arrayFn = extern(C) GArrowExtensionArray* function(GArrowExtensionDataType* dataType, GArrowArray* storage) nothrow;
__gshared c_garrow_extension_data_type_wrap_arrayFn c_garrow_extension_data_type_wrap_array; ///
private alias c_garrow_extension_data_type_wrap_chunked_arrayFn = extern(C) GArrowChunkedArray* function(GArrowExtensionDataType* dataType, GArrowChunkedArray* storage) nothrow;
__gshared c_garrow_extension_data_type_wrap_chunked_arrayFn c_garrow_extension_data_type_wrap_chunked_array; ///

// ExtensionDataTypeRegistry
private alias c_garrow_extension_data_type_registry_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_extension_data_type_registry_get_typeFn c_garrow_extension_data_type_registry_get_type; ///
private alias c_garrow_extension_data_type_registry_defaultFn = extern(C) GArrowExtensionDataTypeRegistry* function() nothrow;
__gshared c_garrow_extension_data_type_registry_defaultFn c_garrow_extension_data_type_registry_default; ///
private alias c_garrow_extension_data_type_registry_lookupFn = extern(C) GArrowExtensionDataType* function(GArrowExtensionDataTypeRegistry* registry, const(char)* name) nothrow;
__gshared c_garrow_extension_data_type_registry_lookupFn c_garrow_extension_data_type_registry_lookup; ///
private alias c_garrow_extension_data_type_registry_registerFn = extern(C) gboolean function(GArrowExtensionDataTypeRegistry* registry, GArrowExtensionDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_extension_data_type_registry_registerFn c_garrow_extension_data_type_registry_register; ///
private alias c_garrow_extension_data_type_registry_unregisterFn = extern(C) gboolean function(GArrowExtensionDataTypeRegistry* registry, const(char)* name, GError** _err) nothrow;
__gshared c_garrow_extension_data_type_registry_unregisterFn c_garrow_extension_data_type_registry_unregister; ///

// ExtensionScalar
private alias c_garrow_extension_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_extension_scalar_get_typeFn c_garrow_extension_scalar_get_type; ///

// ExtractRegexOptions
private alias c_garrow_extract_regex_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_extract_regex_options_get_typeFn c_garrow_extract_regex_options_get_type; ///
private alias c_garrow_extract_regex_options_newFn = extern(C) GArrowExtractRegexOptions* function() nothrow;
__gshared c_garrow_extract_regex_options_newFn c_garrow_extract_regex_options_new; ///

// ExtractRegexSpanOptions
private alias c_garrow_extract_regex_span_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_extract_regex_span_options_get_typeFn c_garrow_extract_regex_span_options_get_type; ///
private alias c_garrow_extract_regex_span_options_newFn = extern(C) GArrowExtractRegexSpanOptions* function() nothrow;
__gshared c_garrow_extract_regex_span_options_newFn c_garrow_extract_regex_span_options_new; ///

// FeatherFileReader
private alias c_garrow_feather_file_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_feather_file_reader_get_typeFn c_garrow_feather_file_reader_get_type; ///
private alias c_garrow_feather_file_reader_newFn = extern(C) GArrowFeatherFileReader* function(GArrowSeekableInputStream* file, GError** _err) nothrow;
__gshared c_garrow_feather_file_reader_newFn c_garrow_feather_file_reader_new; ///
private alias c_garrow_feather_file_reader_get_versionFn = extern(C) int function(GArrowFeatherFileReader* reader) nothrow;
__gshared c_garrow_feather_file_reader_get_versionFn c_garrow_feather_file_reader_get_version; ///
private alias c_garrow_feather_file_reader_readFn = extern(C) GArrowTable* function(GArrowFeatherFileReader* reader, GError** _err) nothrow;
__gshared c_garrow_feather_file_reader_readFn c_garrow_feather_file_reader_read; ///
private alias c_garrow_feather_file_reader_read_indicesFn = extern(C) GArrowTable* function(GArrowFeatherFileReader* reader, const(int)* indices, uint nIndices, GError** _err) nothrow;
__gshared c_garrow_feather_file_reader_read_indicesFn c_garrow_feather_file_reader_read_indices; ///
private alias c_garrow_feather_file_reader_read_namesFn = extern(C) GArrowTable* function(GArrowFeatherFileReader* reader, const(char*)* names, uint nNames, GError** _err) nothrow;
__gshared c_garrow_feather_file_reader_read_namesFn c_garrow_feather_file_reader_read_names; ///

// FeatherWriteProperties
private alias c_garrow_feather_write_properties_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_feather_write_properties_get_typeFn c_garrow_feather_write_properties_get_type; ///
private alias c_garrow_feather_write_properties_newFn = extern(C) GArrowFeatherWriteProperties* function() nothrow;
__gshared c_garrow_feather_write_properties_newFn c_garrow_feather_write_properties_new; ///

// Field
private alias c_garrow_field_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_field_get_typeFn c_garrow_field_get_type; ///
private alias c_garrow_field_newFn = extern(C) GArrowField* function(const(char)* name, GArrowDataType* dataType) nothrow;
__gshared c_garrow_field_newFn c_garrow_field_new; ///
private alias c_garrow_field_new_fullFn = extern(C) GArrowField* function(const(char)* name, GArrowDataType* dataType, gboolean nullable) nothrow;
__gshared c_garrow_field_new_fullFn c_garrow_field_new_full; ///
private alias c_garrow_field_importFn = extern(C) GArrowField* function(void* cAbiSchema, GError** _err) nothrow;
__gshared c_garrow_field_importFn c_garrow_field_import; ///
private alias c_garrow_field_equalFn = extern(C) gboolean function(GArrowField* field, GArrowField* otherField) nothrow;
__gshared c_garrow_field_equalFn c_garrow_field_equal; ///
private alias c_garrow_field_exportFn = extern(C) void* function(GArrowField* field, GError** _err) nothrow;
__gshared c_garrow_field_exportFn c_garrow_field_export; ///
private alias c_garrow_field_get_data_typeFn = extern(C) GArrowDataType* function(GArrowField* field) nothrow;
__gshared c_garrow_field_get_data_typeFn c_garrow_field_get_data_type; ///
private alias c_garrow_field_get_metadataFn = extern(C) GHashTable* function(GArrowField* field) nothrow;
__gshared c_garrow_field_get_metadataFn c_garrow_field_get_metadata; ///
private alias c_garrow_field_get_nameFn = extern(C) const(char)* function(GArrowField* field) nothrow;
__gshared c_garrow_field_get_nameFn c_garrow_field_get_name; ///
private alias c_garrow_field_has_metadataFn = extern(C) gboolean function(GArrowField* field) nothrow;
__gshared c_garrow_field_has_metadataFn c_garrow_field_has_metadata; ///
private alias c_garrow_field_is_nullableFn = extern(C) gboolean function(GArrowField* field) nothrow;
__gshared c_garrow_field_is_nullableFn c_garrow_field_is_nullable; ///
private alias c_garrow_field_remove_metadataFn = extern(C) GArrowField* function(GArrowField* field) nothrow;
__gshared c_garrow_field_remove_metadataFn c_garrow_field_remove_metadata; ///
private alias c_garrow_field_to_stringFn = extern(C) char* function(GArrowField* field) nothrow;
__gshared c_garrow_field_to_stringFn c_garrow_field_to_string; ///
private alias c_garrow_field_to_string_metadataFn = extern(C) char* function(GArrowField* field, gboolean showMetadata) nothrow;
__gshared c_garrow_field_to_string_metadataFn c_garrow_field_to_string_metadata; ///
private alias c_garrow_field_with_merged_metadataFn = extern(C) GArrowField* function(GArrowField* field, GHashTable* metadata) nothrow;
__gshared c_garrow_field_with_merged_metadataFn c_garrow_field_with_merged_metadata; ///
private alias c_garrow_field_with_metadataFn = extern(C) GArrowField* function(GArrowField* field, GHashTable* metadata) nothrow;
__gshared c_garrow_field_with_metadataFn c_garrow_field_with_metadata; ///

// FieldExpression
private alias c_garrow_field_expression_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_field_expression_get_typeFn c_garrow_field_expression_get_type; ///
private alias c_garrow_field_expression_newFn = extern(C) GArrowFieldExpression* function(const(char)* reference, GError** _err) nothrow;
__gshared c_garrow_field_expression_newFn c_garrow_field_expression_new; ///

// File
private alias c_garrow_file_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_file_get_typeFn c_garrow_file_get_type; ///
private alias c_garrow_file_closeFn = extern(C) gboolean function(GArrowFile* file, GError** _err) nothrow;
__gshared c_garrow_file_closeFn c_garrow_file_close; ///
private alias c_garrow_file_get_modeFn = extern(C) GArrowFileMode function(GArrowFile* file) nothrow;
__gshared c_garrow_file_get_modeFn c_garrow_file_get_mode; ///
private alias c_garrow_file_is_closedFn = extern(C) gboolean function(GArrowFile* file) nothrow;
__gshared c_garrow_file_is_closedFn c_garrow_file_is_closed; ///
private alias c_garrow_file_tellFn = extern(C) long function(GArrowFile* file, GError** _err) nothrow;
__gshared c_garrow_file_tellFn c_garrow_file_tell; ///

// FileInfo
private alias c_garrow_file_info_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_file_info_get_typeFn c_garrow_file_info_get_type; ///
private alias c_garrow_file_info_newFn = extern(C) GArrowFileInfo* function() nothrow;
__gshared c_garrow_file_info_newFn c_garrow_file_info_new; ///
private alias c_garrow_file_info_equalFn = extern(C) gboolean function(GArrowFileInfo* fileInfo, GArrowFileInfo* otherFileInfo) nothrow;
__gshared c_garrow_file_info_equalFn c_garrow_file_info_equal; ///
private alias c_garrow_file_info_is_dirFn = extern(C) gboolean function(GArrowFileInfo* fileInfo) nothrow;
__gshared c_garrow_file_info_is_dirFn c_garrow_file_info_is_dir; ///
private alias c_garrow_file_info_is_fileFn = extern(C) gboolean function(GArrowFileInfo* fileInfo) nothrow;
__gshared c_garrow_file_info_is_fileFn c_garrow_file_info_is_file; ///
private alias c_garrow_file_info_to_stringFn = extern(C) char* function(GArrowFileInfo* fileInfo) nothrow;
__gshared c_garrow_file_info_to_stringFn c_garrow_file_info_to_string; ///

// FileInputStream
private alias c_garrow_file_input_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_file_input_stream_get_typeFn c_garrow_file_input_stream_get_type; ///
private alias c_garrow_file_input_stream_newFn = extern(C) GArrowFileInputStream* function(const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_input_stream_newFn c_garrow_file_input_stream_new; ///
private alias c_garrow_file_input_stream_new_file_descriptorFn = extern(C) GArrowFileInputStream* function(int fileDescriptor, GError** _err) nothrow;
__gshared c_garrow_file_input_stream_new_file_descriptorFn c_garrow_file_input_stream_new_file_descriptor; ///
private alias c_garrow_file_input_stream_get_file_descriptorFn = extern(C) int function(GArrowFileInputStream* stream) nothrow;
__gshared c_garrow_file_input_stream_get_file_descriptorFn c_garrow_file_input_stream_get_file_descriptor; ///

// FileOutputStream
private alias c_garrow_file_output_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_file_output_stream_get_typeFn c_garrow_file_output_stream_get_type; ///
private alias c_garrow_file_output_stream_newFn = extern(C) GArrowFileOutputStream* function(const(char)* path, gboolean append, GError** _err) nothrow;
__gshared c_garrow_file_output_stream_newFn c_garrow_file_output_stream_new; ///

// FileSelector
private alias c_garrow_file_selector_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_file_selector_get_typeFn c_garrow_file_selector_get_type; ///

// FileSystem
private alias c_garrow_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_file_system_get_typeFn c_garrow_file_system_get_type; ///
private alias c_garrow_file_system_createFn = extern(C) GArrowFileSystem* function(const(char)* uri, GError** _err) nothrow;
__gshared c_garrow_file_system_createFn c_garrow_file_system_create; ///
private alias c_garrow_file_system_copy_fileFn = extern(C) gboolean function(GArrowFileSystem* fileSystem, const(char)* src, const(char)* dest, GError** _err) nothrow;
__gshared c_garrow_file_system_copy_fileFn c_garrow_file_system_copy_file; ///
private alias c_garrow_file_system_create_dirFn = extern(C) gboolean function(GArrowFileSystem* fileSystem, const(char)* path, gboolean recursive, GError** _err) nothrow;
__gshared c_garrow_file_system_create_dirFn c_garrow_file_system_create_dir; ///
private alias c_garrow_file_system_delete_dirFn = extern(C) gboolean function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_delete_dirFn c_garrow_file_system_delete_dir; ///
private alias c_garrow_file_system_delete_dir_contentsFn = extern(C) gboolean function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_delete_dir_contentsFn c_garrow_file_system_delete_dir_contents; ///
private alias c_garrow_file_system_delete_fileFn = extern(C) gboolean function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_delete_fileFn c_garrow_file_system_delete_file; ///
private alias c_garrow_file_system_delete_filesFn = extern(C) gboolean function(GArrowFileSystem* fileSystem, const(char*)* paths, size_t nPaths, GError** _err) nothrow;
__gshared c_garrow_file_system_delete_filesFn c_garrow_file_system_delete_files; ///
private alias c_garrow_file_system_get_file_infoFn = extern(C) GArrowFileInfo* function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_get_file_infoFn c_garrow_file_system_get_file_info; ///
private alias c_garrow_file_system_get_file_infos_pathsFn = extern(C) GList* function(GArrowFileSystem* fileSystem, const(char*)* paths, size_t nPaths, GError** _err) nothrow;
__gshared c_garrow_file_system_get_file_infos_pathsFn c_garrow_file_system_get_file_infos_paths; ///
private alias c_garrow_file_system_get_file_infos_selectorFn = extern(C) GList* function(GArrowFileSystem* fileSystem, GArrowFileSelector* fileSelector, GError** _err) nothrow;
__gshared c_garrow_file_system_get_file_infos_selectorFn c_garrow_file_system_get_file_infos_selector; ///
private alias c_garrow_file_system_get_type_nameFn = extern(C) char* function(GArrowFileSystem* fileSystem) nothrow;
__gshared c_garrow_file_system_get_type_nameFn c_garrow_file_system_get_type_name; ///
private alias c_garrow_file_system_moveFn = extern(C) gboolean function(GArrowFileSystem* fileSystem, const(char)* src, const(char)* dest, GError** _err) nothrow;
__gshared c_garrow_file_system_moveFn c_garrow_file_system_move; ///
private alias c_garrow_file_system_open_append_streamFn = extern(C) GArrowOutputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_open_append_streamFn c_garrow_file_system_open_append_stream; ///
private alias c_garrow_file_system_open_input_fileFn = extern(C) GArrowSeekableInputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_open_input_fileFn c_garrow_file_system_open_input_file; ///
private alias c_garrow_file_system_open_input_streamFn = extern(C) GArrowInputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_open_input_streamFn c_garrow_file_system_open_input_stream; ///
private alias c_garrow_file_system_open_output_streamFn = extern(C) GArrowOutputStream* function(GArrowFileSystem* fileSystem, const(char)* path, GError** _err) nothrow;
__gshared c_garrow_file_system_open_output_streamFn c_garrow_file_system_open_output_stream; ///

// FilterNodeOptions
private alias c_garrow_filter_node_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_filter_node_options_get_typeFn c_garrow_filter_node_options_get_type; ///
private alias c_garrow_filter_node_options_newFn = extern(C) GArrowFilterNodeOptions* function(GArrowExpression* expression) nothrow;
__gshared c_garrow_filter_node_options_newFn c_garrow_filter_node_options_new; ///

// FilterOptions
private alias c_garrow_filter_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_filter_options_get_typeFn c_garrow_filter_options_get_type; ///
private alias c_garrow_filter_options_newFn = extern(C) GArrowFilterOptions* function() nothrow;
__gshared c_garrow_filter_options_newFn c_garrow_filter_options_new; ///

// FixedShapeTensorDataType
private alias c_garrow_fixed_shape_tensor_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_shape_tensor_data_type_get_typeFn c_garrow_fixed_shape_tensor_data_type_get_type; ///
private alias c_garrow_fixed_shape_tensor_data_type_newFn = extern(C) GArrowFixedShapeTensorDataType* function(GArrowDataType* valueType, const(long)* shape, size_t shapeLength, const(long)* permutation, size_t permutationLength, const(char*)* dimNames, size_t nDimNames, GError** _err) nothrow;
__gshared c_garrow_fixed_shape_tensor_data_type_newFn c_garrow_fixed_shape_tensor_data_type_new; ///
private alias c_garrow_fixed_shape_tensor_data_type_get_dim_namesFn = extern(C) char** function(GArrowFixedShapeTensorDataType* dataType) nothrow;
__gshared c_garrow_fixed_shape_tensor_data_type_get_dim_namesFn c_garrow_fixed_shape_tensor_data_type_get_dim_names; ///
private alias c_garrow_fixed_shape_tensor_data_type_get_permutationFn = extern(C) const(long)* function(GArrowFixedShapeTensorDataType* dataType, size_t* length) nothrow;
__gshared c_garrow_fixed_shape_tensor_data_type_get_permutationFn c_garrow_fixed_shape_tensor_data_type_get_permutation; ///
private alias c_garrow_fixed_shape_tensor_data_type_get_shapeFn = extern(C) const(long)* function(GArrowFixedShapeTensorDataType* dataType, size_t* length) nothrow;
__gshared c_garrow_fixed_shape_tensor_data_type_get_shapeFn c_garrow_fixed_shape_tensor_data_type_get_shape; ///
private alias c_garrow_fixed_shape_tensor_data_type_get_stridesFn = extern(C) const(long)* function(GArrowFixedShapeTensorDataType* dataType, size_t* length) nothrow;
__gshared c_garrow_fixed_shape_tensor_data_type_get_stridesFn c_garrow_fixed_shape_tensor_data_type_get_strides; ///

// FixedSizeBinaryArray
private alias c_garrow_fixed_size_binary_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_size_binary_array_get_typeFn c_garrow_fixed_size_binary_array_get_type; ///
private alias c_garrow_fixed_size_binary_array_newFn = extern(C) GArrowFixedSizeBinaryArray* function(GArrowFixedSizeBinaryDataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_fixed_size_binary_array_newFn c_garrow_fixed_size_binary_array_new; ///
private alias c_garrow_fixed_size_binary_array_get_byte_widthFn = extern(C) int function(GArrowFixedSizeBinaryArray* array) nothrow;
__gshared c_garrow_fixed_size_binary_array_get_byte_widthFn c_garrow_fixed_size_binary_array_get_byte_width; ///
private alias c_garrow_fixed_size_binary_array_get_valueFn = extern(C) GBytes* function(GArrowFixedSizeBinaryArray* array, long i) nothrow;
__gshared c_garrow_fixed_size_binary_array_get_valueFn c_garrow_fixed_size_binary_array_get_value; ///
private alias c_garrow_fixed_size_binary_array_get_values_bytesFn = extern(C) GBytes* function(GArrowFixedSizeBinaryArray* array) nothrow;
__gshared c_garrow_fixed_size_binary_array_get_values_bytesFn c_garrow_fixed_size_binary_array_get_values_bytes; ///

// FixedSizeBinaryArrayBuilder
private alias c_garrow_fixed_size_binary_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_size_binary_array_builder_get_typeFn c_garrow_fixed_size_binary_array_builder_get_type; ///
private alias c_garrow_fixed_size_binary_array_builder_newFn = extern(C) GArrowFixedSizeBinaryArrayBuilder* function(GArrowFixedSizeBinaryDataType* dataType) nothrow;
__gshared c_garrow_fixed_size_binary_array_builder_newFn c_garrow_fixed_size_binary_array_builder_new; ///
private alias c_garrow_fixed_size_binary_array_builder_append_valueFn = extern(C) gboolean function(GArrowFixedSizeBinaryArrayBuilder* builder, const(ubyte)* value, int length, GError** _err) nothrow;
__gshared c_garrow_fixed_size_binary_array_builder_append_valueFn c_garrow_fixed_size_binary_array_builder_append_value; ///
private alias c_garrow_fixed_size_binary_array_builder_append_value_bytesFn = extern(C) gboolean function(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes* value, GError** _err) nothrow;
__gshared c_garrow_fixed_size_binary_array_builder_append_value_bytesFn c_garrow_fixed_size_binary_array_builder_append_value_bytes; ///
private alias c_garrow_fixed_size_binary_array_builder_append_valuesFn = extern(C) gboolean function(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes** values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_fixed_size_binary_array_builder_append_valuesFn c_garrow_fixed_size_binary_array_builder_append_values; ///
private alias c_garrow_fixed_size_binary_array_builder_append_values_packedFn = extern(C) gboolean function(GArrowFixedSizeBinaryArrayBuilder* builder, GBytes* values, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_fixed_size_binary_array_builder_append_values_packedFn c_garrow_fixed_size_binary_array_builder_append_values_packed; ///

// FixedSizeBinaryDataType
private alias c_garrow_fixed_size_binary_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_size_binary_data_type_get_typeFn c_garrow_fixed_size_binary_data_type_get_type; ///
private alias c_garrow_fixed_size_binary_data_type_newFn = extern(C) GArrowFixedSizeBinaryDataType* function(int byteWidth) nothrow;
__gshared c_garrow_fixed_size_binary_data_type_newFn c_garrow_fixed_size_binary_data_type_new; ///
private alias c_garrow_fixed_size_binary_data_type_get_byte_widthFn = extern(C) int function(GArrowFixedSizeBinaryDataType* dataType) nothrow;
__gshared c_garrow_fixed_size_binary_data_type_get_byte_widthFn c_garrow_fixed_size_binary_data_type_get_byte_width; ///

// FixedSizeBinaryScalar
private alias c_garrow_fixed_size_binary_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_size_binary_scalar_get_typeFn c_garrow_fixed_size_binary_scalar_get_type; ///
private alias c_garrow_fixed_size_binary_scalar_newFn = extern(C) GArrowFixedSizeBinaryScalar* function(GArrowFixedSizeBinaryDataType* dataType, GArrowBuffer* value) nothrow;
__gshared c_garrow_fixed_size_binary_scalar_newFn c_garrow_fixed_size_binary_scalar_new; ///

// FixedSizeListArray
private alias c_garrow_fixed_size_list_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_size_list_array_get_typeFn c_garrow_fixed_size_list_array_get_type; ///
private alias c_garrow_fixed_size_list_array_newFn = extern(C) GArrowFixedSizeListArray* function(GArrowDataType* dataType, long length, GArrowArray* values, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_fixed_size_list_array_newFn c_garrow_fixed_size_list_array_new; ///
private alias c_garrow_fixed_size_list_array_get_list_sizeFn = extern(C) int function(GArrowFixedSizeListArray* array) nothrow;
__gshared c_garrow_fixed_size_list_array_get_list_sizeFn c_garrow_fixed_size_list_array_get_list_size; ///
private alias c_garrow_fixed_size_list_array_get_valueFn = extern(C) GArrowArray* function(GArrowFixedSizeListArray* array, long i) nothrow;
__gshared c_garrow_fixed_size_list_array_get_valueFn c_garrow_fixed_size_list_array_get_value; ///
private alias c_garrow_fixed_size_list_array_get_value_lengthFn = extern(C) int function(GArrowFixedSizeListArray* array, long i) nothrow;
__gshared c_garrow_fixed_size_list_array_get_value_lengthFn c_garrow_fixed_size_list_array_get_value_length; ///
private alias c_garrow_fixed_size_list_array_get_value_offsetFn = extern(C) long function(GArrowFixedSizeListArray* array, long i) nothrow;
__gshared c_garrow_fixed_size_list_array_get_value_offsetFn c_garrow_fixed_size_list_array_get_value_offset; ///
private alias c_garrow_fixed_size_list_array_get_value_typeFn = extern(C) GArrowDataType* function(GArrowFixedSizeListArray* array) nothrow;
__gshared c_garrow_fixed_size_list_array_get_value_typeFn c_garrow_fixed_size_list_array_get_value_type; ///
private alias c_garrow_fixed_size_list_array_get_valuesFn = extern(C) GArrowArray* function(GArrowFixedSizeListArray* array) nothrow;
__gshared c_garrow_fixed_size_list_array_get_valuesFn c_garrow_fixed_size_list_array_get_values; ///

// FixedSizeListArrayBuilder
private alias c_garrow_fixed_size_list_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_size_list_array_builder_get_typeFn c_garrow_fixed_size_list_array_builder_get_type; ///
private alias c_garrow_fixed_size_list_array_builder_newFn = extern(C) GArrowFixedSizeListArrayBuilder* function(GArrowFixedSizeListDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_fixed_size_list_array_builder_newFn c_garrow_fixed_size_list_array_builder_new; ///
private alias c_garrow_fixed_size_list_array_builder_append_valueFn = extern(C) gboolean function(GArrowFixedSizeListArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_fixed_size_list_array_builder_append_valueFn c_garrow_fixed_size_list_array_builder_append_value; ///
private alias c_garrow_fixed_size_list_array_builder_get_value_builderFn = extern(C) GArrowArrayBuilder* function(GArrowFixedSizeListArrayBuilder* builder) nothrow;
__gshared c_garrow_fixed_size_list_array_builder_get_value_builderFn c_garrow_fixed_size_list_array_builder_get_value_builder; ///

// FixedSizeListDataType
private alias c_garrow_fixed_size_list_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_size_list_data_type_get_typeFn c_garrow_fixed_size_list_data_type_get_type; ///
private alias c_garrow_fixed_size_list_data_type_new_data_typeFn = extern(C) GArrowFixedSizeListDataType* function(GArrowDataType* valueType, int listSize) nothrow;
__gshared c_garrow_fixed_size_list_data_type_new_data_typeFn c_garrow_fixed_size_list_data_type_new_data_type; ///
private alias c_garrow_fixed_size_list_data_type_new_fieldFn = extern(C) GArrowFixedSizeListDataType* function(GArrowField* field, int listSize) nothrow;
__gshared c_garrow_fixed_size_list_data_type_new_fieldFn c_garrow_fixed_size_list_data_type_new_field; ///

// FixedWidthDataType
private alias c_garrow_fixed_width_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_fixed_width_data_type_get_typeFn c_garrow_fixed_width_data_type_get_type; ///
private alias c_garrow_fixed_width_data_type_get_bit_widthFn = extern(C) int function(GArrowFixedWidthDataType* dataType) nothrow;
__gshared c_garrow_fixed_width_data_type_get_bit_widthFn c_garrow_fixed_width_data_type_get_bit_width; ///

// FloatArray
private alias c_garrow_float_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_float_array_get_typeFn c_garrow_float_array_get_type; ///
private alias c_garrow_float_array_newFn = extern(C) GArrowFloatArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_float_array_newFn c_garrow_float_array_new; ///
private alias c_garrow_float_array_get_valueFn = extern(C) float function(GArrowFloatArray* array, long i) nothrow;
__gshared c_garrow_float_array_get_valueFn c_garrow_float_array_get_value; ///
private alias c_garrow_float_array_get_valuesFn = extern(C) const(float)* function(GArrowFloatArray* array, long* length) nothrow;
__gshared c_garrow_float_array_get_valuesFn c_garrow_float_array_get_values; ///
private alias c_garrow_float_array_sumFn = extern(C) double function(GArrowFloatArray* array, GError** _err) nothrow;
__gshared c_garrow_float_array_sumFn c_garrow_float_array_sum; ///

// FloatArrayBuilder
private alias c_garrow_float_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_float_array_builder_get_typeFn c_garrow_float_array_builder_get_type; ///
private alias c_garrow_float_array_builder_newFn = extern(C) GArrowFloatArrayBuilder* function() nothrow;
__gshared c_garrow_float_array_builder_newFn c_garrow_float_array_builder_new; ///
private alias c_garrow_float_array_builder_appendFn = extern(C) gboolean function(GArrowFloatArrayBuilder* builder, float value, GError** _err) nothrow;
__gshared c_garrow_float_array_builder_appendFn c_garrow_float_array_builder_append; ///
private alias c_garrow_float_array_builder_append_nullFn = extern(C) gboolean function(GArrowFloatArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_float_array_builder_append_nullFn c_garrow_float_array_builder_append_null; ///
private alias c_garrow_float_array_builder_append_nullsFn = extern(C) gboolean function(GArrowFloatArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_float_array_builder_append_nullsFn c_garrow_float_array_builder_append_nulls; ///
private alias c_garrow_float_array_builder_append_valueFn = extern(C) gboolean function(GArrowFloatArrayBuilder* builder, float value, GError** _err) nothrow;
__gshared c_garrow_float_array_builder_append_valueFn c_garrow_float_array_builder_append_value; ///
private alias c_garrow_float_array_builder_append_valuesFn = extern(C) gboolean function(GArrowFloatArrayBuilder* builder, const(float)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_float_array_builder_append_valuesFn c_garrow_float_array_builder_append_values; ///

// FloatDataType
private alias c_garrow_float_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_float_data_type_get_typeFn c_garrow_float_data_type_get_type; ///
private alias c_garrow_float_data_type_newFn = extern(C) GArrowFloatDataType* function() nothrow;
__gshared c_garrow_float_data_type_newFn c_garrow_float_data_type_new; ///

// FloatScalar
private alias c_garrow_float_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_float_scalar_get_typeFn c_garrow_float_scalar_get_type; ///
private alias c_garrow_float_scalar_newFn = extern(C) GArrowFloatScalar* function(float value) nothrow;
__gshared c_garrow_float_scalar_newFn c_garrow_float_scalar_new; ///
private alias c_garrow_float_scalar_get_valueFn = extern(C) float function(GArrowFloatScalar* scalar) nothrow;
__gshared c_garrow_float_scalar_get_valueFn c_garrow_float_scalar_get_value; ///

// FloatingPointDataType
private alias c_garrow_floating_point_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_floating_point_data_type_get_typeFn c_garrow_floating_point_data_type_get_type; ///

// Function
private alias c_garrow_function_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_function_get_typeFn c_garrow_function_get_type; ///
private alias c_garrow_function_allFn = extern(C) GList* function() nothrow;
__gshared c_garrow_function_allFn c_garrow_function_all; ///
private alias c_garrow_function_findFn = extern(C) GArrowFunction* function(const(char)* name) nothrow;
__gshared c_garrow_function_findFn c_garrow_function_find; ///
private alias c_garrow_function_equalFn = extern(C) gboolean function(GArrowFunction* function_, GArrowFunction* otherFunction) nothrow;
__gshared c_garrow_function_equalFn c_garrow_function_equal; ///
private alias c_garrow_function_executeFn = extern(C) GArrowDatum* function(GArrowFunction* function_, GList* args, GArrowFunctionOptions* options, GArrowExecuteContext* context, GError** _err) nothrow;
__gshared c_garrow_function_executeFn c_garrow_function_execute; ///
private alias c_garrow_function_get_default_optionsFn = extern(C) GArrowFunctionOptions* function(GArrowFunction* function_) nothrow;
__gshared c_garrow_function_get_default_optionsFn c_garrow_function_get_default_options; ///
private alias c_garrow_function_get_docFn = extern(C) GArrowFunctionDoc* function(GArrowFunction* function_) nothrow;
__gshared c_garrow_function_get_docFn c_garrow_function_get_doc; ///
private alias c_garrow_function_get_nameFn = extern(C) const(char)* function(GArrowFunction* function_) nothrow;
__gshared c_garrow_function_get_nameFn c_garrow_function_get_name; ///
private alias c_garrow_function_get_options_typeFn = extern(C) GType function(GArrowFunction* function_) nothrow;
__gshared c_garrow_function_get_options_typeFn c_garrow_function_get_options_type; ///
private alias c_garrow_function_to_stringFn = extern(C) char* function(GArrowFunction* function_) nothrow;
__gshared c_garrow_function_to_stringFn c_garrow_function_to_string; ///

// FunctionDoc
private alias c_garrow_function_doc_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_function_doc_get_typeFn c_garrow_function_doc_get_type; ///
private alias c_garrow_function_doc_get_arg_namesFn = extern(C) char** function(GArrowFunctionDoc* doc) nothrow;
__gshared c_garrow_function_doc_get_arg_namesFn c_garrow_function_doc_get_arg_names; ///
private alias c_garrow_function_doc_get_descriptionFn = extern(C) char* function(GArrowFunctionDoc* doc) nothrow;
__gshared c_garrow_function_doc_get_descriptionFn c_garrow_function_doc_get_description; ///
private alias c_garrow_function_doc_get_options_class_nameFn = extern(C) char* function(GArrowFunctionDoc* doc) nothrow;
__gshared c_garrow_function_doc_get_options_class_nameFn c_garrow_function_doc_get_options_class_name; ///
private alias c_garrow_function_doc_get_summaryFn = extern(C) char* function(GArrowFunctionDoc* doc) nothrow;
__gshared c_garrow_function_doc_get_summaryFn c_garrow_function_doc_get_summary; ///

// FunctionOptions
private alias c_garrow_function_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_function_options_get_typeFn c_garrow_function_options_get_type; ///
private alias c_garrow_function_options_equalFn = extern(C) gboolean function(GArrowFunctionOptions* options, GArrowFunctionOptions* otherOptions) nothrow;
__gshared c_garrow_function_options_equalFn c_garrow_function_options_equal; ///
private alias c_garrow_function_options_to_stringFn = extern(C) char* function(GArrowFunctionOptions* options) nothrow;
__gshared c_garrow_function_options_to_stringFn c_garrow_function_options_to_string; ///

// GCSFileSystem
private alias c_garrow_gcs_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_gcs_file_system_get_typeFn c_garrow_gcs_file_system_get_type; ///

// GIOInputStream
private alias c_garrow_gio_input_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_gio_input_stream_get_typeFn c_garrow_gio_input_stream_get_type; ///
private alias c_garrow_gio_input_stream_newFn = extern(C) GArrowGIOInputStream* function(GInputStream* gioInputStream) nothrow;
__gshared c_garrow_gio_input_stream_newFn c_garrow_gio_input_stream_new; ///
private alias c_garrow_gio_input_stream_get_rawFn = extern(C) GInputStream* function(GArrowGIOInputStream* inputStream) nothrow;
__gshared c_garrow_gio_input_stream_get_rawFn c_garrow_gio_input_stream_get_raw; ///

// GIOOutputStream
private alias c_garrow_gio_output_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_gio_output_stream_get_typeFn c_garrow_gio_output_stream_get_type; ///
private alias c_garrow_gio_output_stream_newFn = extern(C) GArrowGIOOutputStream* function(GOutputStream* gioOutputStream) nothrow;
__gshared c_garrow_gio_output_stream_newFn c_garrow_gio_output_stream_new; ///
private alias c_garrow_gio_output_stream_get_rawFn = extern(C) GOutputStream* function(GArrowGIOOutputStream* outputStream) nothrow;
__gshared c_garrow_gio_output_stream_get_rawFn c_garrow_gio_output_stream_get_raw; ///

// HDFSFileSystem
private alias c_garrow_hdfs_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_hdfs_file_system_get_typeFn c_garrow_hdfs_file_system_get_type; ///

// HalfFloatArray
private alias c_garrow_half_float_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_half_float_array_get_typeFn c_garrow_half_float_array_get_type; ///
private alias c_garrow_half_float_array_newFn = extern(C) GArrowHalfFloatArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_half_float_array_newFn c_garrow_half_float_array_new; ///
private alias c_garrow_half_float_array_get_valueFn = extern(C) ushort function(GArrowHalfFloatArray* array, long i) nothrow;
__gshared c_garrow_half_float_array_get_valueFn c_garrow_half_float_array_get_value; ///
private alias c_garrow_half_float_array_get_valuesFn = extern(C) const(ushort)* function(GArrowHalfFloatArray* array, long* length) nothrow;
__gshared c_garrow_half_float_array_get_valuesFn c_garrow_half_float_array_get_values; ///

// HalfFloatArrayBuilder
private alias c_garrow_half_float_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_half_float_array_builder_get_typeFn c_garrow_half_float_array_builder_get_type; ///
private alias c_garrow_half_float_array_builder_newFn = extern(C) GArrowHalfFloatArrayBuilder* function() nothrow;
__gshared c_garrow_half_float_array_builder_newFn c_garrow_half_float_array_builder_new; ///
private alias c_garrow_half_float_array_builder_append_valueFn = extern(C) gboolean function(GArrowHalfFloatArrayBuilder* builder, ushort value, GError** _err) nothrow;
__gshared c_garrow_half_float_array_builder_append_valueFn c_garrow_half_float_array_builder_append_value; ///
private alias c_garrow_half_float_array_builder_append_valuesFn = extern(C) gboolean function(GArrowHalfFloatArrayBuilder* builder, const(ushort)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_half_float_array_builder_append_valuesFn c_garrow_half_float_array_builder_append_values; ///

// HalfFloatDataType
private alias c_garrow_half_float_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_half_float_data_type_get_typeFn c_garrow_half_float_data_type_get_type; ///
private alias c_garrow_half_float_data_type_newFn = extern(C) GArrowHalfFloatDataType* function() nothrow;
__gshared c_garrow_half_float_data_type_newFn c_garrow_half_float_data_type_new; ///

// HalfFloatScalar
private alias c_garrow_half_float_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_half_float_scalar_get_typeFn c_garrow_half_float_scalar_get_type; ///
private alias c_garrow_half_float_scalar_newFn = extern(C) GArrowHalfFloatScalar* function(ushort value) nothrow;
__gshared c_garrow_half_float_scalar_newFn c_garrow_half_float_scalar_new; ///
private alias c_garrow_half_float_scalar_get_valueFn = extern(C) ushort function(GArrowHalfFloatScalar* scalar) nothrow;
__gshared c_garrow_half_float_scalar_get_valueFn c_garrow_half_float_scalar_get_value; ///

// HashJoinNodeOptions
private alias c_garrow_hash_join_node_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_hash_join_node_options_get_typeFn c_garrow_hash_join_node_options_get_type; ///
private alias c_garrow_hash_join_node_options_newFn = extern(C) GArrowHashJoinNodeOptions* function(GArrowJoinType type, const(char*)* leftKeys, size_t nLeftKeys, const(char*)* rightKeys, size_t nRightKeys, GError** _err) nothrow;
__gshared c_garrow_hash_join_node_options_newFn c_garrow_hash_join_node_options_new; ///
private alias c_garrow_hash_join_node_options_set_left_outputsFn = extern(C) gboolean function(GArrowHashJoinNodeOptions* options, const(char*)* outputs, size_t nOutputs, GError** _err) nothrow;
__gshared c_garrow_hash_join_node_options_set_left_outputsFn c_garrow_hash_join_node_options_set_left_outputs; ///
private alias c_garrow_hash_join_node_options_set_right_outputsFn = extern(C) gboolean function(GArrowHashJoinNodeOptions* options, const(char*)* outputs, size_t nOutputs, GError** _err) nothrow;
__gshared c_garrow_hash_join_node_options_set_right_outputsFn c_garrow_hash_join_node_options_set_right_outputs; ///

// ISO8601TimestampParser
private alias c_garrow_iso8601_timestamp_parser_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_iso8601_timestamp_parser_get_typeFn c_garrow_iso8601_timestamp_parser_get_type; ///
private alias c_garrow_iso8601_timestamp_parser_newFn = extern(C) GArrowISO8601TimestampParser* function() nothrow;
__gshared c_garrow_iso8601_timestamp_parser_newFn c_garrow_iso8601_timestamp_parser_new; ///

// IndexOptions
private alias c_garrow_index_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_index_options_get_typeFn c_garrow_index_options_get_type; ///
private alias c_garrow_index_options_newFn = extern(C) GArrowIndexOptions* function() nothrow;
__gshared c_garrow_index_options_newFn c_garrow_index_options_new; ///

// InputStream
private alias c_garrow_input_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_input_stream_get_typeFn c_garrow_input_stream_get_type; ///
private alias c_garrow_input_stream_advanceFn = extern(C) gboolean function(GArrowInputStream* inputStream, long nBytes, GError** _err) nothrow;
__gshared c_garrow_input_stream_advanceFn c_garrow_input_stream_advance; ///
private alias c_garrow_input_stream_alignFn = extern(C) gboolean function(GArrowInputStream* inputStream, int alignment, GError** _err) nothrow;
__gshared c_garrow_input_stream_alignFn c_garrow_input_stream_align; ///
private alias c_garrow_input_stream_read_record_batchFn = extern(C) GArrowRecordBatch* function(GArrowInputStream* inputStream, GArrowSchema* schema, GArrowReadOptions* options, GError** _err) nothrow;
__gshared c_garrow_input_stream_read_record_batchFn c_garrow_input_stream_read_record_batch; ///
private alias c_garrow_input_stream_read_tensorFn = extern(C) GArrowTensor* function(GArrowInputStream* inputStream, GError** _err) nothrow;
__gshared c_garrow_input_stream_read_tensorFn c_garrow_input_stream_read_tensor; ///

// Int16Array
private alias c_garrow_int16_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int16_array_get_typeFn c_garrow_int16_array_get_type; ///
private alias c_garrow_int16_array_newFn = extern(C) GArrowInt16Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_int16_array_newFn c_garrow_int16_array_new; ///
private alias c_garrow_int16_array_get_valueFn = extern(C) short function(GArrowInt16Array* array, long i) nothrow;
__gshared c_garrow_int16_array_get_valueFn c_garrow_int16_array_get_value; ///
private alias c_garrow_int16_array_get_valuesFn = extern(C) const(short)* function(GArrowInt16Array* array, long* length) nothrow;
__gshared c_garrow_int16_array_get_valuesFn c_garrow_int16_array_get_values; ///
private alias c_garrow_int16_array_sumFn = extern(C) long function(GArrowInt16Array* array, GError** _err) nothrow;
__gshared c_garrow_int16_array_sumFn c_garrow_int16_array_sum; ///

// Int16ArrayBuilder
private alias c_garrow_int16_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int16_array_builder_get_typeFn c_garrow_int16_array_builder_get_type; ///
private alias c_garrow_int16_array_builder_newFn = extern(C) GArrowInt16ArrayBuilder* function() nothrow;
__gshared c_garrow_int16_array_builder_newFn c_garrow_int16_array_builder_new; ///
private alias c_garrow_int16_array_builder_appendFn = extern(C) gboolean function(GArrowInt16ArrayBuilder* builder, short value, GError** _err) nothrow;
__gshared c_garrow_int16_array_builder_appendFn c_garrow_int16_array_builder_append; ///
private alias c_garrow_int16_array_builder_append_nullFn = extern(C) gboolean function(GArrowInt16ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_int16_array_builder_append_nullFn c_garrow_int16_array_builder_append_null; ///
private alias c_garrow_int16_array_builder_append_nullsFn = extern(C) gboolean function(GArrowInt16ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_int16_array_builder_append_nullsFn c_garrow_int16_array_builder_append_nulls; ///
private alias c_garrow_int16_array_builder_append_valueFn = extern(C) gboolean function(GArrowInt16ArrayBuilder* builder, short value, GError** _err) nothrow;
__gshared c_garrow_int16_array_builder_append_valueFn c_garrow_int16_array_builder_append_value; ///
private alias c_garrow_int16_array_builder_append_valuesFn = extern(C) gboolean function(GArrowInt16ArrayBuilder* builder, const(short)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_int16_array_builder_append_valuesFn c_garrow_int16_array_builder_append_values; ///

// Int16DataType
private alias c_garrow_int16_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int16_data_type_get_typeFn c_garrow_int16_data_type_get_type; ///
private alias c_garrow_int16_data_type_newFn = extern(C) GArrowInt16DataType* function() nothrow;
__gshared c_garrow_int16_data_type_newFn c_garrow_int16_data_type_new; ///

// Int16Scalar
private alias c_garrow_int16_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int16_scalar_get_typeFn c_garrow_int16_scalar_get_type; ///
private alias c_garrow_int16_scalar_newFn = extern(C) GArrowInt16Scalar* function(short value) nothrow;
__gshared c_garrow_int16_scalar_newFn c_garrow_int16_scalar_new; ///
private alias c_garrow_int16_scalar_get_valueFn = extern(C) short function(GArrowInt16Scalar* scalar) nothrow;
__gshared c_garrow_int16_scalar_get_valueFn c_garrow_int16_scalar_get_value; ///

// Int32Array
private alias c_garrow_int32_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int32_array_get_typeFn c_garrow_int32_array_get_type; ///
private alias c_garrow_int32_array_newFn = extern(C) GArrowInt32Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_int32_array_newFn c_garrow_int32_array_new; ///
private alias c_garrow_int32_array_get_valueFn = extern(C) int function(GArrowInt32Array* array, long i) nothrow;
__gshared c_garrow_int32_array_get_valueFn c_garrow_int32_array_get_value; ///
private alias c_garrow_int32_array_get_valuesFn = extern(C) const(int)* function(GArrowInt32Array* array, long* length) nothrow;
__gshared c_garrow_int32_array_get_valuesFn c_garrow_int32_array_get_values; ///
private alias c_garrow_int32_array_sumFn = extern(C) long function(GArrowInt32Array* array, GError** _err) nothrow;
__gshared c_garrow_int32_array_sumFn c_garrow_int32_array_sum; ///

// Int32ArrayBuilder
private alias c_garrow_int32_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int32_array_builder_get_typeFn c_garrow_int32_array_builder_get_type; ///
private alias c_garrow_int32_array_builder_newFn = extern(C) GArrowInt32ArrayBuilder* function() nothrow;
__gshared c_garrow_int32_array_builder_newFn c_garrow_int32_array_builder_new; ///
private alias c_garrow_int32_array_builder_appendFn = extern(C) gboolean function(GArrowInt32ArrayBuilder* builder, int value, GError** _err) nothrow;
__gshared c_garrow_int32_array_builder_appendFn c_garrow_int32_array_builder_append; ///
private alias c_garrow_int32_array_builder_append_nullFn = extern(C) gboolean function(GArrowInt32ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_int32_array_builder_append_nullFn c_garrow_int32_array_builder_append_null; ///
private alias c_garrow_int32_array_builder_append_nullsFn = extern(C) gboolean function(GArrowInt32ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_int32_array_builder_append_nullsFn c_garrow_int32_array_builder_append_nulls; ///
private alias c_garrow_int32_array_builder_append_valueFn = extern(C) gboolean function(GArrowInt32ArrayBuilder* builder, int value, GError** _err) nothrow;
__gshared c_garrow_int32_array_builder_append_valueFn c_garrow_int32_array_builder_append_value; ///
private alias c_garrow_int32_array_builder_append_valuesFn = extern(C) gboolean function(GArrowInt32ArrayBuilder* builder, const(int)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_int32_array_builder_append_valuesFn c_garrow_int32_array_builder_append_values; ///

// Int32DataType
private alias c_garrow_int32_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int32_data_type_get_typeFn c_garrow_int32_data_type_get_type; ///
private alias c_garrow_int32_data_type_newFn = extern(C) GArrowInt32DataType* function() nothrow;
__gshared c_garrow_int32_data_type_newFn c_garrow_int32_data_type_new; ///

// Int32Scalar
private alias c_garrow_int32_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int32_scalar_get_typeFn c_garrow_int32_scalar_get_type; ///
private alias c_garrow_int32_scalar_newFn = extern(C) GArrowInt32Scalar* function(int value) nothrow;
__gshared c_garrow_int32_scalar_newFn c_garrow_int32_scalar_new; ///
private alias c_garrow_int32_scalar_get_valueFn = extern(C) int function(GArrowInt32Scalar* scalar) nothrow;
__gshared c_garrow_int32_scalar_get_valueFn c_garrow_int32_scalar_get_value; ///

// Int64Array
private alias c_garrow_int64_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int64_array_get_typeFn c_garrow_int64_array_get_type; ///
private alias c_garrow_int64_array_newFn = extern(C) GArrowInt64Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_int64_array_newFn c_garrow_int64_array_new; ///
private alias c_garrow_int64_array_get_valueFn = extern(C) long function(GArrowInt64Array* array, long i) nothrow;
__gshared c_garrow_int64_array_get_valueFn c_garrow_int64_array_get_value; ///
private alias c_garrow_int64_array_get_valuesFn = extern(C) const(long)* function(GArrowInt64Array* array, long* length) nothrow;
__gshared c_garrow_int64_array_get_valuesFn c_garrow_int64_array_get_values; ///
private alias c_garrow_int64_array_sumFn = extern(C) long function(GArrowInt64Array* array, GError** _err) nothrow;
__gshared c_garrow_int64_array_sumFn c_garrow_int64_array_sum; ///

// Int64ArrayBuilder
private alias c_garrow_int64_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int64_array_builder_get_typeFn c_garrow_int64_array_builder_get_type; ///
private alias c_garrow_int64_array_builder_newFn = extern(C) GArrowInt64ArrayBuilder* function() nothrow;
__gshared c_garrow_int64_array_builder_newFn c_garrow_int64_array_builder_new; ///
private alias c_garrow_int64_array_builder_appendFn = extern(C) gboolean function(GArrowInt64ArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_int64_array_builder_appendFn c_garrow_int64_array_builder_append; ///
private alias c_garrow_int64_array_builder_append_nullFn = extern(C) gboolean function(GArrowInt64ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_int64_array_builder_append_nullFn c_garrow_int64_array_builder_append_null; ///
private alias c_garrow_int64_array_builder_append_nullsFn = extern(C) gboolean function(GArrowInt64ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_int64_array_builder_append_nullsFn c_garrow_int64_array_builder_append_nulls; ///
private alias c_garrow_int64_array_builder_append_valueFn = extern(C) gboolean function(GArrowInt64ArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_int64_array_builder_append_valueFn c_garrow_int64_array_builder_append_value; ///
private alias c_garrow_int64_array_builder_append_valuesFn = extern(C) gboolean function(GArrowInt64ArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_int64_array_builder_append_valuesFn c_garrow_int64_array_builder_append_values; ///

// Int64DataType
private alias c_garrow_int64_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int64_data_type_get_typeFn c_garrow_int64_data_type_get_type; ///
private alias c_garrow_int64_data_type_newFn = extern(C) GArrowInt64DataType* function() nothrow;
__gshared c_garrow_int64_data_type_newFn c_garrow_int64_data_type_new; ///

// Int64Scalar
private alias c_garrow_int64_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int64_scalar_get_typeFn c_garrow_int64_scalar_get_type; ///
private alias c_garrow_int64_scalar_newFn = extern(C) GArrowInt64Scalar* function(long value) nothrow;
__gshared c_garrow_int64_scalar_newFn c_garrow_int64_scalar_new; ///
private alias c_garrow_int64_scalar_get_valueFn = extern(C) long function(GArrowInt64Scalar* scalar) nothrow;
__gshared c_garrow_int64_scalar_get_valueFn c_garrow_int64_scalar_get_value; ///

// Int8Array
private alias c_garrow_int8_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int8_array_get_typeFn c_garrow_int8_array_get_type; ///
private alias c_garrow_int8_array_newFn = extern(C) GArrowInt8Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_int8_array_newFn c_garrow_int8_array_new; ///
private alias c_garrow_int8_array_get_valueFn = extern(C) byte function(GArrowInt8Array* array, long i) nothrow;
__gshared c_garrow_int8_array_get_valueFn c_garrow_int8_array_get_value; ///
private alias c_garrow_int8_array_get_valuesFn = extern(C) const(byte)* function(GArrowInt8Array* array, long* length) nothrow;
__gshared c_garrow_int8_array_get_valuesFn c_garrow_int8_array_get_values; ///
private alias c_garrow_int8_array_sumFn = extern(C) long function(GArrowInt8Array* array, GError** _err) nothrow;
__gshared c_garrow_int8_array_sumFn c_garrow_int8_array_sum; ///

// Int8ArrayBuilder
private alias c_garrow_int8_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int8_array_builder_get_typeFn c_garrow_int8_array_builder_get_type; ///
private alias c_garrow_int8_array_builder_newFn = extern(C) GArrowInt8ArrayBuilder* function() nothrow;
__gshared c_garrow_int8_array_builder_newFn c_garrow_int8_array_builder_new; ///
private alias c_garrow_int8_array_builder_appendFn = extern(C) gboolean function(GArrowInt8ArrayBuilder* builder, byte value, GError** _err) nothrow;
__gshared c_garrow_int8_array_builder_appendFn c_garrow_int8_array_builder_append; ///
private alias c_garrow_int8_array_builder_append_nullFn = extern(C) gboolean function(GArrowInt8ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_int8_array_builder_append_nullFn c_garrow_int8_array_builder_append_null; ///
private alias c_garrow_int8_array_builder_append_nullsFn = extern(C) gboolean function(GArrowInt8ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_int8_array_builder_append_nullsFn c_garrow_int8_array_builder_append_nulls; ///
private alias c_garrow_int8_array_builder_append_valueFn = extern(C) gboolean function(GArrowInt8ArrayBuilder* builder, byte value, GError** _err) nothrow;
__gshared c_garrow_int8_array_builder_append_valueFn c_garrow_int8_array_builder_append_value; ///
private alias c_garrow_int8_array_builder_append_valuesFn = extern(C) gboolean function(GArrowInt8ArrayBuilder* builder, const(byte)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_int8_array_builder_append_valuesFn c_garrow_int8_array_builder_append_values; ///

// Int8DataType
private alias c_garrow_int8_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int8_data_type_get_typeFn c_garrow_int8_data_type_get_type; ///
private alias c_garrow_int8_data_type_newFn = extern(C) GArrowInt8DataType* function() nothrow;
__gshared c_garrow_int8_data_type_newFn c_garrow_int8_data_type_new; ///

// Int8Scalar
private alias c_garrow_int8_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int8_scalar_get_typeFn c_garrow_int8_scalar_get_type; ///
private alias c_garrow_int8_scalar_newFn = extern(C) GArrowInt8Scalar* function(byte value) nothrow;
__gshared c_garrow_int8_scalar_newFn c_garrow_int8_scalar_new; ///
private alias c_garrow_int8_scalar_get_valueFn = extern(C) byte function(GArrowInt8Scalar* scalar) nothrow;
__gshared c_garrow_int8_scalar_get_valueFn c_garrow_int8_scalar_get_value; ///

// IntArrayBuilder
private alias c_garrow_int_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_int_array_builder_get_typeFn c_garrow_int_array_builder_get_type; ///
private alias c_garrow_int_array_builder_newFn = extern(C) GArrowIntArrayBuilder* function() nothrow;
__gshared c_garrow_int_array_builder_newFn c_garrow_int_array_builder_new; ///
private alias c_garrow_int_array_builder_appendFn = extern(C) gboolean function(GArrowIntArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_int_array_builder_appendFn c_garrow_int_array_builder_append; ///
private alias c_garrow_int_array_builder_append_nullFn = extern(C) gboolean function(GArrowIntArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_int_array_builder_append_nullFn c_garrow_int_array_builder_append_null; ///
private alias c_garrow_int_array_builder_append_nullsFn = extern(C) gboolean function(GArrowIntArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_int_array_builder_append_nullsFn c_garrow_int_array_builder_append_nulls; ///
private alias c_garrow_int_array_builder_append_valueFn = extern(C) gboolean function(GArrowIntArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_int_array_builder_append_valueFn c_garrow_int_array_builder_append_value; ///
private alias c_garrow_int_array_builder_append_valuesFn = extern(C) gboolean function(GArrowIntArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_int_array_builder_append_valuesFn c_garrow_int_array_builder_append_values; ///

// IntegerDataType
private alias c_garrow_integer_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_integer_data_type_get_typeFn c_garrow_integer_data_type_get_type; ///
private alias c_garrow_integer_data_type_is_signedFn = extern(C) gboolean function(GArrowIntegerDataType* dataType) nothrow;
__gshared c_garrow_integer_data_type_is_signedFn c_garrow_integer_data_type_is_signed; ///

// IntervalDataType
private alias c_garrow_interval_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_interval_data_type_get_typeFn c_garrow_interval_data_type_get_type; ///
private alias c_garrow_interval_data_type_get_interval_typeFn = extern(C) GArrowIntervalType function(GArrowIntervalDataType* type) nothrow;
__gshared c_garrow_interval_data_type_get_interval_typeFn c_garrow_interval_data_type_get_interval_type; ///

// JSONReadOptions
private alias c_garrow_json_read_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_json_read_options_get_typeFn c_garrow_json_read_options_get_type; ///
private alias c_garrow_json_read_options_newFn = extern(C) GArrowJSONReadOptions* function() nothrow;
__gshared c_garrow_json_read_options_newFn c_garrow_json_read_options_new; ///

// JSONReader
private alias c_garrow_json_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_json_reader_get_typeFn c_garrow_json_reader_get_type; ///
private alias c_garrow_json_reader_newFn = extern(C) GArrowJSONReader* function(GArrowInputStream* input, GArrowJSONReadOptions* options, GError** _err) nothrow;
__gshared c_garrow_json_reader_newFn c_garrow_json_reader_new; ///
private alias c_garrow_json_reader_readFn = extern(C) GArrowTable* function(GArrowJSONReader* reader, GError** _err) nothrow;
__gshared c_garrow_json_reader_readFn c_garrow_json_reader_read; ///

// JoinOptions
private alias c_garrow_join_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_join_options_get_typeFn c_garrow_join_options_get_type; ///
private alias c_garrow_join_options_newFn = extern(C) GArrowJoinOptions* function() nothrow;
__gshared c_garrow_join_options_newFn c_garrow_join_options_new; ///

// LargeBinaryArray
private alias c_garrow_large_binary_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_binary_array_get_typeFn c_garrow_large_binary_array_get_type; ///
private alias c_garrow_large_binary_array_newFn = extern(C) GArrowLargeBinaryArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_large_binary_array_newFn c_garrow_large_binary_array_new; ///
private alias c_garrow_large_binary_array_get_bufferFn = extern(C) GArrowBuffer* function(GArrowLargeBinaryArray* array) nothrow;
__gshared c_garrow_large_binary_array_get_bufferFn c_garrow_large_binary_array_get_buffer; ///
private alias c_garrow_large_binary_array_get_data_bufferFn = extern(C) GArrowBuffer* function(GArrowLargeBinaryArray* array) nothrow;
__gshared c_garrow_large_binary_array_get_data_bufferFn c_garrow_large_binary_array_get_data_buffer; ///
private alias c_garrow_large_binary_array_get_offsets_bufferFn = extern(C) GArrowBuffer* function(GArrowLargeBinaryArray* array) nothrow;
__gshared c_garrow_large_binary_array_get_offsets_bufferFn c_garrow_large_binary_array_get_offsets_buffer; ///
private alias c_garrow_large_binary_array_get_valueFn = extern(C) GBytes* function(GArrowLargeBinaryArray* array, long i) nothrow;
__gshared c_garrow_large_binary_array_get_valueFn c_garrow_large_binary_array_get_value; ///

// LargeBinaryArrayBuilder
private alias c_garrow_large_binary_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_binary_array_builder_get_typeFn c_garrow_large_binary_array_builder_get_type; ///
private alias c_garrow_large_binary_array_builder_newFn = extern(C) GArrowLargeBinaryArrayBuilder* function() nothrow;
__gshared c_garrow_large_binary_array_builder_newFn c_garrow_large_binary_array_builder_new; ///
private alias c_garrow_large_binary_array_builder_append_nullFn = extern(C) gboolean function(GArrowLargeBinaryArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_large_binary_array_builder_append_nullFn c_garrow_large_binary_array_builder_append_null; ///
private alias c_garrow_large_binary_array_builder_append_nullsFn = extern(C) gboolean function(GArrowLargeBinaryArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_large_binary_array_builder_append_nullsFn c_garrow_large_binary_array_builder_append_nulls; ///
private alias c_garrow_large_binary_array_builder_append_valueFn = extern(C) gboolean function(GArrowLargeBinaryArrayBuilder* builder, const(ubyte)* value, long length, GError** _err) nothrow;
__gshared c_garrow_large_binary_array_builder_append_valueFn c_garrow_large_binary_array_builder_append_value; ///
private alias c_garrow_large_binary_array_builder_append_value_bytesFn = extern(C) gboolean function(GArrowLargeBinaryArrayBuilder* builder, GBytes* value, GError** _err) nothrow;
__gshared c_garrow_large_binary_array_builder_append_value_bytesFn c_garrow_large_binary_array_builder_append_value_bytes; ///
private alias c_garrow_large_binary_array_builder_append_valuesFn = extern(C) gboolean function(GArrowLargeBinaryArrayBuilder* builder, GBytes** values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_large_binary_array_builder_append_valuesFn c_garrow_large_binary_array_builder_append_values; ///

// LargeBinaryDataType
private alias c_garrow_large_binary_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_binary_data_type_get_typeFn c_garrow_large_binary_data_type_get_type; ///
private alias c_garrow_large_binary_data_type_newFn = extern(C) GArrowLargeBinaryDataType* function() nothrow;
__gshared c_garrow_large_binary_data_type_newFn c_garrow_large_binary_data_type_new; ///

// LargeBinaryScalar
private alias c_garrow_large_binary_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_binary_scalar_get_typeFn c_garrow_large_binary_scalar_get_type; ///
private alias c_garrow_large_binary_scalar_newFn = extern(C) GArrowLargeBinaryScalar* function(GArrowBuffer* value) nothrow;
__gshared c_garrow_large_binary_scalar_newFn c_garrow_large_binary_scalar_new; ///

// LargeListArray
private alias c_garrow_large_list_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_list_array_get_typeFn c_garrow_large_list_array_get_type; ///
private alias c_garrow_large_list_array_newFn = extern(C) GArrowLargeListArray* function(GArrowDataType* dataType, long length, GArrowBuffer* valueOffsets, GArrowArray* values, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_large_list_array_newFn c_garrow_large_list_array_new; ///
private alias c_garrow_large_list_array_get_valueFn = extern(C) GArrowArray* function(GArrowLargeListArray* array, long i) nothrow;
__gshared c_garrow_large_list_array_get_valueFn c_garrow_large_list_array_get_value; ///
private alias c_garrow_large_list_array_get_value_lengthFn = extern(C) long function(GArrowLargeListArray* array, long i) nothrow;
__gshared c_garrow_large_list_array_get_value_lengthFn c_garrow_large_list_array_get_value_length; ///
private alias c_garrow_large_list_array_get_value_offsetFn = extern(C) long function(GArrowLargeListArray* array, long i) nothrow;
__gshared c_garrow_large_list_array_get_value_offsetFn c_garrow_large_list_array_get_value_offset; ///
private alias c_garrow_large_list_array_get_value_offsetsFn = extern(C) const(long)* function(GArrowLargeListArray* array, long* nOffsets) nothrow;
__gshared c_garrow_large_list_array_get_value_offsetsFn c_garrow_large_list_array_get_value_offsets; ///
private alias c_garrow_large_list_array_get_value_offsets_bufferFn = extern(C) GArrowBuffer* function(GArrowLargeListArray* array) nothrow;
__gshared c_garrow_large_list_array_get_value_offsets_bufferFn c_garrow_large_list_array_get_value_offsets_buffer; ///
private alias c_garrow_large_list_array_get_value_typeFn = extern(C) GArrowDataType* function(GArrowLargeListArray* array) nothrow;
__gshared c_garrow_large_list_array_get_value_typeFn c_garrow_large_list_array_get_value_type; ///
private alias c_garrow_large_list_array_get_valuesFn = extern(C) GArrowArray* function(GArrowLargeListArray* array) nothrow;
__gshared c_garrow_large_list_array_get_valuesFn c_garrow_large_list_array_get_values; ///

// LargeListArrayBuilder
private alias c_garrow_large_list_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_list_array_builder_get_typeFn c_garrow_large_list_array_builder_get_type; ///
private alias c_garrow_large_list_array_builder_newFn = extern(C) GArrowLargeListArrayBuilder* function(GArrowLargeListDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_large_list_array_builder_newFn c_garrow_large_list_array_builder_new; ///
private alias c_garrow_large_list_array_builder_append_nullFn = extern(C) gboolean function(GArrowLargeListArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_large_list_array_builder_append_nullFn c_garrow_large_list_array_builder_append_null; ///
private alias c_garrow_large_list_array_builder_append_valueFn = extern(C) gboolean function(GArrowLargeListArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_large_list_array_builder_append_valueFn c_garrow_large_list_array_builder_append_value; ///
private alias c_garrow_large_list_array_builder_get_value_builderFn = extern(C) GArrowArrayBuilder* function(GArrowLargeListArrayBuilder* builder) nothrow;
__gshared c_garrow_large_list_array_builder_get_value_builderFn c_garrow_large_list_array_builder_get_value_builder; ///

// LargeListDataType
private alias c_garrow_large_list_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_list_data_type_get_typeFn c_garrow_large_list_data_type_get_type; ///
private alias c_garrow_large_list_data_type_newFn = extern(C) GArrowLargeListDataType* function(GArrowField* field) nothrow;
__gshared c_garrow_large_list_data_type_newFn c_garrow_large_list_data_type_new; ///
private alias c_garrow_large_list_data_type_get_fieldFn = extern(C) GArrowField* function(GArrowLargeListDataType* largeListDataType) nothrow;
__gshared c_garrow_large_list_data_type_get_fieldFn c_garrow_large_list_data_type_get_field; ///

// LargeListScalar
private alias c_garrow_large_list_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_list_scalar_get_typeFn c_garrow_large_list_scalar_get_type; ///
private alias c_garrow_large_list_scalar_newFn = extern(C) GArrowLargeListScalar* function(GArrowLargeListArray* value) nothrow;
__gshared c_garrow_large_list_scalar_newFn c_garrow_large_list_scalar_new; ///

// LargeStringArray
private alias c_garrow_large_string_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_string_array_get_typeFn c_garrow_large_string_array_get_type; ///
private alias c_garrow_large_string_array_newFn = extern(C) GArrowLargeStringArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_large_string_array_newFn c_garrow_large_string_array_new; ///
private alias c_garrow_large_string_array_get_stringFn = extern(C) char* function(GArrowLargeStringArray* array, long i) nothrow;
__gshared c_garrow_large_string_array_get_stringFn c_garrow_large_string_array_get_string; ///

// LargeStringArrayBuilder
private alias c_garrow_large_string_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_string_array_builder_get_typeFn c_garrow_large_string_array_builder_get_type; ///
private alias c_garrow_large_string_array_builder_newFn = extern(C) GArrowLargeStringArrayBuilder* function() nothrow;
__gshared c_garrow_large_string_array_builder_newFn c_garrow_large_string_array_builder_new; ///
private alias c_garrow_large_string_array_builder_append_stringFn = extern(C) gboolean function(GArrowLargeStringArrayBuilder* builder, const(char)* value, GError** _err) nothrow;
__gshared c_garrow_large_string_array_builder_append_stringFn c_garrow_large_string_array_builder_append_string; ///
private alias c_garrow_large_string_array_builder_append_string_lenFn = extern(C) gboolean function(GArrowLargeStringArrayBuilder* builder, const(char)* value, long length, GError** _err) nothrow;
__gshared c_garrow_large_string_array_builder_append_string_lenFn c_garrow_large_string_array_builder_append_string_len; ///
private alias c_garrow_large_string_array_builder_append_stringsFn = extern(C) gboolean function(GArrowLargeStringArrayBuilder* builder, const(char*)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_large_string_array_builder_append_stringsFn c_garrow_large_string_array_builder_append_strings; ///

// LargeStringDataType
private alias c_garrow_large_string_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_string_data_type_get_typeFn c_garrow_large_string_data_type_get_type; ///
private alias c_garrow_large_string_data_type_newFn = extern(C) GArrowLargeStringDataType* function() nothrow;
__gshared c_garrow_large_string_data_type_newFn c_garrow_large_string_data_type_new; ///

// LargeStringScalar
private alias c_garrow_large_string_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_large_string_scalar_get_typeFn c_garrow_large_string_scalar_get_type; ///
private alias c_garrow_large_string_scalar_newFn = extern(C) GArrowLargeStringScalar* function(GArrowBuffer* value) nothrow;
__gshared c_garrow_large_string_scalar_newFn c_garrow_large_string_scalar_new; ///

// ListArray
private alias c_garrow_list_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_list_array_get_typeFn c_garrow_list_array_get_type; ///
private alias c_garrow_list_array_newFn = extern(C) GArrowListArray* function(GArrowDataType* dataType, long length, GArrowBuffer* valueOffsets, GArrowArray* values, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_list_array_newFn c_garrow_list_array_new; ///
private alias c_garrow_list_array_get_valueFn = extern(C) GArrowArray* function(GArrowListArray* array, long i) nothrow;
__gshared c_garrow_list_array_get_valueFn c_garrow_list_array_get_value; ///
private alias c_garrow_list_array_get_value_lengthFn = extern(C) int function(GArrowListArray* array, long i) nothrow;
__gshared c_garrow_list_array_get_value_lengthFn c_garrow_list_array_get_value_length; ///
private alias c_garrow_list_array_get_value_offsetFn = extern(C) int function(GArrowListArray* array, long i) nothrow;
__gshared c_garrow_list_array_get_value_offsetFn c_garrow_list_array_get_value_offset; ///
private alias c_garrow_list_array_get_value_offsetsFn = extern(C) const(int)* function(GArrowListArray* array, long* nOffsets) nothrow;
__gshared c_garrow_list_array_get_value_offsetsFn c_garrow_list_array_get_value_offsets; ///
private alias c_garrow_list_array_get_value_offsets_bufferFn = extern(C) GArrowBuffer* function(GArrowListArray* array) nothrow;
__gshared c_garrow_list_array_get_value_offsets_bufferFn c_garrow_list_array_get_value_offsets_buffer; ///
private alias c_garrow_list_array_get_value_typeFn = extern(C) GArrowDataType* function(GArrowListArray* array) nothrow;
__gshared c_garrow_list_array_get_value_typeFn c_garrow_list_array_get_value_type; ///
private alias c_garrow_list_array_get_valuesFn = extern(C) GArrowArray* function(GArrowListArray* array) nothrow;
__gshared c_garrow_list_array_get_valuesFn c_garrow_list_array_get_values; ///

// ListArrayBuilder
private alias c_garrow_list_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_list_array_builder_get_typeFn c_garrow_list_array_builder_get_type; ///
private alias c_garrow_list_array_builder_newFn = extern(C) GArrowListArrayBuilder* function(GArrowListDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_list_array_builder_newFn c_garrow_list_array_builder_new; ///
private alias c_garrow_list_array_builder_appendFn = extern(C) gboolean function(GArrowListArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_list_array_builder_appendFn c_garrow_list_array_builder_append; ///
private alias c_garrow_list_array_builder_append_nullFn = extern(C) gboolean function(GArrowListArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_list_array_builder_append_nullFn c_garrow_list_array_builder_append_null; ///
private alias c_garrow_list_array_builder_append_valueFn = extern(C) gboolean function(GArrowListArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_list_array_builder_append_valueFn c_garrow_list_array_builder_append_value; ///
private alias c_garrow_list_array_builder_get_value_builderFn = extern(C) GArrowArrayBuilder* function(GArrowListArrayBuilder* builder) nothrow;
__gshared c_garrow_list_array_builder_get_value_builderFn c_garrow_list_array_builder_get_value_builder; ///

// ListDataType
private alias c_garrow_list_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_list_data_type_get_typeFn c_garrow_list_data_type_get_type; ///
private alias c_garrow_list_data_type_newFn = extern(C) GArrowListDataType* function(GArrowField* field) nothrow;
__gshared c_garrow_list_data_type_newFn c_garrow_list_data_type_new; ///
private alias c_garrow_list_data_type_get_fieldFn = extern(C) GArrowField* function(GArrowListDataType* listDataType) nothrow;
__gshared c_garrow_list_data_type_get_fieldFn c_garrow_list_data_type_get_field; ///
private alias c_garrow_list_data_type_get_value_fieldFn = extern(C) GArrowField* function(GArrowListDataType* listDataType) nothrow;
__gshared c_garrow_list_data_type_get_value_fieldFn c_garrow_list_data_type_get_value_field; ///

// ListFlattenOptions
private alias c_garrow_list_flatten_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_list_flatten_options_get_typeFn c_garrow_list_flatten_options_get_type; ///
private alias c_garrow_list_flatten_options_newFn = extern(C) GArrowListFlattenOptions* function() nothrow;
__gshared c_garrow_list_flatten_options_newFn c_garrow_list_flatten_options_new; ///

// ListScalar
private alias c_garrow_list_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_list_scalar_get_typeFn c_garrow_list_scalar_get_type; ///
private alias c_garrow_list_scalar_newFn = extern(C) GArrowListScalar* function(GArrowListArray* value) nothrow;
__gshared c_garrow_list_scalar_newFn c_garrow_list_scalar_new; ///

// ListSliceOptions
private alias c_garrow_list_slice_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_list_slice_options_get_typeFn c_garrow_list_slice_options_get_type; ///
private alias c_garrow_list_slice_options_newFn = extern(C) GArrowListSliceOptions* function() nothrow;
__gshared c_garrow_list_slice_options_newFn c_garrow_list_slice_options_new; ///

// LiteralExpression
private alias c_garrow_literal_expression_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_literal_expression_get_typeFn c_garrow_literal_expression_get_type; ///
private alias c_garrow_literal_expression_newFn = extern(C) GArrowLiteralExpression* function(GArrowDatum* datum) nothrow;
__gshared c_garrow_literal_expression_newFn c_garrow_literal_expression_new; ///

// LocalFileSystem
private alias c_garrow_local_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_local_file_system_get_typeFn c_garrow_local_file_system_get_type; ///
private alias c_garrow_local_file_system_newFn = extern(C) GArrowLocalFileSystem* function(GArrowLocalFileSystemOptions* options) nothrow;
__gshared c_garrow_local_file_system_newFn c_garrow_local_file_system_new; ///

// LocalFileSystemOptions
private alias c_garrow_local_file_system_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_local_file_system_options_get_typeFn c_garrow_local_file_system_options_get_type; ///
private alias c_garrow_local_file_system_options_newFn = extern(C) GArrowLocalFileSystemOptions* function() nothrow;
__gshared c_garrow_local_file_system_options_newFn c_garrow_local_file_system_options_new; ///

// MakeStructOptions
private alias c_garrow_make_struct_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_make_struct_options_get_typeFn c_garrow_make_struct_options_get_type; ///
private alias c_garrow_make_struct_options_newFn = extern(C) GArrowMakeStructOptions* function() nothrow;
__gshared c_garrow_make_struct_options_newFn c_garrow_make_struct_options_new; ///
private alias c_garrow_make_struct_options_add_fieldFn = extern(C) void function(GArrowMakeStructOptions* options, const(char)* name, gboolean nullability, GHashTable* metadata) nothrow;
__gshared c_garrow_make_struct_options_add_fieldFn c_garrow_make_struct_options_add_field; ///

// MapArray
private alias c_garrow_map_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_map_array_get_typeFn c_garrow_map_array_get_type; ///
private alias c_garrow_map_array_newFn = extern(C) GArrowMapArray* function(GArrowArray* offsets, GArrowArray* keys, GArrowArray* items, GError** _err) nothrow;
__gshared c_garrow_map_array_newFn c_garrow_map_array_new; ///
private alias c_garrow_map_array_get_itemsFn = extern(C) GArrowArray* function(GArrowMapArray* array) nothrow;
__gshared c_garrow_map_array_get_itemsFn c_garrow_map_array_get_items; ///
private alias c_garrow_map_array_get_keysFn = extern(C) GArrowArray* function(GArrowMapArray* array) nothrow;
__gshared c_garrow_map_array_get_keysFn c_garrow_map_array_get_keys; ///

// MapArrayBuilder
private alias c_garrow_map_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_map_array_builder_get_typeFn c_garrow_map_array_builder_get_type; ///
private alias c_garrow_map_array_builder_newFn = extern(C) GArrowMapArrayBuilder* function(GArrowMapDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_map_array_builder_newFn c_garrow_map_array_builder_new; ///
private alias c_garrow_map_array_builder_append_nullFn = extern(C) gboolean function(GArrowMapArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_map_array_builder_append_nullFn c_garrow_map_array_builder_append_null; ///
private alias c_garrow_map_array_builder_append_nullsFn = extern(C) gboolean function(GArrowMapArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_map_array_builder_append_nullsFn c_garrow_map_array_builder_append_nulls; ///
private alias c_garrow_map_array_builder_append_valueFn = extern(C) gboolean function(GArrowMapArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_map_array_builder_append_valueFn c_garrow_map_array_builder_append_value; ///
private alias c_garrow_map_array_builder_append_valuesFn = extern(C) gboolean function(GArrowMapArrayBuilder* builder, const(int)* offsets, long offsetsLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_map_array_builder_append_valuesFn c_garrow_map_array_builder_append_values; ///
private alias c_garrow_map_array_builder_get_item_builderFn = extern(C) GArrowArrayBuilder* function(GArrowMapArrayBuilder* builder) nothrow;
__gshared c_garrow_map_array_builder_get_item_builderFn c_garrow_map_array_builder_get_item_builder; ///
private alias c_garrow_map_array_builder_get_key_builderFn = extern(C) GArrowArrayBuilder* function(GArrowMapArrayBuilder* builder) nothrow;
__gshared c_garrow_map_array_builder_get_key_builderFn c_garrow_map_array_builder_get_key_builder; ///
private alias c_garrow_map_array_builder_get_value_builderFn = extern(C) GArrowArrayBuilder* function(GArrowMapArrayBuilder* builder) nothrow;
__gshared c_garrow_map_array_builder_get_value_builderFn c_garrow_map_array_builder_get_value_builder; ///

// MapDataType
private alias c_garrow_map_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_map_data_type_get_typeFn c_garrow_map_data_type_get_type; ///
private alias c_garrow_map_data_type_newFn = extern(C) GArrowMapDataType* function(GArrowDataType* keyType, GArrowDataType* itemType) nothrow;
__gshared c_garrow_map_data_type_newFn c_garrow_map_data_type_new; ///
private alias c_garrow_map_data_type_get_item_typeFn = extern(C) GArrowDataType* function(GArrowMapDataType* mapDataType) nothrow;
__gshared c_garrow_map_data_type_get_item_typeFn c_garrow_map_data_type_get_item_type; ///
private alias c_garrow_map_data_type_get_key_typeFn = extern(C) GArrowDataType* function(GArrowMapDataType* mapDataType) nothrow;
__gshared c_garrow_map_data_type_get_key_typeFn c_garrow_map_data_type_get_key_type; ///
private alias c_garrow_map_data_type_is_keys_sortedFn = extern(C) gboolean function(GArrowMapDataType* mapDataType) nothrow;
__gshared c_garrow_map_data_type_is_keys_sortedFn c_garrow_map_data_type_is_keys_sorted; ///

// MapLookupOptions
private alias c_garrow_map_lookup_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_map_lookup_options_get_typeFn c_garrow_map_lookup_options_get_type; ///
private alias c_garrow_map_lookup_options_newFn = extern(C) GArrowMapLookupOptions* function(GArrowScalar* queryKey, GArrowMapLookupOccurrence occurrence) nothrow;
__gshared c_garrow_map_lookup_options_newFn c_garrow_map_lookup_options_new; ///

// MapScalar
private alias c_garrow_map_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_map_scalar_get_typeFn c_garrow_map_scalar_get_type; ///
private alias c_garrow_map_scalar_newFn = extern(C) GArrowMapScalar* function(GArrowStructArray* value) nothrow;
__gshared c_garrow_map_scalar_newFn c_garrow_map_scalar_new; ///

// MatchSubstringOptions
private alias c_garrow_match_substring_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_match_substring_options_get_typeFn c_garrow_match_substring_options_get_type; ///
private alias c_garrow_match_substring_options_newFn = extern(C) GArrowMatchSubstringOptions* function() nothrow;
__gshared c_garrow_match_substring_options_newFn c_garrow_match_substring_options_new; ///

// MemoryMappedInputStream
private alias c_garrow_memory_mapped_input_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_memory_mapped_input_stream_get_typeFn c_garrow_memory_mapped_input_stream_get_type; ///
private alias c_garrow_memory_mapped_input_stream_newFn = extern(C) GArrowMemoryMappedInputStream* function(const(char)* path, GError** _err) nothrow;
__gshared c_garrow_memory_mapped_input_stream_newFn c_garrow_memory_mapped_input_stream_new; ///

// MemoryPool
private alias c_garrow_memory_pool_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_memory_pool_get_typeFn c_garrow_memory_pool_get_type; ///
private alias c_garrow_memory_pool_defaultFn = extern(C) GArrowMemoryPool* function() nothrow;
__gshared c_garrow_memory_pool_defaultFn c_garrow_memory_pool_default; ///
private alias c_garrow_memory_pool_get_backend_nameFn = extern(C) char* function(GArrowMemoryPool* memoryPool) nothrow;
__gshared c_garrow_memory_pool_get_backend_nameFn c_garrow_memory_pool_get_backend_name; ///
private alias c_garrow_memory_pool_get_bytes_allocatedFn = extern(C) long function(GArrowMemoryPool* memoryPool) nothrow;
__gshared c_garrow_memory_pool_get_bytes_allocatedFn c_garrow_memory_pool_get_bytes_allocated; ///
private alias c_garrow_memory_pool_get_max_memoryFn = extern(C) long function(GArrowMemoryPool* memoryPool) nothrow;
__gshared c_garrow_memory_pool_get_max_memoryFn c_garrow_memory_pool_get_max_memory; ///

// MockFileSystem
private alias c_garrow_mock_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_mock_file_system_get_typeFn c_garrow_mock_file_system_get_type; ///

// ModeOptions
private alias c_garrow_mode_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_mode_options_get_typeFn c_garrow_mode_options_get_type; ///
private alias c_garrow_mode_options_newFn = extern(C) GArrowModeOptions* function() nothrow;
__gshared c_garrow_mode_options_newFn c_garrow_mode_options_new; ///

// MonthDayNano
private alias c_garrow_month_day_nano_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_day_nano_get_typeFn c_garrow_month_day_nano_get_type; ///
private alias c_garrow_month_day_nano_newFn = extern(C) GArrowMonthDayNano* function(int month, int day, long nanosecond) nothrow;
__gshared c_garrow_month_day_nano_newFn c_garrow_month_day_nano_new; ///
private alias c_garrow_month_day_nano_equalFn = extern(C) gboolean function(GArrowMonthDayNano* monthNanoDay, GArrowMonthDayNano* otherMonthNanoDay) nothrow;
__gshared c_garrow_month_day_nano_equalFn c_garrow_month_day_nano_equal; ///

// MonthDayNanoIntervalArray
private alias c_garrow_month_day_nano_interval_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_day_nano_interval_array_get_typeFn c_garrow_month_day_nano_interval_array_get_type; ///
private alias c_garrow_month_day_nano_interval_array_newFn = extern(C) GArrowMonthDayNanoIntervalArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_month_day_nano_interval_array_newFn c_garrow_month_day_nano_interval_array_new; ///
private alias c_garrow_month_day_nano_interval_array_get_valueFn = extern(C) GArrowMonthDayNano* function(GArrowMonthDayNanoIntervalArray* array, long i) nothrow;
__gshared c_garrow_month_day_nano_interval_array_get_valueFn c_garrow_month_day_nano_interval_array_get_value; ///
private alias c_garrow_month_day_nano_interval_array_get_valuesFn = extern(C) GList* function(GArrowMonthDayNanoIntervalArray* array) nothrow;
__gshared c_garrow_month_day_nano_interval_array_get_valuesFn c_garrow_month_day_nano_interval_array_get_values; ///

// MonthDayNanoIntervalArrayBuilder
private alias c_garrow_month_day_nano_interval_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_day_nano_interval_array_builder_get_typeFn c_garrow_month_day_nano_interval_array_builder_get_type; ///
private alias c_garrow_month_day_nano_interval_array_builder_newFn = extern(C) GArrowMonthDayNanoIntervalArrayBuilder* function() nothrow;
__gshared c_garrow_month_day_nano_interval_array_builder_newFn c_garrow_month_day_nano_interval_array_builder_new; ///
private alias c_garrow_month_day_nano_interval_array_builder_append_valueFn = extern(C) gboolean function(GArrowMonthDayNanoIntervalArrayBuilder* builder, GArrowMonthDayNano* value, GError** _err) nothrow;
__gshared c_garrow_month_day_nano_interval_array_builder_append_valueFn c_garrow_month_day_nano_interval_array_builder_append_value; ///
private alias c_garrow_month_day_nano_interval_array_builder_append_valuesFn = extern(C) gboolean function(GArrowMonthDayNanoIntervalArrayBuilder* builder, const(GArrowMonthDayNano*)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_month_day_nano_interval_array_builder_append_valuesFn c_garrow_month_day_nano_interval_array_builder_append_values; ///

// MonthDayNanoIntervalDataType
private alias c_garrow_month_day_nano_interval_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_day_nano_interval_data_type_get_typeFn c_garrow_month_day_nano_interval_data_type_get_type; ///
private alias c_garrow_month_day_nano_interval_data_type_newFn = extern(C) GArrowMonthDayNanoIntervalDataType* function() nothrow;
__gshared c_garrow_month_day_nano_interval_data_type_newFn c_garrow_month_day_nano_interval_data_type_new; ///

// MonthDayNanoIntervalScalar
private alias c_garrow_month_day_nano_interval_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_day_nano_interval_scalar_get_typeFn c_garrow_month_day_nano_interval_scalar_get_type; ///
private alias c_garrow_month_day_nano_interval_scalar_newFn = extern(C) GArrowMonthDayNanoIntervalScalar* function(GArrowMonthDayNano* value) nothrow;
__gshared c_garrow_month_day_nano_interval_scalar_newFn c_garrow_month_day_nano_interval_scalar_new; ///
private alias c_garrow_month_day_nano_interval_scalar_get_valueFn = extern(C) GArrowMonthDayNano* function(GArrowMonthDayNanoIntervalScalar* scalar) nothrow;
__gshared c_garrow_month_day_nano_interval_scalar_get_valueFn c_garrow_month_day_nano_interval_scalar_get_value; ///

// MonthIntervalArray
private alias c_garrow_month_interval_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_interval_array_get_typeFn c_garrow_month_interval_array_get_type; ///
private alias c_garrow_month_interval_array_newFn = extern(C) GArrowMonthIntervalArray* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_month_interval_array_newFn c_garrow_month_interval_array_new; ///
private alias c_garrow_month_interval_array_get_valueFn = extern(C) int function(GArrowMonthIntervalArray* array, long i) nothrow;
__gshared c_garrow_month_interval_array_get_valueFn c_garrow_month_interval_array_get_value; ///
private alias c_garrow_month_interval_array_get_valuesFn = extern(C) const(int)* function(GArrowMonthIntervalArray* array, long* length) nothrow;
__gshared c_garrow_month_interval_array_get_valuesFn c_garrow_month_interval_array_get_values; ///

// MonthIntervalArrayBuilder
private alias c_garrow_month_interval_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_interval_array_builder_get_typeFn c_garrow_month_interval_array_builder_get_type; ///
private alias c_garrow_month_interval_array_builder_newFn = extern(C) GArrowMonthIntervalArrayBuilder* function() nothrow;
__gshared c_garrow_month_interval_array_builder_newFn c_garrow_month_interval_array_builder_new; ///
private alias c_garrow_month_interval_array_builder_append_valueFn = extern(C) gboolean function(GArrowMonthIntervalArrayBuilder* builder, int value, GError** _err) nothrow;
__gshared c_garrow_month_interval_array_builder_append_valueFn c_garrow_month_interval_array_builder_append_value; ///
private alias c_garrow_month_interval_array_builder_append_valuesFn = extern(C) gboolean function(GArrowMonthIntervalArrayBuilder* builder, const(int)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_month_interval_array_builder_append_valuesFn c_garrow_month_interval_array_builder_append_values; ///

// MonthIntervalDataType
private alias c_garrow_month_interval_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_interval_data_type_get_typeFn c_garrow_month_interval_data_type_get_type; ///
private alias c_garrow_month_interval_data_type_newFn = extern(C) GArrowMonthIntervalDataType* function() nothrow;
__gshared c_garrow_month_interval_data_type_newFn c_garrow_month_interval_data_type_new; ///

// MonthIntervalScalar
private alias c_garrow_month_interval_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_month_interval_scalar_get_typeFn c_garrow_month_interval_scalar_get_type; ///
private alias c_garrow_month_interval_scalar_newFn = extern(C) GArrowMonthIntervalScalar* function(int value) nothrow;
__gshared c_garrow_month_interval_scalar_newFn c_garrow_month_interval_scalar_new; ///
private alias c_garrow_month_interval_scalar_get_valueFn = extern(C) int function(GArrowMonthIntervalScalar* scalar) nothrow;
__gshared c_garrow_month_interval_scalar_get_valueFn c_garrow_month_interval_scalar_get_value; ///

// MutableBuffer
private alias c_garrow_mutable_buffer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_mutable_buffer_get_typeFn c_garrow_mutable_buffer_get_type; ///
private alias c_garrow_mutable_buffer_newFn = extern(C) GArrowMutableBuffer* function(ubyte* data, long size) nothrow;
__gshared c_garrow_mutable_buffer_newFn c_garrow_mutable_buffer_new; ///
private alias c_garrow_mutable_buffer_new_bytesFn = extern(C) GArrowMutableBuffer* function(GBytes* data) nothrow;
__gshared c_garrow_mutable_buffer_new_bytesFn c_garrow_mutable_buffer_new_bytes; ///
private alias c_garrow_mutable_buffer_set_dataFn = extern(C) gboolean function(GArrowMutableBuffer* buffer, long offset, const(ubyte)* data, long size, GError** _err) nothrow;
__gshared c_garrow_mutable_buffer_set_dataFn c_garrow_mutable_buffer_set_data; ///
private alias c_garrow_mutable_buffer_sliceFn = extern(C) GArrowMutableBuffer* function(GArrowMutableBuffer* buffer, long offset, long size) nothrow;
__gshared c_garrow_mutable_buffer_sliceFn c_garrow_mutable_buffer_slice; ///

// NullArray
private alias c_garrow_null_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_null_array_get_typeFn c_garrow_null_array_get_type; ///
private alias c_garrow_null_array_newFn = extern(C) GArrowNullArray* function(long length) nothrow;
__gshared c_garrow_null_array_newFn c_garrow_null_array_new; ///

// NullArrayBuilder
private alias c_garrow_null_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_null_array_builder_get_typeFn c_garrow_null_array_builder_get_type; ///
private alias c_garrow_null_array_builder_newFn = extern(C) GArrowNullArrayBuilder* function() nothrow;
__gshared c_garrow_null_array_builder_newFn c_garrow_null_array_builder_new; ///
private alias c_garrow_null_array_builder_append_nullFn = extern(C) gboolean function(GArrowNullArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_null_array_builder_append_nullFn c_garrow_null_array_builder_append_null; ///
private alias c_garrow_null_array_builder_append_nullsFn = extern(C) gboolean function(GArrowNullArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_null_array_builder_append_nullsFn c_garrow_null_array_builder_append_nulls; ///

// NullDataType
private alias c_garrow_null_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_null_data_type_get_typeFn c_garrow_null_data_type_get_type; ///
private alias c_garrow_null_data_type_newFn = extern(C) GArrowNullDataType* function() nothrow;
__gshared c_garrow_null_data_type_newFn c_garrow_null_data_type_new; ///

// NullOptions
private alias c_garrow_null_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_null_options_get_typeFn c_garrow_null_options_get_type; ///
private alias c_garrow_null_options_newFn = extern(C) GArrowNullOptions* function() nothrow;
__gshared c_garrow_null_options_newFn c_garrow_null_options_new; ///

// NullScalar
private alias c_garrow_null_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_null_scalar_get_typeFn c_garrow_null_scalar_get_type; ///
private alias c_garrow_null_scalar_newFn = extern(C) GArrowNullScalar* function() nothrow;
__gshared c_garrow_null_scalar_newFn c_garrow_null_scalar_new; ///

// NumericArray
private alias c_garrow_numeric_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_numeric_array_get_typeFn c_garrow_numeric_array_get_type; ///
private alias c_garrow_numeric_array_meanFn = extern(C) double function(GArrowNumericArray* array, GError** _err) nothrow;
__gshared c_garrow_numeric_array_meanFn c_garrow_numeric_array_mean; ///

// NumericDataType
private alias c_garrow_numeric_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_numeric_data_type_get_typeFn c_garrow_numeric_data_type_get_type; ///

// ORCFileReader
private alias c_garrow_orc_file_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_orc_file_reader_get_typeFn c_garrow_orc_file_reader_get_type; ///
private alias c_garrow_orc_file_reader_newFn = extern(C) GArrowORCFileReader* function(GArrowSeekableInputStream* file, GError** _err) nothrow;
__gshared c_garrow_orc_file_reader_newFn c_garrow_orc_file_reader_new; ///
private alias c_garrow_orc_file_reader_get_field_indexesFn = extern(C) const(int)* function(GArrowORCFileReader* reader, uint* nFieldIndexes) nothrow;
__gshared c_garrow_orc_file_reader_get_field_indexesFn c_garrow_orc_file_reader_get_field_indexes; ///
private alias c_garrow_orc_file_reader_get_field_indicesFn = extern(C) const(int)* function(GArrowORCFileReader* reader, uint* nFieldIndices) nothrow;
__gshared c_garrow_orc_file_reader_get_field_indicesFn c_garrow_orc_file_reader_get_field_indices; ///
private alias c_garrow_orc_file_reader_get_n_rowsFn = extern(C) long function(GArrowORCFileReader* reader) nothrow;
__gshared c_garrow_orc_file_reader_get_n_rowsFn c_garrow_orc_file_reader_get_n_rows; ///
private alias c_garrow_orc_file_reader_get_n_stripesFn = extern(C) long function(GArrowORCFileReader* reader) nothrow;
__gshared c_garrow_orc_file_reader_get_n_stripesFn c_garrow_orc_file_reader_get_n_stripes; ///
private alias c_garrow_orc_file_reader_read_stripeFn = extern(C) GArrowRecordBatch* function(GArrowORCFileReader* reader, long i, GError** _err) nothrow;
__gshared c_garrow_orc_file_reader_read_stripeFn c_garrow_orc_file_reader_read_stripe; ///
private alias c_garrow_orc_file_reader_read_stripesFn = extern(C) GArrowTable* function(GArrowORCFileReader* reader, GError** _err) nothrow;
__gshared c_garrow_orc_file_reader_read_stripesFn c_garrow_orc_file_reader_read_stripes; ///
private alias c_garrow_orc_file_reader_read_typeFn = extern(C) GArrowSchema* function(GArrowORCFileReader* reader, GError** _err) nothrow;
__gshared c_garrow_orc_file_reader_read_typeFn c_garrow_orc_file_reader_read_type; ///
private alias c_garrow_orc_file_reader_set_field_indexesFn = extern(C) void function(GArrowORCFileReader* reader, const(int)* fieldIndexes, uint nFieldIndexes) nothrow;
__gshared c_garrow_orc_file_reader_set_field_indexesFn c_garrow_orc_file_reader_set_field_indexes; ///
private alias c_garrow_orc_file_reader_set_field_indicesFn = extern(C) void function(GArrowORCFileReader* reader, const(int)* fieldIndices, uint nFieldIndices) nothrow;
__gshared c_garrow_orc_file_reader_set_field_indicesFn c_garrow_orc_file_reader_set_field_indices; ///

// OutputStream
private alias c_garrow_output_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_output_stream_get_typeFn c_garrow_output_stream_get_type; ///
private alias c_garrow_output_stream_alignFn = extern(C) gboolean function(GArrowOutputStream* stream, int alignment, GError** _err) nothrow;
__gshared c_garrow_output_stream_alignFn c_garrow_output_stream_align; ///
private alias c_garrow_output_stream_write_record_batchFn = extern(C) long function(GArrowOutputStream* stream, GArrowRecordBatch* recordBatch, GArrowWriteOptions* options, GError** _err) nothrow;
__gshared c_garrow_output_stream_write_record_batchFn c_garrow_output_stream_write_record_batch; ///
private alias c_garrow_output_stream_write_tensorFn = extern(C) long function(GArrowOutputStream* stream, GArrowTensor* tensor, GError** _err) nothrow;
__gshared c_garrow_output_stream_write_tensorFn c_garrow_output_stream_write_tensor; ///

// PadOptions
private alias c_garrow_pad_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_pad_options_get_typeFn c_garrow_pad_options_get_type; ///
private alias c_garrow_pad_options_newFn = extern(C) GArrowPadOptions* function() nothrow;
__gshared c_garrow_pad_options_newFn c_garrow_pad_options_new; ///

// PairwiseOptions
private alias c_garrow_pairwise_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_pairwise_options_get_typeFn c_garrow_pairwise_options_get_type; ///
private alias c_garrow_pairwise_options_newFn = extern(C) GArrowPairwiseOptions* function() nothrow;
__gshared c_garrow_pairwise_options_newFn c_garrow_pairwise_options_new; ///

// PartitionNthOptions
private alias c_garrow_partition_nth_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_partition_nth_options_get_typeFn c_garrow_partition_nth_options_get_type; ///
private alias c_garrow_partition_nth_options_newFn = extern(C) GArrowPartitionNthOptions* function() nothrow;
__gshared c_garrow_partition_nth_options_newFn c_garrow_partition_nth_options_new; ///

// PivotWiderOptions
private alias c_garrow_pivot_wider_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_pivot_wider_options_get_typeFn c_garrow_pivot_wider_options_get_type; ///
private alias c_garrow_pivot_wider_options_newFn = extern(C) GArrowPivotWiderOptions* function() nothrow;
__gshared c_garrow_pivot_wider_options_newFn c_garrow_pivot_wider_options_new; ///

// PrimitiveArray
private alias c_garrow_primitive_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_primitive_array_get_typeFn c_garrow_primitive_array_get_type; ///
private alias c_garrow_primitive_array_get_bufferFn = extern(C) GArrowBuffer* function(GArrowPrimitiveArray* array) nothrow;
__gshared c_garrow_primitive_array_get_bufferFn c_garrow_primitive_array_get_buffer; ///
private alias c_garrow_primitive_array_get_data_bufferFn = extern(C) GArrowBuffer* function(GArrowPrimitiveArray* array) nothrow;
__gshared c_garrow_primitive_array_get_data_bufferFn c_garrow_primitive_array_get_data_buffer; ///

// ProjectNodeOptions
private alias c_garrow_project_node_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_project_node_options_get_typeFn c_garrow_project_node_options_get_type; ///
private alias c_garrow_project_node_options_newFn = extern(C) GArrowProjectNodeOptions* function(GList* expressions, char** names, size_t nNames) nothrow;
__gshared c_garrow_project_node_options_newFn c_garrow_project_node_options_new; ///
private alias c_garrow_project_node_options_get_expressionsFn = extern(C) GList* function(GArrowProjectNodeOptions* options) nothrow;
__gshared c_garrow_project_node_options_get_expressionsFn c_garrow_project_node_options_get_expressions; ///

// QuantileOptions
private alias c_garrow_quantile_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_quantile_options_get_typeFn c_garrow_quantile_options_get_type; ///
private alias c_garrow_quantile_options_newFn = extern(C) GArrowQuantileOptions* function() nothrow;
__gshared c_garrow_quantile_options_newFn c_garrow_quantile_options_new; ///
private alias c_garrow_quantile_options_get_qsFn = extern(C) const(double)* function(GArrowQuantileOptions* options, size_t* n) nothrow;
__gshared c_garrow_quantile_options_get_qsFn c_garrow_quantile_options_get_qs; ///
private alias c_garrow_quantile_options_set_qFn = extern(C) void function(GArrowQuantileOptions* options, double q) nothrow;
__gshared c_garrow_quantile_options_set_qFn c_garrow_quantile_options_set_q; ///
private alias c_garrow_quantile_options_set_qsFn = extern(C) void function(GArrowQuantileOptions* options, const(double)* qs, size_t n) nothrow;
__gshared c_garrow_quantile_options_set_qsFn c_garrow_quantile_options_set_qs; ///

// RankOptions
private alias c_garrow_rank_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_rank_options_get_typeFn c_garrow_rank_options_get_type; ///
private alias c_garrow_rank_options_newFn = extern(C) GArrowRankOptions* function() nothrow;
__gshared c_garrow_rank_options_newFn c_garrow_rank_options_new; ///
private alias c_garrow_rank_options_add_sort_keyFn = extern(C) void function(GArrowRankOptions* options, GArrowSortKey* sortKey) nothrow;
__gshared c_garrow_rank_options_add_sort_keyFn c_garrow_rank_options_add_sort_key; ///
private alias c_garrow_rank_options_equalFn = extern(C) gboolean function(GArrowRankOptions* options, GArrowRankOptions* otherOptions) nothrow;
__gshared c_garrow_rank_options_equalFn c_garrow_rank_options_equal; ///
private alias c_garrow_rank_options_get_sort_keysFn = extern(C) GList* function(GArrowRankOptions* options) nothrow;
__gshared c_garrow_rank_options_get_sort_keysFn c_garrow_rank_options_get_sort_keys; ///
private alias c_garrow_rank_options_set_sort_keysFn = extern(C) void function(GArrowRankOptions* options, GList* sortKeys) nothrow;
__gshared c_garrow_rank_options_set_sort_keysFn c_garrow_rank_options_set_sort_keys; ///

// RankQuantileOptions
private alias c_garrow_rank_quantile_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_rank_quantile_options_get_typeFn c_garrow_rank_quantile_options_get_type; ///
private alias c_garrow_rank_quantile_options_newFn = extern(C) GArrowRankQuantileOptions* function() nothrow;
__gshared c_garrow_rank_quantile_options_newFn c_garrow_rank_quantile_options_new; ///
private alias c_garrow_rank_quantile_options_add_sort_keyFn = extern(C) void function(GArrowRankQuantileOptions* options, GArrowSortKey* sortKey) nothrow;
__gshared c_garrow_rank_quantile_options_add_sort_keyFn c_garrow_rank_quantile_options_add_sort_key; ///
private alias c_garrow_rank_quantile_options_get_sort_keysFn = extern(C) GList* function(GArrowRankQuantileOptions* options) nothrow;
__gshared c_garrow_rank_quantile_options_get_sort_keysFn c_garrow_rank_quantile_options_get_sort_keys; ///
private alias c_garrow_rank_quantile_options_set_sort_keysFn = extern(C) void function(GArrowRankQuantileOptions* options, GList* sortKeys) nothrow;
__gshared c_garrow_rank_quantile_options_set_sort_keysFn c_garrow_rank_quantile_options_set_sort_keys; ///

// ReadOptions
private alias c_garrow_read_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_read_options_get_typeFn c_garrow_read_options_get_type; ///
private alias c_garrow_read_options_newFn = extern(C) GArrowReadOptions* function() nothrow;
__gshared c_garrow_read_options_newFn c_garrow_read_options_new; ///
private alias c_garrow_read_options_get_included_fieldsFn = extern(C) int* function(GArrowReadOptions* options, size_t* nFields) nothrow;
__gshared c_garrow_read_options_get_included_fieldsFn c_garrow_read_options_get_included_fields; ///
private alias c_garrow_read_options_set_included_fieldsFn = extern(C) void function(GArrowReadOptions* options, int* fields, size_t nFields) nothrow;
__gshared c_garrow_read_options_set_included_fieldsFn c_garrow_read_options_set_included_fields; ///

// Readable
private alias c_garrow_readable_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_readable_get_typeFn c_garrow_readable_get_type; ///
private alias c_garrow_readable_readFn = extern(C) GArrowBuffer* function(GArrowReadable* readable, long nBytes, GError** _err) nothrow;
__gshared c_garrow_readable_readFn c_garrow_readable_read; ///
private alias c_garrow_readable_read_bytesFn = extern(C) GBytes* function(GArrowReadable* readable, long nBytes, GError** _err) nothrow;
__gshared c_garrow_readable_read_bytesFn c_garrow_readable_read_bytes; ///

// RecordBatch
private alias c_garrow_record_batch_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_get_typeFn c_garrow_record_batch_get_type; ///
private alias c_garrow_record_batch_newFn = extern(C) GArrowRecordBatch* function(GArrowSchema* schema, uint nRows, GList* columns, GError** _err) nothrow;
__gshared c_garrow_record_batch_newFn c_garrow_record_batch_new; ///
private alias c_garrow_record_batch_importFn = extern(C) GArrowRecordBatch* function(void* cAbiArray, GArrowSchema* schema, GError** _err) nothrow;
__gshared c_garrow_record_batch_importFn c_garrow_record_batch_import; ///
private alias c_garrow_record_batch_add_columnFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, uint i, GArrowField* field, GArrowArray* column, GError** _err) nothrow;
__gshared c_garrow_record_batch_add_columnFn c_garrow_record_batch_add_column; ///
private alias c_garrow_record_batch_equalFn = extern(C) gboolean function(GArrowRecordBatch* recordBatch, GArrowRecordBatch* otherRecordBatch) nothrow;
__gshared c_garrow_record_batch_equalFn c_garrow_record_batch_equal; ///
private alias c_garrow_record_batch_equal_metadataFn = extern(C) gboolean function(GArrowRecordBatch* recordBatch, GArrowRecordBatch* otherRecordBatch, gboolean checkMetadata) nothrow;
__gshared c_garrow_record_batch_equal_metadataFn c_garrow_record_batch_equal_metadata; ///
private alias c_garrow_record_batch_exportFn = extern(C) gboolean function(GArrowRecordBatch* recordBatch, void** cAbiArray, void** cAbiSchema, GError** _err) nothrow;
__gshared c_garrow_record_batch_exportFn c_garrow_record_batch_export; ///
private alias c_garrow_record_batch_filterFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** _err) nothrow;
__gshared c_garrow_record_batch_filterFn c_garrow_record_batch_filter; ///
private alias c_garrow_record_batch_get_column_dataFn = extern(C) GArrowArray* function(GArrowRecordBatch* recordBatch, int i) nothrow;
__gshared c_garrow_record_batch_get_column_dataFn c_garrow_record_batch_get_column_data; ///
private alias c_garrow_record_batch_get_column_nameFn = extern(C) const(char)* function(GArrowRecordBatch* recordBatch, int i) nothrow;
__gshared c_garrow_record_batch_get_column_nameFn c_garrow_record_batch_get_column_name; ///
private alias c_garrow_record_batch_get_n_columnsFn = extern(C) uint function(GArrowRecordBatch* recordBatch) nothrow;
__gshared c_garrow_record_batch_get_n_columnsFn c_garrow_record_batch_get_n_columns; ///
private alias c_garrow_record_batch_get_n_rowsFn = extern(C) long function(GArrowRecordBatch* recordBatch) nothrow;
__gshared c_garrow_record_batch_get_n_rowsFn c_garrow_record_batch_get_n_rows; ///
private alias c_garrow_record_batch_get_schemaFn = extern(C) GArrowSchema* function(GArrowRecordBatch* recordBatch) nothrow;
__gshared c_garrow_record_batch_get_schemaFn c_garrow_record_batch_get_schema; ///
private alias c_garrow_record_batch_remove_columnFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, uint i, GError** _err) nothrow;
__gshared c_garrow_record_batch_remove_columnFn c_garrow_record_batch_remove_column; ///
private alias c_garrow_record_batch_serializeFn = extern(C) GArrowBuffer* function(GArrowRecordBatch* recordBatch, GArrowWriteOptions* options, GError** _err) nothrow;
__gshared c_garrow_record_batch_serializeFn c_garrow_record_batch_serialize; ///
private alias c_garrow_record_batch_sliceFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, long offset, long length) nothrow;
__gshared c_garrow_record_batch_sliceFn c_garrow_record_batch_slice; ///
private alias c_garrow_record_batch_sort_indicesFn = extern(C) GArrowUInt64Array* function(GArrowRecordBatch* recordBatch, GArrowSortOptions* options, GError** _err) nothrow;
__gshared c_garrow_record_batch_sort_indicesFn c_garrow_record_batch_sort_indices; ///
private alias c_garrow_record_batch_takeFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatch* recordBatch, GArrowArray* indices, GArrowTakeOptions* options, GError** _err) nothrow;
__gshared c_garrow_record_batch_takeFn c_garrow_record_batch_take; ///
private alias c_garrow_record_batch_to_stringFn = extern(C) char* function(GArrowRecordBatch* recordBatch, GError** _err) nothrow;
__gshared c_garrow_record_batch_to_stringFn c_garrow_record_batch_to_string; ///
private alias c_garrow_record_batch_validateFn = extern(C) gboolean function(GArrowRecordBatch* recordBatch, GError** _err) nothrow;
__gshared c_garrow_record_batch_validateFn c_garrow_record_batch_validate; ///
private alias c_garrow_record_batch_validate_fullFn = extern(C) gboolean function(GArrowRecordBatch* recordBatch, GError** _err) nothrow;
__gshared c_garrow_record_batch_validate_fullFn c_garrow_record_batch_validate_full; ///

// RecordBatchBuilder
private alias c_garrow_record_batch_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_builder_get_typeFn c_garrow_record_batch_builder_get_type; ///
private alias c_garrow_record_batch_builder_newFn = extern(C) GArrowRecordBatchBuilder* function(GArrowSchema* schema, GError** _err) nothrow;
__gshared c_garrow_record_batch_builder_newFn c_garrow_record_batch_builder_new; ///
private alias c_garrow_record_batch_builder_flushFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatchBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_record_batch_builder_flushFn c_garrow_record_batch_builder_flush; ///
private alias c_garrow_record_batch_builder_get_column_builderFn = extern(C) GArrowArrayBuilder* function(GArrowRecordBatchBuilder* builder, int i) nothrow;
__gshared c_garrow_record_batch_builder_get_column_builderFn c_garrow_record_batch_builder_get_column_builder; ///
private alias c_garrow_record_batch_builder_get_fieldFn = extern(C) GArrowArrayBuilder* function(GArrowRecordBatchBuilder* builder, int i) nothrow;
__gshared c_garrow_record_batch_builder_get_fieldFn c_garrow_record_batch_builder_get_field; ///
private alias c_garrow_record_batch_builder_get_initial_capacityFn = extern(C) long function(GArrowRecordBatchBuilder* builder) nothrow;
__gshared c_garrow_record_batch_builder_get_initial_capacityFn c_garrow_record_batch_builder_get_initial_capacity; ///
private alias c_garrow_record_batch_builder_get_n_columnsFn = extern(C) int function(GArrowRecordBatchBuilder* builder) nothrow;
__gshared c_garrow_record_batch_builder_get_n_columnsFn c_garrow_record_batch_builder_get_n_columns; ///
private alias c_garrow_record_batch_builder_get_n_fieldsFn = extern(C) int function(GArrowRecordBatchBuilder* builder) nothrow;
__gshared c_garrow_record_batch_builder_get_n_fieldsFn c_garrow_record_batch_builder_get_n_fields; ///
private alias c_garrow_record_batch_builder_get_schemaFn = extern(C) GArrowSchema* function(GArrowRecordBatchBuilder* builder) nothrow;
__gshared c_garrow_record_batch_builder_get_schemaFn c_garrow_record_batch_builder_get_schema; ///
private alias c_garrow_record_batch_builder_set_initial_capacityFn = extern(C) void function(GArrowRecordBatchBuilder* builder, long capacity) nothrow;
__gshared c_garrow_record_batch_builder_set_initial_capacityFn c_garrow_record_batch_builder_set_initial_capacity; ///

// RecordBatchDatum
private alias c_garrow_record_batch_datum_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_datum_get_typeFn c_garrow_record_batch_datum_get_type; ///
private alias c_garrow_record_batch_datum_newFn = extern(C) GArrowRecordBatchDatum* function(GArrowRecordBatch* value) nothrow;
__gshared c_garrow_record_batch_datum_newFn c_garrow_record_batch_datum_new; ///

// RecordBatchFileReader
private alias c_garrow_record_batch_file_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_file_reader_get_typeFn c_garrow_record_batch_file_reader_get_type; ///
private alias c_garrow_record_batch_file_reader_newFn = extern(C) GArrowRecordBatchFileReader* function(GArrowSeekableInputStream* file, GError** _err) nothrow;
__gshared c_garrow_record_batch_file_reader_newFn c_garrow_record_batch_file_reader_new; ///
private alias c_garrow_record_batch_file_reader_get_metadataFn = extern(C) GHashTable* function(GArrowRecordBatchFileReader* reader) nothrow;
__gshared c_garrow_record_batch_file_reader_get_metadataFn c_garrow_record_batch_file_reader_get_metadata; ///
private alias c_garrow_record_batch_file_reader_get_n_record_batchesFn = extern(C) uint function(GArrowRecordBatchFileReader* reader) nothrow;
__gshared c_garrow_record_batch_file_reader_get_n_record_batchesFn c_garrow_record_batch_file_reader_get_n_record_batches; ///
private alias c_garrow_record_batch_file_reader_get_record_batchFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatchFileReader* reader, uint i, GError** _err) nothrow;
__gshared c_garrow_record_batch_file_reader_get_record_batchFn c_garrow_record_batch_file_reader_get_record_batch; ///
private alias c_garrow_record_batch_file_reader_get_schemaFn = extern(C) GArrowSchema* function(GArrowRecordBatchFileReader* reader) nothrow;
__gshared c_garrow_record_batch_file_reader_get_schemaFn c_garrow_record_batch_file_reader_get_schema; ///
private alias c_garrow_record_batch_file_reader_get_versionFn = extern(C) GArrowMetadataVersion function(GArrowRecordBatchFileReader* reader) nothrow;
__gshared c_garrow_record_batch_file_reader_get_versionFn c_garrow_record_batch_file_reader_get_version; ///
private alias c_garrow_record_batch_file_reader_read_record_batchFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatchFileReader* reader, uint i, GError** _err) nothrow;
__gshared c_garrow_record_batch_file_reader_read_record_batchFn c_garrow_record_batch_file_reader_read_record_batch; ///

// RecordBatchFileWriter
private alias c_garrow_record_batch_file_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_file_writer_get_typeFn c_garrow_record_batch_file_writer_get_type; ///
private alias c_garrow_record_batch_file_writer_newFn = extern(C) GArrowRecordBatchFileWriter* function(GArrowOutputStream* sink, GArrowSchema* schema, GError** _err) nothrow;
__gshared c_garrow_record_batch_file_writer_newFn c_garrow_record_batch_file_writer_new; ///
private alias c_garrow_record_batch_file_writer_new_fullFn = extern(C) GArrowRecordBatchFileWriter* function(GArrowOutputStream* sink, GArrowSchema* schema, GArrowWriteOptions* options, GHashTable* metadata, GError** _err) nothrow;
__gshared c_garrow_record_batch_file_writer_new_fullFn c_garrow_record_batch_file_writer_new_full; ///

// RecordBatchIterator
private alias c_garrow_record_batch_iterator_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_iterator_get_typeFn c_garrow_record_batch_iterator_get_type; ///
private alias c_garrow_record_batch_iterator_newFn = extern(C) GArrowRecordBatchIterator* function(GList* recordBatches) nothrow;
__gshared c_garrow_record_batch_iterator_newFn c_garrow_record_batch_iterator_new; ///
private alias c_garrow_record_batch_iterator_equalFn = extern(C) gboolean function(GArrowRecordBatchIterator* iterator, GArrowRecordBatchIterator* otherIterator) nothrow;
__gshared c_garrow_record_batch_iterator_equalFn c_garrow_record_batch_iterator_equal; ///
private alias c_garrow_record_batch_iterator_nextFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatchIterator* iterator, GError** _err) nothrow;
__gshared c_garrow_record_batch_iterator_nextFn c_garrow_record_batch_iterator_next; ///
private alias c_garrow_record_batch_iterator_to_listFn = extern(C) GList* function(GArrowRecordBatchIterator* iterator, GError** _err) nothrow;
__gshared c_garrow_record_batch_iterator_to_listFn c_garrow_record_batch_iterator_to_list; ///

// RecordBatchReader
private alias c_garrow_record_batch_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_reader_get_typeFn c_garrow_record_batch_reader_get_type; ///
private alias c_garrow_record_batch_reader_newFn = extern(C) GArrowRecordBatchReader* function(GList* recordBatches, GArrowSchema* schema, GError** _err) nothrow;
__gshared c_garrow_record_batch_reader_newFn c_garrow_record_batch_reader_new; ///
private alias c_garrow_record_batch_reader_importFn = extern(C) GArrowRecordBatchReader* function(void* cAbiArrayStream, GError** _err) nothrow;
__gshared c_garrow_record_batch_reader_importFn c_garrow_record_batch_reader_import; ///
private alias c_garrow_record_batch_reader_exportFn = extern(C) void* function(GArrowRecordBatchReader* reader, GError** _err) nothrow;
__gshared c_garrow_record_batch_reader_exportFn c_garrow_record_batch_reader_export; ///
private alias c_garrow_record_batch_reader_get_next_record_batchFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatchReader* reader, GError** _err) nothrow;
__gshared c_garrow_record_batch_reader_get_next_record_batchFn c_garrow_record_batch_reader_get_next_record_batch; ///
private alias c_garrow_record_batch_reader_get_schemaFn = extern(C) GArrowSchema* function(GArrowRecordBatchReader* reader) nothrow;
__gshared c_garrow_record_batch_reader_get_schemaFn c_garrow_record_batch_reader_get_schema; ///
private alias c_garrow_record_batch_reader_get_sourcesFn = extern(C) GList* function(GArrowRecordBatchReader* reader) nothrow;
__gshared c_garrow_record_batch_reader_get_sourcesFn c_garrow_record_batch_reader_get_sources; ///
private alias c_garrow_record_batch_reader_read_allFn = extern(C) GArrowTable* function(GArrowRecordBatchReader* reader, GError** _err) nothrow;
__gshared c_garrow_record_batch_reader_read_allFn c_garrow_record_batch_reader_read_all; ///
private alias c_garrow_record_batch_reader_read_nextFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatchReader* reader, GError** _err) nothrow;
__gshared c_garrow_record_batch_reader_read_nextFn c_garrow_record_batch_reader_read_next; ///
private alias c_garrow_record_batch_reader_read_next_record_batchFn = extern(C) GArrowRecordBatch* function(GArrowRecordBatchReader* reader, GError** _err) nothrow;
__gshared c_garrow_record_batch_reader_read_next_record_batchFn c_garrow_record_batch_reader_read_next_record_batch; ///

// RecordBatchStreamReader
private alias c_garrow_record_batch_stream_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_stream_reader_get_typeFn c_garrow_record_batch_stream_reader_get_type; ///
private alias c_garrow_record_batch_stream_reader_newFn = extern(C) GArrowRecordBatchStreamReader* function(GArrowInputStream* stream, GError** _err) nothrow;
__gshared c_garrow_record_batch_stream_reader_newFn c_garrow_record_batch_stream_reader_new; ///

// RecordBatchStreamWriter
private alias c_garrow_record_batch_stream_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_stream_writer_get_typeFn c_garrow_record_batch_stream_writer_get_type; ///
private alias c_garrow_record_batch_stream_writer_newFn = extern(C) GArrowRecordBatchStreamWriter* function(GArrowOutputStream* sink, GArrowSchema* schema, GError** _err) nothrow;
__gshared c_garrow_record_batch_stream_writer_newFn c_garrow_record_batch_stream_writer_new; ///

// RecordBatchWriter
private alias c_garrow_record_batch_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_record_batch_writer_get_typeFn c_garrow_record_batch_writer_get_type; ///
private alias c_garrow_record_batch_writer_closeFn = extern(C) gboolean function(GArrowRecordBatchWriter* writer, GError** _err) nothrow;
__gshared c_garrow_record_batch_writer_closeFn c_garrow_record_batch_writer_close; ///
private alias c_garrow_record_batch_writer_is_closedFn = extern(C) gboolean function(GArrowRecordBatchWriter* writer) nothrow;
__gshared c_garrow_record_batch_writer_is_closedFn c_garrow_record_batch_writer_is_closed; ///
private alias c_garrow_record_batch_writer_write_record_batchFn = extern(C) gboolean function(GArrowRecordBatchWriter* writer, GArrowRecordBatch* recordBatch, GError** _err) nothrow;
__gshared c_garrow_record_batch_writer_write_record_batchFn c_garrow_record_batch_writer_write_record_batch; ///
private alias c_garrow_record_batch_writer_write_tableFn = extern(C) gboolean function(GArrowRecordBatchWriter* writer, GArrowTable* table, GError** _err) nothrow;
__gshared c_garrow_record_batch_writer_write_tableFn c_garrow_record_batch_writer_write_table; ///

// ReplaceSliceOptions
private alias c_garrow_replace_slice_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_replace_slice_options_get_typeFn c_garrow_replace_slice_options_get_type; ///
private alias c_garrow_replace_slice_options_newFn = extern(C) GArrowReplaceSliceOptions* function() nothrow;
__gshared c_garrow_replace_slice_options_newFn c_garrow_replace_slice_options_new; ///

// ReplaceSubstringOptions
private alias c_garrow_replace_substring_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_replace_substring_options_get_typeFn c_garrow_replace_substring_options_get_type; ///
private alias c_garrow_replace_substring_options_newFn = extern(C) GArrowReplaceSubstringOptions* function() nothrow;
__gshared c_garrow_replace_substring_options_newFn c_garrow_replace_substring_options_new; ///

// ResizableBuffer
private alias c_garrow_resizable_buffer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_resizable_buffer_get_typeFn c_garrow_resizable_buffer_get_type; ///
private alias c_garrow_resizable_buffer_newFn = extern(C) GArrowResizableBuffer* function(long initialSize, GError** _err) nothrow;
__gshared c_garrow_resizable_buffer_newFn c_garrow_resizable_buffer_new; ///
private alias c_garrow_resizable_buffer_reserveFn = extern(C) gboolean function(GArrowResizableBuffer* buffer, long newCapacity, GError** _err) nothrow;
__gshared c_garrow_resizable_buffer_reserveFn c_garrow_resizable_buffer_reserve; ///
private alias c_garrow_resizable_buffer_resizeFn = extern(C) gboolean function(GArrowResizableBuffer* buffer, long newSize, GError** _err) nothrow;
__gshared c_garrow_resizable_buffer_resizeFn c_garrow_resizable_buffer_resize; ///

// RoundBinaryOptions
private alias c_garrow_round_binary_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_round_binary_options_get_typeFn c_garrow_round_binary_options_get_type; ///
private alias c_garrow_round_binary_options_newFn = extern(C) GArrowRoundBinaryOptions* function() nothrow;
__gshared c_garrow_round_binary_options_newFn c_garrow_round_binary_options_new; ///

// RoundOptions
private alias c_garrow_round_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_round_options_get_typeFn c_garrow_round_options_get_type; ///
private alias c_garrow_round_options_newFn = extern(C) GArrowRoundOptions* function() nothrow;
__gshared c_garrow_round_options_newFn c_garrow_round_options_new; ///

// RoundTemporalOptions
private alias c_garrow_round_temporal_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_round_temporal_options_get_typeFn c_garrow_round_temporal_options_get_type; ///
private alias c_garrow_round_temporal_options_newFn = extern(C) GArrowRoundTemporalOptions* function() nothrow;
__gshared c_garrow_round_temporal_options_newFn c_garrow_round_temporal_options_new; ///

// RoundToMultipleOptions
private alias c_garrow_round_to_multiple_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_round_to_multiple_options_get_typeFn c_garrow_round_to_multiple_options_get_type; ///
private alias c_garrow_round_to_multiple_options_newFn = extern(C) GArrowRoundToMultipleOptions* function() nothrow;
__gshared c_garrow_round_to_multiple_options_newFn c_garrow_round_to_multiple_options_new; ///

// RunEndEncodeOptions
private alias c_garrow_run_end_encode_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_run_end_encode_options_get_typeFn c_garrow_run_end_encode_options_get_type; ///
private alias c_garrow_run_end_encode_options_newFn = extern(C) GArrowRunEndEncodeOptions* function(GArrowDataType* runEndDataType) nothrow;
__gshared c_garrow_run_end_encode_options_newFn c_garrow_run_end_encode_options_new; ///

// RunEndEncodedArray
private alias c_garrow_run_end_encoded_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_run_end_encoded_array_get_typeFn c_garrow_run_end_encoded_array_get_type; ///
private alias c_garrow_run_end_encoded_array_newFn = extern(C) GArrowRunEndEncodedArray* function(GArrowDataType* dataType, long logicalLength, GArrowArray* runEnds, GArrowArray* values, long logicalOffset, GError** _err) nothrow;
__gshared c_garrow_run_end_encoded_array_newFn c_garrow_run_end_encoded_array_new; ///
private alias c_garrow_run_end_encoded_array_decodeFn = extern(C) GArrowArray* function(GArrowRunEndEncodedArray* array, GError** _err) nothrow;
__gshared c_garrow_run_end_encoded_array_decodeFn c_garrow_run_end_encoded_array_decode; ///
private alias c_garrow_run_end_encoded_array_find_physical_lengthFn = extern(C) long function(GArrowRunEndEncodedArray* array) nothrow;
__gshared c_garrow_run_end_encoded_array_find_physical_lengthFn c_garrow_run_end_encoded_array_find_physical_length; ///
private alias c_garrow_run_end_encoded_array_find_physical_offsetFn = extern(C) long function(GArrowRunEndEncodedArray* array) nothrow;
__gshared c_garrow_run_end_encoded_array_find_physical_offsetFn c_garrow_run_end_encoded_array_find_physical_offset; ///
private alias c_garrow_run_end_encoded_array_get_logical_run_endsFn = extern(C) GArrowArray* function(GArrowRunEndEncodedArray* array, GError** _err) nothrow;
__gshared c_garrow_run_end_encoded_array_get_logical_run_endsFn c_garrow_run_end_encoded_array_get_logical_run_ends; ///
private alias c_garrow_run_end_encoded_array_get_logical_valuesFn = extern(C) GArrowArray* function(GArrowRunEndEncodedArray* array) nothrow;
__gshared c_garrow_run_end_encoded_array_get_logical_valuesFn c_garrow_run_end_encoded_array_get_logical_values; ///
private alias c_garrow_run_end_encoded_array_get_run_endsFn = extern(C) GArrowArray* function(GArrowRunEndEncodedArray* array) nothrow;
__gshared c_garrow_run_end_encoded_array_get_run_endsFn c_garrow_run_end_encoded_array_get_run_ends; ///
private alias c_garrow_run_end_encoded_array_get_valuesFn = extern(C) GArrowArray* function(GArrowRunEndEncodedArray* array) nothrow;
__gshared c_garrow_run_end_encoded_array_get_valuesFn c_garrow_run_end_encoded_array_get_values; ///

// RunEndEncodedDataType
private alias c_garrow_run_end_encoded_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_run_end_encoded_data_type_get_typeFn c_garrow_run_end_encoded_data_type_get_type; ///
private alias c_garrow_run_end_encoded_data_type_newFn = extern(C) GArrowRunEndEncodedDataType* function(GArrowDataType* runEndDataType, GArrowDataType* valueDataType) nothrow;
__gshared c_garrow_run_end_encoded_data_type_newFn c_garrow_run_end_encoded_data_type_new; ///
private alias c_garrow_run_end_encoded_data_type_get_run_end_data_typeFn = extern(C) GArrowDataType* function(GArrowRunEndEncodedDataType* dataType) nothrow;
__gshared c_garrow_run_end_encoded_data_type_get_run_end_data_typeFn c_garrow_run_end_encoded_data_type_get_run_end_data_type; ///
private alias c_garrow_run_end_encoded_data_type_get_value_data_typeFn = extern(C) GArrowDataType* function(GArrowRunEndEncodedDataType* dataType) nothrow;
__gshared c_garrow_run_end_encoded_data_type_get_value_data_typeFn c_garrow_run_end_encoded_data_type_get_value_data_type; ///

// S3FileSystem
private alias c_garrow_s3_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_s3_file_system_get_typeFn c_garrow_s3_file_system_get_type; ///

// S3GlobalOptions
private alias c_garrow_s3_global_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_s3_global_options_get_typeFn c_garrow_s3_global_options_get_type; ///
private alias c_garrow_s3_global_options_newFn = extern(C) GArrowS3GlobalOptions* function() nothrow;
__gshared c_garrow_s3_global_options_newFn c_garrow_s3_global_options_new; ///

// Scalar
private alias c_garrow_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_scalar_get_typeFn c_garrow_scalar_get_type; ///
private alias c_garrow_scalar_parseFn = extern(C) GArrowScalar* function(GArrowDataType* dataType, const(ubyte)* data, size_t size, GError** _err) nothrow;
__gshared c_garrow_scalar_parseFn c_garrow_scalar_parse; ///
private alias c_garrow_scalar_castFn = extern(C) GArrowScalar* function(GArrowScalar* scalar, GArrowDataType* dataType, GArrowCastOptions* options, GError** _err) nothrow;
__gshared c_garrow_scalar_castFn c_garrow_scalar_cast; ///
private alias c_garrow_scalar_equalFn = extern(C) gboolean function(GArrowScalar* scalar, GArrowScalar* otherScalar) nothrow;
__gshared c_garrow_scalar_equalFn c_garrow_scalar_equal; ///
private alias c_garrow_scalar_equal_optionsFn = extern(C) gboolean function(GArrowScalar* scalar, GArrowScalar* otherScalar, GArrowEqualOptions* options) nothrow;
__gshared c_garrow_scalar_equal_optionsFn c_garrow_scalar_equal_options; ///
private alias c_garrow_scalar_get_data_typeFn = extern(C) GArrowDataType* function(GArrowScalar* scalar) nothrow;
__gshared c_garrow_scalar_get_data_typeFn c_garrow_scalar_get_data_type; ///
private alias c_garrow_scalar_is_validFn = extern(C) gboolean function(GArrowScalar* scalar) nothrow;
__gshared c_garrow_scalar_is_validFn c_garrow_scalar_is_valid; ///
private alias c_garrow_scalar_to_stringFn = extern(C) char* function(GArrowScalar* scalar) nothrow;
__gshared c_garrow_scalar_to_stringFn c_garrow_scalar_to_string; ///

// ScalarAggregateOptions
private alias c_garrow_scalar_aggregate_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_scalar_aggregate_options_get_typeFn c_garrow_scalar_aggregate_options_get_type; ///
private alias c_garrow_scalar_aggregate_options_newFn = extern(C) GArrowScalarAggregateOptions* function() nothrow;
__gshared c_garrow_scalar_aggregate_options_newFn c_garrow_scalar_aggregate_options_new; ///

// ScalarDatum
private alias c_garrow_scalar_datum_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_scalar_datum_get_typeFn c_garrow_scalar_datum_get_type; ///
private alias c_garrow_scalar_datum_newFn = extern(C) GArrowScalarDatum* function(GArrowScalar* value) nothrow;
__gshared c_garrow_scalar_datum_newFn c_garrow_scalar_datum_new; ///

// Schema
private alias c_garrow_schema_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_schema_get_typeFn c_garrow_schema_get_type; ///
private alias c_garrow_schema_newFn = extern(C) GArrowSchema* function(GList* fields) nothrow;
__gshared c_garrow_schema_newFn c_garrow_schema_new; ///
private alias c_garrow_schema_importFn = extern(C) GArrowSchema* function(void* cAbiSchema, GError** _err) nothrow;
__gshared c_garrow_schema_importFn c_garrow_schema_import; ///
private alias c_garrow_schema_add_fieldFn = extern(C) GArrowSchema* function(GArrowSchema* schema, uint i, GArrowField* field, GError** _err) nothrow;
__gshared c_garrow_schema_add_fieldFn c_garrow_schema_add_field; ///
private alias c_garrow_schema_equalFn = extern(C) gboolean function(GArrowSchema* schema, GArrowSchema* otherSchema) nothrow;
__gshared c_garrow_schema_equalFn c_garrow_schema_equal; ///
private alias c_garrow_schema_exportFn = extern(C) void* function(GArrowSchema* schema, GError** _err) nothrow;
__gshared c_garrow_schema_exportFn c_garrow_schema_export; ///
private alias c_garrow_schema_get_fieldFn = extern(C) GArrowField* function(GArrowSchema* schema, uint i) nothrow;
__gshared c_garrow_schema_get_fieldFn c_garrow_schema_get_field; ///
private alias c_garrow_schema_get_field_by_nameFn = extern(C) GArrowField* function(GArrowSchema* schema, const(char)* name) nothrow;
__gshared c_garrow_schema_get_field_by_nameFn c_garrow_schema_get_field_by_name; ///
private alias c_garrow_schema_get_field_indexFn = extern(C) int function(GArrowSchema* schema, const(char)* name) nothrow;
__gshared c_garrow_schema_get_field_indexFn c_garrow_schema_get_field_index; ///
private alias c_garrow_schema_get_fieldsFn = extern(C) GList* function(GArrowSchema* schema) nothrow;
__gshared c_garrow_schema_get_fieldsFn c_garrow_schema_get_fields; ///
private alias c_garrow_schema_get_metadataFn = extern(C) GHashTable* function(GArrowSchema* schema) nothrow;
__gshared c_garrow_schema_get_metadataFn c_garrow_schema_get_metadata; ///
private alias c_garrow_schema_has_metadataFn = extern(C) gboolean function(GArrowSchema* schema) nothrow;
__gshared c_garrow_schema_has_metadataFn c_garrow_schema_has_metadata; ///
private alias c_garrow_schema_n_fieldsFn = extern(C) uint function(GArrowSchema* schema) nothrow;
__gshared c_garrow_schema_n_fieldsFn c_garrow_schema_n_fields; ///
private alias c_garrow_schema_remove_fieldFn = extern(C) GArrowSchema* function(GArrowSchema* schema, uint i, GError** _err) nothrow;
__gshared c_garrow_schema_remove_fieldFn c_garrow_schema_remove_field; ///
private alias c_garrow_schema_replace_fieldFn = extern(C) GArrowSchema* function(GArrowSchema* schema, uint i, GArrowField* field, GError** _err) nothrow;
__gshared c_garrow_schema_replace_fieldFn c_garrow_schema_replace_field; ///
private alias c_garrow_schema_to_stringFn = extern(C) char* function(GArrowSchema* schema) nothrow;
__gshared c_garrow_schema_to_stringFn c_garrow_schema_to_string; ///
private alias c_garrow_schema_to_string_metadataFn = extern(C) char* function(GArrowSchema* schema, gboolean showMetadata) nothrow;
__gshared c_garrow_schema_to_string_metadataFn c_garrow_schema_to_string_metadata; ///
private alias c_garrow_schema_with_metadataFn = extern(C) GArrowSchema* function(GArrowSchema* schema, GHashTable* metadata) nothrow;
__gshared c_garrow_schema_with_metadataFn c_garrow_schema_with_metadata; ///

// SeekableInputStream
private alias c_garrow_seekable_input_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_seekable_input_stream_get_typeFn c_garrow_seekable_input_stream_get_type; ///
private alias c_garrow_seekable_input_stream_get_sizeFn = extern(C) ulong function(GArrowSeekableInputStream* inputStream, GError** _err) nothrow;
__gshared c_garrow_seekable_input_stream_get_sizeFn c_garrow_seekable_input_stream_get_size; ///
private alias c_garrow_seekable_input_stream_get_support_zero_copyFn = extern(C) gboolean function(GArrowSeekableInputStream* inputStream) nothrow;
__gshared c_garrow_seekable_input_stream_get_support_zero_copyFn c_garrow_seekable_input_stream_get_support_zero_copy; ///
private alias c_garrow_seekable_input_stream_peekFn = extern(C) GBytes* function(GArrowSeekableInputStream* inputStream, long nBytes, GError** _err) nothrow;
__gshared c_garrow_seekable_input_stream_peekFn c_garrow_seekable_input_stream_peek; ///
private alias c_garrow_seekable_input_stream_read_atFn = extern(C) GArrowBuffer* function(GArrowSeekableInputStream* inputStream, long position, long nBytes, GError** _err) nothrow;
__gshared c_garrow_seekable_input_stream_read_atFn c_garrow_seekable_input_stream_read_at; ///
private alias c_garrow_seekable_input_stream_read_at_bytesFn = extern(C) GBytes* function(GArrowSeekableInputStream* inputStream, long position, long nBytes, GError** _err) nothrow;
__gshared c_garrow_seekable_input_stream_read_at_bytesFn c_garrow_seekable_input_stream_read_at_bytes; ///

// SelectKOptions
private alias c_garrow_select_k_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_select_k_options_get_typeFn c_garrow_select_k_options_get_type; ///
private alias c_garrow_select_k_options_newFn = extern(C) GArrowSelectKOptions* function() nothrow;
__gshared c_garrow_select_k_options_newFn c_garrow_select_k_options_new; ///
private alias c_garrow_select_k_options_add_sort_keyFn = extern(C) void function(GArrowSelectKOptions* options, GArrowSortKey* sortKey) nothrow;
__gshared c_garrow_select_k_options_add_sort_keyFn c_garrow_select_k_options_add_sort_key; ///
private alias c_garrow_select_k_options_get_sort_keysFn = extern(C) GList* function(GArrowSelectKOptions* options) nothrow;
__gshared c_garrow_select_k_options_get_sort_keysFn c_garrow_select_k_options_get_sort_keys; ///
private alias c_garrow_select_k_options_set_sort_keysFn = extern(C) void function(GArrowSelectKOptions* options, GList* sortKeys) nothrow;
__gshared c_garrow_select_k_options_set_sort_keysFn c_garrow_select_k_options_set_sort_keys; ///

// SetLookupOptions
private alias c_garrow_set_lookup_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_set_lookup_options_get_typeFn c_garrow_set_lookup_options_get_type; ///
private alias c_garrow_set_lookup_options_newFn = extern(C) GArrowSetLookupOptions* function(GArrowDatum* valueSet) nothrow;
__gshared c_garrow_set_lookup_options_newFn c_garrow_set_lookup_options_new; ///

// SinkNodeOptions
private alias c_garrow_sink_node_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sink_node_options_get_typeFn c_garrow_sink_node_options_get_type; ///
private alias c_garrow_sink_node_options_newFn = extern(C) GArrowSinkNodeOptions* function() nothrow;
__gshared c_garrow_sink_node_options_newFn c_garrow_sink_node_options_new; ///
private alias c_garrow_sink_node_options_get_readerFn = extern(C) GArrowRecordBatchReader* function(GArrowSinkNodeOptions* options, GArrowSchema* schema) nothrow;
__gshared c_garrow_sink_node_options_get_readerFn c_garrow_sink_node_options_get_reader; ///

// SkewOptions
private alias c_garrow_skew_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_skew_options_get_typeFn c_garrow_skew_options_get_type; ///
private alias c_garrow_skew_options_newFn = extern(C) GArrowSkewOptions* function() nothrow;
__gshared c_garrow_skew_options_newFn c_garrow_skew_options_new; ///

// SliceOptions
private alias c_garrow_slice_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_slice_options_get_typeFn c_garrow_slice_options_get_type; ///
private alias c_garrow_slice_options_newFn = extern(C) GArrowSliceOptions* function() nothrow;
__gshared c_garrow_slice_options_newFn c_garrow_slice_options_new; ///

// SlowFileSystem
private alias c_garrow_slow_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_slow_file_system_get_typeFn c_garrow_slow_file_system_get_type; ///
private alias c_garrow_slow_file_system_new_average_latencyFn = extern(C) GArrowSlowFileSystem* function(GArrowFileSystem* baseFileSystem, double averageLatency) nothrow;
__gshared c_garrow_slow_file_system_new_average_latencyFn c_garrow_slow_file_system_new_average_latency; ///
private alias c_garrow_slow_file_system_new_average_latency_and_seedFn = extern(C) GArrowSlowFileSystem* function(GArrowFileSystem* baseFileSystem, double averageLatency, int seed) nothrow;
__gshared c_garrow_slow_file_system_new_average_latency_and_seedFn c_garrow_slow_file_system_new_average_latency_and_seed; ///

// SortKey
private alias c_garrow_sort_key_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sort_key_get_typeFn c_garrow_sort_key_get_type; ///
private alias c_garrow_sort_key_newFn = extern(C) GArrowSortKey* function(const(char)* target, GArrowSortOrder order, GError** _err) nothrow;
__gshared c_garrow_sort_key_newFn c_garrow_sort_key_new; ///
private alias c_garrow_sort_key_equalFn = extern(C) gboolean function(GArrowSortKey* sortKey, GArrowSortKey* otherSortKey) nothrow;
__gshared c_garrow_sort_key_equalFn c_garrow_sort_key_equal; ///

// SortOptions
private alias c_garrow_sort_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sort_options_get_typeFn c_garrow_sort_options_get_type; ///
private alias c_garrow_sort_options_newFn = extern(C) GArrowSortOptions* function(GList* sortKeys) nothrow;
__gshared c_garrow_sort_options_newFn c_garrow_sort_options_new; ///
private alias c_garrow_sort_options_add_sort_keyFn = extern(C) void function(GArrowSortOptions* options, GArrowSortKey* sortKey) nothrow;
__gshared c_garrow_sort_options_add_sort_keyFn c_garrow_sort_options_add_sort_key; ///
private alias c_garrow_sort_options_equalFn = extern(C) gboolean function(GArrowSortOptions* options, GArrowSortOptions* otherOptions) nothrow;
__gshared c_garrow_sort_options_equalFn c_garrow_sort_options_equal; ///
private alias c_garrow_sort_options_get_sort_keysFn = extern(C) GList* function(GArrowSortOptions* options) nothrow;
__gshared c_garrow_sort_options_get_sort_keysFn c_garrow_sort_options_get_sort_keys; ///
private alias c_garrow_sort_options_set_sort_keysFn = extern(C) void function(GArrowSortOptions* options, GList* sortKeys) nothrow;
__gshared c_garrow_sort_options_set_sort_keysFn c_garrow_sort_options_set_sort_keys; ///

// SourceNodeOptions
private alias c_garrow_source_node_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_source_node_options_get_typeFn c_garrow_source_node_options_get_type; ///
private alias c_garrow_source_node_options_new_record_batchFn = extern(C) GArrowSourceNodeOptions* function(GArrowRecordBatch* recordBatch) nothrow;
__gshared c_garrow_source_node_options_new_record_batchFn c_garrow_source_node_options_new_record_batch; ///
private alias c_garrow_source_node_options_new_record_batch_readerFn = extern(C) GArrowSourceNodeOptions* function(GArrowRecordBatchReader* reader) nothrow;
__gshared c_garrow_source_node_options_new_record_batch_readerFn c_garrow_source_node_options_new_record_batch_reader; ///
private alias c_garrow_source_node_options_new_tableFn = extern(C) GArrowSourceNodeOptions* function(GArrowTable* table) nothrow;
__gshared c_garrow_source_node_options_new_tableFn c_garrow_source_node_options_new_table; ///

// SparseUnionArray
private alias c_garrow_sparse_union_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sparse_union_array_get_typeFn c_garrow_sparse_union_array_get_type; ///
private alias c_garrow_sparse_union_array_newFn = extern(C) GArrowSparseUnionArray* function(GArrowInt8Array* typeIds, GList* fields, GError** _err) nothrow;
__gshared c_garrow_sparse_union_array_newFn c_garrow_sparse_union_array_new; ///
private alias c_garrow_sparse_union_array_new_data_typeFn = extern(C) GArrowSparseUnionArray* function(GArrowSparseUnionDataType* dataType, GArrowInt8Array* typeIds, GList* fields, GError** _err) nothrow;
__gshared c_garrow_sparse_union_array_new_data_typeFn c_garrow_sparse_union_array_new_data_type; ///

// SparseUnionArrayBuilder
private alias c_garrow_sparse_union_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sparse_union_array_builder_get_typeFn c_garrow_sparse_union_array_builder_get_type; ///
private alias c_garrow_sparse_union_array_builder_newFn = extern(C) GArrowSparseUnionArrayBuilder* function(GArrowSparseUnionDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_sparse_union_array_builder_newFn c_garrow_sparse_union_array_builder_new; ///

// SparseUnionDataType
private alias c_garrow_sparse_union_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sparse_union_data_type_get_typeFn c_garrow_sparse_union_data_type_get_type; ///
private alias c_garrow_sparse_union_data_type_newFn = extern(C) GArrowSparseUnionDataType* function(GList* fields, byte* typeCodes, size_t nTypeCodes) nothrow;
__gshared c_garrow_sparse_union_data_type_newFn c_garrow_sparse_union_data_type_new; ///

// SparseUnionScalar
private alias c_garrow_sparse_union_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sparse_union_scalar_get_typeFn c_garrow_sparse_union_scalar_get_type; ///
private alias c_garrow_sparse_union_scalar_newFn = extern(C) GArrowSparseUnionScalar* function(GArrowSparseUnionDataType* dataType, byte typeCode, GArrowScalar* value) nothrow;
__gshared c_garrow_sparse_union_scalar_newFn c_garrow_sparse_union_scalar_new; ///

// SplitOptions
private alias c_garrow_split_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_split_options_get_typeFn c_garrow_split_options_get_type; ///
private alias c_garrow_split_options_newFn = extern(C) GArrowSplitOptions* function() nothrow;
__gshared c_garrow_split_options_newFn c_garrow_split_options_new; ///

// SplitPatternOptions
private alias c_garrow_split_pattern_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_split_pattern_options_get_typeFn c_garrow_split_pattern_options_get_type; ///
private alias c_garrow_split_pattern_options_newFn = extern(C) GArrowSplitPatternOptions* function() nothrow;
__gshared c_garrow_split_pattern_options_newFn c_garrow_split_pattern_options_new; ///

// StreamDecoder
private alias c_garrow_stream_decoder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_stream_decoder_get_typeFn c_garrow_stream_decoder_get_type; ///
private alias c_garrow_stream_decoder_newFn = extern(C) GArrowStreamDecoder* function(GArrowStreamListener* listener, GArrowReadOptions* options) nothrow;
__gshared c_garrow_stream_decoder_newFn c_garrow_stream_decoder_new; ///
private alias c_garrow_stream_decoder_consume_bufferFn = extern(C) gboolean function(GArrowStreamDecoder* decoder, GArrowBuffer* buffer, GError** _err) nothrow;
__gshared c_garrow_stream_decoder_consume_bufferFn c_garrow_stream_decoder_consume_buffer; ///
private alias c_garrow_stream_decoder_consume_bytesFn = extern(C) gboolean function(GArrowStreamDecoder* decoder, GBytes* bytes, GError** _err) nothrow;
__gshared c_garrow_stream_decoder_consume_bytesFn c_garrow_stream_decoder_consume_bytes; ///
private alias c_garrow_stream_decoder_get_next_required_sizeFn = extern(C) size_t function(GArrowStreamDecoder* decoder) nothrow;
__gshared c_garrow_stream_decoder_get_next_required_sizeFn c_garrow_stream_decoder_get_next_required_size; ///
private alias c_garrow_stream_decoder_get_schemaFn = extern(C) GArrowSchema* function(GArrowStreamDecoder* decoder) nothrow;
__gshared c_garrow_stream_decoder_get_schemaFn c_garrow_stream_decoder_get_schema; ///
private alias c_garrow_stream_decoder_resetFn = extern(C) gboolean function(GArrowStreamDecoder* decoder, GError** _err) nothrow;
__gshared c_garrow_stream_decoder_resetFn c_garrow_stream_decoder_reset; ///

// StreamListener
private alias c_garrow_stream_listener_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_stream_listener_get_typeFn c_garrow_stream_listener_get_type; ///
private alias c_garrow_stream_listener_on_eosFn = extern(C) gboolean function(GArrowStreamListener* listener, GError** _err) nothrow;
__gshared c_garrow_stream_listener_on_eosFn c_garrow_stream_listener_on_eos; ///
private alias c_garrow_stream_listener_on_record_batch_decodedFn = extern(C) gboolean function(GArrowStreamListener* listener, GArrowRecordBatch* recordBatch, GHashTable* metadata, GError** _err) nothrow;
__gshared c_garrow_stream_listener_on_record_batch_decodedFn c_garrow_stream_listener_on_record_batch_decoded; ///
private alias c_garrow_stream_listener_on_schema_decodedFn = extern(C) gboolean function(GArrowStreamListener* listener, GArrowSchema* schema, GArrowSchema* filteredSchema, GError** _err) nothrow;
__gshared c_garrow_stream_listener_on_schema_decodedFn c_garrow_stream_listener_on_schema_decoded; ///

// StrftimeOptions
private alias c_garrow_strftime_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_strftime_options_get_typeFn c_garrow_strftime_options_get_type; ///
private alias c_garrow_strftime_options_newFn = extern(C) GArrowStrftimeOptions* function() nothrow;
__gshared c_garrow_strftime_options_newFn c_garrow_strftime_options_new; ///

// StringArray
private alias c_garrow_string_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_string_array_get_typeFn c_garrow_string_array_get_type; ///
private alias c_garrow_string_array_newFn = extern(C) GArrowStringArray* function(long length, GArrowBuffer* valueOffsets, GArrowBuffer* valueData, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_string_array_newFn c_garrow_string_array_new; ///
private alias c_garrow_string_array_get_stringFn = extern(C) char* function(GArrowStringArray* array, long i) nothrow;
__gshared c_garrow_string_array_get_stringFn c_garrow_string_array_get_string; ///

// StringArrayBuilder
private alias c_garrow_string_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_string_array_builder_get_typeFn c_garrow_string_array_builder_get_type; ///
private alias c_garrow_string_array_builder_newFn = extern(C) GArrowStringArrayBuilder* function() nothrow;
__gshared c_garrow_string_array_builder_newFn c_garrow_string_array_builder_new; ///
private alias c_garrow_string_array_builder_appendFn = extern(C) gboolean function(GArrowStringArrayBuilder* builder, const(char)* value, GError** _err) nothrow;
__gshared c_garrow_string_array_builder_appendFn c_garrow_string_array_builder_append; ///
private alias c_garrow_string_array_builder_append_stringFn = extern(C) gboolean function(GArrowStringArrayBuilder* builder, const(char)* value, GError** _err) nothrow;
__gshared c_garrow_string_array_builder_append_stringFn c_garrow_string_array_builder_append_string; ///
private alias c_garrow_string_array_builder_append_string_lenFn = extern(C) gboolean function(GArrowStringArrayBuilder* builder, const(char)* value, int length, GError** _err) nothrow;
__gshared c_garrow_string_array_builder_append_string_lenFn c_garrow_string_array_builder_append_string_len; ///
private alias c_garrow_string_array_builder_append_stringsFn = extern(C) gboolean function(GArrowStringArrayBuilder* builder, const(char*)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_string_array_builder_append_stringsFn c_garrow_string_array_builder_append_strings; ///
private alias c_garrow_string_array_builder_append_valueFn = extern(C) gboolean function(GArrowStringArrayBuilder* builder, const(char)* value, GError** _err) nothrow;
__gshared c_garrow_string_array_builder_append_valueFn c_garrow_string_array_builder_append_value; ///
private alias c_garrow_string_array_builder_append_valuesFn = extern(C) gboolean function(GArrowStringArrayBuilder* builder, const(char*)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_string_array_builder_append_valuesFn c_garrow_string_array_builder_append_values; ///

// StringDataType
private alias c_garrow_string_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_string_data_type_get_typeFn c_garrow_string_data_type_get_type; ///
private alias c_garrow_string_data_type_newFn = extern(C) GArrowStringDataType* function() nothrow;
__gshared c_garrow_string_data_type_newFn c_garrow_string_data_type_new; ///

// StringDictionaryArrayBuilder
private alias c_garrow_string_dictionary_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_string_dictionary_array_builder_get_typeFn c_garrow_string_dictionary_array_builder_get_type; ///
private alias c_garrow_string_dictionary_array_builder_newFn = extern(C) GArrowStringDictionaryArrayBuilder* function() nothrow;
__gshared c_garrow_string_dictionary_array_builder_newFn c_garrow_string_dictionary_array_builder_new; ///
private alias c_garrow_string_dictionary_array_builder_append_arrayFn = extern(C) gboolean function(GArrowStringDictionaryArrayBuilder* builder, GArrowStringArray* array, GError** _err) nothrow;
__gshared c_garrow_string_dictionary_array_builder_append_arrayFn c_garrow_string_dictionary_array_builder_append_array; ///
private alias c_garrow_string_dictionary_array_builder_append_indicesFn = extern(C) gboolean function(GArrowStringDictionaryArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_string_dictionary_array_builder_append_indicesFn c_garrow_string_dictionary_array_builder_append_indices; ///
private alias c_garrow_string_dictionary_array_builder_append_nullFn = extern(C) gboolean function(GArrowStringDictionaryArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_string_dictionary_array_builder_append_nullFn c_garrow_string_dictionary_array_builder_append_null; ///
private alias c_garrow_string_dictionary_array_builder_append_stringFn = extern(C) gboolean function(GArrowStringDictionaryArrayBuilder* builder, const(char)* value, GError** _err) nothrow;
__gshared c_garrow_string_dictionary_array_builder_append_stringFn c_garrow_string_dictionary_array_builder_append_string; ///
private alias c_garrow_string_dictionary_array_builder_finish_deltaFn = extern(C) gboolean function(GArrowStringDictionaryArrayBuilder* builder, GArrowArray** outIndices, GArrowArray** outDelta, GError** _err) nothrow;
__gshared c_garrow_string_dictionary_array_builder_finish_deltaFn c_garrow_string_dictionary_array_builder_finish_delta; ///
private alias c_garrow_string_dictionary_array_builder_get_dictionary_lengthFn = extern(C) long function(GArrowStringDictionaryArrayBuilder* builder) nothrow;
__gshared c_garrow_string_dictionary_array_builder_get_dictionary_lengthFn c_garrow_string_dictionary_array_builder_get_dictionary_length; ///
private alias c_garrow_string_dictionary_array_builder_insert_memo_valuesFn = extern(C) gboolean function(GArrowStringDictionaryArrayBuilder* builder, GArrowStringArray* values, GError** _err) nothrow;
__gshared c_garrow_string_dictionary_array_builder_insert_memo_valuesFn c_garrow_string_dictionary_array_builder_insert_memo_values; ///
private alias c_garrow_string_dictionary_array_builder_reset_fullFn = extern(C) void function(GArrowStringDictionaryArrayBuilder* builder) nothrow;
__gshared c_garrow_string_dictionary_array_builder_reset_fullFn c_garrow_string_dictionary_array_builder_reset_full; ///

// StringScalar
private alias c_garrow_string_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_string_scalar_get_typeFn c_garrow_string_scalar_get_type; ///
private alias c_garrow_string_scalar_newFn = extern(C) GArrowStringScalar* function(GArrowBuffer* value) nothrow;
__gshared c_garrow_string_scalar_newFn c_garrow_string_scalar_new; ///

// StringViewArray
private alias c_garrow_string_view_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_string_view_array_get_typeFn c_garrow_string_view_array_get_type; ///
private alias c_garrow_string_view_array_newFn = extern(C) GArrowStringViewArray* function(long length, GArrowBuffer* views, GList* dataBuffers, GArrowBuffer* nullBitmap, long nNulls, long offset) nothrow;
__gshared c_garrow_string_view_array_newFn c_garrow_string_view_array_new; ///
private alias c_garrow_string_view_array_get_valueFn = extern(C) GBytes* function(GArrowStringViewArray* array, long i) nothrow;
__gshared c_garrow_string_view_array_get_valueFn c_garrow_string_view_array_get_value; ///

// StringViewDataType
private alias c_garrow_string_view_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_string_view_data_type_get_typeFn c_garrow_string_view_data_type_get_type; ///
private alias c_garrow_string_view_data_type_newFn = extern(C) GArrowStringViewDataType* function() nothrow;
__gshared c_garrow_string_view_data_type_newFn c_garrow_string_view_data_type_new; ///

// StrptimeOptions
private alias c_garrow_strptime_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_strptime_options_get_typeFn c_garrow_strptime_options_get_type; ///
private alias c_garrow_strptime_options_newFn = extern(C) GArrowStrptimeOptions* function() nothrow;
__gshared c_garrow_strptime_options_newFn c_garrow_strptime_options_new; ///

// StrptimeTimestampParser
private alias c_garrow_strptime_timestamp_parser_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_strptime_timestamp_parser_get_typeFn c_garrow_strptime_timestamp_parser_get_type; ///
private alias c_garrow_strptime_timestamp_parser_newFn = extern(C) GArrowStrptimeTimestampParser* function(const(char)* format) nothrow;
__gshared c_garrow_strptime_timestamp_parser_newFn c_garrow_strptime_timestamp_parser_new; ///
private alias c_garrow_strptime_timestamp_parser_get_formatFn = extern(C) const(char)* function(GArrowStrptimeTimestampParser* parser) nothrow;
__gshared c_garrow_strptime_timestamp_parser_get_formatFn c_garrow_strptime_timestamp_parser_get_format; ///

// StructArray
private alias c_garrow_struct_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_struct_array_get_typeFn c_garrow_struct_array_get_type; ///
private alias c_garrow_struct_array_newFn = extern(C) GArrowStructArray* function(GArrowDataType* dataType, long length, GList* fields, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_struct_array_newFn c_garrow_struct_array_new; ///
private alias c_garrow_struct_array_flattenFn = extern(C) GList* function(GArrowStructArray* array, GError** _err) nothrow;
__gshared c_garrow_struct_array_flattenFn c_garrow_struct_array_flatten; ///
private alias c_garrow_struct_array_get_fieldFn = extern(C) GArrowArray* function(GArrowStructArray* array, int i) nothrow;
__gshared c_garrow_struct_array_get_fieldFn c_garrow_struct_array_get_field; ///
private alias c_garrow_struct_array_get_fieldsFn = extern(C) GList* function(GArrowStructArray* array) nothrow;
__gshared c_garrow_struct_array_get_fieldsFn c_garrow_struct_array_get_fields; ///

// StructArrayBuilder
private alias c_garrow_struct_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_struct_array_builder_get_typeFn c_garrow_struct_array_builder_get_type; ///
private alias c_garrow_struct_array_builder_newFn = extern(C) GArrowStructArrayBuilder* function(GArrowStructDataType* dataType, GError** _err) nothrow;
__gshared c_garrow_struct_array_builder_newFn c_garrow_struct_array_builder_new; ///
private alias c_garrow_struct_array_builder_appendFn = extern(C) gboolean function(GArrowStructArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_struct_array_builder_appendFn c_garrow_struct_array_builder_append; ///
private alias c_garrow_struct_array_builder_append_nullFn = extern(C) gboolean function(GArrowStructArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_struct_array_builder_append_nullFn c_garrow_struct_array_builder_append_null; ///
private alias c_garrow_struct_array_builder_append_valueFn = extern(C) gboolean function(GArrowStructArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_struct_array_builder_append_valueFn c_garrow_struct_array_builder_append_value; ///
private alias c_garrow_struct_array_builder_get_field_builderFn = extern(C) GArrowArrayBuilder* function(GArrowStructArrayBuilder* builder, int i) nothrow;
__gshared c_garrow_struct_array_builder_get_field_builderFn c_garrow_struct_array_builder_get_field_builder; ///
private alias c_garrow_struct_array_builder_get_field_buildersFn = extern(C) GList* function(GArrowStructArrayBuilder* builder) nothrow;
__gshared c_garrow_struct_array_builder_get_field_buildersFn c_garrow_struct_array_builder_get_field_builders; ///

// StructDataType
private alias c_garrow_struct_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_struct_data_type_get_typeFn c_garrow_struct_data_type_get_type; ///
private alias c_garrow_struct_data_type_newFn = extern(C) GArrowStructDataType* function(GList* fields) nothrow;
__gshared c_garrow_struct_data_type_newFn c_garrow_struct_data_type_new; ///
private alias c_garrow_struct_data_type_get_fieldFn = extern(C) GArrowField* function(GArrowStructDataType* structDataType, int i) nothrow;
__gshared c_garrow_struct_data_type_get_fieldFn c_garrow_struct_data_type_get_field; ///
private alias c_garrow_struct_data_type_get_field_by_nameFn = extern(C) GArrowField* function(GArrowStructDataType* structDataType, const(char)* name) nothrow;
__gshared c_garrow_struct_data_type_get_field_by_nameFn c_garrow_struct_data_type_get_field_by_name; ///
private alias c_garrow_struct_data_type_get_field_indexFn = extern(C) int function(GArrowStructDataType* structDataType, const(char)* name) nothrow;
__gshared c_garrow_struct_data_type_get_field_indexFn c_garrow_struct_data_type_get_field_index; ///
private alias c_garrow_struct_data_type_get_fieldsFn = extern(C) GList* function(GArrowStructDataType* structDataType) nothrow;
__gshared c_garrow_struct_data_type_get_fieldsFn c_garrow_struct_data_type_get_fields; ///
private alias c_garrow_struct_data_type_get_n_fieldsFn = extern(C) int function(GArrowStructDataType* structDataType) nothrow;
__gshared c_garrow_struct_data_type_get_n_fieldsFn c_garrow_struct_data_type_get_n_fields; ///

// StructFieldOptions
private alias c_garrow_struct_field_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_struct_field_options_get_typeFn c_garrow_struct_field_options_get_type; ///
private alias c_garrow_struct_field_options_newFn = extern(C) GArrowStructFieldOptions* function() nothrow;
__gshared c_garrow_struct_field_options_newFn c_garrow_struct_field_options_new; ///
private alias c_garrow_struct_field_options_set_field_refFn = extern(C) void function(GArrowStructFieldOptions* options, const(char)* fieldRef, GError** _err) nothrow;
__gshared c_garrow_struct_field_options_set_field_refFn c_garrow_struct_field_options_set_field_ref; ///

// StructScalar
private alias c_garrow_struct_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_struct_scalar_get_typeFn c_garrow_struct_scalar_get_type; ///
private alias c_garrow_struct_scalar_newFn = extern(C) GArrowStructScalar* function(GArrowStructDataType* dataType, GList* value) nothrow;
__gshared c_garrow_struct_scalar_newFn c_garrow_struct_scalar_new; ///
private alias c_garrow_struct_scalar_get_valueFn = extern(C) GList* function(GArrowStructScalar* scalar) nothrow;
__gshared c_garrow_struct_scalar_get_valueFn c_garrow_struct_scalar_get_value; ///

// SubTreeFileSystem
private alias c_garrow_sub_tree_file_system_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_sub_tree_file_system_get_typeFn c_garrow_sub_tree_file_system_get_type; ///
private alias c_garrow_sub_tree_file_system_newFn = extern(C) GArrowSubTreeFileSystem* function(const(char)* basePath, GArrowFileSystem* baseFileSystem) nothrow;
__gshared c_garrow_sub_tree_file_system_newFn c_garrow_sub_tree_file_system_new; ///

// TDigestOptions
private alias c_garrow_tdigest_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_tdigest_options_get_typeFn c_garrow_tdigest_options_get_type; ///
private alias c_garrow_tdigest_options_newFn = extern(C) GArrowTDigestOptions* function() nothrow;
__gshared c_garrow_tdigest_options_newFn c_garrow_tdigest_options_new; ///
private alias c_garrow_tdigest_options_get_qsFn = extern(C) const(double)* function(GArrowTDigestOptions* options, size_t* n) nothrow;
__gshared c_garrow_tdigest_options_get_qsFn c_garrow_tdigest_options_get_qs; ///
private alias c_garrow_tdigest_options_set_qFn = extern(C) void function(GArrowTDigestOptions* options, double q) nothrow;
__gshared c_garrow_tdigest_options_set_qFn c_garrow_tdigest_options_set_q; ///
private alias c_garrow_tdigest_options_set_qsFn = extern(C) void function(GArrowTDigestOptions* options, const(double)* qs, size_t n) nothrow;
__gshared c_garrow_tdigest_options_set_qsFn c_garrow_tdigest_options_set_qs; ///

// Table
private alias c_garrow_table_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_table_get_typeFn c_garrow_table_get_type; ///
private alias c_garrow_table_new_arraysFn = extern(C) GArrowTable* function(GArrowSchema* schema, GArrowArray** arrays, size_t nArrays, GError** _err) nothrow;
__gshared c_garrow_table_new_arraysFn c_garrow_table_new_arrays; ///
private alias c_garrow_table_new_chunked_arraysFn = extern(C) GArrowTable* function(GArrowSchema* schema, GArrowChunkedArray** chunkedArrays, size_t nChunkedArrays, GError** _err) nothrow;
__gshared c_garrow_table_new_chunked_arraysFn c_garrow_table_new_chunked_arrays; ///
private alias c_garrow_table_new_record_batchesFn = extern(C) GArrowTable* function(GArrowSchema* schema, GArrowRecordBatch** recordBatches, size_t nRecordBatches, GError** _err) nothrow;
__gshared c_garrow_table_new_record_batchesFn c_garrow_table_new_record_batches; ///
private alias c_garrow_table_new_valuesFn = extern(C) GArrowTable* function(GArrowSchema* schema, GList* values, GError** _err) nothrow;
__gshared c_garrow_table_new_valuesFn c_garrow_table_new_values; ///
private alias c_garrow_table_add_columnFn = extern(C) GArrowTable* function(GArrowTable* table, uint i, GArrowField* field, GArrowChunkedArray* chunkedArray, GError** _err) nothrow;
__gshared c_garrow_table_add_columnFn c_garrow_table_add_column; ///
private alias c_garrow_table_combine_chunksFn = extern(C) GArrowTable* function(GArrowTable* table, GError** _err) nothrow;
__gshared c_garrow_table_combine_chunksFn c_garrow_table_combine_chunks; ///
private alias c_garrow_table_concatenateFn = extern(C) GArrowTable* function(GArrowTable* table, GList* otherTables, GArrowTableConcatenateOptions* options, GError** _err) nothrow;
__gshared c_garrow_table_concatenateFn c_garrow_table_concatenate; ///
private alias c_garrow_table_equalFn = extern(C) gboolean function(GArrowTable* table, GArrowTable* otherTable) nothrow;
__gshared c_garrow_table_equalFn c_garrow_table_equal; ///
private alias c_garrow_table_equal_metadataFn = extern(C) gboolean function(GArrowTable* table, GArrowTable* otherTable, gboolean checkMetadata) nothrow;
__gshared c_garrow_table_equal_metadataFn c_garrow_table_equal_metadata; ///
private alias c_garrow_table_filterFn = extern(C) GArrowTable* function(GArrowTable* table, GArrowBooleanArray* filter, GArrowFilterOptions* options, GError** _err) nothrow;
__gshared c_garrow_table_filterFn c_garrow_table_filter; ///
private alias c_garrow_table_filter_chunked_arrayFn = extern(C) GArrowTable* function(GArrowTable* table, GArrowChunkedArray* filter, GArrowFilterOptions* options, GError** _err) nothrow;
__gshared c_garrow_table_filter_chunked_arrayFn c_garrow_table_filter_chunked_array; ///
private alias c_garrow_table_get_column_dataFn = extern(C) GArrowChunkedArray* function(GArrowTable* table, int i) nothrow;
__gshared c_garrow_table_get_column_dataFn c_garrow_table_get_column_data; ///
private alias c_garrow_table_get_n_columnsFn = extern(C) uint function(GArrowTable* table) nothrow;
__gshared c_garrow_table_get_n_columnsFn c_garrow_table_get_n_columns; ///
private alias c_garrow_table_get_n_rowsFn = extern(C) ulong function(GArrowTable* table) nothrow;
__gshared c_garrow_table_get_n_rowsFn c_garrow_table_get_n_rows; ///
private alias c_garrow_table_get_schemaFn = extern(C) GArrowSchema* function(GArrowTable* table) nothrow;
__gshared c_garrow_table_get_schemaFn c_garrow_table_get_schema; ///
private alias c_garrow_table_remove_columnFn = extern(C) GArrowTable* function(GArrowTable* table, uint i, GError** _err) nothrow;
__gshared c_garrow_table_remove_columnFn c_garrow_table_remove_column; ///
private alias c_garrow_table_replace_columnFn = extern(C) GArrowTable* function(GArrowTable* table, uint i, GArrowField* field, GArrowChunkedArray* chunkedArray, GError** _err) nothrow;
__gshared c_garrow_table_replace_columnFn c_garrow_table_replace_column; ///
private alias c_garrow_table_sliceFn = extern(C) GArrowTable* function(GArrowTable* table, long offset, long length) nothrow;
__gshared c_garrow_table_sliceFn c_garrow_table_slice; ///
private alias c_garrow_table_sort_indicesFn = extern(C) GArrowUInt64Array* function(GArrowTable* table, GArrowSortOptions* options, GError** _err) nothrow;
__gshared c_garrow_table_sort_indicesFn c_garrow_table_sort_indices; ///
private alias c_garrow_table_takeFn = extern(C) GArrowTable* function(GArrowTable* table, GArrowArray* indices, GArrowTakeOptions* options, GError** _err) nothrow;
__gshared c_garrow_table_takeFn c_garrow_table_take; ///
private alias c_garrow_table_take_chunked_arrayFn = extern(C) GArrowTable* function(GArrowTable* table, GArrowChunkedArray* indices, GArrowTakeOptions* options, GError** _err) nothrow;
__gshared c_garrow_table_take_chunked_arrayFn c_garrow_table_take_chunked_array; ///
private alias c_garrow_table_to_stringFn = extern(C) char* function(GArrowTable* table, GError** _err) nothrow;
__gshared c_garrow_table_to_stringFn c_garrow_table_to_string; ///
private alias c_garrow_table_validateFn = extern(C) gboolean function(GArrowTable* table, GError** _err) nothrow;
__gshared c_garrow_table_validateFn c_garrow_table_validate; ///
private alias c_garrow_table_validate_fullFn = extern(C) gboolean function(GArrowTable* table, GError** _err) nothrow;
__gshared c_garrow_table_validate_fullFn c_garrow_table_validate_full; ///
private alias c_garrow_table_write_as_featherFn = extern(C) gboolean function(GArrowTable* table, GArrowOutputStream* sink, GArrowFeatherWriteProperties* properties, GError** _err) nothrow;
__gshared c_garrow_table_write_as_featherFn c_garrow_table_write_as_feather; ///

// TableBatchReader
private alias c_garrow_table_batch_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_table_batch_reader_get_typeFn c_garrow_table_batch_reader_get_type; ///
private alias c_garrow_table_batch_reader_newFn = extern(C) GArrowTableBatchReader* function(GArrowTable* table) nothrow;
__gshared c_garrow_table_batch_reader_newFn c_garrow_table_batch_reader_new; ///
private alias c_garrow_table_batch_reader_set_max_chunk_sizeFn = extern(C) void function(GArrowTableBatchReader* reader, long maxChunkSize) nothrow;
__gshared c_garrow_table_batch_reader_set_max_chunk_sizeFn c_garrow_table_batch_reader_set_max_chunk_size; ///

// TableConcatenateOptions
private alias c_garrow_table_concatenate_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_table_concatenate_options_get_typeFn c_garrow_table_concatenate_options_get_type; ///
private alias c_garrow_table_concatenate_options_newFn = extern(C) GArrowTableConcatenateOptions* function() nothrow;
__gshared c_garrow_table_concatenate_options_newFn c_garrow_table_concatenate_options_new; ///

// TableDatum
private alias c_garrow_table_datum_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_table_datum_get_typeFn c_garrow_table_datum_get_type; ///
private alias c_garrow_table_datum_newFn = extern(C) GArrowTableDatum* function(GArrowTable* value) nothrow;
__gshared c_garrow_table_datum_newFn c_garrow_table_datum_new; ///

// TakeOptions
private alias c_garrow_take_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_take_options_get_typeFn c_garrow_take_options_get_type; ///
private alias c_garrow_take_options_newFn = extern(C) GArrowTakeOptions* function() nothrow;
__gshared c_garrow_take_options_newFn c_garrow_take_options_new; ///

// TemporalDataType
private alias c_garrow_temporal_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_temporal_data_type_get_typeFn c_garrow_temporal_data_type_get_type; ///

// Tensor
private alias c_garrow_tensor_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_tensor_get_typeFn c_garrow_tensor_get_type; ///
private alias c_garrow_tensor_newFn = extern(C) GArrowTensor* function(GArrowDataType* dataType, GArrowBuffer* data, long* shape, size_t nDimensions, long* strides, size_t nStrides, char** dimensionNames, size_t nDimensionNames) nothrow;
__gshared c_garrow_tensor_newFn c_garrow_tensor_new; ///
private alias c_garrow_tensor_equalFn = extern(C) gboolean function(GArrowTensor* tensor, GArrowTensor* otherTensor) nothrow;
__gshared c_garrow_tensor_equalFn c_garrow_tensor_equal; ///
private alias c_garrow_tensor_get_bufferFn = extern(C) GArrowBuffer* function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_get_bufferFn c_garrow_tensor_get_buffer; ///
private alias c_garrow_tensor_get_dimension_nameFn = extern(C) const(char)* function(GArrowTensor* tensor, int i) nothrow;
__gshared c_garrow_tensor_get_dimension_nameFn c_garrow_tensor_get_dimension_name; ///
private alias c_garrow_tensor_get_n_dimensionsFn = extern(C) int function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_get_n_dimensionsFn c_garrow_tensor_get_n_dimensions; ///
private alias c_garrow_tensor_get_shapeFn = extern(C) long* function(GArrowTensor* tensor, int* nDimensions) nothrow;
__gshared c_garrow_tensor_get_shapeFn c_garrow_tensor_get_shape; ///
private alias c_garrow_tensor_get_sizeFn = extern(C) long function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_get_sizeFn c_garrow_tensor_get_size; ///
private alias c_garrow_tensor_get_stridesFn = extern(C) long* function(GArrowTensor* tensor, int* nStrides) nothrow;
__gshared c_garrow_tensor_get_stridesFn c_garrow_tensor_get_strides; ///
private alias c_garrow_tensor_get_value_data_typeFn = extern(C) GArrowDataType* function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_get_value_data_typeFn c_garrow_tensor_get_value_data_type; ///
private alias c_garrow_tensor_get_value_typeFn = extern(C) GArrowType function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_get_value_typeFn c_garrow_tensor_get_value_type; ///
private alias c_garrow_tensor_is_column_majorFn = extern(C) gboolean function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_is_column_majorFn c_garrow_tensor_is_column_major; ///
private alias c_garrow_tensor_is_contiguousFn = extern(C) gboolean function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_is_contiguousFn c_garrow_tensor_is_contiguous; ///
private alias c_garrow_tensor_is_mutableFn = extern(C) gboolean function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_is_mutableFn c_garrow_tensor_is_mutable; ///
private alias c_garrow_tensor_is_row_majorFn = extern(C) gboolean function(GArrowTensor* tensor) nothrow;
__gshared c_garrow_tensor_is_row_majorFn c_garrow_tensor_is_row_major; ///

// ThreadPool
private alias c_garrow_thread_pool_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_thread_pool_get_typeFn c_garrow_thread_pool_get_type; ///
private alias c_garrow_thread_pool_newFn = extern(C) GArrowThreadPool* function(uint nThreads, GError** _err) nothrow;
__gshared c_garrow_thread_pool_newFn c_garrow_thread_pool_new; ///

// Time32Array
private alias c_garrow_time32_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time32_array_get_typeFn c_garrow_time32_array_get_type; ///
private alias c_garrow_time32_array_newFn = extern(C) GArrowTime32Array* function(GArrowTime32DataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_time32_array_newFn c_garrow_time32_array_new; ///
private alias c_garrow_time32_array_get_valueFn = extern(C) int function(GArrowTime32Array* array, long i) nothrow;
__gshared c_garrow_time32_array_get_valueFn c_garrow_time32_array_get_value; ///
private alias c_garrow_time32_array_get_valuesFn = extern(C) const(int)* function(GArrowTime32Array* array, long* length) nothrow;
__gshared c_garrow_time32_array_get_valuesFn c_garrow_time32_array_get_values; ///

// Time32ArrayBuilder
private alias c_garrow_time32_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time32_array_builder_get_typeFn c_garrow_time32_array_builder_get_type; ///
private alias c_garrow_time32_array_builder_newFn = extern(C) GArrowTime32ArrayBuilder* function(GArrowTime32DataType* dataType) nothrow;
__gshared c_garrow_time32_array_builder_newFn c_garrow_time32_array_builder_new; ///
private alias c_garrow_time32_array_builder_appendFn = extern(C) gboolean function(GArrowTime32ArrayBuilder* builder, int value, GError** _err) nothrow;
__gshared c_garrow_time32_array_builder_appendFn c_garrow_time32_array_builder_append; ///
private alias c_garrow_time32_array_builder_append_nullFn = extern(C) gboolean function(GArrowTime32ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_time32_array_builder_append_nullFn c_garrow_time32_array_builder_append_null; ///
private alias c_garrow_time32_array_builder_append_nullsFn = extern(C) gboolean function(GArrowTime32ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_time32_array_builder_append_nullsFn c_garrow_time32_array_builder_append_nulls; ///
private alias c_garrow_time32_array_builder_append_valueFn = extern(C) gboolean function(GArrowTime32ArrayBuilder* builder, int value, GError** _err) nothrow;
__gshared c_garrow_time32_array_builder_append_valueFn c_garrow_time32_array_builder_append_value; ///
private alias c_garrow_time32_array_builder_append_valuesFn = extern(C) gboolean function(GArrowTime32ArrayBuilder* builder, const(int)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_time32_array_builder_append_valuesFn c_garrow_time32_array_builder_append_values; ///

// Time32DataType
private alias c_garrow_time32_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time32_data_type_get_typeFn c_garrow_time32_data_type_get_type; ///
private alias c_garrow_time32_data_type_newFn = extern(C) GArrowTime32DataType* function(GArrowTimeUnit unit, GError** _err) nothrow;
__gshared c_garrow_time32_data_type_newFn c_garrow_time32_data_type_new; ///

// Time32Scalar
private alias c_garrow_time32_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time32_scalar_get_typeFn c_garrow_time32_scalar_get_type; ///
private alias c_garrow_time32_scalar_newFn = extern(C) GArrowTime32Scalar* function(GArrowTime32DataType* dataType, int value) nothrow;
__gshared c_garrow_time32_scalar_newFn c_garrow_time32_scalar_new; ///
private alias c_garrow_time32_scalar_get_valueFn = extern(C) int function(GArrowTime32Scalar* scalar) nothrow;
__gshared c_garrow_time32_scalar_get_valueFn c_garrow_time32_scalar_get_value; ///

// Time64Array
private alias c_garrow_time64_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time64_array_get_typeFn c_garrow_time64_array_get_type; ///
private alias c_garrow_time64_array_newFn = extern(C) GArrowTime64Array* function(GArrowTime64DataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_time64_array_newFn c_garrow_time64_array_new; ///
private alias c_garrow_time64_array_get_valueFn = extern(C) long function(GArrowTime64Array* array, long i) nothrow;
__gshared c_garrow_time64_array_get_valueFn c_garrow_time64_array_get_value; ///
private alias c_garrow_time64_array_get_valuesFn = extern(C) const(long)* function(GArrowTime64Array* array, long* length) nothrow;
__gshared c_garrow_time64_array_get_valuesFn c_garrow_time64_array_get_values; ///

// Time64ArrayBuilder
private alias c_garrow_time64_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time64_array_builder_get_typeFn c_garrow_time64_array_builder_get_type; ///
private alias c_garrow_time64_array_builder_newFn = extern(C) GArrowTime64ArrayBuilder* function(GArrowTime64DataType* dataType) nothrow;
__gshared c_garrow_time64_array_builder_newFn c_garrow_time64_array_builder_new; ///
private alias c_garrow_time64_array_builder_appendFn = extern(C) gboolean function(GArrowTime64ArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_time64_array_builder_appendFn c_garrow_time64_array_builder_append; ///
private alias c_garrow_time64_array_builder_append_nullFn = extern(C) gboolean function(GArrowTime64ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_time64_array_builder_append_nullFn c_garrow_time64_array_builder_append_null; ///
private alias c_garrow_time64_array_builder_append_nullsFn = extern(C) gboolean function(GArrowTime64ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_time64_array_builder_append_nullsFn c_garrow_time64_array_builder_append_nulls; ///
private alias c_garrow_time64_array_builder_append_valueFn = extern(C) gboolean function(GArrowTime64ArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_time64_array_builder_append_valueFn c_garrow_time64_array_builder_append_value; ///
private alias c_garrow_time64_array_builder_append_valuesFn = extern(C) gboolean function(GArrowTime64ArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_time64_array_builder_append_valuesFn c_garrow_time64_array_builder_append_values; ///

// Time64DataType
private alias c_garrow_time64_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time64_data_type_get_typeFn c_garrow_time64_data_type_get_type; ///
private alias c_garrow_time64_data_type_newFn = extern(C) GArrowTime64DataType* function(GArrowTimeUnit unit, GError** _err) nothrow;
__gshared c_garrow_time64_data_type_newFn c_garrow_time64_data_type_new; ///

// Time64Scalar
private alias c_garrow_time64_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time64_scalar_get_typeFn c_garrow_time64_scalar_get_type; ///
private alias c_garrow_time64_scalar_newFn = extern(C) GArrowTime64Scalar* function(GArrowTime64DataType* dataType, long value) nothrow;
__gshared c_garrow_time64_scalar_newFn c_garrow_time64_scalar_new; ///
private alias c_garrow_time64_scalar_get_valueFn = extern(C) long function(GArrowTime64Scalar* scalar) nothrow;
__gshared c_garrow_time64_scalar_get_valueFn c_garrow_time64_scalar_get_value; ///

// TimeDataType
private alias c_garrow_time_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_time_data_type_get_typeFn c_garrow_time_data_type_get_type; ///
private alias c_garrow_time_data_type_get_unitFn = extern(C) GArrowTimeUnit function(GArrowTimeDataType* timeDataType) nothrow;
__gshared c_garrow_time_data_type_get_unitFn c_garrow_time_data_type_get_unit; ///

// TimestampArray
private alias c_garrow_timestamp_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_timestamp_array_get_typeFn c_garrow_timestamp_array_get_type; ///
private alias c_garrow_timestamp_array_newFn = extern(C) GArrowTimestampArray* function(GArrowTimestampDataType* dataType, long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_timestamp_array_newFn c_garrow_timestamp_array_new; ///
private alias c_garrow_timestamp_array_get_valueFn = extern(C) long function(GArrowTimestampArray* array, long i) nothrow;
__gshared c_garrow_timestamp_array_get_valueFn c_garrow_timestamp_array_get_value; ///
private alias c_garrow_timestamp_array_get_valuesFn = extern(C) const(long)* function(GArrowTimestampArray* array, long* length) nothrow;
__gshared c_garrow_timestamp_array_get_valuesFn c_garrow_timestamp_array_get_values; ///

// TimestampArrayBuilder
private alias c_garrow_timestamp_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_timestamp_array_builder_get_typeFn c_garrow_timestamp_array_builder_get_type; ///
private alias c_garrow_timestamp_array_builder_newFn = extern(C) GArrowTimestampArrayBuilder* function(GArrowTimestampDataType* dataType) nothrow;
__gshared c_garrow_timestamp_array_builder_newFn c_garrow_timestamp_array_builder_new; ///
private alias c_garrow_timestamp_array_builder_appendFn = extern(C) gboolean function(GArrowTimestampArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_timestamp_array_builder_appendFn c_garrow_timestamp_array_builder_append; ///
private alias c_garrow_timestamp_array_builder_append_nullFn = extern(C) gboolean function(GArrowTimestampArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_timestamp_array_builder_append_nullFn c_garrow_timestamp_array_builder_append_null; ///
private alias c_garrow_timestamp_array_builder_append_nullsFn = extern(C) gboolean function(GArrowTimestampArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_timestamp_array_builder_append_nullsFn c_garrow_timestamp_array_builder_append_nulls; ///
private alias c_garrow_timestamp_array_builder_append_valueFn = extern(C) gboolean function(GArrowTimestampArrayBuilder* builder, long value, GError** _err) nothrow;
__gshared c_garrow_timestamp_array_builder_append_valueFn c_garrow_timestamp_array_builder_append_value; ///
private alias c_garrow_timestamp_array_builder_append_valuesFn = extern(C) gboolean function(GArrowTimestampArrayBuilder* builder, const(long)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_timestamp_array_builder_append_valuesFn c_garrow_timestamp_array_builder_append_values; ///

// TimestampDataType
private alias c_garrow_timestamp_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_timestamp_data_type_get_typeFn c_garrow_timestamp_data_type_get_type; ///
private alias c_garrow_timestamp_data_type_newFn = extern(C) GArrowTimestampDataType* function(GArrowTimeUnit unit, GTimeZone* timeZone) nothrow;
__gshared c_garrow_timestamp_data_type_newFn c_garrow_timestamp_data_type_new; ///
private alias c_garrow_timestamp_data_type_get_unitFn = extern(C) GArrowTimeUnit function(GArrowTimestampDataType* dataType) nothrow;
__gshared c_garrow_timestamp_data_type_get_unitFn c_garrow_timestamp_data_type_get_unit; ///

// TimestampParser
private alias c_garrow_timestamp_parser_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_timestamp_parser_get_typeFn c_garrow_timestamp_parser_get_type; ///
private alias c_garrow_timestamp_parser_get_kindFn = extern(C) const(char)* function(GArrowTimestampParser* parser) nothrow;
__gshared c_garrow_timestamp_parser_get_kindFn c_garrow_timestamp_parser_get_kind; ///

// TimestampScalar
private alias c_garrow_timestamp_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_timestamp_scalar_get_typeFn c_garrow_timestamp_scalar_get_type; ///
private alias c_garrow_timestamp_scalar_newFn = extern(C) GArrowTimestampScalar* function(GArrowTimestampDataType* dataType, long value) nothrow;
__gshared c_garrow_timestamp_scalar_newFn c_garrow_timestamp_scalar_new; ///
private alias c_garrow_timestamp_scalar_get_valueFn = extern(C) long function(GArrowTimestampScalar* scalar) nothrow;
__gshared c_garrow_timestamp_scalar_get_valueFn c_garrow_timestamp_scalar_get_value; ///

// TrimOptions
private alias c_garrow_trim_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_trim_options_get_typeFn c_garrow_trim_options_get_type; ///
private alias c_garrow_trim_options_newFn = extern(C) GArrowTrimOptions* function() nothrow;
__gshared c_garrow_trim_options_newFn c_garrow_trim_options_new; ///

// UInt16Array
private alias c_garrow_uint16_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint16_array_get_typeFn c_garrow_uint16_array_get_type; ///
private alias c_garrow_uint16_array_newFn = extern(C) GArrowUInt16Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_uint16_array_newFn c_garrow_uint16_array_new; ///
private alias c_garrow_uint16_array_get_valueFn = extern(C) ushort function(GArrowUInt16Array* array, long i) nothrow;
__gshared c_garrow_uint16_array_get_valueFn c_garrow_uint16_array_get_value; ///
private alias c_garrow_uint16_array_get_valuesFn = extern(C) const(ushort)* function(GArrowUInt16Array* array, long* length) nothrow;
__gshared c_garrow_uint16_array_get_valuesFn c_garrow_uint16_array_get_values; ///
private alias c_garrow_uint16_array_sumFn = extern(C) ulong function(GArrowUInt16Array* array, GError** _err) nothrow;
__gshared c_garrow_uint16_array_sumFn c_garrow_uint16_array_sum; ///

// UInt16ArrayBuilder
private alias c_garrow_uint16_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint16_array_builder_get_typeFn c_garrow_uint16_array_builder_get_type; ///
private alias c_garrow_uint16_array_builder_newFn = extern(C) GArrowUInt16ArrayBuilder* function() nothrow;
__gshared c_garrow_uint16_array_builder_newFn c_garrow_uint16_array_builder_new; ///
private alias c_garrow_uint16_array_builder_appendFn = extern(C) gboolean function(GArrowUInt16ArrayBuilder* builder, ushort value, GError** _err) nothrow;
__gshared c_garrow_uint16_array_builder_appendFn c_garrow_uint16_array_builder_append; ///
private alias c_garrow_uint16_array_builder_append_nullFn = extern(C) gboolean function(GArrowUInt16ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_uint16_array_builder_append_nullFn c_garrow_uint16_array_builder_append_null; ///
private alias c_garrow_uint16_array_builder_append_nullsFn = extern(C) gboolean function(GArrowUInt16ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_uint16_array_builder_append_nullsFn c_garrow_uint16_array_builder_append_nulls; ///
private alias c_garrow_uint16_array_builder_append_valueFn = extern(C) gboolean function(GArrowUInt16ArrayBuilder* builder, ushort value, GError** _err) nothrow;
__gshared c_garrow_uint16_array_builder_append_valueFn c_garrow_uint16_array_builder_append_value; ///
private alias c_garrow_uint16_array_builder_append_valuesFn = extern(C) gboolean function(GArrowUInt16ArrayBuilder* builder, const(ushort)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_uint16_array_builder_append_valuesFn c_garrow_uint16_array_builder_append_values; ///

// UInt16DataType
private alias c_garrow_uint16_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint16_data_type_get_typeFn c_garrow_uint16_data_type_get_type; ///
private alias c_garrow_uint16_data_type_newFn = extern(C) GArrowUInt16DataType* function() nothrow;
__gshared c_garrow_uint16_data_type_newFn c_garrow_uint16_data_type_new; ///

// UInt16Scalar
private alias c_garrow_uint16_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint16_scalar_get_typeFn c_garrow_uint16_scalar_get_type; ///
private alias c_garrow_uint16_scalar_newFn = extern(C) GArrowUInt16Scalar* function(ushort value) nothrow;
__gshared c_garrow_uint16_scalar_newFn c_garrow_uint16_scalar_new; ///
private alias c_garrow_uint16_scalar_get_valueFn = extern(C) ushort function(GArrowUInt16Scalar* scalar) nothrow;
__gshared c_garrow_uint16_scalar_get_valueFn c_garrow_uint16_scalar_get_value; ///

// UInt32Array
private alias c_garrow_uint32_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint32_array_get_typeFn c_garrow_uint32_array_get_type; ///
private alias c_garrow_uint32_array_newFn = extern(C) GArrowUInt32Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_uint32_array_newFn c_garrow_uint32_array_new; ///
private alias c_garrow_uint32_array_get_valueFn = extern(C) uint function(GArrowUInt32Array* array, long i) nothrow;
__gshared c_garrow_uint32_array_get_valueFn c_garrow_uint32_array_get_value; ///
private alias c_garrow_uint32_array_get_valuesFn = extern(C) const(uint)* function(GArrowUInt32Array* array, long* length) nothrow;
__gshared c_garrow_uint32_array_get_valuesFn c_garrow_uint32_array_get_values; ///
private alias c_garrow_uint32_array_sumFn = extern(C) ulong function(GArrowUInt32Array* array, GError** _err) nothrow;
__gshared c_garrow_uint32_array_sumFn c_garrow_uint32_array_sum; ///

// UInt32ArrayBuilder
private alias c_garrow_uint32_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint32_array_builder_get_typeFn c_garrow_uint32_array_builder_get_type; ///
private alias c_garrow_uint32_array_builder_newFn = extern(C) GArrowUInt32ArrayBuilder* function() nothrow;
__gshared c_garrow_uint32_array_builder_newFn c_garrow_uint32_array_builder_new; ///
private alias c_garrow_uint32_array_builder_appendFn = extern(C) gboolean function(GArrowUInt32ArrayBuilder* builder, uint value, GError** _err) nothrow;
__gshared c_garrow_uint32_array_builder_appendFn c_garrow_uint32_array_builder_append; ///
private alias c_garrow_uint32_array_builder_append_nullFn = extern(C) gboolean function(GArrowUInt32ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_uint32_array_builder_append_nullFn c_garrow_uint32_array_builder_append_null; ///
private alias c_garrow_uint32_array_builder_append_nullsFn = extern(C) gboolean function(GArrowUInt32ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_uint32_array_builder_append_nullsFn c_garrow_uint32_array_builder_append_nulls; ///
private alias c_garrow_uint32_array_builder_append_valueFn = extern(C) gboolean function(GArrowUInt32ArrayBuilder* builder, uint value, GError** _err) nothrow;
__gshared c_garrow_uint32_array_builder_append_valueFn c_garrow_uint32_array_builder_append_value; ///
private alias c_garrow_uint32_array_builder_append_valuesFn = extern(C) gboolean function(GArrowUInt32ArrayBuilder* builder, const(uint)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_uint32_array_builder_append_valuesFn c_garrow_uint32_array_builder_append_values; ///

// UInt32DataType
private alias c_garrow_uint32_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint32_data_type_get_typeFn c_garrow_uint32_data_type_get_type; ///
private alias c_garrow_uint32_data_type_newFn = extern(C) GArrowUInt32DataType* function() nothrow;
__gshared c_garrow_uint32_data_type_newFn c_garrow_uint32_data_type_new; ///

// UInt32Scalar
private alias c_garrow_uint32_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint32_scalar_get_typeFn c_garrow_uint32_scalar_get_type; ///
private alias c_garrow_uint32_scalar_newFn = extern(C) GArrowUInt32Scalar* function(uint value) nothrow;
__gshared c_garrow_uint32_scalar_newFn c_garrow_uint32_scalar_new; ///
private alias c_garrow_uint32_scalar_get_valueFn = extern(C) uint function(GArrowUInt32Scalar* scalar) nothrow;
__gshared c_garrow_uint32_scalar_get_valueFn c_garrow_uint32_scalar_get_value; ///

// UInt64Array
private alias c_garrow_uint64_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint64_array_get_typeFn c_garrow_uint64_array_get_type; ///
private alias c_garrow_uint64_array_newFn = extern(C) GArrowUInt64Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_uint64_array_newFn c_garrow_uint64_array_new; ///
private alias c_garrow_uint64_array_get_valueFn = extern(C) ulong function(GArrowUInt64Array* array, long i) nothrow;
__gshared c_garrow_uint64_array_get_valueFn c_garrow_uint64_array_get_value; ///
private alias c_garrow_uint64_array_get_valuesFn = extern(C) const(ulong)* function(GArrowUInt64Array* array, long* length) nothrow;
__gshared c_garrow_uint64_array_get_valuesFn c_garrow_uint64_array_get_values; ///
private alias c_garrow_uint64_array_sumFn = extern(C) ulong function(GArrowUInt64Array* array, GError** _err) nothrow;
__gshared c_garrow_uint64_array_sumFn c_garrow_uint64_array_sum; ///

// UInt64ArrayBuilder
private alias c_garrow_uint64_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint64_array_builder_get_typeFn c_garrow_uint64_array_builder_get_type; ///
private alias c_garrow_uint64_array_builder_newFn = extern(C) GArrowUInt64ArrayBuilder* function() nothrow;
__gshared c_garrow_uint64_array_builder_newFn c_garrow_uint64_array_builder_new; ///
private alias c_garrow_uint64_array_builder_appendFn = extern(C) gboolean function(GArrowUInt64ArrayBuilder* builder, ulong value, GError** _err) nothrow;
__gshared c_garrow_uint64_array_builder_appendFn c_garrow_uint64_array_builder_append; ///
private alias c_garrow_uint64_array_builder_append_nullFn = extern(C) gboolean function(GArrowUInt64ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_uint64_array_builder_append_nullFn c_garrow_uint64_array_builder_append_null; ///
private alias c_garrow_uint64_array_builder_append_nullsFn = extern(C) gboolean function(GArrowUInt64ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_uint64_array_builder_append_nullsFn c_garrow_uint64_array_builder_append_nulls; ///
private alias c_garrow_uint64_array_builder_append_valueFn = extern(C) gboolean function(GArrowUInt64ArrayBuilder* builder, ulong value, GError** _err) nothrow;
__gshared c_garrow_uint64_array_builder_append_valueFn c_garrow_uint64_array_builder_append_value; ///
private alias c_garrow_uint64_array_builder_append_valuesFn = extern(C) gboolean function(GArrowUInt64ArrayBuilder* builder, const(ulong)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_uint64_array_builder_append_valuesFn c_garrow_uint64_array_builder_append_values; ///

// UInt64DataType
private alias c_garrow_uint64_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint64_data_type_get_typeFn c_garrow_uint64_data_type_get_type; ///
private alias c_garrow_uint64_data_type_newFn = extern(C) GArrowUInt64DataType* function() nothrow;
__gshared c_garrow_uint64_data_type_newFn c_garrow_uint64_data_type_new; ///

// UInt64Scalar
private alias c_garrow_uint64_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint64_scalar_get_typeFn c_garrow_uint64_scalar_get_type; ///
private alias c_garrow_uint64_scalar_newFn = extern(C) GArrowUInt64Scalar* function(ulong value) nothrow;
__gshared c_garrow_uint64_scalar_newFn c_garrow_uint64_scalar_new; ///
private alias c_garrow_uint64_scalar_get_valueFn = extern(C) ulong function(GArrowUInt64Scalar* scalar) nothrow;
__gshared c_garrow_uint64_scalar_get_valueFn c_garrow_uint64_scalar_get_value; ///

// UInt8Array
private alias c_garrow_uint8_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint8_array_get_typeFn c_garrow_uint8_array_get_type; ///
private alias c_garrow_uint8_array_newFn = extern(C) GArrowUInt8Array* function(long length, GArrowBuffer* data, GArrowBuffer* nullBitmap, long nNulls) nothrow;
__gshared c_garrow_uint8_array_newFn c_garrow_uint8_array_new; ///
private alias c_garrow_uint8_array_get_valueFn = extern(C) ubyte function(GArrowUInt8Array* array, long i) nothrow;
__gshared c_garrow_uint8_array_get_valueFn c_garrow_uint8_array_get_value; ///
private alias c_garrow_uint8_array_get_valuesFn = extern(C) const(ubyte)* function(GArrowUInt8Array* array, long* length) nothrow;
__gshared c_garrow_uint8_array_get_valuesFn c_garrow_uint8_array_get_values; ///
private alias c_garrow_uint8_array_sumFn = extern(C) ulong function(GArrowUInt8Array* array, GError** _err) nothrow;
__gshared c_garrow_uint8_array_sumFn c_garrow_uint8_array_sum; ///

// UInt8ArrayBuilder
private alias c_garrow_uint8_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint8_array_builder_get_typeFn c_garrow_uint8_array_builder_get_type; ///
private alias c_garrow_uint8_array_builder_newFn = extern(C) GArrowUInt8ArrayBuilder* function() nothrow;
__gshared c_garrow_uint8_array_builder_newFn c_garrow_uint8_array_builder_new; ///
private alias c_garrow_uint8_array_builder_appendFn = extern(C) gboolean function(GArrowUInt8ArrayBuilder* builder, ubyte value, GError** _err) nothrow;
__gshared c_garrow_uint8_array_builder_appendFn c_garrow_uint8_array_builder_append; ///
private alias c_garrow_uint8_array_builder_append_nullFn = extern(C) gboolean function(GArrowUInt8ArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_uint8_array_builder_append_nullFn c_garrow_uint8_array_builder_append_null; ///
private alias c_garrow_uint8_array_builder_append_nullsFn = extern(C) gboolean function(GArrowUInt8ArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_uint8_array_builder_append_nullsFn c_garrow_uint8_array_builder_append_nulls; ///
private alias c_garrow_uint8_array_builder_append_valueFn = extern(C) gboolean function(GArrowUInt8ArrayBuilder* builder, ubyte value, GError** _err) nothrow;
__gshared c_garrow_uint8_array_builder_append_valueFn c_garrow_uint8_array_builder_append_value; ///
private alias c_garrow_uint8_array_builder_append_valuesFn = extern(C) gboolean function(GArrowUInt8ArrayBuilder* builder, const(ubyte)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_uint8_array_builder_append_valuesFn c_garrow_uint8_array_builder_append_values; ///

// UInt8DataType
private alias c_garrow_uint8_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint8_data_type_get_typeFn c_garrow_uint8_data_type_get_type; ///
private alias c_garrow_uint8_data_type_newFn = extern(C) GArrowUInt8DataType* function() nothrow;
__gshared c_garrow_uint8_data_type_newFn c_garrow_uint8_data_type_new; ///

// UInt8Scalar
private alias c_garrow_uint8_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint8_scalar_get_typeFn c_garrow_uint8_scalar_get_type; ///
private alias c_garrow_uint8_scalar_newFn = extern(C) GArrowUInt8Scalar* function(ubyte value) nothrow;
__gshared c_garrow_uint8_scalar_newFn c_garrow_uint8_scalar_new; ///
private alias c_garrow_uint8_scalar_get_valueFn = extern(C) ubyte function(GArrowUInt8Scalar* scalar) nothrow;
__gshared c_garrow_uint8_scalar_get_valueFn c_garrow_uint8_scalar_get_value; ///

// UIntArrayBuilder
private alias c_garrow_uint_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uint_array_builder_get_typeFn c_garrow_uint_array_builder_get_type; ///
private alias c_garrow_uint_array_builder_newFn = extern(C) GArrowUIntArrayBuilder* function() nothrow;
__gshared c_garrow_uint_array_builder_newFn c_garrow_uint_array_builder_new; ///
private alias c_garrow_uint_array_builder_appendFn = extern(C) gboolean function(GArrowUIntArrayBuilder* builder, ulong value, GError** _err) nothrow;
__gshared c_garrow_uint_array_builder_appendFn c_garrow_uint_array_builder_append; ///
private alias c_garrow_uint_array_builder_append_nullFn = extern(C) gboolean function(GArrowUIntArrayBuilder* builder, GError** _err) nothrow;
__gshared c_garrow_uint_array_builder_append_nullFn c_garrow_uint_array_builder_append_null; ///
private alias c_garrow_uint_array_builder_append_nullsFn = extern(C) gboolean function(GArrowUIntArrayBuilder* builder, long n, GError** _err) nothrow;
__gshared c_garrow_uint_array_builder_append_nullsFn c_garrow_uint_array_builder_append_nulls; ///
private alias c_garrow_uint_array_builder_append_valueFn = extern(C) gboolean function(GArrowUIntArrayBuilder* builder, ulong value, GError** _err) nothrow;
__gshared c_garrow_uint_array_builder_append_valueFn c_garrow_uint_array_builder_append_value; ///
private alias c_garrow_uint_array_builder_append_valuesFn = extern(C) gboolean function(GArrowUIntArrayBuilder* builder, const(ulong)* values, long valuesLength, const(gboolean)* isValids, long isValidsLength, GError** _err) nothrow;
__gshared c_garrow_uint_array_builder_append_valuesFn c_garrow_uint_array_builder_append_values; ///

// UTF8NormalizeOptions
private alias c_garrow_utf8_normalize_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_utf8_normalize_options_get_typeFn c_garrow_utf8_normalize_options_get_type; ///
private alias c_garrow_utf8_normalize_options_newFn = extern(C) GArrowUTF8NormalizeOptions* function() nothrow;
__gshared c_garrow_utf8_normalize_options_newFn c_garrow_utf8_normalize_options_new; ///

// UUIDDataType
private alias c_garrow_uuid_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_uuid_data_type_get_typeFn c_garrow_uuid_data_type_get_type; ///
private alias c_garrow_uuid_data_type_newFn = extern(C) GArrowUUIDDataType* function(GError** _err) nothrow;
__gshared c_garrow_uuid_data_type_newFn c_garrow_uuid_data_type_new; ///

// UnionArray
private alias c_garrow_union_array_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_union_array_get_typeFn c_garrow_union_array_get_type; ///
private alias c_garrow_union_array_get_child_idFn = extern(C) int function(GArrowUnionArray* array, long i) nothrow;
__gshared c_garrow_union_array_get_child_idFn c_garrow_union_array_get_child_id; ///
private alias c_garrow_union_array_get_fieldFn = extern(C) GArrowArray* function(GArrowUnionArray* array, int i) nothrow;
__gshared c_garrow_union_array_get_fieldFn c_garrow_union_array_get_field; ///
private alias c_garrow_union_array_get_n_fieldsFn = extern(C) int function(GArrowUnionArray* array) nothrow;
__gshared c_garrow_union_array_get_n_fieldsFn c_garrow_union_array_get_n_fields; ///
private alias c_garrow_union_array_get_type_codeFn = extern(C) byte function(GArrowUnionArray* array, long i) nothrow;
__gshared c_garrow_union_array_get_type_codeFn c_garrow_union_array_get_type_code; ///

// UnionArrayBuilder
private alias c_garrow_union_array_builder_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_union_array_builder_get_typeFn c_garrow_union_array_builder_get_type; ///
private alias c_garrow_union_array_builder_append_childFn = extern(C) byte function(GArrowUnionArrayBuilder* builder, GArrowArrayBuilder* child, const(char)* fieldName) nothrow;
__gshared c_garrow_union_array_builder_append_childFn c_garrow_union_array_builder_append_child; ///
private alias c_garrow_union_array_builder_append_valueFn = extern(C) gboolean function(GArrowUnionArrayBuilder* builder, byte value, GError** _err) nothrow;
__gshared c_garrow_union_array_builder_append_valueFn c_garrow_union_array_builder_append_value; ///

// UnionDataType
private alias c_garrow_union_data_type_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_union_data_type_get_typeFn c_garrow_union_data_type_get_type; ///
private alias c_garrow_union_data_type_get_fieldFn = extern(C) GArrowField* function(GArrowUnionDataType* unionDataType, int i) nothrow;
__gshared c_garrow_union_data_type_get_fieldFn c_garrow_union_data_type_get_field; ///
private alias c_garrow_union_data_type_get_fieldsFn = extern(C) GList* function(GArrowUnionDataType* unionDataType) nothrow;
__gshared c_garrow_union_data_type_get_fieldsFn c_garrow_union_data_type_get_fields; ///
private alias c_garrow_union_data_type_get_n_fieldsFn = extern(C) int function(GArrowUnionDataType* unionDataType) nothrow;
__gshared c_garrow_union_data_type_get_n_fieldsFn c_garrow_union_data_type_get_n_fields; ///
private alias c_garrow_union_data_type_get_type_codesFn = extern(C) byte* function(GArrowUnionDataType* unionDataType, size_t* nTypeCodes) nothrow;
__gshared c_garrow_union_data_type_get_type_codesFn c_garrow_union_data_type_get_type_codes; ///

// UnionScalar
private alias c_garrow_union_scalar_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_union_scalar_get_typeFn c_garrow_union_scalar_get_type; ///
private alias c_garrow_union_scalar_get_type_codeFn = extern(C) byte function(GArrowUnionScalar* scalar) nothrow;
__gshared c_garrow_union_scalar_get_type_codeFn c_garrow_union_scalar_get_type_code; ///
private alias c_garrow_union_scalar_get_valueFn = extern(C) GArrowScalar* function(GArrowUnionScalar* scalar) nothrow;
__gshared c_garrow_union_scalar_get_valueFn c_garrow_union_scalar_get_value; ///

// VarianceOptions
private alias c_garrow_variance_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_variance_options_get_typeFn c_garrow_variance_options_get_type; ///
private alias c_garrow_variance_options_newFn = extern(C) GArrowVarianceOptions* function() nothrow;
__gshared c_garrow_variance_options_newFn c_garrow_variance_options_new; ///

// WeekOptions
private alias c_garrow_week_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_week_options_get_typeFn c_garrow_week_options_get_type; ///
private alias c_garrow_week_options_newFn = extern(C) GArrowWeekOptions* function() nothrow;
__gshared c_garrow_week_options_newFn c_garrow_week_options_new; ///

// WinsorizeOptions
private alias c_garrow_winsorize_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_winsorize_options_get_typeFn c_garrow_winsorize_options_get_type; ///
private alias c_garrow_winsorize_options_newFn = extern(C) GArrowWinsorizeOptions* function() nothrow;
__gshared c_garrow_winsorize_options_newFn c_garrow_winsorize_options_new; ///

// Writable
private alias c_garrow_writable_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_writable_get_typeFn c_garrow_writable_get_type; ///
private alias c_garrow_writable_flushFn = extern(C) gboolean function(GArrowWritable* writable, GError** _err) nothrow;
__gshared c_garrow_writable_flushFn c_garrow_writable_flush; ///
private alias c_garrow_writable_writeFn = extern(C) gboolean function(GArrowWritable* writable, const(ubyte)* data, long nBytes, GError** _err) nothrow;
__gshared c_garrow_writable_writeFn c_garrow_writable_write; ///

// WritableFile
private alias c_garrow_writable_file_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_writable_file_get_typeFn c_garrow_writable_file_get_type; ///
private alias c_garrow_writable_file_write_atFn = extern(C) gboolean function(GArrowWritableFile* writableFile, long position, const(ubyte)* data, long nBytes, GError** _err) nothrow;
__gshared c_garrow_writable_file_write_atFn c_garrow_writable_file_write_at; ///

// WriteOptions
private alias c_garrow_write_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_write_options_get_typeFn c_garrow_write_options_get_type; ///
private alias c_garrow_write_options_newFn = extern(C) GArrowWriteOptions* function() nothrow;
__gshared c_garrow_write_options_newFn c_garrow_write_options_new; ///

// ZeroFillOptions
private alias c_garrow_zero_fill_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_garrow_zero_fill_options_get_typeFn c_garrow_zero_fill_options_get_type; ///
private alias c_garrow_zero_fill_options_newFn = extern(C) GArrowZeroFillOptions* function() nothrow;
__gshared c_garrow_zero_fill_options_newFn c_garrow_zero_fill_options_new; ///

// global
private alias c_garrow_compute_initializeFn = extern(C) gboolean function(GError** _err) nothrow;
__gshared c_garrow_compute_initializeFn c_garrow_compute_initialize; ///
private alias c_garrow_s3_finalizeFn = extern(C) gboolean function(GError** _err) nothrow;
__gshared c_garrow_s3_finalizeFn c_garrow_s3_finalize; ///
private alias c_garrow_s3_initializeFn = extern(C) gboolean function(GArrowS3GlobalOptions* options, GError** _err) nothrow;
__gshared c_garrow_s3_initializeFn c_garrow_s3_initialize; ///
private alias c_garrow_s3_is_enabledFn = extern(C) gboolean function() nothrow;
__gshared c_garrow_s3_is_enabledFn c_garrow_s3_is_enabled; ///

// Error
private alias c_garrow_error_quarkFn = extern(C) GQuark function() nothrow;
__gshared c_garrow_error_quarkFn c_garrow_error_quark; ///

// AggregateNodeOptions

/** */
alias garrow_aggregate_node_options_get_type = c_garrow_aggregate_node_options_get_type;

/** */
alias garrow_aggregate_node_options_new = c_garrow_aggregate_node_options_new;

/** */
alias garrow_aggregate_node_options_get_aggregations = c_garrow_aggregate_node_options_get_aggregations;

// Aggregation

/** */
alias garrow_aggregation_get_type = c_garrow_aggregation_get_type;

/** */
alias garrow_aggregation_new = c_garrow_aggregation_new;

// Array

/** */
alias garrow_array_get_type = c_garrow_array_get_type;

/** */
alias garrow_array_import = c_garrow_array_import;

/** */
alias garrow_array_cast = c_garrow_array_cast;

/** */
alias garrow_array_concatenate = c_garrow_array_concatenate;

/** */
alias garrow_array_count = c_garrow_array_count;

/** */
alias garrow_array_count_values = c_garrow_array_count_values;

/** */
alias garrow_array_dictionary_encode = c_garrow_array_dictionary_encode;

/** */
alias garrow_array_diff_unified = c_garrow_array_diff_unified;

/** */
alias garrow_array_equal = c_garrow_array_equal;

/** */
alias garrow_array_equal_approx = c_garrow_array_equal_approx;

/** */
alias garrow_array_equal_options = c_garrow_array_equal_options;

/** */
alias garrow_array_equal_range = c_garrow_array_equal_range;

/** */
alias garrow_array_export = c_garrow_array_export;

/** */
alias garrow_array_filter = c_garrow_array_filter;

/** */
alias garrow_array_get_length = c_garrow_array_get_length;

/** */
alias garrow_array_get_n_nulls = c_garrow_array_get_n_nulls;

/** */
alias garrow_array_get_null_bitmap = c_garrow_array_get_null_bitmap;

/** */
alias garrow_array_get_offset = c_garrow_array_get_offset;

/** */
alias garrow_array_get_statistics = c_garrow_array_get_statistics;

/** */
alias garrow_array_get_value_data_type = c_garrow_array_get_value_data_type;

/** */
alias garrow_array_get_value_type = c_garrow_array_get_value_type;

/** */
alias garrow_array_is_in = c_garrow_array_is_in;

/** */
alias garrow_array_is_in_chunked_array = c_garrow_array_is_in_chunked_array;

/** */
alias garrow_array_is_null = c_garrow_array_is_null;

/** */
alias garrow_array_is_valid = c_garrow_array_is_valid;

/** */
alias garrow_array_run_end_encode = c_garrow_array_run_end_encode;

/** */
alias garrow_array_slice = c_garrow_array_slice;

/** */
alias garrow_array_sort_indices = c_garrow_array_sort_indices;

/** */
alias garrow_array_sort_to_indices = c_garrow_array_sort_to_indices;

/** */
alias garrow_array_take = c_garrow_array_take;

/** */
alias garrow_array_take_chunked_array = c_garrow_array_take_chunked_array;

/** */
alias garrow_array_to_string = c_garrow_array_to_string;

/** */
alias garrow_array_unique = c_garrow_array_unique;

/** */
alias garrow_array_validate = c_garrow_array_validate;

/** */
alias garrow_array_validate_full = c_garrow_array_validate_full;

/** */
alias garrow_array_view = c_garrow_array_view;

// ArrayBuilder

/** */
alias garrow_array_builder_get_type = c_garrow_array_builder_get_type;

/** */
alias garrow_array_builder_append_empty_value = c_garrow_array_builder_append_empty_value;

/** */
alias garrow_array_builder_append_empty_values = c_garrow_array_builder_append_empty_values;

/** */
alias garrow_array_builder_append_null = c_garrow_array_builder_append_null;

/** */
alias garrow_array_builder_append_nulls = c_garrow_array_builder_append_nulls;

/** */
alias garrow_array_builder_finish = c_garrow_array_builder_finish;

/** */
alias garrow_array_builder_get_capacity = c_garrow_array_builder_get_capacity;

/** */
alias garrow_array_builder_get_child = c_garrow_array_builder_get_child;

/** */
alias garrow_array_builder_get_children = c_garrow_array_builder_get_children;

/** */
alias garrow_array_builder_get_length = c_garrow_array_builder_get_length;

/** */
alias garrow_array_builder_get_n_nulls = c_garrow_array_builder_get_n_nulls;

/** */
alias garrow_array_builder_get_value_data_type = c_garrow_array_builder_get_value_data_type;

/** */
alias garrow_array_builder_get_value_type = c_garrow_array_builder_get_value_type;

/** */
alias garrow_array_builder_reserve = c_garrow_array_builder_reserve;

/** */
alias garrow_array_builder_reset = c_garrow_array_builder_reset;

/** */
alias garrow_array_builder_resize = c_garrow_array_builder_resize;

// ArrayDatum

/** */
alias garrow_array_datum_get_type = c_garrow_array_datum_get_type;

/** */
alias garrow_array_datum_new = c_garrow_array_datum_new;

// ArraySortOptions

/** */
alias garrow_array_sort_options_get_type = c_garrow_array_sort_options_get_type;

/** */
alias garrow_array_sort_options_new = c_garrow_array_sort_options_new;

/** */
alias garrow_array_sort_options_equal = c_garrow_array_sort_options_equal;

// ArrayStatistics

/** */
alias garrow_array_statistics_get_type = c_garrow_array_statistics_get_type;

/** */
alias garrow_array_statistics_get_distinct_count = c_garrow_array_statistics_get_distinct_count;

/** */
alias garrow_array_statistics_get_distinct_count_approximate = c_garrow_array_statistics_get_distinct_count_approximate;

/** */
alias garrow_array_statistics_get_distinct_count_exact = c_garrow_array_statistics_get_distinct_count_exact;

/** */
alias garrow_array_statistics_get_null_count = c_garrow_array_statistics_get_null_count;

/** */
alias garrow_array_statistics_get_null_count_approximate = c_garrow_array_statistics_get_null_count_approximate;

/** */
alias garrow_array_statistics_get_null_count_exact = c_garrow_array_statistics_get_null_count_exact;

/** */
alias garrow_array_statistics_has_distinct_count = c_garrow_array_statistics_has_distinct_count;

/** */
alias garrow_array_statistics_has_null_count = c_garrow_array_statistics_has_null_count;

/** */
alias garrow_array_statistics_is_distinct_count_exact = c_garrow_array_statistics_is_distinct_count_exact;

/** */
alias garrow_array_statistics_is_null_count_exact = c_garrow_array_statistics_is_null_count_exact;

// AssumeTimezoneOptions

/** */
alias garrow_assume_timezone_options_get_type = c_garrow_assume_timezone_options_get_type;

/** */
alias garrow_assume_timezone_options_new = c_garrow_assume_timezone_options_new;

// AzureFileSystem

/** */
alias garrow_azure_file_system_get_type = c_garrow_azure_file_system_get_type;

// BaseBinaryScalar

/** */
alias garrow_base_binary_scalar_get_type = c_garrow_base_binary_scalar_get_type;

/** */
alias garrow_base_binary_scalar_get_value = c_garrow_base_binary_scalar_get_value;

// BaseListDataType

/** */
alias garrow_base_list_data_type_get_type = c_garrow_base_list_data_type_get_type;

/** */
alias garrow_base_list_data_type_get_field = c_garrow_base_list_data_type_get_field;

// BaseListScalar

/** */
alias garrow_base_list_scalar_get_type = c_garrow_base_list_scalar_get_type;

/** */
alias garrow_base_list_scalar_get_value = c_garrow_base_list_scalar_get_value;

// BinaryArray

/** */
alias garrow_binary_array_get_type = c_garrow_binary_array_get_type;

/** */
alias garrow_binary_array_new = c_garrow_binary_array_new;

/** */
alias garrow_binary_array_get_buffer = c_garrow_binary_array_get_buffer;

/** */
alias garrow_binary_array_get_data_buffer = c_garrow_binary_array_get_data_buffer;

/** */
alias garrow_binary_array_get_offsets_buffer = c_garrow_binary_array_get_offsets_buffer;

/** */
alias garrow_binary_array_get_value = c_garrow_binary_array_get_value;

// BinaryArrayBuilder

/** */
alias garrow_binary_array_builder_get_type = c_garrow_binary_array_builder_get_type;

/** */
alias garrow_binary_array_builder_new = c_garrow_binary_array_builder_new;

/** */
alias garrow_binary_array_builder_append = c_garrow_binary_array_builder_append;

/** */
alias garrow_binary_array_builder_append_null = c_garrow_binary_array_builder_append_null;

/** */
alias garrow_binary_array_builder_append_nulls = c_garrow_binary_array_builder_append_nulls;

/** */
alias garrow_binary_array_builder_append_value = c_garrow_binary_array_builder_append_value;

/** */
alias garrow_binary_array_builder_append_value_bytes = c_garrow_binary_array_builder_append_value_bytes;

/** */
alias garrow_binary_array_builder_append_values = c_garrow_binary_array_builder_append_values;

// BinaryDataType

/** */
alias garrow_binary_data_type_get_type = c_garrow_binary_data_type_get_type;

/** */
alias garrow_binary_data_type_new = c_garrow_binary_data_type_new;

// BinaryDictionaryArrayBuilder

/** */
alias garrow_binary_dictionary_array_builder_get_type = c_garrow_binary_dictionary_array_builder_get_type;

/** */
alias garrow_binary_dictionary_array_builder_new = c_garrow_binary_dictionary_array_builder_new;

/** */
alias garrow_binary_dictionary_array_builder_append_array = c_garrow_binary_dictionary_array_builder_append_array;

/** */
alias garrow_binary_dictionary_array_builder_append_indices = c_garrow_binary_dictionary_array_builder_append_indices;

/** */
alias garrow_binary_dictionary_array_builder_append_null = c_garrow_binary_dictionary_array_builder_append_null;

/** */
alias garrow_binary_dictionary_array_builder_append_value = c_garrow_binary_dictionary_array_builder_append_value;

/** */
alias garrow_binary_dictionary_array_builder_append_value_bytes = c_garrow_binary_dictionary_array_builder_append_value_bytes;

/** */
alias garrow_binary_dictionary_array_builder_finish_delta = c_garrow_binary_dictionary_array_builder_finish_delta;

/** */
alias garrow_binary_dictionary_array_builder_get_dictionary_length = c_garrow_binary_dictionary_array_builder_get_dictionary_length;

/** */
alias garrow_binary_dictionary_array_builder_insert_memo_values = c_garrow_binary_dictionary_array_builder_insert_memo_values;

/** */
alias garrow_binary_dictionary_array_builder_reset_full = c_garrow_binary_dictionary_array_builder_reset_full;

// BinaryScalar

/** */
alias garrow_binary_scalar_get_type = c_garrow_binary_scalar_get_type;

/** */
alias garrow_binary_scalar_new = c_garrow_binary_scalar_new;

// BinaryViewArray

/** */
alias garrow_binary_view_array_get_type = c_garrow_binary_view_array_get_type;

/** */
alias garrow_binary_view_array_new = c_garrow_binary_view_array_new;

/** */
alias garrow_binary_view_array_get_value = c_garrow_binary_view_array_get_value;

// BinaryViewDataType

/** */
alias garrow_binary_view_data_type_get_type = c_garrow_binary_view_data_type_get_type;

/** */
alias garrow_binary_view_data_type_new = c_garrow_binary_view_data_type_new;

// BooleanArray

/** */
alias garrow_boolean_array_get_type = c_garrow_boolean_array_get_type;

/** */
alias garrow_boolean_array_new = c_garrow_boolean_array_new;

/** */
alias garrow_boolean_array_and = c_garrow_boolean_array_and;

/** */
alias garrow_boolean_array_get_value = c_garrow_boolean_array_get_value;

/** */
alias garrow_boolean_array_get_values = c_garrow_boolean_array_get_values;

/** */
alias garrow_boolean_array_invert = c_garrow_boolean_array_invert;

/** */
alias garrow_boolean_array_or = c_garrow_boolean_array_or;

/** */
alias garrow_boolean_array_xor = c_garrow_boolean_array_xor;

// BooleanArrayBuilder

/** */
alias garrow_boolean_array_builder_get_type = c_garrow_boolean_array_builder_get_type;

/** */
alias garrow_boolean_array_builder_new = c_garrow_boolean_array_builder_new;

/** */
alias garrow_boolean_array_builder_append = c_garrow_boolean_array_builder_append;

/** */
alias garrow_boolean_array_builder_append_null = c_garrow_boolean_array_builder_append_null;

/** */
alias garrow_boolean_array_builder_append_nulls = c_garrow_boolean_array_builder_append_nulls;

/** */
alias garrow_boolean_array_builder_append_value = c_garrow_boolean_array_builder_append_value;

/** */
alias garrow_boolean_array_builder_append_values = c_garrow_boolean_array_builder_append_values;

// BooleanDataType

/** */
alias garrow_boolean_data_type_get_type = c_garrow_boolean_data_type_get_type;

/** */
alias garrow_boolean_data_type_new = c_garrow_boolean_data_type_new;

// BooleanScalar

/** */
alias garrow_boolean_scalar_get_type = c_garrow_boolean_scalar_get_type;

/** */
alias garrow_boolean_scalar_new = c_garrow_boolean_scalar_new;

/** */
alias garrow_boolean_scalar_get_value = c_garrow_boolean_scalar_get_value;

// Buffer

/** */
alias garrow_buffer_get_type = c_garrow_buffer_get_type;

/** */
alias garrow_buffer_new = c_garrow_buffer_new;

/** */
alias garrow_buffer_new_bytes = c_garrow_buffer_new_bytes;

/** */
alias garrow_buffer_copy = c_garrow_buffer_copy;

/** */
alias garrow_buffer_equal = c_garrow_buffer_equal;

/** */
alias garrow_buffer_equal_n_bytes = c_garrow_buffer_equal_n_bytes;

/** */
alias garrow_buffer_get_capacity = c_garrow_buffer_get_capacity;

/** */
alias garrow_buffer_get_data = c_garrow_buffer_get_data;

/** */
alias garrow_buffer_get_mutable_data = c_garrow_buffer_get_mutable_data;

/** */
alias garrow_buffer_get_parent = c_garrow_buffer_get_parent;

/** */
alias garrow_buffer_get_size = c_garrow_buffer_get_size;

/** */
alias garrow_buffer_is_mutable = c_garrow_buffer_is_mutable;

/** */
alias garrow_buffer_slice = c_garrow_buffer_slice;

// BufferInputStream

/** */
alias garrow_buffer_input_stream_get_type = c_garrow_buffer_input_stream_get_type;

/** */
alias garrow_buffer_input_stream_new = c_garrow_buffer_input_stream_new;

/** */
alias garrow_buffer_input_stream_get_buffer = c_garrow_buffer_input_stream_get_buffer;

// BufferOutputStream

/** */
alias garrow_buffer_output_stream_get_type = c_garrow_buffer_output_stream_get_type;

/** */
alias garrow_buffer_output_stream_new = c_garrow_buffer_output_stream_new;

// CSVReadOptions

/** */
alias garrow_csv_read_options_get_type = c_garrow_csv_read_options_get_type;

/** */
alias garrow_csv_read_options_new = c_garrow_csv_read_options_new;

/** */
alias garrow_csv_read_options_add_column_name = c_garrow_csv_read_options_add_column_name;

/** */
alias garrow_csv_read_options_add_column_type = c_garrow_csv_read_options_add_column_type;

/** */
alias garrow_csv_read_options_add_false_value = c_garrow_csv_read_options_add_false_value;

/** */
alias garrow_csv_read_options_add_null_value = c_garrow_csv_read_options_add_null_value;

/** */
alias garrow_csv_read_options_add_schema = c_garrow_csv_read_options_add_schema;

/** */
alias garrow_csv_read_options_add_timestamp_parser = c_garrow_csv_read_options_add_timestamp_parser;

/** */
alias garrow_csv_read_options_add_true_value = c_garrow_csv_read_options_add_true_value;

/** */
alias garrow_csv_read_options_get_column_names = c_garrow_csv_read_options_get_column_names;

/** */
alias garrow_csv_read_options_get_column_types = c_garrow_csv_read_options_get_column_types;

/** */
alias garrow_csv_read_options_get_false_values = c_garrow_csv_read_options_get_false_values;

/** */
alias garrow_csv_read_options_get_null_values = c_garrow_csv_read_options_get_null_values;

/** */
alias garrow_csv_read_options_get_timestamp_parsers = c_garrow_csv_read_options_get_timestamp_parsers;

/** */
alias garrow_csv_read_options_get_true_values = c_garrow_csv_read_options_get_true_values;

/** */
alias garrow_csv_read_options_set_column_names = c_garrow_csv_read_options_set_column_names;

/** */
alias garrow_csv_read_options_set_false_values = c_garrow_csv_read_options_set_false_values;

/** */
alias garrow_csv_read_options_set_null_values = c_garrow_csv_read_options_set_null_values;

/** */
alias garrow_csv_read_options_set_timestamp_parsers = c_garrow_csv_read_options_set_timestamp_parsers;

/** */
alias garrow_csv_read_options_set_true_values = c_garrow_csv_read_options_set_true_values;

// CSVReader

/** */
alias garrow_csv_reader_get_type = c_garrow_csv_reader_get_type;

/** */
alias garrow_csv_reader_new = c_garrow_csv_reader_new;

/** */
alias garrow_csv_reader_read = c_garrow_csv_reader_read;

// CSVWriteOptions

/** */
alias garrow_csv_write_options_get_type = c_garrow_csv_write_options_get_type;

/** */
alias garrow_csv_write_options_new = c_garrow_csv_write_options_new;

// CSVWriter

/** */
alias garrow_csv_writer_get_type = c_garrow_csv_writer_get_type;

/** */
alias garrow_csv_writer_new = c_garrow_csv_writer_new;

// CallExpression

/** */
alias garrow_call_expression_get_type = c_garrow_call_expression_get_type;

/** */
alias garrow_call_expression_new = c_garrow_call_expression_new;

/** */
alias garrow_call_expression_get_arguments = c_garrow_call_expression_get_arguments;

// CastOptions

/** */
alias garrow_cast_options_get_type = c_garrow_cast_options_get_type;

/** */
alias garrow_cast_options_new = c_garrow_cast_options_new;

// ChunkedArray

/** */
alias garrow_chunked_array_get_type = c_garrow_chunked_array_get_type;

/** */
alias garrow_chunked_array_new = c_garrow_chunked_array_new;

/** */
alias garrow_chunked_array_new_empty = c_garrow_chunked_array_new_empty;

/** */
alias garrow_chunked_array_import = c_garrow_chunked_array_import;

/** */
alias garrow_chunked_array_combine = c_garrow_chunked_array_combine;

/** */
alias garrow_chunked_array_equal = c_garrow_chunked_array_equal;

/** */
alias garrow_chunked_array_export = c_garrow_chunked_array_export;

/** */
alias garrow_chunked_array_filter = c_garrow_chunked_array_filter;

/** */
alias garrow_chunked_array_filter_chunked_array = c_garrow_chunked_array_filter_chunked_array;

/** */
alias garrow_chunked_array_get_chunk = c_garrow_chunked_array_get_chunk;

/** */
alias garrow_chunked_array_get_chunks = c_garrow_chunked_array_get_chunks;

/** */
alias garrow_chunked_array_get_length = c_garrow_chunked_array_get_length;

/** */
alias garrow_chunked_array_get_n_chunks = c_garrow_chunked_array_get_n_chunks;

/** */
alias garrow_chunked_array_get_n_nulls = c_garrow_chunked_array_get_n_nulls;

/** */
alias garrow_chunked_array_get_n_rows = c_garrow_chunked_array_get_n_rows;

/** */
alias garrow_chunked_array_get_value_data_type = c_garrow_chunked_array_get_value_data_type;

/** */
alias garrow_chunked_array_get_value_type = c_garrow_chunked_array_get_value_type;

/** */
alias garrow_chunked_array_slice = c_garrow_chunked_array_slice;

/** */
alias garrow_chunked_array_sort_indices = c_garrow_chunked_array_sort_indices;

/** */
alias garrow_chunked_array_take = c_garrow_chunked_array_take;

/** */
alias garrow_chunked_array_take_chunked_array = c_garrow_chunked_array_take_chunked_array;

/** */
alias garrow_chunked_array_to_string = c_garrow_chunked_array_to_string;

// ChunkedArrayDatum

/** */
alias garrow_chunked_array_datum_get_type = c_garrow_chunked_array_datum_get_type;

/** */
alias garrow_chunked_array_datum_new = c_garrow_chunked_array_datum_new;

// Codec

/** */
alias garrow_codec_get_type = c_garrow_codec_get_type;

/** */
alias garrow_codec_new = c_garrow_codec_new;

/** */
alias garrow_codec_get_compression_level = c_garrow_codec_get_compression_level;

/** */
alias garrow_codec_get_compression_type = c_garrow_codec_get_compression_type;

/** */
alias garrow_codec_get_name = c_garrow_codec_get_name;

// CompressedInputStream

/** */
alias garrow_compressed_input_stream_get_type = c_garrow_compressed_input_stream_get_type;

/** */
alias garrow_compressed_input_stream_new = c_garrow_compressed_input_stream_new;

// CompressedOutputStream

/** */
alias garrow_compressed_output_stream_get_type = c_garrow_compressed_output_stream_get_type;

/** */
alias garrow_compressed_output_stream_new = c_garrow_compressed_output_stream_new;

// CountOptions

/** */
alias garrow_count_options_get_type = c_garrow_count_options_get_type;

/** */
alias garrow_count_options_new = c_garrow_count_options_new;

// CumulativeOptions

/** */
alias garrow_cumulative_options_get_type = c_garrow_cumulative_options_get_type;

/** */
alias garrow_cumulative_options_new = c_garrow_cumulative_options_new;

// DataType

/** */
alias garrow_data_type_get_type = c_garrow_data_type_get_type;

/** */
alias garrow_data_type_import = c_garrow_data_type_import;

/** */
alias garrow_data_type_equal = c_garrow_data_type_equal;

/** */
alias garrow_data_type_export = c_garrow_data_type_export;

/** */
alias garrow_data_type_get_id = c_garrow_data_type_get_id;

/** */
alias garrow_data_type_get_name = c_garrow_data_type_get_name;

/** */
alias garrow_data_type_to_string = c_garrow_data_type_to_string;

// Date32Array

/** */
alias garrow_date32_array_get_type = c_garrow_date32_array_get_type;

/** */
alias garrow_date32_array_new = c_garrow_date32_array_new;

/** */
alias garrow_date32_array_get_value = c_garrow_date32_array_get_value;

/** */
alias garrow_date32_array_get_values = c_garrow_date32_array_get_values;

// Date32ArrayBuilder

/** */
alias garrow_date32_array_builder_get_type = c_garrow_date32_array_builder_get_type;

/** */
alias garrow_date32_array_builder_new = c_garrow_date32_array_builder_new;

/** */
alias garrow_date32_array_builder_append = c_garrow_date32_array_builder_append;

/** */
alias garrow_date32_array_builder_append_null = c_garrow_date32_array_builder_append_null;

/** */
alias garrow_date32_array_builder_append_nulls = c_garrow_date32_array_builder_append_nulls;

/** */
alias garrow_date32_array_builder_append_value = c_garrow_date32_array_builder_append_value;

/** */
alias garrow_date32_array_builder_append_values = c_garrow_date32_array_builder_append_values;

// Date32DataType

/** */
alias garrow_date32_data_type_get_type = c_garrow_date32_data_type_get_type;

/** */
alias garrow_date32_data_type_new = c_garrow_date32_data_type_new;

// Date32Scalar

/** */
alias garrow_date32_scalar_get_type = c_garrow_date32_scalar_get_type;

/** */
alias garrow_date32_scalar_new = c_garrow_date32_scalar_new;

/** */
alias garrow_date32_scalar_get_value = c_garrow_date32_scalar_get_value;

// Date64Array

/** */
alias garrow_date64_array_get_type = c_garrow_date64_array_get_type;

/** */
alias garrow_date64_array_new = c_garrow_date64_array_new;

/** */
alias garrow_date64_array_get_value = c_garrow_date64_array_get_value;

/** */
alias garrow_date64_array_get_values = c_garrow_date64_array_get_values;

// Date64ArrayBuilder

/** */
alias garrow_date64_array_builder_get_type = c_garrow_date64_array_builder_get_type;

/** */
alias garrow_date64_array_builder_new = c_garrow_date64_array_builder_new;

/** */
alias garrow_date64_array_builder_append = c_garrow_date64_array_builder_append;

/** */
alias garrow_date64_array_builder_append_null = c_garrow_date64_array_builder_append_null;

/** */
alias garrow_date64_array_builder_append_nulls = c_garrow_date64_array_builder_append_nulls;

/** */
alias garrow_date64_array_builder_append_value = c_garrow_date64_array_builder_append_value;

/** */
alias garrow_date64_array_builder_append_values = c_garrow_date64_array_builder_append_values;

// Date64DataType

/** */
alias garrow_date64_data_type_get_type = c_garrow_date64_data_type_get_type;

/** */
alias garrow_date64_data_type_new = c_garrow_date64_data_type_new;

// Date64Scalar

/** */
alias garrow_date64_scalar_get_type = c_garrow_date64_scalar_get_type;

/** */
alias garrow_date64_scalar_new = c_garrow_date64_scalar_new;

/** */
alias garrow_date64_scalar_get_value = c_garrow_date64_scalar_get_value;

// Datum

/** */
alias garrow_datum_get_type = c_garrow_datum_get_type;

/** */
alias garrow_datum_equal = c_garrow_datum_equal;

/** */
alias garrow_datum_is_array = c_garrow_datum_is_array;

/** */
alias garrow_datum_is_array_like = c_garrow_datum_is_array_like;

/** */
alias garrow_datum_is_scalar = c_garrow_datum_is_scalar;

/** */
alias garrow_datum_is_value = c_garrow_datum_is_value;

/** */
alias garrow_datum_to_string = c_garrow_datum_to_string;

// DayMillisecond

/** */
alias garrow_day_millisecond_get_type = c_garrow_day_millisecond_get_type;

/** */
alias garrow_day_millisecond_new = c_garrow_day_millisecond_new;

/** */
alias garrow_day_millisecond_equal = c_garrow_day_millisecond_equal;

/** */
alias garrow_day_millisecond_less_than = c_garrow_day_millisecond_less_than;

// DayOfWeekOptions

/** */
alias garrow_day_of_week_options_get_type = c_garrow_day_of_week_options_get_type;

/** */
alias garrow_day_of_week_options_new = c_garrow_day_of_week_options_new;

// DayTimeIntervalArray

/** */
alias garrow_day_time_interval_array_get_type = c_garrow_day_time_interval_array_get_type;

/** */
alias garrow_day_time_interval_array_new = c_garrow_day_time_interval_array_new;

/** */
alias garrow_day_time_interval_array_get_value = c_garrow_day_time_interval_array_get_value;

/** */
alias garrow_day_time_interval_array_get_values = c_garrow_day_time_interval_array_get_values;

// DayTimeIntervalArrayBuilder

/** */
alias garrow_day_time_interval_array_builder_get_type = c_garrow_day_time_interval_array_builder_get_type;

/** */
alias garrow_day_time_interval_array_builder_new = c_garrow_day_time_interval_array_builder_new;

/** */
alias garrow_day_time_interval_array_builder_append_value = c_garrow_day_time_interval_array_builder_append_value;

/** */
alias garrow_day_time_interval_array_builder_append_values = c_garrow_day_time_interval_array_builder_append_values;

// DayTimeIntervalDataType

/** */
alias garrow_day_time_interval_data_type_get_type = c_garrow_day_time_interval_data_type_get_type;

/** */
alias garrow_day_time_interval_data_type_new = c_garrow_day_time_interval_data_type_new;

// DayTimeIntervalScalar

/** */
alias garrow_day_time_interval_scalar_get_type = c_garrow_day_time_interval_scalar_get_type;

/** */
alias garrow_day_time_interval_scalar_new = c_garrow_day_time_interval_scalar_new;

/** */
alias garrow_day_time_interval_scalar_get_value = c_garrow_day_time_interval_scalar_get_value;

// Decimal128

/** */
alias garrow_decimal128_get_type = c_garrow_decimal128_get_type;

/** */
alias garrow_decimal128_new_integer = c_garrow_decimal128_new_integer;

/** */
alias garrow_decimal128_new_string = c_garrow_decimal128_new_string;

/** */
alias garrow_decimal128_abs = c_garrow_decimal128_abs;

/** */
alias garrow_decimal128_copy = c_garrow_decimal128_copy;

/** */
alias garrow_decimal128_divide = c_garrow_decimal128_divide;

/** */
alias garrow_decimal128_equal = c_garrow_decimal128_equal;

/** */
alias garrow_decimal128_greater_than = c_garrow_decimal128_greater_than;

/** */
alias garrow_decimal128_greater_than_or_equal = c_garrow_decimal128_greater_than_or_equal;

/** */
alias garrow_decimal128_less_than = c_garrow_decimal128_less_than;

/** */
alias garrow_decimal128_less_than_or_equal = c_garrow_decimal128_less_than_or_equal;

/** */
alias garrow_decimal128_minus = c_garrow_decimal128_minus;

/** */
alias garrow_decimal128_multiply = c_garrow_decimal128_multiply;

/** */
alias garrow_decimal128_negate = c_garrow_decimal128_negate;

/** */
alias garrow_decimal128_not_equal = c_garrow_decimal128_not_equal;

/** */
alias garrow_decimal128_plus = c_garrow_decimal128_plus;

/** */
alias garrow_decimal128_rescale = c_garrow_decimal128_rescale;

/** */
alias garrow_decimal128_to_bytes = c_garrow_decimal128_to_bytes;

/** */
alias garrow_decimal128_to_integer = c_garrow_decimal128_to_integer;

/** */
alias garrow_decimal128_to_string = c_garrow_decimal128_to_string;

/** */
alias garrow_decimal128_to_string_scale = c_garrow_decimal128_to_string_scale;

// Decimal128Array

/** */
alias garrow_decimal128_array_get_type = c_garrow_decimal128_array_get_type;

/** */
alias garrow_decimal128_array_format_value = c_garrow_decimal128_array_format_value;

/** */
alias garrow_decimal128_array_get_value = c_garrow_decimal128_array_get_value;

// Decimal128ArrayBuilder

/** */
alias garrow_decimal128_array_builder_get_type = c_garrow_decimal128_array_builder_get_type;

/** */
alias garrow_decimal128_array_builder_new = c_garrow_decimal128_array_builder_new;

/** */
alias garrow_decimal128_array_builder_append = c_garrow_decimal128_array_builder_append;

/** */
alias garrow_decimal128_array_builder_append_null = c_garrow_decimal128_array_builder_append_null;

/** */
alias garrow_decimal128_array_builder_append_value = c_garrow_decimal128_array_builder_append_value;

/** */
alias garrow_decimal128_array_builder_append_values = c_garrow_decimal128_array_builder_append_values;

// Decimal128DataType

/** */
alias garrow_decimal128_data_type_get_type = c_garrow_decimal128_data_type_get_type;

/** */
alias garrow_decimal128_data_type_new = c_garrow_decimal128_data_type_new;

/** */
alias garrow_decimal128_data_type_max_precision = c_garrow_decimal128_data_type_max_precision;

// Decimal128Scalar

/** */
alias garrow_decimal128_scalar_get_type = c_garrow_decimal128_scalar_get_type;

/** */
alias garrow_decimal128_scalar_new = c_garrow_decimal128_scalar_new;

/** */
alias garrow_decimal128_scalar_get_value = c_garrow_decimal128_scalar_get_value;

// Decimal256

/** */
alias garrow_decimal256_get_type = c_garrow_decimal256_get_type;

/** */
alias garrow_decimal256_new_integer = c_garrow_decimal256_new_integer;

/** */
alias garrow_decimal256_new_string = c_garrow_decimal256_new_string;

/** */
alias garrow_decimal256_abs = c_garrow_decimal256_abs;

/** */
alias garrow_decimal256_copy = c_garrow_decimal256_copy;

/** */
alias garrow_decimal256_divide = c_garrow_decimal256_divide;

/** */
alias garrow_decimal256_equal = c_garrow_decimal256_equal;

/** */
alias garrow_decimal256_greater_than = c_garrow_decimal256_greater_than;

/** */
alias garrow_decimal256_greater_than_or_equal = c_garrow_decimal256_greater_than_or_equal;

/** */
alias garrow_decimal256_less_than = c_garrow_decimal256_less_than;

/** */
alias garrow_decimal256_less_than_or_equal = c_garrow_decimal256_less_than_or_equal;

/** */
alias garrow_decimal256_multiply = c_garrow_decimal256_multiply;

/** */
alias garrow_decimal256_negate = c_garrow_decimal256_negate;

/** */
alias garrow_decimal256_not_equal = c_garrow_decimal256_not_equal;

/** */
alias garrow_decimal256_plus = c_garrow_decimal256_plus;

/** */
alias garrow_decimal256_rescale = c_garrow_decimal256_rescale;

/** */
alias garrow_decimal256_to_bytes = c_garrow_decimal256_to_bytes;

/** */
alias garrow_decimal256_to_string = c_garrow_decimal256_to_string;

/** */
alias garrow_decimal256_to_string_scale = c_garrow_decimal256_to_string_scale;

// Decimal256Array

/** */
alias garrow_decimal256_array_get_type = c_garrow_decimal256_array_get_type;

/** */
alias garrow_decimal256_array_format_value = c_garrow_decimal256_array_format_value;

/** */
alias garrow_decimal256_array_get_value = c_garrow_decimal256_array_get_value;

// Decimal256ArrayBuilder

/** */
alias garrow_decimal256_array_builder_get_type = c_garrow_decimal256_array_builder_get_type;

/** */
alias garrow_decimal256_array_builder_new = c_garrow_decimal256_array_builder_new;

/** */
alias garrow_decimal256_array_builder_append_value = c_garrow_decimal256_array_builder_append_value;

/** */
alias garrow_decimal256_array_builder_append_values = c_garrow_decimal256_array_builder_append_values;

// Decimal256DataType

/** */
alias garrow_decimal256_data_type_get_type = c_garrow_decimal256_data_type_get_type;

/** */
alias garrow_decimal256_data_type_new = c_garrow_decimal256_data_type_new;

/** */
alias garrow_decimal256_data_type_max_precision = c_garrow_decimal256_data_type_max_precision;

// Decimal256Scalar

/** */
alias garrow_decimal256_scalar_get_type = c_garrow_decimal256_scalar_get_type;

/** */
alias garrow_decimal256_scalar_new = c_garrow_decimal256_scalar_new;

/** */
alias garrow_decimal256_scalar_get_value = c_garrow_decimal256_scalar_get_value;

// Decimal32

/** */
alias garrow_decimal32_get_type = c_garrow_decimal32_get_type;

/** */
alias garrow_decimal32_new_integer = c_garrow_decimal32_new_integer;

/** */
alias garrow_decimal32_new_string = c_garrow_decimal32_new_string;

/** */
alias garrow_decimal32_abs = c_garrow_decimal32_abs;

/** */
alias garrow_decimal32_copy = c_garrow_decimal32_copy;

/** */
alias garrow_decimal32_divide = c_garrow_decimal32_divide;

/** */
alias garrow_decimal32_equal = c_garrow_decimal32_equal;

/** */
alias garrow_decimal32_greater_than = c_garrow_decimal32_greater_than;

/** */
alias garrow_decimal32_greater_than_or_equal = c_garrow_decimal32_greater_than_or_equal;

/** */
alias garrow_decimal32_less_than = c_garrow_decimal32_less_than;

/** */
alias garrow_decimal32_less_than_or_equal = c_garrow_decimal32_less_than_or_equal;

/** */
alias garrow_decimal32_minus = c_garrow_decimal32_minus;

/** */
alias garrow_decimal32_multiply = c_garrow_decimal32_multiply;

/** */
alias garrow_decimal32_negate = c_garrow_decimal32_negate;

/** */
alias garrow_decimal32_not_equal = c_garrow_decimal32_not_equal;

/** */
alias garrow_decimal32_plus = c_garrow_decimal32_plus;

/** */
alias garrow_decimal32_rescale = c_garrow_decimal32_rescale;

/** */
alias garrow_decimal32_to_bytes = c_garrow_decimal32_to_bytes;

/** */
alias garrow_decimal32_to_integer = c_garrow_decimal32_to_integer;

/** */
alias garrow_decimal32_to_string = c_garrow_decimal32_to_string;

/** */
alias garrow_decimal32_to_string_scale = c_garrow_decimal32_to_string_scale;

// Decimal32Array

/** */
alias garrow_decimal32_array_get_type = c_garrow_decimal32_array_get_type;

/** */
alias garrow_decimal32_array_format_value = c_garrow_decimal32_array_format_value;

/** */
alias garrow_decimal32_array_get_value = c_garrow_decimal32_array_get_value;

// Decimal32ArrayBuilder

/** */
alias garrow_decimal32_array_builder_get_type = c_garrow_decimal32_array_builder_get_type;

/** */
alias garrow_decimal32_array_builder_new = c_garrow_decimal32_array_builder_new;

/** */
alias garrow_decimal32_array_builder_append_value = c_garrow_decimal32_array_builder_append_value;

/** */
alias garrow_decimal32_array_builder_append_values = c_garrow_decimal32_array_builder_append_values;

// Decimal32DataType

/** */
alias garrow_decimal32_data_type_get_type = c_garrow_decimal32_data_type_get_type;

/** */
alias garrow_decimal32_data_type_new = c_garrow_decimal32_data_type_new;

/** */
alias garrow_decimal32_data_type_max_precision = c_garrow_decimal32_data_type_max_precision;

// Decimal32Scalar

/** */
alias garrow_decimal32_scalar_get_type = c_garrow_decimal32_scalar_get_type;

/** */
alias garrow_decimal32_scalar_new = c_garrow_decimal32_scalar_new;

/** */
alias garrow_decimal32_scalar_get_value = c_garrow_decimal32_scalar_get_value;

// Decimal64

/** */
alias garrow_decimal64_get_type = c_garrow_decimal64_get_type;

/** */
alias garrow_decimal64_new_integer = c_garrow_decimal64_new_integer;

/** */
alias garrow_decimal64_new_string = c_garrow_decimal64_new_string;

/** */
alias garrow_decimal64_abs = c_garrow_decimal64_abs;

/** */
alias garrow_decimal64_copy = c_garrow_decimal64_copy;

/** */
alias garrow_decimal64_divide = c_garrow_decimal64_divide;

/** */
alias garrow_decimal64_equal = c_garrow_decimal64_equal;

/** */
alias garrow_decimal64_greater_than = c_garrow_decimal64_greater_than;

/** */
alias garrow_decimal64_greater_than_or_equal = c_garrow_decimal64_greater_than_or_equal;

/** */
alias garrow_decimal64_less_than = c_garrow_decimal64_less_than;

/** */
alias garrow_decimal64_less_than_or_equal = c_garrow_decimal64_less_than_or_equal;

/** */
alias garrow_decimal64_minus = c_garrow_decimal64_minus;

/** */
alias garrow_decimal64_multiply = c_garrow_decimal64_multiply;

/** */
alias garrow_decimal64_negate = c_garrow_decimal64_negate;

/** */
alias garrow_decimal64_not_equal = c_garrow_decimal64_not_equal;

/** */
alias garrow_decimal64_plus = c_garrow_decimal64_plus;

/** */
alias garrow_decimal64_rescale = c_garrow_decimal64_rescale;

/** */
alias garrow_decimal64_to_bytes = c_garrow_decimal64_to_bytes;

/** */
alias garrow_decimal64_to_integer = c_garrow_decimal64_to_integer;

/** */
alias garrow_decimal64_to_string = c_garrow_decimal64_to_string;

/** */
alias garrow_decimal64_to_string_scale = c_garrow_decimal64_to_string_scale;

// Decimal64Array

/** */
alias garrow_decimal64_array_get_type = c_garrow_decimal64_array_get_type;

/** */
alias garrow_decimal64_array_format_value = c_garrow_decimal64_array_format_value;

/** */
alias garrow_decimal64_array_get_value = c_garrow_decimal64_array_get_value;

// Decimal64ArrayBuilder

/** */
alias garrow_decimal64_array_builder_get_type = c_garrow_decimal64_array_builder_get_type;

/** */
alias garrow_decimal64_array_builder_new = c_garrow_decimal64_array_builder_new;

/** */
alias garrow_decimal64_array_builder_append_value = c_garrow_decimal64_array_builder_append_value;

/** */
alias garrow_decimal64_array_builder_append_values = c_garrow_decimal64_array_builder_append_values;

// Decimal64DataType

/** */
alias garrow_decimal64_data_type_get_type = c_garrow_decimal64_data_type_get_type;

/** */
alias garrow_decimal64_data_type_new = c_garrow_decimal64_data_type_new;

/** */
alias garrow_decimal64_data_type_max_precision = c_garrow_decimal64_data_type_max_precision;

// Decimal64Scalar

/** */
alias garrow_decimal64_scalar_get_type = c_garrow_decimal64_scalar_get_type;

/** */
alias garrow_decimal64_scalar_new = c_garrow_decimal64_scalar_new;

/** */
alias garrow_decimal64_scalar_get_value = c_garrow_decimal64_scalar_get_value;

// DecimalDataType

/** */
alias garrow_decimal_data_type_get_type = c_garrow_decimal_data_type_get_type;

/** */
alias garrow_decimal_data_type_new = c_garrow_decimal_data_type_new;

/** */
alias garrow_decimal_data_type_get_precision = c_garrow_decimal_data_type_get_precision;

/** */
alias garrow_decimal_data_type_get_scale = c_garrow_decimal_data_type_get_scale;

// DenseUnionArray

/** */
alias garrow_dense_union_array_get_type = c_garrow_dense_union_array_get_type;

/** */
alias garrow_dense_union_array_new = c_garrow_dense_union_array_new;

/** */
alias garrow_dense_union_array_new_data_type = c_garrow_dense_union_array_new_data_type;

/** */
alias garrow_dense_union_array_get_value_offset = c_garrow_dense_union_array_get_value_offset;

// DenseUnionArrayBuilder

/** */
alias garrow_dense_union_array_builder_get_type = c_garrow_dense_union_array_builder_get_type;

/** */
alias garrow_dense_union_array_builder_new = c_garrow_dense_union_array_builder_new;

// DenseUnionDataType

/** */
alias garrow_dense_union_data_type_get_type = c_garrow_dense_union_data_type_get_type;

/** */
alias garrow_dense_union_data_type_new = c_garrow_dense_union_data_type_new;

// DenseUnionScalar

/** */
alias garrow_dense_union_scalar_get_type = c_garrow_dense_union_scalar_get_type;

/** */
alias garrow_dense_union_scalar_new = c_garrow_dense_union_scalar_new;

// DictionaryArray

/** */
alias garrow_dictionary_array_get_type = c_garrow_dictionary_array_get_type;

/** */
alias garrow_dictionary_array_new = c_garrow_dictionary_array_new;

/** */
alias garrow_dictionary_array_get_dictionary = c_garrow_dictionary_array_get_dictionary;

/** */
alias garrow_dictionary_array_get_dictionary_data_type = c_garrow_dictionary_array_get_dictionary_data_type;

/** */
alias garrow_dictionary_array_get_indices = c_garrow_dictionary_array_get_indices;

// DictionaryDataType

/** */
alias garrow_dictionary_data_type_get_type = c_garrow_dictionary_data_type_get_type;

/** */
alias garrow_dictionary_data_type_new = c_garrow_dictionary_data_type_new;

/** */
alias garrow_dictionary_data_type_get_index_data_type = c_garrow_dictionary_data_type_get_index_data_type;

/** */
alias garrow_dictionary_data_type_get_value_data_type = c_garrow_dictionary_data_type_get_value_data_type;

/** */
alias garrow_dictionary_data_type_is_ordered = c_garrow_dictionary_data_type_is_ordered;

// DictionaryEncodeOptions

/** */
alias garrow_dictionary_encode_options_get_type = c_garrow_dictionary_encode_options_get_type;

/** */
alias garrow_dictionary_encode_options_new = c_garrow_dictionary_encode_options_new;

// DoubleArray

/** */
alias garrow_double_array_get_type = c_garrow_double_array_get_type;

/** */
alias garrow_double_array_new = c_garrow_double_array_new;

/** */
alias garrow_double_array_get_value = c_garrow_double_array_get_value;

/** */
alias garrow_double_array_get_values = c_garrow_double_array_get_values;

/** */
alias garrow_double_array_sum = c_garrow_double_array_sum;

// DoubleArrayBuilder

/** */
alias garrow_double_array_builder_get_type = c_garrow_double_array_builder_get_type;

/** */
alias garrow_double_array_builder_new = c_garrow_double_array_builder_new;

/** */
alias garrow_double_array_builder_append = c_garrow_double_array_builder_append;

/** */
alias garrow_double_array_builder_append_null = c_garrow_double_array_builder_append_null;

/** */
alias garrow_double_array_builder_append_nulls = c_garrow_double_array_builder_append_nulls;

/** */
alias garrow_double_array_builder_append_value = c_garrow_double_array_builder_append_value;

/** */
alias garrow_double_array_builder_append_values = c_garrow_double_array_builder_append_values;

// DoubleDataType

/** */
alias garrow_double_data_type_get_type = c_garrow_double_data_type_get_type;

/** */
alias garrow_double_data_type_new = c_garrow_double_data_type_new;

// DoubleScalar

/** */
alias garrow_double_scalar_get_type = c_garrow_double_scalar_get_type;

/** */
alias garrow_double_scalar_new = c_garrow_double_scalar_new;

/** */
alias garrow_double_scalar_get_value = c_garrow_double_scalar_get_value;

// DurationArray

/** */
alias garrow_duration_array_get_type = c_garrow_duration_array_get_type;

/** */
alias garrow_duration_array_new = c_garrow_duration_array_new;

/** */
alias garrow_duration_array_get_value = c_garrow_duration_array_get_value;

/** */
alias garrow_duration_array_get_values = c_garrow_duration_array_get_values;

// DurationArrayBuilder

/** */
alias garrow_duration_array_builder_get_type = c_garrow_duration_array_builder_get_type;

/** */
alias garrow_duration_array_builder_new = c_garrow_duration_array_builder_new;

/** */
alias garrow_duration_array_builder_append_value = c_garrow_duration_array_builder_append_value;

/** */
alias garrow_duration_array_builder_append_values = c_garrow_duration_array_builder_append_values;

// DurationDataType

/** */
alias garrow_duration_data_type_get_type = c_garrow_duration_data_type_get_type;

/** */
alias garrow_duration_data_type_new = c_garrow_duration_data_type_new;

/** */
alias garrow_duration_data_type_get_unit = c_garrow_duration_data_type_get_unit;

// DurationScalar

/** */
alias garrow_duration_scalar_get_type = c_garrow_duration_scalar_get_type;

/** */
alias garrow_duration_scalar_new = c_garrow_duration_scalar_new;

/** */
alias garrow_duration_scalar_get_value = c_garrow_duration_scalar_get_value;

// ElementWiseAggregateOptions

/** */
alias garrow_element_wise_aggregate_options_get_type = c_garrow_element_wise_aggregate_options_get_type;

/** */
alias garrow_element_wise_aggregate_options_new = c_garrow_element_wise_aggregate_options_new;

// EqualOptions

/** */
alias garrow_equal_options_get_type = c_garrow_equal_options_get_type;

/** */
alias garrow_equal_options_new = c_garrow_equal_options_new;

/** */
alias garrow_equal_options_is_approx = c_garrow_equal_options_is_approx;

// ExecuteContext

/** */
alias garrow_execute_context_get_type = c_garrow_execute_context_get_type;

/** */
alias garrow_execute_context_new = c_garrow_execute_context_new;

// ExecuteNode

/** */
alias garrow_execute_node_get_type = c_garrow_execute_node_get_type;

/** */
alias garrow_execute_node_get_kind_name = c_garrow_execute_node_get_kind_name;

/** */
alias garrow_execute_node_get_output_schema = c_garrow_execute_node_get_output_schema;

// ExecuteNodeOptions

/** */
alias garrow_execute_node_options_get_type = c_garrow_execute_node_options_get_type;

// ExecutePlan

/** */
alias garrow_execute_plan_get_type = c_garrow_execute_plan_get_type;

/** */
alias garrow_execute_plan_new = c_garrow_execute_plan_new;

/** */
alias garrow_execute_plan_build_aggregate_node = c_garrow_execute_plan_build_aggregate_node;

/** */
alias garrow_execute_plan_build_filter_node = c_garrow_execute_plan_build_filter_node;

/** */
alias garrow_execute_plan_build_hash_join_node = c_garrow_execute_plan_build_hash_join_node;

/** */
alias garrow_execute_plan_build_node = c_garrow_execute_plan_build_node;

/** */
alias garrow_execute_plan_build_project_node = c_garrow_execute_plan_build_project_node;

/** */
alias garrow_execute_plan_build_sink_node = c_garrow_execute_plan_build_sink_node;

/** */
alias garrow_execute_plan_build_source_node = c_garrow_execute_plan_build_source_node;

/** */
alias garrow_execute_plan_get_nodes = c_garrow_execute_plan_get_nodes;

/** */
alias garrow_execute_plan_start = c_garrow_execute_plan_start;

/** */
alias garrow_execute_plan_stop = c_garrow_execute_plan_stop;

/** */
alias garrow_execute_plan_validate = c_garrow_execute_plan_validate;

/** */
alias garrow_execute_plan_wait = c_garrow_execute_plan_wait;

// Executor

/** */
alias garrow_executor_get_type = c_garrow_executor_get_type;

// Expression

/** */
alias garrow_expression_get_type = c_garrow_expression_get_type;

/** */
alias garrow_expression_equal = c_garrow_expression_equal;

/** */
alias garrow_expression_to_string = c_garrow_expression_to_string;

// ExtensionArray

/** */
alias garrow_extension_array_get_type = c_garrow_extension_array_get_type;

/** */
alias garrow_extension_array_get_storage = c_garrow_extension_array_get_storage;

// ExtensionDataType

/** */
alias garrow_extension_data_type_get_type = c_garrow_extension_data_type_get_type;

/** */
alias garrow_extension_data_type_get_extension_name = c_garrow_extension_data_type_get_extension_name;

/** */
alias garrow_extension_data_type_wrap_array = c_garrow_extension_data_type_wrap_array;

/** */
alias garrow_extension_data_type_wrap_chunked_array = c_garrow_extension_data_type_wrap_chunked_array;

// ExtensionDataTypeRegistry

/** */
alias garrow_extension_data_type_registry_get_type = c_garrow_extension_data_type_registry_get_type;

/** */
alias garrow_extension_data_type_registry_default = c_garrow_extension_data_type_registry_default;

/** */
alias garrow_extension_data_type_registry_lookup = c_garrow_extension_data_type_registry_lookup;

/** */
alias garrow_extension_data_type_registry_register = c_garrow_extension_data_type_registry_register;

/** */
alias garrow_extension_data_type_registry_unregister = c_garrow_extension_data_type_registry_unregister;

// ExtensionScalar

/** */
alias garrow_extension_scalar_get_type = c_garrow_extension_scalar_get_type;

// ExtractRegexOptions

/** */
alias garrow_extract_regex_options_get_type = c_garrow_extract_regex_options_get_type;

/** */
alias garrow_extract_regex_options_new = c_garrow_extract_regex_options_new;

// ExtractRegexSpanOptions

/** */
alias garrow_extract_regex_span_options_get_type = c_garrow_extract_regex_span_options_get_type;

/** */
alias garrow_extract_regex_span_options_new = c_garrow_extract_regex_span_options_new;

// FeatherFileReader

/** */
alias garrow_feather_file_reader_get_type = c_garrow_feather_file_reader_get_type;

/** */
alias garrow_feather_file_reader_new = c_garrow_feather_file_reader_new;

/** */
alias garrow_feather_file_reader_get_version = c_garrow_feather_file_reader_get_version;

/** */
alias garrow_feather_file_reader_read = c_garrow_feather_file_reader_read;

/** */
alias garrow_feather_file_reader_read_indices = c_garrow_feather_file_reader_read_indices;

/** */
alias garrow_feather_file_reader_read_names = c_garrow_feather_file_reader_read_names;

// FeatherWriteProperties

/** */
alias garrow_feather_write_properties_get_type = c_garrow_feather_write_properties_get_type;

/** */
alias garrow_feather_write_properties_new = c_garrow_feather_write_properties_new;

// Field

/** */
alias garrow_field_get_type = c_garrow_field_get_type;

/** */
alias garrow_field_new = c_garrow_field_new;

/** */
alias garrow_field_new_full = c_garrow_field_new_full;

/** */
alias garrow_field_import = c_garrow_field_import;

/** */
alias garrow_field_equal = c_garrow_field_equal;

/** */
alias garrow_field_export = c_garrow_field_export;

/** */
alias garrow_field_get_data_type = c_garrow_field_get_data_type;

/** */
alias garrow_field_get_metadata = c_garrow_field_get_metadata;

/** */
alias garrow_field_get_name = c_garrow_field_get_name;

/** */
alias garrow_field_has_metadata = c_garrow_field_has_metadata;

/** */
alias garrow_field_is_nullable = c_garrow_field_is_nullable;

/** */
alias garrow_field_remove_metadata = c_garrow_field_remove_metadata;

/** */
alias garrow_field_to_string = c_garrow_field_to_string;

/** */
alias garrow_field_to_string_metadata = c_garrow_field_to_string_metadata;

/** */
alias garrow_field_with_merged_metadata = c_garrow_field_with_merged_metadata;

/** */
alias garrow_field_with_metadata = c_garrow_field_with_metadata;

// FieldExpression

/** */
alias garrow_field_expression_get_type = c_garrow_field_expression_get_type;

/** */
alias garrow_field_expression_new = c_garrow_field_expression_new;

// File

/** */
alias garrow_file_get_type = c_garrow_file_get_type;

/** */
alias garrow_file_close = c_garrow_file_close;

/** */
alias garrow_file_get_mode = c_garrow_file_get_mode;

/** */
alias garrow_file_is_closed = c_garrow_file_is_closed;

/** */
alias garrow_file_tell = c_garrow_file_tell;

// FileInfo

/** */
alias garrow_file_info_get_type = c_garrow_file_info_get_type;

/** */
alias garrow_file_info_new = c_garrow_file_info_new;

/** */
alias garrow_file_info_equal = c_garrow_file_info_equal;

/** */
alias garrow_file_info_is_dir = c_garrow_file_info_is_dir;

/** */
alias garrow_file_info_is_file = c_garrow_file_info_is_file;

/** */
alias garrow_file_info_to_string = c_garrow_file_info_to_string;

// FileInputStream

/** */
alias garrow_file_input_stream_get_type = c_garrow_file_input_stream_get_type;

/** */
alias garrow_file_input_stream_new = c_garrow_file_input_stream_new;

/** */
alias garrow_file_input_stream_new_file_descriptor = c_garrow_file_input_stream_new_file_descriptor;

/** */
alias garrow_file_input_stream_get_file_descriptor = c_garrow_file_input_stream_get_file_descriptor;

// FileOutputStream

/** */
alias garrow_file_output_stream_get_type = c_garrow_file_output_stream_get_type;

/** */
alias garrow_file_output_stream_new = c_garrow_file_output_stream_new;

// FileSelector

/** */
alias garrow_file_selector_get_type = c_garrow_file_selector_get_type;

// FileSystem

/** */
alias garrow_file_system_get_type = c_garrow_file_system_get_type;

/** */
alias garrow_file_system_create = c_garrow_file_system_create;

/** */
alias garrow_file_system_copy_file = c_garrow_file_system_copy_file;

/** */
alias garrow_file_system_create_dir = c_garrow_file_system_create_dir;

/** */
alias garrow_file_system_delete_dir = c_garrow_file_system_delete_dir;

/** */
alias garrow_file_system_delete_dir_contents = c_garrow_file_system_delete_dir_contents;

/** */
alias garrow_file_system_delete_file = c_garrow_file_system_delete_file;

/** */
alias garrow_file_system_delete_files = c_garrow_file_system_delete_files;

/** */
alias garrow_file_system_get_file_info = c_garrow_file_system_get_file_info;

/** */
alias garrow_file_system_get_file_infos_paths = c_garrow_file_system_get_file_infos_paths;

/** */
alias garrow_file_system_get_file_infos_selector = c_garrow_file_system_get_file_infos_selector;

/** */
alias garrow_file_system_get_type_name = c_garrow_file_system_get_type_name;

/** */
alias garrow_file_system_move = c_garrow_file_system_move;

/** */
alias garrow_file_system_open_append_stream = c_garrow_file_system_open_append_stream;

/** */
alias garrow_file_system_open_input_file = c_garrow_file_system_open_input_file;

/** */
alias garrow_file_system_open_input_stream = c_garrow_file_system_open_input_stream;

/** */
alias garrow_file_system_open_output_stream = c_garrow_file_system_open_output_stream;

// FilterNodeOptions

/** */
alias garrow_filter_node_options_get_type = c_garrow_filter_node_options_get_type;

/** */
alias garrow_filter_node_options_new = c_garrow_filter_node_options_new;

// FilterOptions

/** */
alias garrow_filter_options_get_type = c_garrow_filter_options_get_type;

/** */
alias garrow_filter_options_new = c_garrow_filter_options_new;

// FixedShapeTensorDataType

/** */
alias garrow_fixed_shape_tensor_data_type_get_type = c_garrow_fixed_shape_tensor_data_type_get_type;

/** */
alias garrow_fixed_shape_tensor_data_type_new = c_garrow_fixed_shape_tensor_data_type_new;

/** */
alias garrow_fixed_shape_tensor_data_type_get_dim_names = c_garrow_fixed_shape_tensor_data_type_get_dim_names;

/** */
alias garrow_fixed_shape_tensor_data_type_get_permutation = c_garrow_fixed_shape_tensor_data_type_get_permutation;

/** */
alias garrow_fixed_shape_tensor_data_type_get_shape = c_garrow_fixed_shape_tensor_data_type_get_shape;

/** */
alias garrow_fixed_shape_tensor_data_type_get_strides = c_garrow_fixed_shape_tensor_data_type_get_strides;

// FixedSizeBinaryArray

/** */
alias garrow_fixed_size_binary_array_get_type = c_garrow_fixed_size_binary_array_get_type;

/** */
alias garrow_fixed_size_binary_array_new = c_garrow_fixed_size_binary_array_new;

/** */
alias garrow_fixed_size_binary_array_get_byte_width = c_garrow_fixed_size_binary_array_get_byte_width;

/** */
alias garrow_fixed_size_binary_array_get_value = c_garrow_fixed_size_binary_array_get_value;

/** */
alias garrow_fixed_size_binary_array_get_values_bytes = c_garrow_fixed_size_binary_array_get_values_bytes;

// FixedSizeBinaryArrayBuilder

/** */
alias garrow_fixed_size_binary_array_builder_get_type = c_garrow_fixed_size_binary_array_builder_get_type;

/** */
alias garrow_fixed_size_binary_array_builder_new = c_garrow_fixed_size_binary_array_builder_new;

/** */
alias garrow_fixed_size_binary_array_builder_append_value = c_garrow_fixed_size_binary_array_builder_append_value;

/** */
alias garrow_fixed_size_binary_array_builder_append_value_bytes = c_garrow_fixed_size_binary_array_builder_append_value_bytes;

/** */
alias garrow_fixed_size_binary_array_builder_append_values = c_garrow_fixed_size_binary_array_builder_append_values;

/** */
alias garrow_fixed_size_binary_array_builder_append_values_packed = c_garrow_fixed_size_binary_array_builder_append_values_packed;

// FixedSizeBinaryDataType

/** */
alias garrow_fixed_size_binary_data_type_get_type = c_garrow_fixed_size_binary_data_type_get_type;

/** */
alias garrow_fixed_size_binary_data_type_new = c_garrow_fixed_size_binary_data_type_new;

/** */
alias garrow_fixed_size_binary_data_type_get_byte_width = c_garrow_fixed_size_binary_data_type_get_byte_width;

// FixedSizeBinaryScalar

/** */
alias garrow_fixed_size_binary_scalar_get_type = c_garrow_fixed_size_binary_scalar_get_type;

/** */
alias garrow_fixed_size_binary_scalar_new = c_garrow_fixed_size_binary_scalar_new;

// FixedSizeListArray

/** */
alias garrow_fixed_size_list_array_get_type = c_garrow_fixed_size_list_array_get_type;

/** */
alias garrow_fixed_size_list_array_new = c_garrow_fixed_size_list_array_new;

/** */
alias garrow_fixed_size_list_array_get_list_size = c_garrow_fixed_size_list_array_get_list_size;

/** */
alias garrow_fixed_size_list_array_get_value = c_garrow_fixed_size_list_array_get_value;

/** */
alias garrow_fixed_size_list_array_get_value_length = c_garrow_fixed_size_list_array_get_value_length;

/** */
alias garrow_fixed_size_list_array_get_value_offset = c_garrow_fixed_size_list_array_get_value_offset;

/** */
alias garrow_fixed_size_list_array_get_value_type = c_garrow_fixed_size_list_array_get_value_type;

/** */
alias garrow_fixed_size_list_array_get_values = c_garrow_fixed_size_list_array_get_values;

// FixedSizeListArrayBuilder

/** */
alias garrow_fixed_size_list_array_builder_get_type = c_garrow_fixed_size_list_array_builder_get_type;

/** */
alias garrow_fixed_size_list_array_builder_new = c_garrow_fixed_size_list_array_builder_new;

/** */
alias garrow_fixed_size_list_array_builder_append_value = c_garrow_fixed_size_list_array_builder_append_value;

/** */
alias garrow_fixed_size_list_array_builder_get_value_builder = c_garrow_fixed_size_list_array_builder_get_value_builder;

// FixedSizeListDataType

/** */
alias garrow_fixed_size_list_data_type_get_type = c_garrow_fixed_size_list_data_type_get_type;

/** */
alias garrow_fixed_size_list_data_type_new_data_type = c_garrow_fixed_size_list_data_type_new_data_type;

/** */
alias garrow_fixed_size_list_data_type_new_field = c_garrow_fixed_size_list_data_type_new_field;

// FixedWidthDataType

/** */
alias garrow_fixed_width_data_type_get_type = c_garrow_fixed_width_data_type_get_type;

/** */
alias garrow_fixed_width_data_type_get_bit_width = c_garrow_fixed_width_data_type_get_bit_width;

// FloatArray

/** */
alias garrow_float_array_get_type = c_garrow_float_array_get_type;

/** */
alias garrow_float_array_new = c_garrow_float_array_new;

/** */
alias garrow_float_array_get_value = c_garrow_float_array_get_value;

/** */
alias garrow_float_array_get_values = c_garrow_float_array_get_values;

/** */
alias garrow_float_array_sum = c_garrow_float_array_sum;

// FloatArrayBuilder

/** */
alias garrow_float_array_builder_get_type = c_garrow_float_array_builder_get_type;

/** */
alias garrow_float_array_builder_new = c_garrow_float_array_builder_new;

/** */
alias garrow_float_array_builder_append = c_garrow_float_array_builder_append;

/** */
alias garrow_float_array_builder_append_null = c_garrow_float_array_builder_append_null;

/** */
alias garrow_float_array_builder_append_nulls = c_garrow_float_array_builder_append_nulls;

/** */
alias garrow_float_array_builder_append_value = c_garrow_float_array_builder_append_value;

/** */
alias garrow_float_array_builder_append_values = c_garrow_float_array_builder_append_values;

// FloatDataType

/** */
alias garrow_float_data_type_get_type = c_garrow_float_data_type_get_type;

/** */
alias garrow_float_data_type_new = c_garrow_float_data_type_new;

// FloatScalar

/** */
alias garrow_float_scalar_get_type = c_garrow_float_scalar_get_type;

/** */
alias garrow_float_scalar_new = c_garrow_float_scalar_new;

/** */
alias garrow_float_scalar_get_value = c_garrow_float_scalar_get_value;

// FloatingPointDataType

/** */
alias garrow_floating_point_data_type_get_type = c_garrow_floating_point_data_type_get_type;

// Function

/** */
alias garrow_function_get_type = c_garrow_function_get_type;

/** */
alias garrow_function_all = c_garrow_function_all;

/** */
alias garrow_function_find = c_garrow_function_find;

/** */
alias garrow_function_equal = c_garrow_function_equal;

/** */
alias garrow_function_execute = c_garrow_function_execute;

/** */
alias garrow_function_get_default_options = c_garrow_function_get_default_options;

/** */
alias garrow_function_get_doc = c_garrow_function_get_doc;

/** */
alias garrow_function_get_name = c_garrow_function_get_name;

/** */
alias garrow_function_get_options_type = c_garrow_function_get_options_type;

/** */
alias garrow_function_to_string = c_garrow_function_to_string;

// FunctionDoc

/** */
alias garrow_function_doc_get_type = c_garrow_function_doc_get_type;

/** */
alias garrow_function_doc_get_arg_names = c_garrow_function_doc_get_arg_names;

/** */
alias garrow_function_doc_get_description = c_garrow_function_doc_get_description;

/** */
alias garrow_function_doc_get_options_class_name = c_garrow_function_doc_get_options_class_name;

/** */
alias garrow_function_doc_get_summary = c_garrow_function_doc_get_summary;

// FunctionOptions

/** */
alias garrow_function_options_get_type = c_garrow_function_options_get_type;

/** */
alias garrow_function_options_equal = c_garrow_function_options_equal;

/** */
alias garrow_function_options_to_string = c_garrow_function_options_to_string;

// GCSFileSystem

/** */
alias garrow_gcs_file_system_get_type = c_garrow_gcs_file_system_get_type;

// GIOInputStream

/** */
alias garrow_gio_input_stream_get_type = c_garrow_gio_input_stream_get_type;

/** */
alias garrow_gio_input_stream_new = c_garrow_gio_input_stream_new;

/** */
alias garrow_gio_input_stream_get_raw = c_garrow_gio_input_stream_get_raw;

// GIOOutputStream

/** */
alias garrow_gio_output_stream_get_type = c_garrow_gio_output_stream_get_type;

/** */
alias garrow_gio_output_stream_new = c_garrow_gio_output_stream_new;

/** */
alias garrow_gio_output_stream_get_raw = c_garrow_gio_output_stream_get_raw;

// HDFSFileSystem

/** */
alias garrow_hdfs_file_system_get_type = c_garrow_hdfs_file_system_get_type;

// HalfFloatArray

/** */
alias garrow_half_float_array_get_type = c_garrow_half_float_array_get_type;

/** */
alias garrow_half_float_array_new = c_garrow_half_float_array_new;

/** */
alias garrow_half_float_array_get_value = c_garrow_half_float_array_get_value;

/** */
alias garrow_half_float_array_get_values = c_garrow_half_float_array_get_values;

// HalfFloatArrayBuilder

/** */
alias garrow_half_float_array_builder_get_type = c_garrow_half_float_array_builder_get_type;

/** */
alias garrow_half_float_array_builder_new = c_garrow_half_float_array_builder_new;

/** */
alias garrow_half_float_array_builder_append_value = c_garrow_half_float_array_builder_append_value;

/** */
alias garrow_half_float_array_builder_append_values = c_garrow_half_float_array_builder_append_values;

// HalfFloatDataType

/** */
alias garrow_half_float_data_type_get_type = c_garrow_half_float_data_type_get_type;

/** */
alias garrow_half_float_data_type_new = c_garrow_half_float_data_type_new;

// HalfFloatScalar

/** */
alias garrow_half_float_scalar_get_type = c_garrow_half_float_scalar_get_type;

/** */
alias garrow_half_float_scalar_new = c_garrow_half_float_scalar_new;

/** */
alias garrow_half_float_scalar_get_value = c_garrow_half_float_scalar_get_value;

// HashJoinNodeOptions

/** */
alias garrow_hash_join_node_options_get_type = c_garrow_hash_join_node_options_get_type;

/** */
alias garrow_hash_join_node_options_new = c_garrow_hash_join_node_options_new;

/** */
alias garrow_hash_join_node_options_set_left_outputs = c_garrow_hash_join_node_options_set_left_outputs;

/** */
alias garrow_hash_join_node_options_set_right_outputs = c_garrow_hash_join_node_options_set_right_outputs;

// ISO8601TimestampParser

/** */
alias garrow_iso8601_timestamp_parser_get_type = c_garrow_iso8601_timestamp_parser_get_type;

/** */
alias garrow_iso8601_timestamp_parser_new = c_garrow_iso8601_timestamp_parser_new;

// IndexOptions

/** */
alias garrow_index_options_get_type = c_garrow_index_options_get_type;

/** */
alias garrow_index_options_new = c_garrow_index_options_new;

// InputStream

/** */
alias garrow_input_stream_get_type = c_garrow_input_stream_get_type;

/** */
alias garrow_input_stream_advance = c_garrow_input_stream_advance;

/** */
alias garrow_input_stream_align = c_garrow_input_stream_align;

/** */
alias garrow_input_stream_read_record_batch = c_garrow_input_stream_read_record_batch;

/** */
alias garrow_input_stream_read_tensor = c_garrow_input_stream_read_tensor;

// Int16Array

/** */
alias garrow_int16_array_get_type = c_garrow_int16_array_get_type;

/** */
alias garrow_int16_array_new = c_garrow_int16_array_new;

/** */
alias garrow_int16_array_get_value = c_garrow_int16_array_get_value;

/** */
alias garrow_int16_array_get_values = c_garrow_int16_array_get_values;

/** */
alias garrow_int16_array_sum = c_garrow_int16_array_sum;

// Int16ArrayBuilder

/** */
alias garrow_int16_array_builder_get_type = c_garrow_int16_array_builder_get_type;

/** */
alias garrow_int16_array_builder_new = c_garrow_int16_array_builder_new;

/** */
alias garrow_int16_array_builder_append = c_garrow_int16_array_builder_append;

/** */
alias garrow_int16_array_builder_append_null = c_garrow_int16_array_builder_append_null;

/** */
alias garrow_int16_array_builder_append_nulls = c_garrow_int16_array_builder_append_nulls;

/** */
alias garrow_int16_array_builder_append_value = c_garrow_int16_array_builder_append_value;

/** */
alias garrow_int16_array_builder_append_values = c_garrow_int16_array_builder_append_values;

// Int16DataType

/** */
alias garrow_int16_data_type_get_type = c_garrow_int16_data_type_get_type;

/** */
alias garrow_int16_data_type_new = c_garrow_int16_data_type_new;

// Int16Scalar

/** */
alias garrow_int16_scalar_get_type = c_garrow_int16_scalar_get_type;

/** */
alias garrow_int16_scalar_new = c_garrow_int16_scalar_new;

/** */
alias garrow_int16_scalar_get_value = c_garrow_int16_scalar_get_value;

// Int32Array

/** */
alias garrow_int32_array_get_type = c_garrow_int32_array_get_type;

/** */
alias garrow_int32_array_new = c_garrow_int32_array_new;

/** */
alias garrow_int32_array_get_value = c_garrow_int32_array_get_value;

/** */
alias garrow_int32_array_get_values = c_garrow_int32_array_get_values;

/** */
alias garrow_int32_array_sum = c_garrow_int32_array_sum;

// Int32ArrayBuilder

/** */
alias garrow_int32_array_builder_get_type = c_garrow_int32_array_builder_get_type;

/** */
alias garrow_int32_array_builder_new = c_garrow_int32_array_builder_new;

/** */
alias garrow_int32_array_builder_append = c_garrow_int32_array_builder_append;

/** */
alias garrow_int32_array_builder_append_null = c_garrow_int32_array_builder_append_null;

/** */
alias garrow_int32_array_builder_append_nulls = c_garrow_int32_array_builder_append_nulls;

/** */
alias garrow_int32_array_builder_append_value = c_garrow_int32_array_builder_append_value;

/** */
alias garrow_int32_array_builder_append_values = c_garrow_int32_array_builder_append_values;

// Int32DataType

/** */
alias garrow_int32_data_type_get_type = c_garrow_int32_data_type_get_type;

/** */
alias garrow_int32_data_type_new = c_garrow_int32_data_type_new;

// Int32Scalar

/** */
alias garrow_int32_scalar_get_type = c_garrow_int32_scalar_get_type;

/** */
alias garrow_int32_scalar_new = c_garrow_int32_scalar_new;

/** */
alias garrow_int32_scalar_get_value = c_garrow_int32_scalar_get_value;

// Int64Array

/** */
alias garrow_int64_array_get_type = c_garrow_int64_array_get_type;

/** */
alias garrow_int64_array_new = c_garrow_int64_array_new;

/** */
alias garrow_int64_array_get_value = c_garrow_int64_array_get_value;

/** */
alias garrow_int64_array_get_values = c_garrow_int64_array_get_values;

/** */
alias garrow_int64_array_sum = c_garrow_int64_array_sum;

// Int64ArrayBuilder

/** */
alias garrow_int64_array_builder_get_type = c_garrow_int64_array_builder_get_type;

/** */
alias garrow_int64_array_builder_new = c_garrow_int64_array_builder_new;

/** */
alias garrow_int64_array_builder_append = c_garrow_int64_array_builder_append;

/** */
alias garrow_int64_array_builder_append_null = c_garrow_int64_array_builder_append_null;

/** */
alias garrow_int64_array_builder_append_nulls = c_garrow_int64_array_builder_append_nulls;

/** */
alias garrow_int64_array_builder_append_value = c_garrow_int64_array_builder_append_value;

/** */
alias garrow_int64_array_builder_append_values = c_garrow_int64_array_builder_append_values;

// Int64DataType

/** */
alias garrow_int64_data_type_get_type = c_garrow_int64_data_type_get_type;

/** */
alias garrow_int64_data_type_new = c_garrow_int64_data_type_new;

// Int64Scalar

/** */
alias garrow_int64_scalar_get_type = c_garrow_int64_scalar_get_type;

/** */
alias garrow_int64_scalar_new = c_garrow_int64_scalar_new;

/** */
alias garrow_int64_scalar_get_value = c_garrow_int64_scalar_get_value;

// Int8Array

/** */
alias garrow_int8_array_get_type = c_garrow_int8_array_get_type;

/** */
alias garrow_int8_array_new = c_garrow_int8_array_new;

/** */
alias garrow_int8_array_get_value = c_garrow_int8_array_get_value;

/** */
alias garrow_int8_array_get_values = c_garrow_int8_array_get_values;

/** */
alias garrow_int8_array_sum = c_garrow_int8_array_sum;

// Int8ArrayBuilder

/** */
alias garrow_int8_array_builder_get_type = c_garrow_int8_array_builder_get_type;

/** */
alias garrow_int8_array_builder_new = c_garrow_int8_array_builder_new;

/** */
alias garrow_int8_array_builder_append = c_garrow_int8_array_builder_append;

/** */
alias garrow_int8_array_builder_append_null = c_garrow_int8_array_builder_append_null;

/** */
alias garrow_int8_array_builder_append_nulls = c_garrow_int8_array_builder_append_nulls;

/** */
alias garrow_int8_array_builder_append_value = c_garrow_int8_array_builder_append_value;

/** */
alias garrow_int8_array_builder_append_values = c_garrow_int8_array_builder_append_values;

// Int8DataType

/** */
alias garrow_int8_data_type_get_type = c_garrow_int8_data_type_get_type;

/** */
alias garrow_int8_data_type_new = c_garrow_int8_data_type_new;

// Int8Scalar

/** */
alias garrow_int8_scalar_get_type = c_garrow_int8_scalar_get_type;

/** */
alias garrow_int8_scalar_new = c_garrow_int8_scalar_new;

/** */
alias garrow_int8_scalar_get_value = c_garrow_int8_scalar_get_value;

// IntArrayBuilder

/** */
alias garrow_int_array_builder_get_type = c_garrow_int_array_builder_get_type;

/** */
alias garrow_int_array_builder_new = c_garrow_int_array_builder_new;

/** */
alias garrow_int_array_builder_append = c_garrow_int_array_builder_append;

/** */
alias garrow_int_array_builder_append_null = c_garrow_int_array_builder_append_null;

/** */
alias garrow_int_array_builder_append_nulls = c_garrow_int_array_builder_append_nulls;

/** */
alias garrow_int_array_builder_append_value = c_garrow_int_array_builder_append_value;

/** */
alias garrow_int_array_builder_append_values = c_garrow_int_array_builder_append_values;

// IntegerDataType

/** */
alias garrow_integer_data_type_get_type = c_garrow_integer_data_type_get_type;

/** */
alias garrow_integer_data_type_is_signed = c_garrow_integer_data_type_is_signed;

// IntervalDataType

/** */
alias garrow_interval_data_type_get_type = c_garrow_interval_data_type_get_type;

/** */
alias garrow_interval_data_type_get_interval_type = c_garrow_interval_data_type_get_interval_type;

// JSONReadOptions

/** */
alias garrow_json_read_options_get_type = c_garrow_json_read_options_get_type;

/** */
alias garrow_json_read_options_new = c_garrow_json_read_options_new;

// JSONReader

/** */
alias garrow_json_reader_get_type = c_garrow_json_reader_get_type;

/** */
alias garrow_json_reader_new = c_garrow_json_reader_new;

/** */
alias garrow_json_reader_read = c_garrow_json_reader_read;

// JoinOptions

/** */
alias garrow_join_options_get_type = c_garrow_join_options_get_type;

/** */
alias garrow_join_options_new = c_garrow_join_options_new;

// LargeBinaryArray

/** */
alias garrow_large_binary_array_get_type = c_garrow_large_binary_array_get_type;

/** */
alias garrow_large_binary_array_new = c_garrow_large_binary_array_new;

/** */
alias garrow_large_binary_array_get_buffer = c_garrow_large_binary_array_get_buffer;

/** */
alias garrow_large_binary_array_get_data_buffer = c_garrow_large_binary_array_get_data_buffer;

/** */
alias garrow_large_binary_array_get_offsets_buffer = c_garrow_large_binary_array_get_offsets_buffer;

/** */
alias garrow_large_binary_array_get_value = c_garrow_large_binary_array_get_value;

// LargeBinaryArrayBuilder

/** */
alias garrow_large_binary_array_builder_get_type = c_garrow_large_binary_array_builder_get_type;

/** */
alias garrow_large_binary_array_builder_new = c_garrow_large_binary_array_builder_new;

/** */
alias garrow_large_binary_array_builder_append_null = c_garrow_large_binary_array_builder_append_null;

/** */
alias garrow_large_binary_array_builder_append_nulls = c_garrow_large_binary_array_builder_append_nulls;

/** */
alias garrow_large_binary_array_builder_append_value = c_garrow_large_binary_array_builder_append_value;

/** */
alias garrow_large_binary_array_builder_append_value_bytes = c_garrow_large_binary_array_builder_append_value_bytes;

/** */
alias garrow_large_binary_array_builder_append_values = c_garrow_large_binary_array_builder_append_values;

// LargeBinaryDataType

/** */
alias garrow_large_binary_data_type_get_type = c_garrow_large_binary_data_type_get_type;

/** */
alias garrow_large_binary_data_type_new = c_garrow_large_binary_data_type_new;

// LargeBinaryScalar

/** */
alias garrow_large_binary_scalar_get_type = c_garrow_large_binary_scalar_get_type;

/** */
alias garrow_large_binary_scalar_new = c_garrow_large_binary_scalar_new;

// LargeListArray

/** */
alias garrow_large_list_array_get_type = c_garrow_large_list_array_get_type;

/** */
alias garrow_large_list_array_new = c_garrow_large_list_array_new;

/** */
alias garrow_large_list_array_get_value = c_garrow_large_list_array_get_value;

/** */
alias garrow_large_list_array_get_value_length = c_garrow_large_list_array_get_value_length;

/** */
alias garrow_large_list_array_get_value_offset = c_garrow_large_list_array_get_value_offset;

/** */
alias garrow_large_list_array_get_value_offsets = c_garrow_large_list_array_get_value_offsets;

/** */
alias garrow_large_list_array_get_value_offsets_buffer = c_garrow_large_list_array_get_value_offsets_buffer;

/** */
alias garrow_large_list_array_get_value_type = c_garrow_large_list_array_get_value_type;

/** */
alias garrow_large_list_array_get_values = c_garrow_large_list_array_get_values;

// LargeListArrayBuilder

/** */
alias garrow_large_list_array_builder_get_type = c_garrow_large_list_array_builder_get_type;

/** */
alias garrow_large_list_array_builder_new = c_garrow_large_list_array_builder_new;

/** */
alias garrow_large_list_array_builder_append_null = c_garrow_large_list_array_builder_append_null;

/** */
alias garrow_large_list_array_builder_append_value = c_garrow_large_list_array_builder_append_value;

/** */
alias garrow_large_list_array_builder_get_value_builder = c_garrow_large_list_array_builder_get_value_builder;

// LargeListDataType

/** */
alias garrow_large_list_data_type_get_type = c_garrow_large_list_data_type_get_type;

/** */
alias garrow_large_list_data_type_new = c_garrow_large_list_data_type_new;

/** */
alias garrow_large_list_data_type_get_field = c_garrow_large_list_data_type_get_field;

// LargeListScalar

/** */
alias garrow_large_list_scalar_get_type = c_garrow_large_list_scalar_get_type;

/** */
alias garrow_large_list_scalar_new = c_garrow_large_list_scalar_new;

// LargeStringArray

/** */
alias garrow_large_string_array_get_type = c_garrow_large_string_array_get_type;

/** */
alias garrow_large_string_array_new = c_garrow_large_string_array_new;

/** */
alias garrow_large_string_array_get_string = c_garrow_large_string_array_get_string;

// LargeStringArrayBuilder

/** */
alias garrow_large_string_array_builder_get_type = c_garrow_large_string_array_builder_get_type;

/** */
alias garrow_large_string_array_builder_new = c_garrow_large_string_array_builder_new;

/** */
alias garrow_large_string_array_builder_append_string = c_garrow_large_string_array_builder_append_string;

/** */
alias garrow_large_string_array_builder_append_string_len = c_garrow_large_string_array_builder_append_string_len;

/** */
alias garrow_large_string_array_builder_append_strings = c_garrow_large_string_array_builder_append_strings;

// LargeStringDataType

/** */
alias garrow_large_string_data_type_get_type = c_garrow_large_string_data_type_get_type;

/** */
alias garrow_large_string_data_type_new = c_garrow_large_string_data_type_new;

// LargeStringScalar

/** */
alias garrow_large_string_scalar_get_type = c_garrow_large_string_scalar_get_type;

/** */
alias garrow_large_string_scalar_new = c_garrow_large_string_scalar_new;

// ListArray

/** */
alias garrow_list_array_get_type = c_garrow_list_array_get_type;

/** */
alias garrow_list_array_new = c_garrow_list_array_new;

/** */
alias garrow_list_array_get_value = c_garrow_list_array_get_value;

/** */
alias garrow_list_array_get_value_length = c_garrow_list_array_get_value_length;

/** */
alias garrow_list_array_get_value_offset = c_garrow_list_array_get_value_offset;

/** */
alias garrow_list_array_get_value_offsets = c_garrow_list_array_get_value_offsets;

/** */
alias garrow_list_array_get_value_offsets_buffer = c_garrow_list_array_get_value_offsets_buffer;

/** */
alias garrow_list_array_get_value_type = c_garrow_list_array_get_value_type;

/** */
alias garrow_list_array_get_values = c_garrow_list_array_get_values;

// ListArrayBuilder

/** */
alias garrow_list_array_builder_get_type = c_garrow_list_array_builder_get_type;

/** */
alias garrow_list_array_builder_new = c_garrow_list_array_builder_new;

/** */
alias garrow_list_array_builder_append = c_garrow_list_array_builder_append;

/** */
alias garrow_list_array_builder_append_null = c_garrow_list_array_builder_append_null;

/** */
alias garrow_list_array_builder_append_value = c_garrow_list_array_builder_append_value;

/** */
alias garrow_list_array_builder_get_value_builder = c_garrow_list_array_builder_get_value_builder;

// ListDataType

/** */
alias garrow_list_data_type_get_type = c_garrow_list_data_type_get_type;

/** */
alias garrow_list_data_type_new = c_garrow_list_data_type_new;

/** */
alias garrow_list_data_type_get_field = c_garrow_list_data_type_get_field;

/** */
alias garrow_list_data_type_get_value_field = c_garrow_list_data_type_get_value_field;

// ListFlattenOptions

/** */
alias garrow_list_flatten_options_get_type = c_garrow_list_flatten_options_get_type;

/** */
alias garrow_list_flatten_options_new = c_garrow_list_flatten_options_new;

// ListScalar

/** */
alias garrow_list_scalar_get_type = c_garrow_list_scalar_get_type;

/** */
alias garrow_list_scalar_new = c_garrow_list_scalar_new;

// ListSliceOptions

/** */
alias garrow_list_slice_options_get_type = c_garrow_list_slice_options_get_type;

/** */
alias garrow_list_slice_options_new = c_garrow_list_slice_options_new;

// LiteralExpression

/** */
alias garrow_literal_expression_get_type = c_garrow_literal_expression_get_type;

/** */
alias garrow_literal_expression_new = c_garrow_literal_expression_new;

// LocalFileSystem

/** */
alias garrow_local_file_system_get_type = c_garrow_local_file_system_get_type;

/** */
alias garrow_local_file_system_new = c_garrow_local_file_system_new;

// LocalFileSystemOptions

/** */
alias garrow_local_file_system_options_get_type = c_garrow_local_file_system_options_get_type;

/** */
alias garrow_local_file_system_options_new = c_garrow_local_file_system_options_new;

// MakeStructOptions

/** */
alias garrow_make_struct_options_get_type = c_garrow_make_struct_options_get_type;

/** */
alias garrow_make_struct_options_new = c_garrow_make_struct_options_new;

/** */
alias garrow_make_struct_options_add_field = c_garrow_make_struct_options_add_field;

// MapArray

/** */
alias garrow_map_array_get_type = c_garrow_map_array_get_type;

/** */
alias garrow_map_array_new = c_garrow_map_array_new;

/** */
alias garrow_map_array_get_items = c_garrow_map_array_get_items;

/** */
alias garrow_map_array_get_keys = c_garrow_map_array_get_keys;

// MapArrayBuilder

/** */
alias garrow_map_array_builder_get_type = c_garrow_map_array_builder_get_type;

/** */
alias garrow_map_array_builder_new = c_garrow_map_array_builder_new;

/** */
alias garrow_map_array_builder_append_null = c_garrow_map_array_builder_append_null;

/** */
alias garrow_map_array_builder_append_nulls = c_garrow_map_array_builder_append_nulls;

/** */
alias garrow_map_array_builder_append_value = c_garrow_map_array_builder_append_value;

/** */
alias garrow_map_array_builder_append_values = c_garrow_map_array_builder_append_values;

/** */
alias garrow_map_array_builder_get_item_builder = c_garrow_map_array_builder_get_item_builder;

/** */
alias garrow_map_array_builder_get_key_builder = c_garrow_map_array_builder_get_key_builder;

/** */
alias garrow_map_array_builder_get_value_builder = c_garrow_map_array_builder_get_value_builder;

// MapDataType

/** */
alias garrow_map_data_type_get_type = c_garrow_map_data_type_get_type;

/** */
alias garrow_map_data_type_new = c_garrow_map_data_type_new;

/** */
alias garrow_map_data_type_get_item_type = c_garrow_map_data_type_get_item_type;

/** */
alias garrow_map_data_type_get_key_type = c_garrow_map_data_type_get_key_type;

/** */
alias garrow_map_data_type_is_keys_sorted = c_garrow_map_data_type_is_keys_sorted;

// MapLookupOptions

/** */
alias garrow_map_lookup_options_get_type = c_garrow_map_lookup_options_get_type;

/** */
alias garrow_map_lookup_options_new = c_garrow_map_lookup_options_new;

// MapScalar

/** */
alias garrow_map_scalar_get_type = c_garrow_map_scalar_get_type;

/** */
alias garrow_map_scalar_new = c_garrow_map_scalar_new;

// MatchSubstringOptions

/** */
alias garrow_match_substring_options_get_type = c_garrow_match_substring_options_get_type;

/** */
alias garrow_match_substring_options_new = c_garrow_match_substring_options_new;

// MemoryMappedInputStream

/** */
alias garrow_memory_mapped_input_stream_get_type = c_garrow_memory_mapped_input_stream_get_type;

/** */
alias garrow_memory_mapped_input_stream_new = c_garrow_memory_mapped_input_stream_new;

// MemoryPool

/** */
alias garrow_memory_pool_get_type = c_garrow_memory_pool_get_type;

/** */
alias garrow_memory_pool_default = c_garrow_memory_pool_default;

/** */
alias garrow_memory_pool_get_backend_name = c_garrow_memory_pool_get_backend_name;

/** */
alias garrow_memory_pool_get_bytes_allocated = c_garrow_memory_pool_get_bytes_allocated;

/** */
alias garrow_memory_pool_get_max_memory = c_garrow_memory_pool_get_max_memory;

// MockFileSystem

/** */
alias garrow_mock_file_system_get_type = c_garrow_mock_file_system_get_type;

// ModeOptions

/** */
alias garrow_mode_options_get_type = c_garrow_mode_options_get_type;

/** */
alias garrow_mode_options_new = c_garrow_mode_options_new;

// MonthDayNano

/** */
alias garrow_month_day_nano_get_type = c_garrow_month_day_nano_get_type;

/** */
alias garrow_month_day_nano_new = c_garrow_month_day_nano_new;

/** */
alias garrow_month_day_nano_equal = c_garrow_month_day_nano_equal;

// MonthDayNanoIntervalArray

/** */
alias garrow_month_day_nano_interval_array_get_type = c_garrow_month_day_nano_interval_array_get_type;

/** */
alias garrow_month_day_nano_interval_array_new = c_garrow_month_day_nano_interval_array_new;

/** */
alias garrow_month_day_nano_interval_array_get_value = c_garrow_month_day_nano_interval_array_get_value;

/** */
alias garrow_month_day_nano_interval_array_get_values = c_garrow_month_day_nano_interval_array_get_values;

// MonthDayNanoIntervalArrayBuilder

/** */
alias garrow_month_day_nano_interval_array_builder_get_type = c_garrow_month_day_nano_interval_array_builder_get_type;

/** */
alias garrow_month_day_nano_interval_array_builder_new = c_garrow_month_day_nano_interval_array_builder_new;

/** */
alias garrow_month_day_nano_interval_array_builder_append_value = c_garrow_month_day_nano_interval_array_builder_append_value;

/** */
alias garrow_month_day_nano_interval_array_builder_append_values = c_garrow_month_day_nano_interval_array_builder_append_values;

// MonthDayNanoIntervalDataType

/** */
alias garrow_month_day_nano_interval_data_type_get_type = c_garrow_month_day_nano_interval_data_type_get_type;

/** */
alias garrow_month_day_nano_interval_data_type_new = c_garrow_month_day_nano_interval_data_type_new;

// MonthDayNanoIntervalScalar

/** */
alias garrow_month_day_nano_interval_scalar_get_type = c_garrow_month_day_nano_interval_scalar_get_type;

/** */
alias garrow_month_day_nano_interval_scalar_new = c_garrow_month_day_nano_interval_scalar_new;

/** */
alias garrow_month_day_nano_interval_scalar_get_value = c_garrow_month_day_nano_interval_scalar_get_value;

// MonthIntervalArray

/** */
alias garrow_month_interval_array_get_type = c_garrow_month_interval_array_get_type;

/** */
alias garrow_month_interval_array_new = c_garrow_month_interval_array_new;

/** */
alias garrow_month_interval_array_get_value = c_garrow_month_interval_array_get_value;

/** */
alias garrow_month_interval_array_get_values = c_garrow_month_interval_array_get_values;

// MonthIntervalArrayBuilder

/** */
alias garrow_month_interval_array_builder_get_type = c_garrow_month_interval_array_builder_get_type;

/** */
alias garrow_month_interval_array_builder_new = c_garrow_month_interval_array_builder_new;

/** */
alias garrow_month_interval_array_builder_append_value = c_garrow_month_interval_array_builder_append_value;

/** */
alias garrow_month_interval_array_builder_append_values = c_garrow_month_interval_array_builder_append_values;

// MonthIntervalDataType

/** */
alias garrow_month_interval_data_type_get_type = c_garrow_month_interval_data_type_get_type;

/** */
alias garrow_month_interval_data_type_new = c_garrow_month_interval_data_type_new;

// MonthIntervalScalar

/** */
alias garrow_month_interval_scalar_get_type = c_garrow_month_interval_scalar_get_type;

/** */
alias garrow_month_interval_scalar_new = c_garrow_month_interval_scalar_new;

/** */
alias garrow_month_interval_scalar_get_value = c_garrow_month_interval_scalar_get_value;

// MutableBuffer

/** */
alias garrow_mutable_buffer_get_type = c_garrow_mutable_buffer_get_type;

/** */
alias garrow_mutable_buffer_new = c_garrow_mutable_buffer_new;

/** */
alias garrow_mutable_buffer_new_bytes = c_garrow_mutable_buffer_new_bytes;

/** */
alias garrow_mutable_buffer_set_data = c_garrow_mutable_buffer_set_data;

/** */
alias garrow_mutable_buffer_slice = c_garrow_mutable_buffer_slice;

// NullArray

/** */
alias garrow_null_array_get_type = c_garrow_null_array_get_type;

/** */
alias garrow_null_array_new = c_garrow_null_array_new;

// NullArrayBuilder

/** */
alias garrow_null_array_builder_get_type = c_garrow_null_array_builder_get_type;

/** */
alias garrow_null_array_builder_new = c_garrow_null_array_builder_new;

/** */
alias garrow_null_array_builder_append_null = c_garrow_null_array_builder_append_null;

/** */
alias garrow_null_array_builder_append_nulls = c_garrow_null_array_builder_append_nulls;

// NullDataType

/** */
alias garrow_null_data_type_get_type = c_garrow_null_data_type_get_type;

/** */
alias garrow_null_data_type_new = c_garrow_null_data_type_new;

// NullOptions

/** */
alias garrow_null_options_get_type = c_garrow_null_options_get_type;

/** */
alias garrow_null_options_new = c_garrow_null_options_new;

// NullScalar

/** */
alias garrow_null_scalar_get_type = c_garrow_null_scalar_get_type;

/** */
alias garrow_null_scalar_new = c_garrow_null_scalar_new;

// NumericArray

/** */
alias garrow_numeric_array_get_type = c_garrow_numeric_array_get_type;

/** */
alias garrow_numeric_array_mean = c_garrow_numeric_array_mean;

// NumericDataType

/** */
alias garrow_numeric_data_type_get_type = c_garrow_numeric_data_type_get_type;

// ORCFileReader

/** */
alias garrow_orc_file_reader_get_type = c_garrow_orc_file_reader_get_type;

/** */
alias garrow_orc_file_reader_new = c_garrow_orc_file_reader_new;

/** */
alias garrow_orc_file_reader_get_field_indexes = c_garrow_orc_file_reader_get_field_indexes;

/** */
alias garrow_orc_file_reader_get_field_indices = c_garrow_orc_file_reader_get_field_indices;

/** */
alias garrow_orc_file_reader_get_n_rows = c_garrow_orc_file_reader_get_n_rows;

/** */
alias garrow_orc_file_reader_get_n_stripes = c_garrow_orc_file_reader_get_n_stripes;

/** */
alias garrow_orc_file_reader_read_stripe = c_garrow_orc_file_reader_read_stripe;

/** */
alias garrow_orc_file_reader_read_stripes = c_garrow_orc_file_reader_read_stripes;

/** */
alias garrow_orc_file_reader_read_type = c_garrow_orc_file_reader_read_type;

/** */
alias garrow_orc_file_reader_set_field_indexes = c_garrow_orc_file_reader_set_field_indexes;

/** */
alias garrow_orc_file_reader_set_field_indices = c_garrow_orc_file_reader_set_field_indices;

// OutputStream

/** */
alias garrow_output_stream_get_type = c_garrow_output_stream_get_type;

/** */
alias garrow_output_stream_align = c_garrow_output_stream_align;

/** */
alias garrow_output_stream_write_record_batch = c_garrow_output_stream_write_record_batch;

/** */
alias garrow_output_stream_write_tensor = c_garrow_output_stream_write_tensor;

// PadOptions

/** */
alias garrow_pad_options_get_type = c_garrow_pad_options_get_type;

/** */
alias garrow_pad_options_new = c_garrow_pad_options_new;

// PairwiseOptions

/** */
alias garrow_pairwise_options_get_type = c_garrow_pairwise_options_get_type;

/** */
alias garrow_pairwise_options_new = c_garrow_pairwise_options_new;

// PartitionNthOptions

/** */
alias garrow_partition_nth_options_get_type = c_garrow_partition_nth_options_get_type;

/** */
alias garrow_partition_nth_options_new = c_garrow_partition_nth_options_new;

// PivotWiderOptions

/** */
alias garrow_pivot_wider_options_get_type = c_garrow_pivot_wider_options_get_type;

/** */
alias garrow_pivot_wider_options_new = c_garrow_pivot_wider_options_new;

// PrimitiveArray

/** */
alias garrow_primitive_array_get_type = c_garrow_primitive_array_get_type;

/** */
alias garrow_primitive_array_get_buffer = c_garrow_primitive_array_get_buffer;

/** */
alias garrow_primitive_array_get_data_buffer = c_garrow_primitive_array_get_data_buffer;

// ProjectNodeOptions

/** */
alias garrow_project_node_options_get_type = c_garrow_project_node_options_get_type;

/** */
alias garrow_project_node_options_new = c_garrow_project_node_options_new;

/** */
alias garrow_project_node_options_get_expressions = c_garrow_project_node_options_get_expressions;

// QuantileOptions

/** */
alias garrow_quantile_options_get_type = c_garrow_quantile_options_get_type;

/** */
alias garrow_quantile_options_new = c_garrow_quantile_options_new;

/** */
alias garrow_quantile_options_get_qs = c_garrow_quantile_options_get_qs;

/** */
alias garrow_quantile_options_set_q = c_garrow_quantile_options_set_q;

/** */
alias garrow_quantile_options_set_qs = c_garrow_quantile_options_set_qs;

// RankOptions

/** */
alias garrow_rank_options_get_type = c_garrow_rank_options_get_type;

/** */
alias garrow_rank_options_new = c_garrow_rank_options_new;

/** */
alias garrow_rank_options_add_sort_key = c_garrow_rank_options_add_sort_key;

/** */
alias garrow_rank_options_equal = c_garrow_rank_options_equal;

/** */
alias garrow_rank_options_get_sort_keys = c_garrow_rank_options_get_sort_keys;

/** */
alias garrow_rank_options_set_sort_keys = c_garrow_rank_options_set_sort_keys;

// RankQuantileOptions

/** */
alias garrow_rank_quantile_options_get_type = c_garrow_rank_quantile_options_get_type;

/** */
alias garrow_rank_quantile_options_new = c_garrow_rank_quantile_options_new;

/** */
alias garrow_rank_quantile_options_add_sort_key = c_garrow_rank_quantile_options_add_sort_key;

/** */
alias garrow_rank_quantile_options_get_sort_keys = c_garrow_rank_quantile_options_get_sort_keys;

/** */
alias garrow_rank_quantile_options_set_sort_keys = c_garrow_rank_quantile_options_set_sort_keys;

// ReadOptions

/** */
alias garrow_read_options_get_type = c_garrow_read_options_get_type;

/** */
alias garrow_read_options_new = c_garrow_read_options_new;

/** */
alias garrow_read_options_get_included_fields = c_garrow_read_options_get_included_fields;

/** */
alias garrow_read_options_set_included_fields = c_garrow_read_options_set_included_fields;

// Readable

/** */
alias garrow_readable_get_type = c_garrow_readable_get_type;

/** */
alias garrow_readable_read = c_garrow_readable_read;

/** */
alias garrow_readable_read_bytes = c_garrow_readable_read_bytes;

// RecordBatch

/** */
alias garrow_record_batch_get_type = c_garrow_record_batch_get_type;

/** */
alias garrow_record_batch_new = c_garrow_record_batch_new;

/** */
alias garrow_record_batch_import = c_garrow_record_batch_import;

/** */
alias garrow_record_batch_add_column = c_garrow_record_batch_add_column;

/** */
alias garrow_record_batch_equal = c_garrow_record_batch_equal;

/** */
alias garrow_record_batch_equal_metadata = c_garrow_record_batch_equal_metadata;

/** */
alias garrow_record_batch_export = c_garrow_record_batch_export;

/** */
alias garrow_record_batch_filter = c_garrow_record_batch_filter;

/** */
alias garrow_record_batch_get_column_data = c_garrow_record_batch_get_column_data;

/** */
alias garrow_record_batch_get_column_name = c_garrow_record_batch_get_column_name;

/** */
alias garrow_record_batch_get_n_columns = c_garrow_record_batch_get_n_columns;

/** */
alias garrow_record_batch_get_n_rows = c_garrow_record_batch_get_n_rows;

/** */
alias garrow_record_batch_get_schema = c_garrow_record_batch_get_schema;

/** */
alias garrow_record_batch_remove_column = c_garrow_record_batch_remove_column;

/** */
alias garrow_record_batch_serialize = c_garrow_record_batch_serialize;

/** */
alias garrow_record_batch_slice = c_garrow_record_batch_slice;

/** */
alias garrow_record_batch_sort_indices = c_garrow_record_batch_sort_indices;

/** */
alias garrow_record_batch_take = c_garrow_record_batch_take;

/** */
alias garrow_record_batch_to_string = c_garrow_record_batch_to_string;

/** */
alias garrow_record_batch_validate = c_garrow_record_batch_validate;

/** */
alias garrow_record_batch_validate_full = c_garrow_record_batch_validate_full;

// RecordBatchBuilder

/** */
alias garrow_record_batch_builder_get_type = c_garrow_record_batch_builder_get_type;

/** */
alias garrow_record_batch_builder_new = c_garrow_record_batch_builder_new;

/** */
alias garrow_record_batch_builder_flush = c_garrow_record_batch_builder_flush;

/** */
alias garrow_record_batch_builder_get_column_builder = c_garrow_record_batch_builder_get_column_builder;

/** */
alias garrow_record_batch_builder_get_field = c_garrow_record_batch_builder_get_field;

/** */
alias garrow_record_batch_builder_get_initial_capacity = c_garrow_record_batch_builder_get_initial_capacity;

/** */
alias garrow_record_batch_builder_get_n_columns = c_garrow_record_batch_builder_get_n_columns;

/** */
alias garrow_record_batch_builder_get_n_fields = c_garrow_record_batch_builder_get_n_fields;

/** */
alias garrow_record_batch_builder_get_schema = c_garrow_record_batch_builder_get_schema;

/** */
alias garrow_record_batch_builder_set_initial_capacity = c_garrow_record_batch_builder_set_initial_capacity;

// RecordBatchDatum

/** */
alias garrow_record_batch_datum_get_type = c_garrow_record_batch_datum_get_type;

/** */
alias garrow_record_batch_datum_new = c_garrow_record_batch_datum_new;

// RecordBatchFileReader

/** */
alias garrow_record_batch_file_reader_get_type = c_garrow_record_batch_file_reader_get_type;

/** */
alias garrow_record_batch_file_reader_new = c_garrow_record_batch_file_reader_new;

/** */
alias garrow_record_batch_file_reader_get_metadata = c_garrow_record_batch_file_reader_get_metadata;

/** */
alias garrow_record_batch_file_reader_get_n_record_batches = c_garrow_record_batch_file_reader_get_n_record_batches;

/** */
alias garrow_record_batch_file_reader_get_record_batch = c_garrow_record_batch_file_reader_get_record_batch;

/** */
alias garrow_record_batch_file_reader_get_schema = c_garrow_record_batch_file_reader_get_schema;

/** */
alias garrow_record_batch_file_reader_get_version = c_garrow_record_batch_file_reader_get_version;

/** */
alias garrow_record_batch_file_reader_read_record_batch = c_garrow_record_batch_file_reader_read_record_batch;

// RecordBatchFileWriter

/** */
alias garrow_record_batch_file_writer_get_type = c_garrow_record_batch_file_writer_get_type;

/** */
alias garrow_record_batch_file_writer_new = c_garrow_record_batch_file_writer_new;

/** */
alias garrow_record_batch_file_writer_new_full = c_garrow_record_batch_file_writer_new_full;

// RecordBatchIterator

/** */
alias garrow_record_batch_iterator_get_type = c_garrow_record_batch_iterator_get_type;

/** */
alias garrow_record_batch_iterator_new = c_garrow_record_batch_iterator_new;

/** */
alias garrow_record_batch_iterator_equal = c_garrow_record_batch_iterator_equal;

/** */
alias garrow_record_batch_iterator_next = c_garrow_record_batch_iterator_next;

/** */
alias garrow_record_batch_iterator_to_list = c_garrow_record_batch_iterator_to_list;

// RecordBatchReader

/** */
alias garrow_record_batch_reader_get_type = c_garrow_record_batch_reader_get_type;

/** */
alias garrow_record_batch_reader_new = c_garrow_record_batch_reader_new;

/** */
alias garrow_record_batch_reader_import = c_garrow_record_batch_reader_import;

/** */
alias garrow_record_batch_reader_export = c_garrow_record_batch_reader_export;

/** */
alias garrow_record_batch_reader_get_next_record_batch = c_garrow_record_batch_reader_get_next_record_batch;

/** */
alias garrow_record_batch_reader_get_schema = c_garrow_record_batch_reader_get_schema;

/** */
alias garrow_record_batch_reader_get_sources = c_garrow_record_batch_reader_get_sources;

/** */
alias garrow_record_batch_reader_read_all = c_garrow_record_batch_reader_read_all;

/** */
alias garrow_record_batch_reader_read_next = c_garrow_record_batch_reader_read_next;

/** */
alias garrow_record_batch_reader_read_next_record_batch = c_garrow_record_batch_reader_read_next_record_batch;

// RecordBatchStreamReader

/** */
alias garrow_record_batch_stream_reader_get_type = c_garrow_record_batch_stream_reader_get_type;

/** */
alias garrow_record_batch_stream_reader_new = c_garrow_record_batch_stream_reader_new;

// RecordBatchStreamWriter

/** */
alias garrow_record_batch_stream_writer_get_type = c_garrow_record_batch_stream_writer_get_type;

/** */
alias garrow_record_batch_stream_writer_new = c_garrow_record_batch_stream_writer_new;

// RecordBatchWriter

/** */
alias garrow_record_batch_writer_get_type = c_garrow_record_batch_writer_get_type;

/** */
alias garrow_record_batch_writer_close = c_garrow_record_batch_writer_close;

/** */
alias garrow_record_batch_writer_is_closed = c_garrow_record_batch_writer_is_closed;

/** */
alias garrow_record_batch_writer_write_record_batch = c_garrow_record_batch_writer_write_record_batch;

/** */
alias garrow_record_batch_writer_write_table = c_garrow_record_batch_writer_write_table;

// ReplaceSliceOptions

/** */
alias garrow_replace_slice_options_get_type = c_garrow_replace_slice_options_get_type;

/** */
alias garrow_replace_slice_options_new = c_garrow_replace_slice_options_new;

// ReplaceSubstringOptions

/** */
alias garrow_replace_substring_options_get_type = c_garrow_replace_substring_options_get_type;

/** */
alias garrow_replace_substring_options_new = c_garrow_replace_substring_options_new;

// ResizableBuffer

/** */
alias garrow_resizable_buffer_get_type = c_garrow_resizable_buffer_get_type;

/** */
alias garrow_resizable_buffer_new = c_garrow_resizable_buffer_new;

/** */
alias garrow_resizable_buffer_reserve = c_garrow_resizable_buffer_reserve;

/** */
alias garrow_resizable_buffer_resize = c_garrow_resizable_buffer_resize;

// RoundBinaryOptions

/** */
alias garrow_round_binary_options_get_type = c_garrow_round_binary_options_get_type;

/** */
alias garrow_round_binary_options_new = c_garrow_round_binary_options_new;

// RoundOptions

/** */
alias garrow_round_options_get_type = c_garrow_round_options_get_type;

/** */
alias garrow_round_options_new = c_garrow_round_options_new;

// RoundTemporalOptions

/** */
alias garrow_round_temporal_options_get_type = c_garrow_round_temporal_options_get_type;

/** */
alias garrow_round_temporal_options_new = c_garrow_round_temporal_options_new;

// RoundToMultipleOptions

/** */
alias garrow_round_to_multiple_options_get_type = c_garrow_round_to_multiple_options_get_type;

/** */
alias garrow_round_to_multiple_options_new = c_garrow_round_to_multiple_options_new;

// RunEndEncodeOptions

/** */
alias garrow_run_end_encode_options_get_type = c_garrow_run_end_encode_options_get_type;

/** */
alias garrow_run_end_encode_options_new = c_garrow_run_end_encode_options_new;

// RunEndEncodedArray

/** */
alias garrow_run_end_encoded_array_get_type = c_garrow_run_end_encoded_array_get_type;

/** */
alias garrow_run_end_encoded_array_new = c_garrow_run_end_encoded_array_new;

/** */
alias garrow_run_end_encoded_array_decode = c_garrow_run_end_encoded_array_decode;

/** */
alias garrow_run_end_encoded_array_find_physical_length = c_garrow_run_end_encoded_array_find_physical_length;

/** */
alias garrow_run_end_encoded_array_find_physical_offset = c_garrow_run_end_encoded_array_find_physical_offset;

/** */
alias garrow_run_end_encoded_array_get_logical_run_ends = c_garrow_run_end_encoded_array_get_logical_run_ends;

/** */
alias garrow_run_end_encoded_array_get_logical_values = c_garrow_run_end_encoded_array_get_logical_values;

/** */
alias garrow_run_end_encoded_array_get_run_ends = c_garrow_run_end_encoded_array_get_run_ends;

/** */
alias garrow_run_end_encoded_array_get_values = c_garrow_run_end_encoded_array_get_values;

// RunEndEncodedDataType

/** */
alias garrow_run_end_encoded_data_type_get_type = c_garrow_run_end_encoded_data_type_get_type;

/** */
alias garrow_run_end_encoded_data_type_new = c_garrow_run_end_encoded_data_type_new;

/** */
alias garrow_run_end_encoded_data_type_get_run_end_data_type = c_garrow_run_end_encoded_data_type_get_run_end_data_type;

/** */
alias garrow_run_end_encoded_data_type_get_value_data_type = c_garrow_run_end_encoded_data_type_get_value_data_type;

// S3FileSystem

/** */
alias garrow_s3_file_system_get_type = c_garrow_s3_file_system_get_type;

// S3GlobalOptions

/** */
alias garrow_s3_global_options_get_type = c_garrow_s3_global_options_get_type;

/** */
alias garrow_s3_global_options_new = c_garrow_s3_global_options_new;

// Scalar

/** */
alias garrow_scalar_get_type = c_garrow_scalar_get_type;

/** */
alias garrow_scalar_parse = c_garrow_scalar_parse;

/** */
alias garrow_scalar_cast = c_garrow_scalar_cast;

/** */
alias garrow_scalar_equal = c_garrow_scalar_equal;

/** */
alias garrow_scalar_equal_options = c_garrow_scalar_equal_options;

/** */
alias garrow_scalar_get_data_type = c_garrow_scalar_get_data_type;

/** */
alias garrow_scalar_is_valid = c_garrow_scalar_is_valid;

/** */
alias garrow_scalar_to_string = c_garrow_scalar_to_string;

// ScalarAggregateOptions

/** */
alias garrow_scalar_aggregate_options_get_type = c_garrow_scalar_aggregate_options_get_type;

/** */
alias garrow_scalar_aggregate_options_new = c_garrow_scalar_aggregate_options_new;

// ScalarDatum

/** */
alias garrow_scalar_datum_get_type = c_garrow_scalar_datum_get_type;

/** */
alias garrow_scalar_datum_new = c_garrow_scalar_datum_new;

// Schema

/** */
alias garrow_schema_get_type = c_garrow_schema_get_type;

/** */
alias garrow_schema_new = c_garrow_schema_new;

/** */
alias garrow_schema_import = c_garrow_schema_import;

/** */
alias garrow_schema_add_field = c_garrow_schema_add_field;

/** */
alias garrow_schema_equal = c_garrow_schema_equal;

/** */
alias garrow_schema_export = c_garrow_schema_export;

/** */
alias garrow_schema_get_field = c_garrow_schema_get_field;

/** */
alias garrow_schema_get_field_by_name = c_garrow_schema_get_field_by_name;

/** */
alias garrow_schema_get_field_index = c_garrow_schema_get_field_index;

/** */
alias garrow_schema_get_fields = c_garrow_schema_get_fields;

/** */
alias garrow_schema_get_metadata = c_garrow_schema_get_metadata;

/** */
alias garrow_schema_has_metadata = c_garrow_schema_has_metadata;

/** */
alias garrow_schema_n_fields = c_garrow_schema_n_fields;

/** */
alias garrow_schema_remove_field = c_garrow_schema_remove_field;

/** */
alias garrow_schema_replace_field = c_garrow_schema_replace_field;

/** */
alias garrow_schema_to_string = c_garrow_schema_to_string;

/** */
alias garrow_schema_to_string_metadata = c_garrow_schema_to_string_metadata;

/** */
alias garrow_schema_with_metadata = c_garrow_schema_with_metadata;

// SeekableInputStream

/** */
alias garrow_seekable_input_stream_get_type = c_garrow_seekable_input_stream_get_type;

/** */
alias garrow_seekable_input_stream_get_size = c_garrow_seekable_input_stream_get_size;

/** */
alias garrow_seekable_input_stream_get_support_zero_copy = c_garrow_seekable_input_stream_get_support_zero_copy;

/** */
alias garrow_seekable_input_stream_peek = c_garrow_seekable_input_stream_peek;

/** */
alias garrow_seekable_input_stream_read_at = c_garrow_seekable_input_stream_read_at;

/** */
alias garrow_seekable_input_stream_read_at_bytes = c_garrow_seekable_input_stream_read_at_bytes;

// SelectKOptions

/** */
alias garrow_select_k_options_get_type = c_garrow_select_k_options_get_type;

/** */
alias garrow_select_k_options_new = c_garrow_select_k_options_new;

/** */
alias garrow_select_k_options_add_sort_key = c_garrow_select_k_options_add_sort_key;

/** */
alias garrow_select_k_options_get_sort_keys = c_garrow_select_k_options_get_sort_keys;

/** */
alias garrow_select_k_options_set_sort_keys = c_garrow_select_k_options_set_sort_keys;

// SetLookupOptions

/** */
alias garrow_set_lookup_options_get_type = c_garrow_set_lookup_options_get_type;

/** */
alias garrow_set_lookup_options_new = c_garrow_set_lookup_options_new;

// SinkNodeOptions

/** */
alias garrow_sink_node_options_get_type = c_garrow_sink_node_options_get_type;

/** */
alias garrow_sink_node_options_new = c_garrow_sink_node_options_new;

/** */
alias garrow_sink_node_options_get_reader = c_garrow_sink_node_options_get_reader;

// SkewOptions

/** */
alias garrow_skew_options_get_type = c_garrow_skew_options_get_type;

/** */
alias garrow_skew_options_new = c_garrow_skew_options_new;

// SliceOptions

/** */
alias garrow_slice_options_get_type = c_garrow_slice_options_get_type;

/** */
alias garrow_slice_options_new = c_garrow_slice_options_new;

// SlowFileSystem

/** */
alias garrow_slow_file_system_get_type = c_garrow_slow_file_system_get_type;

/** */
alias garrow_slow_file_system_new_average_latency = c_garrow_slow_file_system_new_average_latency;

/** */
alias garrow_slow_file_system_new_average_latency_and_seed = c_garrow_slow_file_system_new_average_latency_and_seed;

// SortKey

/** */
alias garrow_sort_key_get_type = c_garrow_sort_key_get_type;

/** */
alias garrow_sort_key_new = c_garrow_sort_key_new;

/** */
alias garrow_sort_key_equal = c_garrow_sort_key_equal;

// SortOptions

/** */
alias garrow_sort_options_get_type = c_garrow_sort_options_get_type;

/** */
alias garrow_sort_options_new = c_garrow_sort_options_new;

/** */
alias garrow_sort_options_add_sort_key = c_garrow_sort_options_add_sort_key;

/** */
alias garrow_sort_options_equal = c_garrow_sort_options_equal;

/** */
alias garrow_sort_options_get_sort_keys = c_garrow_sort_options_get_sort_keys;

/** */
alias garrow_sort_options_set_sort_keys = c_garrow_sort_options_set_sort_keys;

// SourceNodeOptions

/** */
alias garrow_source_node_options_get_type = c_garrow_source_node_options_get_type;

/** */
alias garrow_source_node_options_new_record_batch = c_garrow_source_node_options_new_record_batch;

/** */
alias garrow_source_node_options_new_record_batch_reader = c_garrow_source_node_options_new_record_batch_reader;

/** */
alias garrow_source_node_options_new_table = c_garrow_source_node_options_new_table;

// SparseUnionArray

/** */
alias garrow_sparse_union_array_get_type = c_garrow_sparse_union_array_get_type;

/** */
alias garrow_sparse_union_array_new = c_garrow_sparse_union_array_new;

/** */
alias garrow_sparse_union_array_new_data_type = c_garrow_sparse_union_array_new_data_type;

// SparseUnionArrayBuilder

/** */
alias garrow_sparse_union_array_builder_get_type = c_garrow_sparse_union_array_builder_get_type;

/** */
alias garrow_sparse_union_array_builder_new = c_garrow_sparse_union_array_builder_new;

// SparseUnionDataType

/** */
alias garrow_sparse_union_data_type_get_type = c_garrow_sparse_union_data_type_get_type;

/** */
alias garrow_sparse_union_data_type_new = c_garrow_sparse_union_data_type_new;

// SparseUnionScalar

/** */
alias garrow_sparse_union_scalar_get_type = c_garrow_sparse_union_scalar_get_type;

/** */
alias garrow_sparse_union_scalar_new = c_garrow_sparse_union_scalar_new;

// SplitOptions

/** */
alias garrow_split_options_get_type = c_garrow_split_options_get_type;

/** */
alias garrow_split_options_new = c_garrow_split_options_new;

// SplitPatternOptions

/** */
alias garrow_split_pattern_options_get_type = c_garrow_split_pattern_options_get_type;

/** */
alias garrow_split_pattern_options_new = c_garrow_split_pattern_options_new;

// StreamDecoder

/** */
alias garrow_stream_decoder_get_type = c_garrow_stream_decoder_get_type;

/** */
alias garrow_stream_decoder_new = c_garrow_stream_decoder_new;

/** */
alias garrow_stream_decoder_consume_buffer = c_garrow_stream_decoder_consume_buffer;

/** */
alias garrow_stream_decoder_consume_bytes = c_garrow_stream_decoder_consume_bytes;

/** */
alias garrow_stream_decoder_get_next_required_size = c_garrow_stream_decoder_get_next_required_size;

/** */
alias garrow_stream_decoder_get_schema = c_garrow_stream_decoder_get_schema;

/** */
alias garrow_stream_decoder_reset = c_garrow_stream_decoder_reset;

// StreamListener

/** */
alias garrow_stream_listener_get_type = c_garrow_stream_listener_get_type;

/** */
alias garrow_stream_listener_on_eos = c_garrow_stream_listener_on_eos;

/** */
alias garrow_stream_listener_on_record_batch_decoded = c_garrow_stream_listener_on_record_batch_decoded;

/** */
alias garrow_stream_listener_on_schema_decoded = c_garrow_stream_listener_on_schema_decoded;

// StrftimeOptions

/** */
alias garrow_strftime_options_get_type = c_garrow_strftime_options_get_type;

/** */
alias garrow_strftime_options_new = c_garrow_strftime_options_new;

// StringArray

/** */
alias garrow_string_array_get_type = c_garrow_string_array_get_type;

/** */
alias garrow_string_array_new = c_garrow_string_array_new;

/** */
alias garrow_string_array_get_string = c_garrow_string_array_get_string;

// StringArrayBuilder

/** */
alias garrow_string_array_builder_get_type = c_garrow_string_array_builder_get_type;

/** */
alias garrow_string_array_builder_new = c_garrow_string_array_builder_new;

/** */
alias garrow_string_array_builder_append = c_garrow_string_array_builder_append;

/** */
alias garrow_string_array_builder_append_string = c_garrow_string_array_builder_append_string;

/** */
alias garrow_string_array_builder_append_string_len = c_garrow_string_array_builder_append_string_len;

/** */
alias garrow_string_array_builder_append_strings = c_garrow_string_array_builder_append_strings;

/** */
alias garrow_string_array_builder_append_value = c_garrow_string_array_builder_append_value;

/** */
alias garrow_string_array_builder_append_values = c_garrow_string_array_builder_append_values;

// StringDataType

/** */
alias garrow_string_data_type_get_type = c_garrow_string_data_type_get_type;

/** */
alias garrow_string_data_type_new = c_garrow_string_data_type_new;

// StringDictionaryArrayBuilder

/** */
alias garrow_string_dictionary_array_builder_get_type = c_garrow_string_dictionary_array_builder_get_type;

/** */
alias garrow_string_dictionary_array_builder_new = c_garrow_string_dictionary_array_builder_new;

/** */
alias garrow_string_dictionary_array_builder_append_array = c_garrow_string_dictionary_array_builder_append_array;

/** */
alias garrow_string_dictionary_array_builder_append_indices = c_garrow_string_dictionary_array_builder_append_indices;

/** */
alias garrow_string_dictionary_array_builder_append_null = c_garrow_string_dictionary_array_builder_append_null;

/** */
alias garrow_string_dictionary_array_builder_append_string = c_garrow_string_dictionary_array_builder_append_string;

/** */
alias garrow_string_dictionary_array_builder_finish_delta = c_garrow_string_dictionary_array_builder_finish_delta;

/** */
alias garrow_string_dictionary_array_builder_get_dictionary_length = c_garrow_string_dictionary_array_builder_get_dictionary_length;

/** */
alias garrow_string_dictionary_array_builder_insert_memo_values = c_garrow_string_dictionary_array_builder_insert_memo_values;

/** */
alias garrow_string_dictionary_array_builder_reset_full = c_garrow_string_dictionary_array_builder_reset_full;

// StringScalar

/** */
alias garrow_string_scalar_get_type = c_garrow_string_scalar_get_type;

/** */
alias garrow_string_scalar_new = c_garrow_string_scalar_new;

// StringViewArray

/** */
alias garrow_string_view_array_get_type = c_garrow_string_view_array_get_type;

/** */
alias garrow_string_view_array_new = c_garrow_string_view_array_new;

/** */
alias garrow_string_view_array_get_value = c_garrow_string_view_array_get_value;

// StringViewDataType

/** */
alias garrow_string_view_data_type_get_type = c_garrow_string_view_data_type_get_type;

/** */
alias garrow_string_view_data_type_new = c_garrow_string_view_data_type_new;

// StrptimeOptions

/** */
alias garrow_strptime_options_get_type = c_garrow_strptime_options_get_type;

/** */
alias garrow_strptime_options_new = c_garrow_strptime_options_new;

// StrptimeTimestampParser

/** */
alias garrow_strptime_timestamp_parser_get_type = c_garrow_strptime_timestamp_parser_get_type;

/** */
alias garrow_strptime_timestamp_parser_new = c_garrow_strptime_timestamp_parser_new;

/** */
alias garrow_strptime_timestamp_parser_get_format = c_garrow_strptime_timestamp_parser_get_format;

// StructArray

/** */
alias garrow_struct_array_get_type = c_garrow_struct_array_get_type;

/** */
alias garrow_struct_array_new = c_garrow_struct_array_new;

/** */
alias garrow_struct_array_flatten = c_garrow_struct_array_flatten;

/** */
alias garrow_struct_array_get_field = c_garrow_struct_array_get_field;

/** */
alias garrow_struct_array_get_fields = c_garrow_struct_array_get_fields;

// StructArrayBuilder

/** */
alias garrow_struct_array_builder_get_type = c_garrow_struct_array_builder_get_type;

/** */
alias garrow_struct_array_builder_new = c_garrow_struct_array_builder_new;

/** */
alias garrow_struct_array_builder_append = c_garrow_struct_array_builder_append;

/** */
alias garrow_struct_array_builder_append_null = c_garrow_struct_array_builder_append_null;

/** */
alias garrow_struct_array_builder_append_value = c_garrow_struct_array_builder_append_value;

/** */
alias garrow_struct_array_builder_get_field_builder = c_garrow_struct_array_builder_get_field_builder;

/** */
alias garrow_struct_array_builder_get_field_builders = c_garrow_struct_array_builder_get_field_builders;

// StructDataType

/** */
alias garrow_struct_data_type_get_type = c_garrow_struct_data_type_get_type;

/** */
alias garrow_struct_data_type_new = c_garrow_struct_data_type_new;

/** */
alias garrow_struct_data_type_get_field = c_garrow_struct_data_type_get_field;

/** */
alias garrow_struct_data_type_get_field_by_name = c_garrow_struct_data_type_get_field_by_name;

/** */
alias garrow_struct_data_type_get_field_index = c_garrow_struct_data_type_get_field_index;

/** */
alias garrow_struct_data_type_get_fields = c_garrow_struct_data_type_get_fields;

/** */
alias garrow_struct_data_type_get_n_fields = c_garrow_struct_data_type_get_n_fields;

// StructFieldOptions

/** */
alias garrow_struct_field_options_get_type = c_garrow_struct_field_options_get_type;

/** */
alias garrow_struct_field_options_new = c_garrow_struct_field_options_new;

/** */
alias garrow_struct_field_options_set_field_ref = c_garrow_struct_field_options_set_field_ref;

// StructScalar

/** */
alias garrow_struct_scalar_get_type = c_garrow_struct_scalar_get_type;

/** */
alias garrow_struct_scalar_new = c_garrow_struct_scalar_new;

/** */
alias garrow_struct_scalar_get_value = c_garrow_struct_scalar_get_value;

// SubTreeFileSystem

/** */
alias garrow_sub_tree_file_system_get_type = c_garrow_sub_tree_file_system_get_type;

/** */
alias garrow_sub_tree_file_system_new = c_garrow_sub_tree_file_system_new;

// TDigestOptions

/** */
alias garrow_tdigest_options_get_type = c_garrow_tdigest_options_get_type;

/** */
alias garrow_tdigest_options_new = c_garrow_tdigest_options_new;

/** */
alias garrow_tdigest_options_get_qs = c_garrow_tdigest_options_get_qs;

/** */
alias garrow_tdigest_options_set_q = c_garrow_tdigest_options_set_q;

/** */
alias garrow_tdigest_options_set_qs = c_garrow_tdigest_options_set_qs;

// Table

/** */
alias garrow_table_get_type = c_garrow_table_get_type;

/** */
alias garrow_table_new_arrays = c_garrow_table_new_arrays;

/** */
alias garrow_table_new_chunked_arrays = c_garrow_table_new_chunked_arrays;

/** */
alias garrow_table_new_record_batches = c_garrow_table_new_record_batches;

/** */
alias garrow_table_new_values = c_garrow_table_new_values;

/** */
alias garrow_table_add_column = c_garrow_table_add_column;

/** */
alias garrow_table_combine_chunks = c_garrow_table_combine_chunks;

/** */
alias garrow_table_concatenate = c_garrow_table_concatenate;

/** */
alias garrow_table_equal = c_garrow_table_equal;

/** */
alias garrow_table_equal_metadata = c_garrow_table_equal_metadata;

/** */
alias garrow_table_filter = c_garrow_table_filter;

/** */
alias garrow_table_filter_chunked_array = c_garrow_table_filter_chunked_array;

/** */
alias garrow_table_get_column_data = c_garrow_table_get_column_data;

/** */
alias garrow_table_get_n_columns = c_garrow_table_get_n_columns;

/** */
alias garrow_table_get_n_rows = c_garrow_table_get_n_rows;

/** */
alias garrow_table_get_schema = c_garrow_table_get_schema;

/** */
alias garrow_table_remove_column = c_garrow_table_remove_column;

/** */
alias garrow_table_replace_column = c_garrow_table_replace_column;

/** */
alias garrow_table_slice = c_garrow_table_slice;

/** */
alias garrow_table_sort_indices = c_garrow_table_sort_indices;

/** */
alias garrow_table_take = c_garrow_table_take;

/** */
alias garrow_table_take_chunked_array = c_garrow_table_take_chunked_array;

/** */
alias garrow_table_to_string = c_garrow_table_to_string;

/** */
alias garrow_table_validate = c_garrow_table_validate;

/** */
alias garrow_table_validate_full = c_garrow_table_validate_full;

/** */
alias garrow_table_write_as_feather = c_garrow_table_write_as_feather;

// TableBatchReader

/** */
alias garrow_table_batch_reader_get_type = c_garrow_table_batch_reader_get_type;

/** */
alias garrow_table_batch_reader_new = c_garrow_table_batch_reader_new;

/** */
alias garrow_table_batch_reader_set_max_chunk_size = c_garrow_table_batch_reader_set_max_chunk_size;

// TableConcatenateOptions

/** */
alias garrow_table_concatenate_options_get_type = c_garrow_table_concatenate_options_get_type;

/** */
alias garrow_table_concatenate_options_new = c_garrow_table_concatenate_options_new;

// TableDatum

/** */
alias garrow_table_datum_get_type = c_garrow_table_datum_get_type;

/** */
alias garrow_table_datum_new = c_garrow_table_datum_new;

// TakeOptions

/** */
alias garrow_take_options_get_type = c_garrow_take_options_get_type;

/** */
alias garrow_take_options_new = c_garrow_take_options_new;

// TemporalDataType

/** */
alias garrow_temporal_data_type_get_type = c_garrow_temporal_data_type_get_type;

// Tensor

/** */
alias garrow_tensor_get_type = c_garrow_tensor_get_type;

/** */
alias garrow_tensor_new = c_garrow_tensor_new;

/** */
alias garrow_tensor_equal = c_garrow_tensor_equal;

/** */
alias garrow_tensor_get_buffer = c_garrow_tensor_get_buffer;

/** */
alias garrow_tensor_get_dimension_name = c_garrow_tensor_get_dimension_name;

/** */
alias garrow_tensor_get_n_dimensions = c_garrow_tensor_get_n_dimensions;

/** */
alias garrow_tensor_get_shape = c_garrow_tensor_get_shape;

/** */
alias garrow_tensor_get_size = c_garrow_tensor_get_size;

/** */
alias garrow_tensor_get_strides = c_garrow_tensor_get_strides;

/** */
alias garrow_tensor_get_value_data_type = c_garrow_tensor_get_value_data_type;

/** */
alias garrow_tensor_get_value_type = c_garrow_tensor_get_value_type;

/** */
alias garrow_tensor_is_column_major = c_garrow_tensor_is_column_major;

/** */
alias garrow_tensor_is_contiguous = c_garrow_tensor_is_contiguous;

/** */
alias garrow_tensor_is_mutable = c_garrow_tensor_is_mutable;

/** */
alias garrow_tensor_is_row_major = c_garrow_tensor_is_row_major;

// ThreadPool

/** */
alias garrow_thread_pool_get_type = c_garrow_thread_pool_get_type;

/** */
alias garrow_thread_pool_new = c_garrow_thread_pool_new;

// Time32Array

/** */
alias garrow_time32_array_get_type = c_garrow_time32_array_get_type;

/** */
alias garrow_time32_array_new = c_garrow_time32_array_new;

/** */
alias garrow_time32_array_get_value = c_garrow_time32_array_get_value;

/** */
alias garrow_time32_array_get_values = c_garrow_time32_array_get_values;

// Time32ArrayBuilder

/** */
alias garrow_time32_array_builder_get_type = c_garrow_time32_array_builder_get_type;

/** */
alias garrow_time32_array_builder_new = c_garrow_time32_array_builder_new;

/** */
alias garrow_time32_array_builder_append = c_garrow_time32_array_builder_append;

/** */
alias garrow_time32_array_builder_append_null = c_garrow_time32_array_builder_append_null;

/** */
alias garrow_time32_array_builder_append_nulls = c_garrow_time32_array_builder_append_nulls;

/** */
alias garrow_time32_array_builder_append_value = c_garrow_time32_array_builder_append_value;

/** */
alias garrow_time32_array_builder_append_values = c_garrow_time32_array_builder_append_values;

// Time32DataType

/** */
alias garrow_time32_data_type_get_type = c_garrow_time32_data_type_get_type;

/** */
alias garrow_time32_data_type_new = c_garrow_time32_data_type_new;

// Time32Scalar

/** */
alias garrow_time32_scalar_get_type = c_garrow_time32_scalar_get_type;

/** */
alias garrow_time32_scalar_new = c_garrow_time32_scalar_new;

/** */
alias garrow_time32_scalar_get_value = c_garrow_time32_scalar_get_value;

// Time64Array

/** */
alias garrow_time64_array_get_type = c_garrow_time64_array_get_type;

/** */
alias garrow_time64_array_new = c_garrow_time64_array_new;

/** */
alias garrow_time64_array_get_value = c_garrow_time64_array_get_value;

/** */
alias garrow_time64_array_get_values = c_garrow_time64_array_get_values;

// Time64ArrayBuilder

/** */
alias garrow_time64_array_builder_get_type = c_garrow_time64_array_builder_get_type;

/** */
alias garrow_time64_array_builder_new = c_garrow_time64_array_builder_new;

/** */
alias garrow_time64_array_builder_append = c_garrow_time64_array_builder_append;

/** */
alias garrow_time64_array_builder_append_null = c_garrow_time64_array_builder_append_null;

/** */
alias garrow_time64_array_builder_append_nulls = c_garrow_time64_array_builder_append_nulls;

/** */
alias garrow_time64_array_builder_append_value = c_garrow_time64_array_builder_append_value;

/** */
alias garrow_time64_array_builder_append_values = c_garrow_time64_array_builder_append_values;

// Time64DataType

/** */
alias garrow_time64_data_type_get_type = c_garrow_time64_data_type_get_type;

/** */
alias garrow_time64_data_type_new = c_garrow_time64_data_type_new;

// Time64Scalar

/** */
alias garrow_time64_scalar_get_type = c_garrow_time64_scalar_get_type;

/** */
alias garrow_time64_scalar_new = c_garrow_time64_scalar_new;

/** */
alias garrow_time64_scalar_get_value = c_garrow_time64_scalar_get_value;

// TimeDataType

/** */
alias garrow_time_data_type_get_type = c_garrow_time_data_type_get_type;

/** */
alias garrow_time_data_type_get_unit = c_garrow_time_data_type_get_unit;

// TimestampArray

/** */
alias garrow_timestamp_array_get_type = c_garrow_timestamp_array_get_type;

/** */
alias garrow_timestamp_array_new = c_garrow_timestamp_array_new;

/** */
alias garrow_timestamp_array_get_value = c_garrow_timestamp_array_get_value;

/** */
alias garrow_timestamp_array_get_values = c_garrow_timestamp_array_get_values;

// TimestampArrayBuilder

/** */
alias garrow_timestamp_array_builder_get_type = c_garrow_timestamp_array_builder_get_type;

/** */
alias garrow_timestamp_array_builder_new = c_garrow_timestamp_array_builder_new;

/** */
alias garrow_timestamp_array_builder_append = c_garrow_timestamp_array_builder_append;

/** */
alias garrow_timestamp_array_builder_append_null = c_garrow_timestamp_array_builder_append_null;

/** */
alias garrow_timestamp_array_builder_append_nulls = c_garrow_timestamp_array_builder_append_nulls;

/** */
alias garrow_timestamp_array_builder_append_value = c_garrow_timestamp_array_builder_append_value;

/** */
alias garrow_timestamp_array_builder_append_values = c_garrow_timestamp_array_builder_append_values;

// TimestampDataType

/** */
alias garrow_timestamp_data_type_get_type = c_garrow_timestamp_data_type_get_type;

/** */
alias garrow_timestamp_data_type_new = c_garrow_timestamp_data_type_new;

/** */
alias garrow_timestamp_data_type_get_unit = c_garrow_timestamp_data_type_get_unit;

// TimestampParser

/** */
alias garrow_timestamp_parser_get_type = c_garrow_timestamp_parser_get_type;

/** */
alias garrow_timestamp_parser_get_kind = c_garrow_timestamp_parser_get_kind;

// TimestampScalar

/** */
alias garrow_timestamp_scalar_get_type = c_garrow_timestamp_scalar_get_type;

/** */
alias garrow_timestamp_scalar_new = c_garrow_timestamp_scalar_new;

/** */
alias garrow_timestamp_scalar_get_value = c_garrow_timestamp_scalar_get_value;

// TrimOptions

/** */
alias garrow_trim_options_get_type = c_garrow_trim_options_get_type;

/** */
alias garrow_trim_options_new = c_garrow_trim_options_new;

// UInt16Array

/** */
alias garrow_uint16_array_get_type = c_garrow_uint16_array_get_type;

/** */
alias garrow_uint16_array_new = c_garrow_uint16_array_new;

/** */
alias garrow_uint16_array_get_value = c_garrow_uint16_array_get_value;

/** */
alias garrow_uint16_array_get_values = c_garrow_uint16_array_get_values;

/** */
alias garrow_uint16_array_sum = c_garrow_uint16_array_sum;

// UInt16ArrayBuilder

/** */
alias garrow_uint16_array_builder_get_type = c_garrow_uint16_array_builder_get_type;

/** */
alias garrow_uint16_array_builder_new = c_garrow_uint16_array_builder_new;

/** */
alias garrow_uint16_array_builder_append = c_garrow_uint16_array_builder_append;

/** */
alias garrow_uint16_array_builder_append_null = c_garrow_uint16_array_builder_append_null;

/** */
alias garrow_uint16_array_builder_append_nulls = c_garrow_uint16_array_builder_append_nulls;

/** */
alias garrow_uint16_array_builder_append_value = c_garrow_uint16_array_builder_append_value;

/** */
alias garrow_uint16_array_builder_append_values = c_garrow_uint16_array_builder_append_values;

// UInt16DataType

/** */
alias garrow_uint16_data_type_get_type = c_garrow_uint16_data_type_get_type;

/** */
alias garrow_uint16_data_type_new = c_garrow_uint16_data_type_new;

// UInt16Scalar

/** */
alias garrow_uint16_scalar_get_type = c_garrow_uint16_scalar_get_type;

/** */
alias garrow_uint16_scalar_new = c_garrow_uint16_scalar_new;

/** */
alias garrow_uint16_scalar_get_value = c_garrow_uint16_scalar_get_value;

// UInt32Array

/** */
alias garrow_uint32_array_get_type = c_garrow_uint32_array_get_type;

/** */
alias garrow_uint32_array_new = c_garrow_uint32_array_new;

/** */
alias garrow_uint32_array_get_value = c_garrow_uint32_array_get_value;

/** */
alias garrow_uint32_array_get_values = c_garrow_uint32_array_get_values;

/** */
alias garrow_uint32_array_sum = c_garrow_uint32_array_sum;

// UInt32ArrayBuilder

/** */
alias garrow_uint32_array_builder_get_type = c_garrow_uint32_array_builder_get_type;

/** */
alias garrow_uint32_array_builder_new = c_garrow_uint32_array_builder_new;

/** */
alias garrow_uint32_array_builder_append = c_garrow_uint32_array_builder_append;

/** */
alias garrow_uint32_array_builder_append_null = c_garrow_uint32_array_builder_append_null;

/** */
alias garrow_uint32_array_builder_append_nulls = c_garrow_uint32_array_builder_append_nulls;

/** */
alias garrow_uint32_array_builder_append_value = c_garrow_uint32_array_builder_append_value;

/** */
alias garrow_uint32_array_builder_append_values = c_garrow_uint32_array_builder_append_values;

// UInt32DataType

/** */
alias garrow_uint32_data_type_get_type = c_garrow_uint32_data_type_get_type;

/** */
alias garrow_uint32_data_type_new = c_garrow_uint32_data_type_new;

// UInt32Scalar

/** */
alias garrow_uint32_scalar_get_type = c_garrow_uint32_scalar_get_type;

/** */
alias garrow_uint32_scalar_new = c_garrow_uint32_scalar_new;

/** */
alias garrow_uint32_scalar_get_value = c_garrow_uint32_scalar_get_value;

// UInt64Array

/** */
alias garrow_uint64_array_get_type = c_garrow_uint64_array_get_type;

/** */
alias garrow_uint64_array_new = c_garrow_uint64_array_new;

/** */
alias garrow_uint64_array_get_value = c_garrow_uint64_array_get_value;

/** */
alias garrow_uint64_array_get_values = c_garrow_uint64_array_get_values;

/** */
alias garrow_uint64_array_sum = c_garrow_uint64_array_sum;

// UInt64ArrayBuilder

/** */
alias garrow_uint64_array_builder_get_type = c_garrow_uint64_array_builder_get_type;

/** */
alias garrow_uint64_array_builder_new = c_garrow_uint64_array_builder_new;

/** */
alias garrow_uint64_array_builder_append = c_garrow_uint64_array_builder_append;

/** */
alias garrow_uint64_array_builder_append_null = c_garrow_uint64_array_builder_append_null;

/** */
alias garrow_uint64_array_builder_append_nulls = c_garrow_uint64_array_builder_append_nulls;

/** */
alias garrow_uint64_array_builder_append_value = c_garrow_uint64_array_builder_append_value;

/** */
alias garrow_uint64_array_builder_append_values = c_garrow_uint64_array_builder_append_values;

// UInt64DataType

/** */
alias garrow_uint64_data_type_get_type = c_garrow_uint64_data_type_get_type;

/** */
alias garrow_uint64_data_type_new = c_garrow_uint64_data_type_new;

// UInt64Scalar

/** */
alias garrow_uint64_scalar_get_type = c_garrow_uint64_scalar_get_type;

/** */
alias garrow_uint64_scalar_new = c_garrow_uint64_scalar_new;

/** */
alias garrow_uint64_scalar_get_value = c_garrow_uint64_scalar_get_value;

// UInt8Array

/** */
alias garrow_uint8_array_get_type = c_garrow_uint8_array_get_type;

/** */
alias garrow_uint8_array_new = c_garrow_uint8_array_new;

/** */
alias garrow_uint8_array_get_value = c_garrow_uint8_array_get_value;

/** */
alias garrow_uint8_array_get_values = c_garrow_uint8_array_get_values;

/** */
alias garrow_uint8_array_sum = c_garrow_uint8_array_sum;

// UInt8ArrayBuilder

/** */
alias garrow_uint8_array_builder_get_type = c_garrow_uint8_array_builder_get_type;

/** */
alias garrow_uint8_array_builder_new = c_garrow_uint8_array_builder_new;

/** */
alias garrow_uint8_array_builder_append = c_garrow_uint8_array_builder_append;

/** */
alias garrow_uint8_array_builder_append_null = c_garrow_uint8_array_builder_append_null;

/** */
alias garrow_uint8_array_builder_append_nulls = c_garrow_uint8_array_builder_append_nulls;

/** */
alias garrow_uint8_array_builder_append_value = c_garrow_uint8_array_builder_append_value;

/** */
alias garrow_uint8_array_builder_append_values = c_garrow_uint8_array_builder_append_values;

// UInt8DataType

/** */
alias garrow_uint8_data_type_get_type = c_garrow_uint8_data_type_get_type;

/** */
alias garrow_uint8_data_type_new = c_garrow_uint8_data_type_new;

// UInt8Scalar

/** */
alias garrow_uint8_scalar_get_type = c_garrow_uint8_scalar_get_type;

/** */
alias garrow_uint8_scalar_new = c_garrow_uint8_scalar_new;

/** */
alias garrow_uint8_scalar_get_value = c_garrow_uint8_scalar_get_value;

// UIntArrayBuilder

/** */
alias garrow_uint_array_builder_get_type = c_garrow_uint_array_builder_get_type;

/** */
alias garrow_uint_array_builder_new = c_garrow_uint_array_builder_new;

/** */
alias garrow_uint_array_builder_append = c_garrow_uint_array_builder_append;

/** */
alias garrow_uint_array_builder_append_null = c_garrow_uint_array_builder_append_null;

/** */
alias garrow_uint_array_builder_append_nulls = c_garrow_uint_array_builder_append_nulls;

/** */
alias garrow_uint_array_builder_append_value = c_garrow_uint_array_builder_append_value;

/** */
alias garrow_uint_array_builder_append_values = c_garrow_uint_array_builder_append_values;

// UTF8NormalizeOptions

/** */
alias garrow_utf8_normalize_options_get_type = c_garrow_utf8_normalize_options_get_type;

/** */
alias garrow_utf8_normalize_options_new = c_garrow_utf8_normalize_options_new;

// UUIDDataType

/** */
alias garrow_uuid_data_type_get_type = c_garrow_uuid_data_type_get_type;

/** */
alias garrow_uuid_data_type_new = c_garrow_uuid_data_type_new;

// UnionArray

/** */
alias garrow_union_array_get_type = c_garrow_union_array_get_type;

/** */
alias garrow_union_array_get_child_id = c_garrow_union_array_get_child_id;

/** */
alias garrow_union_array_get_field = c_garrow_union_array_get_field;

/** */
alias garrow_union_array_get_n_fields = c_garrow_union_array_get_n_fields;

/** */
alias garrow_union_array_get_type_code = c_garrow_union_array_get_type_code;

// UnionArrayBuilder

/** */
alias garrow_union_array_builder_get_type = c_garrow_union_array_builder_get_type;

/** */
alias garrow_union_array_builder_append_child = c_garrow_union_array_builder_append_child;

/** */
alias garrow_union_array_builder_append_value = c_garrow_union_array_builder_append_value;

// UnionDataType

/** */
alias garrow_union_data_type_get_type = c_garrow_union_data_type_get_type;

/** */
alias garrow_union_data_type_get_field = c_garrow_union_data_type_get_field;

/** */
alias garrow_union_data_type_get_fields = c_garrow_union_data_type_get_fields;

/** */
alias garrow_union_data_type_get_n_fields = c_garrow_union_data_type_get_n_fields;

/** */
alias garrow_union_data_type_get_type_codes = c_garrow_union_data_type_get_type_codes;

// UnionScalar

/** */
alias garrow_union_scalar_get_type = c_garrow_union_scalar_get_type;

/** */
alias garrow_union_scalar_get_type_code = c_garrow_union_scalar_get_type_code;

/** */
alias garrow_union_scalar_get_value = c_garrow_union_scalar_get_value;

// VarianceOptions

/** */
alias garrow_variance_options_get_type = c_garrow_variance_options_get_type;

/** */
alias garrow_variance_options_new = c_garrow_variance_options_new;

// WeekOptions

/** */
alias garrow_week_options_get_type = c_garrow_week_options_get_type;

/** */
alias garrow_week_options_new = c_garrow_week_options_new;

// WinsorizeOptions

/** */
alias garrow_winsorize_options_get_type = c_garrow_winsorize_options_get_type;

/** */
alias garrow_winsorize_options_new = c_garrow_winsorize_options_new;

// Writable

/** */
alias garrow_writable_get_type = c_garrow_writable_get_type;

/** */
alias garrow_writable_flush = c_garrow_writable_flush;

/** */
alias garrow_writable_write = c_garrow_writable_write;

// WritableFile

/** */
alias garrow_writable_file_get_type = c_garrow_writable_file_get_type;

/** */
alias garrow_writable_file_write_at = c_garrow_writable_file_write_at;

// WriteOptions

/** */
alias garrow_write_options_get_type = c_garrow_write_options_get_type;

/** */
alias garrow_write_options_new = c_garrow_write_options_new;

// ZeroFillOptions

/** */
alias garrow_zero_fill_options_get_type = c_garrow_zero_fill_options_get_type;

/** */
alias garrow_zero_fill_options_new = c_garrow_zero_fill_options_new;

// global

/** */
alias garrow_compute_initialize = c_garrow_compute_initialize;

/** */
alias garrow_s3_finalize = c_garrow_s3_finalize;

/** */
alias garrow_s3_initialize = c_garrow_s3_initialize;

/** */
alias garrow_s3_is_enabled = c_garrow_s3_is_enabled;

// Error

/** */
alias garrow_error_quark = c_garrow_error_quark;

shared static this()
{
  auto libs = gidResolveLibs(LIBS, "gid_apache.arrow24", "Arrow");

  // AggregateNodeOptions
  gidLink(cast(void**)&garrow_aggregate_node_options_get_type, "garrow_aggregate_node_options_get_type", libs);
  gidLink(cast(void**)&garrow_aggregate_node_options_new, "garrow_aggregate_node_options_new", libs);
  gidLink(cast(void**)&garrow_aggregate_node_options_get_aggregations, "garrow_aggregate_node_options_get_aggregations", libs);

  // Aggregation
  gidLink(cast(void**)&garrow_aggregation_get_type, "garrow_aggregation_get_type", libs);
  gidLink(cast(void**)&garrow_aggregation_new, "garrow_aggregation_new", libs);

  // Array
  gidLink(cast(void**)&garrow_array_get_type, "garrow_array_get_type", libs);
  gidLink(cast(void**)&garrow_array_import, "garrow_array_import", libs);
  gidLink(cast(void**)&garrow_array_cast, "garrow_array_cast", libs);
  gidLink(cast(void**)&garrow_array_concatenate, "garrow_array_concatenate", libs);
  gidLink(cast(void**)&garrow_array_count, "garrow_array_count", libs);
  gidLink(cast(void**)&garrow_array_count_values, "garrow_array_count_values", libs);
  gidLink(cast(void**)&garrow_array_dictionary_encode, "garrow_array_dictionary_encode", libs);
  gidLink(cast(void**)&garrow_array_diff_unified, "garrow_array_diff_unified", libs);
  gidLink(cast(void**)&garrow_array_equal, "garrow_array_equal", libs);
  gidLink(cast(void**)&garrow_array_equal_approx, "garrow_array_equal_approx", libs);
  gidLink(cast(void**)&garrow_array_equal_options, "garrow_array_equal_options", libs);
  gidLink(cast(void**)&garrow_array_equal_range, "garrow_array_equal_range", libs);
  gidLink(cast(void**)&garrow_array_export, "garrow_array_export", libs);
  gidLink(cast(void**)&garrow_array_filter, "garrow_array_filter", libs);
  gidLink(cast(void**)&garrow_array_get_length, "garrow_array_get_length", libs);
  gidLink(cast(void**)&garrow_array_get_n_nulls, "garrow_array_get_n_nulls", libs);
  gidLink(cast(void**)&garrow_array_get_null_bitmap, "garrow_array_get_null_bitmap", libs);
  gidLink(cast(void**)&garrow_array_get_offset, "garrow_array_get_offset", libs);
  gidLink(cast(void**)&garrow_array_get_statistics, "garrow_array_get_statistics", libs);
  gidLink(cast(void**)&garrow_array_get_value_data_type, "garrow_array_get_value_data_type", libs);
  gidLink(cast(void**)&garrow_array_get_value_type, "garrow_array_get_value_type", libs);
  gidLink(cast(void**)&garrow_array_is_in, "garrow_array_is_in", libs);
  gidLink(cast(void**)&garrow_array_is_in_chunked_array, "garrow_array_is_in_chunked_array", libs);
  gidLink(cast(void**)&garrow_array_is_null, "garrow_array_is_null", libs);
  gidLink(cast(void**)&garrow_array_is_valid, "garrow_array_is_valid", libs);
  gidLink(cast(void**)&garrow_array_run_end_encode, "garrow_array_run_end_encode", libs);
  gidLink(cast(void**)&garrow_array_slice, "garrow_array_slice", libs);
  gidLink(cast(void**)&garrow_array_sort_indices, "garrow_array_sort_indices", libs);
  gidLink(cast(void**)&garrow_array_sort_to_indices, "garrow_array_sort_to_indices", libs);
  gidLink(cast(void**)&garrow_array_take, "garrow_array_take", libs);
  gidLink(cast(void**)&garrow_array_take_chunked_array, "garrow_array_take_chunked_array", libs);
  gidLink(cast(void**)&garrow_array_to_string, "garrow_array_to_string", libs);
  gidLink(cast(void**)&garrow_array_unique, "garrow_array_unique", libs);
  gidLink(cast(void**)&garrow_array_validate, "garrow_array_validate", libs);
  gidLink(cast(void**)&garrow_array_validate_full, "garrow_array_validate_full", libs);
  gidLink(cast(void**)&garrow_array_view, "garrow_array_view", libs);

  // ArrayBuilder
  gidLink(cast(void**)&garrow_array_builder_get_type, "garrow_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_array_builder_append_empty_value, "garrow_array_builder_append_empty_value", libs);
  gidLink(cast(void**)&garrow_array_builder_append_empty_values, "garrow_array_builder_append_empty_values", libs);
  gidLink(cast(void**)&garrow_array_builder_append_null, "garrow_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_array_builder_append_nulls, "garrow_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_array_builder_finish, "garrow_array_builder_finish", libs);
  gidLink(cast(void**)&garrow_array_builder_get_capacity, "garrow_array_builder_get_capacity", libs);
  gidLink(cast(void**)&garrow_array_builder_get_child, "garrow_array_builder_get_child", libs);
  gidLink(cast(void**)&garrow_array_builder_get_children, "garrow_array_builder_get_children", libs);
  gidLink(cast(void**)&garrow_array_builder_get_length, "garrow_array_builder_get_length", libs);
  gidLink(cast(void**)&garrow_array_builder_get_n_nulls, "garrow_array_builder_get_n_nulls", libs);
  gidLink(cast(void**)&garrow_array_builder_get_value_data_type, "garrow_array_builder_get_value_data_type", libs);
  gidLink(cast(void**)&garrow_array_builder_get_value_type, "garrow_array_builder_get_value_type", libs);
  gidLink(cast(void**)&garrow_array_builder_reserve, "garrow_array_builder_reserve", libs);
  gidLink(cast(void**)&garrow_array_builder_reset, "garrow_array_builder_reset", libs);
  gidLink(cast(void**)&garrow_array_builder_resize, "garrow_array_builder_resize", libs);

  // ArrayDatum
  gidLink(cast(void**)&garrow_array_datum_get_type, "garrow_array_datum_get_type", libs);
  gidLink(cast(void**)&garrow_array_datum_new, "garrow_array_datum_new", libs);

  // ArraySortOptions
  gidLink(cast(void**)&garrow_array_sort_options_get_type, "garrow_array_sort_options_get_type", libs);
  gidLink(cast(void**)&garrow_array_sort_options_new, "garrow_array_sort_options_new", libs);
  gidLink(cast(void**)&garrow_array_sort_options_equal, "garrow_array_sort_options_equal", libs);

  // ArrayStatistics
  gidLink(cast(void**)&garrow_array_statistics_get_type, "garrow_array_statistics_get_type", libs);
  gidLink(cast(void**)&garrow_array_statistics_get_distinct_count, "garrow_array_statistics_get_distinct_count", libs);
  gidLink(cast(void**)&garrow_array_statistics_get_distinct_count_approximate, "garrow_array_statistics_get_distinct_count_approximate", libs);
  gidLink(cast(void**)&garrow_array_statistics_get_distinct_count_exact, "garrow_array_statistics_get_distinct_count_exact", libs);
  gidLink(cast(void**)&garrow_array_statistics_get_null_count, "garrow_array_statistics_get_null_count", libs);
  gidLink(cast(void**)&garrow_array_statistics_get_null_count_approximate, "garrow_array_statistics_get_null_count_approximate", libs);
  gidLink(cast(void**)&garrow_array_statistics_get_null_count_exact, "garrow_array_statistics_get_null_count_exact", libs);
  gidLink(cast(void**)&garrow_array_statistics_has_distinct_count, "garrow_array_statistics_has_distinct_count", libs);
  gidLink(cast(void**)&garrow_array_statistics_has_null_count, "garrow_array_statistics_has_null_count", libs);
  gidLink(cast(void**)&garrow_array_statistics_is_distinct_count_exact, "garrow_array_statistics_is_distinct_count_exact", libs);
  gidLink(cast(void**)&garrow_array_statistics_is_null_count_exact, "garrow_array_statistics_is_null_count_exact", libs);

  // AssumeTimezoneOptions
  gidLink(cast(void**)&garrow_assume_timezone_options_get_type, "garrow_assume_timezone_options_get_type", libs);
  gidLink(cast(void**)&garrow_assume_timezone_options_new, "garrow_assume_timezone_options_new", libs);

  // AzureFileSystem
  gidLink(cast(void**)&garrow_azure_file_system_get_type, "garrow_azure_file_system_get_type", libs);

  // BaseBinaryScalar
  gidLink(cast(void**)&garrow_base_binary_scalar_get_type, "garrow_base_binary_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_base_binary_scalar_get_value, "garrow_base_binary_scalar_get_value", libs);

  // BaseListDataType
  gidLink(cast(void**)&garrow_base_list_data_type_get_type, "garrow_base_list_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_base_list_data_type_get_field, "garrow_base_list_data_type_get_field", libs);

  // BaseListScalar
  gidLink(cast(void**)&garrow_base_list_scalar_get_type, "garrow_base_list_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_base_list_scalar_get_value, "garrow_base_list_scalar_get_value", libs);

  // BinaryArray
  gidLink(cast(void**)&garrow_binary_array_get_type, "garrow_binary_array_get_type", libs);
  gidLink(cast(void**)&garrow_binary_array_new, "garrow_binary_array_new", libs);
  gidLink(cast(void**)&garrow_binary_array_get_buffer, "garrow_binary_array_get_buffer", libs);
  gidLink(cast(void**)&garrow_binary_array_get_data_buffer, "garrow_binary_array_get_data_buffer", libs);
  gidLink(cast(void**)&garrow_binary_array_get_offsets_buffer, "garrow_binary_array_get_offsets_buffer", libs);
  gidLink(cast(void**)&garrow_binary_array_get_value, "garrow_binary_array_get_value", libs);

  // BinaryArrayBuilder
  gidLink(cast(void**)&garrow_binary_array_builder_get_type, "garrow_binary_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_binary_array_builder_new, "garrow_binary_array_builder_new", libs);
  gidLink(cast(void**)&garrow_binary_array_builder_append, "garrow_binary_array_builder_append", libs);
  gidLink(cast(void**)&garrow_binary_array_builder_append_null, "garrow_binary_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_binary_array_builder_append_nulls, "garrow_binary_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_binary_array_builder_append_value, "garrow_binary_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_binary_array_builder_append_value_bytes, "garrow_binary_array_builder_append_value_bytes", libs);
  gidLink(cast(void**)&garrow_binary_array_builder_append_values, "garrow_binary_array_builder_append_values", libs);

  // BinaryDataType
  gidLink(cast(void**)&garrow_binary_data_type_get_type, "garrow_binary_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_binary_data_type_new, "garrow_binary_data_type_new", libs);

  // BinaryDictionaryArrayBuilder
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_get_type, "garrow_binary_dictionary_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_new, "garrow_binary_dictionary_array_builder_new", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_append_array, "garrow_binary_dictionary_array_builder_append_array", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_append_indices, "garrow_binary_dictionary_array_builder_append_indices", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_append_null, "garrow_binary_dictionary_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_append_value, "garrow_binary_dictionary_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_append_value_bytes, "garrow_binary_dictionary_array_builder_append_value_bytes", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_finish_delta, "garrow_binary_dictionary_array_builder_finish_delta", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_get_dictionary_length, "garrow_binary_dictionary_array_builder_get_dictionary_length", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_insert_memo_values, "garrow_binary_dictionary_array_builder_insert_memo_values", libs);
  gidLink(cast(void**)&garrow_binary_dictionary_array_builder_reset_full, "garrow_binary_dictionary_array_builder_reset_full", libs);

  // BinaryScalar
  gidLink(cast(void**)&garrow_binary_scalar_get_type, "garrow_binary_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_binary_scalar_new, "garrow_binary_scalar_new", libs);

  // BinaryViewArray
  gidLink(cast(void**)&garrow_binary_view_array_get_type, "garrow_binary_view_array_get_type", libs);
  gidLink(cast(void**)&garrow_binary_view_array_new, "garrow_binary_view_array_new", libs);
  gidLink(cast(void**)&garrow_binary_view_array_get_value, "garrow_binary_view_array_get_value", libs);

  // BinaryViewDataType
  gidLink(cast(void**)&garrow_binary_view_data_type_get_type, "garrow_binary_view_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_binary_view_data_type_new, "garrow_binary_view_data_type_new", libs);

  // BooleanArray
  gidLink(cast(void**)&garrow_boolean_array_get_type, "garrow_boolean_array_get_type", libs);
  gidLink(cast(void**)&garrow_boolean_array_new, "garrow_boolean_array_new", libs);
  gidLink(cast(void**)&garrow_boolean_array_and, "garrow_boolean_array_and", libs);
  gidLink(cast(void**)&garrow_boolean_array_get_value, "garrow_boolean_array_get_value", libs);
  gidLink(cast(void**)&garrow_boolean_array_get_values, "garrow_boolean_array_get_values", libs);
  gidLink(cast(void**)&garrow_boolean_array_invert, "garrow_boolean_array_invert", libs);
  gidLink(cast(void**)&garrow_boolean_array_or, "garrow_boolean_array_or", libs);
  gidLink(cast(void**)&garrow_boolean_array_xor, "garrow_boolean_array_xor", libs);

  // BooleanArrayBuilder
  gidLink(cast(void**)&garrow_boolean_array_builder_get_type, "garrow_boolean_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_boolean_array_builder_new, "garrow_boolean_array_builder_new", libs);
  gidLink(cast(void**)&garrow_boolean_array_builder_append, "garrow_boolean_array_builder_append", libs);
  gidLink(cast(void**)&garrow_boolean_array_builder_append_null, "garrow_boolean_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_boolean_array_builder_append_nulls, "garrow_boolean_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_boolean_array_builder_append_value, "garrow_boolean_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_boolean_array_builder_append_values, "garrow_boolean_array_builder_append_values", libs);

  // BooleanDataType
  gidLink(cast(void**)&garrow_boolean_data_type_get_type, "garrow_boolean_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_boolean_data_type_new, "garrow_boolean_data_type_new", libs);

  // BooleanScalar
  gidLink(cast(void**)&garrow_boolean_scalar_get_type, "garrow_boolean_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_boolean_scalar_new, "garrow_boolean_scalar_new", libs);
  gidLink(cast(void**)&garrow_boolean_scalar_get_value, "garrow_boolean_scalar_get_value", libs);

  // Buffer
  gidLink(cast(void**)&garrow_buffer_get_type, "garrow_buffer_get_type", libs);
  gidLink(cast(void**)&garrow_buffer_new, "garrow_buffer_new", libs);
  gidLink(cast(void**)&garrow_buffer_new_bytes, "garrow_buffer_new_bytes", libs);
  gidLink(cast(void**)&garrow_buffer_copy, "garrow_buffer_copy", libs);
  gidLink(cast(void**)&garrow_buffer_equal, "garrow_buffer_equal", libs);
  gidLink(cast(void**)&garrow_buffer_equal_n_bytes, "garrow_buffer_equal_n_bytes", libs);
  gidLink(cast(void**)&garrow_buffer_get_capacity, "garrow_buffer_get_capacity", libs);
  gidLink(cast(void**)&garrow_buffer_get_data, "garrow_buffer_get_data", libs);
  gidLink(cast(void**)&garrow_buffer_get_mutable_data, "garrow_buffer_get_mutable_data", libs);
  gidLink(cast(void**)&garrow_buffer_get_parent, "garrow_buffer_get_parent", libs);
  gidLink(cast(void**)&garrow_buffer_get_size, "garrow_buffer_get_size", libs);
  gidLink(cast(void**)&garrow_buffer_is_mutable, "garrow_buffer_is_mutable", libs);
  gidLink(cast(void**)&garrow_buffer_slice, "garrow_buffer_slice", libs);

  // BufferInputStream
  gidLink(cast(void**)&garrow_buffer_input_stream_get_type, "garrow_buffer_input_stream_get_type", libs);
  gidLink(cast(void**)&garrow_buffer_input_stream_new, "garrow_buffer_input_stream_new", libs);
  gidLink(cast(void**)&garrow_buffer_input_stream_get_buffer, "garrow_buffer_input_stream_get_buffer", libs);

  // BufferOutputStream
  gidLink(cast(void**)&garrow_buffer_output_stream_get_type, "garrow_buffer_output_stream_get_type", libs);
  gidLink(cast(void**)&garrow_buffer_output_stream_new, "garrow_buffer_output_stream_new", libs);

  // CSVReadOptions
  gidLink(cast(void**)&garrow_csv_read_options_get_type, "garrow_csv_read_options_get_type", libs);
  gidLink(cast(void**)&garrow_csv_read_options_new, "garrow_csv_read_options_new", libs);
  gidLink(cast(void**)&garrow_csv_read_options_add_column_name, "garrow_csv_read_options_add_column_name", libs);
  gidLink(cast(void**)&garrow_csv_read_options_add_column_type, "garrow_csv_read_options_add_column_type", libs);
  gidLink(cast(void**)&garrow_csv_read_options_add_false_value, "garrow_csv_read_options_add_false_value", libs);
  gidLink(cast(void**)&garrow_csv_read_options_add_null_value, "garrow_csv_read_options_add_null_value", libs);
  gidLink(cast(void**)&garrow_csv_read_options_add_schema, "garrow_csv_read_options_add_schema", libs);
  gidLink(cast(void**)&garrow_csv_read_options_add_timestamp_parser, "garrow_csv_read_options_add_timestamp_parser", libs);
  gidLink(cast(void**)&garrow_csv_read_options_add_true_value, "garrow_csv_read_options_add_true_value", libs);
  gidLink(cast(void**)&garrow_csv_read_options_get_column_names, "garrow_csv_read_options_get_column_names", libs);
  gidLink(cast(void**)&garrow_csv_read_options_get_column_types, "garrow_csv_read_options_get_column_types", libs);
  gidLink(cast(void**)&garrow_csv_read_options_get_false_values, "garrow_csv_read_options_get_false_values", libs);
  gidLink(cast(void**)&garrow_csv_read_options_get_null_values, "garrow_csv_read_options_get_null_values", libs);
  gidLink(cast(void**)&garrow_csv_read_options_get_timestamp_parsers, "garrow_csv_read_options_get_timestamp_parsers", libs);
  gidLink(cast(void**)&garrow_csv_read_options_get_true_values, "garrow_csv_read_options_get_true_values", libs);
  gidLink(cast(void**)&garrow_csv_read_options_set_column_names, "garrow_csv_read_options_set_column_names", libs);
  gidLink(cast(void**)&garrow_csv_read_options_set_false_values, "garrow_csv_read_options_set_false_values", libs);
  gidLink(cast(void**)&garrow_csv_read_options_set_null_values, "garrow_csv_read_options_set_null_values", libs);
  gidLink(cast(void**)&garrow_csv_read_options_set_timestamp_parsers, "garrow_csv_read_options_set_timestamp_parsers", libs);
  gidLink(cast(void**)&garrow_csv_read_options_set_true_values, "garrow_csv_read_options_set_true_values", libs);

  // CSVReader
  gidLink(cast(void**)&garrow_csv_reader_get_type, "garrow_csv_reader_get_type", libs);
  gidLink(cast(void**)&garrow_csv_reader_new, "garrow_csv_reader_new", libs);
  gidLink(cast(void**)&garrow_csv_reader_read, "garrow_csv_reader_read", libs);

  // CSVWriteOptions
  gidLink(cast(void**)&garrow_csv_write_options_get_type, "garrow_csv_write_options_get_type", libs);
  gidLink(cast(void**)&garrow_csv_write_options_new, "garrow_csv_write_options_new", libs);

  // CSVWriter
  gidLink(cast(void**)&garrow_csv_writer_get_type, "garrow_csv_writer_get_type", libs);
  gidLink(cast(void**)&garrow_csv_writer_new, "garrow_csv_writer_new", libs);

  // CallExpression
  gidLink(cast(void**)&garrow_call_expression_get_type, "garrow_call_expression_get_type", libs);
  gidLink(cast(void**)&garrow_call_expression_new, "garrow_call_expression_new", libs);
  gidLink(cast(void**)&garrow_call_expression_get_arguments, "garrow_call_expression_get_arguments", libs);

  // CastOptions
  gidLink(cast(void**)&garrow_cast_options_get_type, "garrow_cast_options_get_type", libs);
  gidLink(cast(void**)&garrow_cast_options_new, "garrow_cast_options_new", libs);

  // ChunkedArray
  gidLink(cast(void**)&garrow_chunked_array_get_type, "garrow_chunked_array_get_type", libs);
  gidLink(cast(void**)&garrow_chunked_array_new, "garrow_chunked_array_new", libs);
  gidLink(cast(void**)&garrow_chunked_array_new_empty, "garrow_chunked_array_new_empty", libs);
  gidLink(cast(void**)&garrow_chunked_array_import, "garrow_chunked_array_import", libs);
  gidLink(cast(void**)&garrow_chunked_array_combine, "garrow_chunked_array_combine", libs);
  gidLink(cast(void**)&garrow_chunked_array_equal, "garrow_chunked_array_equal", libs);
  gidLink(cast(void**)&garrow_chunked_array_export, "garrow_chunked_array_export", libs);
  gidLink(cast(void**)&garrow_chunked_array_filter, "garrow_chunked_array_filter", libs);
  gidLink(cast(void**)&garrow_chunked_array_filter_chunked_array, "garrow_chunked_array_filter_chunked_array", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_chunk, "garrow_chunked_array_get_chunk", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_chunks, "garrow_chunked_array_get_chunks", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_length, "garrow_chunked_array_get_length", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_n_chunks, "garrow_chunked_array_get_n_chunks", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_n_nulls, "garrow_chunked_array_get_n_nulls", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_n_rows, "garrow_chunked_array_get_n_rows", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_value_data_type, "garrow_chunked_array_get_value_data_type", libs);
  gidLink(cast(void**)&garrow_chunked_array_get_value_type, "garrow_chunked_array_get_value_type", libs);
  gidLink(cast(void**)&garrow_chunked_array_slice, "garrow_chunked_array_slice", libs);
  gidLink(cast(void**)&garrow_chunked_array_sort_indices, "garrow_chunked_array_sort_indices", libs);
  gidLink(cast(void**)&garrow_chunked_array_take, "garrow_chunked_array_take", libs);
  gidLink(cast(void**)&garrow_chunked_array_take_chunked_array, "garrow_chunked_array_take_chunked_array", libs);
  gidLink(cast(void**)&garrow_chunked_array_to_string, "garrow_chunked_array_to_string", libs);

  // ChunkedArrayDatum
  gidLink(cast(void**)&garrow_chunked_array_datum_get_type, "garrow_chunked_array_datum_get_type", libs);
  gidLink(cast(void**)&garrow_chunked_array_datum_new, "garrow_chunked_array_datum_new", libs);

  // Codec
  gidLink(cast(void**)&garrow_codec_get_type, "garrow_codec_get_type", libs);
  gidLink(cast(void**)&garrow_codec_new, "garrow_codec_new", libs);
  gidLink(cast(void**)&garrow_codec_get_compression_level, "garrow_codec_get_compression_level", libs);
  gidLink(cast(void**)&garrow_codec_get_compression_type, "garrow_codec_get_compression_type", libs);
  gidLink(cast(void**)&garrow_codec_get_name, "garrow_codec_get_name", libs);

  // CompressedInputStream
  gidLink(cast(void**)&garrow_compressed_input_stream_get_type, "garrow_compressed_input_stream_get_type", libs);
  gidLink(cast(void**)&garrow_compressed_input_stream_new, "garrow_compressed_input_stream_new", libs);

  // CompressedOutputStream
  gidLink(cast(void**)&garrow_compressed_output_stream_get_type, "garrow_compressed_output_stream_get_type", libs);
  gidLink(cast(void**)&garrow_compressed_output_stream_new, "garrow_compressed_output_stream_new", libs);

  // CountOptions
  gidLink(cast(void**)&garrow_count_options_get_type, "garrow_count_options_get_type", libs);
  gidLink(cast(void**)&garrow_count_options_new, "garrow_count_options_new", libs);

  // CumulativeOptions
  gidLink(cast(void**)&garrow_cumulative_options_get_type, "garrow_cumulative_options_get_type", libs);
  gidLink(cast(void**)&garrow_cumulative_options_new, "garrow_cumulative_options_new", libs);

  // DataType
  gidLink(cast(void**)&garrow_data_type_get_type, "garrow_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_data_type_import, "garrow_data_type_import", libs);
  gidLink(cast(void**)&garrow_data_type_equal, "garrow_data_type_equal", libs);
  gidLink(cast(void**)&garrow_data_type_export, "garrow_data_type_export", libs);
  gidLink(cast(void**)&garrow_data_type_get_id, "garrow_data_type_get_id", libs);
  gidLink(cast(void**)&garrow_data_type_get_name, "garrow_data_type_get_name", libs);
  gidLink(cast(void**)&garrow_data_type_to_string, "garrow_data_type_to_string", libs);

  // Date32Array
  gidLink(cast(void**)&garrow_date32_array_get_type, "garrow_date32_array_get_type", libs);
  gidLink(cast(void**)&garrow_date32_array_new, "garrow_date32_array_new", libs);
  gidLink(cast(void**)&garrow_date32_array_get_value, "garrow_date32_array_get_value", libs);
  gidLink(cast(void**)&garrow_date32_array_get_values, "garrow_date32_array_get_values", libs);

  // Date32ArrayBuilder
  gidLink(cast(void**)&garrow_date32_array_builder_get_type, "garrow_date32_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_date32_array_builder_new, "garrow_date32_array_builder_new", libs);
  gidLink(cast(void**)&garrow_date32_array_builder_append, "garrow_date32_array_builder_append", libs);
  gidLink(cast(void**)&garrow_date32_array_builder_append_null, "garrow_date32_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_date32_array_builder_append_nulls, "garrow_date32_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_date32_array_builder_append_value, "garrow_date32_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_date32_array_builder_append_values, "garrow_date32_array_builder_append_values", libs);

  // Date32DataType
  gidLink(cast(void**)&garrow_date32_data_type_get_type, "garrow_date32_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_date32_data_type_new, "garrow_date32_data_type_new", libs);

  // Date32Scalar
  gidLink(cast(void**)&garrow_date32_scalar_get_type, "garrow_date32_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_date32_scalar_new, "garrow_date32_scalar_new", libs);
  gidLink(cast(void**)&garrow_date32_scalar_get_value, "garrow_date32_scalar_get_value", libs);

  // Date64Array
  gidLink(cast(void**)&garrow_date64_array_get_type, "garrow_date64_array_get_type", libs);
  gidLink(cast(void**)&garrow_date64_array_new, "garrow_date64_array_new", libs);
  gidLink(cast(void**)&garrow_date64_array_get_value, "garrow_date64_array_get_value", libs);
  gidLink(cast(void**)&garrow_date64_array_get_values, "garrow_date64_array_get_values", libs);

  // Date64ArrayBuilder
  gidLink(cast(void**)&garrow_date64_array_builder_get_type, "garrow_date64_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_date64_array_builder_new, "garrow_date64_array_builder_new", libs);
  gidLink(cast(void**)&garrow_date64_array_builder_append, "garrow_date64_array_builder_append", libs);
  gidLink(cast(void**)&garrow_date64_array_builder_append_null, "garrow_date64_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_date64_array_builder_append_nulls, "garrow_date64_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_date64_array_builder_append_value, "garrow_date64_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_date64_array_builder_append_values, "garrow_date64_array_builder_append_values", libs);

  // Date64DataType
  gidLink(cast(void**)&garrow_date64_data_type_get_type, "garrow_date64_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_date64_data_type_new, "garrow_date64_data_type_new", libs);

  // Date64Scalar
  gidLink(cast(void**)&garrow_date64_scalar_get_type, "garrow_date64_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_date64_scalar_new, "garrow_date64_scalar_new", libs);
  gidLink(cast(void**)&garrow_date64_scalar_get_value, "garrow_date64_scalar_get_value", libs);

  // Datum
  gidLink(cast(void**)&garrow_datum_get_type, "garrow_datum_get_type", libs);
  gidLink(cast(void**)&garrow_datum_equal, "garrow_datum_equal", libs);
  gidLink(cast(void**)&garrow_datum_is_array, "garrow_datum_is_array", libs);
  gidLink(cast(void**)&garrow_datum_is_array_like, "garrow_datum_is_array_like", libs);
  gidLink(cast(void**)&garrow_datum_is_scalar, "garrow_datum_is_scalar", libs);
  gidLink(cast(void**)&garrow_datum_is_value, "garrow_datum_is_value", libs);
  gidLink(cast(void**)&garrow_datum_to_string, "garrow_datum_to_string", libs);

  // DayMillisecond
  gidLink(cast(void**)&garrow_day_millisecond_get_type, "garrow_day_millisecond_get_type", libs);
  gidLink(cast(void**)&garrow_day_millisecond_new, "garrow_day_millisecond_new", libs);
  gidLink(cast(void**)&garrow_day_millisecond_equal, "garrow_day_millisecond_equal", libs);
  gidLink(cast(void**)&garrow_day_millisecond_less_than, "garrow_day_millisecond_less_than", libs);

  // DayOfWeekOptions
  gidLink(cast(void**)&garrow_day_of_week_options_get_type, "garrow_day_of_week_options_get_type", libs);
  gidLink(cast(void**)&garrow_day_of_week_options_new, "garrow_day_of_week_options_new", libs);

  // DayTimeIntervalArray
  gidLink(cast(void**)&garrow_day_time_interval_array_get_type, "garrow_day_time_interval_array_get_type", libs);
  gidLink(cast(void**)&garrow_day_time_interval_array_new, "garrow_day_time_interval_array_new", libs);
  gidLink(cast(void**)&garrow_day_time_interval_array_get_value, "garrow_day_time_interval_array_get_value", libs);
  gidLink(cast(void**)&garrow_day_time_interval_array_get_values, "garrow_day_time_interval_array_get_values", libs);

  // DayTimeIntervalArrayBuilder
  gidLink(cast(void**)&garrow_day_time_interval_array_builder_get_type, "garrow_day_time_interval_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_day_time_interval_array_builder_new, "garrow_day_time_interval_array_builder_new", libs);
  gidLink(cast(void**)&garrow_day_time_interval_array_builder_append_value, "garrow_day_time_interval_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_day_time_interval_array_builder_append_values, "garrow_day_time_interval_array_builder_append_values", libs);

  // DayTimeIntervalDataType
  gidLink(cast(void**)&garrow_day_time_interval_data_type_get_type, "garrow_day_time_interval_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_day_time_interval_data_type_new, "garrow_day_time_interval_data_type_new", libs);

  // DayTimeIntervalScalar
  gidLink(cast(void**)&garrow_day_time_interval_scalar_get_type, "garrow_day_time_interval_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_day_time_interval_scalar_new, "garrow_day_time_interval_scalar_new", libs);
  gidLink(cast(void**)&garrow_day_time_interval_scalar_get_value, "garrow_day_time_interval_scalar_get_value", libs);

  // Decimal128
  gidLink(cast(void**)&garrow_decimal128_get_type, "garrow_decimal128_get_type", libs);
  gidLink(cast(void**)&garrow_decimal128_new_integer, "garrow_decimal128_new_integer", libs);
  gidLink(cast(void**)&garrow_decimal128_new_string, "garrow_decimal128_new_string", libs);
  gidLink(cast(void**)&garrow_decimal128_abs, "garrow_decimal128_abs", libs);
  gidLink(cast(void**)&garrow_decimal128_copy, "garrow_decimal128_copy", libs);
  gidLink(cast(void**)&garrow_decimal128_divide, "garrow_decimal128_divide", libs);
  gidLink(cast(void**)&garrow_decimal128_equal, "garrow_decimal128_equal", libs);
  gidLink(cast(void**)&garrow_decimal128_greater_than, "garrow_decimal128_greater_than", libs);
  gidLink(cast(void**)&garrow_decimal128_greater_than_or_equal, "garrow_decimal128_greater_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal128_less_than, "garrow_decimal128_less_than", libs);
  gidLink(cast(void**)&garrow_decimal128_less_than_or_equal, "garrow_decimal128_less_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal128_minus, "garrow_decimal128_minus", libs);
  gidLink(cast(void**)&garrow_decimal128_multiply, "garrow_decimal128_multiply", libs);
  gidLink(cast(void**)&garrow_decimal128_negate, "garrow_decimal128_negate", libs);
  gidLink(cast(void**)&garrow_decimal128_not_equal, "garrow_decimal128_not_equal", libs);
  gidLink(cast(void**)&garrow_decimal128_plus, "garrow_decimal128_plus", libs);
  gidLink(cast(void**)&garrow_decimal128_rescale, "garrow_decimal128_rescale", libs);
  gidLink(cast(void**)&garrow_decimal128_to_bytes, "garrow_decimal128_to_bytes", libs);
  gidLink(cast(void**)&garrow_decimal128_to_integer, "garrow_decimal128_to_integer", libs);
  gidLink(cast(void**)&garrow_decimal128_to_string, "garrow_decimal128_to_string", libs);
  gidLink(cast(void**)&garrow_decimal128_to_string_scale, "garrow_decimal128_to_string_scale", libs);

  // Decimal128Array
  gidLink(cast(void**)&garrow_decimal128_array_get_type, "garrow_decimal128_array_get_type", libs);
  gidLink(cast(void**)&garrow_decimal128_array_format_value, "garrow_decimal128_array_format_value", libs);
  gidLink(cast(void**)&garrow_decimal128_array_get_value, "garrow_decimal128_array_get_value", libs);

  // Decimal128ArrayBuilder
  gidLink(cast(void**)&garrow_decimal128_array_builder_get_type, "garrow_decimal128_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_decimal128_array_builder_new, "garrow_decimal128_array_builder_new", libs);
  gidLink(cast(void**)&garrow_decimal128_array_builder_append, "garrow_decimal128_array_builder_append", libs);
  gidLink(cast(void**)&garrow_decimal128_array_builder_append_null, "garrow_decimal128_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_decimal128_array_builder_append_value, "garrow_decimal128_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_decimal128_array_builder_append_values, "garrow_decimal128_array_builder_append_values", libs);

  // Decimal128DataType
  gidLink(cast(void**)&garrow_decimal128_data_type_get_type, "garrow_decimal128_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_decimal128_data_type_new, "garrow_decimal128_data_type_new", libs);
  gidLink(cast(void**)&garrow_decimal128_data_type_max_precision, "garrow_decimal128_data_type_max_precision", libs);

  // Decimal128Scalar
  gidLink(cast(void**)&garrow_decimal128_scalar_get_type, "garrow_decimal128_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_decimal128_scalar_new, "garrow_decimal128_scalar_new", libs);
  gidLink(cast(void**)&garrow_decimal128_scalar_get_value, "garrow_decimal128_scalar_get_value", libs);

  // Decimal256
  gidLink(cast(void**)&garrow_decimal256_get_type, "garrow_decimal256_get_type", libs);
  gidLink(cast(void**)&garrow_decimal256_new_integer, "garrow_decimal256_new_integer", libs);
  gidLink(cast(void**)&garrow_decimal256_new_string, "garrow_decimal256_new_string", libs);
  gidLink(cast(void**)&garrow_decimal256_abs, "garrow_decimal256_abs", libs);
  gidLink(cast(void**)&garrow_decimal256_copy, "garrow_decimal256_copy", libs);
  gidLink(cast(void**)&garrow_decimal256_divide, "garrow_decimal256_divide", libs);
  gidLink(cast(void**)&garrow_decimal256_equal, "garrow_decimal256_equal", libs);
  gidLink(cast(void**)&garrow_decimal256_greater_than, "garrow_decimal256_greater_than", libs);
  gidLink(cast(void**)&garrow_decimal256_greater_than_or_equal, "garrow_decimal256_greater_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal256_less_than, "garrow_decimal256_less_than", libs);
  gidLink(cast(void**)&garrow_decimal256_less_than_or_equal, "garrow_decimal256_less_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal256_multiply, "garrow_decimal256_multiply", libs);
  gidLink(cast(void**)&garrow_decimal256_negate, "garrow_decimal256_negate", libs);
  gidLink(cast(void**)&garrow_decimal256_not_equal, "garrow_decimal256_not_equal", libs);
  gidLink(cast(void**)&garrow_decimal256_plus, "garrow_decimal256_plus", libs);
  gidLink(cast(void**)&garrow_decimal256_rescale, "garrow_decimal256_rescale", libs);
  gidLink(cast(void**)&garrow_decimal256_to_bytes, "garrow_decimal256_to_bytes", libs);
  gidLink(cast(void**)&garrow_decimal256_to_string, "garrow_decimal256_to_string", libs);
  gidLink(cast(void**)&garrow_decimal256_to_string_scale, "garrow_decimal256_to_string_scale", libs);

  // Decimal256Array
  gidLink(cast(void**)&garrow_decimal256_array_get_type, "garrow_decimal256_array_get_type", libs);
  gidLink(cast(void**)&garrow_decimal256_array_format_value, "garrow_decimal256_array_format_value", libs);
  gidLink(cast(void**)&garrow_decimal256_array_get_value, "garrow_decimal256_array_get_value", libs);

  // Decimal256ArrayBuilder
  gidLink(cast(void**)&garrow_decimal256_array_builder_get_type, "garrow_decimal256_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_decimal256_array_builder_new, "garrow_decimal256_array_builder_new", libs);
  gidLink(cast(void**)&garrow_decimal256_array_builder_append_value, "garrow_decimal256_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_decimal256_array_builder_append_values, "garrow_decimal256_array_builder_append_values", libs);

  // Decimal256DataType
  gidLink(cast(void**)&garrow_decimal256_data_type_get_type, "garrow_decimal256_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_decimal256_data_type_new, "garrow_decimal256_data_type_new", libs);
  gidLink(cast(void**)&garrow_decimal256_data_type_max_precision, "garrow_decimal256_data_type_max_precision", libs);

  // Decimal256Scalar
  gidLink(cast(void**)&garrow_decimal256_scalar_get_type, "garrow_decimal256_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_decimal256_scalar_new, "garrow_decimal256_scalar_new", libs);
  gidLink(cast(void**)&garrow_decimal256_scalar_get_value, "garrow_decimal256_scalar_get_value", libs);

  // Decimal32
  gidLink(cast(void**)&garrow_decimal32_get_type, "garrow_decimal32_get_type", libs);
  gidLink(cast(void**)&garrow_decimal32_new_integer, "garrow_decimal32_new_integer", libs);
  gidLink(cast(void**)&garrow_decimal32_new_string, "garrow_decimal32_new_string", libs);
  gidLink(cast(void**)&garrow_decimal32_abs, "garrow_decimal32_abs", libs);
  gidLink(cast(void**)&garrow_decimal32_copy, "garrow_decimal32_copy", libs);
  gidLink(cast(void**)&garrow_decimal32_divide, "garrow_decimal32_divide", libs);
  gidLink(cast(void**)&garrow_decimal32_equal, "garrow_decimal32_equal", libs);
  gidLink(cast(void**)&garrow_decimal32_greater_than, "garrow_decimal32_greater_than", libs);
  gidLink(cast(void**)&garrow_decimal32_greater_than_or_equal, "garrow_decimal32_greater_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal32_less_than, "garrow_decimal32_less_than", libs);
  gidLink(cast(void**)&garrow_decimal32_less_than_or_equal, "garrow_decimal32_less_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal32_minus, "garrow_decimal32_minus", libs);
  gidLink(cast(void**)&garrow_decimal32_multiply, "garrow_decimal32_multiply", libs);
  gidLink(cast(void**)&garrow_decimal32_negate, "garrow_decimal32_negate", libs);
  gidLink(cast(void**)&garrow_decimal32_not_equal, "garrow_decimal32_not_equal", libs);
  gidLink(cast(void**)&garrow_decimal32_plus, "garrow_decimal32_plus", libs);
  gidLink(cast(void**)&garrow_decimal32_rescale, "garrow_decimal32_rescale", libs);
  gidLink(cast(void**)&garrow_decimal32_to_bytes, "garrow_decimal32_to_bytes", libs);
  gidLink(cast(void**)&garrow_decimal32_to_integer, "garrow_decimal32_to_integer", libs);
  gidLink(cast(void**)&garrow_decimal32_to_string, "garrow_decimal32_to_string", libs);
  gidLink(cast(void**)&garrow_decimal32_to_string_scale, "garrow_decimal32_to_string_scale", libs);

  // Decimal32Array
  gidLink(cast(void**)&garrow_decimal32_array_get_type, "garrow_decimal32_array_get_type", libs);
  gidLink(cast(void**)&garrow_decimal32_array_format_value, "garrow_decimal32_array_format_value", libs);
  gidLink(cast(void**)&garrow_decimal32_array_get_value, "garrow_decimal32_array_get_value", libs);

  // Decimal32ArrayBuilder
  gidLink(cast(void**)&garrow_decimal32_array_builder_get_type, "garrow_decimal32_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_decimal32_array_builder_new, "garrow_decimal32_array_builder_new", libs);
  gidLink(cast(void**)&garrow_decimal32_array_builder_append_value, "garrow_decimal32_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_decimal32_array_builder_append_values, "garrow_decimal32_array_builder_append_values", libs);

  // Decimal32DataType
  gidLink(cast(void**)&garrow_decimal32_data_type_get_type, "garrow_decimal32_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_decimal32_data_type_new, "garrow_decimal32_data_type_new", libs);
  gidLink(cast(void**)&garrow_decimal32_data_type_max_precision, "garrow_decimal32_data_type_max_precision", libs);

  // Decimal32Scalar
  gidLink(cast(void**)&garrow_decimal32_scalar_get_type, "garrow_decimal32_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_decimal32_scalar_new, "garrow_decimal32_scalar_new", libs);
  gidLink(cast(void**)&garrow_decimal32_scalar_get_value, "garrow_decimal32_scalar_get_value", libs);

  // Decimal64
  gidLink(cast(void**)&garrow_decimal64_get_type, "garrow_decimal64_get_type", libs);
  gidLink(cast(void**)&garrow_decimal64_new_integer, "garrow_decimal64_new_integer", libs);
  gidLink(cast(void**)&garrow_decimal64_new_string, "garrow_decimal64_new_string", libs);
  gidLink(cast(void**)&garrow_decimal64_abs, "garrow_decimal64_abs", libs);
  gidLink(cast(void**)&garrow_decimal64_copy, "garrow_decimal64_copy", libs);
  gidLink(cast(void**)&garrow_decimal64_divide, "garrow_decimal64_divide", libs);
  gidLink(cast(void**)&garrow_decimal64_equal, "garrow_decimal64_equal", libs);
  gidLink(cast(void**)&garrow_decimal64_greater_than, "garrow_decimal64_greater_than", libs);
  gidLink(cast(void**)&garrow_decimal64_greater_than_or_equal, "garrow_decimal64_greater_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal64_less_than, "garrow_decimal64_less_than", libs);
  gidLink(cast(void**)&garrow_decimal64_less_than_or_equal, "garrow_decimal64_less_than_or_equal", libs);
  gidLink(cast(void**)&garrow_decimal64_minus, "garrow_decimal64_minus", libs);
  gidLink(cast(void**)&garrow_decimal64_multiply, "garrow_decimal64_multiply", libs);
  gidLink(cast(void**)&garrow_decimal64_negate, "garrow_decimal64_negate", libs);
  gidLink(cast(void**)&garrow_decimal64_not_equal, "garrow_decimal64_not_equal", libs);
  gidLink(cast(void**)&garrow_decimal64_plus, "garrow_decimal64_plus", libs);
  gidLink(cast(void**)&garrow_decimal64_rescale, "garrow_decimal64_rescale", libs);
  gidLink(cast(void**)&garrow_decimal64_to_bytes, "garrow_decimal64_to_bytes", libs);
  gidLink(cast(void**)&garrow_decimal64_to_integer, "garrow_decimal64_to_integer", libs);
  gidLink(cast(void**)&garrow_decimal64_to_string, "garrow_decimal64_to_string", libs);
  gidLink(cast(void**)&garrow_decimal64_to_string_scale, "garrow_decimal64_to_string_scale", libs);

  // Decimal64Array
  gidLink(cast(void**)&garrow_decimal64_array_get_type, "garrow_decimal64_array_get_type", libs);
  gidLink(cast(void**)&garrow_decimal64_array_format_value, "garrow_decimal64_array_format_value", libs);
  gidLink(cast(void**)&garrow_decimal64_array_get_value, "garrow_decimal64_array_get_value", libs);

  // Decimal64ArrayBuilder
  gidLink(cast(void**)&garrow_decimal64_array_builder_get_type, "garrow_decimal64_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_decimal64_array_builder_new, "garrow_decimal64_array_builder_new", libs);
  gidLink(cast(void**)&garrow_decimal64_array_builder_append_value, "garrow_decimal64_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_decimal64_array_builder_append_values, "garrow_decimal64_array_builder_append_values", libs);

  // Decimal64DataType
  gidLink(cast(void**)&garrow_decimal64_data_type_get_type, "garrow_decimal64_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_decimal64_data_type_new, "garrow_decimal64_data_type_new", libs);
  gidLink(cast(void**)&garrow_decimal64_data_type_max_precision, "garrow_decimal64_data_type_max_precision", libs);

  // Decimal64Scalar
  gidLink(cast(void**)&garrow_decimal64_scalar_get_type, "garrow_decimal64_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_decimal64_scalar_new, "garrow_decimal64_scalar_new", libs);
  gidLink(cast(void**)&garrow_decimal64_scalar_get_value, "garrow_decimal64_scalar_get_value", libs);

  // DecimalDataType
  gidLink(cast(void**)&garrow_decimal_data_type_get_type, "garrow_decimal_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_decimal_data_type_new, "garrow_decimal_data_type_new", libs);
  gidLink(cast(void**)&garrow_decimal_data_type_get_precision, "garrow_decimal_data_type_get_precision", libs);
  gidLink(cast(void**)&garrow_decimal_data_type_get_scale, "garrow_decimal_data_type_get_scale", libs);

  // DenseUnionArray
  gidLink(cast(void**)&garrow_dense_union_array_get_type, "garrow_dense_union_array_get_type", libs);
  gidLink(cast(void**)&garrow_dense_union_array_new, "garrow_dense_union_array_new", libs);
  gidLink(cast(void**)&garrow_dense_union_array_new_data_type, "garrow_dense_union_array_new_data_type", libs);
  gidLink(cast(void**)&garrow_dense_union_array_get_value_offset, "garrow_dense_union_array_get_value_offset", libs);

  // DenseUnionArrayBuilder
  gidLink(cast(void**)&garrow_dense_union_array_builder_get_type, "garrow_dense_union_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_dense_union_array_builder_new, "garrow_dense_union_array_builder_new", libs);

  // DenseUnionDataType
  gidLink(cast(void**)&garrow_dense_union_data_type_get_type, "garrow_dense_union_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_dense_union_data_type_new, "garrow_dense_union_data_type_new", libs);

  // DenseUnionScalar
  gidLink(cast(void**)&garrow_dense_union_scalar_get_type, "garrow_dense_union_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_dense_union_scalar_new, "garrow_dense_union_scalar_new", libs);

  // DictionaryArray
  gidLink(cast(void**)&garrow_dictionary_array_get_type, "garrow_dictionary_array_get_type", libs);
  gidLink(cast(void**)&garrow_dictionary_array_new, "garrow_dictionary_array_new", libs);
  gidLink(cast(void**)&garrow_dictionary_array_get_dictionary, "garrow_dictionary_array_get_dictionary", libs);
  gidLink(cast(void**)&garrow_dictionary_array_get_dictionary_data_type, "garrow_dictionary_array_get_dictionary_data_type", libs);
  gidLink(cast(void**)&garrow_dictionary_array_get_indices, "garrow_dictionary_array_get_indices", libs);

  // DictionaryDataType
  gidLink(cast(void**)&garrow_dictionary_data_type_get_type, "garrow_dictionary_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_dictionary_data_type_new, "garrow_dictionary_data_type_new", libs);
  gidLink(cast(void**)&garrow_dictionary_data_type_get_index_data_type, "garrow_dictionary_data_type_get_index_data_type", libs);
  gidLink(cast(void**)&garrow_dictionary_data_type_get_value_data_type, "garrow_dictionary_data_type_get_value_data_type", libs);
  gidLink(cast(void**)&garrow_dictionary_data_type_is_ordered, "garrow_dictionary_data_type_is_ordered", libs);

  // DictionaryEncodeOptions
  gidLink(cast(void**)&garrow_dictionary_encode_options_get_type, "garrow_dictionary_encode_options_get_type", libs);
  gidLink(cast(void**)&garrow_dictionary_encode_options_new, "garrow_dictionary_encode_options_new", libs);

  // DoubleArray
  gidLink(cast(void**)&garrow_double_array_get_type, "garrow_double_array_get_type", libs);
  gidLink(cast(void**)&garrow_double_array_new, "garrow_double_array_new", libs);
  gidLink(cast(void**)&garrow_double_array_get_value, "garrow_double_array_get_value", libs);
  gidLink(cast(void**)&garrow_double_array_get_values, "garrow_double_array_get_values", libs);
  gidLink(cast(void**)&garrow_double_array_sum, "garrow_double_array_sum", libs);

  // DoubleArrayBuilder
  gidLink(cast(void**)&garrow_double_array_builder_get_type, "garrow_double_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_double_array_builder_new, "garrow_double_array_builder_new", libs);
  gidLink(cast(void**)&garrow_double_array_builder_append, "garrow_double_array_builder_append", libs);
  gidLink(cast(void**)&garrow_double_array_builder_append_null, "garrow_double_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_double_array_builder_append_nulls, "garrow_double_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_double_array_builder_append_value, "garrow_double_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_double_array_builder_append_values, "garrow_double_array_builder_append_values", libs);

  // DoubleDataType
  gidLink(cast(void**)&garrow_double_data_type_get_type, "garrow_double_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_double_data_type_new, "garrow_double_data_type_new", libs);

  // DoubleScalar
  gidLink(cast(void**)&garrow_double_scalar_get_type, "garrow_double_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_double_scalar_new, "garrow_double_scalar_new", libs);
  gidLink(cast(void**)&garrow_double_scalar_get_value, "garrow_double_scalar_get_value", libs);

  // DurationArray
  gidLink(cast(void**)&garrow_duration_array_get_type, "garrow_duration_array_get_type", libs);
  gidLink(cast(void**)&garrow_duration_array_new, "garrow_duration_array_new", libs);
  gidLink(cast(void**)&garrow_duration_array_get_value, "garrow_duration_array_get_value", libs);
  gidLink(cast(void**)&garrow_duration_array_get_values, "garrow_duration_array_get_values", libs);

  // DurationArrayBuilder
  gidLink(cast(void**)&garrow_duration_array_builder_get_type, "garrow_duration_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_duration_array_builder_new, "garrow_duration_array_builder_new", libs);
  gidLink(cast(void**)&garrow_duration_array_builder_append_value, "garrow_duration_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_duration_array_builder_append_values, "garrow_duration_array_builder_append_values", libs);

  // DurationDataType
  gidLink(cast(void**)&garrow_duration_data_type_get_type, "garrow_duration_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_duration_data_type_new, "garrow_duration_data_type_new", libs);
  gidLink(cast(void**)&garrow_duration_data_type_get_unit, "garrow_duration_data_type_get_unit", libs);

  // DurationScalar
  gidLink(cast(void**)&garrow_duration_scalar_get_type, "garrow_duration_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_duration_scalar_new, "garrow_duration_scalar_new", libs);
  gidLink(cast(void**)&garrow_duration_scalar_get_value, "garrow_duration_scalar_get_value", libs);

  // ElementWiseAggregateOptions
  gidLink(cast(void**)&garrow_element_wise_aggregate_options_get_type, "garrow_element_wise_aggregate_options_get_type", libs);
  gidLink(cast(void**)&garrow_element_wise_aggregate_options_new, "garrow_element_wise_aggregate_options_new", libs);

  // EqualOptions
  gidLink(cast(void**)&garrow_equal_options_get_type, "garrow_equal_options_get_type", libs);
  gidLink(cast(void**)&garrow_equal_options_new, "garrow_equal_options_new", libs);
  gidLink(cast(void**)&garrow_equal_options_is_approx, "garrow_equal_options_is_approx", libs);

  // ExecuteContext
  gidLink(cast(void**)&garrow_execute_context_get_type, "garrow_execute_context_get_type", libs);
  gidLink(cast(void**)&garrow_execute_context_new, "garrow_execute_context_new", libs);

  // ExecuteNode
  gidLink(cast(void**)&garrow_execute_node_get_type, "garrow_execute_node_get_type", libs);
  gidLink(cast(void**)&garrow_execute_node_get_kind_name, "garrow_execute_node_get_kind_name", libs);
  gidLink(cast(void**)&garrow_execute_node_get_output_schema, "garrow_execute_node_get_output_schema", libs);

  // ExecuteNodeOptions
  gidLink(cast(void**)&garrow_execute_node_options_get_type, "garrow_execute_node_options_get_type", libs);

  // ExecutePlan
  gidLink(cast(void**)&garrow_execute_plan_get_type, "garrow_execute_plan_get_type", libs);
  gidLink(cast(void**)&garrow_execute_plan_new, "garrow_execute_plan_new", libs);
  gidLink(cast(void**)&garrow_execute_plan_build_aggregate_node, "garrow_execute_plan_build_aggregate_node", libs);
  gidLink(cast(void**)&garrow_execute_plan_build_filter_node, "garrow_execute_plan_build_filter_node", libs);
  gidLink(cast(void**)&garrow_execute_plan_build_hash_join_node, "garrow_execute_plan_build_hash_join_node", libs);
  gidLink(cast(void**)&garrow_execute_plan_build_node, "garrow_execute_plan_build_node", libs);
  gidLink(cast(void**)&garrow_execute_plan_build_project_node, "garrow_execute_plan_build_project_node", libs);
  gidLink(cast(void**)&garrow_execute_plan_build_sink_node, "garrow_execute_plan_build_sink_node", libs);
  gidLink(cast(void**)&garrow_execute_plan_build_source_node, "garrow_execute_plan_build_source_node", libs);
  gidLink(cast(void**)&garrow_execute_plan_get_nodes, "garrow_execute_plan_get_nodes", libs);
  gidLink(cast(void**)&garrow_execute_plan_start, "garrow_execute_plan_start", libs);
  gidLink(cast(void**)&garrow_execute_plan_stop, "garrow_execute_plan_stop", libs);
  gidLink(cast(void**)&garrow_execute_plan_validate, "garrow_execute_plan_validate", libs);
  gidLink(cast(void**)&garrow_execute_plan_wait, "garrow_execute_plan_wait", libs);

  // Executor
  gidLink(cast(void**)&garrow_executor_get_type, "garrow_executor_get_type", libs);

  // Expression
  gidLink(cast(void**)&garrow_expression_get_type, "garrow_expression_get_type", libs);
  gidLink(cast(void**)&garrow_expression_equal, "garrow_expression_equal", libs);
  gidLink(cast(void**)&garrow_expression_to_string, "garrow_expression_to_string", libs);

  // ExtensionArray
  gidLink(cast(void**)&garrow_extension_array_get_type, "garrow_extension_array_get_type", libs);
  gidLink(cast(void**)&garrow_extension_array_get_storage, "garrow_extension_array_get_storage", libs);

  // ExtensionDataType
  gidLink(cast(void**)&garrow_extension_data_type_get_type, "garrow_extension_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_extension_data_type_get_extension_name, "garrow_extension_data_type_get_extension_name", libs);
  gidLink(cast(void**)&garrow_extension_data_type_wrap_array, "garrow_extension_data_type_wrap_array", libs);
  gidLink(cast(void**)&garrow_extension_data_type_wrap_chunked_array, "garrow_extension_data_type_wrap_chunked_array", libs);

  // ExtensionDataTypeRegistry
  gidLink(cast(void**)&garrow_extension_data_type_registry_get_type, "garrow_extension_data_type_registry_get_type", libs);
  gidLink(cast(void**)&garrow_extension_data_type_registry_default, "garrow_extension_data_type_registry_default", libs);
  gidLink(cast(void**)&garrow_extension_data_type_registry_lookup, "garrow_extension_data_type_registry_lookup", libs);
  gidLink(cast(void**)&garrow_extension_data_type_registry_register, "garrow_extension_data_type_registry_register", libs);
  gidLink(cast(void**)&garrow_extension_data_type_registry_unregister, "garrow_extension_data_type_registry_unregister", libs);

  // ExtensionScalar
  gidLink(cast(void**)&garrow_extension_scalar_get_type, "garrow_extension_scalar_get_type", libs);

  // ExtractRegexOptions
  gidLink(cast(void**)&garrow_extract_regex_options_get_type, "garrow_extract_regex_options_get_type", libs);
  gidLink(cast(void**)&garrow_extract_regex_options_new, "garrow_extract_regex_options_new", libs);

  // ExtractRegexSpanOptions
  gidLink(cast(void**)&garrow_extract_regex_span_options_get_type, "garrow_extract_regex_span_options_get_type", libs);
  gidLink(cast(void**)&garrow_extract_regex_span_options_new, "garrow_extract_regex_span_options_new", libs);

  // FeatherFileReader
  gidLink(cast(void**)&garrow_feather_file_reader_get_type, "garrow_feather_file_reader_get_type", libs);
  gidLink(cast(void**)&garrow_feather_file_reader_new, "garrow_feather_file_reader_new", libs);
  gidLink(cast(void**)&garrow_feather_file_reader_get_version, "garrow_feather_file_reader_get_version", libs);
  gidLink(cast(void**)&garrow_feather_file_reader_read, "garrow_feather_file_reader_read", libs);
  gidLink(cast(void**)&garrow_feather_file_reader_read_indices, "garrow_feather_file_reader_read_indices", libs);
  gidLink(cast(void**)&garrow_feather_file_reader_read_names, "garrow_feather_file_reader_read_names", libs);

  // FeatherWriteProperties
  gidLink(cast(void**)&garrow_feather_write_properties_get_type, "garrow_feather_write_properties_get_type", libs);
  gidLink(cast(void**)&garrow_feather_write_properties_new, "garrow_feather_write_properties_new", libs);

  // Field
  gidLink(cast(void**)&garrow_field_get_type, "garrow_field_get_type", libs);
  gidLink(cast(void**)&garrow_field_new, "garrow_field_new", libs);
  gidLink(cast(void**)&garrow_field_new_full, "garrow_field_new_full", libs);
  gidLink(cast(void**)&garrow_field_import, "garrow_field_import", libs);
  gidLink(cast(void**)&garrow_field_equal, "garrow_field_equal", libs);
  gidLink(cast(void**)&garrow_field_export, "garrow_field_export", libs);
  gidLink(cast(void**)&garrow_field_get_data_type, "garrow_field_get_data_type", libs);
  gidLink(cast(void**)&garrow_field_get_metadata, "garrow_field_get_metadata", libs);
  gidLink(cast(void**)&garrow_field_get_name, "garrow_field_get_name", libs);
  gidLink(cast(void**)&garrow_field_has_metadata, "garrow_field_has_metadata", libs);
  gidLink(cast(void**)&garrow_field_is_nullable, "garrow_field_is_nullable", libs);
  gidLink(cast(void**)&garrow_field_remove_metadata, "garrow_field_remove_metadata", libs);
  gidLink(cast(void**)&garrow_field_to_string, "garrow_field_to_string", libs);
  gidLink(cast(void**)&garrow_field_to_string_metadata, "garrow_field_to_string_metadata", libs);
  gidLink(cast(void**)&garrow_field_with_merged_metadata, "garrow_field_with_merged_metadata", libs);
  gidLink(cast(void**)&garrow_field_with_metadata, "garrow_field_with_metadata", libs);

  // FieldExpression
  gidLink(cast(void**)&garrow_field_expression_get_type, "garrow_field_expression_get_type", libs);
  gidLink(cast(void**)&garrow_field_expression_new, "garrow_field_expression_new", libs);

  // File
  gidLink(cast(void**)&garrow_file_get_type, "garrow_file_get_type", libs);
  gidLink(cast(void**)&garrow_file_close, "garrow_file_close", libs);
  gidLink(cast(void**)&garrow_file_get_mode, "garrow_file_get_mode", libs);
  gidLink(cast(void**)&garrow_file_is_closed, "garrow_file_is_closed", libs);
  gidLink(cast(void**)&garrow_file_tell, "garrow_file_tell", libs);

  // FileInfo
  gidLink(cast(void**)&garrow_file_info_get_type, "garrow_file_info_get_type", libs);
  gidLink(cast(void**)&garrow_file_info_new, "garrow_file_info_new", libs);
  gidLink(cast(void**)&garrow_file_info_equal, "garrow_file_info_equal", libs);
  gidLink(cast(void**)&garrow_file_info_is_dir, "garrow_file_info_is_dir", libs);
  gidLink(cast(void**)&garrow_file_info_is_file, "garrow_file_info_is_file", libs);
  gidLink(cast(void**)&garrow_file_info_to_string, "garrow_file_info_to_string", libs);

  // FileInputStream
  gidLink(cast(void**)&garrow_file_input_stream_get_type, "garrow_file_input_stream_get_type", libs);
  gidLink(cast(void**)&garrow_file_input_stream_new, "garrow_file_input_stream_new", libs);
  gidLink(cast(void**)&garrow_file_input_stream_new_file_descriptor, "garrow_file_input_stream_new_file_descriptor", libs);
  gidLink(cast(void**)&garrow_file_input_stream_get_file_descriptor, "garrow_file_input_stream_get_file_descriptor", libs);

  // FileOutputStream
  gidLink(cast(void**)&garrow_file_output_stream_get_type, "garrow_file_output_stream_get_type", libs);
  gidLink(cast(void**)&garrow_file_output_stream_new, "garrow_file_output_stream_new", libs);

  // FileSelector
  gidLink(cast(void**)&garrow_file_selector_get_type, "garrow_file_selector_get_type", libs);

  // FileSystem
  gidLink(cast(void**)&garrow_file_system_get_type, "garrow_file_system_get_type", libs);
  gidLink(cast(void**)&garrow_file_system_create, "garrow_file_system_create", libs);
  gidLink(cast(void**)&garrow_file_system_copy_file, "garrow_file_system_copy_file", libs);
  gidLink(cast(void**)&garrow_file_system_create_dir, "garrow_file_system_create_dir", libs);
  gidLink(cast(void**)&garrow_file_system_delete_dir, "garrow_file_system_delete_dir", libs);
  gidLink(cast(void**)&garrow_file_system_delete_dir_contents, "garrow_file_system_delete_dir_contents", libs);
  gidLink(cast(void**)&garrow_file_system_delete_file, "garrow_file_system_delete_file", libs);
  gidLink(cast(void**)&garrow_file_system_delete_files, "garrow_file_system_delete_files", libs);
  gidLink(cast(void**)&garrow_file_system_get_file_info, "garrow_file_system_get_file_info", libs);
  gidLink(cast(void**)&garrow_file_system_get_file_infos_paths, "garrow_file_system_get_file_infos_paths", libs);
  gidLink(cast(void**)&garrow_file_system_get_file_infos_selector, "garrow_file_system_get_file_infos_selector", libs);
  gidLink(cast(void**)&garrow_file_system_get_type_name, "garrow_file_system_get_type_name", libs);
  gidLink(cast(void**)&garrow_file_system_move, "garrow_file_system_move", libs);
  gidLink(cast(void**)&garrow_file_system_open_append_stream, "garrow_file_system_open_append_stream", libs);
  gidLink(cast(void**)&garrow_file_system_open_input_file, "garrow_file_system_open_input_file", libs);
  gidLink(cast(void**)&garrow_file_system_open_input_stream, "garrow_file_system_open_input_stream", libs);
  gidLink(cast(void**)&garrow_file_system_open_output_stream, "garrow_file_system_open_output_stream", libs);

  // FilterNodeOptions
  gidLink(cast(void**)&garrow_filter_node_options_get_type, "garrow_filter_node_options_get_type", libs);
  gidLink(cast(void**)&garrow_filter_node_options_new, "garrow_filter_node_options_new", libs);

  // FilterOptions
  gidLink(cast(void**)&garrow_filter_options_get_type, "garrow_filter_options_get_type", libs);
  gidLink(cast(void**)&garrow_filter_options_new, "garrow_filter_options_new", libs);

  // FixedShapeTensorDataType
  gidLink(cast(void**)&garrow_fixed_shape_tensor_data_type_get_type, "garrow_fixed_shape_tensor_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_shape_tensor_data_type_new, "garrow_fixed_shape_tensor_data_type_new", libs);
  gidLink(cast(void**)&garrow_fixed_shape_tensor_data_type_get_dim_names, "garrow_fixed_shape_tensor_data_type_get_dim_names", libs);
  gidLink(cast(void**)&garrow_fixed_shape_tensor_data_type_get_permutation, "garrow_fixed_shape_tensor_data_type_get_permutation", libs);
  gidLink(cast(void**)&garrow_fixed_shape_tensor_data_type_get_shape, "garrow_fixed_shape_tensor_data_type_get_shape", libs);
  gidLink(cast(void**)&garrow_fixed_shape_tensor_data_type_get_strides, "garrow_fixed_shape_tensor_data_type_get_strides", libs);

  // FixedSizeBinaryArray
  gidLink(cast(void**)&garrow_fixed_size_binary_array_get_type, "garrow_fixed_size_binary_array_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_new, "garrow_fixed_size_binary_array_new", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_get_byte_width, "garrow_fixed_size_binary_array_get_byte_width", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_get_value, "garrow_fixed_size_binary_array_get_value", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_get_values_bytes, "garrow_fixed_size_binary_array_get_values_bytes", libs);

  // FixedSizeBinaryArrayBuilder
  gidLink(cast(void**)&garrow_fixed_size_binary_array_builder_get_type, "garrow_fixed_size_binary_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_builder_new, "garrow_fixed_size_binary_array_builder_new", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_builder_append_value, "garrow_fixed_size_binary_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_builder_append_value_bytes, "garrow_fixed_size_binary_array_builder_append_value_bytes", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_builder_append_values, "garrow_fixed_size_binary_array_builder_append_values", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_array_builder_append_values_packed, "garrow_fixed_size_binary_array_builder_append_values_packed", libs);

  // FixedSizeBinaryDataType
  gidLink(cast(void**)&garrow_fixed_size_binary_data_type_get_type, "garrow_fixed_size_binary_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_data_type_new, "garrow_fixed_size_binary_data_type_new", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_data_type_get_byte_width, "garrow_fixed_size_binary_data_type_get_byte_width", libs);

  // FixedSizeBinaryScalar
  gidLink(cast(void**)&garrow_fixed_size_binary_scalar_get_type, "garrow_fixed_size_binary_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_binary_scalar_new, "garrow_fixed_size_binary_scalar_new", libs);

  // FixedSizeListArray
  gidLink(cast(void**)&garrow_fixed_size_list_array_get_type, "garrow_fixed_size_list_array_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_new, "garrow_fixed_size_list_array_new", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_get_list_size, "garrow_fixed_size_list_array_get_list_size", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_get_value, "garrow_fixed_size_list_array_get_value", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_get_value_length, "garrow_fixed_size_list_array_get_value_length", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_get_value_offset, "garrow_fixed_size_list_array_get_value_offset", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_get_value_type, "garrow_fixed_size_list_array_get_value_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_get_values, "garrow_fixed_size_list_array_get_values", libs);

  // FixedSizeListArrayBuilder
  gidLink(cast(void**)&garrow_fixed_size_list_array_builder_get_type, "garrow_fixed_size_list_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_builder_new, "garrow_fixed_size_list_array_builder_new", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_builder_append_value, "garrow_fixed_size_list_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_array_builder_get_value_builder, "garrow_fixed_size_list_array_builder_get_value_builder", libs);

  // FixedSizeListDataType
  gidLink(cast(void**)&garrow_fixed_size_list_data_type_get_type, "garrow_fixed_size_list_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_data_type_new_data_type, "garrow_fixed_size_list_data_type_new_data_type", libs);
  gidLink(cast(void**)&garrow_fixed_size_list_data_type_new_field, "garrow_fixed_size_list_data_type_new_field", libs);

  // FixedWidthDataType
  gidLink(cast(void**)&garrow_fixed_width_data_type_get_type, "garrow_fixed_width_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_fixed_width_data_type_get_bit_width, "garrow_fixed_width_data_type_get_bit_width", libs);

  // FloatArray
  gidLink(cast(void**)&garrow_float_array_get_type, "garrow_float_array_get_type", libs);
  gidLink(cast(void**)&garrow_float_array_new, "garrow_float_array_new", libs);
  gidLink(cast(void**)&garrow_float_array_get_value, "garrow_float_array_get_value", libs);
  gidLink(cast(void**)&garrow_float_array_get_values, "garrow_float_array_get_values", libs);
  gidLink(cast(void**)&garrow_float_array_sum, "garrow_float_array_sum", libs);

  // FloatArrayBuilder
  gidLink(cast(void**)&garrow_float_array_builder_get_type, "garrow_float_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_float_array_builder_new, "garrow_float_array_builder_new", libs);
  gidLink(cast(void**)&garrow_float_array_builder_append, "garrow_float_array_builder_append", libs);
  gidLink(cast(void**)&garrow_float_array_builder_append_null, "garrow_float_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_float_array_builder_append_nulls, "garrow_float_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_float_array_builder_append_value, "garrow_float_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_float_array_builder_append_values, "garrow_float_array_builder_append_values", libs);

  // FloatDataType
  gidLink(cast(void**)&garrow_float_data_type_get_type, "garrow_float_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_float_data_type_new, "garrow_float_data_type_new", libs);

  // FloatScalar
  gidLink(cast(void**)&garrow_float_scalar_get_type, "garrow_float_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_float_scalar_new, "garrow_float_scalar_new", libs);
  gidLink(cast(void**)&garrow_float_scalar_get_value, "garrow_float_scalar_get_value", libs);

  // FloatingPointDataType
  gidLink(cast(void**)&garrow_floating_point_data_type_get_type, "garrow_floating_point_data_type_get_type", libs);

  // Function
  gidLink(cast(void**)&garrow_function_get_type, "garrow_function_get_type", libs);
  gidLink(cast(void**)&garrow_function_all, "garrow_function_all", libs);
  gidLink(cast(void**)&garrow_function_find, "garrow_function_find", libs);
  gidLink(cast(void**)&garrow_function_equal, "garrow_function_equal", libs);
  gidLink(cast(void**)&garrow_function_execute, "garrow_function_execute", libs);
  gidLink(cast(void**)&garrow_function_get_default_options, "garrow_function_get_default_options", libs);
  gidLink(cast(void**)&garrow_function_get_doc, "garrow_function_get_doc", libs);
  gidLink(cast(void**)&garrow_function_get_name, "garrow_function_get_name", libs);
  gidLink(cast(void**)&garrow_function_get_options_type, "garrow_function_get_options_type", libs);
  gidLink(cast(void**)&garrow_function_to_string, "garrow_function_to_string", libs);

  // FunctionDoc
  gidLink(cast(void**)&garrow_function_doc_get_type, "garrow_function_doc_get_type", libs);
  gidLink(cast(void**)&garrow_function_doc_get_arg_names, "garrow_function_doc_get_arg_names", libs);
  gidLink(cast(void**)&garrow_function_doc_get_description, "garrow_function_doc_get_description", libs);
  gidLink(cast(void**)&garrow_function_doc_get_options_class_name, "garrow_function_doc_get_options_class_name", libs);
  gidLink(cast(void**)&garrow_function_doc_get_summary, "garrow_function_doc_get_summary", libs);

  // FunctionOptions
  gidLink(cast(void**)&garrow_function_options_get_type, "garrow_function_options_get_type", libs);
  gidLink(cast(void**)&garrow_function_options_equal, "garrow_function_options_equal", libs);
  gidLink(cast(void**)&garrow_function_options_to_string, "garrow_function_options_to_string", libs);

  // GCSFileSystem
  gidLink(cast(void**)&garrow_gcs_file_system_get_type, "garrow_gcs_file_system_get_type", libs);

  // GIOInputStream
  gidLink(cast(void**)&garrow_gio_input_stream_get_type, "garrow_gio_input_stream_get_type", libs);
  gidLink(cast(void**)&garrow_gio_input_stream_new, "garrow_gio_input_stream_new", libs);
  gidLink(cast(void**)&garrow_gio_input_stream_get_raw, "garrow_gio_input_stream_get_raw", libs);

  // GIOOutputStream
  gidLink(cast(void**)&garrow_gio_output_stream_get_type, "garrow_gio_output_stream_get_type", libs);
  gidLink(cast(void**)&garrow_gio_output_stream_new, "garrow_gio_output_stream_new", libs);
  gidLink(cast(void**)&garrow_gio_output_stream_get_raw, "garrow_gio_output_stream_get_raw", libs);

  // HDFSFileSystem
  gidLink(cast(void**)&garrow_hdfs_file_system_get_type, "garrow_hdfs_file_system_get_type", libs);

  // HalfFloatArray
  gidLink(cast(void**)&garrow_half_float_array_get_type, "garrow_half_float_array_get_type", libs);
  gidLink(cast(void**)&garrow_half_float_array_new, "garrow_half_float_array_new", libs);
  gidLink(cast(void**)&garrow_half_float_array_get_value, "garrow_half_float_array_get_value", libs);
  gidLink(cast(void**)&garrow_half_float_array_get_values, "garrow_half_float_array_get_values", libs);

  // HalfFloatArrayBuilder
  gidLink(cast(void**)&garrow_half_float_array_builder_get_type, "garrow_half_float_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_half_float_array_builder_new, "garrow_half_float_array_builder_new", libs);
  gidLink(cast(void**)&garrow_half_float_array_builder_append_value, "garrow_half_float_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_half_float_array_builder_append_values, "garrow_half_float_array_builder_append_values", libs);

  // HalfFloatDataType
  gidLink(cast(void**)&garrow_half_float_data_type_get_type, "garrow_half_float_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_half_float_data_type_new, "garrow_half_float_data_type_new", libs);

  // HalfFloatScalar
  gidLink(cast(void**)&garrow_half_float_scalar_get_type, "garrow_half_float_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_half_float_scalar_new, "garrow_half_float_scalar_new", libs);
  gidLink(cast(void**)&garrow_half_float_scalar_get_value, "garrow_half_float_scalar_get_value", libs);

  // HashJoinNodeOptions
  gidLink(cast(void**)&garrow_hash_join_node_options_get_type, "garrow_hash_join_node_options_get_type", libs);
  gidLink(cast(void**)&garrow_hash_join_node_options_new, "garrow_hash_join_node_options_new", libs);
  gidLink(cast(void**)&garrow_hash_join_node_options_set_left_outputs, "garrow_hash_join_node_options_set_left_outputs", libs);
  gidLink(cast(void**)&garrow_hash_join_node_options_set_right_outputs, "garrow_hash_join_node_options_set_right_outputs", libs);

  // ISO8601TimestampParser
  gidLink(cast(void**)&garrow_iso8601_timestamp_parser_get_type, "garrow_iso8601_timestamp_parser_get_type", libs);
  gidLink(cast(void**)&garrow_iso8601_timestamp_parser_new, "garrow_iso8601_timestamp_parser_new", libs);

  // IndexOptions
  gidLink(cast(void**)&garrow_index_options_get_type, "garrow_index_options_get_type", libs);
  gidLink(cast(void**)&garrow_index_options_new, "garrow_index_options_new", libs);

  // InputStream
  gidLink(cast(void**)&garrow_input_stream_get_type, "garrow_input_stream_get_type", libs);
  gidLink(cast(void**)&garrow_input_stream_advance, "garrow_input_stream_advance", libs);
  gidLink(cast(void**)&garrow_input_stream_align, "garrow_input_stream_align", libs);
  gidLink(cast(void**)&garrow_input_stream_read_record_batch, "garrow_input_stream_read_record_batch", libs);
  gidLink(cast(void**)&garrow_input_stream_read_tensor, "garrow_input_stream_read_tensor", libs);

  // Int16Array
  gidLink(cast(void**)&garrow_int16_array_get_type, "garrow_int16_array_get_type", libs);
  gidLink(cast(void**)&garrow_int16_array_new, "garrow_int16_array_new", libs);
  gidLink(cast(void**)&garrow_int16_array_get_value, "garrow_int16_array_get_value", libs);
  gidLink(cast(void**)&garrow_int16_array_get_values, "garrow_int16_array_get_values", libs);
  gidLink(cast(void**)&garrow_int16_array_sum, "garrow_int16_array_sum", libs);

  // Int16ArrayBuilder
  gidLink(cast(void**)&garrow_int16_array_builder_get_type, "garrow_int16_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_int16_array_builder_new, "garrow_int16_array_builder_new", libs);
  gidLink(cast(void**)&garrow_int16_array_builder_append, "garrow_int16_array_builder_append", libs);
  gidLink(cast(void**)&garrow_int16_array_builder_append_null, "garrow_int16_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_int16_array_builder_append_nulls, "garrow_int16_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_int16_array_builder_append_value, "garrow_int16_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_int16_array_builder_append_values, "garrow_int16_array_builder_append_values", libs);

  // Int16DataType
  gidLink(cast(void**)&garrow_int16_data_type_get_type, "garrow_int16_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_int16_data_type_new, "garrow_int16_data_type_new", libs);

  // Int16Scalar
  gidLink(cast(void**)&garrow_int16_scalar_get_type, "garrow_int16_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_int16_scalar_new, "garrow_int16_scalar_new", libs);
  gidLink(cast(void**)&garrow_int16_scalar_get_value, "garrow_int16_scalar_get_value", libs);

  // Int32Array
  gidLink(cast(void**)&garrow_int32_array_get_type, "garrow_int32_array_get_type", libs);
  gidLink(cast(void**)&garrow_int32_array_new, "garrow_int32_array_new", libs);
  gidLink(cast(void**)&garrow_int32_array_get_value, "garrow_int32_array_get_value", libs);
  gidLink(cast(void**)&garrow_int32_array_get_values, "garrow_int32_array_get_values", libs);
  gidLink(cast(void**)&garrow_int32_array_sum, "garrow_int32_array_sum", libs);

  // Int32ArrayBuilder
  gidLink(cast(void**)&garrow_int32_array_builder_get_type, "garrow_int32_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_int32_array_builder_new, "garrow_int32_array_builder_new", libs);
  gidLink(cast(void**)&garrow_int32_array_builder_append, "garrow_int32_array_builder_append", libs);
  gidLink(cast(void**)&garrow_int32_array_builder_append_null, "garrow_int32_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_int32_array_builder_append_nulls, "garrow_int32_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_int32_array_builder_append_value, "garrow_int32_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_int32_array_builder_append_values, "garrow_int32_array_builder_append_values", libs);

  // Int32DataType
  gidLink(cast(void**)&garrow_int32_data_type_get_type, "garrow_int32_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_int32_data_type_new, "garrow_int32_data_type_new", libs);

  // Int32Scalar
  gidLink(cast(void**)&garrow_int32_scalar_get_type, "garrow_int32_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_int32_scalar_new, "garrow_int32_scalar_new", libs);
  gidLink(cast(void**)&garrow_int32_scalar_get_value, "garrow_int32_scalar_get_value", libs);

  // Int64Array
  gidLink(cast(void**)&garrow_int64_array_get_type, "garrow_int64_array_get_type", libs);
  gidLink(cast(void**)&garrow_int64_array_new, "garrow_int64_array_new", libs);
  gidLink(cast(void**)&garrow_int64_array_get_value, "garrow_int64_array_get_value", libs);
  gidLink(cast(void**)&garrow_int64_array_get_values, "garrow_int64_array_get_values", libs);
  gidLink(cast(void**)&garrow_int64_array_sum, "garrow_int64_array_sum", libs);

  // Int64ArrayBuilder
  gidLink(cast(void**)&garrow_int64_array_builder_get_type, "garrow_int64_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_int64_array_builder_new, "garrow_int64_array_builder_new", libs);
  gidLink(cast(void**)&garrow_int64_array_builder_append, "garrow_int64_array_builder_append", libs);
  gidLink(cast(void**)&garrow_int64_array_builder_append_null, "garrow_int64_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_int64_array_builder_append_nulls, "garrow_int64_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_int64_array_builder_append_value, "garrow_int64_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_int64_array_builder_append_values, "garrow_int64_array_builder_append_values", libs);

  // Int64DataType
  gidLink(cast(void**)&garrow_int64_data_type_get_type, "garrow_int64_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_int64_data_type_new, "garrow_int64_data_type_new", libs);

  // Int64Scalar
  gidLink(cast(void**)&garrow_int64_scalar_get_type, "garrow_int64_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_int64_scalar_new, "garrow_int64_scalar_new", libs);
  gidLink(cast(void**)&garrow_int64_scalar_get_value, "garrow_int64_scalar_get_value", libs);

  // Int8Array
  gidLink(cast(void**)&garrow_int8_array_get_type, "garrow_int8_array_get_type", libs);
  gidLink(cast(void**)&garrow_int8_array_new, "garrow_int8_array_new", libs);
  gidLink(cast(void**)&garrow_int8_array_get_value, "garrow_int8_array_get_value", libs);
  gidLink(cast(void**)&garrow_int8_array_get_values, "garrow_int8_array_get_values", libs);
  gidLink(cast(void**)&garrow_int8_array_sum, "garrow_int8_array_sum", libs);

  // Int8ArrayBuilder
  gidLink(cast(void**)&garrow_int8_array_builder_get_type, "garrow_int8_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_int8_array_builder_new, "garrow_int8_array_builder_new", libs);
  gidLink(cast(void**)&garrow_int8_array_builder_append, "garrow_int8_array_builder_append", libs);
  gidLink(cast(void**)&garrow_int8_array_builder_append_null, "garrow_int8_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_int8_array_builder_append_nulls, "garrow_int8_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_int8_array_builder_append_value, "garrow_int8_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_int8_array_builder_append_values, "garrow_int8_array_builder_append_values", libs);

  // Int8DataType
  gidLink(cast(void**)&garrow_int8_data_type_get_type, "garrow_int8_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_int8_data_type_new, "garrow_int8_data_type_new", libs);

  // Int8Scalar
  gidLink(cast(void**)&garrow_int8_scalar_get_type, "garrow_int8_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_int8_scalar_new, "garrow_int8_scalar_new", libs);
  gidLink(cast(void**)&garrow_int8_scalar_get_value, "garrow_int8_scalar_get_value", libs);

  // IntArrayBuilder
  gidLink(cast(void**)&garrow_int_array_builder_get_type, "garrow_int_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_int_array_builder_new, "garrow_int_array_builder_new", libs);
  gidLink(cast(void**)&garrow_int_array_builder_append, "garrow_int_array_builder_append", libs);
  gidLink(cast(void**)&garrow_int_array_builder_append_null, "garrow_int_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_int_array_builder_append_nulls, "garrow_int_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_int_array_builder_append_value, "garrow_int_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_int_array_builder_append_values, "garrow_int_array_builder_append_values", libs);

  // IntegerDataType
  gidLink(cast(void**)&garrow_integer_data_type_get_type, "garrow_integer_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_integer_data_type_is_signed, "garrow_integer_data_type_is_signed", libs);

  // IntervalDataType
  gidLink(cast(void**)&garrow_interval_data_type_get_type, "garrow_interval_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_interval_data_type_get_interval_type, "garrow_interval_data_type_get_interval_type", libs);

  // JSONReadOptions
  gidLink(cast(void**)&garrow_json_read_options_get_type, "garrow_json_read_options_get_type", libs);
  gidLink(cast(void**)&garrow_json_read_options_new, "garrow_json_read_options_new", libs);

  // JSONReader
  gidLink(cast(void**)&garrow_json_reader_get_type, "garrow_json_reader_get_type", libs);
  gidLink(cast(void**)&garrow_json_reader_new, "garrow_json_reader_new", libs);
  gidLink(cast(void**)&garrow_json_reader_read, "garrow_json_reader_read", libs);

  // JoinOptions
  gidLink(cast(void**)&garrow_join_options_get_type, "garrow_join_options_get_type", libs);
  gidLink(cast(void**)&garrow_join_options_new, "garrow_join_options_new", libs);

  // LargeBinaryArray
  gidLink(cast(void**)&garrow_large_binary_array_get_type, "garrow_large_binary_array_get_type", libs);
  gidLink(cast(void**)&garrow_large_binary_array_new, "garrow_large_binary_array_new", libs);
  gidLink(cast(void**)&garrow_large_binary_array_get_buffer, "garrow_large_binary_array_get_buffer", libs);
  gidLink(cast(void**)&garrow_large_binary_array_get_data_buffer, "garrow_large_binary_array_get_data_buffer", libs);
  gidLink(cast(void**)&garrow_large_binary_array_get_offsets_buffer, "garrow_large_binary_array_get_offsets_buffer", libs);
  gidLink(cast(void**)&garrow_large_binary_array_get_value, "garrow_large_binary_array_get_value", libs);

  // LargeBinaryArrayBuilder
  gidLink(cast(void**)&garrow_large_binary_array_builder_get_type, "garrow_large_binary_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_large_binary_array_builder_new, "garrow_large_binary_array_builder_new", libs);
  gidLink(cast(void**)&garrow_large_binary_array_builder_append_null, "garrow_large_binary_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_large_binary_array_builder_append_nulls, "garrow_large_binary_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_large_binary_array_builder_append_value, "garrow_large_binary_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_large_binary_array_builder_append_value_bytes, "garrow_large_binary_array_builder_append_value_bytes", libs);
  gidLink(cast(void**)&garrow_large_binary_array_builder_append_values, "garrow_large_binary_array_builder_append_values", libs);

  // LargeBinaryDataType
  gidLink(cast(void**)&garrow_large_binary_data_type_get_type, "garrow_large_binary_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_large_binary_data_type_new, "garrow_large_binary_data_type_new", libs);

  // LargeBinaryScalar
  gidLink(cast(void**)&garrow_large_binary_scalar_get_type, "garrow_large_binary_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_large_binary_scalar_new, "garrow_large_binary_scalar_new", libs);

  // LargeListArray
  gidLink(cast(void**)&garrow_large_list_array_get_type, "garrow_large_list_array_get_type", libs);
  gidLink(cast(void**)&garrow_large_list_array_new, "garrow_large_list_array_new", libs);
  gidLink(cast(void**)&garrow_large_list_array_get_value, "garrow_large_list_array_get_value", libs);
  gidLink(cast(void**)&garrow_large_list_array_get_value_length, "garrow_large_list_array_get_value_length", libs);
  gidLink(cast(void**)&garrow_large_list_array_get_value_offset, "garrow_large_list_array_get_value_offset", libs);
  gidLink(cast(void**)&garrow_large_list_array_get_value_offsets, "garrow_large_list_array_get_value_offsets", libs);
  gidLink(cast(void**)&garrow_large_list_array_get_value_offsets_buffer, "garrow_large_list_array_get_value_offsets_buffer", libs);
  gidLink(cast(void**)&garrow_large_list_array_get_value_type, "garrow_large_list_array_get_value_type", libs);
  gidLink(cast(void**)&garrow_large_list_array_get_values, "garrow_large_list_array_get_values", libs);

  // LargeListArrayBuilder
  gidLink(cast(void**)&garrow_large_list_array_builder_get_type, "garrow_large_list_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_large_list_array_builder_new, "garrow_large_list_array_builder_new", libs);
  gidLink(cast(void**)&garrow_large_list_array_builder_append_null, "garrow_large_list_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_large_list_array_builder_append_value, "garrow_large_list_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_large_list_array_builder_get_value_builder, "garrow_large_list_array_builder_get_value_builder", libs);

  // LargeListDataType
  gidLink(cast(void**)&garrow_large_list_data_type_get_type, "garrow_large_list_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_large_list_data_type_new, "garrow_large_list_data_type_new", libs);
  gidLink(cast(void**)&garrow_large_list_data_type_get_field, "garrow_large_list_data_type_get_field", libs);

  // LargeListScalar
  gidLink(cast(void**)&garrow_large_list_scalar_get_type, "garrow_large_list_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_large_list_scalar_new, "garrow_large_list_scalar_new", libs);

  // LargeStringArray
  gidLink(cast(void**)&garrow_large_string_array_get_type, "garrow_large_string_array_get_type", libs);
  gidLink(cast(void**)&garrow_large_string_array_new, "garrow_large_string_array_new", libs);
  gidLink(cast(void**)&garrow_large_string_array_get_string, "garrow_large_string_array_get_string", libs);

  // LargeStringArrayBuilder
  gidLink(cast(void**)&garrow_large_string_array_builder_get_type, "garrow_large_string_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_large_string_array_builder_new, "garrow_large_string_array_builder_new", libs);
  gidLink(cast(void**)&garrow_large_string_array_builder_append_string, "garrow_large_string_array_builder_append_string", libs);
  gidLink(cast(void**)&garrow_large_string_array_builder_append_string_len, "garrow_large_string_array_builder_append_string_len", libs);
  gidLink(cast(void**)&garrow_large_string_array_builder_append_strings, "garrow_large_string_array_builder_append_strings", libs);

  // LargeStringDataType
  gidLink(cast(void**)&garrow_large_string_data_type_get_type, "garrow_large_string_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_large_string_data_type_new, "garrow_large_string_data_type_new", libs);

  // LargeStringScalar
  gidLink(cast(void**)&garrow_large_string_scalar_get_type, "garrow_large_string_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_large_string_scalar_new, "garrow_large_string_scalar_new", libs);

  // ListArray
  gidLink(cast(void**)&garrow_list_array_get_type, "garrow_list_array_get_type", libs);
  gidLink(cast(void**)&garrow_list_array_new, "garrow_list_array_new", libs);
  gidLink(cast(void**)&garrow_list_array_get_value, "garrow_list_array_get_value", libs);
  gidLink(cast(void**)&garrow_list_array_get_value_length, "garrow_list_array_get_value_length", libs);
  gidLink(cast(void**)&garrow_list_array_get_value_offset, "garrow_list_array_get_value_offset", libs);
  gidLink(cast(void**)&garrow_list_array_get_value_offsets, "garrow_list_array_get_value_offsets", libs);
  gidLink(cast(void**)&garrow_list_array_get_value_offsets_buffer, "garrow_list_array_get_value_offsets_buffer", libs);
  gidLink(cast(void**)&garrow_list_array_get_value_type, "garrow_list_array_get_value_type", libs);
  gidLink(cast(void**)&garrow_list_array_get_values, "garrow_list_array_get_values", libs);

  // ListArrayBuilder
  gidLink(cast(void**)&garrow_list_array_builder_get_type, "garrow_list_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_list_array_builder_new, "garrow_list_array_builder_new", libs);
  gidLink(cast(void**)&garrow_list_array_builder_append, "garrow_list_array_builder_append", libs);
  gidLink(cast(void**)&garrow_list_array_builder_append_null, "garrow_list_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_list_array_builder_append_value, "garrow_list_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_list_array_builder_get_value_builder, "garrow_list_array_builder_get_value_builder", libs);

  // ListDataType
  gidLink(cast(void**)&garrow_list_data_type_get_type, "garrow_list_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_list_data_type_new, "garrow_list_data_type_new", libs);
  gidLink(cast(void**)&garrow_list_data_type_get_field, "garrow_list_data_type_get_field", libs);
  gidLink(cast(void**)&garrow_list_data_type_get_value_field, "garrow_list_data_type_get_value_field", libs);

  // ListFlattenOptions
  gidLink(cast(void**)&garrow_list_flatten_options_get_type, "garrow_list_flatten_options_get_type", libs);
  gidLink(cast(void**)&garrow_list_flatten_options_new, "garrow_list_flatten_options_new", libs);

  // ListScalar
  gidLink(cast(void**)&garrow_list_scalar_get_type, "garrow_list_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_list_scalar_new, "garrow_list_scalar_new", libs);

  // ListSliceOptions
  gidLink(cast(void**)&garrow_list_slice_options_get_type, "garrow_list_slice_options_get_type", libs);
  gidLink(cast(void**)&garrow_list_slice_options_new, "garrow_list_slice_options_new", libs);

  // LiteralExpression
  gidLink(cast(void**)&garrow_literal_expression_get_type, "garrow_literal_expression_get_type", libs);
  gidLink(cast(void**)&garrow_literal_expression_new, "garrow_literal_expression_new", libs);

  // LocalFileSystem
  gidLink(cast(void**)&garrow_local_file_system_get_type, "garrow_local_file_system_get_type", libs);
  gidLink(cast(void**)&garrow_local_file_system_new, "garrow_local_file_system_new", libs);

  // LocalFileSystemOptions
  gidLink(cast(void**)&garrow_local_file_system_options_get_type, "garrow_local_file_system_options_get_type", libs);
  gidLink(cast(void**)&garrow_local_file_system_options_new, "garrow_local_file_system_options_new", libs);

  // MakeStructOptions
  gidLink(cast(void**)&garrow_make_struct_options_get_type, "garrow_make_struct_options_get_type", libs);
  gidLink(cast(void**)&garrow_make_struct_options_new, "garrow_make_struct_options_new", libs);
  gidLink(cast(void**)&garrow_make_struct_options_add_field, "garrow_make_struct_options_add_field", libs);

  // MapArray
  gidLink(cast(void**)&garrow_map_array_get_type, "garrow_map_array_get_type", libs);
  gidLink(cast(void**)&garrow_map_array_new, "garrow_map_array_new", libs);
  gidLink(cast(void**)&garrow_map_array_get_items, "garrow_map_array_get_items", libs);
  gidLink(cast(void**)&garrow_map_array_get_keys, "garrow_map_array_get_keys", libs);

  // MapArrayBuilder
  gidLink(cast(void**)&garrow_map_array_builder_get_type, "garrow_map_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_map_array_builder_new, "garrow_map_array_builder_new", libs);
  gidLink(cast(void**)&garrow_map_array_builder_append_null, "garrow_map_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_map_array_builder_append_nulls, "garrow_map_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_map_array_builder_append_value, "garrow_map_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_map_array_builder_append_values, "garrow_map_array_builder_append_values", libs);
  gidLink(cast(void**)&garrow_map_array_builder_get_item_builder, "garrow_map_array_builder_get_item_builder", libs);
  gidLink(cast(void**)&garrow_map_array_builder_get_key_builder, "garrow_map_array_builder_get_key_builder", libs);
  gidLink(cast(void**)&garrow_map_array_builder_get_value_builder, "garrow_map_array_builder_get_value_builder", libs);

  // MapDataType
  gidLink(cast(void**)&garrow_map_data_type_get_type, "garrow_map_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_map_data_type_new, "garrow_map_data_type_new", libs);
  gidLink(cast(void**)&garrow_map_data_type_get_item_type, "garrow_map_data_type_get_item_type", libs);
  gidLink(cast(void**)&garrow_map_data_type_get_key_type, "garrow_map_data_type_get_key_type", libs);
  gidLink(cast(void**)&garrow_map_data_type_is_keys_sorted, "garrow_map_data_type_is_keys_sorted", libs);

  // MapLookupOptions
  gidLink(cast(void**)&garrow_map_lookup_options_get_type, "garrow_map_lookup_options_get_type", libs);
  gidLink(cast(void**)&garrow_map_lookup_options_new, "garrow_map_lookup_options_new", libs);

  // MapScalar
  gidLink(cast(void**)&garrow_map_scalar_get_type, "garrow_map_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_map_scalar_new, "garrow_map_scalar_new", libs);

  // MatchSubstringOptions
  gidLink(cast(void**)&garrow_match_substring_options_get_type, "garrow_match_substring_options_get_type", libs);
  gidLink(cast(void**)&garrow_match_substring_options_new, "garrow_match_substring_options_new", libs);

  // MemoryMappedInputStream
  gidLink(cast(void**)&garrow_memory_mapped_input_stream_get_type, "garrow_memory_mapped_input_stream_get_type", libs);
  gidLink(cast(void**)&garrow_memory_mapped_input_stream_new, "garrow_memory_mapped_input_stream_new", libs);

  // MemoryPool
  gidLink(cast(void**)&garrow_memory_pool_get_type, "garrow_memory_pool_get_type", libs);
  gidLink(cast(void**)&garrow_memory_pool_default, "garrow_memory_pool_default", libs);
  gidLink(cast(void**)&garrow_memory_pool_get_backend_name, "garrow_memory_pool_get_backend_name", libs);
  gidLink(cast(void**)&garrow_memory_pool_get_bytes_allocated, "garrow_memory_pool_get_bytes_allocated", libs);
  gidLink(cast(void**)&garrow_memory_pool_get_max_memory, "garrow_memory_pool_get_max_memory", libs);

  // MockFileSystem
  gidLink(cast(void**)&garrow_mock_file_system_get_type, "garrow_mock_file_system_get_type", libs);

  // ModeOptions
  gidLink(cast(void**)&garrow_mode_options_get_type, "garrow_mode_options_get_type", libs);
  gidLink(cast(void**)&garrow_mode_options_new, "garrow_mode_options_new", libs);

  // MonthDayNano
  gidLink(cast(void**)&garrow_month_day_nano_get_type, "garrow_month_day_nano_get_type", libs);
  gidLink(cast(void**)&garrow_month_day_nano_new, "garrow_month_day_nano_new", libs);
  gidLink(cast(void**)&garrow_month_day_nano_equal, "garrow_month_day_nano_equal", libs);

  // MonthDayNanoIntervalArray
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_get_type, "garrow_month_day_nano_interval_array_get_type", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_new, "garrow_month_day_nano_interval_array_new", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_get_value, "garrow_month_day_nano_interval_array_get_value", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_get_values, "garrow_month_day_nano_interval_array_get_values", libs);

  // MonthDayNanoIntervalArrayBuilder
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_builder_get_type, "garrow_month_day_nano_interval_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_builder_new, "garrow_month_day_nano_interval_array_builder_new", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_builder_append_value, "garrow_month_day_nano_interval_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_array_builder_append_values, "garrow_month_day_nano_interval_array_builder_append_values", libs);

  // MonthDayNanoIntervalDataType
  gidLink(cast(void**)&garrow_month_day_nano_interval_data_type_get_type, "garrow_month_day_nano_interval_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_data_type_new, "garrow_month_day_nano_interval_data_type_new", libs);

  // MonthDayNanoIntervalScalar
  gidLink(cast(void**)&garrow_month_day_nano_interval_scalar_get_type, "garrow_month_day_nano_interval_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_scalar_new, "garrow_month_day_nano_interval_scalar_new", libs);
  gidLink(cast(void**)&garrow_month_day_nano_interval_scalar_get_value, "garrow_month_day_nano_interval_scalar_get_value", libs);

  // MonthIntervalArray
  gidLink(cast(void**)&garrow_month_interval_array_get_type, "garrow_month_interval_array_get_type", libs);
  gidLink(cast(void**)&garrow_month_interval_array_new, "garrow_month_interval_array_new", libs);
  gidLink(cast(void**)&garrow_month_interval_array_get_value, "garrow_month_interval_array_get_value", libs);
  gidLink(cast(void**)&garrow_month_interval_array_get_values, "garrow_month_interval_array_get_values", libs);

  // MonthIntervalArrayBuilder
  gidLink(cast(void**)&garrow_month_interval_array_builder_get_type, "garrow_month_interval_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_month_interval_array_builder_new, "garrow_month_interval_array_builder_new", libs);
  gidLink(cast(void**)&garrow_month_interval_array_builder_append_value, "garrow_month_interval_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_month_interval_array_builder_append_values, "garrow_month_interval_array_builder_append_values", libs);

  // MonthIntervalDataType
  gidLink(cast(void**)&garrow_month_interval_data_type_get_type, "garrow_month_interval_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_month_interval_data_type_new, "garrow_month_interval_data_type_new", libs);

  // MonthIntervalScalar
  gidLink(cast(void**)&garrow_month_interval_scalar_get_type, "garrow_month_interval_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_month_interval_scalar_new, "garrow_month_interval_scalar_new", libs);
  gidLink(cast(void**)&garrow_month_interval_scalar_get_value, "garrow_month_interval_scalar_get_value", libs);

  // MutableBuffer
  gidLink(cast(void**)&garrow_mutable_buffer_get_type, "garrow_mutable_buffer_get_type", libs);
  gidLink(cast(void**)&garrow_mutable_buffer_new, "garrow_mutable_buffer_new", libs);
  gidLink(cast(void**)&garrow_mutable_buffer_new_bytes, "garrow_mutable_buffer_new_bytes", libs);
  gidLink(cast(void**)&garrow_mutable_buffer_set_data, "garrow_mutable_buffer_set_data", libs);
  gidLink(cast(void**)&garrow_mutable_buffer_slice, "garrow_mutable_buffer_slice", libs);

  // NullArray
  gidLink(cast(void**)&garrow_null_array_get_type, "garrow_null_array_get_type", libs);
  gidLink(cast(void**)&garrow_null_array_new, "garrow_null_array_new", libs);

  // NullArrayBuilder
  gidLink(cast(void**)&garrow_null_array_builder_get_type, "garrow_null_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_null_array_builder_new, "garrow_null_array_builder_new", libs);
  gidLink(cast(void**)&garrow_null_array_builder_append_null, "garrow_null_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_null_array_builder_append_nulls, "garrow_null_array_builder_append_nulls", libs);

  // NullDataType
  gidLink(cast(void**)&garrow_null_data_type_get_type, "garrow_null_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_null_data_type_new, "garrow_null_data_type_new", libs);

  // NullOptions
  gidLink(cast(void**)&garrow_null_options_get_type, "garrow_null_options_get_type", libs);
  gidLink(cast(void**)&garrow_null_options_new, "garrow_null_options_new", libs);

  // NullScalar
  gidLink(cast(void**)&garrow_null_scalar_get_type, "garrow_null_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_null_scalar_new, "garrow_null_scalar_new", libs);

  // NumericArray
  gidLink(cast(void**)&garrow_numeric_array_get_type, "garrow_numeric_array_get_type", libs);
  gidLink(cast(void**)&garrow_numeric_array_mean, "garrow_numeric_array_mean", libs);

  // NumericDataType
  gidLink(cast(void**)&garrow_numeric_data_type_get_type, "garrow_numeric_data_type_get_type", libs);

  // ORCFileReader
  gidLink(cast(void**)&garrow_orc_file_reader_get_type, "garrow_orc_file_reader_get_type", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_new, "garrow_orc_file_reader_new", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_get_field_indexes, "garrow_orc_file_reader_get_field_indexes", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_get_field_indices, "garrow_orc_file_reader_get_field_indices", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_get_n_rows, "garrow_orc_file_reader_get_n_rows", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_get_n_stripes, "garrow_orc_file_reader_get_n_stripes", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_read_stripe, "garrow_orc_file_reader_read_stripe", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_read_stripes, "garrow_orc_file_reader_read_stripes", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_read_type, "garrow_orc_file_reader_read_type", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_set_field_indexes, "garrow_orc_file_reader_set_field_indexes", libs);
  gidLink(cast(void**)&garrow_orc_file_reader_set_field_indices, "garrow_orc_file_reader_set_field_indices", libs);

  // OutputStream
  gidLink(cast(void**)&garrow_output_stream_get_type, "garrow_output_stream_get_type", libs);
  gidLink(cast(void**)&garrow_output_stream_align, "garrow_output_stream_align", libs);
  gidLink(cast(void**)&garrow_output_stream_write_record_batch, "garrow_output_stream_write_record_batch", libs);
  gidLink(cast(void**)&garrow_output_stream_write_tensor, "garrow_output_stream_write_tensor", libs);

  // PadOptions
  gidLink(cast(void**)&garrow_pad_options_get_type, "garrow_pad_options_get_type", libs);
  gidLink(cast(void**)&garrow_pad_options_new, "garrow_pad_options_new", libs);

  // PairwiseOptions
  gidLink(cast(void**)&garrow_pairwise_options_get_type, "garrow_pairwise_options_get_type", libs);
  gidLink(cast(void**)&garrow_pairwise_options_new, "garrow_pairwise_options_new", libs);

  // PartitionNthOptions
  gidLink(cast(void**)&garrow_partition_nth_options_get_type, "garrow_partition_nth_options_get_type", libs);
  gidLink(cast(void**)&garrow_partition_nth_options_new, "garrow_partition_nth_options_new", libs);

  // PivotWiderOptions
  gidLink(cast(void**)&garrow_pivot_wider_options_get_type, "garrow_pivot_wider_options_get_type", libs);
  gidLink(cast(void**)&garrow_pivot_wider_options_new, "garrow_pivot_wider_options_new", libs);

  // PrimitiveArray
  gidLink(cast(void**)&garrow_primitive_array_get_type, "garrow_primitive_array_get_type", libs);
  gidLink(cast(void**)&garrow_primitive_array_get_buffer, "garrow_primitive_array_get_buffer", libs);
  gidLink(cast(void**)&garrow_primitive_array_get_data_buffer, "garrow_primitive_array_get_data_buffer", libs);

  // ProjectNodeOptions
  gidLink(cast(void**)&garrow_project_node_options_get_type, "garrow_project_node_options_get_type", libs);
  gidLink(cast(void**)&garrow_project_node_options_new, "garrow_project_node_options_new", libs);
  gidLink(cast(void**)&garrow_project_node_options_get_expressions, "garrow_project_node_options_get_expressions", libs);

  // QuantileOptions
  gidLink(cast(void**)&garrow_quantile_options_get_type, "garrow_quantile_options_get_type", libs);
  gidLink(cast(void**)&garrow_quantile_options_new, "garrow_quantile_options_new", libs);
  gidLink(cast(void**)&garrow_quantile_options_get_qs, "garrow_quantile_options_get_qs", libs);
  gidLink(cast(void**)&garrow_quantile_options_set_q, "garrow_quantile_options_set_q", libs);
  gidLink(cast(void**)&garrow_quantile_options_set_qs, "garrow_quantile_options_set_qs", libs);

  // RankOptions
  gidLink(cast(void**)&garrow_rank_options_get_type, "garrow_rank_options_get_type", libs);
  gidLink(cast(void**)&garrow_rank_options_new, "garrow_rank_options_new", libs);
  gidLink(cast(void**)&garrow_rank_options_add_sort_key, "garrow_rank_options_add_sort_key", libs);
  gidLink(cast(void**)&garrow_rank_options_equal, "garrow_rank_options_equal", libs);
  gidLink(cast(void**)&garrow_rank_options_get_sort_keys, "garrow_rank_options_get_sort_keys", libs);
  gidLink(cast(void**)&garrow_rank_options_set_sort_keys, "garrow_rank_options_set_sort_keys", libs);

  // RankQuantileOptions
  gidLink(cast(void**)&garrow_rank_quantile_options_get_type, "garrow_rank_quantile_options_get_type", libs);
  gidLink(cast(void**)&garrow_rank_quantile_options_new, "garrow_rank_quantile_options_new", libs);
  gidLink(cast(void**)&garrow_rank_quantile_options_add_sort_key, "garrow_rank_quantile_options_add_sort_key", libs);
  gidLink(cast(void**)&garrow_rank_quantile_options_get_sort_keys, "garrow_rank_quantile_options_get_sort_keys", libs);
  gidLink(cast(void**)&garrow_rank_quantile_options_set_sort_keys, "garrow_rank_quantile_options_set_sort_keys", libs);

  // ReadOptions
  gidLink(cast(void**)&garrow_read_options_get_type, "garrow_read_options_get_type", libs);
  gidLink(cast(void**)&garrow_read_options_new, "garrow_read_options_new", libs);
  gidLink(cast(void**)&garrow_read_options_get_included_fields, "garrow_read_options_get_included_fields", libs);
  gidLink(cast(void**)&garrow_read_options_set_included_fields, "garrow_read_options_set_included_fields", libs);

  // Readable
  gidLink(cast(void**)&garrow_readable_get_type, "garrow_readable_get_type", libs);
  gidLink(cast(void**)&garrow_readable_read, "garrow_readable_read", libs);
  gidLink(cast(void**)&garrow_readable_read_bytes, "garrow_readable_read_bytes", libs);

  // RecordBatch
  gidLink(cast(void**)&garrow_record_batch_get_type, "garrow_record_batch_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_new, "garrow_record_batch_new", libs);
  gidLink(cast(void**)&garrow_record_batch_import, "garrow_record_batch_import", libs);
  gidLink(cast(void**)&garrow_record_batch_add_column, "garrow_record_batch_add_column", libs);
  gidLink(cast(void**)&garrow_record_batch_equal, "garrow_record_batch_equal", libs);
  gidLink(cast(void**)&garrow_record_batch_equal_metadata, "garrow_record_batch_equal_metadata", libs);
  gidLink(cast(void**)&garrow_record_batch_export, "garrow_record_batch_export", libs);
  gidLink(cast(void**)&garrow_record_batch_filter, "garrow_record_batch_filter", libs);
  gidLink(cast(void**)&garrow_record_batch_get_column_data, "garrow_record_batch_get_column_data", libs);
  gidLink(cast(void**)&garrow_record_batch_get_column_name, "garrow_record_batch_get_column_name", libs);
  gidLink(cast(void**)&garrow_record_batch_get_n_columns, "garrow_record_batch_get_n_columns", libs);
  gidLink(cast(void**)&garrow_record_batch_get_n_rows, "garrow_record_batch_get_n_rows", libs);
  gidLink(cast(void**)&garrow_record_batch_get_schema, "garrow_record_batch_get_schema", libs);
  gidLink(cast(void**)&garrow_record_batch_remove_column, "garrow_record_batch_remove_column", libs);
  gidLink(cast(void**)&garrow_record_batch_serialize, "garrow_record_batch_serialize", libs);
  gidLink(cast(void**)&garrow_record_batch_slice, "garrow_record_batch_slice", libs);
  gidLink(cast(void**)&garrow_record_batch_sort_indices, "garrow_record_batch_sort_indices", libs);
  gidLink(cast(void**)&garrow_record_batch_take, "garrow_record_batch_take", libs);
  gidLink(cast(void**)&garrow_record_batch_to_string, "garrow_record_batch_to_string", libs);
  gidLink(cast(void**)&garrow_record_batch_validate, "garrow_record_batch_validate", libs);
  gidLink(cast(void**)&garrow_record_batch_validate_full, "garrow_record_batch_validate_full", libs);

  // RecordBatchBuilder
  gidLink(cast(void**)&garrow_record_batch_builder_get_type, "garrow_record_batch_builder_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_new, "garrow_record_batch_builder_new", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_flush, "garrow_record_batch_builder_flush", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_get_column_builder, "garrow_record_batch_builder_get_column_builder", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_get_field, "garrow_record_batch_builder_get_field", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_get_initial_capacity, "garrow_record_batch_builder_get_initial_capacity", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_get_n_columns, "garrow_record_batch_builder_get_n_columns", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_get_n_fields, "garrow_record_batch_builder_get_n_fields", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_get_schema, "garrow_record_batch_builder_get_schema", libs);
  gidLink(cast(void**)&garrow_record_batch_builder_set_initial_capacity, "garrow_record_batch_builder_set_initial_capacity", libs);

  // RecordBatchDatum
  gidLink(cast(void**)&garrow_record_batch_datum_get_type, "garrow_record_batch_datum_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_datum_new, "garrow_record_batch_datum_new", libs);

  // RecordBatchFileReader
  gidLink(cast(void**)&garrow_record_batch_file_reader_get_type, "garrow_record_batch_file_reader_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_file_reader_new, "garrow_record_batch_file_reader_new", libs);
  gidLink(cast(void**)&garrow_record_batch_file_reader_get_metadata, "garrow_record_batch_file_reader_get_metadata", libs);
  gidLink(cast(void**)&garrow_record_batch_file_reader_get_n_record_batches, "garrow_record_batch_file_reader_get_n_record_batches", libs);
  gidLink(cast(void**)&garrow_record_batch_file_reader_get_record_batch, "garrow_record_batch_file_reader_get_record_batch", libs);
  gidLink(cast(void**)&garrow_record_batch_file_reader_get_schema, "garrow_record_batch_file_reader_get_schema", libs);
  gidLink(cast(void**)&garrow_record_batch_file_reader_get_version, "garrow_record_batch_file_reader_get_version", libs);
  gidLink(cast(void**)&garrow_record_batch_file_reader_read_record_batch, "garrow_record_batch_file_reader_read_record_batch", libs);

  // RecordBatchFileWriter
  gidLink(cast(void**)&garrow_record_batch_file_writer_get_type, "garrow_record_batch_file_writer_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_file_writer_new, "garrow_record_batch_file_writer_new", libs);
  gidLink(cast(void**)&garrow_record_batch_file_writer_new_full, "garrow_record_batch_file_writer_new_full", libs);

  // RecordBatchIterator
  gidLink(cast(void**)&garrow_record_batch_iterator_get_type, "garrow_record_batch_iterator_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_iterator_new, "garrow_record_batch_iterator_new", libs);
  gidLink(cast(void**)&garrow_record_batch_iterator_equal, "garrow_record_batch_iterator_equal", libs);
  gidLink(cast(void**)&garrow_record_batch_iterator_next, "garrow_record_batch_iterator_next", libs);
  gidLink(cast(void**)&garrow_record_batch_iterator_to_list, "garrow_record_batch_iterator_to_list", libs);

  // RecordBatchReader
  gidLink(cast(void**)&garrow_record_batch_reader_get_type, "garrow_record_batch_reader_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_new, "garrow_record_batch_reader_new", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_import, "garrow_record_batch_reader_import", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_export, "garrow_record_batch_reader_export", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_get_next_record_batch, "garrow_record_batch_reader_get_next_record_batch", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_get_schema, "garrow_record_batch_reader_get_schema", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_get_sources, "garrow_record_batch_reader_get_sources", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_read_all, "garrow_record_batch_reader_read_all", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_read_next, "garrow_record_batch_reader_read_next", libs);
  gidLink(cast(void**)&garrow_record_batch_reader_read_next_record_batch, "garrow_record_batch_reader_read_next_record_batch", libs);

  // RecordBatchStreamReader
  gidLink(cast(void**)&garrow_record_batch_stream_reader_get_type, "garrow_record_batch_stream_reader_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_stream_reader_new, "garrow_record_batch_stream_reader_new", libs);

  // RecordBatchStreamWriter
  gidLink(cast(void**)&garrow_record_batch_stream_writer_get_type, "garrow_record_batch_stream_writer_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_stream_writer_new, "garrow_record_batch_stream_writer_new", libs);

  // RecordBatchWriter
  gidLink(cast(void**)&garrow_record_batch_writer_get_type, "garrow_record_batch_writer_get_type", libs);
  gidLink(cast(void**)&garrow_record_batch_writer_close, "garrow_record_batch_writer_close", libs);
  gidLink(cast(void**)&garrow_record_batch_writer_is_closed, "garrow_record_batch_writer_is_closed", libs);
  gidLink(cast(void**)&garrow_record_batch_writer_write_record_batch, "garrow_record_batch_writer_write_record_batch", libs);
  gidLink(cast(void**)&garrow_record_batch_writer_write_table, "garrow_record_batch_writer_write_table", libs);

  // ReplaceSliceOptions
  gidLink(cast(void**)&garrow_replace_slice_options_get_type, "garrow_replace_slice_options_get_type", libs);
  gidLink(cast(void**)&garrow_replace_slice_options_new, "garrow_replace_slice_options_new", libs);

  // ReplaceSubstringOptions
  gidLink(cast(void**)&garrow_replace_substring_options_get_type, "garrow_replace_substring_options_get_type", libs);
  gidLink(cast(void**)&garrow_replace_substring_options_new, "garrow_replace_substring_options_new", libs);

  // ResizableBuffer
  gidLink(cast(void**)&garrow_resizable_buffer_get_type, "garrow_resizable_buffer_get_type", libs);
  gidLink(cast(void**)&garrow_resizable_buffer_new, "garrow_resizable_buffer_new", libs);
  gidLink(cast(void**)&garrow_resizable_buffer_reserve, "garrow_resizable_buffer_reserve", libs);
  gidLink(cast(void**)&garrow_resizable_buffer_resize, "garrow_resizable_buffer_resize", libs);

  // RoundBinaryOptions
  gidLink(cast(void**)&garrow_round_binary_options_get_type, "garrow_round_binary_options_get_type", libs);
  gidLink(cast(void**)&garrow_round_binary_options_new, "garrow_round_binary_options_new", libs);

  // RoundOptions
  gidLink(cast(void**)&garrow_round_options_get_type, "garrow_round_options_get_type", libs);
  gidLink(cast(void**)&garrow_round_options_new, "garrow_round_options_new", libs);

  // RoundTemporalOptions
  gidLink(cast(void**)&garrow_round_temporal_options_get_type, "garrow_round_temporal_options_get_type", libs);
  gidLink(cast(void**)&garrow_round_temporal_options_new, "garrow_round_temporal_options_new", libs);

  // RoundToMultipleOptions
  gidLink(cast(void**)&garrow_round_to_multiple_options_get_type, "garrow_round_to_multiple_options_get_type", libs);
  gidLink(cast(void**)&garrow_round_to_multiple_options_new, "garrow_round_to_multiple_options_new", libs);

  // RunEndEncodeOptions
  gidLink(cast(void**)&garrow_run_end_encode_options_get_type, "garrow_run_end_encode_options_get_type", libs);
  gidLink(cast(void**)&garrow_run_end_encode_options_new, "garrow_run_end_encode_options_new", libs);

  // RunEndEncodedArray
  gidLink(cast(void**)&garrow_run_end_encoded_array_get_type, "garrow_run_end_encoded_array_get_type", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_new, "garrow_run_end_encoded_array_new", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_decode, "garrow_run_end_encoded_array_decode", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_find_physical_length, "garrow_run_end_encoded_array_find_physical_length", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_find_physical_offset, "garrow_run_end_encoded_array_find_physical_offset", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_get_logical_run_ends, "garrow_run_end_encoded_array_get_logical_run_ends", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_get_logical_values, "garrow_run_end_encoded_array_get_logical_values", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_get_run_ends, "garrow_run_end_encoded_array_get_run_ends", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_array_get_values, "garrow_run_end_encoded_array_get_values", libs);

  // RunEndEncodedDataType
  gidLink(cast(void**)&garrow_run_end_encoded_data_type_get_type, "garrow_run_end_encoded_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_data_type_new, "garrow_run_end_encoded_data_type_new", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_data_type_get_run_end_data_type, "garrow_run_end_encoded_data_type_get_run_end_data_type", libs);
  gidLink(cast(void**)&garrow_run_end_encoded_data_type_get_value_data_type, "garrow_run_end_encoded_data_type_get_value_data_type", libs);

  // S3FileSystem
  gidLink(cast(void**)&garrow_s3_file_system_get_type, "garrow_s3_file_system_get_type", libs);

  // S3GlobalOptions
  gidLink(cast(void**)&garrow_s3_global_options_get_type, "garrow_s3_global_options_get_type", libs);
  gidLink(cast(void**)&garrow_s3_global_options_new, "garrow_s3_global_options_new", libs);

  // Scalar
  gidLink(cast(void**)&garrow_scalar_get_type, "garrow_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_scalar_parse, "garrow_scalar_parse", libs);
  gidLink(cast(void**)&garrow_scalar_cast, "garrow_scalar_cast", libs);
  gidLink(cast(void**)&garrow_scalar_equal, "garrow_scalar_equal", libs);
  gidLink(cast(void**)&garrow_scalar_equal_options, "garrow_scalar_equal_options", libs);
  gidLink(cast(void**)&garrow_scalar_get_data_type, "garrow_scalar_get_data_type", libs);
  gidLink(cast(void**)&garrow_scalar_is_valid, "garrow_scalar_is_valid", libs);
  gidLink(cast(void**)&garrow_scalar_to_string, "garrow_scalar_to_string", libs);

  // ScalarAggregateOptions
  gidLink(cast(void**)&garrow_scalar_aggregate_options_get_type, "garrow_scalar_aggregate_options_get_type", libs);
  gidLink(cast(void**)&garrow_scalar_aggregate_options_new, "garrow_scalar_aggregate_options_new", libs);

  // ScalarDatum
  gidLink(cast(void**)&garrow_scalar_datum_get_type, "garrow_scalar_datum_get_type", libs);
  gidLink(cast(void**)&garrow_scalar_datum_new, "garrow_scalar_datum_new", libs);

  // Schema
  gidLink(cast(void**)&garrow_schema_get_type, "garrow_schema_get_type", libs);
  gidLink(cast(void**)&garrow_schema_new, "garrow_schema_new", libs);
  gidLink(cast(void**)&garrow_schema_import, "garrow_schema_import", libs);
  gidLink(cast(void**)&garrow_schema_add_field, "garrow_schema_add_field", libs);
  gidLink(cast(void**)&garrow_schema_equal, "garrow_schema_equal", libs);
  gidLink(cast(void**)&garrow_schema_export, "garrow_schema_export", libs);
  gidLink(cast(void**)&garrow_schema_get_field, "garrow_schema_get_field", libs);
  gidLink(cast(void**)&garrow_schema_get_field_by_name, "garrow_schema_get_field_by_name", libs);
  gidLink(cast(void**)&garrow_schema_get_field_index, "garrow_schema_get_field_index", libs);
  gidLink(cast(void**)&garrow_schema_get_fields, "garrow_schema_get_fields", libs);
  gidLink(cast(void**)&garrow_schema_get_metadata, "garrow_schema_get_metadata", libs);
  gidLink(cast(void**)&garrow_schema_has_metadata, "garrow_schema_has_metadata", libs);
  gidLink(cast(void**)&garrow_schema_n_fields, "garrow_schema_n_fields", libs);
  gidLink(cast(void**)&garrow_schema_remove_field, "garrow_schema_remove_field", libs);
  gidLink(cast(void**)&garrow_schema_replace_field, "garrow_schema_replace_field", libs);
  gidLink(cast(void**)&garrow_schema_to_string, "garrow_schema_to_string", libs);
  gidLink(cast(void**)&garrow_schema_to_string_metadata, "garrow_schema_to_string_metadata", libs);
  gidLink(cast(void**)&garrow_schema_with_metadata, "garrow_schema_with_metadata", libs);

  // SeekableInputStream
  gidLink(cast(void**)&garrow_seekable_input_stream_get_type, "garrow_seekable_input_stream_get_type", libs);
  gidLink(cast(void**)&garrow_seekable_input_stream_get_size, "garrow_seekable_input_stream_get_size", libs);
  gidLink(cast(void**)&garrow_seekable_input_stream_get_support_zero_copy, "garrow_seekable_input_stream_get_support_zero_copy", libs);
  gidLink(cast(void**)&garrow_seekable_input_stream_peek, "garrow_seekable_input_stream_peek", libs);
  gidLink(cast(void**)&garrow_seekable_input_stream_read_at, "garrow_seekable_input_stream_read_at", libs);
  gidLink(cast(void**)&garrow_seekable_input_stream_read_at_bytes, "garrow_seekable_input_stream_read_at_bytes", libs);

  // SelectKOptions
  gidLink(cast(void**)&garrow_select_k_options_get_type, "garrow_select_k_options_get_type", libs);
  gidLink(cast(void**)&garrow_select_k_options_new, "garrow_select_k_options_new", libs);
  gidLink(cast(void**)&garrow_select_k_options_add_sort_key, "garrow_select_k_options_add_sort_key", libs);
  gidLink(cast(void**)&garrow_select_k_options_get_sort_keys, "garrow_select_k_options_get_sort_keys", libs);
  gidLink(cast(void**)&garrow_select_k_options_set_sort_keys, "garrow_select_k_options_set_sort_keys", libs);

  // SetLookupOptions
  gidLink(cast(void**)&garrow_set_lookup_options_get_type, "garrow_set_lookup_options_get_type", libs);
  gidLink(cast(void**)&garrow_set_lookup_options_new, "garrow_set_lookup_options_new", libs);

  // SinkNodeOptions
  gidLink(cast(void**)&garrow_sink_node_options_get_type, "garrow_sink_node_options_get_type", libs);
  gidLink(cast(void**)&garrow_sink_node_options_new, "garrow_sink_node_options_new", libs);
  gidLink(cast(void**)&garrow_sink_node_options_get_reader, "garrow_sink_node_options_get_reader", libs);

  // SkewOptions
  gidLink(cast(void**)&garrow_skew_options_get_type, "garrow_skew_options_get_type", libs);
  gidLink(cast(void**)&garrow_skew_options_new, "garrow_skew_options_new", libs);

  // SliceOptions
  gidLink(cast(void**)&garrow_slice_options_get_type, "garrow_slice_options_get_type", libs);
  gidLink(cast(void**)&garrow_slice_options_new, "garrow_slice_options_new", libs);

  // SlowFileSystem
  gidLink(cast(void**)&garrow_slow_file_system_get_type, "garrow_slow_file_system_get_type", libs);
  gidLink(cast(void**)&garrow_slow_file_system_new_average_latency, "garrow_slow_file_system_new_average_latency", libs);
  gidLink(cast(void**)&garrow_slow_file_system_new_average_latency_and_seed, "garrow_slow_file_system_new_average_latency_and_seed", libs);

  // SortKey
  gidLink(cast(void**)&garrow_sort_key_get_type, "garrow_sort_key_get_type", libs);
  gidLink(cast(void**)&garrow_sort_key_new, "garrow_sort_key_new", libs);
  gidLink(cast(void**)&garrow_sort_key_equal, "garrow_sort_key_equal", libs);

  // SortOptions
  gidLink(cast(void**)&garrow_sort_options_get_type, "garrow_sort_options_get_type", libs);
  gidLink(cast(void**)&garrow_sort_options_new, "garrow_sort_options_new", libs);
  gidLink(cast(void**)&garrow_sort_options_add_sort_key, "garrow_sort_options_add_sort_key", libs);
  gidLink(cast(void**)&garrow_sort_options_equal, "garrow_sort_options_equal", libs);
  gidLink(cast(void**)&garrow_sort_options_get_sort_keys, "garrow_sort_options_get_sort_keys", libs);
  gidLink(cast(void**)&garrow_sort_options_set_sort_keys, "garrow_sort_options_set_sort_keys", libs);

  // SourceNodeOptions
  gidLink(cast(void**)&garrow_source_node_options_get_type, "garrow_source_node_options_get_type", libs);
  gidLink(cast(void**)&garrow_source_node_options_new_record_batch, "garrow_source_node_options_new_record_batch", libs);
  gidLink(cast(void**)&garrow_source_node_options_new_record_batch_reader, "garrow_source_node_options_new_record_batch_reader", libs);
  gidLink(cast(void**)&garrow_source_node_options_new_table, "garrow_source_node_options_new_table", libs);

  // SparseUnionArray
  gidLink(cast(void**)&garrow_sparse_union_array_get_type, "garrow_sparse_union_array_get_type", libs);
  gidLink(cast(void**)&garrow_sparse_union_array_new, "garrow_sparse_union_array_new", libs);
  gidLink(cast(void**)&garrow_sparse_union_array_new_data_type, "garrow_sparse_union_array_new_data_type", libs);

  // SparseUnionArrayBuilder
  gidLink(cast(void**)&garrow_sparse_union_array_builder_get_type, "garrow_sparse_union_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_sparse_union_array_builder_new, "garrow_sparse_union_array_builder_new", libs);

  // SparseUnionDataType
  gidLink(cast(void**)&garrow_sparse_union_data_type_get_type, "garrow_sparse_union_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_sparse_union_data_type_new, "garrow_sparse_union_data_type_new", libs);

  // SparseUnionScalar
  gidLink(cast(void**)&garrow_sparse_union_scalar_get_type, "garrow_sparse_union_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_sparse_union_scalar_new, "garrow_sparse_union_scalar_new", libs);

  // SplitOptions
  gidLink(cast(void**)&garrow_split_options_get_type, "garrow_split_options_get_type", libs);
  gidLink(cast(void**)&garrow_split_options_new, "garrow_split_options_new", libs);

  // SplitPatternOptions
  gidLink(cast(void**)&garrow_split_pattern_options_get_type, "garrow_split_pattern_options_get_type", libs);
  gidLink(cast(void**)&garrow_split_pattern_options_new, "garrow_split_pattern_options_new", libs);

  // StreamDecoder
  gidLink(cast(void**)&garrow_stream_decoder_get_type, "garrow_stream_decoder_get_type", libs);
  gidLink(cast(void**)&garrow_stream_decoder_new, "garrow_stream_decoder_new", libs);
  gidLink(cast(void**)&garrow_stream_decoder_consume_buffer, "garrow_stream_decoder_consume_buffer", libs);
  gidLink(cast(void**)&garrow_stream_decoder_consume_bytes, "garrow_stream_decoder_consume_bytes", libs);
  gidLink(cast(void**)&garrow_stream_decoder_get_next_required_size, "garrow_stream_decoder_get_next_required_size", libs);
  gidLink(cast(void**)&garrow_stream_decoder_get_schema, "garrow_stream_decoder_get_schema", libs);
  gidLink(cast(void**)&garrow_stream_decoder_reset, "garrow_stream_decoder_reset", libs);

  // StreamListener
  gidLink(cast(void**)&garrow_stream_listener_get_type, "garrow_stream_listener_get_type", libs);
  gidLink(cast(void**)&garrow_stream_listener_on_eos, "garrow_stream_listener_on_eos", libs);
  gidLink(cast(void**)&garrow_stream_listener_on_record_batch_decoded, "garrow_stream_listener_on_record_batch_decoded", libs);
  gidLink(cast(void**)&garrow_stream_listener_on_schema_decoded, "garrow_stream_listener_on_schema_decoded", libs);

  // StrftimeOptions
  gidLink(cast(void**)&garrow_strftime_options_get_type, "garrow_strftime_options_get_type", libs);
  gidLink(cast(void**)&garrow_strftime_options_new, "garrow_strftime_options_new", libs);

  // StringArray
  gidLink(cast(void**)&garrow_string_array_get_type, "garrow_string_array_get_type", libs);
  gidLink(cast(void**)&garrow_string_array_new, "garrow_string_array_new", libs);
  gidLink(cast(void**)&garrow_string_array_get_string, "garrow_string_array_get_string", libs);

  // StringArrayBuilder
  gidLink(cast(void**)&garrow_string_array_builder_get_type, "garrow_string_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_string_array_builder_new, "garrow_string_array_builder_new", libs);
  gidLink(cast(void**)&garrow_string_array_builder_append, "garrow_string_array_builder_append", libs);
  gidLink(cast(void**)&garrow_string_array_builder_append_string, "garrow_string_array_builder_append_string", libs);
  gidLink(cast(void**)&garrow_string_array_builder_append_string_len, "garrow_string_array_builder_append_string_len", libs);
  gidLink(cast(void**)&garrow_string_array_builder_append_strings, "garrow_string_array_builder_append_strings", libs);
  gidLink(cast(void**)&garrow_string_array_builder_append_value, "garrow_string_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_string_array_builder_append_values, "garrow_string_array_builder_append_values", libs);

  // StringDataType
  gidLink(cast(void**)&garrow_string_data_type_get_type, "garrow_string_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_string_data_type_new, "garrow_string_data_type_new", libs);

  // StringDictionaryArrayBuilder
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_get_type, "garrow_string_dictionary_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_new, "garrow_string_dictionary_array_builder_new", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_append_array, "garrow_string_dictionary_array_builder_append_array", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_append_indices, "garrow_string_dictionary_array_builder_append_indices", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_append_null, "garrow_string_dictionary_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_append_string, "garrow_string_dictionary_array_builder_append_string", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_finish_delta, "garrow_string_dictionary_array_builder_finish_delta", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_get_dictionary_length, "garrow_string_dictionary_array_builder_get_dictionary_length", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_insert_memo_values, "garrow_string_dictionary_array_builder_insert_memo_values", libs);
  gidLink(cast(void**)&garrow_string_dictionary_array_builder_reset_full, "garrow_string_dictionary_array_builder_reset_full", libs);

  // StringScalar
  gidLink(cast(void**)&garrow_string_scalar_get_type, "garrow_string_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_string_scalar_new, "garrow_string_scalar_new", libs);

  // StringViewArray
  gidLink(cast(void**)&garrow_string_view_array_get_type, "garrow_string_view_array_get_type", libs);
  gidLink(cast(void**)&garrow_string_view_array_new, "garrow_string_view_array_new", libs);
  gidLink(cast(void**)&garrow_string_view_array_get_value, "garrow_string_view_array_get_value", libs);

  // StringViewDataType
  gidLink(cast(void**)&garrow_string_view_data_type_get_type, "garrow_string_view_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_string_view_data_type_new, "garrow_string_view_data_type_new", libs);

  // StrptimeOptions
  gidLink(cast(void**)&garrow_strptime_options_get_type, "garrow_strptime_options_get_type", libs);
  gidLink(cast(void**)&garrow_strptime_options_new, "garrow_strptime_options_new", libs);

  // StrptimeTimestampParser
  gidLink(cast(void**)&garrow_strptime_timestamp_parser_get_type, "garrow_strptime_timestamp_parser_get_type", libs);
  gidLink(cast(void**)&garrow_strptime_timestamp_parser_new, "garrow_strptime_timestamp_parser_new", libs);
  gidLink(cast(void**)&garrow_strptime_timestamp_parser_get_format, "garrow_strptime_timestamp_parser_get_format", libs);

  // StructArray
  gidLink(cast(void**)&garrow_struct_array_get_type, "garrow_struct_array_get_type", libs);
  gidLink(cast(void**)&garrow_struct_array_new, "garrow_struct_array_new", libs);
  gidLink(cast(void**)&garrow_struct_array_flatten, "garrow_struct_array_flatten", libs);
  gidLink(cast(void**)&garrow_struct_array_get_field, "garrow_struct_array_get_field", libs);
  gidLink(cast(void**)&garrow_struct_array_get_fields, "garrow_struct_array_get_fields", libs);

  // StructArrayBuilder
  gidLink(cast(void**)&garrow_struct_array_builder_get_type, "garrow_struct_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_struct_array_builder_new, "garrow_struct_array_builder_new", libs);
  gidLink(cast(void**)&garrow_struct_array_builder_append, "garrow_struct_array_builder_append", libs);
  gidLink(cast(void**)&garrow_struct_array_builder_append_null, "garrow_struct_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_struct_array_builder_append_value, "garrow_struct_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_struct_array_builder_get_field_builder, "garrow_struct_array_builder_get_field_builder", libs);
  gidLink(cast(void**)&garrow_struct_array_builder_get_field_builders, "garrow_struct_array_builder_get_field_builders", libs);

  // StructDataType
  gidLink(cast(void**)&garrow_struct_data_type_get_type, "garrow_struct_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_struct_data_type_new, "garrow_struct_data_type_new", libs);
  gidLink(cast(void**)&garrow_struct_data_type_get_field, "garrow_struct_data_type_get_field", libs);
  gidLink(cast(void**)&garrow_struct_data_type_get_field_by_name, "garrow_struct_data_type_get_field_by_name", libs);
  gidLink(cast(void**)&garrow_struct_data_type_get_field_index, "garrow_struct_data_type_get_field_index", libs);
  gidLink(cast(void**)&garrow_struct_data_type_get_fields, "garrow_struct_data_type_get_fields", libs);
  gidLink(cast(void**)&garrow_struct_data_type_get_n_fields, "garrow_struct_data_type_get_n_fields", libs);

  // StructFieldOptions
  gidLink(cast(void**)&garrow_struct_field_options_get_type, "garrow_struct_field_options_get_type", libs);
  gidLink(cast(void**)&garrow_struct_field_options_new, "garrow_struct_field_options_new", libs);
  gidLink(cast(void**)&garrow_struct_field_options_set_field_ref, "garrow_struct_field_options_set_field_ref", libs);

  // StructScalar
  gidLink(cast(void**)&garrow_struct_scalar_get_type, "garrow_struct_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_struct_scalar_new, "garrow_struct_scalar_new", libs);
  gidLink(cast(void**)&garrow_struct_scalar_get_value, "garrow_struct_scalar_get_value", libs);

  // SubTreeFileSystem
  gidLink(cast(void**)&garrow_sub_tree_file_system_get_type, "garrow_sub_tree_file_system_get_type", libs);
  gidLink(cast(void**)&garrow_sub_tree_file_system_new, "garrow_sub_tree_file_system_new", libs);

  // TDigestOptions
  gidLink(cast(void**)&garrow_tdigest_options_get_type, "garrow_tdigest_options_get_type", libs);
  gidLink(cast(void**)&garrow_tdigest_options_new, "garrow_tdigest_options_new", libs);
  gidLink(cast(void**)&garrow_tdigest_options_get_qs, "garrow_tdigest_options_get_qs", libs);
  gidLink(cast(void**)&garrow_tdigest_options_set_q, "garrow_tdigest_options_set_q", libs);
  gidLink(cast(void**)&garrow_tdigest_options_set_qs, "garrow_tdigest_options_set_qs", libs);

  // Table
  gidLink(cast(void**)&garrow_table_get_type, "garrow_table_get_type", libs);
  gidLink(cast(void**)&garrow_table_new_arrays, "garrow_table_new_arrays", libs);
  gidLink(cast(void**)&garrow_table_new_chunked_arrays, "garrow_table_new_chunked_arrays", libs);
  gidLink(cast(void**)&garrow_table_new_record_batches, "garrow_table_new_record_batches", libs);
  gidLink(cast(void**)&garrow_table_new_values, "garrow_table_new_values", libs);
  gidLink(cast(void**)&garrow_table_add_column, "garrow_table_add_column", libs);
  gidLink(cast(void**)&garrow_table_combine_chunks, "garrow_table_combine_chunks", libs);
  gidLink(cast(void**)&garrow_table_concatenate, "garrow_table_concatenate", libs);
  gidLink(cast(void**)&garrow_table_equal, "garrow_table_equal", libs);
  gidLink(cast(void**)&garrow_table_equal_metadata, "garrow_table_equal_metadata", libs);
  gidLink(cast(void**)&garrow_table_filter, "garrow_table_filter", libs);
  gidLink(cast(void**)&garrow_table_filter_chunked_array, "garrow_table_filter_chunked_array", libs);
  gidLink(cast(void**)&garrow_table_get_column_data, "garrow_table_get_column_data", libs);
  gidLink(cast(void**)&garrow_table_get_n_columns, "garrow_table_get_n_columns", libs);
  gidLink(cast(void**)&garrow_table_get_n_rows, "garrow_table_get_n_rows", libs);
  gidLink(cast(void**)&garrow_table_get_schema, "garrow_table_get_schema", libs);
  gidLink(cast(void**)&garrow_table_remove_column, "garrow_table_remove_column", libs);
  gidLink(cast(void**)&garrow_table_replace_column, "garrow_table_replace_column", libs);
  gidLink(cast(void**)&garrow_table_slice, "garrow_table_slice", libs);
  gidLink(cast(void**)&garrow_table_sort_indices, "garrow_table_sort_indices", libs);
  gidLink(cast(void**)&garrow_table_take, "garrow_table_take", libs);
  gidLink(cast(void**)&garrow_table_take_chunked_array, "garrow_table_take_chunked_array", libs);
  gidLink(cast(void**)&garrow_table_to_string, "garrow_table_to_string", libs);
  gidLink(cast(void**)&garrow_table_validate, "garrow_table_validate", libs);
  gidLink(cast(void**)&garrow_table_validate_full, "garrow_table_validate_full", libs);
  gidLink(cast(void**)&garrow_table_write_as_feather, "garrow_table_write_as_feather", libs);

  // TableBatchReader
  gidLink(cast(void**)&garrow_table_batch_reader_get_type, "garrow_table_batch_reader_get_type", libs);
  gidLink(cast(void**)&garrow_table_batch_reader_new, "garrow_table_batch_reader_new", libs);
  gidLink(cast(void**)&garrow_table_batch_reader_set_max_chunk_size, "garrow_table_batch_reader_set_max_chunk_size", libs);

  // TableConcatenateOptions
  gidLink(cast(void**)&garrow_table_concatenate_options_get_type, "garrow_table_concatenate_options_get_type", libs);
  gidLink(cast(void**)&garrow_table_concatenate_options_new, "garrow_table_concatenate_options_new", libs);

  // TableDatum
  gidLink(cast(void**)&garrow_table_datum_get_type, "garrow_table_datum_get_type", libs);
  gidLink(cast(void**)&garrow_table_datum_new, "garrow_table_datum_new", libs);

  // TakeOptions
  gidLink(cast(void**)&garrow_take_options_get_type, "garrow_take_options_get_type", libs);
  gidLink(cast(void**)&garrow_take_options_new, "garrow_take_options_new", libs);

  // TemporalDataType
  gidLink(cast(void**)&garrow_temporal_data_type_get_type, "garrow_temporal_data_type_get_type", libs);

  // Tensor
  gidLink(cast(void**)&garrow_tensor_get_type, "garrow_tensor_get_type", libs);
  gidLink(cast(void**)&garrow_tensor_new, "garrow_tensor_new", libs);
  gidLink(cast(void**)&garrow_tensor_equal, "garrow_tensor_equal", libs);
  gidLink(cast(void**)&garrow_tensor_get_buffer, "garrow_tensor_get_buffer", libs);
  gidLink(cast(void**)&garrow_tensor_get_dimension_name, "garrow_tensor_get_dimension_name", libs);
  gidLink(cast(void**)&garrow_tensor_get_n_dimensions, "garrow_tensor_get_n_dimensions", libs);
  gidLink(cast(void**)&garrow_tensor_get_shape, "garrow_tensor_get_shape", libs);
  gidLink(cast(void**)&garrow_tensor_get_size, "garrow_tensor_get_size", libs);
  gidLink(cast(void**)&garrow_tensor_get_strides, "garrow_tensor_get_strides", libs);
  gidLink(cast(void**)&garrow_tensor_get_value_data_type, "garrow_tensor_get_value_data_type", libs);
  gidLink(cast(void**)&garrow_tensor_get_value_type, "garrow_tensor_get_value_type", libs);
  gidLink(cast(void**)&garrow_tensor_is_column_major, "garrow_tensor_is_column_major", libs);
  gidLink(cast(void**)&garrow_tensor_is_contiguous, "garrow_tensor_is_contiguous", libs);
  gidLink(cast(void**)&garrow_tensor_is_mutable, "garrow_tensor_is_mutable", libs);
  gidLink(cast(void**)&garrow_tensor_is_row_major, "garrow_tensor_is_row_major", libs);

  // ThreadPool
  gidLink(cast(void**)&garrow_thread_pool_get_type, "garrow_thread_pool_get_type", libs);
  gidLink(cast(void**)&garrow_thread_pool_new, "garrow_thread_pool_new", libs);

  // Time32Array
  gidLink(cast(void**)&garrow_time32_array_get_type, "garrow_time32_array_get_type", libs);
  gidLink(cast(void**)&garrow_time32_array_new, "garrow_time32_array_new", libs);
  gidLink(cast(void**)&garrow_time32_array_get_value, "garrow_time32_array_get_value", libs);
  gidLink(cast(void**)&garrow_time32_array_get_values, "garrow_time32_array_get_values", libs);

  // Time32ArrayBuilder
  gidLink(cast(void**)&garrow_time32_array_builder_get_type, "garrow_time32_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_time32_array_builder_new, "garrow_time32_array_builder_new", libs);
  gidLink(cast(void**)&garrow_time32_array_builder_append, "garrow_time32_array_builder_append", libs);
  gidLink(cast(void**)&garrow_time32_array_builder_append_null, "garrow_time32_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_time32_array_builder_append_nulls, "garrow_time32_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_time32_array_builder_append_value, "garrow_time32_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_time32_array_builder_append_values, "garrow_time32_array_builder_append_values", libs);

  // Time32DataType
  gidLink(cast(void**)&garrow_time32_data_type_get_type, "garrow_time32_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_time32_data_type_new, "garrow_time32_data_type_new", libs);

  // Time32Scalar
  gidLink(cast(void**)&garrow_time32_scalar_get_type, "garrow_time32_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_time32_scalar_new, "garrow_time32_scalar_new", libs);
  gidLink(cast(void**)&garrow_time32_scalar_get_value, "garrow_time32_scalar_get_value", libs);

  // Time64Array
  gidLink(cast(void**)&garrow_time64_array_get_type, "garrow_time64_array_get_type", libs);
  gidLink(cast(void**)&garrow_time64_array_new, "garrow_time64_array_new", libs);
  gidLink(cast(void**)&garrow_time64_array_get_value, "garrow_time64_array_get_value", libs);
  gidLink(cast(void**)&garrow_time64_array_get_values, "garrow_time64_array_get_values", libs);

  // Time64ArrayBuilder
  gidLink(cast(void**)&garrow_time64_array_builder_get_type, "garrow_time64_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_time64_array_builder_new, "garrow_time64_array_builder_new", libs);
  gidLink(cast(void**)&garrow_time64_array_builder_append, "garrow_time64_array_builder_append", libs);
  gidLink(cast(void**)&garrow_time64_array_builder_append_null, "garrow_time64_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_time64_array_builder_append_nulls, "garrow_time64_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_time64_array_builder_append_value, "garrow_time64_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_time64_array_builder_append_values, "garrow_time64_array_builder_append_values", libs);

  // Time64DataType
  gidLink(cast(void**)&garrow_time64_data_type_get_type, "garrow_time64_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_time64_data_type_new, "garrow_time64_data_type_new", libs);

  // Time64Scalar
  gidLink(cast(void**)&garrow_time64_scalar_get_type, "garrow_time64_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_time64_scalar_new, "garrow_time64_scalar_new", libs);
  gidLink(cast(void**)&garrow_time64_scalar_get_value, "garrow_time64_scalar_get_value", libs);

  // TimeDataType
  gidLink(cast(void**)&garrow_time_data_type_get_type, "garrow_time_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_time_data_type_get_unit, "garrow_time_data_type_get_unit", libs);

  // TimestampArray
  gidLink(cast(void**)&garrow_timestamp_array_get_type, "garrow_timestamp_array_get_type", libs);
  gidLink(cast(void**)&garrow_timestamp_array_new, "garrow_timestamp_array_new", libs);
  gidLink(cast(void**)&garrow_timestamp_array_get_value, "garrow_timestamp_array_get_value", libs);
  gidLink(cast(void**)&garrow_timestamp_array_get_values, "garrow_timestamp_array_get_values", libs);

  // TimestampArrayBuilder
  gidLink(cast(void**)&garrow_timestamp_array_builder_get_type, "garrow_timestamp_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_timestamp_array_builder_new, "garrow_timestamp_array_builder_new", libs);
  gidLink(cast(void**)&garrow_timestamp_array_builder_append, "garrow_timestamp_array_builder_append", libs);
  gidLink(cast(void**)&garrow_timestamp_array_builder_append_null, "garrow_timestamp_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_timestamp_array_builder_append_nulls, "garrow_timestamp_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_timestamp_array_builder_append_value, "garrow_timestamp_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_timestamp_array_builder_append_values, "garrow_timestamp_array_builder_append_values", libs);

  // TimestampDataType
  gidLink(cast(void**)&garrow_timestamp_data_type_get_type, "garrow_timestamp_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_timestamp_data_type_new, "garrow_timestamp_data_type_new", libs);
  gidLink(cast(void**)&garrow_timestamp_data_type_get_unit, "garrow_timestamp_data_type_get_unit", libs);

  // TimestampParser
  gidLink(cast(void**)&garrow_timestamp_parser_get_type, "garrow_timestamp_parser_get_type", libs);
  gidLink(cast(void**)&garrow_timestamp_parser_get_kind, "garrow_timestamp_parser_get_kind", libs);

  // TimestampScalar
  gidLink(cast(void**)&garrow_timestamp_scalar_get_type, "garrow_timestamp_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_timestamp_scalar_new, "garrow_timestamp_scalar_new", libs);
  gidLink(cast(void**)&garrow_timestamp_scalar_get_value, "garrow_timestamp_scalar_get_value", libs);

  // TrimOptions
  gidLink(cast(void**)&garrow_trim_options_get_type, "garrow_trim_options_get_type", libs);
  gidLink(cast(void**)&garrow_trim_options_new, "garrow_trim_options_new", libs);

  // UInt16Array
  gidLink(cast(void**)&garrow_uint16_array_get_type, "garrow_uint16_array_get_type", libs);
  gidLink(cast(void**)&garrow_uint16_array_new, "garrow_uint16_array_new", libs);
  gidLink(cast(void**)&garrow_uint16_array_get_value, "garrow_uint16_array_get_value", libs);
  gidLink(cast(void**)&garrow_uint16_array_get_values, "garrow_uint16_array_get_values", libs);
  gidLink(cast(void**)&garrow_uint16_array_sum, "garrow_uint16_array_sum", libs);

  // UInt16ArrayBuilder
  gidLink(cast(void**)&garrow_uint16_array_builder_get_type, "garrow_uint16_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_uint16_array_builder_new, "garrow_uint16_array_builder_new", libs);
  gidLink(cast(void**)&garrow_uint16_array_builder_append, "garrow_uint16_array_builder_append", libs);
  gidLink(cast(void**)&garrow_uint16_array_builder_append_null, "garrow_uint16_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_uint16_array_builder_append_nulls, "garrow_uint16_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_uint16_array_builder_append_value, "garrow_uint16_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_uint16_array_builder_append_values, "garrow_uint16_array_builder_append_values", libs);

  // UInt16DataType
  gidLink(cast(void**)&garrow_uint16_data_type_get_type, "garrow_uint16_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_uint16_data_type_new, "garrow_uint16_data_type_new", libs);

  // UInt16Scalar
  gidLink(cast(void**)&garrow_uint16_scalar_get_type, "garrow_uint16_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_uint16_scalar_new, "garrow_uint16_scalar_new", libs);
  gidLink(cast(void**)&garrow_uint16_scalar_get_value, "garrow_uint16_scalar_get_value", libs);

  // UInt32Array
  gidLink(cast(void**)&garrow_uint32_array_get_type, "garrow_uint32_array_get_type", libs);
  gidLink(cast(void**)&garrow_uint32_array_new, "garrow_uint32_array_new", libs);
  gidLink(cast(void**)&garrow_uint32_array_get_value, "garrow_uint32_array_get_value", libs);
  gidLink(cast(void**)&garrow_uint32_array_get_values, "garrow_uint32_array_get_values", libs);
  gidLink(cast(void**)&garrow_uint32_array_sum, "garrow_uint32_array_sum", libs);

  // UInt32ArrayBuilder
  gidLink(cast(void**)&garrow_uint32_array_builder_get_type, "garrow_uint32_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_uint32_array_builder_new, "garrow_uint32_array_builder_new", libs);
  gidLink(cast(void**)&garrow_uint32_array_builder_append, "garrow_uint32_array_builder_append", libs);
  gidLink(cast(void**)&garrow_uint32_array_builder_append_null, "garrow_uint32_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_uint32_array_builder_append_nulls, "garrow_uint32_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_uint32_array_builder_append_value, "garrow_uint32_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_uint32_array_builder_append_values, "garrow_uint32_array_builder_append_values", libs);

  // UInt32DataType
  gidLink(cast(void**)&garrow_uint32_data_type_get_type, "garrow_uint32_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_uint32_data_type_new, "garrow_uint32_data_type_new", libs);

  // UInt32Scalar
  gidLink(cast(void**)&garrow_uint32_scalar_get_type, "garrow_uint32_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_uint32_scalar_new, "garrow_uint32_scalar_new", libs);
  gidLink(cast(void**)&garrow_uint32_scalar_get_value, "garrow_uint32_scalar_get_value", libs);

  // UInt64Array
  gidLink(cast(void**)&garrow_uint64_array_get_type, "garrow_uint64_array_get_type", libs);
  gidLink(cast(void**)&garrow_uint64_array_new, "garrow_uint64_array_new", libs);
  gidLink(cast(void**)&garrow_uint64_array_get_value, "garrow_uint64_array_get_value", libs);
  gidLink(cast(void**)&garrow_uint64_array_get_values, "garrow_uint64_array_get_values", libs);
  gidLink(cast(void**)&garrow_uint64_array_sum, "garrow_uint64_array_sum", libs);

  // UInt64ArrayBuilder
  gidLink(cast(void**)&garrow_uint64_array_builder_get_type, "garrow_uint64_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_uint64_array_builder_new, "garrow_uint64_array_builder_new", libs);
  gidLink(cast(void**)&garrow_uint64_array_builder_append, "garrow_uint64_array_builder_append", libs);
  gidLink(cast(void**)&garrow_uint64_array_builder_append_null, "garrow_uint64_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_uint64_array_builder_append_nulls, "garrow_uint64_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_uint64_array_builder_append_value, "garrow_uint64_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_uint64_array_builder_append_values, "garrow_uint64_array_builder_append_values", libs);

  // UInt64DataType
  gidLink(cast(void**)&garrow_uint64_data_type_get_type, "garrow_uint64_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_uint64_data_type_new, "garrow_uint64_data_type_new", libs);

  // UInt64Scalar
  gidLink(cast(void**)&garrow_uint64_scalar_get_type, "garrow_uint64_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_uint64_scalar_new, "garrow_uint64_scalar_new", libs);
  gidLink(cast(void**)&garrow_uint64_scalar_get_value, "garrow_uint64_scalar_get_value", libs);

  // UInt8Array
  gidLink(cast(void**)&garrow_uint8_array_get_type, "garrow_uint8_array_get_type", libs);
  gidLink(cast(void**)&garrow_uint8_array_new, "garrow_uint8_array_new", libs);
  gidLink(cast(void**)&garrow_uint8_array_get_value, "garrow_uint8_array_get_value", libs);
  gidLink(cast(void**)&garrow_uint8_array_get_values, "garrow_uint8_array_get_values", libs);
  gidLink(cast(void**)&garrow_uint8_array_sum, "garrow_uint8_array_sum", libs);

  // UInt8ArrayBuilder
  gidLink(cast(void**)&garrow_uint8_array_builder_get_type, "garrow_uint8_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_uint8_array_builder_new, "garrow_uint8_array_builder_new", libs);
  gidLink(cast(void**)&garrow_uint8_array_builder_append, "garrow_uint8_array_builder_append", libs);
  gidLink(cast(void**)&garrow_uint8_array_builder_append_null, "garrow_uint8_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_uint8_array_builder_append_nulls, "garrow_uint8_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_uint8_array_builder_append_value, "garrow_uint8_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_uint8_array_builder_append_values, "garrow_uint8_array_builder_append_values", libs);

  // UInt8DataType
  gidLink(cast(void**)&garrow_uint8_data_type_get_type, "garrow_uint8_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_uint8_data_type_new, "garrow_uint8_data_type_new", libs);

  // UInt8Scalar
  gidLink(cast(void**)&garrow_uint8_scalar_get_type, "garrow_uint8_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_uint8_scalar_new, "garrow_uint8_scalar_new", libs);
  gidLink(cast(void**)&garrow_uint8_scalar_get_value, "garrow_uint8_scalar_get_value", libs);

  // UIntArrayBuilder
  gidLink(cast(void**)&garrow_uint_array_builder_get_type, "garrow_uint_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_uint_array_builder_new, "garrow_uint_array_builder_new", libs);
  gidLink(cast(void**)&garrow_uint_array_builder_append, "garrow_uint_array_builder_append", libs);
  gidLink(cast(void**)&garrow_uint_array_builder_append_null, "garrow_uint_array_builder_append_null", libs);
  gidLink(cast(void**)&garrow_uint_array_builder_append_nulls, "garrow_uint_array_builder_append_nulls", libs);
  gidLink(cast(void**)&garrow_uint_array_builder_append_value, "garrow_uint_array_builder_append_value", libs);
  gidLink(cast(void**)&garrow_uint_array_builder_append_values, "garrow_uint_array_builder_append_values", libs);

  // UTF8NormalizeOptions
  gidLink(cast(void**)&garrow_utf8_normalize_options_get_type, "garrow_utf8_normalize_options_get_type", libs);
  gidLink(cast(void**)&garrow_utf8_normalize_options_new, "garrow_utf8_normalize_options_new", libs);

  // UUIDDataType
  gidLink(cast(void**)&garrow_uuid_data_type_get_type, "garrow_uuid_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_uuid_data_type_new, "garrow_uuid_data_type_new", libs);

  // UnionArray
  gidLink(cast(void**)&garrow_union_array_get_type, "garrow_union_array_get_type", libs);
  gidLink(cast(void**)&garrow_union_array_get_child_id, "garrow_union_array_get_child_id", libs);
  gidLink(cast(void**)&garrow_union_array_get_field, "garrow_union_array_get_field", libs);
  gidLink(cast(void**)&garrow_union_array_get_n_fields, "garrow_union_array_get_n_fields", libs);
  gidLink(cast(void**)&garrow_union_array_get_type_code, "garrow_union_array_get_type_code", libs);

  // UnionArrayBuilder
  gidLink(cast(void**)&garrow_union_array_builder_get_type, "garrow_union_array_builder_get_type", libs);
  gidLink(cast(void**)&garrow_union_array_builder_append_child, "garrow_union_array_builder_append_child", libs);
  gidLink(cast(void**)&garrow_union_array_builder_append_value, "garrow_union_array_builder_append_value", libs);

  // UnionDataType
  gidLink(cast(void**)&garrow_union_data_type_get_type, "garrow_union_data_type_get_type", libs);
  gidLink(cast(void**)&garrow_union_data_type_get_field, "garrow_union_data_type_get_field", libs);
  gidLink(cast(void**)&garrow_union_data_type_get_fields, "garrow_union_data_type_get_fields", libs);
  gidLink(cast(void**)&garrow_union_data_type_get_n_fields, "garrow_union_data_type_get_n_fields", libs);
  gidLink(cast(void**)&garrow_union_data_type_get_type_codes, "garrow_union_data_type_get_type_codes", libs);

  // UnionScalar
  gidLink(cast(void**)&garrow_union_scalar_get_type, "garrow_union_scalar_get_type", libs);
  gidLink(cast(void**)&garrow_union_scalar_get_type_code, "garrow_union_scalar_get_type_code", libs);
  gidLink(cast(void**)&garrow_union_scalar_get_value, "garrow_union_scalar_get_value", libs);

  // VarianceOptions
  gidLink(cast(void**)&garrow_variance_options_get_type, "garrow_variance_options_get_type", libs);
  gidLink(cast(void**)&garrow_variance_options_new, "garrow_variance_options_new", libs);

  // WeekOptions
  gidLink(cast(void**)&garrow_week_options_get_type, "garrow_week_options_get_type", libs);
  gidLink(cast(void**)&garrow_week_options_new, "garrow_week_options_new", libs);

  // WinsorizeOptions
  gidLink(cast(void**)&garrow_winsorize_options_get_type, "garrow_winsorize_options_get_type", libs);
  gidLink(cast(void**)&garrow_winsorize_options_new, "garrow_winsorize_options_new", libs);

  // Writable
  gidLink(cast(void**)&garrow_writable_get_type, "garrow_writable_get_type", libs);
  gidLink(cast(void**)&garrow_writable_flush, "garrow_writable_flush", libs);
  gidLink(cast(void**)&garrow_writable_write, "garrow_writable_write", libs);

  // WritableFile
  gidLink(cast(void**)&garrow_writable_file_get_type, "garrow_writable_file_get_type", libs);
  gidLink(cast(void**)&garrow_writable_file_write_at, "garrow_writable_file_write_at", libs);

  // WriteOptions
  gidLink(cast(void**)&garrow_write_options_get_type, "garrow_write_options_get_type", libs);
  gidLink(cast(void**)&garrow_write_options_new, "garrow_write_options_new", libs);

  // ZeroFillOptions
  gidLink(cast(void**)&garrow_zero_fill_options_get_type, "garrow_zero_fill_options_get_type", libs);
  gidLink(cast(void**)&garrow_zero_fill_options_new, "garrow_zero_fill_options_new", libs);

  // global
  gidLink(cast(void**)&garrow_compute_initialize, "garrow_compute_initialize", libs);
  gidLink(cast(void**)&garrow_s3_finalize, "garrow_s3_finalize", libs);
  gidLink(cast(void**)&garrow_s3_initialize, "garrow_s3_initialize", libs);
  gidLink(cast(void**)&garrow_s3_is_enabled, "garrow_s3_is_enabled", libs);

  // Error
  gidLink(cast(void**)&garrow_error_quark, "garrow_error_quark", libs);
}
