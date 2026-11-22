/// Module for [ScalarDatum] class
module gid_apache.arrow23.scalar_datum;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.datum;
import gid_apache.arrow23.scalar;
import gid_apache.arrow23.types;

/** */
class ScalarDatum : gid_apache.arrow23.datum.Datum
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
    return cast(void function())garrow_scalar_datum_get_type != &gidSymbolNotFound ? garrow_scalar_datum_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowScalarDatum";
  }

  /** Returns `this`, for use in `with` statements. */
  override ScalarDatum self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.scalar_datum.ScalarDatum]
      Returns: New builder object
  */
  static ScalarDatumGidBuilder builder() nothrow
  {
    return new ScalarDatumGidBuilder;
  }

  /** */
  @property gid_apache.arrow23.scalar.Scalar value() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.scalar.Scalar)("value");
  }

  /** */
  this(gid_apache.arrow23.scalar.Scalar value) nothrow
  {
    GArrowScalarDatum* _cretval;
    _cretval = garrow_scalar_datum_new(value ? cast(GArrowScalar*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.scalar_datum.ScalarDatum]
class ScalarDatumGidBuilderImpl(T) : gid_apache.arrow23.datum.DatumGidBuilderImpl!T
{

  /** */
  T value(gid_apache.arrow23.scalar.Scalar propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.scalar_datum.ScalarDatum]
final class ScalarDatumGidBuilder : ScalarDatumGidBuilderImpl!ScalarDatumGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ScalarDatum build() nothrow
  {
    return new ScalarDatum(cast(void*)createGObject(ScalarDatum._getGType), Yes.Take);
  }
}
