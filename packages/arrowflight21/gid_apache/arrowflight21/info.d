/// Module for [Info] class
module gid_apache.arrowflight21.info;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.read_options;
import gid_apache.arrow21.schema;
import gid_apache.arrowflight21.c.functions;
import gid_apache.arrowflight21.c.types;
import gid_apache.arrowflight21.descriptor;
import gid_apache.arrowflight21.endpoint;
import gid_apache.arrowflight21.types;

/** */
class Info : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_info_get_type != &gidSymbolNotFound ? gaflight_info_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightInfo";
  }

  /** Returns `this`, for use in `with` statements. */
  override Info self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight21.info.Info]
      Returns: New builder object
  */
  static InfoGidBuilder builder() nothrow
  {
    return new InfoGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.schema.Schema schema, gid_apache.arrowflight21.descriptor.Descriptor descriptor, gid_apache.arrowflight21.endpoint.Endpoint[] endpoints, long totalRecords, long totalBytes)
  {
    GAFlightInfo* _cretval;
    auto _endpoints = gListFromD!(gid_apache.arrowflight21.endpoint.Endpoint)(endpoints);
    scope(exit) containerFree!(GList*, gid_apache.arrowflight21.endpoint.Endpoint, GidOwnership.None)(_endpoints);
    GError *_err;
    _cretval = gaflight_info_new(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, descriptor ? cast(GAFlightDescriptor*)descriptor._cPtr(No.Dup) : null, _endpoints, totalRecords, totalBytes, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrowflight21.info.Info otherInfo) nothrow
  {
    bool _retval;
    _retval = cast(bool)gaflight_info_equal(cast(GAFlightInfo*)this._cPtr, otherInfo ? cast(GAFlightInfo*)otherInfo._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrowflight21.descriptor.Descriptor getDescriptor() nothrow
  {
    GAFlightDescriptor* _cretval;
    _cretval = gaflight_info_get_descriptor(cast(GAFlightInfo*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowflight21.descriptor.Descriptor)(cast(GAFlightDescriptor*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrowflight21.endpoint.Endpoint[] getEndpoints() nothrow
  {
    GList* _cretval;
    _cretval = gaflight_info_get_endpoints(cast(GAFlightInfo*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrowflight21.endpoint.Endpoint, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  gid_apache.arrow21.schema.Schema getSchema(gid_apache.arrow21.read_options.ReadOptions options = null)
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = gaflight_info_get_schema(cast(GAFlightInfo*)this._cPtr, options ? cast(GArrowReadOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long getTotalBytes() nothrow
  {
    long _retval;
    _retval = gaflight_info_get_total_bytes(cast(GAFlightInfo*)this._cPtr);
    return _retval;
  }

  /** */
  long getTotalRecords() nothrow
  {
    long _retval;
    _retval = gaflight_info_get_total_records(cast(GAFlightInfo*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight21.info.Info]
class InfoGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T info(void* propval) nothrow
  {
    return setProperty("info", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight21.info.Info]
final class InfoGidBuilder : InfoGidBuilderImpl!InfoGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Info build() nothrow
  {
    return new Info(cast(void*)createGObject(Info._getGType), Yes.Take);
  }
}
