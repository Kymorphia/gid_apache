/// Module for [Readable] interface
module gid_apache.arrow26.readable;

public import gid.core.basictypes;
public import gid_apache.arrow26.readable_iface_proxy;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
interface Readable : GidWrap
{

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())garrow_readable_get_type != &gidSymbolNotFound ? garrow_readable_get_type() : cast(GType)0;
  }

  /** */
  gid_apache.arrow26.buffer.Buffer read(long nBytes);

  /** */
  gid.glib2.bytes.Bytes readBytes(long nBytes);
}

/// Fluent builder implementation template for [gid_apache.arrow26.readable.Readable]
interface ReadableGidBuilderImpl(T)
{
}
