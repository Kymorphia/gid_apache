/// Module for [Datum] class
module gid_apache.arrow26.datum;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class Datum : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_datum_get_type != &gidSymbolNotFound ? garrow_datum_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDatum";
  }

  /** Returns `this`, for use in `with` statements. */
  override Datum self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.datum.Datum]
      Returns: New builder object
  */
  static DatumGidBuilder builder() nothrow
  {
    return new DatumGidBuilder;
  }

  /** */
  bool equal(gid_apache.arrow26.datum.Datum otherDatum) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_datum_equal(cast(GArrowDatum*)this._cPtr, otherDatum ? cast(GArrowDatum*)otherDatum._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool isArray() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_datum_is_array(cast(GArrowDatum*)this._cPtr);
    return _retval;
  }

  /** */
  bool isArrayLike() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_datum_is_array_like(cast(GArrowDatum*)this._cPtr);
    return _retval;
  }

  /** */
  bool isScalar() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_datum_is_scalar(cast(GArrowDatum*)this._cPtr);
    return _retval;
  }

  /** */
  bool isValue() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_datum_is_value(cast(GArrowDatum*)this._cPtr);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_datum_to_string(cast(GArrowDatum*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.datum.Datum]
class DatumGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T datum(void* propval) nothrow
  {
    return setProperty("datum", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.datum.Datum]
final class DatumGidBuilder : DatumGidBuilderImpl!DatumGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Datum build() nothrow
  {
    return new Datum(cast(void*)createGObject(Datum._getGType), Yes.Take);
  }
}
