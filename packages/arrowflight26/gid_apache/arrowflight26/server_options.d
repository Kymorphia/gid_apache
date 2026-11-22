/// Module for [ServerOptions] class
module gid_apache.arrowflight26.server_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight26.c.functions;
import gid_apache.arrowflight26.c.types;
import gid_apache.arrowflight26.location;
import gid_apache.arrowflight26.server_auth_handler;
import gid_apache.arrowflight26.types;

/** */
class ServerOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_server_options_get_type != &gidSymbolNotFound ? gaflight_server_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightServerOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ServerOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight26.server_options.ServerOptions]
      Returns: New builder object
  */
  static ServerOptionsGidBuilder builder() nothrow
  {
    return new ServerOptionsGidBuilder;
  }

  /**
      Get `authHandler` property.
      Returns: The authentication handler.
  */
  @property gid_apache.arrowflight26.server_auth_handler.ServerAuthHandler authHandler() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowflight26.server_auth_handler.ServerAuthHandler)("auth-handler");
  }

  /**
      Set `authHandler` property.
      Params:
        propval = The authentication handler.
  */
  @property void authHandler(gid_apache.arrowflight26.server_auth_handler.ServerAuthHandler propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrowflight26.server_auth_handler.ServerAuthHandler)("auth-handler", propval);
  }

  /**
      Get `location` property.
      Returns: The location to be listened.
  */
  @property gid_apache.arrowflight26.location.Location location() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowflight26.location.Location)("location");
  }

  /** */
  this(gid_apache.arrowflight26.location.Location location) nothrow
  {
    GAFlightServerOptions* _cretval;
    _cretval = gaflight_server_options_new(location ? cast(GAFlightLocation*)location._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight26.server_options.ServerOptions]
class ServerOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `authHandler` property.
      Params:
        propval = The authentication handler.
      Returns: Builder instance for fluent chaining
  */
  T authHandler(gid_apache.arrowflight26.server_auth_handler.ServerAuthHandler propval) nothrow
  {
    return setProperty("auth-handler", propval);
  }

  /**
      Set `location` property.
      Params:
        propval = The location to be listened.
      Returns: Builder instance for fluent chaining
  */
  T location(gid_apache.arrowflight26.location.Location propval) nothrow
  {
    return setProperty("location", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight26.server_options.ServerOptions]
final class ServerOptionsGidBuilder : ServerOptionsGidBuilderImpl!ServerOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ServerOptions build() nothrow
  {
    return new ServerOptions(cast(void*)createGObject(ServerOptions._getGType), Yes.Take);
  }
}
