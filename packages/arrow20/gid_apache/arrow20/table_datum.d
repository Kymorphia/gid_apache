/// Module for [TableDatum] class
module gid_apache.arrow20.table_datum;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.datum;
import gid_apache.arrow20.table;
import gid_apache.arrow20.types;

/** */
class TableDatum : gid_apache.arrow20.datum.Datum
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
    return cast(void function())garrow_table_datum_get_type != &gidSymbolNotFound ? garrow_table_datum_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTableDatum";
  }

  /** Returns `this`, for use in `with` statements. */
  override TableDatum self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.table_datum.TableDatum]
      Returns: New builder object
  */
  static TableDatumGidBuilder builder() nothrow
  {
    return new TableDatumGidBuilder;
  }

  /** */
  @property gid_apache.arrow20.table.Table value() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow20.table.Table)("value");
  }

  /** */
  this(gid_apache.arrow20.table.Table value) nothrow
  {
    GArrowTableDatum* _cretval;
    _cretval = garrow_table_datum_new(value ? cast(GArrowTable*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.table_datum.TableDatum]
class TableDatumGidBuilderImpl(T) : gid_apache.arrow20.datum.DatumGidBuilderImpl!T
{

  /** */
  T value(gid_apache.arrow20.table.Table propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.table_datum.TableDatum]
final class TableDatumGidBuilder : TableDatumGidBuilderImpl!TableDatumGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TableDatum build() nothrow
  {
    return new TableDatum(cast(void*)createGObject(TableDatum._getGType), Yes.Take);
  }
}
