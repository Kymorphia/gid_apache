/// Module for [UnknownExtensionDataType] class
module arrow.unknown_extension_data_type;

public import gid.basictypes;
import arrow.c.functions;
import arrow.c.types;
import arrow.extension_data_type;
import arrow.types;
import gid.gid;
import gobject.gid_builder;

/** */
class UnknownExtensionDataType : arrow.extension_data_type.ExtensionDataType
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.loader : gidSymbolNotFound;
    return cast(void function())garrow_unknown_extension_data_type_get_type != &gidSymbolNotFound ? garrow_unknown_extension_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUnknownExtensionDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override UnknownExtensionDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [arrow.unknown_extension_data_type.UnknownExtensionDataType]
      Returns: New builder object
  */
  static UnknownExtensionDataTypeGidBuilder builder() nothrow
  {
    return new UnknownExtensionDataTypeGidBuilder;
  }
}

/// Fluent builder implementation template for [arrow.unknown_extension_data_type.UnknownExtensionDataType]
class UnknownExtensionDataTypeGidBuilderImpl(T) : arrow.extension_data_type.ExtensionDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [arrow.unknown_extension_data_type.UnknownExtensionDataType]
final class UnknownExtensionDataTypeGidBuilder : UnknownExtensionDataTypeGidBuilderImpl!UnknownExtensionDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UnknownExtensionDataType build() nothrow
  {
    return new UnknownExtensionDataType(cast(void*)createGObject(UnknownExtensionDataType._getGType), Yes.Take);
  }
}
