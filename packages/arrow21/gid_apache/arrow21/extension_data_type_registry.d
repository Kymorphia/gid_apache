/// Module for [ExtensionDataTypeRegistry] class
module gid_apache.arrow21.extension_data_type_registry;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.extension_data_type;
import gid_apache.arrow21.types;

/** */
class ExtensionDataTypeRegistry : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_extension_data_type_registry_get_type != &gidSymbolNotFound ? garrow_extension_data_type_registry_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExtensionDataTypeRegistry";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExtensionDataTypeRegistry self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.extension_data_type_registry.ExtensionDataTypeRegistry]
      Returns: New builder object
  */
  static ExtensionDataTypeRegistryGidBuilder builder() nothrow
  {
    return new ExtensionDataTypeRegistryGidBuilder;
  }

  /** */
  static gid_apache.arrow21.extension_data_type_registry.ExtensionDataTypeRegistry default_() nothrow
  {
    GArrowExtensionDataTypeRegistry* _cretval;
    _cretval = garrow_extension_data_type_registry_default();
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.extension_data_type_registry.ExtensionDataTypeRegistry)(cast(GArrowExtensionDataTypeRegistry*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.extension_data_type.ExtensionDataType lookup(string name) nothrow
  {
    GArrowExtensionDataType* _cretval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_extension_data_type_registry_lookup(cast(GArrowExtensionDataTypeRegistry*)this._cPtr, _name);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.extension_data_type.ExtensionDataType)(cast(GArrowExtensionDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /**
      Register the given data_type to the registry.
  
      Params:
        dataType = A #GArrowExtensionDataType to be registered.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool register(gid_apache.arrow21.extension_data_type.ExtensionDataType dataType)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_extension_data_type_registry_register(cast(GArrowExtensionDataTypeRegistry*)this._cPtr, dataType ? cast(GArrowExtensionDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Unregister an extension data type that has the given name from the
      registry.
  
      Params:
        name = An extension data type name to be unregistered.
      Returns: true on success, false on error.
      Throws: [ErrorWrap]
  */
  bool unregister(string name)
  {
    bool _retval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _retval = cast(bool)garrow_extension_data_type_registry_unregister(cast(GArrowExtensionDataTypeRegistry*)this._cPtr, _name, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.extension_data_type_registry.ExtensionDataTypeRegistry]
class ExtensionDataTypeRegistryGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T registry(void* propval) nothrow
  {
    return setProperty("registry", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.extension_data_type_registry.ExtensionDataTypeRegistry]
final class ExtensionDataTypeRegistryGidBuilder : ExtensionDataTypeRegistryGidBuilderImpl!ExtensionDataTypeRegistryGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExtensionDataTypeRegistry build() nothrow
  {
    return new ExtensionDataTypeRegistry(cast(void*)createGObject(ExtensionDataTypeRegistry._getGType), Yes.Take);
  }
}
