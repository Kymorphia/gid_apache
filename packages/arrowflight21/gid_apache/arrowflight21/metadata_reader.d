/// Module for [MetadataReader] class
module gid_apache.arrowflight21.metadata_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.buffer;
import gid_apache.arrowflight21.c.functions;
import gid_apache.arrowflight21.c.types;
import gid_apache.arrowflight21.types;

/** */
class MetadataReader : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_metadata_reader_get_type != &gidSymbolNotFound ? gaflight_metadata_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightMetadataReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override MetadataReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight21.metadata_reader.MetadataReader]
      Returns: New builder object
  */
  static MetadataReaderGidBuilder builder() nothrow
  {
    return new MetadataReaderGidBuilder;
  }

  /** */
  gid_apache.arrow21.buffer.Buffer read()
  {
    GArrowBuffer* _cretval;
    GError *_err;
    _cretval = gaflight_metadata_reader_read(cast(GAFlightMetadataReader*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight21.metadata_reader.MetadataReader]
class MetadataReaderGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T reader(void* propval) nothrow
  {
    return setProperty("reader", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight21.metadata_reader.MetadataReader]
final class MetadataReaderGidBuilder : MetadataReaderGidBuilderImpl!MetadataReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MetadataReader build() nothrow
  {
    return new MetadataReader(cast(void*)createGObject(MetadataReader._getGType), Yes.Take);
  }
}
