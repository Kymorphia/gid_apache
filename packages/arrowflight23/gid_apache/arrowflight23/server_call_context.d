/// Module for [ServerCallContext] class
module gid_apache.arrowflight23.server_call_context;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight23.c.functions;
import gid_apache.arrowflight23.c.types;
import gid_apache.arrowflight23.types;

/** */
class ServerCallContext : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_server_call_context_get_type != &gidSymbolNotFound ? gaflight_server_call_context_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightServerCallContext";
  }

  /** Returns `this`, for use in `with` statements. */
  override ServerCallContext self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight23.server_call_context.ServerCallContext]
      Returns: New builder object
  */
  static ServerCallContextGidBuilder builder() nothrow
  {
    return new ServerCallContextGidBuilder;
  }

  /**
      Iterates over all incoming headers.
  
      Params:
        func = The user's callback function.
  */
  void foreachIncomingHeader(gid_apache.arrowflight23.types.HeaderFunc func) nothrow
  {
    extern(C) void _funcCallback(const(char)* name, const(char)* value, void* userData) nothrow
    {
      auto _dlg = cast(gid_apache.arrowflight23.types.HeaderFunc*)userData;
      string _name = name.fromCString!(No.Free);
      string _value = value.fromCString!(No.Free);

      try
      {
        (*_dlg)(_name, _value);
      }
      catch (Exception e)
      {
        gidInvokeCallbackExceptionHandler(e, "gid_apache.arrowflight23.types.HeaderFunc");
      }
    }
    auto _funcCB = func ? &_funcCallback : null;
    auto _func = func ? cast(void*)&(func) : null;
    gaflight_server_call_context_foreach_incoming_header(cast(GAFlightServerCallContext*)this._cPtr, _funcCB, _func);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight23.server_call_context.ServerCallContext]
class ServerCallContextGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T callContext(void* propval) nothrow
  {
    return setProperty("call-context", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight23.server_call_context.ServerCallContext]
final class ServerCallContextGidBuilder : ServerCallContextGidBuilderImpl!ServerCallContextGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ServerCallContext build() nothrow
  {
    return new ServerCallContext(cast(void*)createGObject(ServerCallContext._getGType), Yes.Take);
  }
}
