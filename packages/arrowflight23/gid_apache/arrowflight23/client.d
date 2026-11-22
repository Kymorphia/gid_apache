/// Module for [Client] class
module gid_apache.arrowflight23.client;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.schema;
import gid_apache.arrowflight23.c.functions;
import gid_apache.arrowflight23.c.types;
import gid_apache.arrowflight23.call_options;
import gid_apache.arrowflight23.client_options;
import gid_apache.arrowflight23.criteria;
import gid_apache.arrowflight23.descriptor;
import gid_apache.arrowflight23.do_put_result;
import gid_apache.arrowflight23.info;
import gid_apache.arrowflight23.location;
import gid_apache.arrowflight23.stream_reader;
import gid_apache.arrowflight23.ticket;
import gid_apache.arrowflight23.types;

/** */
class Client : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_client_get_type != &gidSymbolNotFound ? gaflight_client_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightClient";
  }

  /** Returns `this`, for use in `with` statements. */
  override Client self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight23.client.Client]
      Returns: New builder object
  */
  static ClientGidBuilder builder() nothrow
  {
    return new ClientGidBuilder;
  }

  /** */
  this(gid_apache.arrowflight23.location.Location location, gid_apache.arrowflight23.client_options.ClientOptions options = null)
  {
    GAFlightClient* _cretval;
    GError *_err;
    _cretval = gaflight_client_new(location ? cast(GAFlightLocation*)location._cPtr(No.Dup) : null, options ? cast(GAFlightClientOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /**
      Authenticates to the server using basic HTTP style authentication.
  
      Params:
        user = User name to be used.
        password = Password to be used.
        options = A #GAFlightCallOptions.
        bearerName = Bearer token name on success.
        bearerValue = Bearer token value on success.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool authenticateBasicToken(string user, string password, gid_apache.arrowflight23.call_options.CallOptions options, out string bearerName, out string bearerValue)
  {
    bool _retval;
    const(char)* _user = user.toCString!(No.Malloc, No.Nullable);
    const(char)* _password = password.toCString!(No.Malloc, No.Nullable);
    char* _bearerName;
    char* _bearerValue;
    GError *_err;
    _retval = cast(bool)gaflight_client_authenticate_basic_token(cast(GAFlightClient*)this._cPtr, _user, _password, options ? cast(GAFlightCallOptions*)options._cPtr(No.Dup) : null, &_bearerName, &_bearerValue, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    bearerName = _bearerName.fromCString!(Yes.Free);
    bearerValue = _bearerValue.fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  bool close()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_client_close(cast(GAFlightClient*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrowflight23.stream_reader.StreamReader doGet(gid_apache.arrowflight23.ticket.Ticket ticket, gid_apache.arrowflight23.call_options.CallOptions options = null)
  {
    GAFlightStreamReader* _cretval;
    GError *_err;
    _cretval = gaflight_client_do_get(cast(GAFlightClient*)this._cPtr, ticket ? cast(GAFlightTicket*)ticket._cPtr(No.Dup) : null, options ? cast(GAFlightCallOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowflight23.stream_reader.StreamReader)(cast(GAFlightStreamReader*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Upload data to a Flight described by the given descriptor. The
      caller must call [gid_apache.arrow26.record_batch_writer.RecordBatchWriter.close] on the
      returned stream once they are done writing.
      
      The reader and writer are linked; closing the writer will also
      close the reader. Use garrow_flight_stream_writer_done_writing() to
      only close the write side of the channel.
  
      Params:
        descriptor = A #GAFlightDescriptor.
        schema = A #GArrowSchema.
        options = A #GAFlightCallOptions.
      Returns: The #GAFlighDoPutResult holding a reader and a writer on success,
          null on error.
      Throws: [ErrorWrap]
  */
  gid_apache.arrowflight23.do_put_result.DoPutResult doPut(gid_apache.arrowflight23.descriptor.Descriptor descriptor, gid_apache.arrow23.schema.Schema schema, gid_apache.arrowflight23.call_options.CallOptions options = null)
  {
    GAFlightDoPutResult* _cretval;
    GError *_err;
    _cretval = gaflight_client_do_put(cast(GAFlightClient*)this._cPtr, descriptor ? cast(GAFlightDescriptor*)descriptor._cPtr(No.Dup) : null, schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, options ? cast(GAFlightCallOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowflight23.do_put_result.DoPutResult)(cast(GAFlightDoPutResult*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrowflight23.info.Info getFlightInfo(gid_apache.arrowflight23.descriptor.Descriptor descriptor, gid_apache.arrowflight23.call_options.CallOptions options = null)
  {
    GAFlightInfo* _cretval;
    GError *_err;
    _cretval = gaflight_client_get_flight_info(cast(GAFlightClient*)this._cPtr, descriptor ? cast(GAFlightDescriptor*)descriptor._cPtr(No.Dup) : null, options ? cast(GAFlightCallOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowflight23.info.Info)(cast(GAFlightInfo*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrowflight23.info.Info[] listFlights(gid_apache.arrowflight23.criteria.Criteria criteria = null, gid_apache.arrowflight23.call_options.CallOptions options = null)
  {
    GList* _cretval;
    GError *_err;
    _cretval = gaflight_client_list_flights(cast(GAFlightClient*)this._cPtr, criteria ? cast(GAFlightCriteria*)criteria._cPtr(No.Dup) : null, options ? cast(GAFlightCallOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gListToD!(gid_apache.arrowflight23.info.Info, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight23.client.Client]
class ClientGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T client(void* propval) nothrow
  {
    return setProperty("client", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight23.client.Client]
final class ClientGidBuilder : ClientGidBuilderImpl!ClientGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Client build() nothrow
  {
    return new Client(cast(void*)createGObject(Client._getGType), Yes.Take);
  }
}
