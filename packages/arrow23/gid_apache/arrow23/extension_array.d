/// Module for [ExtensionArray] class
module gid_apache.arrow23.extension_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.array;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class ExtensionArray : gid_apache.arrow23.array.Array
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
    return cast(void function())garrow_extension_array_get_type != &gidSymbolNotFound ? garrow_extension_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExtensionArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExtensionArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.extension_array.ExtensionArray]
      Returns: New builder object
  */
  static ExtensionArrayGidBuilder builder() nothrow
  {
    return new ExtensionArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow23.array.Array storage() nothrow
  {
    return getStorage();
  }

  /** */
  gid_apache.arrow23.array.Array getStorage() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_extension_array_get_storage(cast(GArrowExtensionArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.extension_array.ExtensionArray]
class ExtensionArrayGidBuilderImpl(T) : gid_apache.arrow23.array.ArrayGidBuilderImpl!T
{

  /** */
  T storage(gid_apache.arrow23.array.Array propval) nothrow
  {
    return setProperty("storage", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.extension_array.ExtensionArray]
final class ExtensionArrayGidBuilder : ExtensionArrayGidBuilderImpl!ExtensionArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExtensionArray build() nothrow
  {
    return new ExtensionArray(cast(void*)createGObject(ExtensionArray._getGType), Yes.Take);
  }
}
