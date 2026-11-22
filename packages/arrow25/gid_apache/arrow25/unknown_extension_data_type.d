/// Module for [UnknownExtensionDataType] class
module gid_apache.arrow25.unknown_extension_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.extension_data_type;
import gid_apache.arrow25.types;

/** */
class UnknownExtensionDataType : gid_apache.arrow25.extension_data_type.ExtensionDataType
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
      Get builder for [gid_apache.arrow25.unknown_extension_data_type.UnknownExtensionDataType]
      Returns: New builder object
  */
  static UnknownExtensionDataTypeGidBuilder builder() nothrow
  {
    return new UnknownExtensionDataTypeGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.unknown_extension_data_type.UnknownExtensionDataType]
class UnknownExtensionDataTypeGidBuilderImpl(T) : gid_apache.arrow25.extension_data_type.ExtensionDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.unknown_extension_data_type.UnknownExtensionDataType]
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
