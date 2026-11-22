/// Module for [ServerAuthSender] class
module gid_apache.arrowflight25.server_auth_sender;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight25.c.functions;
import gid_apache.arrowflight25.c.types;
import gid_apache.arrowflight25.types;

/** */
class ServerAuthSender : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_server_auth_sender_get_type != &gidSymbolNotFound ? gaflight_server_auth_sender_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightServerAuthSender";
  }

  /** Returns `this`, for use in `with` statements. */
  override ServerAuthSender self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight25.server_auth_sender.ServerAuthSender]
      Returns: New builder object
  */
  static ServerAuthSenderGidBuilder builder() nothrow
  {
    return new ServerAuthSenderGidBuilder;
  }

  /**
      Writes a message to the client.
  
      Params:
        message = A #GBytes to be sent.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool write(gid.glib2.bytes.Bytes message)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_server_auth_sender_write(cast(GAFlightServerAuthSender*)this._cPtr, message ? cast(GBytes*)message._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight25.server_auth_sender.ServerAuthSender]
class ServerAuthSenderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T sender(void* propval) nothrow
  {
    return setProperty("sender", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight25.server_auth_sender.ServerAuthSender]
final class ServerAuthSenderGidBuilder : ServerAuthSenderGidBuilderImpl!ServerAuthSenderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ServerAuthSender build() nothrow
  {
    return new ServerAuthSender(cast(void*)createGObject(ServerAuthSender._getGType), Yes.Take);
  }
}
