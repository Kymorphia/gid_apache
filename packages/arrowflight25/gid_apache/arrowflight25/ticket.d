/// Module for [Ticket] class
module gid_apache.arrowflight25.ticket;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight25.c.functions;
import gid_apache.arrowflight25.c.types;
import gid_apache.arrowflight25.types;

/** */
class Ticket : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_ticket_get_type != &gidSymbolNotFound ? gaflight_ticket_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightTicket";
  }

  /** Returns `this`, for use in `with` statements. */
  override Ticket self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight25.ticket.Ticket]
      Returns: New builder object
  */
  static TicketGidBuilder builder() nothrow
  {
    return new TicketGidBuilder;
  }

  /**
      Get `data` property.
      Returns: Opaque identifier or credential to use when requesting a data
        stream with the DoGet RPC.
  */
  @property gid.glib2.bytes.Bytes data() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid.glib2.bytes.Bytes)("data");
  }

  /**
      Set `data` property.
      Params:
        propval = Opaque identifier or credential to use when requesting a data
          stream with the DoGet RPC.
  */
  @property void data(gid.glib2.bytes.Bytes propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid.glib2.bytes.Bytes)("data", propval);
  }

  /** */
  this(gid.glib2.bytes.Bytes data) nothrow
  {
    GAFlightTicket* _cretval;
    _cretval = gaflight_ticket_new(data ? cast(GBytes*)data._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrowflight25.ticket.Ticket otherTicket) nothrow
  {
    bool _retval;
    _retval = cast(bool)gaflight_ticket_equal(cast(GAFlightTicket*)this._cPtr, otherTicket ? cast(GAFlightTicket*)otherTicket._cPtr(No.Dup) : null);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight25.ticket.Ticket]
class TicketGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `data` property.
      Params:
        propval = Opaque identifier or credential to use when requesting a data
          stream with the DoGet RPC.
      Returns: Builder instance for fluent chaining
  */
  T data(gid.glib2.bytes.Bytes propval) nothrow
  {
    return setProperty("data", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight25.ticket.Ticket]
final class TicketGidBuilder : TicketGidBuilderImpl!TicketGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Ticket build() nothrow
  {
    return new Ticket(cast(void*)createGObject(Ticket._getGType), Yes.Take);
  }
}
