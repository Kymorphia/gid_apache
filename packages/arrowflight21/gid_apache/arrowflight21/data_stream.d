/// Module for [DataStream] class
module gid_apache.arrowflight21.data_stream;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight21.c.functions;
import gid_apache.arrowflight21.c.types;
import gid_apache.arrowflight21.types;

/** */
class DataStream : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_data_stream_get_type != &gidSymbolNotFound ? gaflight_data_stream_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightDataStream";
  }

  /** Returns `this`, for use in `with` statements. */
  override DataStream self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight21.data_stream.DataStream]
      Returns: New builder object
  */
  static DataStreamGidBuilder builder() nothrow
  {
    return new DataStreamGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight21.data_stream.DataStream]
class DataStreamGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T stream(void* propval) nothrow
  {
    return setProperty("stream", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight21.data_stream.DataStream]
final class DataStreamGidBuilder : DataStreamGidBuilderImpl!DataStreamGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DataStream build() nothrow
  {
    return new DataStream(cast(void*)createGObject(DataStream._getGType), Yes.Take);
  }
}
