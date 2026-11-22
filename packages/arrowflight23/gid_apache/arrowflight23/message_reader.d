/// Module for [MessageReader] class
module gid_apache.arrowflight23.message_reader;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight23.c.functions;
import gid_apache.arrowflight23.c.types;
import gid_apache.arrowflight23.descriptor;
import gid_apache.arrowflight23.record_batch_reader;
import gid_apache.arrowflight23.types;

/** */
class MessageReader : gid_apache.arrowflight23.record_batch_reader.RecordBatchReader
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
    return cast(void function())gaflight_message_reader_get_type != &gidSymbolNotFound ? gaflight_message_reader_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightMessageReader";
  }

  /** Returns `this`, for use in `with` statements. */
  override MessageReader self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight23.message_reader.MessageReader]
      Returns: New builder object
  */
  static MessageReaderGidBuilder builder() nothrow
  {
    return new MessageReaderGidBuilder;
  }

  /** */
  gid_apache.arrowflight23.descriptor.Descriptor getDescriptor() nothrow
  {
    GAFlightDescriptor* _cretval;
    _cretval = gaflight_message_reader_get_descriptor(cast(GAFlightMessageReader*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrowflight23.descriptor.Descriptor)(cast(GAFlightDescriptor*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight23.message_reader.MessageReader]
class MessageReaderGidBuilderImpl(T) : gid_apache.arrowflight23.record_batch_reader.RecordBatchReaderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight23.message_reader.MessageReader]
final class MessageReaderGidBuilder : MessageReaderGidBuilderImpl!MessageReaderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MessageReader build() nothrow
  {
    return new MessageReader(cast(void*)createGObject(MessageReader._getGType), Yes.Take);
  }
}
