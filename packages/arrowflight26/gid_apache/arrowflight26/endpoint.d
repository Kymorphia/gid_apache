/// Module for [Endpoint] class
module gid_apache.arrowflight26.endpoint;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight26.c.functions;
import gid_apache.arrowflight26.c.types;
import gid_apache.arrowflight26.location;
import gid_apache.arrowflight26.ticket;
import gid_apache.arrowflight26.types;

/** */
class Endpoint : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_endpoint_get_type != &gidSymbolNotFound ? gaflight_endpoint_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightEndpoint";
  }

  /** Returns `this`, for use in `with` statements. */
  override Endpoint self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight26.endpoint.Endpoint]
      Returns: New builder object
  */
  static EndpointGidBuilder builder() nothrow
  {
    return new EndpointGidBuilder;
  }

  /**
      Get `ticket` property.
      Returns: Opaque ticket identify; use with DoGet RPC.
  */
  @property gid_apache.arrowflight26.ticket.Ticket ticket() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowflight26.ticket.Ticket)("ticket");
  }

  /** */
  this(gid_apache.arrowflight26.ticket.Ticket ticket, gid_apache.arrowflight26.location.Location[] locations) nothrow
  {
    GAFlightEndpoint* _cretval;
    auto _locations = gListFromD!(gid_apache.arrowflight26.location.Location)(locations);
    scope(exit) containerFree!(GList*, gid_apache.arrowflight26.location.Location, GidOwnership.None)(_locations);
    _cretval = gaflight_endpoint_new(ticket ? cast(GAFlightTicket*)ticket._cPtr(No.Dup) : null, _locations);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrowflight26.endpoint.Endpoint otherEndpoint) nothrow
  {
    bool _retval;
    _retval = cast(bool)gaflight_endpoint_equal(cast(GAFlightEndpoint*)this._cPtr, otherEndpoint ? cast(GAFlightEndpoint*)otherEndpoint._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrowflight26.location.Location[] getLocations() nothrow
  {
    GList* _cretval;
    _cretval = gaflight_endpoint_get_locations(cast(GAFlightEndpoint*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrowflight26.location.Location, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight26.endpoint.Endpoint]
class EndpointGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight26.endpoint.Endpoint]
final class EndpointGidBuilder : EndpointGidBuilderImpl!EndpointGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Endpoint build() nothrow
  {
    return new Endpoint(cast(void*)createGObject(Endpoint._getGType), Yes.Take);
  }
}
