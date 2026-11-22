/// Module for [FeatherFileReader] class
module gid_apache.arrow24.feather_file_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.seekable_input_stream;
import gid_apache.arrow24.table;
import gid_apache.arrow24.types;

/** */
class FeatherFileReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_feather_file_reader_get_type != &gidSymbolNotFound ? garrow_feather_file_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFeatherFileReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override FeatherFileReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.feather_file_reader.FeatherFileReader]
      Returns: New builder object
  */
  static FeatherFileReaderGidBuilder builder() nothrow
  {
    return new FeatherFileReaderGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.seekable_input_stream.SeekableInputStream file)
  {
    GArrowFeatherFileReader* _cretval;
    GError *_err;
    _cretval = garrow_feather_file_reader_new(file ? cast(GArrowSeekableInputStream*)file._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  int getVersion() nothrow
  {
    int _retval;
    _retval = garrow_feather_file_reader_get_version(cast(GArrowFeatherFileReader*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow24.table.Table read()
  {
    GArrowTable* _cretval;
    GError *_err;
    _cretval = garrow_feather_file_reader_read(cast(GArrowFeatherFileReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.table.Table readIndices(int[] indices)
  {
    GArrowTable* _cretval;
    uint _nIndices;
    if (indices)
      _nIndices = cast(uint)indices.length;

    auto _indices = cast(int*)indices.ptr;
    GError *_err;
    _cretval = garrow_feather_file_reader_read_indices(cast(GArrowFeatherFileReader*)this._cPtr, _indices, _nIndices, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.table.Table readNames(string[] names)
  {
    GArrowTable* _cretval;
    uint _nNames;
    if (names)
      _nNames = cast(uint)names.length;

    auto _names_arr = new char*[](names.length);
    auto _names = cast(char**)_names_arr.ptr;
    foreach (i, s; names) _names[i] = s.toCString!(No.Malloc);
    GError *_err;
    _cretval = garrow_feather_file_reader_read_names(cast(GArrowFeatherFileReader*)this._cPtr, _names, _nNames, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.table.Table)(cast(GArrowTable*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.feather_file_reader.FeatherFileReader]
class FeatherFileReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T featherReader(void* propval) nothrow
  {
    return setProperty("feather-reader", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.feather_file_reader.FeatherFileReader]
final class FeatherFileReaderGidBuilder : FeatherFileReaderGidBuilderImpl!FeatherFileReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FeatherFileReader build() nothrow
  {
    return new FeatherFileReader(cast(void*)createGObject(FeatherFileReader._getGType), Yes.Take);
  }
}
