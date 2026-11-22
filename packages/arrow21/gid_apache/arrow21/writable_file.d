/// Module for [WritableFile] interface
module gid_apache.arrow21.writable_file;

public import gid.core.basictypes;
public import gid_apache.arrow21.writable_file_iface_proxy;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.types;

/** */
interface WritableFile : GidWrap
{

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())garrow_writable_file_get_type != &gidSymbolNotFound ? garrow_writable_file_get_type() : cast(GType)0;
  }

  /** */
  bool writeAt(long position, ubyte[] data);
}

/// Fluent builder implementation template for [gid_apache.arrow21.writable_file.WritableFile]
interface WritableFileGidBuilderImpl(T)
{
}
