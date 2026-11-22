/// Module for [ServerCustomAuthHandler] class
module gid_apache.arrowflight19.server_custom_auth_handler;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrowflight19.c.functions;
import gid_apache.arrowflight19.c.types;
import gid_apache.arrowflight19.server_auth_handler;
import gid_apache.arrowflight19.server_auth_reader;
import gid_apache.arrowflight19.server_auth_sender;
import gid_apache.arrowflight19.server_call_context;
import gid_apache.arrowflight19.types;

/** */
class ServerCustomAuthHandler : gid_apache.arrowflight19.server_auth_handler.ServerAuthHandler
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
    return cast(void function())gaflight_server_custom_auth_handler_get_type != &gidSymbolNotFound ? gaflight_server_custom_auth_handler_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightServerCustomAuthHandler";
  }

  /** Returns `this`, for use in `with` statements. */
  override ServerCustomAuthHandler self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight19.server_custom_auth_handler.ServerCustomAuthHandler]
      Returns: New builder object
  */
  static ServerCustomAuthHandlerGidBuilder builder() nothrow
  {
    return new ServerCustomAuthHandlerGidBuilder;
  }

  /**
      Authenticates the client on initial connection. The server can send
      and read responses from the client at any time.
  
      Params:
        context = A #GAFlightServerCallContext.
        sender = A #GAFlightServerAuthSender.
        reader = A #GAFlightServerAuthReader.
      Throws: [ErrorWrap]
  */
  void authenticate(gid_apache.arrowflight19.server_call_context.ServerCallContext context, gid_apache.arrowflight19.server_auth_sender.ServerAuthSender sender, gid_apache.arrowflight19.server_auth_reader.ServerAuthReader reader)
  {
    GError *_err;
    gaflight_server_custom_auth_handler_authenticate(cast(GAFlightServerCustomAuthHandler*)this._cPtr, context ? cast(GAFlightServerCallContext*)context._cPtr(No.Dup) : null, sender ? cast(GAFlightServerAuthSender*)sender._cPtr(No.Dup) : null, reader ? cast(GAFlightServerAuthReader*)reader._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
  }

  /**
      Validates a per-call client token.
  
      Params:
        context = A #GAFlightServerCallContext.
        token = The client token. May be the empty string if the client does not
            provide a token.
      Returns: The identity of the peer, if
          this authentication method supports it.
      Throws: [ErrorWrap]
  */
  gid.glib2.bytes.Bytes isValid(gid_apache.arrowflight19.server_call_context.ServerCallContext context, gid.glib2.bytes.Bytes token)
  {
    GBytes* _cretval;
    GError *_err;
    _cretval = gaflight_server_custom_auth_handler_is_valid(cast(GAFlightServerCustomAuthHandler*)this._cPtr, context ? cast(GAFlightServerCallContext*)context._cPtr(No.Dup) : null, token ? cast(GBytes*)token._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight19.server_custom_auth_handler.ServerCustomAuthHandler]
class ServerCustomAuthHandlerGidBuilderImpl(T) : gid_apache.arrowflight19.server_auth_handler.ServerAuthHandlerGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight19.server_custom_auth_handler.ServerCustomAuthHandler]
final class ServerCustomAuthHandlerGidBuilder : ServerCustomAuthHandlerGidBuilderImpl!ServerCustomAuthHandlerGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ServerCustomAuthHandler build() nothrow
  {
    return new ServerCustomAuthHandler(cast(void*)createGObject(ServerCustomAuthHandler._getGType), Yes.Take);
  }
}
