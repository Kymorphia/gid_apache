/// Module for [Location] class
module gid_apache.arrowflight19.location;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight19.c.functions;
import gid_apache.arrowflight19.c.types;
import gid_apache.arrowflight19.types;

/** */
class Location : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_location_get_type != &gidSymbolNotFound ? gaflight_location_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightLocation";
  }

  /** Returns `this`, for use in `with` statements. */
  override Location self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight19.location.Location]
      Returns: New builder object
  */
  static LocationGidBuilder builder() nothrow
  {
    return new LocationGidBuilder;
  }

  /** */
  this(string uri)
  {
    GAFlightLocation* _cretval;
    const(char)* _uri = uri.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = gaflight_location_new(_uri, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrowflight19.location.Location otherLocation) nothrow
  {
    bool _retval;
    _retval = cast(bool)gaflight_location_equal(cast(GAFlightLocation*)this._cPtr, otherLocation ? cast(GAFlightLocation*)otherLocation._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  string getScheme() nothrow
  {
    char* _cretval;
    _cretval = gaflight_location_get_scheme(cast(GAFlightLocation*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = gaflight_location_to_string(cast(GAFlightLocation*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight19.location.Location]
class LocationGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight19.location.Location]
final class LocationGidBuilder : LocationGidBuilderImpl!LocationGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Location build() nothrow
  {
    return new Location(cast(void*)createGObject(Location._getGType), Yes.Take);
  }
}
