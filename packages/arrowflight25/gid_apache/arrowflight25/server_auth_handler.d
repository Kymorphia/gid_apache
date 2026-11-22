/// Module for [ServerAuthHandler] class
module gid_apache.arrowflight25.server_auth_handler;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight25.c.functions;
import gid_apache.arrowflight25.c.types;
import gid_apache.arrowflight25.types;

/** */
class ServerAuthHandler : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_server_auth_handler_get_type != &gidSymbolNotFound ? gaflight_server_auth_handler_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightServerAuthHandler";
  }

  /** Returns `this`, for use in `with` statements. */
  override ServerAuthHandler self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight25.server_auth_handler.ServerAuthHandler]
      Returns: New builder object
  */
  static ServerAuthHandlerGidBuilder builder() nothrow
  {
    return new ServerAuthHandlerGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight25.server_auth_handler.ServerAuthHandler]
class ServerAuthHandlerGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T handler(void* propval) nothrow
  {
    return setProperty("handler", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight25.server_auth_handler.ServerAuthHandler]
final class ServerAuthHandlerGidBuilder : ServerAuthHandlerGidBuilderImpl!ServerAuthHandlerGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ServerAuthHandler build() nothrow
  {
    return new ServerAuthHandler(cast(void*)createGObject(ServerAuthHandler._getGType), Yes.Take);
  }
}
