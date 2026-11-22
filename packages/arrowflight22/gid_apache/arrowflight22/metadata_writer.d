/// Module for [MetadataWriter] class
module gid_apache.arrowflight22.metadata_writer;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.buffer;
import gid_apache.arrowflight22.c.functions;
import gid_apache.arrowflight22.c.types;
import gid_apache.arrowflight22.types;

/** */
class MetadataWriter : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_metadata_writer_get_type != &gidSymbolNotFound ? gaflight_metadata_writer_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightMetadataWriter";
  }

  /** Returns `this`, for use in `with` statements. */
  override MetadataWriter self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight22.metadata_writer.MetadataWriter]
      Returns: New builder object
  */
  static MetadataWriterGidBuilder builder() nothrow
  {
    return new MetadataWriterGidBuilder;
  }

  /**
      Writes metadata to the client.
  
      Params:
        metadata = A #GArrowBuffer to be sent.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool write(gid_apache.arrow22.buffer.Buffer metadata)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)gaflight_metadata_writer_write(cast(GAFlightMetadataWriter*)this._cPtr, metadata ? cast(GArrowBuffer*)metadata._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight22.metadata_writer.MetadataWriter]
class MetadataWriterGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T writer(void* propval) nothrow
  {
    return setProperty("writer", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight22.metadata_writer.MetadataWriter]
final class MetadataWriterGidBuilder : MetadataWriterGidBuilderImpl!MetadataWriterGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MetadataWriter build() nothrow
  {
    return new MetadataWriter(cast(void*)createGObject(MetadataWriter._getGType), Yes.Take);
  }
}
