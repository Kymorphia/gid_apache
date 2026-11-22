/// C functions for arrowflight22 library
module gid_apache.arrowflight22.c.functions;

public import gid.core.basictypes;
import gid.core.loader;
import gid_apache.arrowflight22.c.types;
static import gid_apache.arrowflight22.c._gidlib_ArrowFlight;
public import gid_apache.arrow22.c.types;

private immutable LIBS = ["arrow-flight-glib_2200"];

private __gshared immutable(bool)* _gidLibMarker = &gid_apache.arrowflight22.c._gidlib_ArrowFlight.gidLibLinked;

// CallOptions
private alias c_gaflight_call_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_call_options_get_typeFn c_gaflight_call_options_get_type; ///
private alias c_gaflight_call_options_newFn = extern(C) GAFlightCallOptions* function() nothrow;
__gshared c_gaflight_call_options_newFn c_gaflight_call_options_new; ///
private alias c_gaflight_call_options_add_headerFn = extern(C) void function(GAFlightCallOptions* options, const(char)* name, const(char)* value) nothrow;
__gshared c_gaflight_call_options_add_headerFn c_gaflight_call_options_add_header; ///
private alias c_gaflight_call_options_clear_headersFn = extern(C) void function(GAFlightCallOptions* options) nothrow;
__gshared c_gaflight_call_options_clear_headersFn c_gaflight_call_options_clear_headers; ///
private alias c_gaflight_call_options_foreach_headerFn = extern(C) void function(GAFlightCallOptions* options, GAFlightHeaderFunc func, void* userData) nothrow;
__gshared c_gaflight_call_options_foreach_headerFn c_gaflight_call_options_foreach_header; ///

// Client
private alias c_gaflight_client_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_client_get_typeFn c_gaflight_client_get_type; ///
private alias c_gaflight_client_newFn = extern(C) GAFlightClient* function(GAFlightLocation* location, GAFlightClientOptions* options, GError** _err) nothrow;
__gshared c_gaflight_client_newFn c_gaflight_client_new; ///
private alias c_gaflight_client_authenticate_basic_tokenFn = extern(C) gboolean function(GAFlightClient* client, const(char)* user, const(char)* password, GAFlightCallOptions* options, char** bearerName, char** bearerValue, GError** _err) nothrow;
__gshared c_gaflight_client_authenticate_basic_tokenFn c_gaflight_client_authenticate_basic_token; ///
private alias c_gaflight_client_closeFn = extern(C) gboolean function(GAFlightClient* client, GError** _err) nothrow;
__gshared c_gaflight_client_closeFn c_gaflight_client_close; ///
private alias c_gaflight_client_do_getFn = extern(C) GAFlightStreamReader* function(GAFlightClient* client, GAFlightTicket* ticket, GAFlightCallOptions* options, GError** _err) nothrow;
__gshared c_gaflight_client_do_getFn c_gaflight_client_do_get; ///
private alias c_gaflight_client_do_putFn = extern(C) GAFlightDoPutResult* function(GAFlightClient* client, GAFlightDescriptor* descriptor, GArrowSchema* schema, GAFlightCallOptions* options, GError** _err) nothrow;
__gshared c_gaflight_client_do_putFn c_gaflight_client_do_put; ///
private alias c_gaflight_client_get_flight_infoFn = extern(C) GAFlightInfo* function(GAFlightClient* client, GAFlightDescriptor* descriptor, GAFlightCallOptions* options, GError** _err) nothrow;
__gshared c_gaflight_client_get_flight_infoFn c_gaflight_client_get_flight_info; ///
private alias c_gaflight_client_list_flightsFn = extern(C) GList* function(GAFlightClient* client, GAFlightCriteria* criteria, GAFlightCallOptions* options, GError** _err) nothrow;
__gshared c_gaflight_client_list_flightsFn c_gaflight_client_list_flights; ///

// ClientOptions
private alias c_gaflight_client_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_client_options_get_typeFn c_gaflight_client_options_get_type; ///
private alias c_gaflight_client_options_newFn = extern(C) GAFlightClientOptions* function() nothrow;
__gshared c_gaflight_client_options_newFn c_gaflight_client_options_new; ///

// CommandDescriptor
private alias c_gaflight_command_descriptor_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_command_descriptor_get_typeFn c_gaflight_command_descriptor_get_type; ///
private alias c_gaflight_command_descriptor_newFn = extern(C) GAFlightCommandDescriptor* function(const(char)* command) nothrow;
__gshared c_gaflight_command_descriptor_newFn c_gaflight_command_descriptor_new; ///
private alias c_gaflight_command_descriptor_get_commandFn = extern(C) char* function(GAFlightCommandDescriptor* descriptor) nothrow;
__gshared c_gaflight_command_descriptor_get_commandFn c_gaflight_command_descriptor_get_command; ///

// Criteria
private alias c_gaflight_criteria_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_criteria_get_typeFn c_gaflight_criteria_get_type; ///
private alias c_gaflight_criteria_newFn = extern(C) GAFlightCriteria* function(GBytes* expression) nothrow;
__gshared c_gaflight_criteria_newFn c_gaflight_criteria_new; ///

// DataStream
private alias c_gaflight_data_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_data_stream_get_typeFn c_gaflight_data_stream_get_type; ///

// Descriptor
private alias c_gaflight_descriptor_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_descriptor_get_typeFn c_gaflight_descriptor_get_type; ///
private alias c_gaflight_descriptor_equalFn = extern(C) gboolean function(GAFlightDescriptor* descriptor, GAFlightDescriptor* otherDescriptor) nothrow;
__gshared c_gaflight_descriptor_equalFn c_gaflight_descriptor_equal; ///
private alias c_gaflight_descriptor_to_stringFn = extern(C) char* function(GAFlightDescriptor* descriptor) nothrow;
__gshared c_gaflight_descriptor_to_stringFn c_gaflight_descriptor_to_string; ///

// DoPutResult
private alias c_gaflight_do_put_result_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_do_put_result_get_typeFn c_gaflight_do_put_result_get_type; ///

// Endpoint
private alias c_gaflight_endpoint_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_endpoint_get_typeFn c_gaflight_endpoint_get_type; ///
private alias c_gaflight_endpoint_newFn = extern(C) GAFlightEndpoint* function(GAFlightTicket* ticket, GList* locations) nothrow;
__gshared c_gaflight_endpoint_newFn c_gaflight_endpoint_new; ///
private alias c_gaflight_endpoint_equalFn = extern(C) gboolean function(GAFlightEndpoint* endpoint, GAFlightEndpoint* otherEndpoint) nothrow;
__gshared c_gaflight_endpoint_equalFn c_gaflight_endpoint_equal; ///
private alias c_gaflight_endpoint_get_locationsFn = extern(C) GList* function(GAFlightEndpoint* endpoint) nothrow;
__gshared c_gaflight_endpoint_get_locationsFn c_gaflight_endpoint_get_locations; ///

// Info
private alias c_gaflight_info_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_info_get_typeFn c_gaflight_info_get_type; ///
private alias c_gaflight_info_newFn = extern(C) GAFlightInfo* function(GArrowSchema* schema, GAFlightDescriptor* descriptor, GList* endpoints, long totalRecords, long totalBytes, GError** _err) nothrow;
__gshared c_gaflight_info_newFn c_gaflight_info_new; ///
private alias c_gaflight_info_equalFn = extern(C) gboolean function(GAFlightInfo* info, GAFlightInfo* otherInfo) nothrow;
__gshared c_gaflight_info_equalFn c_gaflight_info_equal; ///
private alias c_gaflight_info_get_descriptorFn = extern(C) GAFlightDescriptor* function(GAFlightInfo* info) nothrow;
__gshared c_gaflight_info_get_descriptorFn c_gaflight_info_get_descriptor; ///
private alias c_gaflight_info_get_endpointsFn = extern(C) GList* function(GAFlightInfo* info) nothrow;
__gshared c_gaflight_info_get_endpointsFn c_gaflight_info_get_endpoints; ///
private alias c_gaflight_info_get_schemaFn = extern(C) GArrowSchema* function(GAFlightInfo* info, GArrowReadOptions* options, GError** _err) nothrow;
__gshared c_gaflight_info_get_schemaFn c_gaflight_info_get_schema; ///
private alias c_gaflight_info_get_total_bytesFn = extern(C) long function(GAFlightInfo* info) nothrow;
__gshared c_gaflight_info_get_total_bytesFn c_gaflight_info_get_total_bytes; ///
private alias c_gaflight_info_get_total_recordsFn = extern(C) long function(GAFlightInfo* info) nothrow;
__gshared c_gaflight_info_get_total_recordsFn c_gaflight_info_get_total_records; ///

// Location
private alias c_gaflight_location_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_location_get_typeFn c_gaflight_location_get_type; ///
private alias c_gaflight_location_newFn = extern(C) GAFlightLocation* function(const(char)* uri, GError** _err) nothrow;
__gshared c_gaflight_location_newFn c_gaflight_location_new; ///
private alias c_gaflight_location_equalFn = extern(C) gboolean function(GAFlightLocation* location, GAFlightLocation* otherLocation) nothrow;
__gshared c_gaflight_location_equalFn c_gaflight_location_equal; ///
private alias c_gaflight_location_get_schemeFn = extern(C) char* function(GAFlightLocation* location) nothrow;
__gshared c_gaflight_location_get_schemeFn c_gaflight_location_get_scheme; ///
private alias c_gaflight_location_to_stringFn = extern(C) char* function(GAFlightLocation* location) nothrow;
__gshared c_gaflight_location_to_stringFn c_gaflight_location_to_string; ///

// MessageReader
private alias c_gaflight_message_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_message_reader_get_typeFn c_gaflight_message_reader_get_type; ///
private alias c_gaflight_message_reader_get_descriptorFn = extern(C) GAFlightDescriptor* function(GAFlightMessageReader* reader) nothrow;
__gshared c_gaflight_message_reader_get_descriptorFn c_gaflight_message_reader_get_descriptor; ///

// MetadataReader
private alias c_gaflight_metadata_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_metadata_reader_get_typeFn c_gaflight_metadata_reader_get_type; ///
private alias c_gaflight_metadata_reader_readFn = extern(C) GArrowBuffer* function(GAFlightMetadataReader* reader, GError** _err) nothrow;
__gshared c_gaflight_metadata_reader_readFn c_gaflight_metadata_reader_read; ///

// MetadataWriter
private alias c_gaflight_metadata_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_metadata_writer_get_typeFn c_gaflight_metadata_writer_get_type; ///
private alias c_gaflight_metadata_writer_writeFn = extern(C) gboolean function(GAFlightMetadataWriter* writer, GArrowBuffer* metadata, GError** _err) nothrow;
__gshared c_gaflight_metadata_writer_writeFn c_gaflight_metadata_writer_write; ///

// PathDescriptor
private alias c_gaflight_path_descriptor_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_path_descriptor_get_typeFn c_gaflight_path_descriptor_get_type; ///
private alias c_gaflight_path_descriptor_newFn = extern(C) GAFlightPathDescriptor* function(const(char*)* paths, size_t nPaths) nothrow;
__gshared c_gaflight_path_descriptor_newFn c_gaflight_path_descriptor_new; ///
private alias c_gaflight_path_descriptor_get_pathsFn = extern(C) char** function(GAFlightPathDescriptor* descriptor) nothrow;
__gshared c_gaflight_path_descriptor_get_pathsFn c_gaflight_path_descriptor_get_paths; ///

// RecordBatchReader
private alias c_gaflight_record_batch_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_record_batch_reader_get_typeFn c_gaflight_record_batch_reader_get_type; ///
private alias c_gaflight_record_batch_reader_read_allFn = extern(C) GArrowTable* function(GAFlightRecordBatchReader* reader, GError** _err) nothrow;
__gshared c_gaflight_record_batch_reader_read_allFn c_gaflight_record_batch_reader_read_all; ///
private alias c_gaflight_record_batch_reader_read_nextFn = extern(C) GAFlightStreamChunk* function(GAFlightRecordBatchReader* reader, GError** _err) nothrow;
__gshared c_gaflight_record_batch_reader_read_nextFn c_gaflight_record_batch_reader_read_next; ///

// RecordBatchStream
private alias c_gaflight_record_batch_stream_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_record_batch_stream_get_typeFn c_gaflight_record_batch_stream_get_type; ///
private alias c_gaflight_record_batch_stream_newFn = extern(C) GAFlightRecordBatchStream* function(GArrowRecordBatchReader* reader, GArrowWriteOptions* options) nothrow;
__gshared c_gaflight_record_batch_stream_newFn c_gaflight_record_batch_stream_new; ///

// RecordBatchWriter
private alias c_gaflight_record_batch_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_record_batch_writer_get_typeFn c_gaflight_record_batch_writer_get_type; ///
private alias c_gaflight_record_batch_writer_beginFn = extern(C) gboolean function(GAFlightRecordBatchWriter* writer, GArrowSchema* schema, GArrowWriteOptions* options, GError** _err) nothrow;
__gshared c_gaflight_record_batch_writer_beginFn c_gaflight_record_batch_writer_begin; ///
private alias c_gaflight_record_batch_writer_write_metadataFn = extern(C) gboolean function(GAFlightRecordBatchWriter* writer, GArrowBuffer* metadata, GError** _err) nothrow;
__gshared c_gaflight_record_batch_writer_write_metadataFn c_gaflight_record_batch_writer_write_metadata; ///
private alias c_gaflight_record_batch_writer_write_record_batchFn = extern(C) gboolean function(GAFlightRecordBatchWriter* writer, GArrowRecordBatch* recordBatch, GArrowBuffer* metadata, GError** _err) nothrow;
__gshared c_gaflight_record_batch_writer_write_record_batchFn c_gaflight_record_batch_writer_write_record_batch; ///

// Servable
private alias c_gaflight_servable_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_servable_get_typeFn c_gaflight_servable_get_type; ///

// Server
private alias c_gaflight_server_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_server_get_typeFn c_gaflight_server_get_type; ///
private alias c_gaflight_server_do_getFn = extern(C) GAFlightDataStream* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightTicket* ticket, GError** _err) nothrow;
__gshared c_gaflight_server_do_getFn c_gaflight_server_do_get; ///
private alias c_gaflight_server_do_putFn = extern(C) gboolean function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightMessageReader* reader, GAFlightMetadataWriter* writer, GError** _err) nothrow;
__gshared c_gaflight_server_do_putFn c_gaflight_server_do_put; ///
private alias c_gaflight_server_get_flight_infoFn = extern(C) GAFlightInfo* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightDescriptor* request, GError** _err) nothrow;
__gshared c_gaflight_server_get_flight_infoFn c_gaflight_server_get_flight_info; ///
private alias c_gaflight_server_get_portFn = extern(C) int function(GAFlightServer* server) nothrow;
__gshared c_gaflight_server_get_portFn c_gaflight_server_get_port; ///
private alias c_gaflight_server_list_flightsFn = extern(C) GList* function(GAFlightServer* server, GAFlightServerCallContext* context, GAFlightCriteria* criteria, GError** _err) nothrow;
__gshared c_gaflight_server_list_flightsFn c_gaflight_server_list_flights; ///
private alias c_gaflight_server_listenFn = extern(C) gboolean function(GAFlightServer* server, GAFlightServerOptions* options, GError** _err) nothrow;
__gshared c_gaflight_server_listenFn c_gaflight_server_listen; ///
private alias c_gaflight_server_shutdownFn = extern(C) gboolean function(GAFlightServer* server, GError** _err) nothrow;
__gshared c_gaflight_server_shutdownFn c_gaflight_server_shutdown; ///
private alias c_gaflight_server_waitFn = extern(C) gboolean function(GAFlightServer* server, GError** _err) nothrow;
__gshared c_gaflight_server_waitFn c_gaflight_server_wait; ///

// ServerAuthHandler
private alias c_gaflight_server_auth_handler_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_server_auth_handler_get_typeFn c_gaflight_server_auth_handler_get_type; ///

// ServerAuthReader
private alias c_gaflight_server_auth_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_server_auth_reader_get_typeFn c_gaflight_server_auth_reader_get_type; ///
private alias c_gaflight_server_auth_reader_readFn = extern(C) GBytes* function(GAFlightServerAuthReader* reader, GError** _err) nothrow;
__gshared c_gaflight_server_auth_reader_readFn c_gaflight_server_auth_reader_read; ///

// ServerAuthSender
private alias c_gaflight_server_auth_sender_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_server_auth_sender_get_typeFn c_gaflight_server_auth_sender_get_type; ///
private alias c_gaflight_server_auth_sender_writeFn = extern(C) gboolean function(GAFlightServerAuthSender* sender, GBytes* message, GError** _err) nothrow;
__gshared c_gaflight_server_auth_sender_writeFn c_gaflight_server_auth_sender_write; ///

// ServerCallContext
private alias c_gaflight_server_call_context_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_server_call_context_get_typeFn c_gaflight_server_call_context_get_type; ///
private alias c_gaflight_server_call_context_foreach_incoming_headerFn = extern(C) void function(GAFlightServerCallContext* context, GAFlightHeaderFunc func, void* userData) nothrow;
__gshared c_gaflight_server_call_context_foreach_incoming_headerFn c_gaflight_server_call_context_foreach_incoming_header; ///

// ServerCustomAuthHandler
private alias c_gaflight_server_custom_auth_handler_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_server_custom_auth_handler_get_typeFn c_gaflight_server_custom_auth_handler_get_type; ///
private alias c_gaflight_server_custom_auth_handler_authenticateFn = extern(C) void function(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GAFlightServerAuthSender* sender, GAFlightServerAuthReader* reader, GError** _err) nothrow;
__gshared c_gaflight_server_custom_auth_handler_authenticateFn c_gaflight_server_custom_auth_handler_authenticate; ///
private alias c_gaflight_server_custom_auth_handler_is_validFn = extern(C) GBytes* function(GAFlightServerCustomAuthHandler* handler, GAFlightServerCallContext* context, GBytes* token, GError** _err) nothrow;
__gshared c_gaflight_server_custom_auth_handler_is_validFn c_gaflight_server_custom_auth_handler_is_valid; ///

// ServerOptions
private alias c_gaflight_server_options_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_server_options_get_typeFn c_gaflight_server_options_get_type; ///
private alias c_gaflight_server_options_newFn = extern(C) GAFlightServerOptions* function(GAFlightLocation* location) nothrow;
__gshared c_gaflight_server_options_newFn c_gaflight_server_options_new; ///

// StreamChunk
private alias c_gaflight_stream_chunk_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_stream_chunk_get_typeFn c_gaflight_stream_chunk_get_type; ///
private alias c_gaflight_stream_chunk_get_dataFn = extern(C) GArrowRecordBatch* function(GAFlightStreamChunk* chunk) nothrow;
__gshared c_gaflight_stream_chunk_get_dataFn c_gaflight_stream_chunk_get_data; ///
private alias c_gaflight_stream_chunk_get_metadataFn = extern(C) GArrowBuffer* function(GAFlightStreamChunk* chunk) nothrow;
__gshared c_gaflight_stream_chunk_get_metadataFn c_gaflight_stream_chunk_get_metadata; ///

// StreamReader
private alias c_gaflight_stream_reader_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_stream_reader_get_typeFn c_gaflight_stream_reader_get_type; ///

// StreamWriter
private alias c_gaflight_stream_writer_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_stream_writer_get_typeFn c_gaflight_stream_writer_get_type; ///
private alias c_gaflight_stream_writer_done_writingFn = extern(C) gboolean function(GAFlightStreamWriter* writer, GError** _err) nothrow;
__gshared c_gaflight_stream_writer_done_writingFn c_gaflight_stream_writer_done_writing; ///

// Ticket
private alias c_gaflight_ticket_get_typeFn = extern(C) GType function() nothrow;
__gshared c_gaflight_ticket_get_typeFn c_gaflight_ticket_get_type; ///
private alias c_gaflight_ticket_newFn = extern(C) GAFlightTicket* function(GBytes* data) nothrow;
__gshared c_gaflight_ticket_newFn c_gaflight_ticket_new; ///
private alias c_gaflight_ticket_equalFn = extern(C) gboolean function(GAFlightTicket* ticket, GAFlightTicket* otherTicket) nothrow;
__gshared c_gaflight_ticket_equalFn c_gaflight_ticket_equal; ///

// CallOptions

/** */
alias gaflight_call_options_get_type = c_gaflight_call_options_get_type;

/** */
alias gaflight_call_options_new = c_gaflight_call_options_new;

/** */
alias gaflight_call_options_add_header = c_gaflight_call_options_add_header;

/** */
alias gaflight_call_options_clear_headers = c_gaflight_call_options_clear_headers;

/** */
alias gaflight_call_options_foreach_header = c_gaflight_call_options_foreach_header;

// Client

/** */
alias gaflight_client_get_type = c_gaflight_client_get_type;

/** */
alias gaflight_client_new = c_gaflight_client_new;

/** */
alias gaflight_client_authenticate_basic_token = c_gaflight_client_authenticate_basic_token;

/** */
alias gaflight_client_close = c_gaflight_client_close;

/** */
alias gaflight_client_do_get = c_gaflight_client_do_get;

/** */
alias gaflight_client_do_put = c_gaflight_client_do_put;

/** */
alias gaflight_client_get_flight_info = c_gaflight_client_get_flight_info;

/** */
alias gaflight_client_list_flights = c_gaflight_client_list_flights;

// ClientOptions

/** */
alias gaflight_client_options_get_type = c_gaflight_client_options_get_type;

/** */
alias gaflight_client_options_new = c_gaflight_client_options_new;

// CommandDescriptor

/** */
alias gaflight_command_descriptor_get_type = c_gaflight_command_descriptor_get_type;

/** */
alias gaflight_command_descriptor_new = c_gaflight_command_descriptor_new;

/** */
alias gaflight_command_descriptor_get_command = c_gaflight_command_descriptor_get_command;

// Criteria

/** */
alias gaflight_criteria_get_type = c_gaflight_criteria_get_type;

/** */
alias gaflight_criteria_new = c_gaflight_criteria_new;

// DataStream

/** */
alias gaflight_data_stream_get_type = c_gaflight_data_stream_get_type;

// Descriptor

/** */
alias gaflight_descriptor_get_type = c_gaflight_descriptor_get_type;

/** */
alias gaflight_descriptor_equal = c_gaflight_descriptor_equal;

/** */
alias gaflight_descriptor_to_string = c_gaflight_descriptor_to_string;

// DoPutResult

/** */
alias gaflight_do_put_result_get_type = c_gaflight_do_put_result_get_type;

// Endpoint

/** */
alias gaflight_endpoint_get_type = c_gaflight_endpoint_get_type;

/** */
alias gaflight_endpoint_new = c_gaflight_endpoint_new;

/** */
alias gaflight_endpoint_equal = c_gaflight_endpoint_equal;

/** */
alias gaflight_endpoint_get_locations = c_gaflight_endpoint_get_locations;

// Info

/** */
alias gaflight_info_get_type = c_gaflight_info_get_type;

/** */
alias gaflight_info_new = c_gaflight_info_new;

/** */
alias gaflight_info_equal = c_gaflight_info_equal;

/** */
alias gaflight_info_get_descriptor = c_gaflight_info_get_descriptor;

/** */
alias gaflight_info_get_endpoints = c_gaflight_info_get_endpoints;

/** */
alias gaflight_info_get_schema = c_gaflight_info_get_schema;

/** */
alias gaflight_info_get_total_bytes = c_gaflight_info_get_total_bytes;

/** */
alias gaflight_info_get_total_records = c_gaflight_info_get_total_records;

// Location

/** */
alias gaflight_location_get_type = c_gaflight_location_get_type;

/** */
alias gaflight_location_new = c_gaflight_location_new;

/** */
alias gaflight_location_equal = c_gaflight_location_equal;

/** */
alias gaflight_location_get_scheme = c_gaflight_location_get_scheme;

/** */
alias gaflight_location_to_string = c_gaflight_location_to_string;

// MessageReader

/** */
alias gaflight_message_reader_get_type = c_gaflight_message_reader_get_type;

/** */
alias gaflight_message_reader_get_descriptor = c_gaflight_message_reader_get_descriptor;

// MetadataReader

/** */
alias gaflight_metadata_reader_get_type = c_gaflight_metadata_reader_get_type;

/** */
alias gaflight_metadata_reader_read = c_gaflight_metadata_reader_read;

// MetadataWriter

/** */
alias gaflight_metadata_writer_get_type = c_gaflight_metadata_writer_get_type;

/** */
alias gaflight_metadata_writer_write = c_gaflight_metadata_writer_write;

// PathDescriptor

/** */
alias gaflight_path_descriptor_get_type = c_gaflight_path_descriptor_get_type;

/** */
alias gaflight_path_descriptor_new = c_gaflight_path_descriptor_new;

/** */
alias gaflight_path_descriptor_get_paths = c_gaflight_path_descriptor_get_paths;

// RecordBatchReader

/** */
alias gaflight_record_batch_reader_get_type = c_gaflight_record_batch_reader_get_type;

/** */
alias gaflight_record_batch_reader_read_all = c_gaflight_record_batch_reader_read_all;

/** */
alias gaflight_record_batch_reader_read_next = c_gaflight_record_batch_reader_read_next;

// RecordBatchStream

/** */
alias gaflight_record_batch_stream_get_type = c_gaflight_record_batch_stream_get_type;

/** */
alias gaflight_record_batch_stream_new = c_gaflight_record_batch_stream_new;

// RecordBatchWriter

/** */
alias gaflight_record_batch_writer_get_type = c_gaflight_record_batch_writer_get_type;

/** */
alias gaflight_record_batch_writer_begin = c_gaflight_record_batch_writer_begin;

/** */
alias gaflight_record_batch_writer_write_metadata = c_gaflight_record_batch_writer_write_metadata;

/** */
alias gaflight_record_batch_writer_write_record_batch = c_gaflight_record_batch_writer_write_record_batch;

// Servable

/** */
alias gaflight_servable_get_type = c_gaflight_servable_get_type;

// Server

/** */
alias gaflight_server_get_type = c_gaflight_server_get_type;

/** */
alias gaflight_server_do_get = c_gaflight_server_do_get;

/** */
alias gaflight_server_do_put = c_gaflight_server_do_put;

/** */
alias gaflight_server_get_flight_info = c_gaflight_server_get_flight_info;

/** */
alias gaflight_server_get_port = c_gaflight_server_get_port;

/** */
alias gaflight_server_list_flights = c_gaflight_server_list_flights;

/** */
alias gaflight_server_listen = c_gaflight_server_listen;

/** */
alias gaflight_server_shutdown = c_gaflight_server_shutdown;

/** */
alias gaflight_server_wait = c_gaflight_server_wait;

// ServerAuthHandler

/** */
alias gaflight_server_auth_handler_get_type = c_gaflight_server_auth_handler_get_type;

// ServerAuthReader

/** */
alias gaflight_server_auth_reader_get_type = c_gaflight_server_auth_reader_get_type;

/** */
alias gaflight_server_auth_reader_read = c_gaflight_server_auth_reader_read;

// ServerAuthSender

/** */
alias gaflight_server_auth_sender_get_type = c_gaflight_server_auth_sender_get_type;

/** */
alias gaflight_server_auth_sender_write = c_gaflight_server_auth_sender_write;

// ServerCallContext

/** */
alias gaflight_server_call_context_get_type = c_gaflight_server_call_context_get_type;

/** */
alias gaflight_server_call_context_foreach_incoming_header = c_gaflight_server_call_context_foreach_incoming_header;

// ServerCustomAuthHandler

/** */
alias gaflight_server_custom_auth_handler_get_type = c_gaflight_server_custom_auth_handler_get_type;

/** */
alias gaflight_server_custom_auth_handler_authenticate = c_gaflight_server_custom_auth_handler_authenticate;

/** */
alias gaflight_server_custom_auth_handler_is_valid = c_gaflight_server_custom_auth_handler_is_valid;

// ServerOptions

/** */
alias gaflight_server_options_get_type = c_gaflight_server_options_get_type;

/** */
alias gaflight_server_options_new = c_gaflight_server_options_new;

// StreamChunk

/** */
alias gaflight_stream_chunk_get_type = c_gaflight_stream_chunk_get_type;

/** */
alias gaflight_stream_chunk_get_data = c_gaflight_stream_chunk_get_data;

/** */
alias gaflight_stream_chunk_get_metadata = c_gaflight_stream_chunk_get_metadata;

// StreamReader

/** */
alias gaflight_stream_reader_get_type = c_gaflight_stream_reader_get_type;

// StreamWriter

/** */
alias gaflight_stream_writer_get_type = c_gaflight_stream_writer_get_type;

/** */
alias gaflight_stream_writer_done_writing = c_gaflight_stream_writer_done_writing;

// Ticket

/** */
alias gaflight_ticket_get_type = c_gaflight_ticket_get_type;

/** */
alias gaflight_ticket_new = c_gaflight_ticket_new;

/** */
alias gaflight_ticket_equal = c_gaflight_ticket_equal;

shared static this()
{
  auto libs = gidResolveLibs(LIBS, "gid_apache.arrowflight22", "ArrowFlight");

  // CallOptions
  gidLink(cast(void**)&gaflight_call_options_get_type, "gaflight_call_options_get_type", libs);
  gidLink(cast(void**)&gaflight_call_options_new, "gaflight_call_options_new", libs);
  gidLink(cast(void**)&gaflight_call_options_add_header, "gaflight_call_options_add_header", libs);
  gidLink(cast(void**)&gaflight_call_options_clear_headers, "gaflight_call_options_clear_headers", libs);
  gidLink(cast(void**)&gaflight_call_options_foreach_header, "gaflight_call_options_foreach_header", libs);

  // Client
  gidLink(cast(void**)&gaflight_client_get_type, "gaflight_client_get_type", libs);
  gidLink(cast(void**)&gaflight_client_new, "gaflight_client_new", libs);
  gidLink(cast(void**)&gaflight_client_authenticate_basic_token, "gaflight_client_authenticate_basic_token", libs);
  gidLink(cast(void**)&gaflight_client_close, "gaflight_client_close", libs);
  gidLink(cast(void**)&gaflight_client_do_get, "gaflight_client_do_get", libs);
  gidLink(cast(void**)&gaflight_client_do_put, "gaflight_client_do_put", libs);
  gidLink(cast(void**)&gaflight_client_get_flight_info, "gaflight_client_get_flight_info", libs);
  gidLink(cast(void**)&gaflight_client_list_flights, "gaflight_client_list_flights", libs);

  // ClientOptions
  gidLink(cast(void**)&gaflight_client_options_get_type, "gaflight_client_options_get_type", libs);
  gidLink(cast(void**)&gaflight_client_options_new, "gaflight_client_options_new", libs);

  // CommandDescriptor
  gidLink(cast(void**)&gaflight_command_descriptor_get_type, "gaflight_command_descriptor_get_type", libs);
  gidLink(cast(void**)&gaflight_command_descriptor_new, "gaflight_command_descriptor_new", libs);
  gidLink(cast(void**)&gaflight_command_descriptor_get_command, "gaflight_command_descriptor_get_command", libs);

  // Criteria
  gidLink(cast(void**)&gaflight_criteria_get_type, "gaflight_criteria_get_type", libs);
  gidLink(cast(void**)&gaflight_criteria_new, "gaflight_criteria_new", libs);

  // DataStream
  gidLink(cast(void**)&gaflight_data_stream_get_type, "gaflight_data_stream_get_type", libs);

  // Descriptor
  gidLink(cast(void**)&gaflight_descriptor_get_type, "gaflight_descriptor_get_type", libs);
  gidLink(cast(void**)&gaflight_descriptor_equal, "gaflight_descriptor_equal", libs);
  gidLink(cast(void**)&gaflight_descriptor_to_string, "gaflight_descriptor_to_string", libs);

  // DoPutResult
  gidLink(cast(void**)&gaflight_do_put_result_get_type, "gaflight_do_put_result_get_type", libs);

  // Endpoint
  gidLink(cast(void**)&gaflight_endpoint_get_type, "gaflight_endpoint_get_type", libs);
  gidLink(cast(void**)&gaflight_endpoint_new, "gaflight_endpoint_new", libs);
  gidLink(cast(void**)&gaflight_endpoint_equal, "gaflight_endpoint_equal", libs);
  gidLink(cast(void**)&gaflight_endpoint_get_locations, "gaflight_endpoint_get_locations", libs);

  // Info
  gidLink(cast(void**)&gaflight_info_get_type, "gaflight_info_get_type", libs);
  gidLink(cast(void**)&gaflight_info_new, "gaflight_info_new", libs);
  gidLink(cast(void**)&gaflight_info_equal, "gaflight_info_equal", libs);
  gidLink(cast(void**)&gaflight_info_get_descriptor, "gaflight_info_get_descriptor", libs);
  gidLink(cast(void**)&gaflight_info_get_endpoints, "gaflight_info_get_endpoints", libs);
  gidLink(cast(void**)&gaflight_info_get_schema, "gaflight_info_get_schema", libs);
  gidLink(cast(void**)&gaflight_info_get_total_bytes, "gaflight_info_get_total_bytes", libs);
  gidLink(cast(void**)&gaflight_info_get_total_records, "gaflight_info_get_total_records", libs);

  // Location
  gidLink(cast(void**)&gaflight_location_get_type, "gaflight_location_get_type", libs);
  gidLink(cast(void**)&gaflight_location_new, "gaflight_location_new", libs);
  gidLink(cast(void**)&gaflight_location_equal, "gaflight_location_equal", libs);
  gidLink(cast(void**)&gaflight_location_get_scheme, "gaflight_location_get_scheme", libs);
  gidLink(cast(void**)&gaflight_location_to_string, "gaflight_location_to_string", libs);

  // MessageReader
  gidLink(cast(void**)&gaflight_message_reader_get_type, "gaflight_message_reader_get_type", libs);
  gidLink(cast(void**)&gaflight_message_reader_get_descriptor, "gaflight_message_reader_get_descriptor", libs);

  // MetadataReader
  gidLink(cast(void**)&gaflight_metadata_reader_get_type, "gaflight_metadata_reader_get_type", libs);
  gidLink(cast(void**)&gaflight_metadata_reader_read, "gaflight_metadata_reader_read", libs);

  // MetadataWriter
  gidLink(cast(void**)&gaflight_metadata_writer_get_type, "gaflight_metadata_writer_get_type", libs);
  gidLink(cast(void**)&gaflight_metadata_writer_write, "gaflight_metadata_writer_write", libs);

  // PathDescriptor
  gidLink(cast(void**)&gaflight_path_descriptor_get_type, "gaflight_path_descriptor_get_type", libs);
  gidLink(cast(void**)&gaflight_path_descriptor_new, "gaflight_path_descriptor_new", libs);
  gidLink(cast(void**)&gaflight_path_descriptor_get_paths, "gaflight_path_descriptor_get_paths", libs);

  // RecordBatchReader
  gidLink(cast(void**)&gaflight_record_batch_reader_get_type, "gaflight_record_batch_reader_get_type", libs);
  gidLink(cast(void**)&gaflight_record_batch_reader_read_all, "gaflight_record_batch_reader_read_all", libs);
  gidLink(cast(void**)&gaflight_record_batch_reader_read_next, "gaflight_record_batch_reader_read_next", libs);

  // RecordBatchStream
  gidLink(cast(void**)&gaflight_record_batch_stream_get_type, "gaflight_record_batch_stream_get_type", libs);
  gidLink(cast(void**)&gaflight_record_batch_stream_new, "gaflight_record_batch_stream_new", libs);

  // RecordBatchWriter
  gidLink(cast(void**)&gaflight_record_batch_writer_get_type, "gaflight_record_batch_writer_get_type", libs);
  gidLink(cast(void**)&gaflight_record_batch_writer_begin, "gaflight_record_batch_writer_begin", libs);
  gidLink(cast(void**)&gaflight_record_batch_writer_write_metadata, "gaflight_record_batch_writer_write_metadata", libs);
  gidLink(cast(void**)&gaflight_record_batch_writer_write_record_batch, "gaflight_record_batch_writer_write_record_batch", libs);

  // Servable
  gidLink(cast(void**)&gaflight_servable_get_type, "gaflight_servable_get_type", libs);

  // Server
  gidLink(cast(void**)&gaflight_server_get_type, "gaflight_server_get_type", libs);
  gidLink(cast(void**)&gaflight_server_do_get, "gaflight_server_do_get", libs);
  gidLink(cast(void**)&gaflight_server_do_put, "gaflight_server_do_put", libs);
  gidLink(cast(void**)&gaflight_server_get_flight_info, "gaflight_server_get_flight_info", libs);
  gidLink(cast(void**)&gaflight_server_get_port, "gaflight_server_get_port", libs);
  gidLink(cast(void**)&gaflight_server_list_flights, "gaflight_server_list_flights", libs);
  gidLink(cast(void**)&gaflight_server_listen, "gaflight_server_listen", libs);
  gidLink(cast(void**)&gaflight_server_shutdown, "gaflight_server_shutdown", libs);
  gidLink(cast(void**)&gaflight_server_wait, "gaflight_server_wait", libs);

  // ServerAuthHandler
  gidLink(cast(void**)&gaflight_server_auth_handler_get_type, "gaflight_server_auth_handler_get_type", libs);

  // ServerAuthReader
  gidLink(cast(void**)&gaflight_server_auth_reader_get_type, "gaflight_server_auth_reader_get_type", libs);
  gidLink(cast(void**)&gaflight_server_auth_reader_read, "gaflight_server_auth_reader_read", libs);

  // ServerAuthSender
  gidLink(cast(void**)&gaflight_server_auth_sender_get_type, "gaflight_server_auth_sender_get_type", libs);
  gidLink(cast(void**)&gaflight_server_auth_sender_write, "gaflight_server_auth_sender_write", libs);

  // ServerCallContext
  gidLink(cast(void**)&gaflight_server_call_context_get_type, "gaflight_server_call_context_get_type", libs);
  gidLink(cast(void**)&gaflight_server_call_context_foreach_incoming_header, "gaflight_server_call_context_foreach_incoming_header", libs);

  // ServerCustomAuthHandler
  gidLink(cast(void**)&gaflight_server_custom_auth_handler_get_type, "gaflight_server_custom_auth_handler_get_type", libs);
  gidLink(cast(void**)&gaflight_server_custom_auth_handler_authenticate, "gaflight_server_custom_auth_handler_authenticate", libs);
  gidLink(cast(void**)&gaflight_server_custom_auth_handler_is_valid, "gaflight_server_custom_auth_handler_is_valid", libs);

  // ServerOptions
  gidLink(cast(void**)&gaflight_server_options_get_type, "gaflight_server_options_get_type", libs);
  gidLink(cast(void**)&gaflight_server_options_new, "gaflight_server_options_new", libs);

  // StreamChunk
  gidLink(cast(void**)&gaflight_stream_chunk_get_type, "gaflight_stream_chunk_get_type", libs);
  gidLink(cast(void**)&gaflight_stream_chunk_get_data, "gaflight_stream_chunk_get_data", libs);
  gidLink(cast(void**)&gaflight_stream_chunk_get_metadata, "gaflight_stream_chunk_get_metadata", libs);

  // StreamReader
  gidLink(cast(void**)&gaflight_stream_reader_get_type, "gaflight_stream_reader_get_type", libs);

  // StreamWriter
  gidLink(cast(void**)&gaflight_stream_writer_get_type, "gaflight_stream_writer_get_type", libs);
  gidLink(cast(void**)&gaflight_stream_writer_done_writing, "gaflight_stream_writer_done_writing", libs);

  // Ticket
  gidLink(cast(void**)&gaflight_ticket_get_type, "gaflight_ticket_get_type", libs);
  gidLink(cast(void**)&gaflight_ticket_new, "gaflight_ticket_new", libs);
  gidLink(cast(void**)&gaflight_ticket_equal, "gaflight_ticket_equal", libs);
}
