/// Module for [Server] class
module gid_apache.arrowflight23.server;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight23.c.functions;
import gid_apache.arrowflight23.c.types;
import gid_apache.arrowflight23.criteria;
import gid_apache.arrowflight23.data_stream;
import gid_apache.arrowflight23.descriptor;
import gid_apache.arrowflight23.info;
import gid_apache.arrowflight23.message_reader;
import gid_apache.arrowflight23.metadata_writer;
import gid_apache.arrowflight23.servable;
import gid_apache.arrowflight23.servable_mixin;
import gid_apache.arrowflight23.server_call_context;
import gid_apache.arrowflight23.server_options;
import gid_apache.arrowflight23.ticket;
import gid_apache.arrowflight23.types;

/** */
class Server : gid.gobject2.object.ObjectWrap, gid_apache.arrowflight23.servable.Servable
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
    return cast(void function())gaflight_server_get_type != &gidSymbolNotFound ? gaflight_server_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightServer";
  }

  /** Returns `this`, for use in `with` statements. */
  override Server self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight23.server.Server]
      Returns: New builder object
  */
  static ServerGidBuilder builder() nothrow
  {
    return new ServerGidBuilder;
  }

  mixin ServableT!();

  /** */
  gid_apache.arrowflight23.data_stream.DataStream doGet(gid_apache.arrowflight23.server_call_context.ServerCallContext context, gid_apache.arrowflight23.ticket.Ticket ticket)
  {
    GAFlightDataStream* _cretval;
    GError *_err;
    _cretval = gaflight_server_do_get(cast(GAFlightServer*)this._cPtr, context ? cast(GAFlightServerCallContext*)context._cPtr(No.Dup) : null, ticket ? cast(GAFlightTicket*)ticket._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowflight23.data_stream.DataStream)(cast(GAFlightDataStream*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Processes a stream of IPC payloads sent from a client.
  
      Params:
        context = A #GAFlightServerCallContext.
        reader = A #GAFlightMessageReader.
        writer = A #GAFlightMetadataWriter.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool doPut(gid_apache.arrowflight23.server_call_context.ServerCallContext context, gid_apache.arrowflight23.message_reader.MessageReader reader, gid_apache.arrowflight23.metadata_writer.MetadataWriter writer)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_server_do_put(cast(GAFlightServer*)this._cPtr, context ? cast(GAFlightServerCallContext*)context._cPtr(No.Dup) : null, reader ? cast(GAFlightMessageReader*)reader._cPtr(No.Dup) : null, writer ? cast(GAFlightMetadataWriter*)writer._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrowflight23.info.Info getFlightInfo(gid_apache.arrowflight23.server_call_context.ServerCallContext context, gid_apache.arrowflight23.descriptor.Descriptor request)
  {
    GAFlightInfo* _cretval;
    GError *_err;
    _cretval = gaflight_server_get_flight_info(cast(GAFlightServer*)this._cPtr, context ? cast(GAFlightServerCallContext*)context._cPtr(No.Dup) : null, request ? cast(GAFlightDescriptor*)request._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowflight23.info.Info)(cast(GAFlightInfo*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getPort() nothrow
  {
    int _retval;
    _retval = gaflight_server_get_port(cast(GAFlightServer*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrowflight23.info.Info[] listFlights(gid_apache.arrowflight23.server_call_context.ServerCallContext context, gid_apache.arrowflight23.criteria.Criteria criteria = null)
  {
    GList* _cretval;
    GError *_err;
    _cretval = gaflight_server_list_flights(cast(GAFlightServer*)this._cPtr, context ? cast(GAFlightServerCallContext*)context._cPtr(No.Dup) : null, criteria ? cast(GAFlightCriteria*)criteria._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gListToD!(gid_apache.arrowflight23.info.Info, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  bool listen(gid_apache.arrowflight23.server_options.ServerOptions options)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_server_listen(cast(GAFlightServer*)this._cPtr, options ? cast(GAFlightServerOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Shuts down the serve. This function can be called from signal
      handler or another thread.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool shutdown()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_server_shutdown(cast(GAFlightServer*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool wait()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_server_wait(cast(GAFlightServer*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight23.server.Server]
class ServerGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T, gid_apache.arrowflight23.servable.ServableGidBuilderImpl!T
{

  mixin ServableGidBuilderT!();
}

/// Fluent builder for [gid_apache.arrowflight23.server.Server]
final class ServerGidBuilder : ServerGidBuilderImpl!ServerGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Server build() nothrow
  {
    return new Server(cast(void*)createGObject(Server._getGType), Yes.Take);
  }
}
