/// Module for [Writable] interface
module gid_apache.arrow23.writable;

public import gid.core.basictypes;
public import gid_apache.arrow23.writable_iface_proxy;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
interface Writable : GidWrap
{

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())garrow_writable_get_type != &gidSymbolNotFound ? garrow_writable_get_type() : cast(GType)0;
  }

  /**
      It ensures writing all data on memory to storage.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool flush();

  /** */
  bool write(ubyte[] data);
}

/// Fluent builder implementation template for [gid_apache.arrow23.writable.Writable]
interface WritableGidBuilderImpl(T)
{
}
