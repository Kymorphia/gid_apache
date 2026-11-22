/// Module for [ExtensionDataType] class
module gid_apache.arrow21.extension_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.array;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.chunked_array;
import gid_apache.arrow21.data_type;
import gid_apache.arrow21.extension_array;
import gid_apache.arrow21.types;

/** */
class ExtensionDataType : gid_apache.arrow21.data_type.DataType
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
    return cast(void function())garrow_extension_data_type_get_type != &gidSymbolNotFound ? garrow_extension_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExtensionDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExtensionDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.extension_data_type.ExtensionDataType]
      Returns: New builder object
  */
  static ExtensionDataTypeGidBuilder builder() nothrow
  {
    return new ExtensionDataTypeGidBuilder;
  }

  /** */
  @property gid_apache.arrow21.data_type.DataType storageDataType() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.data_type.DataType)("storage-data-type");
  }

  /** */
  string getExtensionName() nothrow
  {
    char* _cretval;
    _cretval = garrow_extension_data_type_get_extension_name(cast(GArrowExtensionDataType*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  gid_apache.arrow21.extension_array.ExtensionArray wrapArray(gid_apache.arrow21.array.Array storage) nothrow
  {
    GArrowExtensionArray* _cretval;
    _cretval = garrow_extension_data_type_wrap_array(cast(GArrowExtensionDataType*)this._cPtr, storage ? cast(GArrowArray*)storage._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.extension_array.ExtensionArray)(cast(GArrowExtensionArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow21.chunked_array.ChunkedArray wrapChunkedArray(gid_apache.arrow21.chunked_array.ChunkedArray storage) nothrow
  {
    GArrowChunkedArray* _cretval;
    _cretval = garrow_extension_data_type_wrap_chunked_array(cast(GArrowExtensionDataType*)this._cPtr, storage ? cast(GArrowChunkedArray*)storage._cPtr(No.Dup) : null);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.chunked_array.ChunkedArray)(cast(GArrowChunkedArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.extension_data_type.ExtensionDataType]
class ExtensionDataTypeGidBuilderImpl(T) : gid_apache.arrow21.data_type.DataTypeGidBuilderImpl!T
{

  /** */
  T storageDataType(gid_apache.arrow21.data_type.DataType propval) nothrow
  {
    return setProperty("storage-data-type", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.extension_data_type.ExtensionDataType]
final class ExtensionDataTypeGidBuilder : ExtensionDataTypeGidBuilderImpl!ExtensionDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExtensionDataType build() nothrow
  {
    return new ExtensionDataType(cast(void*)createGObject(ExtensionDataType._getGType), Yes.Take);
  }
}
