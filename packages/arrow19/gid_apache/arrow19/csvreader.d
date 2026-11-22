/// Module for [CSVReader] class
module gid_apache.arrow19.csvreader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.csvread_options;
import gid_apache.arrow19.input_stream;
import gid_apache.arrow19.table;
import gid_apache.arrow19.types;

/** */
class CSVReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_csv_reader_get_type != &gidSymbolNotFound ? garrow_csv_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCSVReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override CSVReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.csvreader.CSVReader]
      Returns: New builder object
  */
  static CSVReaderGidBuilder builder() nothrow
  {
    return new CSVReaderGidBuilder;
  }

  /** */
  @property gid_apache.arrow19.input_stream.InputStream input() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow19.input_stream.InputStream)("input");
  }

  /** */
  this(gid_apache.arrow19.input_stream.InputStream input, gid_apache.arrow19.csvread_options.CSVReadOptions options = null)
  {
    GArrowCSVReader* _cretval;
    GError *_err;
    _cretval = garrow_csv_reader_new(input ? cast(GArrowInputStream*)input._cPtr(No.Dup) : null, options ? cast(GArrowCSVReadOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow19.table.Table read()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_csv_reader_read(cast(GArrowCSVReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.csvreader.CSVReader]
class CSVReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T csvTableReader(void* propval) nothrow
  {
    return setProperty("csv-table-reader", propval);
  }

  /** */
  T input(gid_apache.arrow19.input_stream.InputStream propval) nothrow
  {
    return setProperty("input", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.csvreader.CSVReader]
final class CSVReaderGidBuilder : CSVReaderGidBuilderImpl!CSVReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CSVReader build() nothrow
  {
    return new CSVReader(cast(void*)createGObject(CSVReader._getGType), Yes.Take);
  }
}
