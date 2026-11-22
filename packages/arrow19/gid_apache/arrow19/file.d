/// Module for [File] interface
module gid_apache.arrow19.file;

public import gid.core.basictypes;
public import gid_apache.arrow19.file_iface_proxy;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.types;

/** */
interface File : GidWrap
{

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())garrow_file_get_type != &gidSymbolNotFound ? garrow_file_get_type() : cast(GType)0;
  }

  /** */
  bool close();

  /** */
  gid_apache.arrow19.types.FileMode getMode();

  /** */
  bool isClosed();

  /** */
  long tell();
}

/// Fluent builder implementation template for [gid_apache.arrow19.file.File]
interface FileGidBuilderImpl(T)
{
}
