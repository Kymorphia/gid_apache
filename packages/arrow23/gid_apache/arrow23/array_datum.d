/// Module for [ArrayDatum] class
module gid_apache.arrow23.array_datum;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.array;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.datum;
import gid_apache.arrow23.types;

/** */
class ArrayDatum : gid_apache.arrow23.datum.Datum
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
    return cast(void function())garrow_array_datum_get_type != &gidSymbolNotFound ? garrow_array_datum_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowArrayDatum";
  }

  /** Returns `this`, for use in `with` statements. */
  override ArrayDatum self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.array_datum.ArrayDatum]
      Returns: New builder object
  */
  static ArrayDatumGidBuilder builder() nothrow
  {
    return new ArrayDatumGidBuilder;
  }

  /** */
  @property gid_apache.arrow23.array.Array value() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.array.Array)("value");
  }

  /** */
  this(gid_apache.arrow23.array.Array value) nothrow
  {
    GArrowArrayDatum* _cretval;
    _cretval = garrow_array_datum_new(value ? cast(GArrowArray*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.array_datum.ArrayDatum]
class ArrayDatumGidBuilderImpl(T) : gid_apache.arrow23.datum.DatumGidBuilderImpl!T
{

  /** */
  T value(gid_apache.arrow23.array.Array propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.array_datum.ArrayDatum]
final class ArrayDatumGidBuilder : ArrayDatumGidBuilderImpl!ArrayDatumGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ArrayDatum build() nothrow
  {
    return new ArrayDatum(cast(void*)createGObject(ArrayDatum._getGType), Yes.Take);
  }
}
