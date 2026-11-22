/// Module for [ChunkedArrayDatum] class
module gid_apache.arrow22.chunked_array_datum;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.chunked_array;
import gid_apache.arrow22.datum;
import gid_apache.arrow22.types;

/** */
class ChunkedArrayDatum : gid_apache.arrow22.datum.Datum
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
    return cast(void function())garrow_chunked_array_datum_get_type != &gidSymbolNotFound ? garrow_chunked_array_datum_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowChunkedArrayDatum";
  }

  /** Returns `this`, for use in `with` statements. */
  override ChunkedArrayDatum self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.chunked_array_datum.ChunkedArrayDatum]
      Returns: New builder object
  */
  static ChunkedArrayDatumGidBuilder builder() nothrow
  {
    return new ChunkedArrayDatumGidBuilder;
  }

  /** */
  @property gid_apache.arrow22.chunked_array.ChunkedArray value() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow22.chunked_array.ChunkedArray)("value");
  }

  /** */
  this(gid_apache.arrow22.chunked_array.ChunkedArray value) nothrow
  {
    GArrowChunkedArrayDatum* _cretval;
    _cretval = garrow_chunked_array_datum_new(value ? cast(GArrowChunkedArray*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.chunked_array_datum.ChunkedArrayDatum]
class ChunkedArrayDatumGidBuilderImpl(T) : gid_apache.arrow22.datum.DatumGidBuilderImpl!T
{

  /** */
  T value(gid_apache.arrow22.chunked_array.ChunkedArray propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.chunked_array_datum.ChunkedArrayDatum]
final class ChunkedArrayDatumGidBuilder : ChunkedArrayDatumGidBuilderImpl!ChunkedArrayDatumGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ChunkedArrayDatum build() nothrow
  {
    return new ChunkedArrayDatum(cast(void*)createGObject(ChunkedArrayDatum._getGType), Yes.Take);
  }
}
