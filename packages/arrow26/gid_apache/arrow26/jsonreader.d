/// Module for [JSONReader] class
module gid_apache.arrow26.jsonreader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.input_stream;
import gid_apache.arrow26.jsonread_options;
import gid_apache.arrow26.table;
import gid_apache.arrow26.types;

/** */
class JSONReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_json_reader_get_type != &gidSymbolNotFound ? garrow_json_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowJSONReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override JSONReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.jsonreader.JSONReader]
      Returns: New builder object
  */
  static JSONReaderGidBuilder builder() nothrow
  {
    return new JSONReaderGidBuilder;
  }

  /** */
  @property gid_apache.arrow26.input_stream.InputStream input() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.input_stream.InputStream)("input");
  }

  /** */
  this(gid_apache.arrow26.input_stream.InputStream input, gid_apache.arrow26.jsonread_options.JSONReadOptions options = null)
  {
    GArrowJSONReader* _cretval;
    GError *_err;
    _cretval = garrow_json_reader_new(input ? cast(GArrowInputStream*)input._cPtr(No.Dup) : null, options ? cast(GArrowJSONReadOptions*)options._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow26.table.Table read()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_json_reader_read(cast(GArrowJSONReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.jsonreader.JSONReader]
class JSONReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T input(gid_apache.arrow26.input_stream.InputStream propval) nothrow
  {
    return setProperty("input", propval);
  }

  /** */
  T jsonTableReader(void* propval) nothrow
  {
    return setProperty("json-table-reader", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.jsonreader.JSONReader]
final class JSONReaderGidBuilder : JSONReaderGidBuilderImpl!JSONReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  JSONReader build() nothrow
  {
    return new JSONReader(cast(void*)createGObject(JSONReader._getGType), Yes.Take);
  }
}
