/// Module for [CommandDescriptor] class
module gid_apache.arrowflight26.command_descriptor;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowflight26.c.functions;
import gid_apache.arrowflight26.c.types;
import gid_apache.arrowflight26.descriptor;
import gid_apache.arrowflight26.types;

/** */
class CommandDescriptor : gid_apache.arrowflight26.descriptor.Descriptor
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
    return cast(void function())gaflight_command_descriptor_get_type != &gidSymbolNotFound ? gaflight_command_descriptor_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightCommandDescriptor";
  }

  /** Returns `this`, for use in `with` statements. */
  override CommandDescriptor self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight26.command_descriptor.CommandDescriptor]
      Returns: New builder object
  */
  static CommandDescriptorGidBuilder builder() nothrow
  {
    return new CommandDescriptorGidBuilder;
  }

  /** */
  this(string command) nothrow
  {
    GAFlightCommandDescriptor* _cretval;
    const(char)* _command = command.toCString!(No.Malloc, No.Nullable);
    _cretval = gaflight_command_descriptor_new(_command);
    this(_cretval, Yes.Take);
  }

  /** */
  string getCommand() nothrow
  {
    char* _cretval;
    _cretval = gaflight_command_descriptor_get_command(cast(GAFlightCommandDescriptor*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight26.command_descriptor.CommandDescriptor]
class CommandDescriptorGidBuilderImpl(T) : gid_apache.arrowflight26.descriptor.DescriptorGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight26.command_descriptor.CommandDescriptor]
final class CommandDescriptorGidBuilder : CommandDescriptorGidBuilderImpl!CommandDescriptorGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CommandDescriptor build() nothrow
  {
    return new CommandDescriptor(cast(void*)createGObject(CommandDescriptor._getGType), Yes.Take);
  }
}
