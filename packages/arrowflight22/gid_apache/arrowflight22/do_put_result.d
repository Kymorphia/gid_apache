/// Module for [DoPutResult] class
module gid_apache.arrowflight22.do_put_result;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight22.c.functions;
import gid_apache.arrowflight22.c.types;
import gid_apache.arrowflight22.metadata_reader;
import gid_apache.arrowflight22.stream_writer;
import gid_apache.arrowflight22.types;

/** */
class DoPutResult : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_do_put_result_get_type != &gidSymbolNotFound ? gaflight_do_put_result_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightDoPutResult";
  }

  /** Returns `this`, for use in `with` statements. */
  override DoPutResult self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight22.do_put_result.DoPutResult]
      Returns: New builder object
  */
  static DoPutResultGidBuilder builder() nothrow
  {
    return new DoPutResultGidBuilder;
  }

  /**
      Get `reader` property.
      Returns: A reader for application metadata from the server.
  */
  @property gid_apache.arrowflight22.metadata_reader.MetadataReader reader() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowflight22.metadata_reader.MetadataReader)("reader");
  }

  /**
      Get `writer` property.
      Returns: A writer to write record batches to.
  */
  @property gid_apache.arrowflight22.stream_writer.StreamWriter writer() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrowflight22.stream_writer.StreamWriter)("writer");
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight22.do_put_result.DoPutResult]
class DoPutResultGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T result(void* propval) nothrow
  {
    return setProperty("result", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight22.do_put_result.DoPutResult]
final class DoPutResultGidBuilder : DoPutResultGidBuilderImpl!DoPutResultGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DoPutResult build() nothrow
  {
    return new DoPutResult(cast(void*)createGObject(DoPutResult._getGType), Yes.Take);
  }
}
