/// Module for [ServerAuthReader] class
module gid_apache.arrowflight26.server_auth_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight26.c.functions;
import gid_apache.arrowflight26.c.types;
import gid_apache.arrowflight26.types;

/** */
class ServerAuthReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_server_auth_reader_get_type != &gidSymbolNotFound ? gaflight_server_auth_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightServerAuthReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override ServerAuthReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight26.server_auth_reader.ServerAuthReader]
      Returns: New builder object
  */
  static ServerAuthReaderGidBuilder builder() nothrow
  {
    return new ServerAuthReaderGidBuilder;
  }

  /**
      Reads a message from the client.
      Returns: Read data as #GBytes on
          success, null on error.
      Throws: [ErrorWrap]
  */
  gid.glib2.bytes.Bytes read()
  {
    GBytes* _cretval;
    GError *_err;
    _cretval = gaflight_server_auth_reader_read(cast(GAFlightServerAuthReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight26.server_auth_reader.ServerAuthReader]
class ServerAuthReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T reader(void* propval) nothrow
  {
    return setProperty("reader", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight26.server_auth_reader.ServerAuthReader]
final class ServerAuthReaderGidBuilder : ServerAuthReaderGidBuilderImpl!ServerAuthReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ServerAuthReader build() nothrow
  {
    return new ServerAuthReader(cast(void*)createGObject(ServerAuthReader._getGType), Yes.Take);
  }
}
